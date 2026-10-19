package com.fyber.inneractive.sdk.flow;

import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.u0;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class y implements Runnable {
    public final /* synthetic */ long a;
    public final /* synthetic */ z b;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y.this.b.e(!r0.u);
            y.this.b.o = null;
        }
    }

    public y(z zVar, long j) {
        this.b = zVar;
        this.a = j;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.b.J()) {
            z zVar = this.b;
            zVar.o = new a();
            long jA = zVar.a(this.a);
            z zVar2 = this.b;
            zVar2.getClass();
            u0 u0Var = new u0(TimeUnit.MILLISECONDS, jA);
            zVar2.p = u0Var;
            u0Var.f2745e = new a0(zVar2);
            u0Var.c();
            z zVar3 = this.b;
            zVar3.getClass();
            IAlog.a("%sad contains custom close. Will show transparent x in %d", IAlog.a(zVar3), Long.valueOf(jA));
            this.b.m = null;
        } else {
            z zVar4 = this.b;
            zVar4.getClass();
            IAlog.a("%sad does not contain custom close. Showing close button", IAlog.a(zVar4));
            this.b.e(false);
        }
        Runnable runnable = this.b.m;
        if (runnable != null) {
            com.fyber.inneractive.sdk.util.m.b.removeCallbacks(runnable);
            this.b.m = null;
        }
    }
}
