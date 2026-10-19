package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.graphics.ImageFormat;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.json.b4;

/* JADX INFO: loaded from: classes4.dex */
public final class am {
    private static char[] a = null;
    private static char b = 0;
    private static int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5211d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f5212e = b((byte) (41 - MotionEvent.axisFromString("")), "\u0001\u0002\u0002\u0003\u0004\u0005YY\u0000\u0007\b\u0007\b\u000e\u0007\u0003\t\u0004\u0099\u0099\u0006\u000b\u0006\r", (ViewConfiguration.getMinimumFlingVelocity() >> 16) + 24).intern();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f5213f = b((byte) (49 - KeyEvent.normalizeMetaState(0)), "\u0001\u0002\u0002\u0003\u0004\u0005``\u000f\u0000\u0000\t\u0002\u0004\t\u0004  \u0006\u000b\u0006\r", 22 - TextUtils.getCapsMode("", 0, 0)).intern();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f5214g = b((byte) ((TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)) + 123), "\u0003\u0007\r\u000e\b\f\r\u000e\u0010\t\u0010\u0011\u000b\u0010Ý", (ViewConfiguration.getPressedStateDuration() >> 16) + 15).intern();

    static {
        a();
        b((byte) (24 - ImageFormat.getBitsPerPixel(0)), "\u0017\f\u0012\r\u000e\u0017\t\u0014\u0017\u0012\u0019\u001a\u001b\u001cE", 15 - (ViewConfiguration.getScrollDefaultDelay() >> 16)).intern();
        int i = c + 5;
        f5211d = i % 128;
        if (i % 2 != 0) {
        } else {
            throw null;
        }
    }

    static void a() {
        b = (char) 6;
        a = new char[]{'h', 't', 'p', 's', ':', '/', 'e', 'l', 'o', 'r', '.', 'm', 'a', 'c', 'b', 'k', 'v', 'd', '1', 'E', 'C', 'w', b4.R, 'O', 'R', '7', 'D', '!', ',', 'i', 'j', 'n', 'q', 'u', 'x', 'y'};
    }

    private static String b(byte b2, String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (g.f56) {
            char[] cArr2 = a;
            char c2 = b;
            char[] cArr3 = new char[i];
            if (i % 2 != 0) {
                i--;
                cArr3[i] = (char) (cArr[i] - b2);
            }
            if (i > 1) {
                g.f60 = 0;
                while (true) {
                    int i2 = g.f60;
                    if (i2 >= i) {
                        break;
                    }
                    g.f58 = cArr[i2];
                    g.f62 = cArr[g.f60 + 1];
                    if (g.f58 == g.f62) {
                        cArr3[g.f60] = (char) (g.f58 - b2);
                        cArr3[g.f60 + 1] = (char) (g.f62 - b2);
                    } else {
                        g.f59 = g.f58 / c2;
                        g.f55 = g.f58 % c2;
                        g.f61 = g.f62 / c2;
                        g.f57 = g.f62 % c2;
                        if (g.f55 == g.f57) {
                            g.f59 = ((g.f59 + c2) - 1) % c2;
                            g.f61 = ((g.f61 + c2) - 1) % c2;
                            int i3 = (g.f59 * c2) + g.f55;
                            int i4 = (g.f61 * c2) + g.f57;
                            int i5 = g.f60;
                            cArr3[i5] = cArr2[i3];
                            cArr3[i5 + 1] = cArr2[i4];
                        } else if (g.f59 == g.f61) {
                            g.f55 = ((g.f55 + c2) - 1) % c2;
                            g.f57 = ((g.f57 + c2) - 1) % c2;
                            int i6 = (g.f59 * c2) + g.f55;
                            int i7 = (g.f61 * c2) + g.f57;
                            int i8 = g.f60;
                            cArr3[i8] = cArr2[i6];
                            cArr3[i8 + 1] = cArr2[i7];
                        } else {
                            int i9 = (g.f59 * c2) + g.f57;
                            int i10 = (g.f61 * c2) + g.f55;
                            int i11 = g.f60;
                            cArr3[i11] = cArr2[i9];
                            cArr3[i11 + 1] = cArr2[i10];
                        }
                    }
                    g.f60 += 2;
                }
            }
            str2 = new String(cArr3);
        }
        return str2;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final String m298(String str) {
        StringBuilder sb = new StringBuilder();
        String str2 = this.f5212e;
        if (str2 != null) {
            int i = f5211d + 11;
            c = i % 128;
            int i2 = i % 2;
        } else {
            str2 = "";
        }
        sb.append(str2);
        sb.append(b((byte) (View.MeasureSpec.getMode(0) + 40), "W", 1 - Color.red(0)).intern());
        if ((str != null ? '(' : (char) 11) != '(') {
            str = "";
        } else {
            int i3 = f5211d + 49;
            c = i3 % 128;
            if ((i3 % 2 != 0 ? '\"' : ':') == '\"') {
                throw null;
            }
        }
        sb.append(str);
        return sb.toString();
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final String m299() {
        int i = f5211d;
        int i2 = i + 43;
        c = i2 % 128;
        if (!(i2 % 2 == 0)) {
            throw null;
        }
        String str = this.f5213f;
        int i3 = i + 97;
        c = i3 % 128;
        int i4 = i3 % 2;
        return str;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final String m300() {
        int i = c;
        int i2 = i + 53;
        f5211d = i2 % 128;
        int i3 = i2 % 2;
        String str = this.f5212e;
        int i4 = i + 121;
        f5211d = i4 % 128;
        if (!(i4 % 2 == 0)) {
            return str;
        }
        int i5 = 14 / 0;
        return str;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String m301() {
        int i = c + 45;
        int i2 = i % 128;
        f5211d = i2;
        if (i % 2 == 0) {
            throw null;
        }
        String str = this.f5214g;
        int i3 = i2 + 9;
        c = i3 % 128;
        if ((i3 % 2 != 0 ? '\'' : '\t') != '\'') {
            return str;
        }
        throw null;
    }
}
