package com.json.adqualitysdk.sdk.i;

import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.json.adqualitysdk.sdk.i.iw;
import com.verizon.ads.VASAds;

/* JADX INFO: loaded from: classes4.dex */
public final class gs implements gd {
    private static char a = 58060;
    private static char b = 47951;
    private static char c = 40415;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static char f5683d = 28088;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f5684e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5685f = 1;

    private static String a(String str, int i) {
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
                        cArr3[1] = (char) (cArr3[1] - (((cArr3[0] + i3) ^ ((cArr3[0] << 4) + c)) ^ ((cArr3[0] >>> 5) + f5683d)));
                        cArr3[0] = (char) (cArr3[0] - (((cArr3[1] + i3) ^ ((cArr3[1] << 4) + a)) ^ ((cArr3[1] >>> 5) + b)));
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

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﻐ */
    public final Class mo716() {
        int i = f5685f + 23;
        f5684e = i % 128;
        if ((i % 2 != 0 ? '\\' : (char) 4) != '\\') {
            return VASAds.class;
        }
        int i2 = 28 / 0;
        return VASAds.class;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﻛ */
    public final String mo717() {
        int i = f5685f + 51;
        f5684e = i % 128;
        String strIntern = a("뵾\uf210䇐덑踕퀙눹柳\ue266缮뎟⍵\ud9fe虊㘀㸝式짭ﶟᐱ咽ᴄ", (i % 2 != 0 ? '\"' : (char) 22) != 22 ? 73 >> (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)) : (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)) + 21).intern();
        int i2 = f5685f + 1;
        f5684e = i2 % 128;
        if ((i2 % 2 != 0 ? 'M' : '<') == '<') {
            return strIntern;
        }
        int i3 = 8 / 0;
        return strIntern;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ｋ */
    public final iw.e mo718() {
        iw.e eVar = new iw.e(a("뵾\uf210ꨆ蝊蒿喦筙饳節斢ª洀桱暇㉚瀌⊞衾", 18 - (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1))).intern(), a("ꙅ㌲뀁ᾞ", ExpandableListView.getPackedPositionType(0L) + 3).intern());
        int i = f5685f + 115;
        f5684e = i % 128;
        if ((i % 2 != 0 ? 'X' : 'Y') != 'X') {
            return eVar;
        }
        throw null;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾇ */
    public final az mo719() {
        ca caVar = new ca(a("踕퀙눹柳\ue266缮႒⺦", TextUtils.indexOf((CharSequence) "", '0') + 8).intern());
        int i = f5685f + 57;
        f5684e = i % 128;
        int i2 = i % 2;
        return caVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾒ */
    public final String mo720() {
        int i = f5685f + 65;
        f5684e = i % 128;
        int i2 = i % 2;
        String strIntern = a("踕퀙눹柳\ue266缮႒⺦", 7 - KeyEvent.normalizeMetaState(0)).intern();
        int i3 = f5685f + 37;
        f5684e = i3 % 128;
        if ((i3 % 2 != 0 ? (char) 25 : 'c') == 'c') {
            return strIntern;
        }
        throw null;
    }
}
