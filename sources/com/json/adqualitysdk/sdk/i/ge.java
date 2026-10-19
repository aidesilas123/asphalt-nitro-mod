package com.json.adqualitysdk.sdk.i;

import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.hyprmx.android.sdk.placement.PlacementType;
import com.json.adqualitysdk.sdk.i.iw;

/* JADX INFO: loaded from: classes4.dex */
public final class ge implements gd {
    private static char[] a = {'c', 'o', 'm', '.', 'h', 'y', 'p', 'r', 'x', 'a', 'n', 'd', 'i', 's', 'k', 'l', 'e', 't', 'P', 'T', '/', '7', '0', 'f', 'g'};
    private static char b = 5;
    private static int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5662d = 1;

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
        int i = c + 19;
        f5662d = i % 128;
        if (i % 2 == 0) {
            throw null;
        }
        return PlacementType.class;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﻛ */
    public final String mo717() {
        int i = f5662d + 11;
        c = i % 128;
        int i2 = i % 2;
        String strIntern = a((byte) ((SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)) + 12), "\u0001\u0002\u0003\u0004\u0000\t\u0007\b\u0003\u0007\u0004\b\u000b\f\u0006\u0002\r\f\b\u0012\f\n\u0001\b\u0013\u0005\u0001\u000f\u0001\u0011\f\u000f\b\u0017\u0013\u0005\u0001\u000f\u0001\u0011\f\u000f\u000f\t\u000b\u0015", View.MeasureSpec.getMode(0) + 46).intern();
        int i3 = c + 89;
        f5662d = i3 % 128;
        int i4 = i3 % 2;
        return strIntern;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ｋ */
    public final iw.e mo718() {
        iw.e eVar = new iw.e(a((byte) (126 - TextUtils.getOffsetBefore("", 0)), "\u0001\u0002ìì\u000f\u0001\u0010\u0002\b\f\u0018\u0000\u0006\u0007\f\u0007ö", Process.getGidForName("") + 18).intern(), a((byte) (KeyEvent.getDeadChar(0, 0) + 105), "\u0017\u0001\u0099", KeyEvent.getDeadChar(0, 0) + 3).intern());
        int i = c + 95;
        f5662d = i % 128;
        int i2 = i % 2;
        return eVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾇ */
    public final az mo719() {
        br brVar = new br(a((byte) (52 - TextUtils.indexOf("", "", 0, 0)), "\u0000\t\u0007\b\u0003\u0007", (ViewConfiguration.getDoubleTapTimeout() >> 16) + 6).intern());
        int i = f5662d + 101;
        c = i % 128;
        int i2 = i % 2;
        return brVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾒ */
    public final String mo720() {
        int i = c + 75;
        f5662d = i % 128;
        int i2 = i % 2;
        String strIntern = a((byte) (KeyEvent.getDeadChar(0, 0) + 52), "\u0000\t\u0007\b\u0003\u0007", 5 - TextUtils.lastIndexOf("", '0', 0)).intern();
        int i3 = c + 55;
        f5662d = i3 % 128;
        int i4 = i3 % 2;
        return strIntern;
    }
}
