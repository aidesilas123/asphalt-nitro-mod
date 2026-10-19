package com.json.adqualitysdk.sdk.i;

import android.os.Process;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.json.adqualitysdk.sdk.i.iw;
import io.presage.Presage;

/* JADX INFO: loaded from: classes4.dex */
public final class gj implements gd {
    private static char a = 58413;
    private static char b = 48021;
    private static char c = 52365;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static char f5666d = 36537;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f5667e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5668f = 1;

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
                        cArr3[1] = (char) (cArr3[1] - (((cArr3[0] + i3) ^ ((cArr3[0] << 4) + c)) ^ ((cArr3[0] >>> 5) + f5666d)));
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
        int i = f5668f;
        int i2 = i + 95;
        f5667e = i2 % 128;
        int i3 = i2 % 2;
        int i4 = i + 43;
        f5667e = i4 % 128;
        if ((i4 % 2 != 0 ? 'c' : 'V') == 'V') {
            return Presage.class;
        }
        throw null;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﻛ */
    public final String mo717() {
        int i = f5667e + 115;
        f5668f = i % 128;
        int i2 = i % 2;
        String strIntern = a("쪡扢굚ɋ댜ﵓ嗝齑췁ᬽ跺鷃댜ﵓ嗝齑췁ᬽ", TextUtils.getOffsetBefore("", 0) + 18).intern();
        int i3 = f5668f + 1;
        f5667e = i3 % 128;
        int i4 = i3 % 2;
        return strIntern;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ｋ */
    public final iw.e mo718() {
        iw.e eVar = new iw.e(a("ﲱ쁺ᰀ\u0cf4煷㚋\u0bffⳃ큋⟺\uf577ﭿƺ톧\ue20d혧", 15 - MotionEvent.axisFromString("")).intern(), a("눲\ue49f鑝刯", (ViewConfiguration.getPressedStateDuration() >> 16) + 3).intern());
        int i = f5667e + 45;
        f5668f = i % 128;
        int i2 = i % 2;
        return eVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾇ */
    public final az mo719() {
        bu buVar = new bu(a("죶䫉鸠㔏퇋䄐", 5 - (ViewConfiguration.getScrollDefaultDelay() >> 16)).intern());
        int i = f5668f + 23;
        f5667e = i % 128;
        int i2 = i % 2;
        return buVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾒ */
    public final String mo720() {
        int i = f5667e + 55;
        f5668f = i % 128;
        int i2 = i % 2;
        String strIntern = a("죶䫉鸠㔏퇋䄐", (Process.myPid() >> 22) + 5).intern();
        int i3 = f5667e + 109;
        f5668f = i3 % 128;
        int i4 = i3 % 2;
        return strIntern;
    }
}
