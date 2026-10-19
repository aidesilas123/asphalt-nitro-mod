package com.tapjoy.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.util.Log;
import com.tapjoy.TapjoyLog;
import com.tapjoy.TapjoyUtil;
import java.util.HashSet;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes4.dex */
public final class e {
    public static final e a = new e();
    public Application b;
    public n0 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final HashSet f7889d = new HashSet();

    public static void a() {
        e eVar = a;
        if (eVar.b == null) {
            return;
        }
        synchronized (eVar) {
            n0 n0Var = eVar.c;
            if (n0Var != null) {
                eVar.b.unregisterActivityLifecycleCallbacks(n0Var);
                eVar.c = null;
            }
        }
    }

    public static void a(Context context) {
        if (context == null) {
            return;
        }
        e eVar = a;
        Context applicationContext = context.getApplicationContext();
        if (eVar.b == null) {
            try {
                if (applicationContext instanceof Application) {
                    eVar.b = (Application) applicationContext;
                } else {
                    CountDownLatch countDownLatch = new CountDownLatch(1);
                    TapjoyUtil.runOnMainThread(new f0(eVar, countDownLatch));
                    countDownLatch.await();
                }
            } catch (Exception e2) {
                TapjoyLog.w("Tapjoy.ActivityTracker", Log.getStackTraceString(e2));
            }
            if (eVar.b == null) {
                return;
            }
        }
        synchronized (eVar) {
            if (eVar.c == null) {
                Activity activityA = t.a();
                if (activityA != null) {
                    eVar.f7889d.add(activityA.getClass().getName() + "@" + System.identityHashCode(activityA));
                }
                n0 n0Var = new n0(eVar.f7889d);
                eVar.c = n0Var;
                eVar.b.registerActivityLifecycleCallbacks(n0Var);
                v1 v1Var = v1.a;
                if (v1Var.i() && v1Var.k()) {
                    q.a(null);
                }
            }
        }
    }
}
