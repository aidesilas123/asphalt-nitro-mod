package com.google.zxing.common.h;

import com.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: compiled from: GenericGF.java */
/* JADX INFO: loaded from: classes3.dex */
public final class a {
    public static final a a = new a(4201, 4096, 1);
    public static final a b = new a(IronSourceError.ERROR_RV_LOAD_FAIL_DUE_TO_INIT, 1024, 1);
    public static final a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f4332d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f4333e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f4334f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f4335g;
    public static final a h;
    private final int[] i;
    private final int[] j;
    private final b k;
    private final b l;
    private final int m;
    private final int n;
    private final int o;

    static {
        a aVar = new a(67, 64, 1);
        c = aVar;
        f4332d = new a(19, 16, 1);
        f4333e = new a(285, 256, 0);
        a aVar2 = new a(301, 256, 1);
        f4334f = aVar2;
        f4335g = aVar2;
        h = aVar;
    }

    public a(int i, int i2, int i3) {
        this.n = i;
        this.m = i2;
        this.o = i3;
        this.i = new int[i2];
        this.j = new int[i2];
        int i4 = 1;
        for (int i5 = 0; i5 < i2; i5++) {
            this.i[i5] = i4;
            i4 *= 2;
            if (i4 >= i2) {
                i4 = (i4 ^ i) & (i2 - 1);
            }
        }
        for (int i6 = 0; i6 < i2 - 1; i6++) {
            this.j[this.i[i6]] = i6;
        }
        this.k = new b(this, new int[]{0});
        this.l = new b(this, new int[]{1});
    }

    static int a(int i, int i2) {
        return i ^ i2;
    }

    b b(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        if (i2 == 0) {
            return this.k;
        }
        int[] iArr = new int[i + 1];
        iArr[0] = i2;
        return new b(this, iArr);
    }

    int c(int i) {
        return this.i[i];
    }

    public int d() {
        return this.o;
    }

    b e() {
        return this.k;
    }

    int f(int i) {
        if (i != 0) {
            return this.i[(this.m - this.j[i]) - 1];
        }
        throw new ArithmeticException();
    }

    int g(int i) {
        if (i != 0) {
            return this.j[i];
        }
        throw new IllegalArgumentException();
    }

    int h(int i, int i2) {
        if (i == 0 || i2 == 0) {
            return 0;
        }
        int[] iArr = this.i;
        int[] iArr2 = this.j;
        return iArr[(iArr2[i] + iArr2[i2]) % (this.m - 1)];
    }

    public String toString() {
        return "GF(0x" + Integer.toHexString(this.n) + ',' + this.m + ')';
    }
}
