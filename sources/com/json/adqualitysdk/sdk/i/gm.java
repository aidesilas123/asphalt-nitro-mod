package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.os.Process;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.json.adqualitysdk.sdk.i.iw;
import com.my.target.common.MyTargetManager;

/* JADX INFO: loaded from: classes4.dex */
public final class gm implements gd {
    private static char a = 53171;
    private static char b = 44125;
    private static char c = 8315;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static char f5674d = 31836;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f5675e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5676f = 1;

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
                        cArr3[1] = (char) (cArr3[1] - (((cArr3[0] + i3) ^ ((cArr3[0] << 4) + c)) ^ ((cArr3[0] >>> 5) + f5674d)));
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
        int i = f5675e + 93;
        int i2 = i % 128;
        f5676f = i2;
        int i3 = i % 2;
        int i4 = i2 + 61;
        f5675e = i4 % 128;
        if (!(i4 % 2 != 0)) {
            return MyTargetManager.class;
        }
        int i5 = 64 / 0;
        return MyTargetManager.class;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﻛ */
    public final String mo717() {
        int i = f5676f + 125;
        f5675e = i % 128;
        String strIntern = a("玕\ue857磭䣑ㆄ\udd1d⩓遳蘛곘㢐\uf268쯅殆玕\ue857瘋잱\ue360춶㪊扮ૡ杍蘛곘㢐\uf268\udb9f\uffd9⭻㳨末≼龵Ꜿ", i % 2 == 0 ? 36 - (Process.myPid() >> 22) : 40 % (Process.myPid() - 6)).intern();
        int i2 = f5676f + 107;
        f5675e = i2 % 128;
        if ((i2 % 2 != 0 ? '>' : 'Y') == 'Y') {
            return strIntern;
        }
        int i3 = 9 / 0;
        return strIntern;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ｋ */
    public final iw.e mo718() {
        iw.e eVar = new iw.e(a("玕\ue857芇ࢱ\uf10eꦖ\uf345읝헆仜៦\uf0f0Ǵ≙蘛곘㢐\uf268ぼ\ue391", 19 - Color.alpha(0)).intern(), a("る堉嶍７", 3 - TextUtils.indexOf("", "", 0)).intern());
        int i = f5675e + 121;
        f5676f = i % 128;
        int i2 = i % 2;
        return eVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾇ */
    public final az mo719() {
        bv bvVar = new bv(a("ㆄ\udd1d\ueb07뜾閾㛑❓虉", MotionEvent.axisFromString("") + 9).intern());
        int i = f5675e + 91;
        f5676f = i % 128;
        if (i % 2 == 0) {
            throw null;
        }
        return bvVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾒ */
    public final String mo720() {
        int i = f5675e + 105;
        f5676f = i % 128;
        return a("ㆄ\udd1d\ueb07뜾閾㛑❓虉", (i % 2 == 0 ? ';' : 'W') != ';' ? (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)) + 7 : (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)) + 36).intern();
    }
}
