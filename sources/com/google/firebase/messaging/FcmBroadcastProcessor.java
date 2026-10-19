package com.google.firebase.messaging;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import android.util.Log;
import androidx.annotation.GuardedBy;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
@KeepForSdk
public class FcmBroadcastProcessor {
    private static final Object a = new Object();

    @GuardedBy("lock")
    private static WithinAppServiceConnection b;
    private final Context c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Executor f4137d = t.a;

    public FcmBroadcastProcessor(Context context) {
        this.c = context;
    }

    private static Task<Integer> a(Context context, Intent intent) {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Binding to service");
        }
        return b(context, "com.google.firebase.MESSAGING_EVENT").c(intent).continueWith(t.a, new Continuation() { // from class: com.google.firebase.messaging.e
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return FcmBroadcastProcessor.c(task);
            }
        });
    }

    private static WithinAppServiceConnection b(Context context, String str) {
        WithinAppServiceConnection withinAppServiceConnection;
        synchronized (a) {
            if (b == null) {
                b = new WithinAppServiceConnection(context, str);
            }
            withinAppServiceConnection = b;
        }
        return withinAppServiceConnection;
    }

    static /* synthetic */ Integer c(Task task) throws Exception {
        return -1;
    }

    static /* synthetic */ Integer e(Task task) throws Exception {
        return 403;
    }

    static /* synthetic */ Task f(Context context, Intent intent, Task task) throws Exception {
        return (PlatformVersion.isAtLeastO() && ((Integer) task.getResult()).intValue() == 402) ? a(context, intent).continueWith(t.a, new Continuation() { // from class: com.google.firebase.messaging.f
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task2) {
                return FcmBroadcastProcessor.e(task2);
            }
        }) : task;
    }

    @VisibleForTesting
    public static void reset() {
        synchronized (a) {
            b = null;
        }
    }

    @KeepForSdk
    public Task<Integer> g(Intent intent) {
        String stringExtra = intent.getStringExtra("gcm.rawData64");
        if (stringExtra != null) {
            intent.putExtra("rawData", Base64.decode(stringExtra, 0));
            intent.removeExtra("gcm.rawData64");
        }
        return h(this.c, intent);
    }

    @SuppressLint({"InlinedApi"})
    public Task<Integer> h(final Context context, final Intent intent) {
        return (!(PlatformVersion.isAtLeastO() && context.getApplicationInfo().targetSdkVersion >= 26) || ((intent.getFlags() & DriveFile.MODE_READ_ONLY) != 0)) ? Tasks.call(this.f4137d, new Callable() { // from class: com.google.firebase.messaging.d
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return Integer.valueOf(ServiceStarter.b().g(context, intent));
            }
        }).continueWithTask(this.f4137d, new Continuation() { // from class: com.google.firebase.messaging.g
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return FcmBroadcastProcessor.f(context, intent, task);
            }
        }) : a(context, intent);
    }
}
