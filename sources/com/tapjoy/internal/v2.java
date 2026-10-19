package com.tapjoy.internal;

import android.os.Handler;
import android.os.Looper;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes4.dex */
public final class v2 implements InvocationHandler {
    public final Object a;
    public final Thread b;
    public final Looper c;

    public v2(Object obj, Thread thread, Looper looper) {
        this.a = obj;
        this.b = thread;
        this.c = looper;
    }

    @Override // java.lang.reflect.InvocationHandler
    public final Object invoke(Object obj, Method method, Object[] objArr) {
        if (this.b == Thread.currentThread()) {
            return method.invoke(this.a, objArr);
        }
        if (!method.getReturnType().equals(Void.TYPE)) {
            throw new UnsupportedOperationException("method not return void: " + method.getName());
        }
        l2 l2Var = new l2(this, method, objArr);
        if (this.c != null && new Handler(this.c).post(l2Var)) {
            return null;
        }
        if (this.b == h.a() && h.c.a(l2Var)) {
            return null;
        }
        Looper mainLooper = Looper.getMainLooper();
        if (mainLooper == null || !new Handler(mainLooper).post(l2Var)) {
            return method.invoke(this.a, objArr);
        }
        return null;
    }
}
