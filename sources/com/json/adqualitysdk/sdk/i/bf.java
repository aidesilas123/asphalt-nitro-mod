package com.json.adqualitysdk.sdk.i;

import android.text.AndroidCharacter;
import android.view.ViewConfiguration;
import com.json.adqualitysdk.sdk.i.az;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class bf extends az {
    private static char[] t = {'E', 4750, 9665, 14338, 19276, 23941, 28868};
    private static long u = 1899216139892626112L;
    private static int v = 0;
    private static int w = 1;

    public bf(String str) {
        super(str);
    }

    private static String k(int i, int i2, char c) {
        String str;
        synchronized (e.f50) {
            char[] cArr = new char[i];
            e.f51 = 0;
            while (true) {
                int i3 = e.f51;
                if (i3 < i) {
                    cArr[i3] = (char) ((((long) t[i2 + i3]) ^ (((long) i3) * u)) ^ ((long) c));
                    e.f51 = i3 + 1;
                } else {
                    str = new String(cArr);
                }
            }
        }
        return str;
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    final Map<String, az.d> j() {
        HashMap map = new HashMap();
        int i = v + 13;
        w = i % 128;
        int i2 = i % 2;
        return map;
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ﻏ */
    public final boolean mo382() {
        int i = w + 71;
        int i2 = i % 128;
        v = i2;
        int i3 = i % 2;
        int i4 = i2 + 119;
        w = i4 % 128;
        if ((i4 % 2 == 0 ? '6' : ']') != '6') {
            return true;
        }
        throw null;
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ｋ */
    final Class mo384(String str) {
        int i = v + 27;
        int i2 = i % 128;
        w = i2;
        int i3 = i % 2;
        int i4 = i2 + 3;
        v = i4 % 128;
        if ((i4 % 2 != 0 ? '<' : '8') != '<') {
            return null;
        }
        int i5 = 27 / 0;
        return null;
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ﾇ */
    public final String mo385() {
        int i = v + 97;
        w = i % 128;
        String strIntern = ((i % 2 == 0 ? (char) 6 : '?') != 6 ? k((ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)) + 6, '0' - AndroidCharacter.getMirror('0'), (char) (ViewConfiguration.getKeyRepeatDelay() >> 16)) : k(4 / (ViewConfiguration.getZoomControlsTimeout() > 1L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 1L ? 0 : -1)), 's' / AndroidCharacter.getMirror('&'), (char) (ViewConfiguration.getKeyRepeatDelay() >>> 2))).intern();
        int i2 = w + 101;
        v = i2 % 128;
        int i3 = i2 % 2;
        return strIntern;
    }
}
