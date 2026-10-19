package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.FormatException;
import java.util.Collection;
import java.util.Collections;

/* JADX INFO: compiled from: EAN13Writer.java */
/* JADX INFO: loaded from: classes3.dex */
public final class i extends t {
    @Override // com.google.zxing.oned.n
    public boolean[] d(String str) {
        int length = str.length();
        if (length == 12) {
            try {
                str = str + s.b(str);
            } catch (FormatException e2) {
                throw new IllegalArgumentException(e2);
            }
        } else {
            if (length != 13) {
                throw new IllegalArgumentException("Requested contents should be 12 or 13 digits long, but got " + length);
            }
            try {
                if (!s.a(str)) {
                    throw new IllegalArgumentException("Contents do not pass checksum");
                }
            } catch (FormatException unused) {
                throw new IllegalArgumentException("Illegal contents");
            }
        }
        n.c(str);
        int i = h.i[Character.digit(str.charAt(0), 10)];
        boolean[] zArr = new boolean[95];
        int iB = n.b(zArr, 0, s.a, true) + 0;
        for (int i2 = 1; i2 <= 6; i2++) {
            int iDigit = Character.digit(str.charAt(i2), 10);
            if (((i >> (6 - i2)) & 1) == 1) {
                iDigit += 10;
            }
            iB += n.b(zArr, iB, s.f4377e[iDigit], false);
        }
        int iB2 = iB + n.b(zArr, iB, s.b, false);
        for (int i3 = 7; i3 <= 12; i3++) {
            iB2 += n.b(zArr, iB2, s.f4376d[Character.digit(str.charAt(i3), 10)], true);
        }
        n.b(zArr, iB2, s.a, true);
        return zArr;
    }

    @Override // com.google.zxing.oned.n
    protected Collection<BarcodeFormat> g() {
        return Collections.singleton(BarcodeFormat.EAN_13);
    }
}
