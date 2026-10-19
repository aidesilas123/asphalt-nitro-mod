package com.tapjoy.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class x implements Runnable {
    public final /* synthetic */ String a;
    public final /* synthetic */ g2 b;

    public x(g2 g2Var, String str) {
        this.b = g2Var;
        this.a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.b.b.b(this.a);
    }
}
