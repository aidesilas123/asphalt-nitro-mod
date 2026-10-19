package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.os.Process;

/* JADX INFO: loaded from: classes4.dex */
public final class em extends eg {
    private static char[] j = {'/'};
    private static char k = 1;
    private static int l = 0;
    private static int m = 1;

    public em(dx dxVar, dx dxVar2, Cdo cdo) {
        super(dxVar, dxVar2, cdo);
    }

    private static String d(byte b, String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (g.f56) {
            char[] cArr2 = j;
            char c = k;
            char[] cArr3 = new char[i];
            if (i % 2 != 0) {
                i--;
                cArr3[i] = (char) (cArr[i] - b);
            }
            if (i > 1) {
                g.f60 = 0;
                while (true) {
                    int i2 = g.f60;
                    if (i2 >= i) {
                        break;
                    }
                    g.f58 = cArr[i2];
                    g.f62 = cArr[g.f60 + 1];
                    if (g.f58 == g.f62) {
                        cArr3[g.f60] = (char) (g.f58 - b);
                        cArr3[g.f60 + 1] = (char) (g.f62 - b);
                    } else {
                        g.f59 = g.f58 / c;
                        g.f55 = g.f58 % c;
                        g.f61 = g.f62 / c;
                        g.f57 = g.f62 % c;
                        if (g.f55 == g.f57) {
                            g.f59 = ((g.f59 + c) - 1) % c;
                            g.f61 = ((g.f61 + c) - 1) % c;
                            int i3 = (g.f59 * c) + g.f55;
                            int i4 = (g.f61 * c) + g.f57;
                            int i5 = g.f60;
                            cArr3[i5] = cArr2[i3];
                            cArr3[i5 + 1] = cArr2[i4];
                        } else if (g.f59 == g.f61) {
                            g.f55 = ((g.f55 + c) - 1) % c;
                            g.f57 = ((g.f57 + c) - 1) % c;
                            int i6 = (g.f59 * c) + g.f55;
                            int i7 = (g.f61 * c) + g.f57;
                            int i8 = g.f60;
                            cArr3[i8] = cArr2[i6];
                            cArr3[i8 + 1] = cArr2[i7];
                        } else {
                            int i9 = (g.f59 * c) + g.f57;
                            int i10 = (g.f61 * c) + g.f55;
                            int i11 = g.f60;
                            cArr3[i11] = cArr2[i9];
                            cArr3[i11 + 1] = cArr2[i10];
                        }
                    }
                    g.f60 += 2;
                }
            }
            str2 = new String(cArr3);
        }
        return str2;
    }

    @Override // com.json.adqualitysdk.sdk.i.eg
    /* JADX INFO: renamed from: ﻐ */
    public final Number mo711(Number number, Number number2) {
        if (!(number instanceof Double)) {
            int i = l + 75;
            m = i % 128;
            int i2 = i % 2;
            if (!(number2 instanceof Double)) {
                return ((number instanceof Long) || (number2 instanceof Long)) ? Long.valueOf(number.longValue() / number2.longValue()) : Integer.valueOf(number.intValue() / number2.intValue());
            }
        }
        Double dValueOf = Double.valueOf(number.doubleValue() / number2.doubleValue());
        int i3 = m + 19;
        l = i3 % 128;
        if (i3 % 2 == 0) {
            return dValueOf;
        }
        throw null;
    }

    @Override // com.json.adqualitysdk.sdk.i.ed
    /* JADX INFO: renamed from: ﾇ */
    public final String mo709() {
        int i = l + 11;
        m = i % 128;
        int i2 = i % 2;
        String strIntern = d((byte) (6 - Process.getGidForName("")), "6", Color.red(0) + 1).intern();
        int i3 = l + 87;
        m = i3 % 128;
        if ((i3 % 2 == 0 ? (char) 11 : (char) 30) != 11) {
            return strIntern;
        }
        throw null;
    }
}
