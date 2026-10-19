package com.json.adqualitysdk.sdk.i;

import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes4.dex */
public final class ex extends eg {
    private static char[] j = {21};
    private static int k = 0;
    private static int l = 1;

    public ex(dx dxVar, dx dxVar2, Cdo cdo) {
        super(dxVar, dxVar2, cdo);
    }

    private static String d(boolean z, int[] iArr, String str) throws UnsupportedEncodingException {
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
            System.arraycopy(j, i, cArr, 0, i2);
            if (bArr != null) {
                char[] cArr2 = new char[i2];
                i.f68 = 0;
                char c = 0;
                while (true) {
                    int i5 = i.f68;
                    if (i5 >= i2) {
                        break;
                    }
                    if (bArr[i5] == 1) {
                        cArr2[i5] = (char) (((cArr[i5] << 1) + 1) - c);
                    } else {
                        cArr2[i5] = (char) ((cArr[i5] << 1) - c);
                    }
                    c = cArr2[i5];
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

    @Override // com.json.adqualitysdk.sdk.i.eg
    /* JADX INFO: renamed from: ﻐ */
    public final Number mo711(Number number, Number number2) {
        if (!(number instanceof Double)) {
            int i = k;
            int i2 = i + 119;
            l = i2 % 128;
            if (i2 % 2 == 0) {
                boolean z = number2 instanceof Double;
                throw null;
            }
            if (!(number2 instanceof Double)) {
                if (!(number instanceof Long)) {
                    int i3 = i + 37;
                    l = i3 % 128;
                    if (i3 % 2 == 0) {
                        boolean z2 = number2 instanceof Long;
                        throw null;
                    }
                    if (!(number2 instanceof Long)) {
                        return Integer.valueOf(number.intValue() * number2.intValue());
                    }
                }
                return Long.valueOf(number.longValue() * number2.longValue());
            }
        }
        Double dValueOf = Double.valueOf(number.doubleValue() * number2.doubleValue());
        int i4 = l + 105;
        k = i4 % 128;
        if ((i4 % 2 != 0 ? (char) 17 : '7') == '7') {
            return dValueOf;
        }
        int i5 = 79 / 0;
        return dValueOf;
    }

    @Override // com.json.adqualitysdk.sdk.i.ed
    /* JADX INFO: renamed from: ﾇ */
    public final String mo709() {
        int i = l + 15;
        k = i % 128;
        String strIntern = ((i % 2 != 0 ? (char) 31 : (char) 18) != 18 ? d(true, new int[]{0, 1, 0, 1}, "\u0000") : d(true, new int[]{0, 1, 0, 1}, "\u0000")).intern();
        int i2 = l + 105;
        k = i2 % 128;
        int i3 = i2 % 2;
        return strIntern;
    }
}
