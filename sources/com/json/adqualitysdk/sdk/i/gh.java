package com.json.adqualitysdk.sdk.i;

import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.inmobi.sdk.InMobiSdk;
import com.json.adqualitysdk.sdk.i.iw;

/* JADX INFO: loaded from: classes4.dex */
public final class gh implements gd {
    private static long a = 2831750957659385052L;
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
        int i = b + 99;
        int i2 = i % 128;
        c = i2;
        int i3 = i % 2;
        int i4 = i2 + 57;
        b = i4 % 128;
        int i5 = i4 % 2;
        return InMobiSdk.class;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﻛ */
    public final String mo717() {
        int i = c + 125;
        b = i % 128;
        return a("\uecbfㅔ坿畇鬩뤱\udfdb\ufde2Ά↪䟴摂詬ꠌ칐\uec1c㋂僆皍钛몹\udf7cﵢͶ", i % 2 != 0 ? 56807 % (KeyEvent.getMaxKeyCode() + 62) : 56807 - (KeyEvent.getMaxKeyCode() >> 16)).intern();
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ｋ */
    public final iw.e mo718() {
        iw.e eVar = new iw.e(a("\uecbfರⲴ䲻沵貰겺첦\uecb6\u0cb4Ⳮ䲔沖貖겙첓\uec85", View.combineMeasuredStates(0, 0) + 57347).intern(), a("\uecebો\u209e", 58937 - ExpandableListView.getPackedPositionGroup(0L)).intern());
        int i = c + 17;
        b = i % 128;
        if ((i % 2 != 0 ? (char) 24 : (char) 1) == 1) {
            return eVar;
        }
        throw null;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾇ */
    public final az mo719() {
        bq bqVar = new bq(a("\uecb5붑价Ὶ꠲礚", (ViewConfiguration.getJumpTapTimeout() >> 16) + 20771).intern());
        int i = c + 87;
        b = i % 128;
        if (i % 2 != 0) {
            throw null;
        }
        return bqVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾒ */
    public final String mo720() {
        int i = c + 91;
        b = i % 128;
        int i2 = i % 2;
        String strIntern = a("\uecb5붑价Ὶ꠲礚", 20771 - ExpandableListView.getPackedPositionType(0L)).intern();
        int i3 = b + 117;
        c = i3 % 128;
        int i4 = i3 % 2;
        return strIntern;
    }
}
