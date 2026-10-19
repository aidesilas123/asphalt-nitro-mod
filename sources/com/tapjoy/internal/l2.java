package com.tapjoy.internal;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes4.dex */
public final class l2 implements Runnable {
    public final /* synthetic */ Method a;
    public final /* synthetic */ Object[] b;
    public final /* synthetic */ v2 c;

    public l2(v2 v2Var, Method method, Object[] objArr) {
        this.c = v2Var;
        this.a = method;
        this.b = objArr;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.a.invoke(this.c.a, this.b);
        } catch (IllegalAccessException e2) {
            s9.a(e2);
            throw null;
        } catch (IllegalArgumentException e3) {
            s9.a(e3);
            throw null;
        } catch (InvocationTargetException e4) {
            s9.a(e4);
            throw null;
        }
    }
}
