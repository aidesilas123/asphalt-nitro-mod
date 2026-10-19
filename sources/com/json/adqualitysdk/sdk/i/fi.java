package com.json.adqualitysdk.sdk.i;

import android.os.SystemClock;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes4.dex */
public final class fi extends dx {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static fi f5622e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static char[] f5623f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static char f5624g = 0;
    private static int h = 0;
    private static int i = 1;

    static {
        d();
        f5622e = new fi();
        int i2 = h + 11;
        i = i2 % 128;
        int i3 = i2 % 2;
    }

    public fi() {
        super(Cdo.m669("", -1));
    }

    private static String c(byte b, String str, int i2) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (g.f56) {
            char[] cArr2 = f5623f;
            char c = f5624g;
            char[] cArr3 = new char[i2];
            if (i2 % 2 != 0) {
                i2--;
                cArr3[i2] = (char) (cArr[i2] - b);
            }
            if (i2 > 1) {
                g.f60 = 0;
                while (true) {
                    int i3 = g.f60;
                    if (i3 >= i2) {
                        break;
                    }
                    g.f58 = cArr[i3];
                    g.f62 = cArr[g.f60 + 1];
                    if (g.f58 == g.f62) {
                        cArr3[g.f60] = (char) (g.f58 - b);
                        cArr3[g.f60 + 1] = (char) (g.f62 - b);
                    } else {
                        g.f59 = g.f58 / c;
                        g.f55 = g.f58 % c;
                        g.f61 = g.f62 / c;
                        g.f57 = g.f62 % c;
                        if (g.f55 == g.f57) {
                            g.f59 = ((g.f59 + c) - 1) % c;
                            g.f61 = ((g.f61 + c) - 1) % c;
                            int i4 = (g.f59 * c) + g.f55;
                            int i5 = (g.f61 * c) + g.f57;
                            int i6 = g.f60;
                            cArr3[i6] = cArr2[i4];
                            cArr3[i6 + 1] = cArr2[i5];
                        } else if (g.f59 == g.f61) {
                            g.f55 = ((g.f55 + c) - 1) % c;
                            g.f57 = ((g.f57 + c) - 1) % c;
                            int i7 = (g.f59 * c) + g.f55;
                            int i8 = (g.f61 * c) + g.f57;
                            int i9 = g.f60;
                            cArr3[i9] = cArr2[i7];
                            cArr3[i9 + 1] = cArr2[i8];
                        } else {
                            int i10 = (g.f59 * c) + g.f57;
                            int i11 = (g.f61 * c) + g.f55;
                            int i12 = g.f60;
                            cArr3[i12] = cArr2[i10];
                            cArr3[i12 + 1] = cArr2[i11];
                        }
                    }
                    g.f60 += 2;
                }
            }
            str2 = new String(cArr3);
        }
        return str2;
    }

    static void d() {
        f5624g = (char) 2;
        f5623f = new char[]{'n', 'u', 'l', 'o'};
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static synchronized fi m715() {
        fi fiVar;
        int i2 = h + 87;
        i = i2 % 128;
        if ((i2 % 2 == 0 ? 'V' : '\"') != '\"') {
            fiVar = f5622e;
            int i3 = 80 / 0;
        } else {
            fiVar = f5622e;
        }
        return fiVar;
    }

    public final String toString() {
        byte bLastIndexOf;
        int i2;
        int i3 = h + 53;
        i = i3 % 128;
        if (i3 % 2 != 0) {
            bLastIndexOf = (byte) (100 - TextUtils.lastIndexOf("", '0', 0, 0));
            i2 = 5 - (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1));
        } else {
            bLastIndexOf = (byte) (101 << TextUtils.lastIndexOf("", (char) 7, 0, 0));
            i2 = 2 % (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1));
        }
        String strIntern = c(bLastIndexOf, "\u0001\u0000ÑÑ", i2).intern();
        int i4 = i + 117;
        h = i4 % 128;
        int i5 = i4 % 2;
        return strIntern;
    }

    @Override // com.json.adqualitysdk.sdk.i.dx
    /* JADX INFO: renamed from: ﻛ */
    public final dp mo687(dr drVar, cj cjVar) {
        dp dpVar = new dp(null);
        int i2 = i + 15;
        h = i2 % 128;
        if ((i2 % 2 != 0 ? '%' : (char) 4) == 4) {
            return dpVar;
        }
        throw null;
    }
}
