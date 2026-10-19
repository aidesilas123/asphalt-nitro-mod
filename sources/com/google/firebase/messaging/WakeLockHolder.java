package com.google.firebase.messaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.stats.WakeLock;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
final class WakeLockHolder {
    private static final long a = TimeUnit.MINUTES.toMillis(1);
    private static final Object b = new Object();

    @GuardedBy("WakeLockHolder.syncObject")
    private static WakeLock c;

    WakeLockHolder() {
    }

    @GuardedBy("WakeLockHolder.syncObject")
    private static void a(Context context) {
        if (c == null) {
            WakeLock wakeLock = new WakeLock(context, 1, "wake:com.google.firebase.iid.WakeLockHolder");
            c = wakeLock;
            wakeLock.setReferenceCounted(true);
        }
    }

    static void b(@NonNull Intent intent) {
        synchronized (b) {
            if (c != null && c(intent)) {
                d(intent, false);
                c.release();
            }
        }
    }

    @VisibleForTesting
    static boolean c(@NonNull Intent intent) {
        return intent.getBooleanExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", false);
    }

    private static void d(@NonNull Intent intent, boolean z) {
        intent.putExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", z);
    }

    static ComponentName e(@NonNull Context context, @NonNull Intent intent) {
        synchronized (b) {
            a(context);
            boolean zC = c(intent);
            d(intent, true);
            ComponentName componentNameStartService = context.startService(intent);
            if (componentNameStartService == null) {
                return null;
            }
            if (!zC) {
                c.acquire(a);
            }
            return componentNameStartService;
        }
    }
}
