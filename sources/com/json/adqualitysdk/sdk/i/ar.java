package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.media.AudioTrack;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.json.adqualitysdk.sdk.i.ao;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class ar extends ao.AnonymousClass3 {
    private static long c = 2035505838693995239L;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5237d = 108;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f5238e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5239f = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f5240g = (int) TimeUnit.SECONDS.toMillis(120);

    public ar(as asVar) {
        a("䘐凈쮗䙠荝딿渶췾\u0de3伥㪎", (ViewConfiguration.getWindowTouchSlop() >> 8) + 1).intern();
        b(216 - (ViewConfiguration.getKeyRepeatDelay() >> 16), false, 1 - (ViewConfiguration.getFadingEdgeLength() >> 16), 9 - TextUtils.indexOf("", "", 0), "\u0007\ufff9\u0000\ufff9\ufff7\b\u0006\u0003\u0002").intern();
        m333(asVar);
    }

    private static String a(String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (f.f54) {
            char[] cArrM713 = f.m713(c, cArr, i);
            f.f52 = 4;
            while (true) {
                int i2 = f.f52;
                if (i2 < cArrM713.length) {
                    f.f53 = i2 - 4;
                    cArrM713[f.f52] = (char) (((long) (cArrM713[r1] ^ cArrM713[r1 % 4])) ^ (((long) f.f53) * c));
                    f.f52++;
                } else {
                    str2 = new String(cArrM713, 4, cArrM713.length - 4);
                }
            }
        }
        return str2;
    }

    private static String b(int i, boolean z, int i2, int i3, String str) {
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
                cArr2[i5] = (char) (cArr2[i5] - f5237d);
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

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public final long m344() {
        JSONObject jSONObjectM332;
        String strIntern;
        long j;
        int i = f5239f + 119;
        f5238e = i % 128;
        if ((i % 2 != 0 ? '2' : '\'') != '2') {
            jSONObjectM332 = m332();
            strIntern = a("ỉ歋鲪Ẽ맘缪", (ViewConfiguration.getMinimumFlingVelocity() >> 16) + 1).intern();
            j = 0;
        } else {
            jSONObjectM332 = m332();
            strIntern = a("ỉ歋鲪Ẽ맘缪", 1 / (ViewConfiguration.getMinimumFlingVelocity() % 95)).intern();
            j = 1;
        }
        return jSONObjectM332.optLong(strIntern, j);
    }

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public final long m345() {
        JSONObject jSONObjectM332;
        int packedPositionType;
        int i = f5239f + 121;
        f5238e = i % 128;
        if ((i % 2 != 0 ? (char) 15 : 'L') != 'L') {
            jSONObjectM332 = m332();
            packedPositionType = 0 >>> ExpandableListView.getPackedPositionType(1L);
        } else {
            jSONObjectM332 = m332();
            packedPositionType = ExpandableListView.getPackedPositionType(0L) + 1;
        }
        long jOptLong = jSONObjectM332.optLong(a("ሣ꺦\uda78\u1257簲醥", packedPositionType).intern(), 0L);
        int i2 = f5238e + 1;
        f5239f = i2 % 128;
        if ((i2 % 2 == 0 ? (char) 2 : (char) 29) != 2) {
            return jOptLong;
        }
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x006a, code lost:
    
        if ((r0 == null) != false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0079, code lost:
    
        return a("䘐凈쮗䙠荝딿渶췾\u0de3伥㪎", android.view.View.getDefaultSize(0, 0) + 1).intern();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x007a, code lost:
    
        r2 = com.json.adqualitysdk.sdk.i.ar.f5239f + 11;
        com.json.adqualitysdk.sdk.i.ar.f5238e = r2 % 128;
        r2 = r2 % 2;
        r0 = r0.optString(b(android.text.TextUtils.indexOf((java.lang.CharSequence) "", '0') + 221, false, -((byte) android.view.KeyEvent.getModifierMetaStateMask()), (android.graphics.PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (android.graphics.PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)) + 1, "\u0000").intern(), a("䘐凈쮗䙠荝딿渶췾\u0de3伥㪎", (android.os.Process.getElapsedCpuTime() > 0 ? 1 : (android.os.Process.getElapsedCpuTime() == 0 ? 0 : -1))).intern());
        r1 = com.json.adqualitysdk.sdk.i.ar.f5238e + 41;
        com.json.adqualitysdk.sdk.i.ar.f5239f = r1 % 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x00be, code lost:
    
        if ((r1 % 2) != 0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x00c1, code lost:
    
        r9 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00c2, code lost:
    
        if (r9 != true) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00c4, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00c6, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x003f, code lost:
    
        if (r0 != null) goto L14;
     */
    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String m346() {
        /*
            Method dump skipped, instruction units count: 201
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.ar.m346():java.lang.String");
    }

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final String m347() {
        JSONObject jSONObjectOptJSONObject = m332().optJSONObject(b(View.MeasureSpec.getSize(0) + 221, false, (ViewConfiguration.getTapTimeout() >> 16) + 3, (ViewConfiguration.getKeyRepeatDelay() >> 16) + 3, "\u0004\u0001\ufffb").intern());
        if (jSONObjectOptJSONObject != null) {
            int i = f5238e + 37;
            f5239f = i % 128;
            int i2 = i % 2;
            return jSONObjectOptJSONObject.optString(a("魝㩌Ĉ鬸ᶷ", (ViewConfiguration.getFadingEdgeLength() >> 16) + 1).intern(), b(216 - (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)), false, (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)), KeyEvent.keyCodeFromString("") + 9, "\u0007\ufff9\u0000\ufff9\ufff7\b\u0006\u0003\u0002").intern());
        }
        String strIntern = b(ExpandableListView.getPackedPositionGroup(0L) + 216, false, (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)) + 1, ExpandableListView.getPackedPositionGroup(0L) + 9, "\u0007\ufff9\u0000\ufff9\ufff7\b\u0006\u0003\u0002").intern();
        int i3 = f5239f + 85;
        f5238e = i3 % 128;
        int i4 = i3 % 2;
        return strIntern;
    }

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final long m348() {
        JSONObject jSONObjectM332;
        String strB;
        int i = f5239f + 55;
        f5238e = i % 128;
        if (!(i % 2 != 0)) {
            jSONObjectM332 = m332();
            strB = b(222 - TextUtils.lastIndexOf("", '0', 0, 0), false, (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)) + 2, KeyEvent.keyCodeFromString("") + 3, "\u0000\u0001\u0000");
        } else {
            jSONObjectM332 = m332();
            strB = b(22236 >> TextUtils.lastIndexOf("", 'w', 0, 1), true, 2 % (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)), 4 - KeyEvent.keyCodeFromString(""), "\u0000\u0001\u0000");
        }
        long jOptLong = jSONObjectM332.optLong(strB.intern(), 0L);
        int i2 = f5239f + 27;
        f5238e = i2 % 128;
        int i3 = i2 % 2;
        return jOptLong;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final int m349() {
        int i = f5238e + 73;
        f5239f = i % 128;
        int i2 = i % 2;
        int iOptInt = m332().optInt(b(222 - (ViewConfiguration.getLongPressTimeout() >> 16), true, (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)) + 2, 3 - (ViewConfiguration.getPressedStateDuration() >> 16), "\u0001\u0004\ufffb").intern(), 9850);
        int i3 = f5239f + 99;
        f5238e = i3 % 128;
        if ((i3 % 2 != 0 ? '6' : (char) 1) != '6') {
            return iOptInt;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final List<String> m350() {
        List<String> listM354 = m331().m354();
        listM354.addAll(ju.m953(m332(), b(221 - (SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)), true, -TextUtils.lastIndexOf("", '0', 0, 0), 3 - (ViewConfiguration.getScrollBarFadeDuration() >> 16), "\ufff5\b\u0004").intern(), new ArrayList()));
        int i = f5238e + 111;
        f5239f = i % 128;
        int i2 = i % 2;
        return listM354;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final int m351() {
        int i = f5239f + 77;
        f5238e = i % 128;
        int i2 = i % 2;
        int iOptInt = m332().optInt(a("䭇䃉㘥䬢鉝\ude7c鎟", 1 - View.combineMeasuredStates(0, 0)).intern(), this.f5240g);
        int i3 = f5239f + 107;
        f5238e = i3 % 128;
        int i4 = i3 % 2;
        return iOptInt;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final List<String> m352() {
        List<String> listM357 = m331().m357();
        listM357.addAll(ju.m953(m332(), b(219 - TextUtils.indexOf((CharSequence) "", '0'), false, KeyEvent.keyCodeFromString("") + 3, 4 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)), "\ufff6\u0004\b").intern(), new ArrayList()));
        int i = f5238e + 79;
        f5239f = i % 128;
        int i2 = i % 2;
        return listM357;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final int m353() {
        int i = f5238e + 49;
        f5239f = i % 128;
        int i2 = i % 2;
        int iOptInt = m332().optInt(b(216 - (SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)), true, Color.green(0) + 2, (ViewConfiguration.getMaximumDrawingCacheSize() >> 24) + 3, "\ufffa\u0002\u0005").intern(), 40);
        int i3 = f5239f + 109;
        f5238e = i3 % 128;
        if ((i3 % 2 != 0 ? (char) 4 : '/') == '/') {
            return iOptInt;
        }
        int i4 = 49 / 0;
        return iOptInt;
    }
}
