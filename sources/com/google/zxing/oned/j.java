package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.FormatException;
import java.util.Collection;
import java.util.Collections;

/* JADX INFO: compiled from: EAN8Writer.java */
/* JADX INFO: loaded from: classes3.dex */
public final class j extends t {
    @Override // com.google.zxing.oned.n
    public boolean[] d(String str) {
        int length = str.length();
        if (length == 7) {
            try {
                str = str + s.b(str);
            } catch (FormatException e2) {
                throw new IllegalArgumentException(e2);
            }
        } else {
            if (length != 8) {
                throw new IllegalArgumentException("Requested contents should be 7 or 8 digits long, but got " + length);
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
        boolean[] zArr = new boolean[67];
        int iB = n.b(zArr, 0, s.a, true) + 0;
        for (int i = 0; i <= 3; i++) {
            iB += n.b(zArr, iB, s.f4376d[Character.digit(str.charAt(i), 10)], false);
        }
        int iB2 = iB + n.b(zArr, iB, s.b, false);
        for (int i2 = 4; i2 <= 7; i2++) {
            iB2 += n.b(zArr, iB2, s.f4376d[Character.digit(str.charAt(i2), 10)], true);
        }
        n.b(zArr, iB2, s.a, true);
        return zArr;
    }

    @Override // com.google.zxing.oned.n
    protected Collection<BarcodeFormat> g() {
        return Collections.singleton(BarcodeFormat.EAN_8);
    }
}
