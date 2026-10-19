package com.google.zxing.aztec.encoder;

import com.google.zxing.common.BitMatrix;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes3.dex */
public final class Encoder {
    private static final int[] a = {4, 6, 6, 8, 8, 8, 8, 8, 8, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12};

    private Encoder() {
    }

    private static int[] a(com.google.zxing.common.a aVar, int i, int i2) {
        int[] iArr = new int[i2];
        int i3 = aVar.i() / i;
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = 0;
            for (int i6 = 0; i6 < i; i6++) {
                i5 |= aVar.h((i4 * i) + i6) ? 1 << ((i - i6) - 1) : 0;
            }
            iArr[i4] = i5;
        }
        return iArr;
    }

    private static void b(BitMatrix bitMatrix, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3 += 2) {
            int i4 = i - i3;
            int i5 = i4;
            while (true) {
                int i6 = i + i3;
                if (i5 <= i6) {
                    bitMatrix.i(i5, i4);
                    bitMatrix.i(i5, i6);
                    bitMatrix.i(i4, i5);
                    bitMatrix.i(i6, i5);
                    i5++;
                }
            }
        }
        int i7 = i - i2;
        bitMatrix.i(i7, i7);
        int i8 = i7 + 1;
        bitMatrix.i(i8, i7);
        bitMatrix.i(i7, i8);
        int i9 = i + i2;
        bitMatrix.i(i9, i7);
        bitMatrix.i(i9, i8);
        bitMatrix.i(i9, i9 - 1);
    }

    private static void c(BitMatrix bitMatrix, boolean z, int i, com.google.zxing.common.a aVar) {
        int i2 = i / 2;
        int i3 = 0;
        if (z) {
            while (i3 < 7) {
                int i4 = (i2 - 3) + i3;
                if (aVar.h(i3)) {
                    bitMatrix.i(i4, i2 - 5);
                }
                if (aVar.h(i3 + 7)) {
                    bitMatrix.i(i2 + 5, i4);
                }
                if (aVar.h(20 - i3)) {
                    bitMatrix.i(i4, i2 + 5);
                }
                if (aVar.h(27 - i3)) {
                    bitMatrix.i(i2 - 5, i4);
                }
                i3++;
            }
            return;
        }
        while (i3 < 10) {
            int i5 = (i2 - 5) + i3 + (i3 / 5);
            if (aVar.h(i3)) {
                bitMatrix.i(i5, i2 - 7);
            }
            if (aVar.h(i3 + 10)) {
                bitMatrix.i(i2 + 7, i5);
            }
            if (aVar.h(29 - i3)) {
                bitMatrix.i(i5, i2 + 7);
            }
            if (aVar.h(39 - i3)) {
                bitMatrix.i(i2 - 7, i5);
            }
            i3++;
        }
    }

    private static com.google.zxing.common.a d(com.google.zxing.common.a aVar, int i, int i2) {
        int i3 = aVar.i() / i2;
        com.google.zxing.common.h.c cVar = new com.google.zxing.common.h.c(f(i2));
        int i4 = i / i2;
        int[] iArrA = a(aVar, i2, i4);
        cVar.b(iArrA, i4 - i3);
        com.google.zxing.common.a aVar2 = new com.google.zxing.common.a();
        aVar2.e(0, i % i2);
        for (int i5 : iArrA) {
            aVar2.e(i5, i2);
        }
        return aVar2;
    }

    static com.google.zxing.common.a e(boolean z, int i, int i2) {
        com.google.zxing.common.a aVar = new com.google.zxing.common.a();
        if (z) {
            aVar.e(i - 1, 2);
            aVar.e(i2 - 1, 6);
            return d(aVar, 28, 4);
        }
        aVar.e(i - 1, 5);
        aVar.e(i2 - 1, 11);
        return d(aVar, 40, 4);
    }

    public static a encode(String str) {
        return encode(str.getBytes(StandardCharsets.ISO_8859_1));
    }

    public static a encode(String str, int i, int i2) {
        return encode(str.getBytes(StandardCharsets.ISO_8859_1), i, i2, (Charset) null);
    }

    public static a encode(String str, int i, int i2, Charset charset) {
        return encode(str.getBytes(charset != null ? charset : StandardCharsets.ISO_8859_1), i, i2, charset);
    }

    public static a encode(byte[] bArr) {
        return encode(bArr, 33, 0, (Charset) null);
    }

    public static a encode(byte[] bArr, int i, int i2) {
        return encode(bArr, i, i2, (Charset) null);
    }

    public static a encode(byte[] bArr, int i, int i2, Charset charset) {
        com.google.zxing.common.a aVarG;
        int i3;
        boolean z;
        int iAbs;
        int iH;
        int i4;
        com.google.zxing.common.a aVarA = new c(bArr, charset).a();
        int i5 = ((aVarA.i() * i) / 100) + 11;
        int i6 = aVarA.i() + i5;
        int i7 = 0;
        int i8 = 1;
        if (i2 == 0) {
            com.google.zxing.common.a aVarG2 = null;
            int i9 = 0;
            int i10 = 0;
            while (i9 <= 32) {
                boolean z2 = i9 <= 3;
                int i11 = z2 ? i9 + 1 : i9;
                int iH2 = h(i11, z2);
                if (i6 <= iH2) {
                    if (aVarG2 == null || i10 != a[i11]) {
                        int i12 = a[i11];
                        i10 = i12;
                        aVarG2 = g(aVarA, i12);
                    }
                    int i13 = iH2 - (iH2 % i10);
                    if ((!z2 || aVarG2.i() <= i10 * 64) && aVarG2.i() + i5 <= i13) {
                        aVarG = aVarG2;
                        i3 = i10;
                        z = z2;
                        iAbs = i11;
                        iH = iH2;
                    }
                }
                i9++;
                i7 = 0;
                i8 = 1;
            }
            throw new IllegalArgumentException("Data too large for an Aztec code");
        }
        z = i2 < 0;
        iAbs = Math.abs(i2);
        if (iAbs > (z ? 4 : 32)) {
            throw new IllegalArgumentException(String.format("Illegal value %s for layers", Integer.valueOf(i2)));
        }
        iH = h(iAbs, z);
        i3 = a[iAbs];
        int i14 = iH - (iH % i3);
        aVarG = g(aVarA, i3);
        if (aVarG.i() + i5 > i14) {
            throw new IllegalArgumentException("Data to large for user specified layer");
        }
        if (z && aVarG.i() > i3 * 64) {
            throw new IllegalArgumentException("Data to large for user specified layer");
        }
        com.google.zxing.common.a aVarD = d(aVarG, iH, i3);
        int i15 = aVarG.i() / i3;
        com.google.zxing.common.a aVarE = e(z, iAbs, i15);
        int i16 = (z ? 11 : 14) + (iAbs * 4);
        int[] iArr = new int[i16];
        int i17 = 2;
        if (z) {
            for (int i18 = 0; i18 < i16; i18++) {
                iArr[i18] = i18;
            }
            i4 = i16;
        } else {
            int i19 = i16 / 2;
            i4 = i16 + 1 + (((i19 - 1) / 15) * 2);
            int i20 = i4 / 2;
            for (int i21 = 0; i21 < i19; i21++) {
                iArr[(i19 - i21) - 1] = (i20 - r15) - 1;
                iArr[i19 + i21] = (i21 / 15) + i21 + i20 + i8;
            }
        }
        BitMatrix bitMatrix = new BitMatrix(i4);
        int i22 = 0;
        int i23 = 0;
        while (i22 < iAbs) {
            int i24 = ((iAbs - i22) * 4) + (z ? 9 : 12);
            int i25 = 0;
            while (i25 < i24) {
                int i26 = i25 * 2;
                while (i7 < i17) {
                    if (aVarD.h(i23 + i26 + i7)) {
                        int i27 = i22 * 2;
                        bitMatrix.i(iArr[i27 + i7], iArr[i27 + i25]);
                    }
                    if (aVarD.h((i24 * 2) + i23 + i26 + i7)) {
                        int i28 = i22 * 2;
                        bitMatrix.i(iArr[i28 + i25], iArr[((i16 - 1) - i28) - i7]);
                    }
                    if (aVarD.h((i24 * 4) + i23 + i26 + i7)) {
                        int i29 = (i16 - 1) - (i22 * 2);
                        bitMatrix.i(iArr[i29 - i7], iArr[i29 - i25]);
                    }
                    if (aVarD.h((i24 * 6) + i23 + i26 + i7)) {
                        int i30 = i22 * 2;
                        bitMatrix.i(iArr[((i16 - 1) - i30) - i25], iArr[i30 + i7]);
                    }
                    i7++;
                    i17 = 2;
                }
                i25++;
                i7 = 0;
                i17 = 2;
            }
            i23 += i24 * 8;
            i22++;
            i7 = 0;
            i17 = 2;
        }
        c(bitMatrix, z, i4, aVarE);
        if (z) {
            b(bitMatrix, i4 / 2, 5);
        } else {
            int i31 = i4 / 2;
            b(bitMatrix, i31, 7);
            int i32 = 0;
            int i33 = 0;
            while (i33 < (i16 / 2) - 1) {
                for (int i34 = i31 & 1; i34 < i4; i34 += 2) {
                    int i35 = i31 - i32;
                    bitMatrix.i(i35, i34);
                    int i36 = i31 + i32;
                    bitMatrix.i(i36, i34);
                    bitMatrix.i(i34, i35);
                    bitMatrix.i(i34, i36);
                }
                i33 += 15;
                i32 += 16;
            }
        }
        a aVar = new a();
        aVar.c(z);
        aVar.f(i4);
        aVar.d(iAbs);
        aVar.b(i15);
        aVar.e(bitMatrix);
        return aVar;
    }

    private static com.google.zxing.common.h.a f(int i) {
        if (i == 4) {
            return com.google.zxing.common.h.a.f4332d;
        }
        if (i == 6) {
            return com.google.zxing.common.h.a.c;
        }
        if (i == 8) {
            return com.google.zxing.common.h.a.f4335g;
        }
        if (i == 10) {
            return com.google.zxing.common.h.a.b;
        }
        if (i == 12) {
            return com.google.zxing.common.h.a.a;
        }
        throw new IllegalArgumentException("Unsupported word size " + i);
    }

    static com.google.zxing.common.a g(com.google.zxing.common.a aVar, int i) {
        com.google.zxing.common.a aVar2 = new com.google.zxing.common.a();
        int i2 = aVar.i();
        int i3 = (1 << i) - 2;
        int i4 = 0;
        while (i4 < i2) {
            int i5 = 0;
            for (int i6 = 0; i6 < i; i6++) {
                int i7 = i4 + i6;
                if (i7 >= i2 || aVar.h(i7)) {
                    i5 |= 1 << ((i - 1) - i6);
                }
            }
            int i8 = i5 & i3;
            if (i8 == i3) {
                aVar2.e(i8, i);
            } else if (i8 == 0) {
                aVar2.e(i5 | 1, i);
            } else {
                aVar2.e(i5, i);
                i4 += i;
            }
            i4--;
            i4 += i;
        }
        return aVar2;
    }

    private static int h(int i, boolean z) {
        return ((z ? 88 : 112) + (i * 16)) * i;
    }
}
