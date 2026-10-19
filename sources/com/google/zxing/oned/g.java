package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import java.util.Collection;
import java.util.Collections;

/* JADX INFO: compiled from: Code93Writer.java */
/* JADX INFO: loaded from: classes3.dex */
public class g extends n {
    private static int i(boolean[] zArr, int i, int i2) {
        for (int i3 = 0; i3 < 9; i3++) {
            boolean z = true;
            int i4 = i + i3;
            if (((1 << (8 - i3)) & i2) == 0) {
                z = false;
            }
            zArr[i4] = z;
        }
        return 9;
    }

    private static int j(String str, int i) {
        int iIndexOf = 0;
        int i2 = 1;
        for (int length = str.length() - 1; length >= 0; length--) {
            iIndexOf += "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".indexOf(str.charAt(length)) * i2;
            i2++;
            if (i2 > i) {
                i2 = 1;
            }
        }
        return iIndexOf % 47;
    }

    static String k(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder(length * 2);
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == 0) {
                sb.append("bU");
            } else if (cCharAt <= 26) {
                sb.append('a');
                sb.append((char) ((cCharAt + 'A') - 1));
            } else if (cCharAt <= 31) {
                sb.append('b');
                sb.append((char) ((cCharAt + 'A') - 27));
            } else if (cCharAt == ' ' || cCharAt == '$' || cCharAt == '%' || cCharAt == '+') {
                sb.append(cCharAt);
            } else if (cCharAt <= ',') {
                sb.append('c');
                sb.append((char) ((cCharAt + 'A') - 33));
            } else if (cCharAt <= '9') {
                sb.append(cCharAt);
            } else if (cCharAt == ':') {
                sb.append("cZ");
            } else if (cCharAt <= '?') {
                sb.append('b');
                sb.append((char) ((cCharAt + 'F') - 59));
            } else if (cCharAt == '@') {
                sb.append("bV");
            } else if (cCharAt <= 'Z') {
                sb.append(cCharAt);
            } else if (cCharAt <= '_') {
                sb.append('b');
                sb.append((char) ((cCharAt + 'K') - 91));
            } else if (cCharAt == '`') {
                sb.append("bW");
            } else if (cCharAt <= 'z') {
                sb.append('d');
                sb.append((char) ((cCharAt + 'A') - 97));
            } else {
                if (cCharAt > 127) {
                    throw new IllegalArgumentException("Requested content contains a non-encodable character: '" + cCharAt + "'");
                }
                sb.append('b');
                sb.append((char) ((cCharAt + 'P') - 123));
            }
        }
        return sb.toString();
    }

    @Override // com.google.zxing.oned.n
    public boolean[] d(String str) {
        String strK = k(str);
        int length = strK.length();
        if (length > 80) {
            throw new IllegalArgumentException("Requested contents should be less than 80 digits long after converting to extended encoding, but got " + length);
        }
        boolean[] zArr = new boolean[((strK.length() + 2 + 2) * 9) + 1];
        int i = i(zArr, 0, f.c);
        for (int i2 = 0; i2 < length; i2++) {
            i += i(zArr, i, f.b["0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".indexOf(strK.charAt(i2))]);
        }
        int iJ = j(strK, 20);
        int[] iArr = f.b;
        int i3 = i + i(zArr, i, iArr[iJ]);
        int i4 = i3 + i(zArr, i3, iArr[j(strK + "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".charAt(iJ), 15)]);
        zArr[i4 + i(zArr, i4, f.c)] = true;
        return zArr;
    }

    @Override // com.google.zxing.oned.n
    protected Collection<BarcodeFormat> g() {
        return Collections.singleton(BarcodeFormat.CODE_93);
    }
}
