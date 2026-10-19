package com.tapjoy.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class v0 implements Runnable {
    public final /* synthetic */ String a;
    public final /* synthetic */ String b;
    public final /* synthetic */ a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ g2 f8014d;

    public v0(g2 g2Var, String str, String str2, a aVar) {
        this.f8014d = g2Var;
        this.a = str;
        this.b = str2;
        this.c = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f8014d.b.a(this.a, this.b, this.c);
    }
}
