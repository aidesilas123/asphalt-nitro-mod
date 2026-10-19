package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.graphics.PointF;
import android.media.AudioTrack;
import android.text.AndroidCharacter;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.applovin.exoplayer2.common.base.Ascii;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public abstract class az extends cx implements cg {
    private static int h = -1682356882;
    private static int i = 19;
    private static int j = -258299768;
    private static short[] l = null;
    private static int n = 0;
    private static int o = 1;
    private Map<String, d> p;
    private String q;
    private String r;
    private String s;
    private static byte[] k = {-2, 65, 72, 56, 67, 79, 81, 45, 73, 83, 41, 66, 57, 113, Ascii.DC4, 81, 52, -11, Ascii.FS, 46, 17, 69, -21, 43, Ascii.SUB, -12, 126, 120, -119, -128, 114, -120, -16, 58, 57, -15, -40, -34, -30, -14, 105, 72, 89, 92, -15, -124, -121, -108, -15, -105, Ascii.DEL, -117, -15, 83, 93, 121, -14, Ascii.SI, Ascii.DLE, Ascii.DC4, 2};
    private static int m = 123;

    final class a implements d {
        a() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
        public final Object mo389(List<Object> list, ch chVar) {
            return Boolean.valueOf(az.this.m379());
        }
    }

    final class b implements d {
        b() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return az.i(az.this, (String) list.get(0));
        }
    }

    final class c implements d {
        c() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            az.this.m386((String) az.d(list, String.class));
            return az.e(az.this);
        }
    }

    interface d {
        /* JADX INFO: renamed from: ｋ */
        Object mo389(List<Object> list, ch chVar);
    }

    public az(String str) {
        this.q = str;
    }

    private static String a(int i2, int i3, byte b2, short s, int i4) {
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
                n.f135 = b2;
                char c2 = (char) (i3 + j);
                n.f133 = c2;
                sb.append(c2);
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

    static /* synthetic */ Object d(List list, Class cls) {
        int i2 = n + 99;
        o = i2 % 128;
        int i3 = i2 % 2;
        Object objM592 = cx.m592(list, 0, cls);
        int i4 = o + 25;
        n = i4 % 128;
        if (i4 % 2 == 0) {
            return objM592;
        }
        throw null;
    }

    static /* synthetic */ String e(az azVar) {
        int i2 = o;
        int i3 = i2 + 97;
        n = i3 % 128;
        int i4 = i3 % 2;
        String str = azVar.r;
        int i5 = i2 + 81;
        n = i5 % 128;
        int i6 = i5 % 2;
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:73:0x0288  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.Class g(java.lang.String r20, boolean r21) {
        /*
            Method dump skipped, instruction units count: 840
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.az.g(java.lang.String, boolean):java.lang.Class");
    }

    private static String h(int i2, boolean z, int i3, int i4, String str) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (com.json.adqualitysdk.sdk.i.c.f35) {
            char[] cArr2 = new char[i4];
            com.json.adqualitysdk.sdk.i.c.f36 = 0;
            while (true) {
                int i5 = com.json.adqualitysdk.sdk.i.c.f36;
                if (i5 >= i4) {
                    break;
                }
                com.json.adqualitysdk.sdk.i.c.f37 = cArr[i5];
                cArr2[com.json.adqualitysdk.sdk.i.c.f36] = (char) (com.json.adqualitysdk.sdk.i.c.f37 + i2);
                int i6 = com.json.adqualitysdk.sdk.i.c.f36;
                cArr2[i6] = (char) (cArr2[i6] - m);
                com.json.adqualitysdk.sdk.i.c.f36 = i6 + 1;
            }
            if (i3 > 0) {
                com.json.adqualitysdk.sdk.i.c.f38 = i3;
                char[] cArr3 = new char[i4];
                System.arraycopy(cArr2, 0, cArr3, 0, i4);
                int i7 = com.json.adqualitysdk.sdk.i.c.f38;
                System.arraycopy(cArr3, 0, cArr2, i4 - i7, i7);
                int i8 = com.json.adqualitysdk.sdk.i.c.f38;
                System.arraycopy(cArr3, i8, cArr2, 0, i4 - i8);
            }
            if (z) {
                char[] cArr4 = new char[i4];
                com.json.adqualitysdk.sdk.i.c.f36 = 0;
                while (true) {
                    int i9 = com.json.adqualitysdk.sdk.i.c.f36;
                    if (i9 >= i4) {
                        break;
                    }
                    cArr4[i9] = cArr2[(i4 - i9) - 1];
                    com.json.adqualitysdk.sdk.i.c.f36 = i9 + 1;
                }
                cArr2 = cArr4;
            }
            str2 = new String(cArr2);
        }
        return str2;
    }

    static /* synthetic */ Class i(az azVar, String str) {
        int i2 = n + 75;
        o = i2 % 128;
        return i2 % 2 == 0 ? azVar.g(str, true) : azVar.g(str, false);
    }

    final void f(gy gyVar, ch chVar, String str, Object... objArr) {
        try {
            ArrayList arrayList = new ArrayList(Arrays.asList(objArr));
            arrayList.add(0, gyVar);
            chVar.mo428(str, arrayList);
            int i2 = n + 71;
            o = i2 % 128;
            int i3 = i2 % 2;
        } catch (Throwable th) {
            String str2 = this.q;
            StringBuilder sb = new StringBuilder();
            sb.append(h(TextUtils.getOffsetBefore("", 0) + 212, false, 7 - (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)), 9 - View.MeasureSpec.getSize(0), "\u0016\u0019ￇ\u0010\u0015ￇ￬\u0019\u0019").intern());
            sb.append(this);
            cn.m519(str2, sb.toString(), th);
        }
    }

    abstract Map<String, d> j();

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public String mo378() {
        int i2 = n + 9;
        int i3 = i2 % 128;
        o = i3;
        if ((i2 % 2 == 0 ? '7' : 'L') == '7') {
            throw null;
        }
        String str = this.r;
        if ((str != null ? 'M' : 'K') != 'M') {
            String strM380 = m380();
            int i4 = n + 27;
            o = i4 % 128;
            int i5 = i4 % 2;
            return strM380;
        }
        int i6 = i3 + 99;
        n = i6 % 128;
        if (!(i6 % 2 != 0)) {
            return str;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public final boolean m379() {
        int i2 = o;
        int i3 = i2 + 59;
        int i4 = i3 % 128;
        n = i4;
        int i5 = i3 % 2;
        if (this.r != null) {
            int i6 = i2 + 103;
            n = i6 % 128;
            int i7 = i6 % 2;
            return true;
        }
        int i8 = i4 + 53;
        o = i8 % 128;
        int i9 = i8 % 2;
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0057 A[Catch: all -> 0x0074, TryCatch #1 {, blocks: (B:3:0x0001, B:5:0x000a, B:12:0x005d, B:21:0x0073, B:11:0x0057, B:19:0x0071), top: B:27:0x0001, inners: #0 }] */
    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized java.lang.String m380() {
        /*
            r9 = this;
            monitor-enter(r9)
            java.lang.String r0 = r9.s     // Catch: java.lang.Throwable -> L74
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> L74
            r1 = 0
            if (r0 != 0) goto L57
            int r0 = com.json.adqualitysdk.sdk.i.az.o     // Catch: java.lang.Throwable -> L74
            int r0 = r0 + 99
            int r2 = r0 % 128
            com.json.adqualitysdk.sdk.i.az.n = r2     // Catch: java.lang.Throwable -> L74
            int r0 = r0 % 2
            java.lang.String r0 = r9.s     // Catch: java.lang.Throwable -> L74
            int r2 = android.os.Process.myPid()     // Catch: java.lang.Throwable -> L74
            int r2 = r2 >> 22
            int r2 = (-20) - r2
            r3 = 258299837(0xf6557bd, float:1.13074695E-29)
            int r4 = android.view.ViewConfiguration.getScrollDefaultDelay()     // Catch: java.lang.Throwable -> L74
            r5 = 16
            int r4 = r4 >> r5
            int r3 = r3 - r4
            int r4 = android.graphics.Color.argb(r1, r1, r1, r1)     // Catch: java.lang.Throwable -> L74
            byte r4 = (byte) r4     // Catch: java.lang.Throwable -> L74
            r6 = 0
            int r6 = android.widget.ExpandableListView.getPackedPositionChild(r6)     // Catch: java.lang.Throwable -> L74
            int r6 = r6 + (-126)
            short r6 = (short) r6     // Catch: java.lang.Throwable -> L74
            r7 = 1682356907(0x6446baab, float:1.4663625E22)
            int r8 = android.os.Process.myTid()     // Catch: java.lang.Throwable -> L74
            int r8 = r8 >> 22
            int r8 = r8 + r7
            java.lang.String r2 = a(r2, r3, r4, r6, r8)     // Catch: java.lang.Throwable -> L74
            java.lang.String r2 = r2.intern()     // Catch: java.lang.Throwable -> L74
            boolean r0 = r0.equals(r2)     // Catch: java.lang.Throwable -> L74
            if (r0 == 0) goto L52
            r0 = 16
            goto L54
        L52:
            r0 = 92
        L54:
            if (r0 == r5) goto L57
            goto L5d
        L57:
            java.lang.String r0 = r9.mo385()     // Catch: java.lang.Throwable -> L74
            r9.s = r0     // Catch: java.lang.Throwable -> L74
        L5d:
            java.lang.String r0 = r9.s     // Catch: java.lang.Throwable -> L74
            int r2 = com.json.adqualitysdk.sdk.i.az.n     // Catch: java.lang.Throwable -> L74
            int r2 = r2 + 45
            int r3 = r2 % 128
            com.json.adqualitysdk.sdk.i.az.o = r3     // Catch: java.lang.Throwable -> L74
            int r2 = r2 % 2
            if (r2 != 0) goto L6c
            r1 = 1
        L6c:
            if (r1 != 0) goto L70
            monitor-exit(r9)
            return r0
        L70:
            r0 = 0
            throw r0     // Catch: java.lang.Throwable -> L72
        L72:
            r0 = move-exception
            throw r0     // Catch: java.lang.Throwable -> L74
        L74:
            r0 = move-exception
            monitor-exit(r9)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.az.m380():java.lang.String");
    }

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final void m381() {
        Map<String, d> mapJ = j();
        this.p = mapJ;
        mapJ.put(a((-20) - KeyEvent.keyCodeFromString(""), 258299883 - View.resolveSize(0, 0), (byte) (ViewConfiguration.getPressedStateDuration() >> 16), (short) (AndroidCharacter.getMirror('0') - 'r'), 1682356882 - (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1))).intern(), new c());
        this.p.put(h(225 - (ViewConfiguration.getDoubleTapTimeout() >> 16), true, 17 - (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)), 19 - Color.green(0), "￭\b\t\u0003\r\f\uffff\ufff0\u0005\ufffe￭\u0006\u0006\u000f￠\r\u0003\u000e\uffff").intern(), new a());
        this.p.put(a((ViewConfiguration.getMaximumDrawingCacheSize() >> 24) - 20, 258299871 - TextUtils.indexOf("", "", 0), (byte) (1 - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1))), (short) ((-29) - MotionEvent.axisFromString("")), TextUtils.getCapsMode("", 0, 0) + 1682356899).intern(), new b());
        int i2 = n + 101;
        o = i2 % 128;
        if (i2 % 2 != 0) {
        } else {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public boolean mo382() {
        int i2 = n + 25;
        int i3 = i2 % 128;
        o = i3;
        int i4 = i2 % 2;
        int i5 = i3 + 97;
        n = i5 % 128;
        int i6 = i5 % 2;
        return false;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final Class m383(String str) {
        int i2 = n + 83;
        o = i2 % 128;
        int i3 = i2 % 2;
        Class clsG = g(str, true);
        int i4 = n + 41;
        o = i4 % 128;
        if ((i4 % 2 == 0 ? (char) 31 : '>') == '>') {
            return clsG;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    abstract Class mo384(String str);

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    abstract String mo385();

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final void m386(String str) {
        int i2 = n + 77;
        int i3 = i2 % 128;
        o = i3;
        int i4 = i2 % 2;
        this.r = str;
        int i5 = i3 + 39;
        n = i5 % 128;
        if (i5 % 2 == 0) {
        } else {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final Class m387(String str) {
        int i2 = n + 37;
        o = i2 % 128;
        int i3 = i2 % 2;
        try {
            if (!Prode.m219()) {
                return g(str, false);
            }
            Class clsMo384 = mo384(str);
            int i4 = o + 111;
            n = i4 % 128;
            int i5 = i4 % 2;
            return clsMo384;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.json.adqualitysdk.sdk.i.cg
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final Object mo388(String str, List<Object> list, ch chVar) {
        int i2 = o + 89;
        n = i2 % 128;
        int i3 = i2 % 2;
        d dVar = this.p.get(str);
        try {
        } catch (Exception e2) {
            String str2 = this.q;
            StringBuilder sb = new StringBuilder();
            sb.append(h(218 - (ViewConfiguration.getMaximumFlingVelocity() >> 16), false, 29 - (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)), (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)) + 30, "\u0010\u0013\uffc1\u0006\u0019\u0006\u0004\u0016\u0015\n\u000f\b\uffc1\u000f\u0002\u0015\n\u0017\u0006\uffc1\u000e\u0006\u0015\t\u0010\u0005\uffc1\uffc8￦\u0013\u0013").intern());
            sb.append(str);
            sb.append(h(Color.blue(0) + 162, true, (ViewConfiguration.getKeyRepeatDelay() >> 16) + 1, (ViewConfiguration.getFadingEdgeLength() >> 16) + 1, "\u0000").intern());
            cn.m519(str2, sb.toString(), e2);
        }
        if ((dVar != null ? 'D' : (char) 14) != 14) {
            int i4 = n + 11;
            o = i4 % 128;
            int i5 = i4 % 2;
            Object objMo389 = dVar.mo389(list, chVar);
            int i6 = o + 121;
            n = i6 % 128;
            int i7 = i6 % 2;
            return objMo389;
        }
        String str3 = this.q;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(h(ExpandableListView.getPackedPositionGroup(0L) + 218, false, 28 - (ViewConfiguration.getKeyRepeatDelay() >> 16), 31 - (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)), "\u0010\u0013\uffc1\u0006\u0019\u0006\u0004\u0016\u0015\n\u000f\b\uffc1\u000f\u0002\u0015\n\u0017\u0006\uffc1\u000e\u0006\u0015\t\u0010\u0005\uffc1\uffc8￦\u0013\u0013").intern());
        sb2.append(str);
        sb2.append(h(TextUtils.indexOf((CharSequence) "", '0') + 218, false, 12 - (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)), 23 - TextUtils.getTrimmedLength(""), "\u0011\u0016ￂ\u0015\u0017\u0012\u0012\u0011\u0014\u0016\u0007\u0006\uffc9ￜￂ\u000f\u0007\u0016\n\u0011\u0006ￂ\u0010").intern());
        cn.m519(str3, sb2.toString(), null);
        int i8 = n + 21;
        o = i8 % 128;
        if ((i8 % 2 == 0 ? 'b' : 'M') != 'b') {
            return null;
        }
        throw null;
    }
}
