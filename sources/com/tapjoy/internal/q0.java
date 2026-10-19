package com.tapjoy.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class q0 implements Runnable {
    public final /* synthetic */ String a;
    public final /* synthetic */ a b;
    public final /* synthetic */ g2 c;

    public q0(g2 g2Var, String str, a aVar) {
        this.c = g2Var;
        this.a = str;
        this.b = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.c.b.a(this.a, this.b);
    }
}
