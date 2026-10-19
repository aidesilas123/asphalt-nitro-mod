package com.google.zxing.qrcode.encoder;

import com.google.zxing.g;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.decoder.Version;

/* JADX INFO: compiled from: MatrixUtil.java */
/* JADX INFO: loaded from: classes3.dex */
final class d {
    private static final int[][] a = {new int[]{1, 1, 1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1, 1, 1}};
    private static final int[][] b = {new int[]{1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 0, 1, 0, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1}};
    private static final int[][] c = {new int[]{-1, -1, -1, -1, -1, -1, -1}, new int[]{6, 18, -1, -1, -1, -1, -1}, new int[]{6, 22, -1, -1, -1, -1, -1}, new int[]{6, 26, -1, -1, -1, -1, -1}, new int[]{6, 30, -1, -1, -1, -1, -1}, new int[]{6, 34, -1, -1, -1, -1, -1}, new int[]{6, 22, 38, -1, -1, -1, -1}, new int[]{6, 24, 42, -1, -1, -1, -1}, new int[]{6, 26, 46, -1, -1, -1, -1}, new int[]{6, 28, 50, -1, -1, -1, -1}, new int[]{6, 30, 54, -1, -1, -1, -1}, new int[]{6, 32, 58, -1, -1, -1, -1}, new int[]{6, 34, 62, -1, -1, -1, -1}, new int[]{6, 26, 46, 66, -1, -1, -1}, new int[]{6, 26, 48, 70, -1, -1, -1}, new int[]{6, 26, 50, 74, -1, -1, -1}, new int[]{6, 30, 54, 78, -1, -1, -1}, new int[]{6, 30, 56, 82, -1, -1, -1}, new int[]{6, 30, 58, 86, -1, -1, -1}, new int[]{6, 34, 62, 90, -1, -1, -1}, new int[]{6, 28, 50, 72, 94, -1, -1}, new int[]{6, 26, 50, 74, 98, -1, -1}, new int[]{6, 30, 54, 78, 102, -1, -1}, new int[]{6, 28, 54, 80, 106, -1, -1}, new int[]{6, 32, 58, 84, 110, -1, -1}, new int[]{6, 30, 58, 86, 114, -1, -1}, new int[]{6, 34, 62, 90, 118, -1, -1}, new int[]{6, 26, 50, 74, 98, 122, -1}, new int[]{6, 30, 54, 78, 102, 126, -1}, new int[]{6, 26, 52, 78, 104, 130, -1}, new int[]{6, 30, 56, 82, 108, 134, -1}, new int[]{6, 34, 60, 86, 112, 138, -1}, new int[]{6, 30, 58, 86, 114, 142, -1}, new int[]{6, 34, 62, 90, 118, 146, -1}, new int[]{6, 30, 54, 78, 102, 126, 150}, new int[]{6, 24, 50, 76, 102, 128, 154}, new int[]{6, 28, 54, 80, 106, 132, 158}, new int[]{6, 32, 58, 84, 110, 136, 162}, new int[]{6, 26, 54, 82, 110, 138, 166}, new int[]{6, 30, 58, 86, 114, 142, 170}};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int[][] f4438d = {new int[]{8, 0}, new int[]{8, 1}, new int[]{8, 2}, new int[]{8, 3}, new int[]{8, 4}, new int[]{8, 5}, new int[]{8, 7}, new int[]{8, 8}, new int[]{7, 8}, new int[]{5, 8}, new int[]{4, 8}, new int[]{3, 8}, new int[]{2, 8}, new int[]{1, 8}, new int[]{0, 8}};

    static void a(com.google.zxing.common.a aVar, ErrorCorrectionLevel errorCorrectionLevel, Version version, int i, b bVar) throws g {
        c(bVar);
        d(version, bVar);
        l(errorCorrectionLevel, i, bVar);
        s(version, bVar);
        f(aVar, i, bVar);
    }

    static int b(int i, int i2) {
        if (i2 == 0) {
            throw new IllegalArgumentException("0 polynomial");
        }
        int iN = n(i2);
        int iN2 = i << (iN - 1);
        while (n(iN2) >= iN) {
            iN2 ^= i2 << (n(iN2) - iN);
        }
        return iN2;
    }

    static void c(b bVar) {
        bVar.a((byte) -1);
    }

    static void d(Version version, b bVar) throws g {
        j(bVar);
        e(bVar);
        r(version, bVar);
        k(bVar);
    }

    private static void e(b bVar) throws g {
        if (bVar.b(8, bVar.d() - 8) == 0) {
            throw new g();
        }
        bVar.f(8, bVar.d() - 8, 1);
    }

    static void f(com.google.zxing.common.a aVar, int i, b bVar) throws g {
        boolean zH;
        int iE = bVar.e() - 1;
        int iD = bVar.d() - 1;
        int i2 = 0;
        int i3 = -1;
        while (iE > 0) {
            if (iE == 6) {
                iE--;
            }
            while (iD >= 0 && iD < bVar.d()) {
                for (int i4 = 0; i4 < 2; i4++) {
                    int i5 = iE - i4;
                    if (o(bVar.b(i5, iD))) {
                        if (i2 < aVar.i()) {
                            zH = aVar.h(i2);
                            i2++;
                        } else {
                            zH = false;
                        }
                        if (i != -1 && c.f(i, i5, iD)) {
                            zH = !zH;
                        }
                        bVar.g(i5, iD, zH);
                    }
                }
                iD += i3;
            }
            i3 = -i3;
            iD += i3;
            iE -= 2;
        }
        if (i2 == aVar.i()) {
            return;
        }
        throw new g("Not all bits consumed: " + i2 + '/' + aVar.i());
    }

    private static void g(int i, int i2, b bVar) throws g {
        for (int i3 = 0; i3 < 8; i3++) {
            int i4 = i + i3;
            if (!o(bVar.b(i4, i2))) {
                throw new g();
            }
            bVar.f(i4, i2, 0);
        }
    }

    private static void h(int i, int i2, b bVar) {
        for (int i3 = 0; i3 < 5; i3++) {
            int[] iArr = b[i3];
            for (int i4 = 0; i4 < 5; i4++) {
                bVar.f(i + i4, i2 + i3, iArr[i4]);
            }
        }
    }

    private static void i(int i, int i2, b bVar) {
        for (int i3 = 0; i3 < 7; i3++) {
            int[] iArr = a[i3];
            for (int i4 = 0; i4 < 7; i4++) {
                bVar.f(i + i4, i2 + i3, iArr[i4]);
            }
        }
    }

    private static void j(b bVar) throws g {
        int length = a[0].length;
        i(0, 0, bVar);
        i(bVar.e() - length, 0, bVar);
        i(0, bVar.e() - length, bVar);
        g(0, 7, bVar);
        g(bVar.e() - 8, 7, bVar);
        g(0, bVar.e() - 8, bVar);
        m(7, 0, bVar);
        m((bVar.d() - 7) - 1, 0, bVar);
        m(7, bVar.d() - 7, bVar);
    }

    private static void k(b bVar) {
        int i = 8;
        while (i < bVar.e() - 8) {
            int i2 = i + 1;
            int i3 = i2 % 2;
            if (o(bVar.b(i, 6))) {
                bVar.f(i, 6, i3);
            }
            if (o(bVar.b(6, i))) {
                bVar.f(6, i, i3);
            }
            i = i2;
        }
    }

    static void l(ErrorCorrectionLevel errorCorrectionLevel, int i, b bVar) throws g {
        int iD;
        com.google.zxing.common.a aVar = new com.google.zxing.common.a();
        p(errorCorrectionLevel, i, aVar);
        for (int i2 = 0; i2 < aVar.i(); i2++) {
            boolean zH = aVar.h((aVar.i() - 1) - i2);
            int[] iArr = f4438d[i2];
            bVar.g(iArr[0], iArr[1], zH);
            int iE = 8;
            if (i2 < 8) {
                iE = (bVar.e() - i2) - 1;
                iD = 8;
            } else {
                iD = (bVar.d() - 7) + (i2 - 8);
            }
            bVar.g(iE, iD, zH);
        }
    }

    private static void m(int i, int i2, b bVar) throws g {
        for (int i3 = 0; i3 < 7; i3++) {
            int i4 = i2 + i3;
            if (!o(bVar.b(i, i4))) {
                throw new g();
            }
            bVar.f(i, i4, 0);
        }
    }

    static int n(int i) {
        return 32 - Integer.numberOfLeadingZeros(i);
    }

    private static boolean o(int i) {
        return i == -1;
    }

    static void p(ErrorCorrectionLevel errorCorrectionLevel, int i, com.google.zxing.common.a aVar) throws g {
        if (!QRCode.isValidMaskPattern(i)) {
            throw new g("Invalid mask pattern");
        }
        int iE = (errorCorrectionLevel.e() << 3) | i;
        aVar.e(iE, 5);
        aVar.e(b(iE, 1335), 10);
        com.google.zxing.common.a aVar2 = new com.google.zxing.common.a();
        aVar2.e(21522, 15);
        aVar.m(aVar2);
        if (aVar.i() == 15) {
            return;
        }
        throw new g("should not happen but we got: " + aVar.i());
    }

    static void q(Version version, com.google.zxing.common.a aVar) throws g {
        aVar.e(version.e(), 6);
        aVar.e(b(version.e(), 7973), 12);
        if (aVar.i() == 18) {
            return;
        }
        throw new g("should not happen but we got: " + aVar.i());
    }

    private static void r(Version version, b bVar) {
        if (version.e() < 2) {
            return;
        }
        int[] iArr = c[version.e() - 1];
        for (int i : iArr) {
            if (i >= 0) {
                for (int i2 : iArr) {
                    if (i2 >= 0 && o(bVar.b(i2, i))) {
                        h(i2 - 2, i - 2, bVar);
                    }
                }
            }
        }
    }

    static void s(Version version, b bVar) throws g {
        if (version.e() < 7) {
            return;
        }
        com.google.zxing.common.a aVar = new com.google.zxing.common.a();
        q(version, aVar);
        int i = 17;
        for (int i2 = 0; i2 < 6; i2++) {
            for (int i3 = 0; i3 < 3; i3++) {
                boolean zH = aVar.h(i);
                i--;
                bVar.g(i2, (bVar.d() - 11) + i3, zH);
                bVar.g((bVar.d() - 11) + i3, i2, zH);
            }
        }
    }
}
