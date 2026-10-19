package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.os.SystemClock;
import android.text.AndroidCharacter;
import android.text.TextUtils;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.applovin.exoplayer2.common.base.Ascii;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class cr extends cx {
    private static int h = 1047539261;
    private static int i = 19;
    private static int j = 1203570851;
    private static byte[] k = {0, -27, 78, 51, -118, -11, 53, 65, 49, 79, 56, 47, 75, Ascii.DEL, -22, 63, 57, 60, 105, -8, -51, 44, Ascii.NAK, 49, 97, -40, Ascii.DC4, 43, Ascii.DC2, 119, -6, Ascii.DC2, 115, 87, 101, 119, 90, 110, -88, 33, 91, 114, -90};
    private static short[] l = null;
    private static int m = 0;
    private static int n = 1;

    private static String d(int i2, int i3, byte b, short s, int i4) {
        String string;
        synchronized (n.f132) {
            StringBuilder sb = new StringBuilder();
            int i5 = i;
            int i6 = i2 + i5;
            boolean z = i6 == -1;
            if (z) {
                byte[] bArr = k;
                i6 = bArr != null ? (byte) (bArr[h + i4] + i5) : (short) (l[h + i4] + i5);
            }
            if (i6 > 0) {
                n.f136 = ((i4 + i6) - 2) + h + (z ? 1 : 0);
                n.f135 = b;
                char c = (char) (i3 + j);
                n.f133 = c;
                sb.append(c);
                n.f134 = n.f133;
                n.f137 = 1;
                while (n.f137 < i6) {
                    byte[] bArr2 = k;
                    if (bArr2 != null) {
                        int i7 = n.f136;
                        n.f136 = i7 - 1;
                        n.f133 = (char) (n.f134 + (((byte) (bArr2[i7] + s)) ^ n.f135));
                    } else {
                        short[] sArr = l;
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

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0035, code lost:
    
        if ((com.json.adqualitysdk.sdk.i.jw.m967(com.json.adqualitysdk.sdk.i.cx.m592(r7, 0, java.lang.Object.class), (java.lang.String) com.json.adqualitysdk.sdk.i.cx.m592(r7, 1, java.lang.String.class), (java.util.List) com.json.adqualitysdk.sdk.i.cx.m592(r7, 2, java.util.List.class)) != null ? 15 : 7) != 15) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0054, code lost:
    
        if ((com.json.adqualitysdk.sdk.i.jw.m967(com.json.adqualitysdk.sdk.i.cx.m592(r7, 1, java.lang.Object.class), (java.lang.String) com.json.adqualitysdk.sdk.i.cx.m592(r7, 0, java.lang.String.class), (java.util.List) com.json.adqualitysdk.sdk.i.cx.m592(r7, 4, java.util.List.class)) == null) != false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0056, code lost:
    
        r7 = com.json.adqualitysdk.sdk.i.cr.m + 65;
        com.json.adqualitysdk.sdk.i.cr.n = r7 % 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x005f, code lost:
    
        if ((r7 % 2) == 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0061, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0063, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0066, code lost:
    
        r7 = com.json.adqualitysdk.sdk.i.cr.m + 13;
        com.json.adqualitysdk.sdk.i.cr.n = r7 % 128;
        r7 = r7 % 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x006f, code lost:
    
        return true;
     */
    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean m533(java.util.List<java.lang.Object> r7) {
        /*
            java.lang.Class<java.lang.String> r0 = java.lang.String.class
            java.lang.Class<java.lang.Object> r1 = java.lang.Object.class
            int r2 = com.json.adqualitysdk.sdk.i.cr.n
            int r2 = r2 + 99
            int r3 = r2 % 128
            com.json.adqualitysdk.sdk.i.cr.m = r3
            r3 = 2
            int r2 = r2 % r3
            r4 = 0
            r5 = 1
            if (r2 == 0) goto L14
            r2 = 0
            goto L15
        L14:
            r2 = 1
        L15:
            if (r2 == 0) goto L38
            java.lang.Object r1 = com.json.adqualitysdk.sdk.i.cx.m592(r7, r4, r1)
            java.lang.Object r0 = com.json.adqualitysdk.sdk.i.cx.m592(r7, r5, r0)
            java.lang.String r0 = (java.lang.String) r0
            java.lang.Class<java.util.List> r2 = java.util.List.class
            java.lang.Object r7 = com.json.adqualitysdk.sdk.i.cx.m592(r7, r3, r2)
            java.util.List r7 = (java.util.List) r7
            java.lang.reflect.Method r7 = com.json.adqualitysdk.sdk.i.jw.m967(r1, r0, r7)
            r0 = 15
            if (r7 == 0) goto L34
            r7 = 15
            goto L35
        L34:
            r7 = 7
        L35:
            if (r7 == r0) goto L66
            goto L56
        L38:
            java.lang.Object r1 = com.json.adqualitysdk.sdk.i.cx.m592(r7, r5, r1)
            java.lang.Object r0 = com.json.adqualitysdk.sdk.i.cx.m592(r7, r4, r0)
            java.lang.String r0 = (java.lang.String) r0
            r2 = 4
            java.lang.Class<java.util.List> r6 = java.util.List.class
            java.lang.Object r7 = com.json.adqualitysdk.sdk.i.cx.m592(r7, r2, r6)
            java.util.List r7 = (java.util.List) r7
            java.lang.reflect.Method r7 = com.json.adqualitysdk.sdk.i.jw.m967(r1, r0, r7)
            if (r7 == 0) goto L53
            r7 = 0
            goto L54
        L53:
            r7 = 1
        L54:
            if (r7 == 0) goto L66
        L56:
            int r7 = com.json.adqualitysdk.sdk.i.cr.m
            int r7 = r7 + 65
            int r0 = r7 % 128
            com.json.adqualitysdk.sdk.i.cr.n = r0
            int r7 = r7 % r3
            if (r7 == 0) goto L62
            return r4
        L62:
            r7 = 0
            throw r7     // Catch: java.lang.Throwable -> L64
        L64:
            r7 = move-exception
            throw r7
        L66:
            int r7 = com.json.adqualitysdk.sdk.i.cr.m
            int r7 = r7 + 13
            int r0 = r7 % 128
            com.json.adqualitysdk.sdk.i.cr.n = r0
            int r7 = r7 % r3
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.cr.m533(java.util.List):boolean");
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static char m534(List<Object> list) {
        int i2 = n + 17;
        m = i2 % 128;
        char cIntValue = (char) ((Number) cx.m592(list, (i2 % 2 != 0 ? 'S' : 'U') != 'U' ? 1 : 0, Number.class)).intValue();
        int i3 = n + 31;
        m = i3 % 128;
        int i4 = i3 % 2;
        return cIntValue;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static Class m535(List<Object> list) {
        int i2 = n + 125;
        m = i2 % 128;
        return Array.newInstance((Class<?>) ((i2 % 2 != 0 ? '\b' : (char) 16) != '\b' ? cx.m592(list, 0, Class.class) : cx.m592(list, 1, Class.class)), 0).getClass();
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static Object m536(cj cjVar, List<Object> list) {
        List list2;
        Class cls = (Class) cx.m592(list, 0, Class.class);
        List arrayList = new ArrayList();
        if (list.size() > 1) {
            arrayList = (List) cx.m592(list, 1, List.class);
            int i2 = m + 13;
            n = i2 % 128;
            int i3 = i2 % 2;
        }
        if (list.size() > 2) {
            List list3 = (List) cx.m592(list, 2, List.class);
            int i4 = m + 53;
            n = i4 % 128;
            int i5 = i4 % 2;
            list2 = list3;
        } else {
            list2 = null;
        }
        try {
            if ((list2 != null ? '_' : 'c') != '_') {
                return jw.m970(cls, arrayList);
            }
            Class[] clsArr = new Class[list2.size()];
            list2.toArray(clsArr);
            return jw.m973(cls, arrayList, clsArr);
        } catch (Exception e2) {
            String strM437 = cjVar.m455().m437();
            StringBuilder sb = new StringBuilder();
            String string = "";
            sb.append(d(TextUtils.indexOf((CharSequence) "", '0') - 19, (ViewConfiguration.getJumpTapTimeout() >> 16) - 1203570782, (byte) Color.argb(0, 0, 0, 0), (short) ((-59) - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1))), 53747 - AndroidCharacter.getMirror('0')).intern());
            sb.append(cls.getName());
            sb.append(d((-20) - (ViewConfiguration.getJumpTapTimeout() >> 16), TextUtils.indexOf((CharSequence) "", '0', 0, 0) - 1203570818, (byte) (ViewConfiguration.getScrollBarSize() >> 8), (short) ((-32) - (ViewConfiguration.getScrollBarSize() >> 8)), (-1047539242) - (ViewConfiguration.getWindowTouchSlop() >> 8)).intern());
            sb.append(arrayList);
            if (list2 != null) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(d((-21) - ExpandableListView.getPackedPositionChild(0L), TextUtils.indexOf("", "", 0) - 1203570819, (byte) TextUtils.indexOf("", "", 0), (short) ((-102) - ExpandableListView.getPackedPositionChild(0L)), (-1047539230) - (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1))).intern());
                sb2.append(list2);
                string = sb2.toString();
                int i6 = m + 99;
                n = i6 % 128;
                int i7 = i6 % 2;
            }
            sb.append(string);
            cn.m519(strM437, sb.toString(), e2);
            return null;
        }
    }
}
