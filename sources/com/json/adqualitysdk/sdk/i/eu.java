package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.text.TextUtils;
import android.view.ViewConfiguration;

/* JADX INFO: loaded from: classes4.dex */
public final class eu extends dx {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static char[] f5609e = {43639};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static long f5610f = 6040059757939450649L;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f5611g = 0;
    private static int h = 1;
    private dx i;

    public eu(dx dxVar, Cdo cdo) {
        super(cdo);
        this.i = dxVar;
    }

    private static String c(int i, int i2, char c) {
        String str;
        synchronized (e.f50) {
            char[] cArr = new char[i];
            e.f51 = 0;
            while (true) {
                int i3 = e.f51;
                if (i3 < i) {
                    cArr[i3] = (char) ((((long) f5609e[i2 + i3]) ^ (((long) i3) * f5610f)) ^ ((long) c));
                    e.f51 = i3 + 1;
                } else {
                    str = new String(cArr);
                }
            }
        }
        return str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(c((ViewConfiguration.getScrollDefaultDelay() >> 16) + 1, Color.argb(0, 0, 0, 0), (char) (43606 - TextUtils.getTrimmedLength(""))).intern());
        sb.append(this.i);
        String string = sb.toString();
        int i = h + 11;
        f5611g = i % 128;
        if (!(i % 2 != 0)) {
            return string;
        }
        throw null;
    }

    @Override // com.json.adqualitysdk.sdk.i.dx
    /* JADX INFO: renamed from: ﻛ */
    public final dp mo687(dr drVar, cj cjVar) {
        return new dp(Boolean.valueOf(!this.i.m702(drVar, cjVar).m678()));
    }
}
