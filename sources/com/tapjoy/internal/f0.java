package com.tapjoy.internal;

import android.app.Application;
import android.util.Log;
import com.tapjoy.TapjoyLog;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes4.dex */
public final class f0 implements Runnable {
    public final /* synthetic */ CountDownLatch a;
    public final /* synthetic */ e b;

    public f0(e eVar, CountDownLatch countDownLatch) {
        this.b = eVar;
        this.a = countDownLatch;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            try {
                this.b.b = (Application) Class.forName("android.app.ActivityThread").getMethod("currentApplication", new Class[0]).invoke(null, null);
            } catch (Exception e2) {
                TapjoyLog.w("Tapjoy.ActivityTracker", Log.getStackTraceString(e2));
            }
        } finally {
            this.a.countDown();
        }
    }
}
