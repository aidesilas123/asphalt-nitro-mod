package com.tapjoy.internal;

import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes4.dex */
public final class w5 {
    public final c0 a;

    public w5(n nVar) {
        this.a = nVar;
    }

    public static int a(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (i & (-268435456)) == 0 ? 4 : 5;
    }

    public static int a(long j) {
        if (((-128) & j) == 0) {
            return 1;
        }
        if (((-16384) & j) == 0) {
            return 2;
        }
        if (((-2097152) & j) == 0) {
            return 3;
        }
        if (((-268435456) & j) == 0) {
            return 4;
        }
        if (((-34359738368L) & j) == 0) {
            return 5;
        }
        if (((-4398046511104L) & j) == 0) {
            return 6;
        }
        if (((-562949953421312L) & j) == 0) {
            return 7;
        }
        if (((-72057594037927936L) & j) == 0) {
            return 8;
        }
        return (j & Long.MIN_VALUE) == 0 ? 9 : 10;
    }

    public final void b(c1 c1Var) {
        n nVar = (n) this.a;
        nVar.getClass();
        if (c1Var == null) {
            throw new IllegalArgumentException("byteString == null");
        }
        c1Var.b(nVar);
    }

    public final void c(int i) {
        n nVar = (n) this.a;
        nVar.getClass();
        Charset charset = sa.a;
        int i2 = ((i & 255) << 24) | (((-16777216) & i) >>> 24) | ((16711680 & i) >>> 8) | ((65280 & i) << 8);
        r7 r7VarF = nVar.f(4);
        byte[] bArr = r7VarF.a;
        int i3 = r7VarF.c;
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i2 >>> 24) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((i2 >>> 16) & 255);
        int i6 = i5 + 1;
        bArr[i5] = (byte) ((i2 >>> 8) & 255);
        bArr[i6] = (byte) (i2 & 255);
        r7VarF.c = i6 + 1;
        nVar.b += 4;
    }

    public final void d(long j) {
        n nVar = (n) this.a;
        nVar.getClass();
        long jA = sa.a(j);
        r7 r7VarF = nVar.f(8);
        byte[] bArr = r7VarF.a;
        int i = r7VarF.c;
        int i2 = i + 1;
        bArr[i] = (byte) ((jA >>> 56) & 255);
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((jA >>> 48) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((jA >>> 40) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((jA >>> 32) & 255);
        int i6 = i5 + 1;
        bArr[i5] = (byte) ((jA >>> 24) & 255);
        int i7 = i6 + 1;
        bArr[i6] = (byte) ((jA >>> 16) & 255);
        int i8 = i7 + 1;
        bArr[i7] = (byte) ((jA >>> 8) & 255);
        bArr[i8] = (byte) (jA & 255);
        r7VarF.c = i8 + 1;
        nVar.b += 8;
    }

    public final void e(int i) {
        while ((i & (-128)) != 0) {
            ((n) this.a).i((i & 127) | 128);
            i >>>= 7;
        }
        ((n) this.a).i(i);
    }

    public final void f(long j) {
        while (((-128) & j) != 0) {
            ((n) this.a).i((((int) j) & 127) | 128);
            j >>>= 7;
        }
        ((n) this.a).i((int) j);
    }
}
