package com.tapjoy.internal;

import android.os.Looper;

/* JADX INFO: loaded from: classes4.dex */
public abstract class l4 {
    public static void a(l7 l7Var) {
        Looper mainLooper = Looper.getMainLooper();
        if (mainLooper != null && mainLooper.getThread() == Thread.currentThread()) {
            l7Var.a.e();
        } else {
            w2.b().post(l7Var);
        }
    }
}
