package com.json.adqualitysdk.sdk.i;

import android.content.Context;
import android.graphics.Color;
import android.graphics.ImageFormat;
import android.graphics.PointF;
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
import com.ironsource.adqualitysdk.sdk.i.at.a;
import com.ironsource.adqualitysdk.sdk.i.at.b;
import com.ironsource.adqualitysdk.sdk.i.at.d;
import com.json.adqualitysdk.sdk.ISAdQualityAdListener;
import com.json.adqualitysdk.sdk.ISAdQualityInitError;
import com.json.adqualitysdk.sdk.ISAdQualityInitListener;
import com.json.adqualitysdk.sdk.IronSourceAdQuality;
import com.json.adqualitysdk.sdk.i.av;
import com.json.adqualitysdk.sdk.i.iw;
import com.json.b4;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.AdaptiveTrackSelection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class ax {
    private static char[] a = {48022, 64183, 14753, 30876, 49028, 65271, 15855, 31969, 46031, 62189, 12598, 28724, 46888, 63003, 13574, 29796, 9480, 25618, 42757, 58937, 27458, 10858, 59720, 43089, 28502, 11822, 60708, 44076, 25362, 8741, 57797, 41159, 56246, 39606, 22945, 6300, 57231, 40698, 24053, 7392, 54227, 37582, 20793, 4148, 55079, 38418, 21773, 16635, 509, 49893, 33755, 17606, 1466, 50868, 'D', 16740, 33385, 49990, 1110, 17709, 34343, 50997, 2063, 18773};
    private static long b = 8343128566843392269L;
    private static int c = -558891673;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5274d = 35;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f5275e = -56726096;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static byte[] f5276f = {5, -1, 6, -10, 1, Ascii.CR, -17, 86, -82, 3, -5, 17, -2, -9, 0, -1, Ascii.FF, 67, -71, -7, 5, 5, 0, 3, 65, -82, 3, -3, 0, 45, 1, 3, -3, 0, Ascii.CR, 69, -82, 3, -5, 17, -2, -9, 0, -1, Ascii.FF, 67, -71, -7, 5, 5, 0, 3, 65, -82, 3, -3, 0, 45, -89, 5, Ascii.VT, -3, Ascii.VT, -20, 36, -19, 35, 33, -69, 2, -15, -3, 6, Ascii.FS, -27, -1, -3, 9, 73, -13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, Ascii.DLE, -1, -1, -4, 9, 74, -78, -1, 6, -10, 1, Ascii.CR, -17, 86, -82, 3, -5, 17, -2, -9, 0, -1, Ascii.FF, 67, -71, -7, 5, -11, 19, -4, -13, Ascii.SI, 67, -82, 3, -3, 0, 45, 3, -5, 17, -2, -9, 0, -1, Ascii.FF, 67, 5, -5, -3, -8, 4, -11, 84, -78, 5, 73, -68, -1, 1, 3, -14, 3, 76, -84, 5, 1, 78, -83, Ascii.DC2, -22, 87, -83, 1, 3, -5, 17, -2, -9, 0, -1, Ascii.FF, 67, -69, -3, -12, 84, -70, -9, 79, -69, -9, -1, 79, -84, 1, Ascii.DC2, -4, -7, 76, -84, 51, 0, 0, 0, 0, 0, 0, 0, 0};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static short[] f5277g = null;
    private static int h = 0;
    private static int i = 1;
    private at r;
    private String s;
    private ISAdQualityInitListener t;
    private iq u;
    private ba v;
    private boolean j = false;
    private List<ci> k = new ArrayList();
    private List<gd> l = new ArrayList();
    private Map<String, JSONObject> m = new HashMap();
    private Map<String, String> n = new HashMap();
    private cz o = new cz();
    private dr p = dr.m681();
    private Map<String, au> q = new HashMap();
    private boolean w = false;

    final class a extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static long f5278d = -5298576295635722139L;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static int f5279e = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static char f5280f = 0;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static int f5281g = -1688316483;
        private static int h = 83;
        private static int i = -97154854;
        private static byte[] j = {-75, -1, -7, 10, 1, -18, 10, 5, -67, Ascii.CR, -2, 6, -13, Ascii.CR, Ascii.DC4, -37, 3, -5, 17, -2, -9, 0, -1, 44, -61, -1, -7, 10, 1, -18, 10, 5, 68, -83, 10, 73, -82, 3, -5, 17, -2, -9, 0, -1, Ascii.FF, 67, -80, Ascii.DLE, -1, -80, -3, 3, -64, Ascii.SI, -20, 89, -12, -56, -1, -15, 2, 3, -1, 0, -5, 2, 83, -84, 5, 1, 78, -54, -82, 3, -5, 17, -2, -9, 0, -1, Ascii.FF, 67, -71, -7, 5, -17, 17, -3, Ascii.VT, -8, -11, Ascii.VT, -5, 5, 73, -82, 3, -3, 0, 45};
        private static short[] k = null;
        private static int l = 0;
        private static int m = 1;
        final /* synthetic */ ci n;
        final /* synthetic */ String o;
        private /* synthetic */ String p;

        /* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ax$a$a, reason: collision with other inner class name */
        final class C0339a extends il {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private static int f5282d = 192;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private static int f5283e = 0;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private static int f5284f = 1;

            C0339a() {
            }

            private static String b(int i, boolean z, int i2, int i3, String str) {
                String str2;
                Object charArray = str;
                if (str != null) {
                    charArray = str.toCharArray();
                }
                char[] cArr = (char[]) charArray;
                synchronized (com.json.adqualitysdk.sdk.i.c.f35) {
                    char[] cArr2 = new char[i3];
                    com.json.adqualitysdk.sdk.i.c.f36 = 0;
                    while (true) {
                        int i4 = com.json.adqualitysdk.sdk.i.c.f36;
                        if (i4 >= i3) {
                            break;
                        }
                        com.json.adqualitysdk.sdk.i.c.f37 = cArr[i4];
                        cArr2[com.json.adqualitysdk.sdk.i.c.f36] = (char) (com.json.adqualitysdk.sdk.i.c.f37 + i);
                        int i5 = com.json.adqualitysdk.sdk.i.c.f36;
                        cArr2[i5] = (char) (cArr2[i5] - f5282d);
                        com.json.adqualitysdk.sdk.i.c.f36 = i5 + 1;
                    }
                    if (i2 > 0) {
                        com.json.adqualitysdk.sdk.i.c.f38 = i2;
                        char[] cArr3 = new char[i3];
                        System.arraycopy(cArr2, 0, cArr3, 0, i3);
                        int i6 = com.json.adqualitysdk.sdk.i.c.f38;
                        System.arraycopy(cArr3, 0, cArr2, i3 - i6, i6);
                        int i7 = com.json.adqualitysdk.sdk.i.c.f38;
                        System.arraycopy(cArr3, i7, cArr2, 0, i3 - i7);
                    }
                    if (z) {
                        char[] cArr4 = new char[i3];
                        com.json.adqualitysdk.sdk.i.c.f36 = 0;
                        while (true) {
                            int i8 = com.json.adqualitysdk.sdk.i.c.f36;
                            if (i8 >= i3) {
                                break;
                            }
                            cArr4[i8] = cArr2[(i3 - i8) - 1];
                            com.json.adqualitysdk.sdk.i.c.f36 = i8 + 1;
                        }
                        cArr2 = cArr4;
                    }
                    str2 = new String(cArr2);
                }
                return str2;
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻐ */
            public final void mo375(Throwable th) {
                int i = f5284f + 7;
                f5283e = i % 128;
                int i2 = i % 2;
                try {
                    ((JSONObject) ax.k(ax.this).get(a.this.n.m437())).put(b(((Process.getThreadPriority(0) + 20) >> 6) + 301, false, (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)) + 2, (ViewConfiguration.getKeyRepeatDelay() >> 16) + 4, "\u0001￼\u0007￼").intern(), false);
                    int i3 = f5283e + 125;
                    f5284f = i3 % 128;
                    int i4 = i3 % 2;
                } catch (JSONException e2) {
                    com.json.adqualitysdk.sdk.i.m.m1032(b(295 - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)), false, KeyEvent.getDeadChar(0, 0) + 4, 16 - TextUtils.getCapsMode("", 0, 0), "\ufffb\u0001\uffff\f\uffdd\t\b\b\uffff�\u000e\t\f\uffe7\ufffb\b").intern(), b(290 - (ViewConfiguration.getMinimumFlingVelocity() >> 16), true, (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)) + 33, (ViewConfiguration.getScrollBarFadeDuration() >> 16) + 44, "\u0003\u0014ﾾ\u0010\r\u0012\u0001\u0003\f\f\r\u0001ﾾ\r\u0012ﾾ\u0012\u0007\f\u0007ﾾ\u0005\f\u0007\u0012\u0012\u0003\u0011ﾾ\u0010\r\u0010\u0010￣\f\r\u0011\bﾾ\f\r\u0007\u0011\u0010").intern(), e2);
                }
                t.m1046(ax.K(ax.this).new b(a.this.o, av.d.f27));
                String strIntern = b((ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)) + 294, false, (ViewConfiguration.getTapTimeout() >> 16) + 4, View.MeasureSpec.makeMeasureSpec(0, 0) + 16, "\ufffb\u0001\uffff\f\uffdd\t\b\b\uffff�\u000e\t\f\uffe7\ufffb\b").intern();
                StringBuilder sb = new StringBuilder();
                sb.append(b(289 - Process.getGidForName(""), true, Color.argb(0, 0, 0, 0) + 11, (ViewConfiguration.getDoubleTapTimeout() >> 16) + 19, "\u0007\u0012\u0007\f\u0007ﾾ\u0010\r\u0010\u0010￣ﾾ\u0005\f\u0007\u0018\u0007\n\uffff").intern());
                sb.append(a.this.n.m439());
                sb.append(b(292 - (ViewConfiguration.getMinimumFlingVelocity() >> 16), false, 7 - TextUtils.indexOf((CharSequence) "", '0', 0, 0), 10 - KeyEvent.getDeadChar(0, 0), "\u000b\n\n\u0001\uffff\u0010\u000b\u000eﾼ\uffff").intern());
                jy.m993(strIntern, sb.toString(), th, true, true, true);
                String strIntern2 = b(286 - (ViewConfiguration.getMaximumDrawingCacheSize() >> 24), false, TextUtils.indexOf((CharSequence) "", '0', 0) + 3, 11 - TextUtils.lastIndexOf("", '0'), "￦￭￣\u0006\ufff3\u0017\u0003\u000e\u000b\u0016\u001b\ufff5").intern();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(b((ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)) + 285, true, ImageFormat.getBitsPerPixel(0) + 8, 53 - (ViewConfiguration.getMaximumDrawingCacheSize() >> 24), "\u0013\u0016\u0016\tￄ\u0012￥ￄ\uffef￨\ufff7ￄ\u001d\u0018\r\u0010\u0005\u0019\ufff5\b￥\ufff7￭ￄ\u000b\u0012\r\u001e\r\u0010\u0005\r\u0018\r\u0012\rￄ\t\u0010\r\f\u001bￄ\b\t\u0016\u0016\u0019\u0007\u0007\u0013ￄ\u0016").intern());
                sb2.append(a.this.n.m439());
                sb2.append(b(286 - TextUtils.indexOf((CharSequence) "", '0'), false, TextUtils.indexOf("", "", 0, 0) + 2, (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)) + 10, "\u0013ￏ\uffc1\u0004\u0010\u000f\u000f\u0006\u0004\u0015\u0010").intern());
                com.json.adqualitysdk.sdk.i.m.m1020(strIntern2, sb2.toString());
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() {
                a.this.n.m440();
                t.m1046(ax.K(ax.this).new d(a.this.o, av.a.f24));
                String strIntern = b(293 - ImageFormat.getBitsPerPixel(0), false, 5 - (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)), 16 - Color.argb(0, 0, 0, 0), "\ufffb\u0001\uffff\f\uffdd\t\b\b\uffff�\u000e\t\f\uffe7\ufffb\b").intern();
                StringBuilder sb = new StringBuilder();
                sb.append(a.this.n.m439());
                sb.append(b(View.resolveSizeAndState(0, 0, 0) + 293, false, TextUtils.getOffsetBefore("", 0) + 15, (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)) + 35, "\u0007\u0007\u0014ﾻ\u0004\t\u0004\u000f\u0004￼\u0007\u0004\u0015\u0000\uffffﾻ\ufffe\n\t\t\u0000\ufffe\u000f\n\rﾻ\u000e\u0010\ufffe\ufffe\u0000\u000e\u000e\u0001\u0010").intern());
                com.json.adqualitysdk.sdk.i.m.m1024(strIntern, sb.toString());
                int i = f5284f + 33;
                f5283e = i % 128;
                if (!(i % 2 == 0)) {
                    int i2 = 61 / 0;
                }
            }
        }

        a(ci ciVar, String str, String str2) {
            this.n = ciVar;
            this.o = str;
            this.p = str2;
        }

        private static String b(String str, String str2, int i2, char c, String str3) {
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
            synchronized (com.json.adqualitysdk.sdk.i.j.f124) {
                char[] cArr4 = (char[]) cArr3.clone();
                char[] cArr5 = (char[]) cArr2.clone();
                cArr4[0] = (char) (c ^ cArr4[0]);
                cArr5[2] = (char) (cArr5[2] + ((char) i2));
                int length = cArr.length;
                char[] cArr6 = new char[length];
                com.json.adqualitysdk.sdk.i.j.f125 = 0;
                while (true) {
                    int i3 = com.json.adqualitysdk.sdk.i.j.f125;
                    if (i3 < length) {
                        int i4 = (i3 + 2) % 4;
                        int i5 = (i3 + 3) % 4;
                        char c2 = (char) (((cArr4[i3 % 4] * 32718) + cArr5[i4]) % 65535);
                        com.json.adqualitysdk.sdk.i.j.f126 = c2;
                        cArr5[i5] = (char) (((cArr4[i5] * 32718) + cArr5[i4]) / 65535);
                        cArr4[i5] = c2;
                        int i6 = com.json.adqualitysdk.sdk.i.j.f125;
                        cArr6[i6] = (char) (((((long) (cArr[i6] ^ cArr4[i5])) ^ f5278d) ^ ((long) f5279e)) ^ ((long) f5280f));
                        com.json.adqualitysdk.sdk.i.j.f125 = i6 + 1;
                    } else {
                        str4 = new String(cArr6);
                    }
                }
            }
            return str4;
        }

        private static String c(int i2, int i3, byte b, short s, int i4) {
            String string;
            synchronized (com.json.adqualitysdk.sdk.i.n.f132) {
                StringBuilder sb = new StringBuilder();
                int i5 = h;
                int i6 = i2 + i5;
                boolean z = i6 == -1;
                if (z) {
                    byte[] bArr = j;
                    i6 = bArr != null ? (byte) (bArr[f5281g + i4] + i5) : (short) (k[f5281g + i4] + i5);
                }
                if (i6 > 0) {
                    com.json.adqualitysdk.sdk.i.n.f136 = ((i4 + i6) - 2) + f5281g + (z ? 1 : 0);
                    com.json.adqualitysdk.sdk.i.n.f135 = b;
                    char c = (char) (i3 + i);
                    com.json.adqualitysdk.sdk.i.n.f133 = c;
                    sb.append(c);
                    com.json.adqualitysdk.sdk.i.n.f134 = com.json.adqualitysdk.sdk.i.n.f133;
                    com.json.adqualitysdk.sdk.i.n.f137 = 1;
                    while (com.json.adqualitysdk.sdk.i.n.f137 < i6) {
                        byte[] bArr2 = j;
                        if (bArr2 != null) {
                            int i7 = com.json.adqualitysdk.sdk.i.n.f136;
                            com.json.adqualitysdk.sdk.i.n.f136 = i7 - 1;
                            com.json.adqualitysdk.sdk.i.n.f133 = (char) (com.json.adqualitysdk.sdk.i.n.f134 + (((byte) (bArr2[i7] + s)) ^ com.json.adqualitysdk.sdk.i.n.f135));
                        } else {
                            short[] sArr = k;
                            int i8 = com.json.adqualitysdk.sdk.i.n.f136;
                            com.json.adqualitysdk.sdk.i.n.f136 = i8 - 1;
                            com.json.adqualitysdk.sdk.i.n.f133 = (char) (com.json.adqualitysdk.sdk.i.n.f134 + (((short) (sArr[i8] + s)) ^ com.json.adqualitysdk.sdk.i.n.f135));
                        }
                        sb.append(com.json.adqualitysdk.sdk.i.n.f133);
                        com.json.adqualitysdk.sdk.i.n.f134 = com.json.adqualitysdk.sdk.i.n.f133;
                        com.json.adqualitysdk.sdk.i.n.f137++;
                    }
                }
                string = sb.toString();
            }
            return string;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
        public final void mo375(Throwable th) {
            t.m1046(ax.K(ax.this).new b(this.o, av.d.f25));
            String strIntern = c((SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)) - 85, 97154921 - TextUtils.indexOf("", ""), (byte) (ViewConfiguration.getLongPressTimeout() >> 16), (short) (ViewConfiguration.getMaximumFlingVelocity() >> 16), 1688316491 - View.MeasureSpec.getSize(0)).intern();
            StringBuilder sb = new StringBuilder();
            sb.append(c((ViewConfiguration.getMinimumFlingVelocity() >> 16) - 84, 97154923 - TextUtils.indexOf("", "", 0, 0), (byte) (Process.myTid() >> 22), (short) (Process.myPid() >> 22), 1688316554 - ExpandableListView.getPackedPositionType(0L)).intern());
            sb.append(this.o);
            jy.m993(strIntern, sb.toString(), th, true, true, true);
            int i2 = l + 63;
            m = i2 % 128;
            if ((i2 % 2 == 0 ? '7' : (char) 2) == 2) {
            } else {
                throw null;
            }
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() throws Exception {
            int i2 = m + 111;
            l = i2 % 128;
            int i3 = i2 % 2;
            JSONObject jSONObjectG = ax.G(ax.this, this.n);
            jSONObjectG.put(b("\ua63fӚ蹉添", "\ue065ꍓ곮뙷", ViewConfiguration.getTapTimeout() >> 16, (char) (MotionEvent.axisFromString("") + 64399), "\uef23ꛝ").intern(), true);
            ax.k(ax.this).put(this.n.m437(), jSONObjectG);
            String strM435 = this.n.m435();
            if (c(ImageFormat.getBitsPerPixel(0) - 83, 97154922 - (ViewConfiguration.getScrollDefaultDelay() >> 16), (byte) (ViewConfiguration.getDoubleTapTimeout() >> 16), (short) Color.blue(0), (ViewConfiguration.getKeyRepeatTimeout() >> 16) + 1688316483).intern().equals(strM435)) {
                String strIntern = c((-84) - (Process.myTid() >> 22), (ViewConfiguration.getScrollBarSize() >> 8) + 97154921, (byte) ((-1) - TextUtils.lastIndexOf("", '0')), (short) ('0' - AndroidCharacter.getMirror('0')), (Process.myPid() >> 22) + 1688316491).intern();
                StringBuilder sb = new StringBuilder();
                sb.append(this.n.m439());
                sb.append(c((-85) - TextUtils.lastIndexOf("", '0', 0, 0), (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)) + 97154886, (byte) (ViewConfiguration.getMaximumFlingVelocity() >> 16), (short) (TextUtils.indexOf((CharSequence) "", '0') + 1), TextUtils.getCapsMode("", 0, 0) + 1688316507).intern());
                com.json.adqualitysdk.sdk.i.m.m1024(strIntern, sb.toString());
                t.m1046(ax.K(ax.this).new d(this.o, av.a.f23));
            } else if (ax.b0(ax.this, this.o)) {
                String strIntern2 = c((-84) - (KeyEvent.getMaxKeyCode() >> 16), 97154921 - (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)), (byte) (ViewConfiguration.getWindowTouchSlop() >> 8), (short) KeyEvent.normalizeMetaState(0), 1688316491 - (ViewConfiguration.getMaximumDrawingCacheSize() >> 24)).intern();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(this.n.m439());
                sb2.append(b("\ud9b9隌牤뒽", "\ue065ꍓ곮뙷", (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)) + 1687588057, (char) ((ViewConfiguration.getScrollBarFadeDuration() >> 16) + 48498), "\udc36\ude0a\uf3ec\ufaea\ud9b5ꔱ豵㾷챮䒖\u0383䃗삒\ueb22宬쒱얿\uda85ඃ玫\uded0䔉潞\u2fd6Xٲ佅藘모\uea0b⌷ꊡ\ude8e趞䋜崽፲䆯䋽").intern());
                com.json.adqualitysdk.sdk.i.m.m1024(strIntern2, sb2.toString());
                t.m1046(ax.K(ax.this).new d(this.o, av.a.f23));
                jSONObjectG.put(c((-85) - TextUtils.lastIndexOf("", '0'), (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)) + 97154953, (byte) (TextUtils.lastIndexOf("", '0', 0, 0) + 1), (short) (ViewConfiguration.getKeyRepeatTimeout() >> 16), 1688316529 - (ViewConfiguration.getDoubleTapTimeout() >> 16)).intern(), true);
            } else if (ax.c0(this.n, strM435)) {
                t.m1044(new C0339a());
                ax.V(ax.this).add(this.n);
            } else {
                jSONObjectG.put(c((Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)) - 85, KeyEvent.keyCodeFromString("") + 97154969, (byte) ((-1) - Process.getGidForName("")), (short) (ViewConfiguration.getScrollDefaultDelay() >> 16), 1688316532 - KeyEvent.normalizeMetaState(0)).intern(), false);
                t.m1046(ax.K(ax.this).new b(this.o, av.d.f30));
                String strIntern3 = c(MotionEvent.axisFromString("") - 83, 97154921 - Color.green(0), (byte) (ViewConfiguration.getDoubleTapTimeout() >> 16), (short) (ViewConfiguration.getPressedStateDuration() >> 16), (ViewConfiguration.getScrollDefaultDelay() >> 16) + 1688316491).intern();
                StringBuilder sb3 = new StringBuilder();
                sb3.append(this.p);
                sb3.append(c((-84) - View.resolveSize(0, 0), TextUtils.getOffsetAfter("", 0) + 97154886, (byte) View.getDefaultSize(0, 0), (short) TextUtils.getOffsetBefore("", 0), (ViewConfiguration.getFadingEdgeLength() >> 16) + 1688316535).intern());
                jy.m993(strIntern3, sb3.toString(), (Throwable) null, true, true, true);
                ISAdQualityInitListener iSAdQualityInitListenerM370 = ax.this.m370();
                ISAdQualityInitError iSAdQualityInitError = ISAdQualityInitError.AD_NETWORK_VERSION_NOT_SUPPORTED_YET;
                StringBuilder sb4 = new StringBuilder();
                sb4.append(this.n.m439());
                sb4.append(b("憏ᨩᕖ쓁", "\ue065ꍓ곮뙷", 1444555105 - TextUtils.getCapsMode("", 0, 0), (char) (ExpandableListView.getPackedPositionType(0L) + 49429), "⠬㍾퀨Ⲵ큔穕㦌겿煨\ue74f驰ꪨ\ude8a").intern());
                sb4.append(this.n.m435());
                sb4.append(b("熴㧒盾\ue776", "\ue065ꍓ곮뙷", Drawable.resolveOpacity(0, 0), (char) Color.argb(0, 0, 0, 0), "像ꕤ횆ᩉ⾵⭊⤲ྒ쿒\ue34c攩왈㒜땠옏즿淌\uec1aﱑ䤠ꁆ〤눴쁏槀嬻䟸\uf1b8㼚ꪡၓ䋛若阠䧫\ue9fa騋兒").intern());
                iSAdQualityInitListenerM370.adQualitySdkInitFailed(iSAdQualityInitError, sb4.toString());
                int i4 = l + 93;
                m = i4 % 128;
                int i5 = i4 % 2;
            }
            jSONObjectG.remove(b("\ua63fӚ蹉添", "\ue065ꍓ곮뙷", TextUtils.getOffsetAfter("", 0), (char) (TextUtils.indexOf((CharSequence) "", '0') + 64399), "\uef23ꛝ").intern());
        }
    }

    final class b extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ ci f5286d;

        b(ci ciVar) {
            this.f5286d = ciVar;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            this.f5286d.m442();
        }
    }

    final class c extends il {

        final class a extends il {
            a() {
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() {
                if (ax.C(ax.this)) {
                    ax.g(ax.this);
                } else {
                    ax.e(ax.this);
                }
            }
        }

        c() {
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            t.m1046(new a());
        }
    }

    final class d extends il {
        d() {
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() throws Exception {
            ax.n(ax.this, null);
        }
    }

    final class e extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ String f5290d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ Context f5291e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private /* synthetic */ String f5292f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private /* synthetic */ List f5293g;
        final /* synthetic */ List h;
        final /* synthetic */ Runnable i;

        final class a extends il {

            /* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ax$e$a$a, reason: collision with other inner class name */
            final class C0340a extends il {
                C0340a() {
                }

                @Override // com.json.adqualitysdk.sdk.i.il
                /* JADX INFO: renamed from: ﻛ */
                public final void mo225() {
                    e eVar = e.this;
                    ax.Q(ax.this, eVar.f5291e, eVar.h, eVar.i);
                }
            }

            a() {
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() {
                if (ax.C(ax.this)) {
                    t.m1040(new C0340a(), ao.m303().mo304());
                }
            }
        }

        final class b extends il {
            b() {
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() {
                e eVar = e.this;
                ax.Q(ax.this, eVar.f5291e, eVar.h, eVar.i);
            }
        }

        e(String str, Context context, String str2, List list, List list2, Runnable runnable) {
            this.f5290d = str;
            this.f5291e = context;
            this.f5292f = str2;
            this.f5293g = list;
            this.h = list2;
            this.i = runnable;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            if (ao.m303().mo326(this.f5290d, ax.l(ax.this))) {
                ax.y(ax.this, this.f5291e, this.f5292f, this.f5290d, this.f5293g, new a());
                return;
            }
            JSONObject jSONObject = new JSONObject();
            ax.a0(ax.this, this.f5290d, jSONObject);
            ax.k(ax.this).put(this.f5290d, jSONObject);
            t.m1040(new b(), ao.m303().mo304());
        }
    }

    final class f extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Context f5297d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ il f5298e;

        final class a extends il {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private static char[] f5300d = {39007, 43792, 65204, 603, 22005, 39056, 44090, 65478, 886, 22058, 39331, 44339, 61657, 1148, 22291, 39587, 34065, 46677, 58359, 7941, 18621, 34262, 45414, 57988, 7738, 19274, 34024, 45182, 60892, 6460, 19037, 34811, 45830, 60590, 6605, 21877, 34443, 45621, 61434, 'E', 13073, 26292, 39494, 52734, 207, 13361, 26567, 39805, 52762, 426, 13608, 26826, 40032, 53066, 686, 13919, 27133, 40088, 53308, 991, 14187, 27373, 40343, 53608};

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private static long f5301e = 8253714512949097315L;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private static int f5302f = 0;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            private static int f5303g = 1;
            private /* synthetic */ String h;
            private /* synthetic */ String i;
            private /* synthetic */ gd j;

            a(String str, String str2, gd gdVar) {
                this.h = str;
                this.i = str2;
                this.j = gdVar;
            }

            private static String b(int i, int i2, char c) {
                String str;
                synchronized (com.json.adqualitysdk.sdk.i.e.f50) {
                    char[] cArr = new char[i];
                    com.json.adqualitysdk.sdk.i.e.f51 = 0;
                    while (true) {
                        int i3 = com.json.adqualitysdk.sdk.i.e.f51;
                        if (i3 < i) {
                            cArr[i3] = (char) ((((long) f5300d[i2 + i3]) ^ (((long) i3) * f5301e)) ^ ((long) c));
                            com.json.adqualitysdk.sdk.i.e.f51 = i3 + 1;
                        } else {
                            str = new String(cArr);
                        }
                    }
                }
                return str;
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() {
                String strIntern = b(17 - (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)), View.MeasureSpec.getMode(0), (char) (38940 - Color.green(0))).intern();
                StringBuilder sb = new StringBuilder();
                sb.append(b((ViewConfiguration.getJumpTapTimeout() >> 16) + 23, 16 - View.resolveSize(0, 0), (char) ((ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)) + 34135)).intern());
                sb.append(this.h);
                com.json.adqualitysdk.sdk.i.m.m1024(strIntern, sb.toString());
                try {
                    f fVar = f.this;
                    ax.Z(ax.this, fVar.f5297d, this.i, this.h, this.j, fVar.f5298e);
                    int i = f5302f + 95;
                    f5303g = i % 128;
                    if ((i % 2 == 0 ? b4.R : '$') == '$') {
                    } else {
                        throw null;
                    }
                } catch (Throwable th) {
                    t.m1046(ax.K(ax.this).new b(this.h, av.d.f26));
                    ax.F(ax.this).put(this.i, jy.m989(th).toString());
                    String strIntern2 = b(16 - KeyEvent.keyCodeFromString(""), View.resolveSizeAndState(0, 0, 0), (char) (38941 - (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)))).intern();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(b(TextUtils.indexOf((CharSequence) "", '0', 0, 0) + 26, ImageFormat.getBitsPerPixel(0) + 40, (char) ((-1) - ImageFormat.getBitsPerPixel(0))).intern());
                    sb2.append(this.h);
                    jy.m993(strIntern2, sb2.toString(), th, true, true, true);
                }
            }
        }

        f(Context context, il ilVar) {
            this.f5297d = context;
            this.f5298e = ilVar;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            gd gdVarI = ay.i();
            String strD = ay.d();
            String lowerCase = strD.toLowerCase();
            ax.K(ax.this).d(lowerCase);
            t.m1044(new a(lowerCase, strD, gdVarI));
        }
    }

    final class g extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ Context f5304d;

        final class a implements aq {
            private static int a = 1106604182;
            private static int b = 19;
            private static int c = 1210132808;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private static byte[] f5306d = {Ascii.CR, -2, 6, -13, Ascii.CR, Ascii.DC4, -37, 3, -5, 17, -2, -9, 0, -1, 44, 1, 3, -5, 17, -2, -9, 0, -1, Ascii.FF, 67, -68, -1, -21, 17, -3, Ascii.VT, -8, -11, Ascii.VT, -5, 5, 73, -71, -7, 5, -3, 10, 1, -18, 10, 37, 0, 0};

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private static short[] f5307e = null;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private static int f5308f = 0;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            private static int f5309g = 1;

            a() {
            }

            private static String a(int i, int i2, byte b2, short s, int i3) {
                String string;
                synchronized (com.json.adqualitysdk.sdk.i.n.f132) {
                    StringBuilder sb = new StringBuilder();
                    int i4 = b;
                    int i5 = i + i4;
                    boolean z = i5 == -1;
                    if (z) {
                        byte[] bArr = f5306d;
                        i5 = bArr != null ? (byte) (bArr[a + i3] + i4) : (short) (f5307e[a + i3] + i4);
                    }
                    if (i5 > 0) {
                        com.json.adqualitysdk.sdk.i.n.f136 = ((i3 + i5) - 2) + a + (z ? 1 : 0);
                        com.json.adqualitysdk.sdk.i.n.f135 = b2;
                        char c2 = (char) (i2 + c);
                        com.json.adqualitysdk.sdk.i.n.f133 = c2;
                        sb.append(c2);
                        com.json.adqualitysdk.sdk.i.n.f134 = com.json.adqualitysdk.sdk.i.n.f133;
                        com.json.adqualitysdk.sdk.i.n.f137 = 1;
                        while (com.json.adqualitysdk.sdk.i.n.f137 < i5) {
                            byte[] bArr2 = f5306d;
                            if (bArr2 != null) {
                                int i6 = com.json.adqualitysdk.sdk.i.n.f136;
                                com.json.adqualitysdk.sdk.i.n.f136 = i6 - 1;
                                com.json.adqualitysdk.sdk.i.n.f133 = (char) (com.json.adqualitysdk.sdk.i.n.f134 + (((byte) (bArr2[i6] + s)) ^ com.json.adqualitysdk.sdk.i.n.f135));
                            } else {
                                short[] sArr = f5307e;
                                int i7 = com.json.adqualitysdk.sdk.i.n.f136;
                                com.json.adqualitysdk.sdk.i.n.f136 = i7 - 1;
                                com.json.adqualitysdk.sdk.i.n.f133 = (char) (com.json.adqualitysdk.sdk.i.n.f134 + (((short) (sArr[i7] + s)) ^ com.json.adqualitysdk.sdk.i.n.f135));
                            }
                            sb.append(com.json.adqualitysdk.sdk.i.n.f133);
                            com.json.adqualitysdk.sdk.i.n.f134 = com.json.adqualitysdk.sdk.i.n.f133;
                            com.json.adqualitysdk.sdk.i.n.f137++;
                        }
                    }
                    string = sb.toString();
                }
                return string;
            }

            @Override // com.json.adqualitysdk.sdk.i.aq
            /* JADX INFO: renamed from: ﻛ */
            public final void mo221() {
                int i = f5309g + 19;
                f5308f = i % 128;
                int i2 = i % 2;
                ax.L(ax.this, ao.m303().mo322());
                com.json.adqualitysdk.sdk.i.m.m1024(a((-3) - (ViewConfiguration.getMaximumFlingVelocity() >> 16), KeyEvent.getDeadChar(0, 0) - 1210132741, (byte) (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)), (short) ExpandableListView.getPackedPositionGroup(0L), View.resolveSizeAndState(0, 0, 0) - 1106604182).intern(), a(13 - View.MeasureSpec.getMode(0), (-1210132740) - TextUtils.getTrimmedLength(""), (byte) (ViewConfiguration.getScrollBarSize() >> 8), (short) (ViewConfiguration.getMinimumFlingVelocity() >> 16), (-1106604167) - TextUtils.indexOf("", "")).intern());
                ax.i(ax.this);
                int i3 = f5309g + 107;
                f5308f = i3 % 128;
                int i4 = i3 % 2;
            }
        }

        final class b extends il {
            b() {
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() {
                if (ax.C(ax.this)) {
                    ax.e(ax.this);
                }
            }
        }

        g(Context context) {
            this.f5304d = context;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            ax.L(ax.this, ao.m303().mo322());
            ax.Q(ax.this, this.f5304d, ay.g(), new b());
            ao.m303().mo321(new a());
        }
    }

    final class h implements ih {
        private /* synthetic */ Context a;
        private /* synthetic */ az b;
        private /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ String f5311d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private /* synthetic */ gd f5312e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private /* synthetic */ il f5313f;

        h(Context context, az azVar, String str, String str2, gd gdVar, il ilVar) {
            this.a = context;
            this.b = azVar;
            this.c = str;
            this.f5311d = str2;
            this.f5312e = gdVar;
            this.f5313f = ilVar;
        }

        @Override // com.json.adqualitysdk.sdk.i.ih
        /* JADX INFO: renamed from: ｋ */
        public final void mo358(String str) {
            ax.I(ax.this, this.a, this.c, this.f5311d, this.f5312e, ax.s(ax.this, this.a, str, this.b), false, this.b, this.f5313f);
        }
    }

    final class i extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ Context f5315d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private /* synthetic */ String f5316e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private /* synthetic */ az f5317f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private /* synthetic */ String f5318g;
        private /* synthetic */ String h;
        private /* synthetic */ gd i;
        private /* synthetic */ il j;

        i(Context context, String str, az azVar, String str2, String str3, gd gdVar, il ilVar) {
            this.f5315d = context;
            this.f5316e = str;
            this.f5317f = azVar;
            this.f5318g = str2;
            this.h = str3;
            this.i = gdVar;
            this.j = ilVar;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            ax.I(ax.this, this.f5315d, this.f5318g, this.h, this.i, ax.s(ax.this, this.f5315d, this.f5316e, this.f5317f), true, this.f5317f, this.j);
        }
    }

    final class j implements ii {
        private static int a = -1532787317;
        private static int b = 3;
        private static int c = 1829743144;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static byte[] f5319d = {68, 62, 65, 78, 71, 48, 61, 0};

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static short[] f5320e = null;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static int f5321f = 0;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static int f5322g = 1;

        j() {
        }

        private static String a(int i, int i2, byte b2, short s, int i3) {
            String string;
            synchronized (com.json.adqualitysdk.sdk.i.n.f132) {
                StringBuilder sb = new StringBuilder();
                int i4 = b;
                int i5 = i + i4;
                boolean z = i5 == -1;
                if (z) {
                    byte[] bArr = f5319d;
                    i5 = bArr != null ? (byte) (bArr[a + i3] + i4) : (short) (f5320e[a + i3] + i4);
                }
                if (i5 > 0) {
                    com.json.adqualitysdk.sdk.i.n.f136 = ((i3 + i5) - 2) + a + (z ? 1 : 0);
                    com.json.adqualitysdk.sdk.i.n.f135 = b2;
                    char c2 = (char) (i2 + c);
                    com.json.adqualitysdk.sdk.i.n.f133 = c2;
                    sb.append(c2);
                    com.json.adqualitysdk.sdk.i.n.f134 = com.json.adqualitysdk.sdk.i.n.f133;
                    com.json.adqualitysdk.sdk.i.n.f137 = 1;
                    while (com.json.adqualitysdk.sdk.i.n.f137 < i5) {
                        byte[] bArr2 = f5319d;
                        if (bArr2 != null) {
                            int i6 = com.json.adqualitysdk.sdk.i.n.f136;
                            com.json.adqualitysdk.sdk.i.n.f136 = i6 - 1;
                            com.json.adqualitysdk.sdk.i.n.f133 = (char) (com.json.adqualitysdk.sdk.i.n.f134 + (((byte) (bArr2[i6] + s)) ^ com.json.adqualitysdk.sdk.i.n.f135));
                        } else {
                            short[] sArr = f5320e;
                            int i7 = com.json.adqualitysdk.sdk.i.n.f136;
                            com.json.adqualitysdk.sdk.i.n.f136 = i7 - 1;
                            com.json.adqualitysdk.sdk.i.n.f133 = (char) (com.json.adqualitysdk.sdk.i.n.f134 + (((short) (sArr[i7] + s)) ^ com.json.adqualitysdk.sdk.i.n.f135));
                        }
                        sb.append(com.json.adqualitysdk.sdk.i.n.f133);
                        com.json.adqualitysdk.sdk.i.n.f134 = com.json.adqualitysdk.sdk.i.n.f133;
                        com.json.adqualitysdk.sdk.i.n.f137++;
                    }
                }
                string = sb.toString();
            }
            return string;
        }

        @Override // com.json.adqualitysdk.sdk.i.ii
        /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
        public final JSONObject mo376(String str, JSONObject jSONObject) {
            int i = f5321f + 125;
            f5322g = i % 128;
            int i2 = i % 2;
            if (!(str.equals(a(TextUtils.indexOf((CharSequence) "", '0', 0, 0) + 6, Color.red(0) + (-1829743028), (byte) ExpandableListView.getPackedPositionType(0L), (short) (Drawable.resolveOpacity(0, 0) + (-65)), 1532787317 - (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1))).intern()))) {
                return null;
            }
            JSONObject jSONObjectM372 = ax.this.m372();
            int i3 = f5322g + 85;
            f5321f = i3 % 128;
            int i4 = i3 % 2;
            return jSONObjectM372;
        }
    }

    final class k extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static int[] f5323d = {-1867407875, 405282442, -1597567316, 2072723809, 203207446, -490811118, 1692535174, -1515020267, 89421351, 865196332, -890738070, 1194930265, -809144902, 1771541560, 1955700562, -1001843995, 20105590, 2057622871};

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static int f5324e = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static int f5325f = 1;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private /* synthetic */ String f5326g;
        private /* synthetic */ Context h;
        private /* synthetic */ String i;
        private /* synthetic */ List j;
        private /* synthetic */ il k;

        k(String str, Context context, String str2, List list, il ilVar) {
            this.f5326g = str;
            this.h = context;
            this.i = str2;
            this.j = list;
            this.k = ilVar;
        }

        private static String b(int[] iArr, int i) {
            String str;
            synchronized (com.json.adqualitysdk.sdk.i.b.f33) {
                char[] cArr = new char[4];
                char[] cArr2 = new char[iArr.length << 1];
                int[] iArr2 = (int[]) f5323d.clone();
                com.json.adqualitysdk.sdk.i.b.f34 = 0;
                while (true) {
                    int i2 = com.json.adqualitysdk.sdk.i.b.f34;
                    if (i2 < iArr.length) {
                        cArr[0] = (char) (iArr[i2] >> 16);
                        cArr[1] = (char) iArr[i2];
                        cArr[2] = (char) (iArr[i2 + 1] >> 16);
                        cArr[3] = (char) iArr[i2 + 1];
                        com.json.adqualitysdk.sdk.i.b.f31 = (cArr[0] << 16) + cArr[1];
                        com.json.adqualitysdk.sdk.i.b.f32 = (cArr[2] << 16) + cArr[3];
                        com.json.adqualitysdk.sdk.i.b.m390(iArr2);
                        for (int i3 = 0; i3 < 16; i3++) {
                            int i4 = com.json.adqualitysdk.sdk.i.b.f31 ^ iArr2[i3];
                            com.json.adqualitysdk.sdk.i.b.f31 = i4;
                            com.json.adqualitysdk.sdk.i.b.f32 = com.json.adqualitysdk.sdk.i.b.m391(i4) ^ com.json.adqualitysdk.sdk.i.b.f32;
                            int i5 = com.json.adqualitysdk.sdk.i.b.f31;
                            com.json.adqualitysdk.sdk.i.b.f31 = com.json.adqualitysdk.sdk.i.b.f32;
                            com.json.adqualitysdk.sdk.i.b.f32 = i5;
                        }
                        int i6 = com.json.adqualitysdk.sdk.i.b.f31;
                        com.json.adqualitysdk.sdk.i.b.f31 = com.json.adqualitysdk.sdk.i.b.f32;
                        com.json.adqualitysdk.sdk.i.b.f32 = i6;
                        com.json.adqualitysdk.sdk.i.b.f32 = i6 ^ iArr2[16];
                        com.json.adqualitysdk.sdk.i.b.f31 ^= iArr2[17];
                        int i7 = com.json.adqualitysdk.sdk.i.b.f32;
                        int i8 = com.json.adqualitysdk.sdk.i.b.f31;
                        cArr[0] = (char) (i8 >>> 16);
                        cArr[1] = (char) i8;
                        int i9 = com.json.adqualitysdk.sdk.i.b.f32;
                        cArr[2] = (char) (i9 >>> 16);
                        cArr[3] = (char) i9;
                        com.json.adqualitysdk.sdk.i.b.m390(iArr2);
                        int i10 = com.json.adqualitysdk.sdk.i.b.f34;
                        cArr2[i10 << 1] = cArr[0];
                        cArr2[(i10 << 1) + 1] = cArr[1];
                        cArr2[(i10 << 1) + 2] = cArr[2];
                        cArr2[(i10 << 1) + 3] = cArr[3];
                        com.json.adqualitysdk.sdk.i.b.f34 = i10 + 2;
                    } else {
                        str = new String(cArr2, 0, i);
                    }
                }
            }
            return str;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            String strIntern = b(new int[]{688055219, -1324286704, -498988565, 1550955134, 333791451, -652219175, -1615536869, 823618529}, ((Process.getThreadPriority(0) + 20) >> 6) + 16).intern();
            StringBuilder sb = new StringBuilder();
            sb.append(b(new int[]{1401064910, -1364306625, -1754265038, -789656638, 1860325793, 849909751, -857350018, -2141400995, 1920017517, -2071168259, 1677348870, -1337490221}, (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)) + 23).intern());
            sb.append(this.f5326g);
            com.json.adqualitysdk.sdk.i.m.m1024(strIntern, sb.toString());
            try {
                ax.P(ax.this, this.h, this.i, this.f5326g, this.j, this.k);
                int i = f5325f + 7;
                f5324e = i % 128;
                int i2 = i % 2;
            } catch (Throwable th) {
                if (ax.K(ax.this) != null) {
                    t.m1046(ax.K(ax.this).new b(this.f5326g, av.d.f26));
                }
                ax.F(ax.this).put(this.i, jy.m989(th).toString());
                String strIntern2 = b(new int[]{688055219, -1324286704, -498988565, 1550955134, 333791451, -652219175, -1615536869, 823618529}, (Process.myTid() >> 22) + 16).intern();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(b(new int[]{1749529011, 2073371888, -1118185754, -1158179762, -1596907574, -650648341, -1220816365, -580695149, -659424281, 420685592, -817787776, 224847081, -1821201353, -1302400787}, View.resolveSize(0, 0) + 25).intern());
                sb2.append(this.f5326g);
                jy.m993(strIntern2, sb2.toString(), th, true, true, true);
            }
        }
    }

    final class l extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static long f5327d = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static int f5328e = -1983719327;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static char f5329f = 0;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static int f5330g = 0;
        private static int h = 1;
        final /* synthetic */ ci i;
        private /* synthetic */ gd j;
        private /* synthetic */ String k;
        private /* synthetic */ boolean l;
        private /* synthetic */ il m;
        private /* synthetic */ String n;
        private /* synthetic */ az o;
        private /* synthetic */ Context p;

        final class a extends il {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private static char f5331d = 57923;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private static char f5332e = 9957;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private static char f5333f = 43430;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            private static char f5334g = 12641;
            private static int h = 0;
            private static int i = 1;

            a() {
            }

            private static String b(String str, int i2) {
                String str2;
                Object charArray = str;
                if (str != null) {
                    charArray = str.toCharArray();
                }
                char[] cArr = (char[]) charArray;
                synchronized (com.json.adqualitysdk.sdk.i.o.f139) {
                    char[] cArr2 = new char[cArr.length];
                    com.json.adqualitysdk.sdk.i.o.f138 = 0;
                    char[] cArr3 = new char[2];
                    while (true) {
                        int i3 = com.json.adqualitysdk.sdk.i.o.f138;
                        if (i3 < cArr.length) {
                            cArr3[0] = cArr[i3];
                            cArr3[1] = cArr[i3 + 1];
                            int i4 = 58224;
                            for (int i5 = 0; i5 < 16; i5++) {
                                cArr3[1] = (char) (cArr3[1] - (((cArr3[0] + i4) ^ ((cArr3[0] << 4) + f5333f)) ^ ((cArr3[0] >>> 5) + f5334g)));
                                cArr3[0] = (char) (cArr3[0] - (((cArr3[1] + i4) ^ ((cArr3[1] << 4) + f5331d)) ^ ((cArr3[1] >>> 5) + f5332e)));
                                i4 -= 40503;
                            }
                            int i6 = com.json.adqualitysdk.sdk.i.o.f138;
                            cArr2[i6] = cArr3[0];
                            cArr2[i6 + 1] = cArr3[1];
                            com.json.adqualitysdk.sdk.i.o.f138 = i6 + 2;
                        } else {
                            str2 = new String(cArr2, 0, i2);
                        }
                    }
                }
                return str2;
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() {
                int i2 = h + 15;
                i = i2 % 128;
                int i3 = i2 % 2;
                if (ax.F(ax.this).containsKey(l.this.i.m437())) {
                    return;
                }
                t.m1046(ax.K(ax.this).new b(l.this.i.m437(), av.d.f29));
                l lVar = l.this;
                JSONObject jSONObjectG = ax.G(ax.this, lVar.i);
                try {
                    jSONObjectG.put(b("퓓鸆纇・", 2 - TextUtils.lastIndexOf("", '0', 0, 0)).intern(), false);
                } catch (JSONException unused) {
                }
                ax.k(ax.this).put(l.this.i.m437(), jSONObjectG);
                String strE = ax.K(ax.this).e(l.this.i.m437());
                ax.F(ax.this).put(l.this.i.m437(), strE);
                ISAdQualityInitListener iSAdQualityInitListenerM370 = ax.this.m370();
                ISAdQualityInitError iSAdQualityInitError = ISAdQualityInitError.AD_NETWORK_SDK_REQUIRES_NEWER_AD_QUALITY_SDK;
                StringBuilder sb = new StringBuilder();
                sb.append(l.this.i.m439());
                sb.append(b("門㭃ᎷꀿⰔ\uf800\ue55e뙃\uf468棻坘囊砲\ud9b2", Process.getGidForName("") + 14).intern());
                sb.append(l.this.i.m435());
                sb.append(b("菳嶌\uf450ḥ\u87a12ᄔ좷㥚衭톊ﺣ쳠်茙뢒門㭃ᎷꀿⰔ\uf800\ue55e뙃\uf468棻坘囊砲\ud9b2", ((Process.getThreadPriority(0) + 20) >> 6) + 29).intern());
                sb.append(l.this.i.m432());
                sb.append(b("廂克ℶ\u0bda⬇᧤ㆩ\udc27㒩꾩", 8 - MotionEvent.axisFromString("")).intern());
                iSAdQualityInitListenerM370.adQualitySdkInitFailed(iSAdQualityInitError, sb.toString());
                jy.m993(b("\ue649喝盙혹샽掯Ẍ彫\uddae\uf340㷈䃁톃\ueaa4\ue55e뙃", (Process.myPid() >> 22) + 16).intern(), strE, (Throwable) null, true, true, true);
                int i4 = i + 27;
                h = i4 % 128;
                int i5 = i4 % 2;
            }
        }

        l(ci ciVar, gd gdVar, String str, boolean z, il ilVar, String str2, az azVar, Context context) {
            this.i = ciVar;
            this.j = gdVar;
            this.k = str;
            this.l = z;
            this.m = ilVar;
            this.n = str2;
            this.o = azVar;
            this.p = context;
        }

        private static String b(String str, String str2, int i, char c, String str3) {
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
            synchronized (com.json.adqualitysdk.sdk.i.j.f124) {
                char[] cArr4 = (char[]) cArr3.clone();
                char[] cArr5 = (char[]) cArr2.clone();
                cArr4[0] = (char) (c ^ cArr4[0]);
                cArr5[2] = (char) (cArr5[2] + ((char) i));
                int length = cArr.length;
                char[] cArr6 = new char[length];
                com.json.adqualitysdk.sdk.i.j.f125 = 0;
                while (true) {
                    int i2 = com.json.adqualitysdk.sdk.i.j.f125;
                    if (i2 < length) {
                        int i3 = (i2 + 2) % 4;
                        int i4 = (i2 + 3) % 4;
                        char c2 = (char) (((cArr4[i2 % 4] * 32718) + cArr5[i3]) % 65535);
                        com.json.adqualitysdk.sdk.i.j.f126 = c2;
                        cArr5[i4] = (char) (((cArr4[i4] * 32718) + cArr5[i3]) / 65535);
                        cArr4[i4] = c2;
                        int i5 = com.json.adqualitysdk.sdk.i.j.f125;
                        cArr6[i5] = (char) (((((long) (cArr[i5] ^ cArr4[i4])) ^ f5327d) ^ ((long) f5328e)) ^ ((long) f5329f));
                        com.json.adqualitysdk.sdk.i.j.f125 = i5 + 1;
                    } else {
                        str4 = new String(cArr6);
                    }
                }
            }
            return str4;
        }

        /* JADX WARN: Removed duplicated region for block: B:38:0x0147  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x0163  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x0167  */
        /* JADX WARN: Removed duplicated region for block: B:62:? A[RETURN, SYNTHETIC] */
        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void mo225() {
            /*
                Method dump skipped, instruction units count: 419
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.ax.l.mo225():void");
        }
    }

    final class m extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ Runnable f5335d;

        m(Runnable runnable) {
            this.f5335d = runnable;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            this.f5335d.run();
        }
    }

    final class n extends il {
        n() {
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            Iterator it = ax.p(ax.this).iterator();
            while (it.hasNext()) {
                ((ci) it.next()).m442();
            }
            ax.V(ax.this).clear();
            ax.u(ax.this, null);
        }
    }

    final class o extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Runnable f5337d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private /* synthetic */ Context f5338e;

        final class a extends il {
            a() {
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() {
                o.this.f5337d.run();
            }
        }

        o(Runnable runnable, Context context) {
            this.f5337d = runnable;
            this.f5338e = context;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            t.m1046(new a());
            ax.O(ax.this, this.f5338e);
        }
    }

    public ax(iq iqVar, ag agVar, String str, at atVar, ISAdQualityInitListener iSAdQualityInitListener) {
        this.u = iqVar;
        ba baVar = new ba(t.m1045(), agVar);
        this.v = baVar;
        jy.m991(baVar);
        this.v.m397(new j());
        this.s = str;
        this.r = atVar;
        this.t = iSAdQualityInitListener;
    }

    private void A(ci ciVar, String str) {
        String strM437 = ciVar.m437();
        t.m1046(this.r.new d(strM437, av.a.f22));
        t.m1046(new a(ciVar, strM437, str));
        int i2 = h + 101;
        i = i2 % 128;
        int i3 = i2 % 2;
    }

    private void B(String str, az azVar) {
        int i2 = h + 69;
        i = i2 % 128;
        int i3 = i2 % 2;
        if ((azVar != null ? 'K' : 'R') == 'K') {
            h().put(str, H(azVar.m380()));
            int i4 = i + 49;
            h = i4 % 128;
            int i5 = i4 % 2;
        }
        int i6 = h + 51;
        i = i6 % 128;
        int i7 = i6 % 2;
    }

    static /* synthetic */ boolean C(ax axVar) {
        int i2 = i + 1;
        h = i2 % 128;
        int i3 = i2 % 2;
        boolean zC = axVar.c();
        int i4 = h + 97;
        i = i4 % 128;
        if (i4 % 2 != 0) {
            return zC;
        }
        throw null;
    }

    static /* synthetic */ boolean D(ci ciVar) {
        int i2 = h + 39;
        i = i2 % 128;
        boolean z = i2 % 2 != 0;
        boolean zJ = J(ciVar);
        if (!z) {
            int i3 = 5 / 0;
        }
        return zJ;
    }

    private static String E(int i2, int i3, char c2) {
        String str;
        synchronized (com.json.adqualitysdk.sdk.i.e.f50) {
            char[] cArr = new char[i2];
            com.json.adqualitysdk.sdk.i.e.f51 = 0;
            while (true) {
                int i4 = com.json.adqualitysdk.sdk.i.e.f51;
                if (i4 < i2) {
                    cArr[i4] = (char) ((((long) a[i3 + i4]) ^ (((long) i4) * b)) ^ ((long) c2));
                    com.json.adqualitysdk.sdk.i.e.f51 = i4 + 1;
                } else {
                    str = new String(cArr);
                }
            }
        }
        return str;
    }

    static /* synthetic */ Map F(ax axVar) {
        int i2 = h + 125;
        i = i2 % 128;
        if ((i2 % 2 == 0 ? '8' : (char) 28) != 28) {
            axVar.m();
            throw null;
        }
        Map<String, String> mapM = axVar.m();
        int i3 = h + 123;
        i = i3 % 128;
        int i4 = i3 % 2;
        return mapM;
    }

    static /* synthetic */ JSONObject G(ax axVar, ci ciVar) {
        int i2 = i + 83;
        h = i2 % 128;
        if ((i2 % 2 != 0 ? '[' : (char) 29) != 29) {
            M(ciVar);
            throw null;
        }
        JSONObject jSONObjectM = M(ciVar);
        int i3 = i + 99;
        h = i3 % 128;
        int i4 = i3 % 2;
        return jSONObjectM;
    }

    private static JSONObject H(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ib.f75, str);
        } catch (JSONException e2) {
            com.json.adqualitysdk.sdk.i.m.m1032(E(15 - MotionEvent.axisFromString(""), KeyEvent.normalizeMetaState(0), (char) (48084 - TextUtils.indexOf((CharSequence) "", '0'))).intern(), t((ViewConfiguration.getPressedStateDuration() >> 16) + 2, (ViewConfiguration.getLongPressTimeout() >> 16) + 56726165, (byte) (ViewConfiguration.getFadingEdgeLength() >> 16), (short) (ViewConfiguration.getWindowTouchSlop() >> 8), (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)) + 558891769).intern(), e2);
        }
        int i2 = h + 11;
        i = i2 % 128;
        int i3 = i2 % 2;
        return jSONObject;
    }

    static /* synthetic */ void I(ax axVar, Context context, String str, String str2, gd gdVar, ci ciVar, boolean z, az azVar, il ilVar) {
        int i2 = h + 53;
        i = i2 % 128;
        int i3 = i2 % 2;
        axVar.N(context, str, str2, gdVar, ciVar, z, azVar, ilVar);
        int i4 = i + 111;
        h = i4 % 128;
        if ((i4 % 2 != 0 ? ';' : '.') != '.') {
            int i5 = 15 / 0;
        }
    }

    private static boolean J(ci ciVar) {
        int i2 = h + 121;
        i = i2 % 128;
        int i3 = i2 % 2;
        String strM432 = ciVar.m432();
        if (strM432 != null) {
            if (!(jz.m1000(IronSourceAdQuality.getSDKVersion(), strM432) >= 0)) {
                int i4 = h + 113;
                i = i4 % 128;
                if (i4 % 2 == 0) {
                    throw null;
                }
                return false;
            }
        }
        return true;
    }

    static /* synthetic */ at K(ax axVar) {
        int i2 = i;
        int i3 = i2 + 53;
        h = i3 % 128;
        char c2 = i3 % 2 != 0 ? 'G' : 'I';
        at atVar = axVar.r;
        if (c2 == 'G') {
            throw null;
        }
        int i4 = i2 + 83;
        h = i4 % 128;
        if ((i4 % 2 != 0 ? '\\' : '\f') == '\f') {
            return atVar;
        }
        throw null;
    }

    static /* synthetic */ Map L(ax axVar, Map map) {
        int i2 = h + 33;
        int i3 = i2 % 128;
        i = i3;
        int i4 = i2 % 2;
        axVar.q = map;
        int i5 = i3 + 15;
        h = i5 % 128;
        if (!(i5 % 2 != 0)) {
            return map;
        }
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v5, types: [org.json.JSONObject] */
    private static JSONObject M(ci ciVar) {
        ?? r0;
        int i2 = i + 65;
        h = i2 % 128;
        boolean z = i2 % 2 != 0;
        try {
        } catch (JSONException e2) {
            com.json.adqualitysdk.sdk.i.m.m1032(E(16 - Drawable.resolveOpacity(0, 0), TextUtils.indexOf("", "", 0), (char) (TextUtils.lastIndexOf("", '0', 0, 0) + 48086)).intern(), t(Color.argb(0, 0, 0, 0) + 2, (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)) + 56726164, (byte) (1 - (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1))), (short) (ViewConfiguration.getMaximumFlingVelocity() >> 16), TextUtils.getTrimmedLength("") + 558891768).intern(), e2);
            r0 = z;
        }
        if (z) {
            H(ciVar.m435()).put(ib.f78, ciVar.m438());
            throw null;
        }
        JSONObject jSONObjectH = H(ciVar.m435());
        jSONObjectH.put(ib.f78, ciVar.m438());
        r0 = jSONObjectH;
        int i3 = h + 27;
        i = i3 % 128;
        if (i3 % 2 != 0) {
            return r0;
        }
        throw null;
    }

    private void N(Context context, String str, String str2, gd gdVar, ci ciVar, boolean z, az azVar, il ilVar) {
        t.m1044(new l(ciVar, gdVar, str2, z, ilVar, str, azVar, context));
        int i2 = i + 81;
        h = i2 % 128;
        if (i2 % 2 == 0) {
        } else {
            throw null;
        }
    }

    static /* synthetic */ void O(ax axVar, Context context) {
        int i2 = i + 101;
        h = i2 % 128;
        int i3 = i2 % 2;
        axVar.q(context);
        int i4 = h + 61;
        i = i4 % 128;
        if ((i4 % 2 == 0 ? '?' : '/') != '?') {
            return;
        }
        int i5 = 33 / 0;
    }

    static /* synthetic */ void P(ax axVar, Context context, String str, String str2, List list, il ilVar) {
        int i2 = i + 93;
        h = i2 % 128;
        boolean z = i2 % 2 == 0;
        axVar.r(context, str, str2, list, ilVar);
        if (!z) {
            throw null;
        }
        int i3 = h + 17;
        i = i3 % 128;
        int i4 = i3 % 2;
    }

    static /* synthetic */ void Q(ax axVar, Context context, List list, Runnable runnable) {
        int i2 = h + 107;
        i = i2 % 128;
        boolean z = i2 % 2 == 0;
        axVar.Y(context, list, runnable);
        if (z) {
            throw null;
        }
        int i3 = i + 111;
        h = i3 % 128;
        if (i3 % 2 != 0) {
            throw null;
        }
    }

    private void R(String str, JSONObject jSONObject) {
        t.m1046(this.r.new d(str, av.a.f23));
        if (jSONObject == null) {
            return;
        }
        int i2 = h + 103;
        i = i2 % 128;
        int i3 = i2 % 2;
        try {
            jSONObject.put(t((-33) - ((byte) KeyEvent.getModifierMetaStateMask()), (ViewConfiguration.getKeyRepeatDelay() >> 16) + 56726196, (byte) TextUtils.getCapsMode("", 0, 0), (short) (ViewConfiguration.getMaximumDrawingCacheSize() >> 24), (ViewConfiguration.getDoubleTapTimeout() >> 16) + 558891766).intern(), true);
            int i4 = h + 117;
            i = i4 % 128;
            int i5 = i4 % 2;
        } catch (JSONException unused) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00b3, code lost:
    
        if ((com.json.adqualitysdk.sdk.i.jz.m1000(r6, r5.m436()) <= 0 ? '&' : '_') != '&') goto L43;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static boolean S(com.json.adqualitysdk.sdk.i.ci r5, java.lang.String r6) {
        /*
            int r0 = com.json.adqualitysdk.sdk.i.ax.i
            int r0 = r0 + 63
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.ax.h = r1
            int r0 = r0 % 2
            java.lang.String r1 = ""
            r2 = 1
            r3 = 0
            if (r0 == 0) goto L39
            r0 = 118(0x76, float:1.65E-43)
            int r4 = android.text.TextUtils.getCapsMode(r1, r2, r3)
            int r0 = r0 >> r4
            int r4 = android.graphics.Color.green(r3)
            int r4 = 44 - r4
            int r1 = android.os.Process.getGidForName(r1)
            int r1 = r1 + 11472
            char r1 = (char) r1
            java.lang.String r0 = E(r0, r4, r1)
            java.lang.String r0 = r0.intern()
            boolean r0 = r0.equals(r6)
            if (r0 != 0) goto L34
            r0 = 0
            goto L35
        L34:
            r0 = 1
        L35:
            if (r0 == 0) goto L5f
            goto Lb8
        L39:
            int r0 = android.text.TextUtils.getCapsMode(r1, r3, r3)
            int r0 = 7 - r0
            int r4 = android.graphics.Color.green(r3)
            int r4 = 47 - r4
            int r1 = android.os.Process.getGidForName(r1)
            int r1 = 16573 - r1
            char r1 = (char) r1
            java.lang.String r0 = E(r0, r4, r1)
            java.lang.String r0 = r0.intern()
            boolean r0 = r0.equals(r6)
            if (r0 != 0) goto L5c
            r0 = 1
            goto L5d
        L5c:
            r0 = 0
        L5d:
            if (r0 == 0) goto Lb8
        L5f:
            boolean r0 = android.text.TextUtils.isEmpty(r6)
            if (r0 != 0) goto L67
            r0 = 0
            goto L68
        L67:
            r0 = 1
        L68:
            if (r0 == 0) goto L6b
            goto Lb5
        L6b:
            int r0 = com.json.adqualitysdk.sdk.i.ax.h
            int r0 = r0 + 53
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.ax.i = r1
            int r0 = r0 % 2
            if (r0 != 0) goto L79
            r0 = 0
            goto L7a
        L79:
            r0 = 1
        L7a:
            if (r0 == 0) goto L90
            java.lang.String r0 = r5.m433()
            int r0 = com.json.adqualitysdk.sdk.i.jz.m1000(r6, r0)
            r1 = 62
            if (r0 < 0) goto L8b
            r0 = 78
            goto L8d
        L8b:
            r0 = 62
        L8d:
            if (r0 == r1) goto Lb5
            goto La2
        L90:
            java.lang.String r0 = r5.m433()
            int r0 = com.json.adqualitysdk.sdk.i.jz.m1000(r6, r0)
            r1 = 10
            int r1 = r1 / r3
            if (r0 < 0) goto L9f
            r0 = 1
            goto La0
        L9f:
            r0 = 0
        La0:
            if (r0 == 0) goto Lb5
        La2:
            java.lang.String r5 = r5.m436()
            int r5 = com.json.adqualitysdk.sdk.i.jz.m1000(r6, r5)
            r6 = 38
            if (r5 > 0) goto Lb1
            r5 = 38
            goto Lb3
        Lb1:
            r5 = 95
        Lb3:
            if (r5 == r6) goto Lb8
        Lb5:
            return r3
        Lb6:
            r5 = move-exception
            throw r5
        Lb8:
            int r5 = com.json.adqualitysdk.sdk.i.ax.h
            int r5 = r5 + 13
            int r6 = r5 % 128
            com.json.adqualitysdk.sdk.i.ax.i = r6
            int r5 = r5 % 2
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.ax.S(com.ironsource.adqualitysdk.sdk.i.ci, java.lang.String):boolean");
    }

    private boolean T(String str) {
        int i2 = h + 125;
        i = i2 % 128;
        if ((i2 % 2 == 0 ? ' ' : '!') != '!') {
            this.q.containsKey(str);
            throw null;
        }
        if ((this.q.containsKey(str) ? '(' : (char) 11) != 11 && this.q.get(str).m360(this.s)) {
            int i3 = i + 57;
            h = i3 % 128;
            return i3 % 2 == 0;
        }
        int i4 = i + 119;
        h = i4 % 128;
        int i5 = i4 % 2;
        return false;
    }

    private ci U(Context context, String str, az azVar) {
        int i2 = i + 119;
        h = i2 % 128;
        int i3 = i2 % 2;
        if (str == null) {
            return null;
        }
        ci ciVar = new ci(context, new dh(str, this.p), this.v, this.o, azVar);
        int i4 = i + 101;
        h = i4 % 128;
        int i5 = i4 % 2;
        return ciVar;
    }

    static /* synthetic */ List V(ax axVar) {
        int i2 = h + 37;
        i = i2 % 128;
        int i3 = i2 % 2;
        List<ci> listF = axVar.f();
        int i4 = h + 13;
        i = i4 % 128;
        if ((i4 % 2 == 0 ? 'J' : 'M') == 'M') {
            return listF;
        }
        throw null;
    }

    private void W() {
        ArrayList<ci> arrayList = new ArrayList();
        Iterator<ci> it = d().iterator();
        while (true) {
            if ((it.hasNext() ? 'Y' : (char) 16) != 'Y') {
                break;
            }
            int i2 = i + 61;
            h = i2 % 128;
            int i3 = i2 % 2;
            ci next = it.next();
            if (T(next.m437())) {
                int i4 = h + 51;
                i = i4 % 128;
                int i5 = i4 % 2;
                arrayList.add(next);
            }
        }
        for (ci ciVar : arrayList) {
            String strIntern = E(View.MeasureSpec.getMode(0) + 16, (-1) - ImageFormat.getBitsPerPixel(0), (char) ((ViewConfiguration.getKeyRepeatDelay() >> 16) + 48085)).intern();
            StringBuilder sb = new StringBuilder();
            sb.append(E(10 - (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)), (ViewConfiguration.getLongPressTimeout() >> 16) + 54, (char) ((-1) - ExpandableListView.getPackedPositionChild(0L))).intern());
            sb.append(ciVar.m439());
            sb.append(t(View.combineMeasuredStates(0, 0) - 25, 56726128 - TextUtils.getCapsMode("", 0, 0), (byte) (ViewConfiguration.getKeyRepeatDelay() >> 16), (short) TextUtils.indexOf("", ""), ((byte) KeyEvent.getModifierMetaStateMask()) + Ascii.GS).intern());
            com.json.adqualitysdk.sdk.i.m.m1026(strIntern, sb.toString());
            String strM437 = ciVar.m437();
            R(strM437, h().get(strM437));
            t.m1044(new b(ciVar));
            f().remove(ciVar);
        }
        int i6 = h + 63;
        i = i6 % 128;
        int i7 = i6 % 2;
    }

    private void X(Context context, il ilVar) {
        t.m1046(new f(context, ilVar));
        int i2 = h + 35;
        i = i2 % 128;
        int i3 = i2 % 2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0063, code lost:
    
        r14.run();
        r12 = com.json.adqualitysdk.sdk.i.ax.i + 85;
        com.json.adqualitysdk.sdk.i.ax.h = r12 % 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0070, code lost:
    
        if ((r12 % 2) == 0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0072, code lost:
    
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0073, code lost:
    
        if (r1 == true) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0075, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0077, code lost:
    
        throw null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void Y(android.content.Context r12, java.util.List<java.lang.String> r13, java.lang.Runnable r14) {
        /*
            r11 = this;
        L0:
            r0 = 1
            r1 = 0
            if (r13 == 0) goto L63
            int r2 = r13.size()
            if (r2 <= 0) goto L63
            int r2 = com.json.adqualitysdk.sdk.i.ax.i
            int r2 = r2 + 45
            int r3 = r2 % 128
            com.json.adqualitysdk.sdk.i.ax.h = r3
            int r2 = r2 % 2
            if (r2 == 0) goto L26
            java.lang.Object r2 = r13.remove(r1)
            java.lang.String r2 = (java.lang.String) r2
            boolean r3 = com.json.adqualitysdk.sdk.i.ay.b(r2)
            if (r3 == 0) goto L23
            r1 = 1
        L23:
            if (r1 == r0) goto L33
            goto L0
        L26:
            java.lang.Object r0 = r13.remove(r1)
            r2 = r0
            java.lang.String r2 = (java.lang.String) r2
            boolean r0 = com.json.adqualitysdk.sdk.i.ay.b(r2)
            if (r0 == 0) goto L0
        L33:
            r7 = r2
            java.util.List r8 = com.json.adqualitysdk.sdk.i.ay.e(r7)
            java.lang.String r5 = o(r8)
            if (r5 == 0) goto L5f
            com.ironsource.adqualitysdk.sdk.i.at r0 = r11.r
            r0.d(r5)
            com.ironsource.adqualitysdk.sdk.i.ax$e r0 = new com.ironsource.adqualitysdk.sdk.i.ax$e
            r3 = r0
            r4 = r11
            r6 = r12
            r9 = r13
            r10 = r14
            r3.<init>(r5, r6, r7, r8, r9, r10)
            com.json.adqualitysdk.sdk.i.t.m1041(r0)
            boolean r0 = r11.c()
            r1 = 82
            if (r0 != 0) goto L5b
            r0 = 96
            goto L5d
        L5b:
            r0 = 82
        L5d:
            if (r0 == r1) goto L62
        L5f:
            r11.Y(r12, r13, r14)
        L62:
            return
        L63:
            r14.run()
            int r12 = com.json.adqualitysdk.sdk.i.ax.i
            int r12 = r12 + 85
            int r13 = r12 % 128
            com.json.adqualitysdk.sdk.i.ax.h = r13
            int r12 = r12 % 2
            if (r12 == 0) goto L73
            r1 = 1
        L73:
            if (r1 == r0) goto L76
            return
        L76:
            r12 = 0
            throw r12     // Catch: java.lang.Throwable -> L78
        L78:
            r12 = move-exception
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.ax.Y(android.content.Context, java.util.List, java.lang.Runnable):void");
    }

    static /* synthetic */ void Z(ax axVar, Context context, String str, String str2, gd gdVar, il ilVar) {
        int i2 = h + 93;
        i = i2 % 128;
        char c2 = i2 % 2 == 0 ? '%' : 'Q';
        axVar.w(context, str, str2, gdVar, ilVar);
        if (c2 == '%') {
            int i3 = 46 / 0;
        }
        int i4 = i + 45;
        h = i4 % 128;
        int i5 = i4 % 2;
    }

    private synchronized void a() {
        if (this.w) {
            int i2 = i + 5;
            h = i2 % 128;
            int i3 = i2 % 2;
            if (!(this.r.m359())) {
                int i4 = h + 37;
                i = i4 % 128;
                int i5 = i4 % 2;
                m370().adQualitySdkInitFailed(ISAdQualityInitError.CONNECTOR_LOAD_TIMEOUT, t(19 - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)), 56726161 - Color.blue(0), (byte) View.combineMeasuredStates(0, 0), (short) (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)), KeyEvent.keyCodeFromString("") + 558891816).intern());
                return;
            }
        }
        m370().adQualitySdkInitSuccess();
    }

    static /* synthetic */ void a0(ax axVar, String str, JSONObject jSONObject) {
        int i2 = h + 31;
        i = i2 % 128;
        char c2 = i2 % 2 == 0 ? '4' : (char) 19;
        axVar.R(str, jSONObject);
        if (c2 != '4') {
            return;
        }
        int i3 = 97 / 0;
    }

    static /* synthetic */ List b(ax axVar) {
        int i2 = h + 123;
        i = i2 % 128;
        if (i2 % 2 != 0) {
            return axVar.j();
        }
        axVar.j();
        throw null;
    }

    static /* synthetic */ boolean b0(ax axVar, String str) {
        int i2 = i + 101;
        h = i2 % 128;
        if (i2 % 2 == 0) {
            return axVar.T(str);
        }
        axVar.T(str);
        throw null;
    }

    private synchronized boolean c() {
        boolean zMo305;
        int i2 = i + 67;
        h = i2 % 128;
        if (!(i2 % 2 == 0)) {
            zMo305 = ao.m303().mo305();
            int i3 = 91 / 0;
        } else {
            zMo305 = ao.m303().mo305();
        }
        int i4 = h + 41;
        i = i4 % 128;
        if ((i4 % 2 == 0 ? ':' : 'O') == ':') {
            throw null;
        }
        return zMo305;
    }

    static /* synthetic */ boolean c0(ci ciVar, String str) {
        int i2 = h + 71;
        i = i2 % 128;
        if (!(i2 % 2 == 0)) {
            return S(ciVar, str);
        }
        S(ciVar, str);
        throw null;
    }

    private List<ci> d() {
        ArrayList arrayList = new ArrayList(f());
        int i2 = h + 71;
        i = i2 % 128;
        if (!(i2 % 2 == 0)) {
            return arrayList;
        }
        throw null;
    }

    static /* synthetic */ void e(ax axVar) {
        int i2 = i + 9;
        h = i2 % 128;
        int i3 = i2 % 2;
        axVar.a();
        int i4 = i + 49;
        h = i4 % 128;
        if (i4 % 2 == 0) {
        } else {
            throw null;
        }
    }

    private synchronized List<ci> f() {
        List<ci> list;
        int i2 = h;
        int i3 = i2 + 9;
        i = i3 % 128;
        int i4 = i3 % 2;
        list = this.k;
        int i5 = i2 + 97;
        i = i5 % 128;
        int i6 = i5 % 2;
        return list;
    }

    static /* synthetic */ boolean g(ax axVar) {
        int i2 = i + 33;
        h = i2 % 128;
        if (i2 % 2 != 0) {
        }
        axVar.w = true;
        return true;
    }

    private synchronized Map<String, JSONObject> h() {
        int i2 = h;
        int i3 = i2 + 9;
        i = i3 % 128;
        int i4 = i3 % 2;
        Map<String, JSONObject> map = this.m;
        int i5 = i2 + 85;
        i = i5 % 128;
        if (i5 % 2 != 0) {
            return map;
        }
        int i6 = 64 / 0;
        return map;
    }

    static /* synthetic */ void i(ax axVar) {
        int i2 = i + 87;
        h = i2 % 128;
        boolean z = i2 % 2 != 0;
        axVar.W();
        if (z) {
            throw null;
        }
        int i3 = i + 83;
        h = i3 % 128;
        int i4 = i3 % 2;
    }

    private synchronized List<gd> j() {
        int i2 = i + 115;
        h = i2 % 128;
        if ((i2 % 2 != 0 ? 'S' : 'c') == 'S') {
            throw null;
        }
        return this.l;
    }

    static /* synthetic */ Map k(ax axVar) {
        int i2 = h + 77;
        i = i2 % 128;
        int i3 = i2 % 2;
        Map<String, JSONObject> mapH = axVar.h();
        int i4 = h + 41;
        i = i4 % 128;
        int i5 = i4 % 2;
        return mapH;
    }

    static /* synthetic */ String l(ax axVar) {
        int i2 = h + 119;
        int i3 = i2 % 128;
        i = i3;
        int i4 = i2 % 2;
        String str = axVar.s;
        int i5 = i3 + 79;
        h = i5 % 128;
        if ((i5 % 2 != 0 ? '3' : (char) 19) == 19) {
            return str;
        }
        throw null;
    }

    private synchronized Map<String, String> m() {
        Map<String, String> map;
        int i2 = h + 33;
        i = i2 % 128;
        if (i2 % 2 != 0) {
            map = this.n;
        } else {
            map = this.n;
            int i3 = 75 / 0;
        }
        return map;
    }

    static /* synthetic */ dr n(ax axVar, dr drVar) {
        int i2 = h + 37;
        i = i2 % 128;
        boolean z = i2 % 2 != 0;
        axVar.p = drVar;
        if (z) {
            return drVar;
        }
        throw null;
    }

    private static String o(List<gd> list) {
        if (list == null) {
            return null;
        }
        int i2 = h + 49;
        i = i2 % 128;
        int i3 = i2 % 2;
        if (list.isEmpty()) {
            return null;
        }
        int i4 = i + 105;
        h = i4 % 128;
        if ((i4 % 2 != 0 ? 'c' : '3') != 'c') {
            if ((list.get(0) != null ? 'N' : ']') != 'N') {
                return null;
            }
        } else {
            if (!(list.get(0) != null)) {
                return null;
            }
        }
        return list.get(0).mo720();
    }

    static /* synthetic */ List p(ax axVar) {
        int i2 = i + 53;
        h = i2 % 128;
        char c2 = i2 % 2 != 0 ? '\r' : (char) 31;
        List<ci> listD = axVar.d();
        if (c2 == '\r') {
            int i3 = 73 / 0;
        }
        return listD;
    }

    private void q(Context context) {
        String strIntern = E((Process.myTid() >> 22) + 12, 20 - TextUtils.indexOf("", ""), (char) ((ViewConfiguration.getKeyRepeatTimeout() >> 16) + 27395)).intern();
        StringBuilder sb = new StringBuilder();
        sb.append(t((Process.myTid() >> 22) + 1, AndroidCharacter.getMirror('0') + 37453, (byte) TextUtils.indexOf("", "", 0), (short) TextUtils.getOffsetAfter("", 0), 558891730 - (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1))).intern());
        sb.append(IronSourceAdQuality.getSDKVersion());
        sb.append(E((-16777201) - Color.rgb(0, 0, 0), 32 - (KeyEvent.getMaxKeyCode() >> 16), (char) (56214 - (ViewConfiguration.getWindowTouchSlop() >> 8))).intern());
        com.json.adqualitysdk.sdk.i.m.m1026(strIntern, sb.toString());
        t.m1042(new c(), ao.m303().mo306());
        t.m1046(new g(context));
        int i2 = i + 63;
        h = i2 % 128;
        int i3 = i2 % 2;
    }

    private void r(Context context, String str, String str2, List<gd> list, il ilVar) {
        int i2 = h + 87;
        i = i2 % 128;
        if (i2 % 2 == 0) {
            list.iterator();
            throw null;
        }
        Iterator<gd> it = list.iterator();
        int i3 = h + 109;
        i = i3 % 128;
        int i4 = i3 % 2;
        while (true) {
            if ((it.hasNext() ? 'W' : '+') != 'W') {
                return;
            }
            int i5 = i + 73;
            h = i5 % 128;
            int i6 = i5 % 2;
            w(context, str, str2, it.next(), ilVar);
        }
    }

    static /* synthetic */ ci s(ax axVar, Context context, String str, az azVar) {
        int i2 = h + 81;
        i = i2 % 128;
        if (!(i2 % 2 != 0)) {
            axVar.U(context, str, azVar);
            throw null;
        }
        ci ciVarU = axVar.U(context, str, azVar);
        int i3 = h + 29;
        i = i3 % 128;
        int i4 = i3 % 2;
        return ciVarU;
    }

    private static String t(int i2, int i3, byte b2, short s, int i4) {
        String string;
        synchronized (com.json.adqualitysdk.sdk.i.n.f132) {
            StringBuilder sb = new StringBuilder();
            int i5 = f5274d;
            int i6 = i2 + i5;
            boolean z = i6 == -1;
            if (z) {
                byte[] bArr = f5276f;
                i6 = bArr != null ? (byte) (bArr[c + i4] + i5) : (short) (f5277g[c + i4] + i5);
            }
            if (i6 > 0) {
                com.json.adqualitysdk.sdk.i.n.f136 = ((i4 + i6) - 2) + c + (z ? 1 : 0);
                com.json.adqualitysdk.sdk.i.n.f135 = b2;
                char c2 = (char) (i3 + f5275e);
                com.json.adqualitysdk.sdk.i.n.f133 = c2;
                sb.append(c2);
                com.json.adqualitysdk.sdk.i.n.f134 = com.json.adqualitysdk.sdk.i.n.f133;
                com.json.adqualitysdk.sdk.i.n.f137 = 1;
                while (com.json.adqualitysdk.sdk.i.n.f137 < i6) {
                    byte[] bArr2 = f5276f;
                    if (bArr2 != null) {
                        int i7 = com.json.adqualitysdk.sdk.i.n.f136;
                        com.json.adqualitysdk.sdk.i.n.f136 = i7 - 1;
                        com.json.adqualitysdk.sdk.i.n.f133 = (char) (com.json.adqualitysdk.sdk.i.n.f134 + (((byte) (bArr2[i7] + s)) ^ com.json.adqualitysdk.sdk.i.n.f135));
                    } else {
                        short[] sArr = f5277g;
                        int i8 = com.json.adqualitysdk.sdk.i.n.f136;
                        com.json.adqualitysdk.sdk.i.n.f136 = i8 - 1;
                        com.json.adqualitysdk.sdk.i.n.f133 = (char) (com.json.adqualitysdk.sdk.i.n.f134 + (((short) (sArr[i8] + s)) ^ com.json.adqualitysdk.sdk.i.n.f135));
                    }
                    sb.append(com.json.adqualitysdk.sdk.i.n.f133);
                    com.json.adqualitysdk.sdk.i.n.f134 = com.json.adqualitysdk.sdk.i.n.f133;
                    com.json.adqualitysdk.sdk.i.n.f137++;
                }
            }
            string = sb.toString();
        }
        return string;
    }

    static /* synthetic */ List u(ax axVar, List list) {
        int i2 = i + 119;
        int i3 = i2 % 128;
        h = i3;
        char c2 = i2 % 2 != 0 ? 'A' : ':';
        axVar.k = list;
        if (c2 == 'A') {
            throw null;
        }
        int i4 = i3 + 79;
        i = i4 % 128;
        int i5 = i4 % 2;
        return list;
    }

    private static JSONObject v(Map<String, JSONObject> map) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        Iterator it = new HashSet(map.keySet()).iterator();
        while (true) {
            if ((it.hasNext() ? 'R' : 'E') == 'E') {
                jSONObject.put(t((-31) - View.resolveSizeAndState(0, 0, 0), 56726214 - (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)), (byte) (1 - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1))), (short) (ViewConfiguration.getTouchSlop() >> 8), 558891813 - (Process.myPid() >> 22)).intern(), jSONObject2);
                int i2 = h + 29;
                i = i2 % 128;
                int i3 = i2 % 2;
                return jSONObject;
            }
            int i4 = h + 21;
            i = i4 % 128;
            int i5 = i4 % 2;
            String str = (String) it.next();
            jSONObject2.put(str.toLowerCase(), map.get(str));
        }
    }

    private void w(Context context, String str, String str2, gd gdVar, il ilVar) {
        iw.e eVarMo718 = gdVar.mo718();
        az azVarMo719 = gdVar.mo719();
        B(str2, azVarMo719);
        t.m1046(this.r.new d(str2, av.a.f20));
        t.m1042(new i(context, this.u.m849(eVarMo718, new h(context, azVarMo719, str, str2, gdVar, ilVar)), azVarMo719, str, str2, gdVar, ilVar), AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS);
        int i2 = i + 25;
        h = i2 % 128;
        if (i2 % 2 != 0) {
            throw null;
        }
    }

    private void x(Context context, String str, String str2, List<gd> list, il ilVar) {
        t.m1044(new k(str2, context, str, list, ilVar));
        int i2 = h + 123;
        i = i2 % 128;
        if (i2 % 2 == 0) {
            throw null;
        }
    }

    static /* synthetic */ void y(ax axVar, Context context, String str, String str2, List list, il ilVar) {
        int i2 = h + 67;
        i = i2 % 128;
        int i3 = i2 % 2;
        axVar.x(context, str, str2, list, ilVar);
        int i4 = i + 79;
        h = i4 % 128;
        int i5 = i4 % 2;
    }

    static /* synthetic */ void z(ax axVar, ci ciVar, String str) {
        int i2 = i + 49;
        h = i2 % 128;
        boolean z = i2 % 2 == 0;
        axVar.A(ciVar, str);
        if (!z) {
            int i3 = 57 / 0;
        }
        int i4 = h + 21;
        i = i4 % 128;
        if ((i4 % 2 == 0 ? '>' : '_') != '>') {
            return;
        }
        int i5 = 4 / 0;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final synchronized void m367() {
        t.m1044(new n());
        t.m1046(this.r.new a());
        this.r = null;
        t.m1044(new d());
        int i2 = i + 99;
        h = i2 % 128;
        if (i2 % 2 != 0) {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final synchronized void m368(Context context, Runnable runnable) {
        int i2 = i + 113;
        h = i2 % 128;
        int i3 = i2 % 2;
        if (this.j) {
            t.m1046(new m(runnable));
            int i4 = h + 1;
            i = i4 % 128;
            if ((i4 % 2 == 0 ? '!' : b4.R) == '=') {
                return;
            } else {
                throw null;
            }
        }
        X(context, new o(runnable, context));
        this.j = true;
        int i5 = i + 51;
        h = i5 % 128;
        if (i5 % 2 == 0) {
            return;
        }
        int i6 = 51 / 0;
        return;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final void m369(String str) {
        m374(str, new ArrayList());
        int i2 = h + 101;
        i = i2 % 128;
        int i3 = i2 % 2;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final synchronized ISAdQualityInitListener m370() {
        ISAdQualityInitListener iSAdQualityInitListener;
        int i2 = h + 25;
        int i3 = i2 % 128;
        i = i3;
        if (i2 % 2 == 0) {
            throw null;
        }
        iSAdQualityInitListener = this.t;
        int i4 = i3 + 101;
        h = i4 % 128;
        int i5 = i4 % 2;
        return iSAdQualityInitListener;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final JSONObject m371() {
        Iterator it;
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        try {
            it = new HashSet(m().keySet()).iterator();
        } catch (JSONException e2) {
            com.json.adqualitysdk.sdk.i.m.m1032(E(TextUtils.indexOf((CharSequence) "", '0', 0, 0) + 17, (-1) - (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)), (char) (48085 - (Process.myTid() >> 22))).intern(), t((-6) - TextUtils.indexOf("", ""), View.resolveSizeAndState(0, 0, 0) + 56726165, (byte) (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)), (short) TextUtils.indexOf("", "", 0), 558891703 - TextUtils.getCapsMode("", 0, 0)).intern(), e2);
        }
        while (true) {
            if (!(it.hasNext())) {
                break;
            }
            String str = (String) it.next();
            jSONObject2.put(str, m().get(str));
            int i2 = i + 63;
            h = i2 % 128;
            int i3 = i2 % 2;
            int i4 = h + 67;
            i = i4 % 128;
            int i5 = i4 % 2;
            return jSONObject;
        }
        jSONObject.put(E((ViewConfiguration.getEdgeSlop() >> 16) + 4, 16 - TextUtils.indexOf("", ""), (char) (TextUtils.getOffsetAfter("", 0) + 9581)).intern(), jSONObject2);
        int i42 = h + 67;
        i = i42 % 128;
        int i52 = i42 % 2;
        return jSONObject;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final JSONObject m372() {
        JSONObject jSONObjectV;
        int i2 = h + 41;
        i = i2 % 128;
        int i3 = 0;
        try {
            if ((i2 % 2 == 0 ? 'U' : '*') != 'U') {
                jSONObjectV = v(h());
            } else {
                jSONObjectV = v(h());
                int i4 = 37 / 0;
            }
            int i5 = i + 49;
            i3 = i5 % 128;
            h = i3;
            int i6 = i5 % 2;
            return jSONObjectV;
        } catch (JSONException e2) {
            com.json.adqualitysdk.sdk.i.m.m1032(E(16 - TextUtils.indexOf("", ""), (-1) - Process.getGidForName(""), (char) ((Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)) + 48084)).intern(), t((ExpandableListView.getPackedPositionForGroup(i3) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(i3) == 0L ? 0 : -1)) - 4, ExpandableListView.getPackedPositionType(0L) + 56726165, (byte) KeyEvent.getDeadChar(i3, i3), (short) ((-1) - MotionEvent.axisFromString("")), 558891673 - ExpandableListView.getPackedPositionGroup(0L)).intern(), e2);
            return new JSONObject();
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final void m373(ISAdQualityAdListener iSAdQualityAdListener) {
        int i2 = i + 73;
        h = i2 % 128;
        if ((i2 % 2 != 0 ? 'c' : 'K') == 'K') {
            this.v.m399(iSAdQualityAdListener);
        } else {
            this.v.m399(iSAdQualityAdListener);
            int i3 = 19 / 0;
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final void m374(String str, List<Object> list) {
        Iterator<ci> it = d().iterator();
        while (true) {
            if (!(it.hasNext())) {
                int i2 = i + 7;
                h = i2 % 128;
                int i3 = i2 % 2;
                return;
            } else {
                int i4 = i + 69;
                h = i4 % 128;
                int i5 = i4 % 2;
                it.next().m441(str, list);
            }
        }
    }
}
