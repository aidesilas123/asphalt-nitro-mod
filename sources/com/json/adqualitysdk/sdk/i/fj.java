package com.json.adqualitysdk.sdk.i;

import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes4.dex */
public final class fj extends fr {
    private static char[] a = {'r', 231, 228, 225, 231, 227, 198, 197, 223};
    private static int b = 0;
    private static int c = 1;

    private static String a(boolean z, int[] iArr, String str) throws UnsupportedEncodingException {
        String str2;
        Object bytes = str;
        if (str != null) {
            bytes = str.getBytes("ISO-8859-1");
        }
        byte[] bArr = (byte[]) bytes;
        synchronized (i.f67) {
            int i = iArr[0];
            int i2 = iArr[1];
            int i3 = iArr[2];
            int i4 = iArr[3];
            char[] cArr = new char[i2];
            System.arraycopy(a, i, cArr, 0, i2);
            if (bArr != null) {
                char[] cArr2 = new char[i2];
                i.f68 = 0;
                char c2 = 0;
                while (true) {
                    int i5 = i.f68;
                    if (i5 >= i2) {
                        break;
                    }
                    if (bArr[i5] == 1) {
                        cArr2[i5] = (char) (((cArr[i5] << 1) + 1) - c2);
                    } else {
                        cArr2[i5] = (char) ((cArr[i5] << 1) - c2);
                    }
                    c2 = cArr2[i5];
                    i.f68 = i5 + 1;
                }
                cArr = cArr2;
            }
            if (i4 > 0) {
                char[] cArr3 = new char[i2];
                System.arraycopy(cArr, 0, cArr3, 0, i2);
                int i6 = i2 - i4;
                System.arraycopy(cArr3, 0, cArr, i6, i4);
                System.arraycopy(cArr3, i4, cArr, 0, i6);
            }
            if (z) {
                char[] cArr4 = new char[i2];
                i.f68 = 0;
                while (true) {
                    int i7 = i.f68;
                    if (i7 >= i2) {
                        break;
                    }
                    cArr4[i7] = cArr[(i2 - i7) - 1];
                    i.f68 = i7 + 1;
                }
                cArr = cArr4;
            }
            if (i3 > 0) {
                i.f68 = 0;
                while (true) {
                    int i8 = i.f68;
                    if (i8 >= i2) {
                        break;
                    }
                    cArr[i8] = (char) (cArr[i8] - iArr[2]);
                    i.f68 = i8 + 1;
                }
            }
            str2 = new String(cArr);
        }
        return str2;
    }

    public final String toString() {
        int i = c + 99;
        b = i % 128;
        int i2 = i % 2;
        String strIntern = a(false, new int[]{0, 9, 118, 7}, "\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0000").intern();
        int i3 = c + 41;
        b = i3 % 128;
        if ((i3 % 2 != 0 ? 'S' : ',') == ',') {
            return strIntern;
        }
        throw null;
    }

    @Override // com.json.adqualitysdk.sdk.i.fr
    /* JADX INFO: renamed from: ﾇ */
    public final dp mo714(dr drVar, cj cjVar) {
        dp dpVar = new dp(null);
        dpVar.m672();
        int i = b + 27;
        c = i % 128;
        if ((i % 2 == 0 ? 'F' : '%') == '%') {
            return dpVar;
        }
        int i2 = 35 / 0;
        return dpVar;
    }
}
