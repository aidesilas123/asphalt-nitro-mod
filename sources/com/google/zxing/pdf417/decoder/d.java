package com.google.zxing.pdf417.decoder;

/* JADX INFO: compiled from: Codeword.java */
/* JADX INFO: loaded from: classes3.dex */
final class d {
    private final int a;
    private final int b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f4394d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f4395e = -1;

    d(int i, int i2, int i3, int i4) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.f4394d = i4;
    }

    int a() {
        return this.c;
    }

    int b() {
        return this.b;
    }

    int c() {
        return this.f4395e;
    }

    int d() {
        return this.a;
    }

    int e() {
        return this.f4394d;
    }

    int f() {
        return this.b - this.a;
    }

    boolean g() {
        return h(this.f4395e);
    }

    boolean h(int i) {
        return i != -1 && this.c == (i % 3) * 3;
    }

    void i(int i) {
        this.f4395e = i;
    }

    void j() {
        this.f4395e = ((this.f4394d / 30) * 3) + (this.c / 3);
    }

    public String toString() {
        return this.f4395e + "|" + this.f4394d;
    }
}
