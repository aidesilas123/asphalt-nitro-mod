package com.google.zxing.i;

import com.google.zxing.common.BitMatrix;
import com.google.zxing.datamatrix.encoder.SymbolInfo;
import com.google.zxing.datamatrix.encoder.e;
import com.google.zxing.f;
import com.google.zxing.qrcode.encoder.b;

/* JADX INFO: compiled from: DataMatrixWriter.java */
/* JADX INFO: loaded from: classes3.dex */
public final class a implements f {
    private static BitMatrix b(b bVar, int i, int i2) {
        BitMatrix bitMatrix;
        int iE = bVar.e();
        int iD = bVar.d();
        int iMax = Math.max(i, iE);
        int iMax2 = Math.max(i2, iD);
        int iMin = Math.min(iMax / iE, iMax2 / iD);
        int i3 = (iMax - (iE * iMin)) / 2;
        int i4 = (iMax2 - (iD * iMin)) / 2;
        if (i2 < iD || i < iE) {
            bitMatrix = new BitMatrix(iE, iD);
            i3 = 0;
            i4 = 0;
        } else {
            bitMatrix = new BitMatrix(i, i2);
        }
        bitMatrix.d();
        int i5 = 0;
        while (i5 < iD) {
            int i6 = i3;
            int i7 = 0;
            while (i7 < iE) {
                if (bVar.b(i7, i5) == 1) {
                    bitMatrix.j(i6, i4, iMin, iMin);
                }
                i7++;
                i6 += iMin;
            }
            i5++;
            i4 += iMin;
        }
        return bitMatrix;
    }

    private static BitMatrix c(e eVar, SymbolInfo symbolInfo, int i, int i2) {
        int iH = symbolInfo.h();
        int iG = symbolInfo.g();
        b bVar = new b(symbolInfo.j(), symbolInfo.i());
        int i3 = 0;
        for (int i4 = 0; i4 < iG; i4++) {
            if (i4 % symbolInfo.f4357g == 0) {
                int i5 = 0;
                for (int i6 = 0; i6 < symbolInfo.j(); i6++) {
                    bVar.g(i5, i3, i6 % 2 == 0);
                    i5++;
                }
                i3++;
            }
            int i7 = 0;
            for (int i8 = 0; i8 < iH; i8++) {
                if (i8 % symbolInfo.f4356f == 0) {
                    bVar.g(i7, i3, true);
                    i7++;
                }
                bVar.g(i7, i3, eVar.e(i8, i4));
                i7++;
                int i9 = symbolInfo.f4356f;
                if (i8 % i9 == i9 - 1) {
                    bVar.g(i7, i3, i4 % 2 == 0);
                    i7++;
                }
            }
            i3++;
            int i10 = symbolInfo.f4357g;
            if (i4 % i10 == i10 - 1) {
                int i11 = 0;
                for (int i12 = 0; i12 < symbolInfo.j(); i12++) {
                    bVar.g(i11, i3, true);
                    i11++;
                }
                i3++;
            }
        }
        return b(bVar, i, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0055  */
    @Override // com.google.zxing.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.google.zxing.common.BitMatrix a(java.lang.String r8, com.google.zxing.BarcodeFormat r9, int r10, int r11, java.util.Map<com.google.zxing.EncodeHintType, ?> r12) {
        /*
            Method dump skipped, instruction units count: 266
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.i.a.a(java.lang.String, com.google.zxing.BarcodeFormat, int, int, java.util.Map):com.google.zxing.common.BitMatrix");
    }
}
