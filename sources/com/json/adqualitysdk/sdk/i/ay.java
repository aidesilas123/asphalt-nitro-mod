package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.graphics.ImageFormat;
import android.graphics.drawable.Drawable;
import android.media.AudioTrack;
import android.os.Process;
import android.os.SystemClock;
import android.text.AndroidCharacter;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.applovin.exoplayer2.common.base.Ascii;
import com.json.adqualitysdk.sdk.i.ga;
import com.json.adqualitysdk.sdk.i.gl;
import com.json.adqualitysdk.sdk.i.gt;
import com.json.adqualitysdk.sdk.i.gu;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class ay {
    private static Map<String, List<? extends gd>> a = null;
    private static char[] b = null;
    private static char c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5341d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f5342e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5343f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static byte[] f5344g = null;
    private static short[] h = null;
    private static int i = 0;
    private static int j = 1;

    static {
        a();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(j((byte) (TextUtils.lastIndexOf("", '0') + 113), "\u0001\u0002\u000e\u000f\u0002\u0011\u000e\t", 8 - (ViewConfiguration.getLongPressTimeout() >> 16)).intern(), h(new fs()));
        linkedHashMap.put(j((byte) (((Process.getThreadPriority(0) + 20) >> 6) + 3), "\u0001\u0002\u0011\u000fe", (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)) + 5).intern(), h(new fw()));
        linkedHashMap.put(f(-(ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)), (-1066762614) - (ViewConfiguration.getKeyRepeatTimeout() >> 16), (byte) (ViewConfiguration.getScrollDefaultDelay() >> 16), (short) (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)), (-1999817479) - TextUtils.lastIndexOf("", '0', 0, 0)).intern(), h(new ft()));
        linkedHashMap.put(j((byte) ((Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)) + 75), "\u0006\u0018\u0013\u0014\u0014\u001a\t\f", (ViewConfiguration.getWindowTouchSlop() >> 8) + 8).intern(), h(new fv()));
        linkedHashMap.put(f((-1) - (ViewConfiguration.getKeyRepeatTimeout() >> 16), Color.green(0) - 1066762613, (byte) (ViewConfiguration.getKeyRepeatTimeout() >> 16), (short) (Process.getGidForName("") + 1), (-1999817470) - Process.getGidForName("")).intern(), h(new ga.e(), new ga.d()));
        linkedHashMap.put(j((byte) (TextUtils.lastIndexOf("", '0', 0) + 76), "\u0012\t\u0004\r\n\u001c\u000b\u0007\u0010\r", 11 - (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1))).intern(), h(new fu()));
        linkedHashMap.put(j((byte) (84 - Color.argb(0, 0, 0, 0)), "\u0010\u0007\u0005\n\u000b\rÃÃ\u0013\u000b", 10 - (ViewConfiguration.getWindowTouchSlop() >> 8)).intern(), h(new gc()));
        linkedHashMap.put(j((byte) (View.MeasureSpec.getSize(0) + 38), "\u001c\u0000\u0012\u0010\f\u000f\r\u001a", (ViewConfiguration.getTapTimeout() >> 16) + 8).intern(), h(new gb()));
        linkedHashMap.put(j((byte) (112 - (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1))), "\u001c\u0000\u0007\u0006\u0012\tÓ", (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)) + 6).intern(), h(new fz()));
        linkedHashMap.put(j((byte) (23 - (ViewConfiguration.getMinimumFlingVelocity() >> 16)), "\u001e\f\u0012\u000e\u0001\u0002", TextUtils.indexOf("", "") + 6).intern(), h(new fy()));
        linkedHashMap.put(j((byte) (62 - View.MeasureSpec.getMode(0)), "\u001a\u0006\f\r°", (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)) + 4).intern(), h(new gf()));
        linkedHashMap.put(f((-1) - View.MeasureSpec.getSize(0), (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)) - 1066762607, (byte) (Color.rgb(0, 0, 0) + 16777216), (short) (ViewConfiguration.getKeyRepeatDelay() >> 16), ImageFormat.getBitsPerPixel(0) - 1999817459).intern(), h(new ge()));
        linkedHashMap.put(j((byte) (109 - View.MeasureSpec.getMode(0)), "\u001b\u000e\u0011\u000f\f\u000b", 6 - ExpandableListView.getPackedPositionGroup(0L)).intern(), h(new gh()));
        linkedHashMap.put(j((byte) (109 - View.MeasureSpec.getSize(0)), "\u001b\u000e\u0010\r\n\u0005\u0013\n\b\u0012Ò", (KeyEvent.getMaxKeyCode() >> 16) + 11).intern(), h(new gg()));
        linkedHashMap.put(f(-(SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)), ((Process.getThreadPriority(0) + 20) >> 6) - 1066762606, (byte) Color.blue(0), (short) Color.green(0), (ViewConfiguration.getJumpTapTimeout() >> 16) - 1999817454).intern(), h(new gk()));
        linkedHashMap.put(j((byte) (Drawable.resolveOpacity(0, 0) + 123), "\u0016\n\b\f", (Process.myTid() >> 22) + 4).intern(), h(new gi()));
        linkedHashMap.put(j((byte) (Color.argb(0, 0, 0, 0) + 11), "\f\n\r\t\u000f\u0018\n\u0005w", (ViewConfiguration.getLongPressTimeout() >> 16) + 9).intern(), h(new gl.e(), new gl.b()));
        linkedHashMap.put(f((-1) - (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)), (-1066762602) - KeyEvent.keyCodeFromString(""), (byte) TextUtils.getOffsetAfter("", 0), (short) TextUtils.getCapsMode("", 0, 0), View.MeasureSpec.getMode(0) - 1999817444).intern(), h(new gm()));
        linkedHashMap.put(j((byte) (Color.blue(0) + 66), "\u001d\u001c\u0005\t»", 4 - TextUtils.lastIndexOf("", '0')).intern(), h(new gj()));
        linkedHashMap.put(f(View.MeasureSpec.getMode(0) - 1, View.MeasureSpec.getMode(0) - 1066762599, (byte) (ViewConfiguration.getMinimumFlingVelocity() >> 16), (short) (KeyEvent.getMaxKeyCode() >> 16), KeyEvent.keyCodeFromString("") - 1999817436).intern(), h(new gp()));
        linkedHashMap.put(f((ViewConfiguration.getScrollBarFadeDuration() >> 16) - 1, (ViewConfiguration.getMaximumFlingVelocity() >> 16) - 1066762596, (byte) (ViewConfiguration.getPressedStateDuration() >> 16), (short) ((Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)) - 1), (-1999817427) - TextUtils.indexOf("", "")).intern(), h(new gn()));
        linkedHashMap.put(j((byte) (58 - ExpandableListView.getPackedPositionChild(0L)), "\u000f\t\u0018\u0012\u0006\u0005\u0018\u0011\u0014\u0011\u0000\u0012", 11 - MotionEvent.axisFromString("")).intern(), h(new gq()));
        linkedHashMap.put(f((-1) - TextUtils.indexOf("", "", 0), Color.argb(0, 0, 0, 0) - 1066762595, (byte) (Process.myTid() >> 22), (short) TextUtils.indexOf("", "", 0, 0), TextUtils.lastIndexOf("", '0', 0, 0) - 1999817420).intern(), h(new gr()));
        linkedHashMap.put(j((byte) ((ViewConfiguration.getTapTimeout() >> 16) + 72), "\u001e\r\u0010\u0015\r\u0010¼", View.combineMeasuredStates(0, 0) + 7).intern(), h(new go()));
        linkedHashMap.put(f(TextUtils.indexOf("", "", 0, 0) - 1, (Process.myPid() >> 22) - 1066762594, (byte) ('0' - AndroidCharacter.getMirror('0')), (short) (TextUtils.indexOf((CharSequence) "", '0') + 1), (-1999817415) - Color.red(0)).intern(), h(new gu(), new gu.c()));
        linkedHashMap.put(j((byte) (View.resolveSize(0, 0) + 1), "\u001e\u000e\u0006\u0007 \u000fo", 7 - ExpandableListView.getPackedPositionGroup(0L)).intern(), h(new gs()));
        linkedHashMap.put(f((-16777217) - Color.rgb(0, 0, 0), (-1066762593) - TextUtils.getTrimmedLength(""), (byte) (ViewConfiguration.getTouchSlop() >> 8), (short) Color.red(0), (Process.myPid() >> 22) - 1999817407).intern(), h(new gt.b(), new gt.a()));
        linkedHashMap.put(j((byte) (59 - (ViewConfiguration.getKeyRepeatTimeout() >> 16)), "\u0004\n\b\u0010ª", (ViewConfiguration.getMaximumFlingVelocity() >> 16) + 5).intern(), h(new gw()));
        a = Collections.unmodifiableMap(linkedHashMap);
        int i2 = i + 45;
        j = i2 % 128;
        if (i2 % 2 == 0) {
            throw null;
        }
    }

    static void a() {
        c = (char) 6;
        b = new char[]{'A', 'd', 'Q', 'u', 'a', 'l', 'i', 't', 'y', 'S', 'h', 'r', 'e', 'C', 'o', 'n', 'M', 'b', 'p', 'L', 'v', 'B', 'c', 's', 'F', 'k', 'I', 'g', 'O', 'w', 'm', 'T', 'V', 'z', 'Y', 'D'};
        f5341d = 1999817478;
        f5342e = 0;
        f5343f = 1066762679;
        f5344g = new byte[]{9, 3, 47, -45, -1, -11, Ascii.EM, -12, 44, 9, 2, -11, Ascii.CR, Ascii.GS, -33, -15, -5, 55, 6, Ascii.VT, -37, 2, -9, 49, 10, 2, -15, -3, 6, Ascii.FS, -27, -1, -3, 41, 8, Ascii.SI, -2, -11, 17, Ascii.CR, -37, 44, 9, -17, Ascii.CR, -11, 19, 19, -20, -19, 37, 6, -5, 19, 0, -12, Ascii.SUB, 6, 10, 5, -6, Ascii.SI, Ascii.CR, 8, Ascii.SI, 35, -56, 5, Ascii.VT, -5, Ascii.EM, 6, -7, 5, -7, -7, Ascii.US};
    }

    static boolean b(String str) {
        List<? extends gd> list = a.get(str);
        if (!(list != null)) {
            int i2 = j + 25;
            i = i2 % 128;
            int i3 = i2 % 2;
            return false;
        }
        int i4 = j + 61;
        i = i4 % 128;
        boolean z = i4 % 2 != 0;
        boolean zC = c(list);
        if (!z) {
            return zC;
        }
        int i5 = 26 / 0;
        return zC;
    }

    private static boolean c(List<? extends gd> list) {
        boolean z;
        int i2 = i + 1;
        j = i2 % 128;
        int i3 = i2 % 2;
        Iterator<? extends gd> it = list.iterator();
        do {
            z = false;
            if (!(it.hasNext())) {
                int i4 = i + 25;
                j = i4 % 128;
                int i5 = i4 % 2;
                return false;
            }
            int i6 = j + 83;
            i = i6 % 128;
            if (i6 % 2 != 0) {
                m377(it.next());
                throw null;
            }
            if (!m377(it.next())) {
                z = true;
            }
        } while (z);
        return true;
    }

    static String d() {
        int i2 = j + 115;
        i = i2 % 128;
        int i3 = i2 % 2;
        String strIntern = j((byte) (Drawable.resolveOpacity(0, 0) + 11), "\u0001\u0002\u0003\u0004\u0005\u0000\u0007\b\t\n\u0010\n\u0006\u0011o", 15 - (ViewConfiguration.getKeyRepeatDelay() >> 16)).intern();
        int i4 = j + 69;
        i = i4 % 128;
        if ((i4 % 2 != 0 ? '+' : '!') == '!') {
            return strIntern;
        }
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0061 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static java.util.List<com.json.adqualitysdk.sdk.i.gd> e(java.lang.String r5) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.Map<java.lang.String, java.util.List<? extends com.ironsource.adqualitysdk.sdk.i.gd>> r1 = com.json.adqualitysdk.sdk.i.ay.a
            java.lang.Object r5 = r1.get(r5)
            java.util.List r5 = (java.util.List) r5
            java.util.Iterator r5 = r5.iterator()
        L11:
            boolean r1 = r5.hasNext()
            r2 = 80
            if (r1 == 0) goto L1c
            r1 = 80
            goto L1e
        L1c:
            r1 = 58
        L1e:
            if (r1 == r2) goto L21
            return r0
        L21:
            int r1 = com.json.adqualitysdk.sdk.i.ay.j
            int r1 = r1 + 105
            int r2 = r1 % 128
            com.json.adqualitysdk.sdk.i.ay.i = r2
            int r1 = r1 % 2
            r2 = 0
            if (r1 == 0) goto L40
            java.lang.Object r1 = r5.next()
            com.ironsource.adqualitysdk.sdk.i.gd r1 = (com.json.adqualitysdk.sdk.i.gd) r1
            boolean r3 = m377(r1)
            r4 = 86
            int r4 = r4 / r2
            if (r3 == 0) goto L11
            goto L4c
        L3e:
            r5 = move-exception
            throw r5
        L40:
            java.lang.Object r1 = r5.next()
            com.ironsource.adqualitysdk.sdk.i.gd r1 = (com.json.adqualitysdk.sdk.i.gd) r1
            boolean r3 = m377(r1)
            if (r3 == 0) goto L11
        L4c:
            int r3 = com.json.adqualitysdk.sdk.i.ay.i
            int r3 = r3 + 53
            int r4 = r3 % 128
            com.json.adqualitysdk.sdk.i.ay.j = r4
            int r3 = r3 % 2
            r4 = 1
            if (r3 != 0) goto L5a
            goto L5b
        L5a:
            r2 = 1
        L5b:
            if (r2 != r4) goto L61
            r0.add(r1)
            goto L11
        L61:
            r0.add(r1)
            r5 = 0
            throw r5     // Catch: java.lang.Throwable -> L66
        L66:
            r5 = move-exception
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.ay.e(java.lang.String):java.util.List");
    }

    private static String f(int i2, int i3, byte b2, short s, int i4) {
        String string;
        synchronized (n.f132) {
            StringBuilder sb = new StringBuilder();
            int i5 = f5342e;
            int i6 = i2 + i5;
            boolean z = i6 == -1;
            if (z) {
                byte[] bArr = f5344g;
                i6 = bArr != null ? (byte) (bArr[f5341d + i4] + i5) : (short) (h[f5341d + i4] + i5);
            }
            if (i6 > 0) {
                n.f136 = ((i4 + i6) - 2) + f5341d + (z ? 1 : 0);
                n.f135 = b2;
                char c2 = (char) (i3 + f5343f);
                n.f133 = c2;
                sb.append(c2);
                n.f134 = n.f133;
                n.f137 = 1;
                while (n.f137 < i6) {
                    byte[] bArr2 = f5344g;
                    if (bArr2 != null) {
                        int i7 = n.f136;
                        n.f136 = i7 - 1;
                        n.f133 = (char) (n.f134 + (((byte) (bArr2[i7] + s)) ^ n.f135));
                    } else {
                        short[] sArr = h;
                        int i8 = n.f136;
                        n.f136 = i8 - 1;
                        n.f133 = (char) (n.f134 + (((short) (sArr[i8] + s)) ^ n.f135));
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

    static List<String> g() {
        ArrayList arrayList = new ArrayList(a.keySet());
        int i2 = j + 9;
        i = i2 % 128;
        if (i2 % 2 == 0) {
            return arrayList;
        }
        throw null;
    }

    private static List<? extends gd> h(gd... gdVarArr) {
        int i2 = j + 79;
        i = i2 % 128;
        boolean z = i2 % 2 != 0;
        List<? extends gd> listAsList = Arrays.asList(gdVarArr);
        if (z) {
            int i3 = 77 / 0;
        }
        return listAsList;
    }

    static gd i() {
        fx fxVar = new fx();
        int i2 = j + 33;
        i = i2 % 128;
        if (i2 % 2 == 0) {
            return fxVar;
        }
        throw null;
    }

    private static String j(byte b2, String str, int i2) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (g.f56) {
            char[] cArr2 = b;
            char c2 = c;
            char[] cArr3 = new char[i2];
            if (i2 % 2 != 0) {
                i2--;
                cArr3[i2] = (char) (cArr[i2] - b2);
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
                            int i4 = (g.f59 * c2) + g.f55;
                            int i5 = (g.f61 * c2) + g.f57;
                            int i6 = g.f60;
                            cArr3[i6] = cArr2[i4];
                            cArr3[i6 + 1] = cArr2[i5];
                        } else if (g.f59 == g.f61) {
                            g.f55 = ((g.f55 + c2) - 1) % c2;
                            g.f57 = ((g.f57 + c2) - 1) % c2;
                            int i7 = (g.f59 * c2) + g.f55;
                            int i8 = (g.f61 * c2) + g.f57;
                            int i9 = g.f60;
                            cArr3[i9] = cArr2[i7];
                            cArr3[i9 + 1] = cArr2[i8];
                        } else {
                            int i10 = (g.f59 * c2) + g.f57;
                            int i11 = (g.f61 * c2) + g.f55;
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

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static boolean m377(gd gdVar) {
        try {
            if (Prode.m219()) {
                int i2 = j + 35;
                i = i2 % 128;
                int i3 = i2 % 2;
                gdVar.mo716();
            } else {
                Class.forName(gdVar.mo717());
            }
            int i4 = j + 19;
            i = i4 % 128;
            if (i4 % 2 != 0) {
                throw null;
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }
}
