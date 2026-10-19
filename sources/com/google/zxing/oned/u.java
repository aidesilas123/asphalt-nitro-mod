package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.FormatException;
import java.util.Collection;
import java.util.Collections;

/* JADX INFO: compiled from: UPCEWriter.java */
/* JADX INFO: loaded from: classes3.dex */
public final class u extends t {
    @Override // com.google.zxing.oned.n
    public boolean[] d(String str) {
        int length = str.length();
        if (length == 7) {
            try {
                str = str + s.b(UPCEReader.convertUPCEtoUPCA(str));
            } catch (FormatException e2) {
                throw new IllegalArgumentException(e2);
            }
        } else {
            if (length != 8) {
                throw new IllegalArgumentException("Requested contents should be 7 or 8 digits long, but got " + length);
            }
            try {
                if (!s.a(UPCEReader.convertUPCEtoUPCA(str))) {
                    throw new IllegalArgumentException("Contents do not pass checksum");
                }
            } catch (FormatException unused) {
                throw new IllegalArgumentException("Illegal contents");
            }
        }
        n.c(str);
        int iDigit = Character.digit(str.charAt(0), 10);
        if (iDigit != 0 && iDigit != 1) {
            throw new IllegalArgumentException("Number system must be 0 or 1");
        }
        int i = UPCEReader.j[iDigit][Character.digit(str.charAt(7), 10)];
        boolean[] zArr = new boolean[51];
        int iB = n.b(zArr, 0, s.a, true);
        for (int i2 = 1; i2 <= 6; i2++) {
            int iDigit2 = Character.digit(str.charAt(i2), 10);
            if (((i >> (6 - i2)) & 1) == 1) {
                iDigit2 += 10;
            }
            iB += n.b(zArr, iB, s.f4377e[iDigit2], false);
        }
        n.b(zArr, iB, s.c, false);
        return zArr;
    }

    @Override // com.google.zxing.oned.n
    protected Collection<BarcodeFormat> g() {
        return Collections.singleton(BarcodeFormat.UPC_E);
    }
}
