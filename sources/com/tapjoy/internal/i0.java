package com.tapjoy.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class i0 implements Runnable {
    public final /* synthetic */ String a;
    public final /* synthetic */ g2 b;

    public i0(g2 g2Var, String str) {
        this.b = g2Var;
        this.a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.b.b.a(this.a);
    }
}
