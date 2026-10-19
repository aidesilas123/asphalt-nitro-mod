package com.google.zxing.common;

import java.util.Arrays;

/* JADX INFO: compiled from: BitArray.java */
/* JADX INFO: loaded from: classes3.dex */
public final class a implements Cloneable {
    private static final int[] a = new int[0];
    private int[] b;
    private int c;

    public a() {
        this.c = 0;
        this.b = a;
    }

    a(int[] iArr, int i) {
        this.b = iArr;
        this.c = i;
    }

    private void g(int i) {
        if (i > this.b.length * 32) {
            int[] iArrK = k((int) Math.ceil(i / 0.75f));
            int[] iArr = this.b;
            System.arraycopy(iArr, 0, iArrK, 0, iArr.length);
            this.b = iArrK;
        }
    }

    private static int[] k(int i) {
        return new int[(i + 31) / 32];
    }

    public void b(boolean z) {
        g(this.c + 1);
        if (z) {
            int[] iArr = this.b;
            int i = this.c;
            int i2 = i / 32;
            iArr[i2] = (1 << (i & 31)) | iArr[i2];
        }
        this.c++;
    }

    public void d(a aVar) {
        int i = aVar.c;
        g(this.c + i);
        for (int i2 = 0; i2 < i; i2++) {
            b(aVar.h(i2));
        }
    }

    public void e(int i, int i2) {
        if (i2 < 0 || i2 > 32) {
            throw new IllegalArgumentException("Num bits must be between 0 and 32");
        }
        int i3 = this.c;
        g(i3 + i2);
        for (int i4 = i2 - 1; i4 >= 0; i4--) {
            if (((1 << i4) & i) != 0) {
                int[] iArr = this.b;
                int i5 = i3 / 32;
                iArr[i5] = iArr[i5] | (1 << (i3 & 31));
            }
            i3++;
        }
        this.c = i3;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.c == aVar.c && Arrays.equals(this.b, aVar.b);
    }

    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public a clone() {
        return new a((int[]) this.b.clone(), this.c);
    }

    public boolean h(int i) {
        return ((1 << (i & 31)) & this.b[i / 32]) != 0;
    }

    public int hashCode() {
        return (this.c * 31) + Arrays.hashCode(this.b);
    }

    public int i() {
        return this.c;
    }

    public int j() {
        return (this.c + 7) / 8;
    }

    public void l(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = 0;
            for (int i6 = 0; i6 < 8; i6++) {
                if (h(i)) {
                    i5 |= 1 << (7 - i6);
                }
                i++;
            }
            bArr[i2 + i4] = (byte) i5;
        }
    }

    public void m(a aVar) {
        if (this.c != aVar.c) {
            throw new IllegalArgumentException("Sizes don't match");
        }
        int i = 0;
        while (true) {
            int[] iArr = this.b;
            if (i >= iArr.length) {
                return;
            }
            iArr[i] = iArr[i] ^ aVar.b[i];
            i++;
        }
    }

    public String toString() {
        int i = this.c;
        StringBuilder sb = new StringBuilder(i + (i / 8) + 1);
        for (int i2 = 0; i2 < this.c; i2++) {
            if ((i2 & 7) == 0) {
                sb.append(' ');
            }
            sb.append(h(i2) ? 'X' : '.');
        }
        return sb.toString();
    }
}
