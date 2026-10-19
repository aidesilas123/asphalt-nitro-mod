package com.google.zxing.h;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.aztec.encoder.Encoder;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.f;
import java.nio.charset.Charset;
import java.util.Map;

/* JADX INFO: compiled from: AztecWriter.java */
/* JADX INFO: loaded from: classes3.dex */
public final class a implements f {
    private static BitMatrix b(String str, BarcodeFormat barcodeFormat, int i, int i2, Charset charset, int i3, int i4) {
        if (barcodeFormat == BarcodeFormat.AZTEC) {
            return c(Encoder.encode(str, i3, i4, charset), i, i2);
        }
        throw new IllegalArgumentException("Can only encode AZTEC, but got " + barcodeFormat);
    }

    private static BitMatrix c(com.google.zxing.aztec.encoder.a aVar, int i, int i2) {
        BitMatrix bitMatrixA = aVar.a();
        if (bitMatrixA == null) {
            throw new IllegalStateException();
        }
        int iH = bitMatrixA.h();
        int iG = bitMatrixA.g();
        int iMax = Math.max(i, iH);
        int iMax2 = Math.max(i2, iG);
        int iMin = Math.min(iMax / iH, iMax2 / iG);
        int i3 = (iMax - (iH * iMin)) / 2;
        int i4 = (iMax2 - (iG * iMin)) / 2;
        BitMatrix bitMatrix = new BitMatrix(iMax, iMax2);
        int i5 = 0;
        while (i5 < iG) {
            int i6 = i3;
            int i7 = 0;
            while (i7 < iH) {
                if (bitMatrixA.f(i7, i5)) {
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

    @Override // com.google.zxing.f
    public BitMatrix a(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) {
        Charset charset;
        int i3;
        int i4;
        if (map != null) {
            EncodeHintType encodeHintType = EncodeHintType.CHARACTER_SET;
            Charset charsetForName = map.containsKey(encodeHintType) ? Charset.forName(map.get(encodeHintType).toString()) : null;
            EncodeHintType encodeHintType2 = EncodeHintType.ERROR_CORRECTION;
            int i5 = map.containsKey(encodeHintType2) ? Integer.parseInt(map.get(encodeHintType2).toString()) : 33;
            EncodeHintType encodeHintType3 = EncodeHintType.AZTEC_LAYERS;
            if (map.containsKey(encodeHintType3)) {
                charset = charsetForName;
                i3 = i5;
                i4 = Integer.parseInt(map.get(encodeHintType3).toString());
                return b(str, barcodeFormat, i, i2, charset, i3, i4);
            }
            charset = charsetForName;
            i3 = i5;
        } else {
            charset = null;
            i3 = 33;
        }
        i4 = 0;
        return b(str, barcodeFormat, i, i2, charset, i3, i4);
    }
}
