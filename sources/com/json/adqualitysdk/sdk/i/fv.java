package com.json.adqualitysdk.sdk.i;

import com.applovin.sdk.AppLovinSdk;
import com.json.adqualitysdk.sdk.i.iw;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes4.dex */
public final class fv implements gd {
    private static char[] a = {'7', 'u', 'z', 'Y', 'S', 't', '|', 'z', 'y', '~', '{', 'w', 'Z', '\\', 'w', 's', 'X', 'C', 'd', '|', 'j', 'i', '~', '{', 'w', 'l', 'g', 's', '7', 'n', 'i', 'h', 'k', 'o', 'r', 'm', 'n', 'p', 'h', 'H', 'Q', 'r', 'p', 'q', 'k', 'd', 'i', '/', '_', 'c', '8', 'h', 'g', 'k', 'o', 'r', 'm', 'n'};
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

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﻐ */
    public final Class mo716() {
        int i = b;
        int i2 = i + 105;
        c = i2 % 128;
        int i3 = i2 % 2;
        int i4 = i + 95;
        c = i4 % 128;
        if (i4 % 2 != 0) {
            return AppLovinSdk.class;
        }
        throw null;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﻛ */
    public final String mo717() {
        int i = b + 77;
        c = i % 128;
        int i2 = i % 2;
        String strIntern = a(false, new int[]{0, 28, 12, 0}, "\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001").intern();
        int i3 = c + 121;
        b = i3 % 128;
        int i4 = i3 % 2;
        return strIntern;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ｋ */
    public final iw.e mo718() {
        iw.e eVar = new iw.e(a(true, new int[]{28, 19, 0, 3}, "\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0001").intern(), a(false, new int[]{47, 3, 48, 2}, "\u0000\u0000\u0001").intern());
        int i = c + 119;
        b = i % 128;
        int i2 = i % 2;
        return eVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾇ */
    public final az mo719() {
        be beVar = new be(a(true, new int[]{50, 8, 0, 2}, "\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0000").intern());
        int i = b + 17;
        c = i % 128;
        int i2 = i % 2;
        return beVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾒ */
    public final String mo720() {
        int i = b + 29;
        c = i % 128;
        String strIntern = (!(i % 2 == 0) ? a(true, new int[]{50, 8, 0, 2}, "\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0000") : a(true, new int[]{50, 8, 0, 2}, "\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0000")).intern();
        int i2 = c + 29;
        b = i2 % 128;
        int i3 = i2 % 2;
        return strIntern;
    }
}
