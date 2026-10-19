package com.json.adqualitysdk.sdk.i;

import android.text.TextUtils;
import android.view.ViewConfiguration;

/* JADX INFO: loaded from: classes4.dex */
public final class et extends ei {
    private static char[] n = {'<'};
    private static long o = -6639125253508726464L;
    private static int p = 0;
    private static int q = 1;

    public et(dx dxVar, dx dxVar2, Cdo cdo) {
        super(dxVar, dxVar2, cdo);
    }

    private static String h(int i, int i2, char c) {
        String str;
        synchronized (e.f50) {
            char[] cArr = new char[i];
            e.f51 = 0;
            while (true) {
                int i3 = e.f51;
                if (i3 < i) {
                    cArr[i3] = (char) ((((long) n[i2 + i3]) ^ (((long) i3) * o)) ^ ((long) c));
                    e.f51 = i3 + 1;
                } else {
                    str = new String(cArr);
                }
            }
        }
        return str;
    }

    @Override // com.json.adqualitysdk.sdk.i.en
    final boolean e(int i) {
        int i2 = q;
        int i3 = i2 + 15;
        p = i3 % 128;
        if (!(i3 % 2 == 0)) {
            throw null;
        }
        if (!(i < 0)) {
            return false;
        }
        int i4 = i2 + 11;
        p = i4 % 128;
        return !(i4 % 2 != 0);
    }

    @Override // com.json.adqualitysdk.sdk.i.ed
    /* JADX INFO: renamed from: ﾇ */
    public final String mo709() {
        int fadingEdgeLength;
        int maximumFlingVelocity;
        int i = q + 65;
        p = i % 128;
        if (i % 2 == 0) {
            fadingEdgeLength = 1 - (ViewConfiguration.getFadingEdgeLength() >> 16);
            maximumFlingVelocity = ViewConfiguration.getMaximumFlingVelocity() >> 16;
        } else {
            fadingEdgeLength = 1 / (ViewConfiguration.getFadingEdgeLength() % 22);
            maximumFlingVelocity = ViewConfiguration.getMaximumFlingVelocity() % 48;
        }
        String strIntern = h(fadingEdgeLength, maximumFlingVelocity, (char) TextUtils.indexOf("", "", 0, 0)).intern();
        int i2 = p + 7;
        q = i2 % 128;
        int i3 = i2 % 2;
        return strIntern;
    }
}
