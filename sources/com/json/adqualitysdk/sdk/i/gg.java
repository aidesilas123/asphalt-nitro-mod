package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Process;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewConfiguration;
import com.fyber.inneractive.sdk.external.InneractiveAdManager;
import com.json.adqualitysdk.sdk.i.iw;

/* JADX INFO: loaded from: classes4.dex */
public final class gg implements gd {
    private static char[] a = {'c', 'o', 'm', '.', 'f', 'y', 'b', 'e', 'r', 'i', 'n', 'a', 't', 'v', 's', 'd', 'k', 'x', 'l', 'I', 'A', 'M', 'g', '/', '7', '0', 'h', 'j', 'p', 'q', 'u', 'w', 'z', '{', '|', '}'};
    private static char b = 6;
    private static int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5664d = 1;

    private static String a(byte b2, String str, int i) {
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

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﻐ */
    public final Class mo716() {
        int i = f5664d + 83;
        c = i % 128;
        if ((i % 2 != 0 ? (char) 27 : 'O') == 'O') {
            return InneractiveAdManager.class;
        }
        throw null;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﻛ */
    public final String mo717() {
        int i = f5664d + 3;
        c = i % 128;
        int i2 = i % 2;
        String strIntern = a((byte) (View.MeasureSpec.makeMeasureSpec(0, 0) + 93), "\u0001\u0002\u0003\u0004\u0005\u0000\u0007\b\t\u0002\n\u000b\u000b\b\t\u0006\u0006\u0012\u0007\u000f\t\u0001\u000f\u0010\u000f\u0004\u000b\r\r\u0006\t\u000b\u0006\u0017\u0001\u0015ËË\b\t\u0006\u0005\u000f\u0006\u0013\r\u0015\u000e\u0017\t\u000b\u0006\u0013\nÏ", 55 - (Process.myTid() >> 22)).intern();
        int i3 = c + 45;
        f5664d = i3 % 128;
        int i4 = i3 % 2;
        return strIntern;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ｋ */
    public final iw.e mo718() {
        iw.e eVar = new iw.e(a((byte) (82 - Drawable.resolveOpacity(0, 0)), "\u0001\u0002ÀÀ\u0006\u0001\r\u0000\u000e\u0014\u0015\u000bÀÀ\b\t\u0006\u0005\u000f\u0006\u0013\r", (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)) + 22).intern(), a((byte) (32 - (ViewConfiguration.getScrollDefaultDelay() >> 16)), "\u001b\u0000P", (ViewConfiguration.getTapTimeout() >> 16) + 3).intern());
        int i = f5664d + 79;
        c = i % 128;
        int i2 = i % 2;
        return eVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾇ */
    public final az mo719() {
        bp bpVar = new bp(a((byte) (46 - Color.argb(0, 0, 0, 0)), "\n\u000b\u000b\b\t\u0006\u0006\u0012\u0007\u000f\u0093", View.MeasureSpec.getSize(0) + 11).intern());
        int i = f5664d + 13;
        c = i % 128;
        if ((i % 2 != 0 ? 'G' : '%') != 'G') {
            return bpVar;
        }
        int i2 = 3 / 0;
        return bpVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾒ */
    public final String mo720() {
        byte longPressTimeout;
        int iLastIndexOf;
        int i = f5664d + 65;
        c = i % 128;
        if ((i % 2 != 0 ? '/' : 'X') != 'X') {
            longPressTimeout = (byte) (89 % (ViewConfiguration.getLongPressTimeout() - 93));
            iLastIndexOf = 92 - TextUtils.lastIndexOf("", (char) 14, 1, 0);
        } else {
            longPressTimeout = (byte) (46 - (ViewConfiguration.getLongPressTimeout() >> 16));
            iLastIndexOf = 10 - TextUtils.lastIndexOf("", '0', 0, 0);
        }
        return a(longPressTimeout, "\n\u000b\u000b\b\t\u0006\u0006\u0012\u0007\u000f\u0093", iLastIndexOf).intern();
    }
}
