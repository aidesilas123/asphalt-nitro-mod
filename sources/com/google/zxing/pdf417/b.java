package com.google.zxing.pdf417;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.f;
import com.google.zxing.g;
import com.google.zxing.pdf417.encoder.Compaction;
import com.google.zxing.pdf417.encoder.c;
import com.google.zxing.pdf417.encoder.d;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.Map;

/* JADX INFO: compiled from: PDF417Writer.java */
/* JADX INFO: loaded from: classes3.dex */
public final class b implements f {
    private static BitMatrix b(byte[][] bArr, int i) {
        int i2 = i * 2;
        BitMatrix bitMatrix = new BitMatrix(bArr[0].length + i2, bArr.length + i2);
        bitMatrix.d();
        int iG = (bitMatrix.g() - i) - 1;
        int i3 = 0;
        while (i3 < bArr.length) {
            byte[] bArr2 = bArr[i3];
            for (int i4 = 0; i4 < bArr[0].length; i4++) {
                if (bArr2[i4] == 1) {
                    bitMatrix.i(i4 + i, iG);
                }
            }
            i3++;
            iG--;
        }
        return bitMatrix;
    }

    private static BitMatrix c(d dVar, String str, int i, int i2, int i3, int i4, boolean z) throws g {
        boolean z2;
        dVar.e(str, i, z);
        byte[][] bArrB = dVar.f().b(1, 4);
        if ((i3 > i2) != (bArrB[0].length < bArrB.length)) {
            bArrB = d(bArrB);
            z2 = true;
        } else {
            z2 = false;
        }
        int iMin = Math.min(i2 / bArrB[0].length, i3 / bArrB.length);
        if (iMin <= 1) {
            return b(bArrB, i4);
        }
        byte[][] bArrB2 = dVar.f().b(iMin, iMin * 4);
        if (z2) {
            bArrB2 = d(bArrB2);
        }
        return b(bArrB2, i4);
    }

    private static byte[][] d(byte[][] bArr) {
        byte[][] bArr2 = (byte[][]) Array.newInstance((Class<?>) byte.class, bArr[0].length, bArr.length);
        for (int i = 0; i < bArr.length; i++) {
            int length = (bArr.length - i) - 1;
            for (int i2 = 0; i2 < bArr[0].length; i2++) {
                bArr2[i2][length] = bArr[i][i2];
            }
        }
        return bArr2;
    }

    @Override // com.google.zxing.f
    public BitMatrix a(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) throws g {
        int i3;
        int i4;
        boolean z;
        if (barcodeFormat != BarcodeFormat.PDF_417) {
            throw new IllegalArgumentException("Can only encode PDF_417, but got " + barcodeFormat);
        }
        d dVar = new d();
        boolean z2 = false;
        if (map != null) {
            EncodeHintType encodeHintType = EncodeHintType.PDF417_COMPACT;
            if (map.containsKey(encodeHintType)) {
                dVar.h(Boolean.parseBoolean(map.get(encodeHintType).toString()));
            }
            EncodeHintType encodeHintType2 = EncodeHintType.PDF417_COMPACTION;
            if (map.containsKey(encodeHintType2)) {
                dVar.i(Compaction.valueOf(map.get(encodeHintType2).toString()));
            }
            EncodeHintType encodeHintType3 = EncodeHintType.PDF417_DIMENSIONS;
            if (map.containsKey(encodeHintType3)) {
                c cVar = (c) map.get(encodeHintType3);
                dVar.j(cVar.a(), cVar.c(), cVar.b(), cVar.d());
            }
            EncodeHintType encodeHintType4 = EncodeHintType.MARGIN;
            int i5 = map.containsKey(encodeHintType4) ? Integer.parseInt(map.get(encodeHintType4).toString()) : 30;
            EncodeHintType encodeHintType5 = EncodeHintType.ERROR_CORRECTION;
            int i6 = map.containsKey(encodeHintType5) ? Integer.parseInt(map.get(encodeHintType5).toString()) : 2;
            EncodeHintType encodeHintType6 = EncodeHintType.CHARACTER_SET;
            if (map.containsKey(encodeHintType6)) {
                dVar.k(Charset.forName(map.get(encodeHintType6).toString()));
            }
            EncodeHintType encodeHintType7 = EncodeHintType.PDF417_AUTO_ECI;
            if (map.containsKey(encodeHintType7) && Boolean.parseBoolean(map.get(encodeHintType7).toString())) {
                z2 = true;
            }
            i4 = i5;
            i3 = i6;
            z = z2;
        } else {
            i3 = 2;
            i4 = 30;
            z = false;
        }
        return c(dVar, str, i3, i, i2, i4, z);
    }
}
