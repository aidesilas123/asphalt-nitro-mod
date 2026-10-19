package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;

/* JADX INFO: loaded from: classes4.dex */
public final class ep extends eg {
    private static char j = 266;
    private static char k = 2900;
    private static char l = 35060;
    private static char m = 38723;
    private static int n = 0;
    private static int o = 1;

    public ep(dx dxVar, dx dxVar2, Cdo cdo) {
        super(dxVar, dxVar2, cdo);
    }

    private static String d(String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (o.f139) {
            char[] cArr2 = new char[cArr.length];
            o.f138 = 0;
            char[] cArr3 = new char[2];
            while (true) {
                int i2 = o.f138;
                if (i2 < cArr.length) {
                    cArr3[0] = cArr[i2];
                    cArr3[1] = cArr[i2 + 1];
                    int i3 = 58224;
                    for (int i4 = 0; i4 < 16; i4++) {
                        cArr3[1] = (char) (cArr3[1] - (((cArr3[0] + i3) ^ ((cArr3[0] << 4) + l)) ^ ((cArr3[0] >>> 5) + m)));
                        cArr3[0] = (char) (cArr3[0] - (((cArr3[1] + i3) ^ ((cArr3[1] << 4) + j)) ^ ((cArr3[1] >>> 5) + k)));
                        i3 -= 40503;
                    }
                    int i5 = o.f138;
                    cArr2[i5] = cArr3[0];
                    cArr2[i5 + 1] = cArr3[1];
                    o.f138 = i5 + 2;
                } else {
                    str2 = new String(cArr2, 0, i);
                }
            }
        }
        return str2;
    }

    @Override // com.json.adqualitysdk.sdk.i.eg
    /* JADX INFO: renamed from: ﻐ */
    public final Number mo711(Number number, Number number2) {
        int i = n + 87;
        o = i % 128;
        int i2 = i % 2;
        if ((!(number instanceof Double)) && !(number2 instanceof Double)) {
            if (!(number instanceof Long)) {
                if (number2 instanceof Long ? false : true) {
                    return Integer.valueOf(number.intValue() - number2.intValue());
                }
            }
            return Long.valueOf(number.longValue() - number2.longValue());
        }
        Double dValueOf = Double.valueOf(number.doubleValue() - number2.doubleValue());
        int i3 = n + 101;
        o = i3 % 128;
        if ((i3 % 2 == 0 ? '6' : 'W') == 'W') {
            return dValueOf;
        }
        int i4 = 91 / 0;
        return dValueOf;
    }

    @Override // com.json.adqualitysdk.sdk.i.ed
    /* JADX INFO: renamed from: ﾇ */
    public final String mo709() {
        int i = o + 91;
        n = i % 128;
        String strIntern = d("쿝鱿", (i % 2 != 0 ? (char) 22 : 'C') != 'C' ? 1 - Color.blue(1) : Color.blue(0) + 1).intern();
        int i2 = o + 57;
        n = i2 % 128;
        if (i2 % 2 == 0) {
            return strIntern;
        }
        throw null;
    }
}
