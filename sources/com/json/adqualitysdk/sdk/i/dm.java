package com.json.adqualitysdk.sdk.i;

import android.graphics.PointF;
import android.media.AudioTrack;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public final class dm {
    private static final Pattern a;
    private static final Pattern b;
    private static final Pattern c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Pattern f5549d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Pattern f5550e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Pattern f5551f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Pattern f5552g;
    private static final Pattern h;
    private static final List<String> i;
    private static int j = 0;
    private static int k = 0;
    private static int l = 0;
    private static byte[] m = null;
    private static short[] n = null;
    private static long o = 0;
    private static int p = 0;
    private static char q = 0;
    private static int r = 0;
    private static int s = 1;

    static {
        c();
        a = Pattern.compile(a(TextUtils.lastIndexOf("", '0', 0, 0) - 46, (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)) + 534978838, (byte) (ViewConfiguration.getWindowTouchSlop() >> 8), (short) (59 - (ViewConfiguration.getKeyRepeatTimeout() >> 16)), (-471894307) - (KeyEvent.getMaxKeyCode() >> 16)).intern());
        b = Pattern.compile(d("짳㕈첞뺁", "\u0000\u0000\u0000\u0000", ViewConfiguration.getTapTimeout() >> 16, (char) (33228 - (ViewConfiguration.getFadingEdgeLength() >> 16)), "\ue9cb翑ﴢ㐣ዐ꭪ﵤ䕫泷퉩\ue20b喪옇Áꓨ꤇").intern());
        c = Pattern.compile(d("넧\uf8f6䙵\udb27", "\u0000\u0000\u0000\u0000", 1 - (SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)), (char) ((AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)) + 10054), "ȩ⟙䔘綼譎뾳ꄛꤛ鉝虿랆硜Ὕʓ쐨\uec17").intern());
        f5549d = Pattern.compile(a(TextUtils.getOffsetAfter("", 0) - 57, 534978837 - (ViewConfiguration.getDoubleTapTimeout() >> 16), (byte) (Process.myTid() >> 22), (short) (((Process.getThreadPriority(0) + 20) >> 6) + 30), (ViewConfiguration.getTouchSlop() >> 8) - 471894283).intern());
        f5550e = Pattern.compile(d("꞊炈학Ꙉ", "\u0000\u0000\u0000\u0000", 1500547239 - (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)), (char) (ViewConfiguration.getMaximumFlingVelocity() >> 16), "䵐ﺯﲣ\u0cd8ᵻ幺\udbe0").intern());
        f5551f = Pattern.compile(a((-40) - Process.getGidForName(""), View.resolveSizeAndState(0, 0, 0) + 534978837, (byte) ExpandableListView.getPackedPositionType(0L), (short) (56 - (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1))), (-471894269) - (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1))).intern());
        f5552g = Pattern.compile(d("⋆\ue11f黶玅", "\u0000\u0000\u0000\u0000", (Process.myPid() >> 22) - 153018590, (char) (View.MeasureSpec.makeMeasureSpec(0, 0) + 34206), "굵屲\uf8ab").intern());
        h = Pattern.compile(a((-68) - TextUtils.indexOf((CharSequence) "", '0'), 534978837 - View.combineMeasuredStates(0, 0), (byte) ((SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)) - 1), (short) (TextUtils.lastIndexOf("", '0', 0) - 25), (ViewConfiguration.getKeyRepeatDelay() >> 16) - 471894237).intern());
        i = Arrays.asList(a((-71) - TextUtils.lastIndexOf("", '0', 0, 0), 534978849 - (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)), (byte) KeyEvent.getDeadChar(0, 0), (short) ((ViewConfiguration.getScrollBarFadeDuration() >> 16) - 56), (-471894233) - (ViewConfiguration.getWindowTouchSlop() >> 8)).intern(), d("仱瘓\uee52覎", "\u0000\u0000\u0000\u0000", TextUtils.getOffsetBefore("", 0), (char) (36589 - TextUtils.lastIndexOf("", '0', 0)), "㟯臒Ⓞ들").intern(), d("\ue137\uea8f챊쪐", "\u0000\u0000\u0000\u0000", 1 - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)), (char) ((ViewConfiguration.getScrollBarFadeDuration() >> 16) + 37068), "ᯙ\ue46f홊䐸").intern(), a((-65) - (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)), (ViewConfiguration.getScrollDefaultDelay() >> 16) + 534978857, (byte) (ViewConfiguration.getMinimumFlingVelocity() >> 16), (short) ((-11) - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1))), (-471894232) - TextUtils.indexOf("", "", 0)).intern(), a((ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)) - 68, (KeyEvent.getMaxKeyCode() >> 16) + 534978858, (byte) ((ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)) - 1), (short) ((-14) - TextUtils.getCapsMode("", 0, 0)), (-471894227) - (Process.myTid() >> 22)).intern(), d("⩲팚ꍨ刈", "\u0000\u0000\u0000\u0000", 1758665257 - TextUtils.lastIndexOf("", '0'), (char) (2211 - (ViewConfiguration.getWindowTouchSlop() >> 8)), "낛㥠ᚊ").intern(), a((KeyEvent.getMaxKeyCode() >> 16) - 67, 534978843 - (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)), (byte) (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)), (short) ((-9) - (ViewConfiguration.getPressedStateDuration() >> 16)), (-471894222) - (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1))).intern());
        int i2 = r + 95;
        s = i2 % 128;
        if ((i2 % 2 == 0 ? (char) 28 : '1') == '1') {
        } else {
            throw null;
        }
    }

    private static String a(int i2, int i3, byte b2, short s2, int i4) {
        String string;
        synchronized (n.f132) {
            StringBuilder sb = new StringBuilder();
            int i5 = k;
            int i6 = i2 + i5;
            boolean z = i6 == -1;
            if (z) {
                byte[] bArr = m;
                i6 = bArr != null ? (byte) (bArr[j + i4] + i5) : (short) (n[j + i4] + i5);
            }
            if (i6 > 0) {
                n.f136 = ((i4 + i6) - 2) + j + (z ? 1 : 0);
                n.f135 = b2;
                char c2 = (char) (i3 + l);
                n.f133 = c2;
                sb.append(c2);
                n.f134 = n.f133;
                n.f137 = 1;
                while (n.f137 < i6) {
                    byte[] bArr2 = m;
                    if (bArr2 != null) {
                        int i7 = n.f136;
                        n.f136 = i7 - 1;
                        n.f133 = (char) (n.f134 + (((byte) (bArr2[i7] + s2)) ^ n.f135));
                    } else {
                        short[] sArr = n;
                        int i8 = n.f136;
                        n.f136 = i8 - 1;
                        n.f133 = (char) (n.f134 + (((short) (sArr[i8] + s2)) ^ n.f135));
                    }
                    sb.append(n.f133);
                    n.f134 = n.f133;
                    n.f137++;
                }
            }
            string = sb.toString();
        }
        return string;
    }

    private static String b(String str) {
        int i2 = r + 61;
        s = i2 % 128;
        int i3 = i2 % 2;
        String strSubstring = str.substring(1, str.length() - 1);
        int i4 = s + 107;
        r = i4 % 128;
        if ((i4 % 2 != 0 ? '&' : (char) 11) == 11) {
            return strSubstring;
        }
        throw null;
    }

    static void c() {
        j = 471894352;
        k = 72;
        l = -534978743;
        m = new byte[]{-8, -43, 37, 5, 43, 49, -79, -2, 5, -12, 10, -11, 3, -2, 79, -85, Ascii.DC2, 64, -72, -8, 4, -10, -3, 0, 82, -72, -8, 4, -11, 0, Ascii.DLE, -16, 79, -83, 2, -4, -1, 44, -97, -14, 54, -9, Ascii.FF, Ascii.DLE, 0, -110, -61, 0, -80, -47, -62, -101, -14, -79, -116, Ascii.DC2, -111, -53, -61, -61, 0, -113, -14, -79, -116, Ascii.DC2, -111, -53, -62, -80, 6, -18, -33, -73, Ascii.SI, -76, 19, -80, 6, -18, -33, -73, -33, -56, -38, -67, -47, -3, -102, -6, -107, -9, -105, 3, -77, -44, -59, -98, -11, -76, -113, Ascii.NAK, -108, -50, -58, -58, 3, -110, -11, -76, -113, Ascii.NAK, -108, -50, -59, 58, -6, 58, Ascii.CAN, 53, 8, 9, Ascii.CR, Ascii.ESC, -1, Ascii.ESC, 3, 9, Ascii.DLE, Ascii.SO, -8, Ascii.FS, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
        o = 0L;
        p = 0;
        q = (char) 28246;
    }

    private static String d(String str, String str2, int i2, char c2, String str3) {
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
            cArr5[2] = (char) (cArr5[2] + ((char) i2));
            int length = cArr.length;
            char[] cArr6 = new char[length];
            j.f125 = 0;
            while (true) {
                int i3 = j.f125;
                if (i3 < length) {
                    int i4 = (i3 + 2) % 4;
                    int i5 = (i3 + 3) % 4;
                    char c3 = (char) (((cArr4[i3 % 4] * 32718) + cArr5[i4]) % 65535);
                    j.f126 = c3;
                    cArr5[i5] = (char) (((cArr4[i5] * 32718) + cArr5[i4]) / 65535);
                    cArr4[i5] = c3;
                    int i6 = j.f125;
                    cArr6[i6] = (char) (((((long) (cArr[i6] ^ cArr4[i5])) ^ o) ^ ((long) p)) ^ ((long) q));
                    j.f125 = i6 + 1;
                } else {
                    str4 = new String(cArr6);
                }
            }
        }
        return str4;
    }

    private static String e(Pattern pattern, String str) {
        int i2 = s + 11;
        r = i2 % 128;
        int i3 = i2 % 2;
        Matcher matcher = pattern.matcher(str);
        if (!matcher.find()) {
            return null;
        }
        String strSubstring = str.substring(matcher.start(), matcher.end());
        int i4 = r + 87;
        s = i4 % 128;
        int i5 = i4 % 2;
        return strSubstring;
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x02b1 A[PHI: r6 r10 r22
      0x02b1: PHI (r6v8 java.util.ArrayList) = (r6v9 java.util.ArrayList), (r6v23 java.util.ArrayList) binds: [B:124:0x043d, B:106:0x02ad] A[DONT_GENERATE, DONT_INLINE]
      0x02b1: PHI (r10v6 int) = (r10v7 int), (r10v17 int) binds: [B:124:0x043d, B:106:0x02ad] A[DONT_GENERATE, DONT_INLINE]
      0x02b1: PHI (r22v5 int) = (r22v6 int), (r22v10 int) binds: [B:124:0x043d, B:106:0x02ad] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:125:0x043f  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0487  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x04ac  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0146  */
    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.util.List<com.json.adqualitysdk.sdk.i.dt> m666(java.lang.String r26, java.lang.String r27, java.lang.String r28) {
        /*
            Method dump skipped, instruction units count: 1292
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.dm.m666(java.lang.String, java.lang.String, java.lang.String):java.util.List");
    }
}
