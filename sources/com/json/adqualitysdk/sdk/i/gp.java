package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.media.AudioTrack;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.json.adqualitysdk.sdk.i.iw;
import net.pubnative.lite.sdk.HyBid;

/* JADX INFO: loaded from: classes4.dex */
public final class gp implements gd {
    private static int a = 95;
    private static int b = 0;
    private static int c = 1;

    private static String a(int i, boolean z, int i2, int i3, String str) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (c.f35) {
            char[] cArr2 = new char[i3];
            c.f36 = 0;
            while (true) {
                int i4 = c.f36;
                if (i4 >= i3) {
                    break;
                }
                c.f37 = cArr[i4];
                cArr2[c.f36] = (char) (c.f37 + i);
                int i5 = c.f36;
                cArr2[i5] = (char) (cArr2[i5] - a);
                c.f36 = i5 + 1;
            }
            if (i2 > 0) {
                c.f38 = i2;
                char[] cArr3 = new char[i3];
                System.arraycopy(cArr2, 0, cArr3, 0, i3);
                int i6 = c.f38;
                System.arraycopy(cArr3, 0, cArr2, i3 - i6, i6);
                int i7 = c.f38;
                System.arraycopy(cArr3, i7, cArr2, 0, i3 - i7);
            }
            if (z) {
                char[] cArr4 = new char[i3];
                c.f36 = 0;
                while (true) {
                    int i8 = c.f36;
                    if (i8 >= i3) {
                        break;
                    }
                    cArr4[i8] = cArr2[(i3 - i8) - 1];
                    c.f36 = i8 + 1;
                }
                cArr2 = cArr4;
            }
            str2 = new String(cArr2);
        }
        return str2;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﻐ */
    public final Class mo716() {
        int i = c + 49;
        b = i % 128;
        if ((i % 2 != 0 ? (char) 17 : (char) 20) != 17) {
            return HyBid.class;
        }
        throw null;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﻛ */
    public final String mo717() {
        int i = b + 75;
        c = i % 128;
        int i2 = i % 2;
        String strIntern = a(191 - Color.alpha(0), false, TextUtils.indexOf("", "", 0, 0) + 10, (ViewConfiguration.getTapTimeout() >> 16) + 28, "ￎ\u0013\u0004\u000bￎ￨\u0019￢\t\u0004\u000e\u0005\u0014ￎ\u0010\u0015\u0002\u000e\u0001\u0014\t\u0016\u0005ￎ\f\t\u0014\u0005").intern();
        int i3 = b + 97;
        c = i3 % 128;
        int i4 = i3 % 2;
        return strIntern;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ｋ */
    public final iw.e mo718() {
        iw.e eVar = new iw.e(a(Process.getGidForName("") + 201, false, (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)) + 4, 20 - View.MeasureSpec.getMode(0), "\ufff8\u000b\u0000\r￼\ufffa\u0006\u0005\u0005￼\ufffa\u000b\u0006\t\nￆ\u0007\f\ufff9\u0005").intern(), a(View.resolveSizeAndState(0, 0, 0) + 144, true, 1 - ((Process.getThreadPriority(0) + 20) >> 6), (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)) + 2, "\u0006\uffff�").intern());
        int i = b + 81;
        c = i % 128;
        int i2 = i % 2;
        return eVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾇ */
    public final az mo719() {
        bt btVar = new bt(a(TextUtils.indexOf((CharSequence) "", '0', 0, 0) + 204, true, TextUtils.getCapsMode("", 0, 0) + 7, Color.rgb(0, 0, 0) + 16777225, "�\b\ufff5\u0002\ufff6\t\u0004\ufff9\n").intern());
        int i = c + 45;
        b = i % 128;
        if ((i % 2 != 0 ? (char) 26 : (char) 28) == 28) {
            return btVar;
        }
        throw null;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾒ */
    public final String mo720() {
        int i = b + 11;
        c = i % 128;
        String strIntern = (i % 2 != 0 ? a((AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)) + 203, true, 6 - TextUtils.lastIndexOf("", '0', 0, 0), 9 - KeyEvent.getDeadChar(0, 0), "�\b\ufff5\u0002\ufff6\t\u0004\ufff9\n") : a((AudioTrack.getMinVolume() > 2.0f ? 1 : (AudioTrack.getMinVolume() == 2.0f ? 0 : -1)) + 522, false, TextUtils.lastIndexOf("", 'd', 0, 0) + 90, 111 - KeyEvent.getDeadChar(1, 1), "�\b\ufff5\u0002\ufff6\t\u0004\ufff9\n")).intern();
        int i2 = b + 51;
        c = i2 % 128;
        if ((i2 % 2 == 0 ? 'C' : '!') == '!') {
            return strIntern;
        }
        int i3 = 18 / 0;
        return strIntern;
    }
}
