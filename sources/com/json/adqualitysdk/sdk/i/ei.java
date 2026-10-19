package com.json.adqualitysdk.sdk.i;

import android.view.View;
import android.view.ViewConfiguration;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ei extends en {
    private static char j = 16980;
    private static char k = 34725;
    private static char l = 413;
    private static char m = 57727;

    public ei(dx dxVar, dx dxVar2, Cdo cdo) {
        super(dxVar, dxVar2, cdo);
    }

    private static String g(String str, int i) {
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

    @Override // com.json.adqualitysdk.sdk.i.en
    final boolean d(Object obj, Object obj2) {
        StringBuilder sb = new StringBuilder();
        sb.append(g("\uf7b6榮\ud8fbꓒ橏ၛ陀建\ud9f3䀍㨱桿ᴤꎗ喀\ude01", 15 - View.resolveSizeAndState(0, 0, 0)).intern());
        sb.append(obj);
        sb.append(g("＾響\u197d껉喀\ude01", 5 - (ViewConfiguration.getMaximumDrawingCacheSize() >> 24)).intern());
        sb.append(obj2);
        throw new RuntimeException(sb.toString());
    }

    @Override // com.json.adqualitysdk.sdk.i.en
    final boolean f(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(g("\uf7b6榮\ud8fbꓒ橏ၛ陀建\ud9f3䀍㨱桿ᴤꎗ喀\ude01", (ViewConfiguration.getKeyRepeatDelay() >> 16) + 15).intern());
        sb.append(str);
        sb.append(g("＾響\u197d껉喀\ude01", 5 - View.resolveSize(0, 0)).intern());
        sb.append(str2);
        throw new RuntimeException(sb.toString());
    }
}
