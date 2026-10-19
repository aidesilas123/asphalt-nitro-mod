package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.os.Process;
import android.text.AndroidCharacter;
import android.text.TextUtils;
import android.view.ViewConfiguration;
import com.chartboost.sdk.Chartboost;
import com.json.adqualitysdk.sdk.i.iw;

/* JADX INFO: loaded from: classes4.dex */
public final class gc implements gd {
    private static char a = 31276;
    private static char b = 49586;
    private static char c = 17960;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static char f5659d = 8701;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f5660e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5661f = 1;

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
                        cArr3[1] = (char) (cArr3[1] - (((cArr3[0] + i3) ^ ((cArr3[0] << 4) + c)) ^ ((cArr3[0] >>> 5) + f5659d)));
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
        int i = f5660e + 49;
        int i2 = i % 128;
        f5661f = i2;
        int i3 = i % 2;
        int i4 = i2 + 51;
        f5660e = i4 % 128;
        int i5 = i4 % 2;
        return Chartboost.class;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﻛ */
    public final String mo717() {
        int i = f5660e + 59;
        f5661f = i % 128;
        int i2 = i % 2;
        String strIntern = a("굄耷\uf239⩥᪇㌵릀훽ꎥ븮ꈤ쮈鯭\udf1a洒￠嶪酋姫鯍懰궝鶄䤜惨\ue350找ඖ他诪", (ViewConfiguration.getKeyRepeatTimeout() >> 16) + 29).intern();
        int i3 = f5660e + 99;
        f5661f = i3 % 128;
        int i4 = i3 % 2;
        return strIntern;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ｋ */
    public final iw.e mo718() {
        iw.e eVar = new iw.e(a("굄耷語\u20c4먈嚗涄ꉶ\ud92d釥र螟懰궝鶄䤜惨\ue350找ඖ他诪", 20 - TextUtils.indexOf((CharSequence) "", '0', 0)).intern(), a("迪Ⲫ떰啩", 3 - Color.blue(0)).intern());
        int i = f5660e + 103;
        f5661f = i % 128;
        if (i % 2 != 0) {
            return eVar;
        }
        int i2 = 87 / 0;
        return eVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾇ */
    public final az mo719() {
        bi biVar = new bi(a("᪇㌵릀훽ꎥ븮ꈤ쮈鯭\udf1a", (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)) + 9).intern());
        int i = f5661f + 75;
        f5660e = i % 128;
        int i2 = i % 2;
        return biVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾒ */
    public final String mo720() {
        int i = f5661f + 33;
        f5660e = i % 128;
        int i2 = i % 2;
        String strIntern = a("᪇㌵릀훽ꎥ븮ꈤ쮈鯭\udf1a", AndroidCharacter.getMirror('0') - '&').intern();
        int i3 = f5660e + 95;
        f5661f = i3 % 128;
        if ((i3 % 2 == 0 ? 'M' : (char) 6) == 6) {
            return strIntern;
        }
        throw null;
    }
}
