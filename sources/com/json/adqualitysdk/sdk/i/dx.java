package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.media.AudioTrack;
import android.view.ViewConfiguration;

/* JADX INFO: loaded from: classes4.dex */
public abstract class dx {
    private static long a = 9085295530830415632L;
    private static int b = 0;
    private static int c = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Cdo f5584d;

    public dx(Cdo cdo) {
        this.f5584d = cdo;
    }

    static String a(Object[] objArr) {
        StringBuilder sb = new StringBuilder();
        int length = objArr.length;
        int i = 0;
        boolean z = true;
        while (i < length) {
            Object obj = objArr[i];
            if (!z) {
                int i2 = b + 7;
                c = i2 % 128;
                sb.append(b("鑄ᱚဧ\udc54鑨孪", i2 % 2 != 0 ? Color.alpha(0) : Color.alpha(1)).intern());
            }
            if (!(!(obj instanceof String))) {
                sb.append(b("ত\ue2ea겶蚖আ", 1 - (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1))).intern());
                sb.append(obj);
                sb.append(b("ত\ue2ea겶蚖আ", Color.argb(0, 0, 0, 0)).intern());
            } else {
                sb.append(obj);
            }
            i++;
            int i3 = c + 23;
            b = i3 % 128;
            int i4 = i3 % 2;
            z = false;
        }
        return sb.toString();
    }

    private static String b(String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (f.f54) {
            char[] cArrM713 = f.m713(a, cArr, i);
            f.f52 = 4;
            while (true) {
                int i2 = f.f52;
                if (i2 < cArrM713.length) {
                    f.f53 = i2 - 4;
                    cArrM713[f.f52] = (char) (((long) (cArrM713[r1] ^ cArrM713[r1 % 4])) ^ (((long) f.f53) * a));
                    f.f52++;
                } else {
                    str2 = new String(cArrM713, 4, cArrM713.length - 4);
                }
            }
        }
        return str2;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final dp m702(dr drVar, cj cjVar) {
        dp dpVarMo687;
        dx dxVar = this;
        while (true) {
            dpVarMo687 = dxVar.mo687(drVar, cjVar);
            if (dpVarMo687 == null) {
                break;
            }
            int i = c + 33;
            b = i % 128;
            int i2 = i % 2;
            if ((dpVarMo687.m674() instanceof dx ? 'O' : 'L') == 'L') {
                break;
            }
            dxVar = (dx) dpVarMo687.m674();
            int i3 = b + 35;
            c = i3 % 128;
            int i4 = i3 % 2;
        }
        int i5 = b + 43;
        c = i5 % 128;
        if ((i5 % 2 != 0 ? '+' : 'L') == '+') {
            return dpVarMo687;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final String m703() {
        int i = b + 1;
        c = i % 128;
        int i2 = i % 2;
        if (this.f5584d == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(b("躲폚滉脚躒钫\ue09d吊銟냯쓝瀂뙝갮ꡉ", 1 - (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1))).intern());
        sb.append(this.f5584d);
        String string = sb.toString();
        int i3 = c + 107;
        b = i3 % 128;
        int i4 = i3 % 2;
        return string;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final int m704() {
        int i = b;
        int i2 = i + 71;
        int i3 = i2 % 128;
        c = i3;
        if ((i2 % 2 == 0 ? '\n' : '\r') != '\r') {
            throw null;
        }
        Cdo cdo = this.f5584d;
        if (cdo != null) {
            int i4 = i3 + 47;
            b = i4 % 128;
            int i5 = i4 % 2;
            return cdo.m670();
        }
        int i6 = i + 9;
        c = i6 % 128;
        if (i6 % 2 != 0) {
            return -1;
        }
        int i7 = 38 / 0;
        return -1;
    }

    /* JADX INFO: renamed from: ﻛ */
    public abstract dp mo687(dr drVar, cj cjVar);
}
