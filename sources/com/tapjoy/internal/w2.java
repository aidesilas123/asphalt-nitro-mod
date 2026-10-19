package com.tapjoy.internal;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes4.dex */
public abstract class w2 {
    public static Handler a;

    public static Handler a() {
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper != null) {
            return looperMyLooper == Looper.getMainLooper() ? b() : new Handler(looperMyLooper);
        }
        return null;
    }

    public static x7 a(Handler handler) {
        return new x7(handler);
    }

    public static synchronized Handler b() {
        if (a == null) {
            a = new Handler(Looper.getMainLooper());
        }
        return a;
    }
}
