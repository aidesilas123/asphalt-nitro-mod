package com.bytedance.sdk.openadsdk.core.settings;

import android.util.Log;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: SdkSwitch.java */
/* JADX INFO: loaded from: classes2.dex */
public class k {
    private static final AtomicInteger a = new AtomicInteger(1);

    protected static void a(int i) {
        boolean z = true;
        if (i == 1 || i == 2) {
            try {
                AtomicInteger atomicInteger = a;
                if (atomicInteger.get() != i) {
                    try {
                        atomicInteger.set(i);
                    } catch (Throwable th) {
                        th = th;
                        com.bytedance.sdk.component.utils.l.e("SdkSwitch", th.getMessage());
                    }
                } else {
                    z = false;
                }
            } catch (Throwable th2) {
                th = th2;
                z = false;
            }
            if (z) {
                Log.e("SdkSwitch", "switch status changed: " + a());
                if (a()) {
                    com.bytedance.sdk.openadsdk.b.a.d.b();
                } else {
                    com.bytedance.sdk.openadsdk.b.a.d.c();
                }
            }
        }
    }

    public static boolean a() {
        return a.get() == 1;
    }
}
