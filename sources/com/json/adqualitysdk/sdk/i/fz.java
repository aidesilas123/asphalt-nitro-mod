package com.json.adqualitysdk.sdk.i;

import android.media.AudioTrack;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.fyber.FairBid;
import com.json.adqualitysdk.sdk.i.iw;

/* JADX INFO: loaded from: classes4.dex */
public final class fz implements gd {
    private static long a = 575925557035746022L;
    private static int b = 0;
    private static int c = 1;

    private static String a(String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (h.f63) {
            h.f64 = i;
            char[] cArr2 = new char[cArr.length];
            h.f65 = 0;
            while (true) {
                int i2 = h.f65;
                if (i2 < cArr.length) {
                    cArr2[i2] = (char) (((long) (cArr[i2] ^ (h.f64 * i2))) ^ a);
                    h.f65++;
                } else {
                    str2 = new String(cArr2);
                }
            }
        }
        return str2;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﻐ */
    public final Class mo716() {
        int i = b + 45;
        int i2 = i % 128;
        c = i2;
        int i3 = i % 2;
        int i4 = i2 + 105;
        b = i4 % 128;
        int i5 = i4 % 2;
        return FairBid.class;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﻛ */
    public final String mo717() {
        int i = b + 97;
        c = i % 128;
        String strIntern = a("䊅窂㊝\ueae9ꊬ媨\u12c6쫎苌몫狎⫾\ue20b騛刾ਪ숲", (i % 2 == 0 ? 'L' : 'S') != 'L' ? TextUtils.indexOf((CharSequence) "", '0') + 14348 : TextUtils.indexOf((CharSequence) "", '5') * 14931).intern();
        int i2 = b + 55;
        c = i2 % 128;
        if ((i2 % 2 == 0 ? 'R' : ')') != 'R') {
            return strIntern;
        }
        int i3 = 15 / 0;
        return strIntern;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ｋ */
    public final iw.e mo718() {
        iw.e eVar = new iw.e(a("䊅\uedbaᳮ休﹏⥺妠裬㬌橞锷얱瓣ꜘ홞Ź놿\ue0e1", 44851 - (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1))).intern(), a("䋑䜁䥄", MotionEvent.axisFromString("") + 1482).intern());
        int i = b + 83;
        c = i % 128;
        int i2 = i % 2;
        return eVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾇ */
    public final az mo719() {
        bj bjVar = new bj(a("䊀ᛶ\uea6d뿇ፀ\ue4ba려", 21618 - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1))).intern());
        int i = c + 99;
        b = i % 128;
        if ((i % 2 != 0 ? '+' : 'H') != '+') {
            return bjVar;
        }
        throw null;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾒ */
    public final String mo720() {
        int i = b + 115;
        c = i % 128;
        int i2 = i % 2;
        String strIntern = a("䊀ᛶ\uea6d뿇ፀ\ue4ba려", (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)) + 21617).intern();
        int i3 = c + 83;
        b = i3 % 128;
        int i4 = i3 % 2;
        return strIntern;
    }
}
