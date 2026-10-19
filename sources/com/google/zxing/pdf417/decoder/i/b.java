package com.google.zxing.pdf417.decoder.i;

/* JADX INFO: compiled from: ModulusGF.java */
/* JADX INFO: loaded from: classes3.dex */
public final class b {
    public static final b a = new b(929, 3);
    private final int[] b;
    private final int[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c f4397d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final c f4398e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f4399f;

    private b(int i, int i2) {
        this.f4399f = i;
        this.b = new int[i];
        this.c = new int[i];
        int i3 = 1;
        for (int i4 = 0; i4 < i; i4++) {
            this.b[i4] = i3;
            i3 = (i3 * i2) % i;
        }
        for (int i5 = 0; i5 < i - 1; i5++) {
            this.c[this.b[i5]] = i5;
        }
        this.f4397d = new c(this, new int[]{0});
        this.f4398e = new c(this, new int[]{1});
    }

    int a(int i, int i2) {
        return (i + i2) % this.f4399f;
    }

    c b(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        if (i2 == 0) {
            return this.f4397d;
        }
        int[] iArr = new int[i + 1];
        iArr[0] = i2;
        return new c(this, iArr);
    }

    int c(int i) {
        return this.b[i];
    }

    c d() {
        return this.f4398e;
    }

    int e() {
        return this.f4399f;
    }

    c f() {
        return this.f4397d;
    }

    int g(int i) {
        if (i != 0) {
            return this.b[(this.f4399f - this.c[i]) - 1];
        }
        throw new ArithmeticException();
    }

    int h(int i) {
        if (i != 0) {
            return this.c[i];
        }
        throw new IllegalArgumentException();
    }

    int i(int i, int i2) {
        if (i == 0 || i2 == 0) {
            return 0;
        }
        int[] iArr = this.b;
        int[] iArr2 = this.c;
        return iArr[(iArr2[i] + iArr2[i2]) % (this.f4399f - 1)];
    }

    int j(int i, int i2) {
        int i3 = this.f4399f;
        return ((i + i3) - i2) % i3;
    }
}
