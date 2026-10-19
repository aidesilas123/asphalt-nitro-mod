package com.json.adqualitysdk.sdk.i;

import android.graphics.PointF;
import android.util.Log;
import android.view.ViewConfiguration;
import com.json.adqualitysdk.sdk.ISAdQualityLogLevel;

/* JADX INFO: loaded from: classes4.dex */
public final class m {
    private static long a = 6969171732593590652L;
    private static int b = 0;
    private static int c = 1;

    private static String a(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(b("䄵㏻ꓹ\u19cd諻翚\uf0b7施횷䮄㳎놺≤靜\u086f﵆湀\ue350吲줪멢⽅", 29430 - (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1))).intern());
        sb.append(str);
        String string = sb.toString();
        int i = c + 55;
        b = i % 128;
        int i2 = i % 2;
        return string;
    }

    private static String b(String str, int i) {
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

    private static void c(String str, String str2, String str3, boolean z) {
        int i = c + 27;
        b = i % 128;
        if ((i % 2 != 0 ? '7' : '6') != '6') {
            h();
            throw null;
        }
        if ((h() ? (char) 6 : '\b') == 6) {
            Log.i(a(str), str3);
            return;
        }
        if ((z ? (char) 22 : 'U') != 22) {
            return;
        }
        int i2 = b + 69;
        c = i2 % 128;
        if (i2 % 2 == 0) {
            int i3 = 74 / 0;
            if (d().shouldPrintLog(ISAdQualityLogLevel.INFO) ? false : true) {
                return;
            }
        } else {
            if (!(d().shouldPrintLog(ISAdQualityLogLevel.INFO))) {
                return;
            }
        }
        int i4 = b + 85;
        c = i4 % 128;
        if (i4 % 2 != 0) {
            Log.i(a(str2), str3);
        } else {
            Log.i(a(str2), str3);
            throw null;
        }
    }

    private static ISAdQualityLogLevel d() {
        int i = b + 125;
        c = i % 128;
        if (i % 2 != 0) {
            return r.m1033().m1035();
        }
        r.m1033().m1035();
        throw null;
    }

    private static void e(String str, String str2, String str3, Object obj) {
        int i = c + 15;
        b = i % 128;
        int i2 = i % 2;
        m1023(str, str2, str3, obj, true);
        int i3 = c + 11;
        b = i3 % 128;
        int i4 = i3 % 2;
    }

    private static void f(String str, String str2, String str3) {
        int i = b + 83;
        c = i % 128;
        int i2 = i % 2;
        if ((h() ? (char) 18 : '>') == '>') {
            if (d().shouldPrintLog(ISAdQualityLogLevel.VERBOSE)) {
                int i3 = c + 41;
                b = i3 % 128;
                int i4 = i3 % 2;
                Log.v(a(str2), str3);
                return;
            }
            return;
        }
        int i5 = c + 41;
        b = i5 % 128;
        boolean z = i5 % 2 == 0;
        Log.v(a(str), str3);
        if (!z) {
            int i6 = 39 / 0;
        }
    }

    private static void g(String str, String str2, String str3, Throwable th, boolean z) {
        if (!(!h())) {
            int i = b + 31;
            c = i % 128;
            char c2 = i % 2 == 0 ? 'O' : (char) 2;
            Log.e(a(str), str3, th);
            if (c2 == 2) {
                return;
            } else {
                throw null;
            }
        }
        if (z) {
            int i2 = c + 3;
            b = i2 % 128;
            if (i2 % 2 != 0) {
                d().shouldPrintLog(ISAdQualityLogLevel.ERROR);
                throw null;
            }
            if (d().shouldPrintLog(ISAdQualityLogLevel.ERROR)) {
                int i3 = b + 37;
                c = i3 % 128;
                int i4 = i3 % 2;
                Log.e(a(str2), str3, th);
            }
        }
    }

    private static boolean h() {
        int i = c + 55;
        b = i % 128;
        if ((i % 2 != 0 ? '\"' : (char) 5) != '\"') {
            return r.m1033().m1037();
        }
        r.m1033().m1037();
        throw null;
    }

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public static void m1018(String str, String str2) {
        int i = c + 31;
        b = i % 128;
        int i2 = i % 2;
        f(str, str, str2);
        int i3 = c + 33;
        b = i3 % 128;
        if ((i3 % 2 != 0 ? (char) 20 : '?') != 20) {
            return;
        }
        int i4 = 71 / 0;
    }

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public static void m1019(String str, String str2) {
        int i = c + 9;
        b = i % 128;
        int i2 = i % 2;
        m1022(str, str2, null);
        int i3 = c + 5;
        b = i3 % 128;
        int i4 = i3 % 2;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static void m1020(String str, String str2) {
        int i = b + 107;
        c = i % 128;
        int i2 = i % 2;
        m1029(str, str2, (Throwable) null);
        int i3 = c + 11;
        b = i3 % 128;
        int i4 = i3 % 2;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static void m1021(String str, String str2) {
        int i = b + 15;
        c = i % 128;
        if (i % 2 == 0) {
        }
        c(str, str, str2, false);
        int i2 = c + 25;
        b = i2 % 128;
        int i3 = i2 % 2;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static void m1022(String str, String str2, Object obj) {
        int i = c + 5;
        b = i % 128;
        m1023(str, str, str2, obj, (i % 2 != 0 ? '9' : 'M') == '9');
        int i2 = c + 117;
        b = i2 % 128;
        int i3 = i2 % 2;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static void m1023(String str, String str2, String str3, Object obj, boolean z) {
        if (obj != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(str3);
            sb.append(b("䅶", 19157 - (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1))).intern());
            sb.append(obj.toString());
            str3 = sb.toString();
            int i = b + 113;
            c = i % 128;
            int i2 = i % 2;
        }
        if (h()) {
            int i3 = c + 89;
            b = i3 % 128;
            if (i3 % 2 == 0) {
                Log.d(a(str), str3);
                return;
            } else {
                Log.d(a(str), str3);
                throw null;
            }
        }
        if (!(!z)) {
            if (!(!d().shouldPrintLog(ISAdQualityLogLevel.DEBUG))) {
                int i4 = c + 25;
                b = i4 % 128;
                if (i4 % 2 != 0) {
                    Log.d(a(str2), str3);
                    throw null;
                }
                Log.d(a(str2), str3);
            }
        }
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static void m1024(String str, String str2) {
        int i = b + 109;
        c = i % 128;
        boolean z = i % 2 != 0;
        e(str, str, str2, null);
        if (!z) {
            int i2 = 46 / 0;
        }
        int i3 = c + 119;
        b = i3 % 128;
        int i4 = i3 % 2;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static void m1025(String str, String str2, boolean z) {
        int i = c + 101;
        b = i % 128;
        int i2 = i % 2;
        m1028(str, str, str2, z);
        int i3 = b + 53;
        c = i3 % 128;
        if (i3 % 2 != 0) {
        } else {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static void m1026(String str, String str2) {
        int i = b + 103;
        c = i % 128;
        if (!(i % 2 != 0)) {
            c(str, str, str2, false);
        } else {
            c(str, str, str2, true);
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static void m1027(String str, String str2, Object obj) {
        int i = b + 95;
        c = i % 128;
        boolean z = i % 2 != 0;
        e(str, str, str2, obj);
        if (!z) {
            int i2 = 8 / 0;
        }
        int i3 = b + 3;
        c = i3 % 128;
        int i4 = i3 % 2;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static void m1028(String str, String str2, String str3, boolean z) {
        int i = c + 69;
        b = i % 128;
        int i2 = i % 2;
        g(str, str2, str3, null, z);
        int i3 = c + 101;
        b = i3 % 128;
        int i4 = i3 % 2;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static void m1029(String str, String str2, Throwable th) {
        int i = b + 39;
        c = i % 128;
        if (i % 2 == 0) {
        }
        g(str, str, str2, th, true);
        int i2 = b + 81;
        c = i2 % 128;
        if (i2 % 2 == 0) {
            int i3 = 31 / 0;
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static void m1030(String str, String str2, Throwable th, boolean z) {
        int i = b + 45;
        c = i % 128;
        boolean z2 = i % 2 != 0;
        g(str, str, str2, th, z);
        if (!z2) {
            throw null;
        }
        int i2 = c + 71;
        b = i2 % 128;
        int i3 = i2 % 2;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1031(String str, String str2) {
        int i = b + 1;
        c = i % 128;
        char c2 = i % 2 == 0 ? '/' : ' ';
        m1032(str, str2, null);
        if (c2 != '/') {
            return;
        }
        int i2 = 56 / 0;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1032(String str, String str2, Throwable th) {
        int i = c + 31;
        b = i % 128;
        if (i % 2 != 0) {
        }
        g(str, str, str2, th, false);
    }
}
