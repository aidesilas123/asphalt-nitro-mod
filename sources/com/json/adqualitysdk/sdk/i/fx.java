package com.json.adqualitysdk.sdk.i;

import android.media.AudioTrack;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.json.adqualitysdk.sdk.IronSourceAdQuality;
import com.json.adqualitysdk.sdk.i.iw;

/* JADX INFO: loaded from: classes4.dex */
public final class fx implements gd {
    private static long a = 0;
    private static int b = 0;
    private static char c = 14458;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5647d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f5648e = 1;

    private static String a(String str, String str2, int i, char c2, String str3) {
        String str4;
        Object charArray = str3;
        if (str3 != null) {
            charArray = str3.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        Object charArray2 = str2;
        if (str2 != null) {
            charArray2 = str2.toCharArray();
        }
        char[] cArr2 = (char[]) charArray2;
        Object charArray3 = str;
        if (str != null) {
            charArray3 = str.toCharArray();
        }
        char[] cArr3 = (char[]) charArray3;
        synchronized (j.f124) {
            char[] cArr4 = (char[]) cArr3.clone();
            char[] cArr5 = (char[]) cArr2.clone();
            cArr4[0] = (char) (c2 ^ cArr4[0]);
            cArr5[2] = (char) (cArr5[2] + ((char) i));
            int length = cArr.length;
            char[] cArr6 = new char[length];
            j.f125 = 0;
            while (true) {
                int i2 = j.f125;
                if (i2 < length) {
                    int i3 = (i2 + 2) % 4;
                    int i4 = (i2 + 3) % 4;
                    char c3 = (char) (((cArr4[i2 % 4] * 32718) + cArr5[i3]) % 65535);
                    j.f126 = c3;
                    cArr5[i4] = (char) (((cArr4[i4] * 32718) + cArr5[i3]) / 65535);
                    cArr4[i4] = c3;
                    int i5 = j.f125;
                    cArr6[i5] = (char) (((((long) (cArr[i5] ^ cArr4[i4])) ^ a) ^ ((long) b)) ^ ((long) c));
                    j.f125 = i5 + 1;
                } else {
                    str4 = new String(cArr6);
                }
            }
        }
        return str4;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﻐ */
    public final Class mo716() {
        int i = f5647d + 29;
        int i2 = i % 128;
        f5648e = i2;
        int i3 = i % 2;
        int i4 = i2 + 73;
        f5647d = i4 % 128;
        if (!(i4 % 2 != 0)) {
            return IronSourceAdQuality.class;
        }
        int i5 = 96 / 0;
        return IronSourceAdQuality.class;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﻛ */
    public final String mo717() {
        int i = f5648e + 89;
        f5647d = i % 128;
        String strIntern = (!(i % 2 != 0) ? a("傧悞㏵妌", "\u0000\u0000\u0000\u0000", (-178217393) - ((byte) KeyEvent.getModifierMetaStateMask()), (char) (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)), "뷯䘀ꑍ煅Û㽔꘏歌耧눦\ude18觭좽晋杁틡⎞궊螜\ue629㓗몺毃偓錮樴ⶾꧾ棭鰉욘廹㘕䢻콶画킹褮⦴뭴ꐲ빰폜湵טּ\u0890㕇բ籎\uf418๏") : a("傧悞㏵妌", "\u0000\u0000\u0000\u0000", (-178217393) >> ((byte) KeyEvent.getModifierMetaStateMask()), (char) (AudioTrack.getMinVolume() > 2.0f ? 1 : (AudioTrack.getMinVolume() == 2.0f ? 0 : -1)), "뷯䘀ꑍ煅Û㽔꘏歌耧눦\ude18觭좽晋杁틡⎞궊螜\ue629㓗몺毃偓錮樴ⶾꧾ棭鰉욘廹㘕䢻콶画킹褮⦴뭴ꐲ빰폜湵טּ\u0890㕇բ籎\uf418๏")).intern();
        int i2 = f5647d + 101;
        f5648e = i2 % 128;
        if ((i2 % 2 == 0 ? (char) 21 : 'L') == 'L') {
            return strIntern;
        }
        int i3 = 42 / 0;
        return strIntern;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ｋ */
    public final iw.e mo718() {
        iw.e eVar = new iw.e(a("\uf82f候掂鷞", "\u0000\u0000\u0000\u0000", ViewConfiguration.getEdgeSlop() >> 16, (char) (56930 - ((byte) KeyEvent.getModifierMetaStateMask())), "ꁟ槾\ued73蹂\ue2b3끨\udf2eᨋ䄜葆錟ㇵᾃ▉䩳ᒺ桚좦햞試㌓\u0082䆙椙儲뻎").intern(), a("浥鄖뙡\uf69e", "\u0000\u0000\u0000\u0000", View.getDefaultSize(0, 0) + 1636898413, (char) ((ViewConfiguration.getLongPressTimeout() >> 16) + 40630), "䢼唖趟").intern());
        int i = f5647d + 13;
        f5648e = i % 128;
        if (i % 2 != 0) {
            return eVar;
        }
        throw null;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾇ */
    public final az mo719() {
        bf bfVar = new bf(a("\udcfd\ue61f\ue640υ", "\u0000\u0000\u0000\u0000", 1088823259 - MotionEvent.axisFromString(""), (char) (50662 - (ViewConfiguration.getFadingEdgeLength() >> 16)), "ﴅ㪨뻰浿퓚\uf0d0䐲쏭怴춱឵靟쉵䴩껺").intern());
        int i = f5647d + 109;
        f5648e = i % 128;
        if ((i % 2 == 0 ? '3' : (char) 14) != '3') {
            return bfVar;
        }
        int i2 = 48 / 0;
        return bfVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾒ */
    public final String mo720() {
        int i = f5647d + 13;
        f5648e = i % 128;
        int i2 = i % 2;
        String strIntern = a("\udcfd\ue61f\ue640υ", "\u0000\u0000\u0000\u0000", View.resolveSize(0, 0) + 1088823260, (char) (50662 - TextUtils.getCapsMode("", 0, 0)), "ﴅ㪨뻰浿퓚\uf0d0䐲쏭怴춱឵靟쉵䴩껺").intern();
        int i3 = f5647d + 75;
        f5648e = i3 % 128;
        int i4 = i3 % 2;
        return strIntern;
    }
}
