package com.google.zxing.pdf417.encoder;

import java.lang.reflect.Array;

/* JADX INFO: compiled from: BarcodeMatrix.java */
/* JADX INFO: loaded from: classes3.dex */
public final class a {
    private final b[] a;
    private int b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f4404d;

    a(int i, int i2) {
        b[] bVarArr = new b[i];
        this.a = bVarArr;
        int length = bVarArr.length;
        for (int i3 = 0; i3 < length; i3++) {
            this.a[i3] = new b(((i2 + 4) * 17) + 1);
        }
        this.f4404d = i2 * 17;
        this.c = i;
        this.b = -1;
    }

    b a() {
        return this.a[this.b];
    }

    public byte[][] b(int i, int i2) {
        byte[][] bArr = (byte[][]) Array.newInstance((Class<?>) byte.class, this.c * i2, this.f4404d * i);
        int i3 = this.c * i2;
        for (int i4 = 0; i4 < i3; i4++) {
            bArr[(i3 - i4) - 1] = this.a[i4 / i2].b(i);
        }
        return bArr;
    }

    void c() {
        this.b++;
    }
}
