package com.tapjoy.internal;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes4.dex */
public final class t8 implements Runnable {
    public final /* synthetic */ e9 a;

    public t8(e9 e9Var) {
        this.a = e9Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.a.b.compareAndSet(true, false)) {
            i5 i5Var = this.a.a;
            i5Var.getClass();
            long jElapsedRealtime = SystemClock.elapsedRealtime() - i5Var.c;
            d3 d3Var = i5Var.a;
            synchronized (d3Var) {
                long jC = d3Var.f7886f.i.c() + jElapsedRealtime;
                d3Var.f7886f.i.b(jC);
                d3Var.f7884d.i = Long.valueOf(jC);
            }
            d4 d4VarA = i5Var.a(r1.APP, "session");
            i5Var.b(d4VarA);
            i5Var.c = 0L;
            i5Var.a.d(d4VarA.f7888e.longValue(), jElapsedRealtime);
            a3.f7851d.notifyObservers();
        }
    }
}
