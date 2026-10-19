package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;

/* JADX INFO: loaded from: classes4.dex */
public final class ee extends dx {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static char[] f5601e = {10922, ')'};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static long f5602f = -2725894806030379171L;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f5603g = 0;
    private static int h = 1;
    private dx i;

    public ee(dx dxVar, Cdo cdo) {
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
                    cArr[i3] = (char) ((((long) f5601e[i2 + i3]) ^ (((long) i3) * f5602f)) ^ ((long) c));
                    e.f51 = i3 + 1;
                } else {
                    str = new String(cArr);
                }
            }
        }
        return str;
    }

    public final boolean equals(Object obj) {
        int i = f5603g;
        int i2 = i + 43;
        h = i2 % 128;
        int i3 = i2 % 2;
        if ((this == obj ? '%' : 'E') == '%') {
            return true;
        }
        if (!(obj == null)) {
            int i4 = i + 11;
            h = i4 % 128;
            int i5 = i4 % 2;
            if (ee.class == obj.getClass()) {
                dx dxVar = this.i;
                dx dxVar2 = ((ee) obj).i;
                if (dxVar != null) {
                    return dxVar.equals(dxVar2);
                }
                if (dxVar2 == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = h + 75;
        f5603g = i % 128;
        if (i % 2 != 0) {
            throw null;
        }
        dx dxVar = this.i;
        if (dxVar == null) {
            return 0;
        }
        int iHashCode = dxVar.hashCode();
        int i2 = h + 61;
        f5603g = i2 % 128;
        if ((i2 % 2 != 0 ? '8' : '^') == '^') {
            return iHashCode;
        }
        int i3 = 18 / 0;
        return iHashCode;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(c(Color.alpha(0) + 1, 1 - (SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)), (char) (10881 - TextUtils.indexOf((CharSequence) "", '0', 0, 0))).intern());
        sb.append(this.i);
        sb.append(c(View.getDefaultSize(0, 0) + 1, View.getDefaultSize(0, 0) + 1, (char) View.MeasureSpec.makeMeasureSpec(0, 0)).intern());
        String string = sb.toString();
        int i = f5603g + 85;
        h = i % 128;
        int i2 = i % 2;
        return string;
    }

    @Override // com.json.adqualitysdk.sdk.i.dx
    /* JADX INFO: renamed from: ﻛ */
    public final dp mo687(dr drVar, cj cjVar) {
        int i = h + 95;
        f5603g = i % 128;
        int i2 = i % 2;
        dp dpVarM702 = this.i.m702(drVar, cjVar);
        int i3 = h + 75;
        f5603g = i3 % 128;
        if (i3 % 2 != 0) {
            throw null;
        }
        return dpVarM702;
    }
}
