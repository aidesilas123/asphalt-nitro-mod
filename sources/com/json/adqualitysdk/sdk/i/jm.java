package com.json.adqualitysdk.sdk.i;

import android.os.SystemClock;
import android.text.AndroidCharacter;
import android.view.ViewConfiguration;
import android.webkit.WebView;
import android.widget.ExpandableListView;
import java.io.UnsupportedEncodingException;
import java.util.regex.Matcher;

/* JADX INFO: loaded from: classes4.dex */
public final class jm {
    private static dj a = null;
    private static char[] b = {376, 390, 387, 375, 394, 408, 363, 404, 362, 399, 395, 388, 405, 400, 403, 358, 321, 392, 347, 381, 380, 367, 356, 373, 384, 354, 371, 366, 382, 368, 372, 377};
    private static int c = 289;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f5922d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f5923e = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5924f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f5925g = 1;
    private final String h;
    private final boolean i;

    public jm(String str, boolean z) {
        this.h = str;
        this.i = z;
    }

    private String a() {
        String strReplaceAll;
        int i = f5924f + 55;
        f5925g = i % 128;
        int i2 = i % 2;
        String strReplaceAll2 = a.m655().replaceAll(c(null, null, (SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)) + 126, "\u009d\u0094\u009d\u0094\u0090\u009c\u009a\u0096\u0099\u009b\u009a\u0084\u0099\u0098\u0097\u0090\u0087\u0096\u0089\u0095\u0094\u0095\u0094").intern(), Matcher.quoteReplacement(b())).replaceAll(c(null, null, 127 - ExpandableListView.getPackedPositionGroup(0L), "\u009d\u0094\u009d\u0094\u009f\u0087\u0099\u0096\u009e\u009c\u009c\u009e\u0097\u0095\u0094\u0095\u0094").intern(), Matcher.quoteReplacement(a.m658()));
        if (!(this.i)) {
            strReplaceAll = strReplaceAll2.replaceAll(c(null, null, (ViewConfiguration.getWindowTouchSlop() >> 8) + 127, "\u009d\u0094\u009d\u0094\u009f\u0087\u0099\u009a\u009b\u0098 \u0090\u0095\u0094\u0095\u0094").intern(), "");
            int i3 = f5925g + 123;
            f5924f = i3 % 128;
            int i4 = i3 % 2;
        } else {
            strReplaceAll = strReplaceAll2.replaceAll(c(null, null, 127 - ExpandableListView.getPackedPositionGroup(0L), "\u009d\u0094\u009d\u0094\u009f\u0087\u0099\u009a\u009b\u0098 \u0090\u0095\u0094\u0095\u0094").intern(), Matcher.quoteReplacement(a.m659()));
        }
        return strReplaceAll.replaceAll(c(null, null, (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)) + 126, "\u009d\u0094\u009d\u0094\u009f\u0087\u0099\u009b\u009e\u0098\u0097\u0090\u0096\u0096\u009e\u0097\u0095\u0094\u0095\u0094").intern(), Matcher.quoteReplacement(this.h));
    }

    private static String b() {
        int i = f5925g + 39;
        f5924f = i % 128;
        int i2 = i % 2;
        String strM343 = ao.m303().mo315().m343();
        int i3 = f5925g + 121;
        f5924f = i3 % 128;
        if ((i3 % 2 != 0 ? 'F' : '^') != 'F') {
            return strM343;
        }
        int i4 = 79 / 0;
        return strM343;
    }

    private static String c(int[] iArr, String str, int i, String str2) throws UnsupportedEncodingException {
        Object bytes = str2;
        if (str2 != null) {
            bytes = str2.getBytes("ISO-8859-1");
        }
        byte[] bArr = (byte[]) bytes;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (k.f131) {
            char[] cArr2 = b;
            int i2 = c;
            if (f5923e) {
                int length = bArr.length;
                k.f129 = length;
                char[] cArr3 = new char[length];
                k.f130 = 0;
                while (k.f130 < k.f129) {
                    int i3 = k.f130;
                    int i4 = k.f129 - 1;
                    int i5 = k.f130;
                    cArr3[i3] = (char) (cArr2[bArr[i4 - i5] + i] - i2);
                    k.f130 = i5 + 1;
                }
                return new String(cArr3);
            }
            if (f5922d) {
                int length2 = cArr.length;
                k.f129 = length2;
                char[] cArr4 = new char[length2];
                k.f130 = 0;
                while (k.f130 < k.f129) {
                    int i6 = k.f130;
                    int i7 = k.f129 - 1;
                    int i8 = k.f130;
                    cArr4[i6] = (char) (cArr2[cArr[i7 - i8] - i] - i2);
                    k.f130 = i8 + 1;
                }
                return new String(cArr4);
            }
            int length3 = iArr.length;
            k.f129 = length3;
            char[] cArr5 = new char[length3];
            k.f130 = 0;
            while (k.f130 < k.f129) {
                int i9 = k.f130;
                int i10 = k.f129 - 1;
                int i11 = k.f130;
                cArr5[i9] = (char) (cArr2[iArr[i10 - i11] - i] - i2);
                k.f130 = i11 + 1;
            }
            return new String(cArr5);
        }
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static void m917(dj djVar) {
        int i = f5925g + 39;
        f5924f = i % 128;
        char c2 = i % 2 != 0 ? (char) 11 : 'Q';
        a = djVar;
        if (c2 == 'Q') {
        } else {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m918(WebView webView) {
        int i = f5925g + 81;
        f5924f = i % 128;
        try {
            if ((i % 2 != 0 ? (char) 23 : (char) 6) == 23) {
                kb.m1014(webView, a());
                throw null;
            }
            kb.m1014(webView, a());
            int i2 = f5925g + 49;
            f5924f = i2 % 128;
            if (i2 % 2 != 0) {
                throw null;
            }
        } catch (Exception e2) {
            String strIntern = c(null, null, AndroidCharacter.getMirror('0') + 'O', "\u008f\u008e\u008d\u008c\u0082\u008b\u008a\u0089\u0088\u0087\u0086\u0082\u0085\u0084\u0083\u0082\u0081").intern();
            StringBuilder sb = new StringBuilder();
            sb.append(c(null, null, (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)) + 126, "\u0091\u0093\u0086\u0082\u0085\u0084\u0083\u0082\u0086\u0091\u008e\u008d\u0091\u0088\u008b\u0091\u0092\u008a\u0085\u008d\u008c\u0082\u008b\u008a\u0085\u0091\u008f\u008e\u008f\u008f\u0090").intern());
            sb.append(e2.getLocalizedMessage());
            m.m1031(strIntern, sb.toString());
        }
    }
}
