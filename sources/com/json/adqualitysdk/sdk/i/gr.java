package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.graphics.ImageFormat;
import android.media.AudioTrack;
import android.os.Process;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.ViewConfiguration;
import com.applovin.exoplayer2.common.base.Ascii;
import com.json.adqualitysdk.sdk.i.iw;
import com.tapjoy.Tapjoy;

/* JADX INFO: loaded from: classes4.dex */
public final class gr implements gd {
    private static char[] a = {'c', 'o', 'm', '.', 't', 'a', 'p', 'j', 'y', 'T', 'n', 'e', 'r', 's', '/', '7', '0', 'd', 'f', 'g', 'h', 'i', 'k', 'l', 'q'};
    private static char b = 5;
    private static int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5682d = 1;

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
        int i = f5682d;
        int i2 = i + 97;
        c = i2 % 128;
        int i3 = i2 % 2;
        int i4 = i + 107;
        c = i4 % 128;
        int i5 = i4 % 2;
        return Tapjoy.class;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﻛ */
    public final String mo717() {
        int i = f5682d + 17;
        c = i % 128;
        int i2 = i % 2;
        String strIntern = a((byte) (TextUtils.getOffsetAfter("", 0) + 123), "\u0001\u0002\u0003\u0004\u0000\t\u0007\b\u0003\u0006\u0004\b\u0006\u0007\u0006\u0002ô", Color.argb(0, 0, 0, 0) + 17).intern();
        int i3 = f5682d + 59;
        c = i3 % 128;
        int i4 = i3 % 2;
        return strIntern;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ｋ */
    public final iw.e mo718() {
        iw.e eVar = new iw.e(a((byte) ((AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)) + 122), "\u0001\u0002éé\n\u0001\u0000\u0002\r\u000e\u0013\t\u0006\u0007\u0006\u0002ô", ((byte) KeyEvent.getModifierMetaStateMask()) + Ascii.DC2).intern(), a((byte) ((ViewConfiguration.getTouchSlop() >> 8) + 19), "\u0012\u0000C", ImageFormat.getBitsPerPixel(0) + 4).intern());
        int i = c + 109;
        f5682d = i % 128;
        if (i % 2 == 0) {
            throw null;
        }
        return eVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾇ */
    public final az mo719() {
        bz bzVar = new bz(a((byte) (13 - (ViewConfiguration.getScrollBarFadeDuration() >> 16)), "\u0000\t\u0007\b\u0003\u0006", (Process.myPid() >> 22) + 6).intern());
        int i = f5682d + 59;
        c = i % 128;
        if ((i % 2 != 0 ? '(' : '2') == '2') {
            return bzVar;
        }
        int i2 = 24 / 0;
        return bzVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾒ */
    public final String mo720() {
        int i = c + 109;
        f5682d = i % 128;
        return (!(i % 2 != 0) ? a((byte) (2 >> Color.alpha(0)), "\u0000\t\u0007\b\u0003\u0006", 1 - (ViewConfiguration.getScrollBarFadeDuration() % 77)) : a((byte) (13 - Color.alpha(0)), "\u0000\t\u0007\b\u0003\u0006", (ViewConfiguration.getScrollBarFadeDuration() >> 16) + 6)).intern();
    }
}
