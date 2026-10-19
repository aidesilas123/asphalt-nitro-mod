package com.json.adqualitysdk.sdk.i;

import android.text.TextUtils;
import android.view.ViewConfiguration;
import com.json.adqualitysdk.sdk.i.iw;
import com.yahoo.ads.YASAds;

/* JADX INFO: loaded from: classes4.dex */
public final class gw implements gd {
    private static long a = 1426259446910659289L;
    private static int b = 0;
    private static int c = 1;

    private static String a(String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (f.f54) {
            char[] cArrM713 = f.m713(a, cArr, i);
            f.f52 = 4;
            while (true) {
                int i2 = f.f52;
                if (i2 < cArrM713.length) {
                    f.f53 = i2 - 4;
                    cArrM713[f.f52] = (char) (((long) (cArrM713[r1] ^ cArrM713[r1 % 4])) ^ (((long) f.f53) * a));
                    f.f52++;
                } else {
                    str2 = new String(cArrM713, 4, cArrM713.length - 4);
                }
            }
        }
        return str2;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﻐ */
    public final Class mo716() {
        Class<YASAds> cls;
        int i = b + 79;
        int i2 = i % 128;
        c = i2;
        if ((i % 2 == 0 ? 'I' : (char) 4) != 'I') {
            cls = YASAds.class;
        } else {
            cls = YASAds.class;
            int i3 = 25 / 0;
        }
        int i4 = i2 + 9;
        b = i4 % 128;
        int i5 = i4 % 2;
        return cls;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﻛ */
    public final String mo717() {
        int i = b + 19;
        c = i % 128;
        int i2 = i % 2;
        String strIntern = a("䶹䷚쎩椟歀㺟鶦鴃\ue6a4㽃樾㘦ᬞ梐읛쪑俦쐴㳇齐\ue07aㄷ桦㏎", (ViewConfiguration.getDoubleTapTimeout() >> 16) + 1).intern();
        int i3 = b + 119;
        c = i3 % 128;
        int i4 = i3 % 2;
        return strIntern;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ｋ */
    public final iw.e mo718() {
        iw.e eVar = new iw.e(a("㇣ㆀ垆ﴰ\udd96衊쭛쮾髢\uab6e\udcf4惛杙ﳢ燃鱱㎮偝訧즃", -TextUtils.indexOf((CharSequence) "", '0', 0)).intern(), a("ᑣᑔẵ둂핐胒퇥", -TextUtils.lastIndexOf("", '0', 0)).intern());
        int i = c + 97;
        b = i % 128;
        int i2 = i % 2;
        return eVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾇ */
    public final az mo719() {
        cc ccVar = new cc(a("ꃴꂍ㘺鲂ὖ䪌䵇䶣\u0bff", (ViewConfiguration.getMaximumDrawingCacheSize() >> 24) + 1).intern());
        int i = b + 87;
        c = i % 128;
        int i2 = i % 2;
        return ccVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾒ */
    public final String mo720() {
        int i = c + 125;
        b = i % 128;
        return (i % 2 != 0 ? a("ꃴꂍ㘺鲂ὖ䪌䵇䶣\u0bff", 0 - TextUtils.getOffsetBefore("", 1)) : a("ꃴꂍ㘺鲂ὖ䪌䵇䶣\u0bff", TextUtils.getOffsetBefore("", 0) + 1)).intern();
    }
}
