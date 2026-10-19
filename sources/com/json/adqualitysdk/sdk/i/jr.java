package com.json.adqualitysdk.sdk.i;

import android.graphics.ImageFormat;
import android.media.AudioTrack;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes4.dex */
public final class jr {
    private static long a = 0;
    private static int b = 0;
    private static char c = 65272;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5936d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f5937e = 1;

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

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static String m943(String str) {
        try {
            Mac mac = Mac.getInstance("HmacSHA1");
            mac.init(new SecretKeySpec(a("㙿낚桤젵", "\u0000\u0000\u0000\u0000", (-1) - ImageFormat.getBitsPerPixel(0), (char) TextUtils.indexOf("", "", 0), "ࣞ삻ᕚ䶍쮭ᶍଊ凣駿橦砓ﲒ\uf417堄駷휍㭀氩벱賚툃禎丼í爛誥瀅\ue562炀촖꣧뇠沂\ue821").intern().getBytes(a("樺읋鵁胗", "\u0000\u0000\u0000\u0000", View.resolveSizeAndState(0, 0, 0) + 1103580010, (char) ((ViewConfiguration.getScrollBarFadeDuration() >> 16) + 55197), "\ue1d6즇裁㏥\udd67").intern()), mac.getAlgorithm()));
            String strM824 = ia.m824(mac.doFinal(str.replaceAll(a("痹\uef6f暫态", "\u0000\u0000\u0000\u0000", (-1410371723) - (ViewConfiguration.getKeyRepeatTimeout() >> 16), (char) ((ViewConfiguration.getLongPressTimeout() >> 16) + 358), "鱸").intern(), "").replaceAll(a("岠蟧ᡸ닢", "\u0000\u0000\u0000\u0000", 2022172508 - TextUtils.getOffsetBefore("", 0), (char) (MotionEvent.axisFromString("") + 57881), "\uf856").intern(), "").getBytes(a("樺읋鵁胗", "\u0000\u0000\u0000\u0000", (ViewConfiguration.getEdgeSlop() >> 16) + 1103580010, (char) (55198 - (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1))), "\ue1d6즇裁㏥\udd67").intern())));
            int i = f5937e + 19;
            f5936d = i % 128;
            if ((i % 2 != 0 ? ',' : 'b') != ',') {
                return strM824;
            }
            int i2 = 31 / 0;
            return strM824;
        } catch (Exception e2) {
            String strIntern = a("प학\uea05誰", "\u0000\u0000\u0000\u0000", (ViewConfiguration.getTouchSlop() >> 8) + 97868041, (char) (TextUtils.indexOf((CharSequence) "", '0', 0) + 1), "淑竓뫢\u175a∣\uf0c9\uf3c8舞쳖").intern();
            StringBuilder sb = new StringBuilder();
            sb.append(a("넫⯓\ue201ӡ", "\u0000\u0000\u0000\u0000", (ViewConfiguration.getMaximumFlingVelocity() >> 16) + 19649457, (char) ((-1) - TextUtils.lastIndexOf("", '0', 0, 0)), "\uef02\uf791\udb9c\ud9f8킐⏑ᩔ").intern());
            sb.append(e2.getLocalizedMessage());
            m.m1031(strIntern, sb.toString());
            return null;
        }
    }
}
