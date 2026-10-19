package com.tapjoy.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class r7 {
    public final byte[] a;
    public int b;
    public int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f7984d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f7985e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public r7 f7986f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public r7 f7987g;

    public r7() {
        this.a = new byte[8192];
        this.f7985e = true;
        this.f7984d = false;
    }

    public r7(r7 r7Var) {
        this(r7Var.a, r7Var.b, r7Var.c);
        r7Var.f7984d = true;
    }

    public r7(byte[] bArr, int i, int i2) {
        this.a = bArr;
        this.b = i;
        this.c = i2;
        this.f7985e = false;
        this.f7984d = true;
    }

    public final r7 a() {
        r7 r7Var = this.f7986f;
        r7 r7Var2 = r7Var != this ? r7Var : null;
        r7 r7Var3 = this.f7987g;
        r7Var3.f7986f = r7Var;
        this.f7986f.f7987g = r7Var3;
        this.f7986f = null;
        this.f7987g = null;
        return r7Var2;
    }
}
