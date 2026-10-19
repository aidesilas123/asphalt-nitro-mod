package com.json.adqualitysdk.sdk.i;

import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;

/* JADX INFO: loaded from: classes4.dex */
public final class ey extends ed {
    private static char[] j = {12308, 8200};
    private static long k = 7721288068818341916L;
    private static int l = 0;
    private static int m = 1;

    public ey(dx dxVar, dx dxVar2, Cdo cdo) {
        super(dxVar, dxVar2, cdo);
    }

    private static String d(int i, int i2, char c) {
        String str;
        synchronized (e.f50) {
            char[] cArr = new char[i];
            e.f51 = 0;
            while (true) {
                int i3 = e.f51;
                if (i3 < i) {
                    cArr[i3] = (char) ((((long) j[i2 + i3]) ^ (((long) i3) * k)) ^ ((long) c));
                    e.f51 = i3 + 1;
                } else {
                    str = new String(cArr);
                }
            }
        }
        return str;
    }

    @Override // com.json.adqualitysdk.sdk.i.dx
    /* JADX INFO: renamed from: ﻛ */
    public final dp mo687(dr drVar, cj cjVar) {
        int i = l + 49;
        m = i % 128;
        int i2 = i % 2;
        dp dpVarM702 = m710().m702(drVar, cjVar);
        if (!dpVarM702.m678()) {
            dp dpVarM7022 = m708().m702(drVar, cjVar);
            int i3 = m + 87;
            l = i3 % 128;
            int i4 = i3 % 2;
            return dpVarM7022;
        }
        int i5 = l + 101;
        int i6 = i5 % 128;
        m = i6;
        int i7 = i5 % 2;
        int i8 = i6 + 109;
        l = i8 % 128;
        int i9 = i8 % 2;
        return dpVarM702;
    }

    @Override // com.json.adqualitysdk.sdk.i.ed
    /* JADX INFO: renamed from: ﾇ */
    public final String mo709() {
        int i = m + 53;
        l = i % 128;
        int i2 = i % 2;
        String strIntern = d((ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)) + 1, KeyEvent.keyCodeFromString(""), (char) (View.MeasureSpec.getSize(0) + 12392)).intern();
        int i3 = m + 69;
        l = i3 % 128;
        int i4 = i3 % 2;
        return strIntern;
    }
}
