package com.json.adqualitysdk.sdk.i;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.media.AudioTrack;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Process;
import android.os.SystemClock;
import android.text.AndroidCharacter;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.applovin.exoplayer2.common.base.Ascii;
import com.json.adqualitysdk.sdk.i.ai;
import com.json.adqualitysdk.sdk.i.ix;
import com.json.adqualitysdk.sdk.i.iz;
import java.io.UnsupportedEncodingException;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.PriorityQueue;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class ag {
    private static int[] a = {1112522325, -2056783903, -328724588, 1724240564, -2027674256, 1469771830, -252457101, -1015066109, 623642256, 257725967, -1342633319, -1439955292, 831821612, -1651123851, 731274021, 1783383339, -730068426, 137157052};
    private static int b = -58869718;
    private static int c = 80;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5149d = -2020779765;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static byte[] f5150e = {-74, -70, 6, 9, -17, 17, -69, -10, 9, 6, -20, 0, Ascii.SO, -14, Ascii.DC4, -17, -4, -67, 2, 17, -19, 1, Ascii.DC4, -20, 0, Ascii.SO, -14, Ascii.DC4, -17, -4, -54, -10, -7, 6, -3, Ascii.VT, -4, 8, 2, Ascii.US, -45, Ascii.ESC, -28, 0, 47, -45, -1, 79, -78, 5, 73, -82, 3, -3, 0, 45, -75, 6, -19, 2, Ascii.CR, -74, 1, -11, Ascii.FF, -15, Ascii.CR, -59, -73, Ascii.CR, -17, 4, Ascii.CR, -14, 83, -89, Ascii.ETB, 66, -68, -1, 1, -17, 9, 9, -21, 19, 61, 8, -62, 6, 9, -17, 49, -31, -10, 9, -14, 83, -78, 5, 73, -82, 3, -3, 0, 45, -70, Ascii.ESC, -42, 0, Ascii.SO, -14, 69, -70, 6, 5, -55, -3, 5, 2, -2, 67, -77, -2, -3, Ascii.FF, 70, -83, -1, 6, 9, -17, 17, 69, -71, -7, 5, 5, -10, 9, Ascii.DC2};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static short[] f5151f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f5152g = 0;
    private static int h = 1;
    private am i;
    private boolean j;
    private ir k;
    private iz l;
    private ai m;
    private Handler n;
    private boolean o;
    private boolean p;
    private Context s;
    private in t;
    private a0 u;
    private jg w;
    private String x;
    private q y;
    private List<ah> q = new ArrayList();
    private List<ix.d> r = new ArrayList();
    private Thread.UncaughtExceptionHandler v = Thread.getDefaultUncaughtExceptionHandler();

    class a implements ai.e {
        final /* synthetic */ JSONArray a;
        final /* synthetic */ List b;
        final /* synthetic */ is c;

        /* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ag$a$a, reason: collision with other inner class name */
        final class C0333a implements is {
            private static char[] a = {65488, 53574, 41602, 29654, 17676, 5752, 59310, 47357, 35370, 'G', 11990, 23814, 35851, 47749, 59837, 6181, 18298, 30123, 42210, 54111, 384, 12511, 24389, 36460, 48306, 60387, 6713, 18797, 30677, 42503, 54600, 966, 13049, 24887, 36963, 48874, 60912, 7257, 19099, 31178, 43042, 55126, 1468, 13564, 25407, 37413, 'S', 11990, 23839, 35918, 47760, 59893, 6207, 18273, 30127, 42145, 54093, 406, 12482, 24337, 36414, 48288, 60386, 6694, 18796, 30684, 42580, 54618, 911, 13035, 24880, 36913, 48825, 60902, 7250, 19089, 31211, 43025, 55109, 1463, 13542, 25445, 37412, 49402, 61209, 7771, 19656, 31699, 43583, 55648, 1980, 14058, 25936, 37764, 49877, 61779, 8194, 43978};
            private static long b = 8196435736631520953L;
            private static int c = 0;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private static int f5154d = 1;

            /* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ag$a$a$a, reason: collision with other inner class name */
            final class C0334a extends il {

                /* JADX INFO: renamed from: d, reason: collision with root package name */
                private /* synthetic */ ip f5156d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                private /* synthetic */ String f5157e;

                C0334a(ip ipVar, String str) {
                    this.f5156d = ipVar;
                    this.f5157e = str;
                }

                @Override // com.json.adqualitysdk.sdk.i.il
                /* JADX INFO: renamed from: ﻛ */
                public final void mo225() {
                    a.this.c.mo265(this.f5156d, this.f5157e);
                }
            }

            /* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ag$a$a$b */
            final class b extends il {

                /* JADX INFO: renamed from: d, reason: collision with root package name */
                private /* synthetic */ ip f5159d;

                b(ip ipVar) {
                    this.f5159d = ipVar;
                }

                @Override // com.json.adqualitysdk.sdk.i.il
                /* JADX INFO: renamed from: ﻛ */
                public final void mo225() {
                    a.this.c.mo266(this.f5159d);
                }
            }

            /* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ag$a$a$c */
            final class c extends il {

                /* JADX INFO: renamed from: d, reason: collision with root package name */
                private /* synthetic */ ix.d f5161d;

                c(ix.d dVar) {
                    this.f5161d = dVar;
                }

                @Override // com.json.adqualitysdk.sdk.i.il
                /* JADX INFO: renamed from: ﻛ */
                public final void mo225() {
                    this.f5161d.mo885();
                }
            }

            /* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ag$a$a$d */
            final class d extends il {

                /* JADX INFO: renamed from: d, reason: collision with root package name */
                private static char[] f5162d = {26537, 55829, 7319, 24351, 37262, 54290, 5779, 18708, 35741, 52826, 141, 17183, 34196, 63502, 15066, 32013, 49032, 61973, 13460, 30493, 43482, 60429, 11923, 24846, 41874, 58970, 22665, 39711, 56724, 4126, 21183, 38156, 55199, 2580, 19598, 36692, 49626, 1085, 18069, 47374, 64474, 15880, 28831, 45833, 62858, 10261, 27284, 44297, 61343, 8768, 25818, ' '};

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                private static long f5163e = 1979297650945342848L;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                private static int f5164f = 0;

                /* JADX INFO: renamed from: g, reason: collision with root package name */
                private static int f5165g = 1;
                private /* synthetic */ ip h;
                private /* synthetic */ int i;
                private /* synthetic */ String j;

                d(ip ipVar, int i, String str) {
                    this.h = ipVar;
                    this.i = i;
                    this.j = str;
                }

                private static String b(int i, int i2, char c) {
                    String str;
                    synchronized (com.json.adqualitysdk.sdk.i.e.f50) {
                        char[] cArr = new char[i];
                        com.json.adqualitysdk.sdk.i.e.f51 = 0;
                        while (true) {
                            int i3 = com.json.adqualitysdk.sdk.i.e.f51;
                            if (i3 < i) {
                                cArr[i3] = (char) ((((long) f5162d[i2 + i3]) ^ (((long) i3) * f5163e)) ^ ((long) c));
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
                    is isVar = a.this.c;
                    ip ipVar = this.h;
                    StringBuilder sb = new StringBuilder();
                    sb.append(b(TextUtils.indexOf((CharSequence) "", '0', 0, 0) + 52, ViewConfiguration.getMaximumDrawingCacheSize() >> 24, (char) (26618 - Color.red(0))).intern());
                    sb.append(this.i);
                    sb.append(b(1 - (ViewConfiguration.getPressedStateDuration() >> 16), 51 - ExpandableListView.getPackedPositionGroup(0L), (char) (ViewConfiguration.getJumpTapTimeout() >> 16)).intern());
                    sb.append(this.j);
                    isVar.mo265(ipVar, sb.toString());
                    int i = f5164f + 23;
                    f5165g = i % 128;
                    int i2 = i % 2;
                }
            }

            C0333a() {
            }

            private static String a(int i, int i2, char c2) {
                String str;
                synchronized (com.json.adqualitysdk.sdk.i.e.f50) {
                    char[] cArr = new char[i];
                    com.json.adqualitysdk.sdk.i.e.f51 = 0;
                    while (true) {
                        int i3 = com.json.adqualitysdk.sdk.i.e.f51;
                        if (i3 < i) {
                            cArr[i3] = (char) ((((long) a[i2 + i3]) ^ (((long) i3) * b)) ^ ((long) c2));
                            com.json.adqualitysdk.sdk.i.e.f51 = i3 + 1;
                        } else {
                            str = new String(cArr);
                        }
                    }
                }
                return str;
            }

            @Override // com.json.adqualitysdk.sdk.i.is
            /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
            public final void mo265(ip ipVar, String str) {
                t.m1046(new C0334a(ipVar, str));
                int i = f5154d + 23;
                c = i % 128;
                if (i % 2 == 0) {
                } else {
                    throw null;
                }
            }

            @Override // com.json.adqualitysdk.sdk.i.is
            /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
            public final void mo266(ip ipVar) {
                int iM847 = ipVar.m843().m847();
                String strM846 = ipVar.m843().m846();
                boolean z = true;
                if (iM847 < 200 || iM847 > 299) {
                    if (iM847 == 403) {
                        synchronized (ag.this) {
                            Iterator it = ag.a(ag.this).iterator();
                            while (it.hasNext()) {
                                t.m1046(new c((ix.d) it.next()));
                            }
                        }
                    } else {
                        String strIntern = a((SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)) + 8, 1 - (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)), (char) ((ViewConfiguration.getMinimumFlingVelocity() >> 16) + 65425)).intern();
                        StringBuilder sb = new StringBuilder();
                        sb.append(a((ViewConfiguration.getJumpTapTimeout() >> 16) + 51, 46 - Gravity.getAbsoluteGravity(0, 0), (char) ExpandableListView.getPackedPositionType(0L)).intern());
                        sb.append(iM847);
                        sb.append(a('1' - AndroidCharacter.getMirror('0'), 97 - Gravity.getAbsoluteGravity(0, 0), (char) (KeyEvent.normalizeMetaState(0) + 44010)).intern());
                        sb.append(strM846);
                        m.m1024(strIntern, sb.toString());
                    }
                    z = false;
                } else {
                    m.m1027(a(9 - (ViewConfiguration.getFadingEdgeLength() >> 16), ViewConfiguration.getLongPressTimeout() >> 16, (char) ((TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)) + 65425)).intern(), a(37 - KeyEvent.getDeadChar(0, 0), 9 - (ViewConfiguration.getPressedStateDuration() >> 16), (char) (ViewConfiguration.getWindowTouchSlop() >> 8)).intern(), a.this.a);
                }
                if (!z) {
                    t.m1046(new d(ipVar, iM847, strM846));
                    return;
                }
                Iterator it2 = a.this.b.iterator();
                while (it2.hasNext()) {
                    ag.f(ag.this).m891(((af) it2.next()).m250());
                }
                t.m1046(new b(ipVar));
            }
        }

        a(JSONArray jSONArray, List list, is isVar) {
            this.a = jSONArray;
            this.b = list;
            this.c = isVar;
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.ai.e
        public void onEventGenerated(JSONObject jSONObject) {
            ag.P(ag.this).o(jSONObject);
            ag.b(ag.this).m852(ag.i(ag.this).m298(ag.c(ag.this)), jSONObject, new C0333a());
        }
    }

    final class b implements in {
        b() {
        }

        @Override // com.json.adqualitysdk.sdk.i.in
        /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
        public final void mo267() {
            ag.M(ag.this);
        }
    }

    final class c extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ List f5166d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private /* synthetic */ JSONObject f5167e;

        c(List list, JSONObject jSONObject) {
            this.f5166d = list;
            this.f5167e = jSONObject;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            Iterator it = this.f5166d.iterator();
            while (it.hasNext()) {
                ((ah) it.next()).onEventReceived(this.f5167e);
            }
        }
    }

    final class d implements Thread.UncaughtExceptionHandler {
        private static char[] a = {130, 253, 248, 256, 264, 260, 248, 249, 233, '[', 194, 201, 195, 204, 207, 200, 207, 171, 163, 207, 206, 197, 203, 211, 207, 205, 207, 209, 226, 196, 219, 211, 209, 210, 213, 211};
        private static int b = 0;
        private static int c = 1;

        d() {
        }

        private static String a(boolean z, int[] iArr, String str) throws UnsupportedEncodingException {
            String str2;
            Object bytes = str;
            if (str != null) {
                bytes = str.getBytes("ISO-8859-1");
            }
            byte[] bArr = (byte[]) bytes;
            synchronized (com.json.adqualitysdk.sdk.i.i.f67) {
                int i = iArr[0];
                int i2 = iArr[1];
                int i3 = iArr[2];
                int i4 = iArr[3];
                char[] cArr = new char[i2];
                System.arraycopy(a, i, cArr, 0, i2);
                if (bArr != null) {
                    char[] cArr2 = new char[i2];
                    com.json.adqualitysdk.sdk.i.i.f68 = 0;
                    char c2 = 0;
                    while (true) {
                        int i5 = com.json.adqualitysdk.sdk.i.i.f68;
                        if (i5 >= i2) {
                            break;
                        }
                        if (bArr[i5] == 1) {
                            cArr2[i5] = (char) (((cArr[i5] << 1) + 1) - c2);
                        } else {
                            cArr2[i5] = (char) ((cArr[i5] << 1) - c2);
                        }
                        c2 = cArr2[i5];
                        com.json.adqualitysdk.sdk.i.i.f68 = i5 + 1;
                    }
                    cArr = cArr2;
                }
                if (i4 > 0) {
                    char[] cArr3 = new char[i2];
                    System.arraycopy(cArr, 0, cArr3, 0, i2);
                    int i6 = i2 - i4;
                    System.arraycopy(cArr3, 0, cArr, i6, i4);
                    System.arraycopy(cArr3, i4, cArr, 0, i6);
                }
                if (z) {
                    char[] cArr4 = new char[i2];
                    com.json.adqualitysdk.sdk.i.i.f68 = 0;
                    while (true) {
                        int i7 = com.json.adqualitysdk.sdk.i.i.f68;
                        if (i7 >= i2) {
                            break;
                        }
                        cArr4[i7] = cArr[(i2 - i7) - 1];
                        com.json.adqualitysdk.sdk.i.i.f68 = i7 + 1;
                    }
                    cArr = cArr4;
                }
                if (i3 > 0) {
                    com.json.adqualitysdk.sdk.i.i.f68 = 0;
                    while (true) {
                        int i8 = com.json.adqualitysdk.sdk.i.i.f68;
                        if (i8 >= i2) {
                            break;
                        }
                        cArr[i8] = (char) (cArr[i8] - iArr[2]);
                        com.json.adqualitysdk.sdk.i.i.f68 = i8 + 1;
                    }
                }
                str2 = new String(cArr);
            }
            return str2;
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public final void uncaughtException(Thread thread, Throwable th) {
            int i = b + 49;
            c = i % 128;
            int i2 = i % 2;
            jy.m986(a(true, new int[]{0, 9, 146, 0}, "\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0001\u0001").intern(), a(false, new int[]{9, 18, 97, 0}, "\u0000\u0001\u0001\u0000\u0000\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001").intern(), a(true, new int[]{27, 9, 112, 3}, null).intern(), th);
            ag.this.m258();
            ag.E(ag.this).uncaughtException(thread, th);
            int i3 = b + 43;
            c = i3 % 128;
            if ((i3 % 2 != 0 ? (char) 28 : '1') != 28) {
                int i4 = 91 / 0;
            }
        }
    }

    class e implements ai.e {

        final class a extends il {
            a() {
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() {
                ag.I(ag.this);
            }
        }

        e() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.ai.e
        public void onEventGenerated(JSONObject jSONObject) {
            ag.P(ag.this).o(jSONObject);
            ag.J(ag.this, jSONObject, new a());
        }
    }

    final class f implements jf {
        private static long a = -8452438300630053082L;
        private static int b = 0;
        private static int c = 1;

        final class a extends il {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private static char[] f5171d = {'f', 'o', 'c', 'u', 's', '_', 'r', 'e', 't', 'd', 'g', 'h', 'i', 'j', 'k', 'l'};

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private static char f5172e = 4;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private static int f5173f = 0;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            private static int f5174g = 1;
            private /* synthetic */ Activity h;

            a(Activity activity) {
                this.h = activity;
            }

            private static String b(byte b, String str, int i) {
                String str2;
                Object charArray = str;
                if (str != null) {
                    charArray = str.toCharArray();
                }
                char[] cArr = (char[]) charArray;
                synchronized (com.json.adqualitysdk.sdk.i.g.f56) {
                    char[] cArr2 = f5171d;
                    char c = f5172e;
                    char[] cArr3 = new char[i];
                    if (i % 2 != 0) {
                        i--;
                        cArr3[i] = (char) (cArr[i] - b);
                    }
                    if (i > 1) {
                        com.json.adqualitysdk.sdk.i.g.f60 = 0;
                        while (true) {
                            int i2 = com.json.adqualitysdk.sdk.i.g.f60;
                            if (i2 >= i) {
                                break;
                            }
                            com.json.adqualitysdk.sdk.i.g.f58 = cArr[i2];
                            com.json.adqualitysdk.sdk.i.g.f62 = cArr[com.json.adqualitysdk.sdk.i.g.f60 + 1];
                            if (com.json.adqualitysdk.sdk.i.g.f58 == com.json.adqualitysdk.sdk.i.g.f62) {
                                cArr3[com.json.adqualitysdk.sdk.i.g.f60] = (char) (com.json.adqualitysdk.sdk.i.g.f58 - b);
                                cArr3[com.json.adqualitysdk.sdk.i.g.f60 + 1] = (char) (com.json.adqualitysdk.sdk.i.g.f62 - b);
                            } else {
                                com.json.adqualitysdk.sdk.i.g.f59 = com.json.adqualitysdk.sdk.i.g.f58 / c;
                                com.json.adqualitysdk.sdk.i.g.f55 = com.json.adqualitysdk.sdk.i.g.f58 % c;
                                com.json.adqualitysdk.sdk.i.g.f61 = com.json.adqualitysdk.sdk.i.g.f62 / c;
                                com.json.adqualitysdk.sdk.i.g.f57 = com.json.adqualitysdk.sdk.i.g.f62 % c;
                                if (com.json.adqualitysdk.sdk.i.g.f55 == com.json.adqualitysdk.sdk.i.g.f57) {
                                    com.json.adqualitysdk.sdk.i.g.f59 = ((com.json.adqualitysdk.sdk.i.g.f59 + c) - 1) % c;
                                    com.json.adqualitysdk.sdk.i.g.f61 = ((com.json.adqualitysdk.sdk.i.g.f61 + c) - 1) % c;
                                    int i3 = (com.json.adqualitysdk.sdk.i.g.f59 * c) + com.json.adqualitysdk.sdk.i.g.f55;
                                    int i4 = (com.json.adqualitysdk.sdk.i.g.f61 * c) + com.json.adqualitysdk.sdk.i.g.f57;
                                    int i5 = com.json.adqualitysdk.sdk.i.g.f60;
                                    cArr3[i5] = cArr2[i3];
                                    cArr3[i5 + 1] = cArr2[i4];
                                } else if (com.json.adqualitysdk.sdk.i.g.f59 == com.json.adqualitysdk.sdk.i.g.f61) {
                                    com.json.adqualitysdk.sdk.i.g.f55 = ((com.json.adqualitysdk.sdk.i.g.f55 + c) - 1) % c;
                                    com.json.adqualitysdk.sdk.i.g.f57 = ((com.json.adqualitysdk.sdk.i.g.f57 + c) - 1) % c;
                                    int i6 = (com.json.adqualitysdk.sdk.i.g.f59 * c) + com.json.adqualitysdk.sdk.i.g.f55;
                                    int i7 = (com.json.adqualitysdk.sdk.i.g.f61 * c) + com.json.adqualitysdk.sdk.i.g.f57;
                                    int i8 = com.json.adqualitysdk.sdk.i.g.f60;
                                    cArr3[i8] = cArr2[i6];
                                    cArr3[i8 + 1] = cArr2[i7];
                                } else {
                                    int i9 = (com.json.adqualitysdk.sdk.i.g.f59 * c) + com.json.adqualitysdk.sdk.i.g.f57;
                                    int i10 = (com.json.adqualitysdk.sdk.i.g.f61 * c) + com.json.adqualitysdk.sdk.i.g.f55;
                                    int i11 = com.json.adqualitysdk.sdk.i.g.f60;
                                    cArr3[i11] = cArr2[i9];
                                    cArr3[i11 + 1] = cArr2[i10];
                                }
                            }
                            com.json.adqualitysdk.sdk.i.g.f60 += 2;
                        }
                    }
                    str2 = new String(cArr3);
                }
                return str2;
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() {
                int i = f5173f + 97;
                f5174g = i % 128;
                int i2 = i % 2;
                ag.w(ag.this).onEvent(b((byte) ((ViewConfiguration.getKeyRepeatDelay() >> 16) + 24), "\u0001\u0002\u0003\u0000\u0005\u0006\u0007\u0004\b\f\u0002\u0005\u0005\u000b", (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)) + 13).intern());
                ag.this.m257(b((byte) (24 - Color.argb(0, 0, 0, 0)), "\u0001\u0002\u0003\u0000\u0005\u0006\u0007\u0004\b\f\u0002\u0005\u0005\u000b", 14 - (ViewConfiguration.getLongPressTimeout() >> 16)).intern(), f.c(this.h));
                int i3 = f5174g + 91;
                f5173f = i3 % 128;
                int i4 = i3 % 2;
            }
        }

        final class b extends il {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private static char[] f5175d = {294, 303, 291, 309, 307, 287, 300, 308};

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private static int f5176e = 192;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private static boolean f5177f = true;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            private static boolean f5178g = true;
            private static int h = 0;
            private static int i = 1;
            private /* synthetic */ Activity j;

            b(Activity activity) {
                this.j = activity;
            }

            private static String b(int[] iArr, String str, int i2, String str2) throws UnsupportedEncodingException {
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
                    char[] cArr2 = f5175d;
                    int i3 = f5176e;
                    if (f5178g) {
                        int length = bArr.length;
                        k.f129 = length;
                        char[] cArr3 = new char[length];
                        k.f130 = 0;
                        while (k.f130 < k.f129) {
                            int i4 = k.f130;
                            int i5 = k.f129 - 1;
                            int i6 = k.f130;
                            cArr3[i4] = (char) (cArr2[bArr[i5 - i6] + i2] - i3);
                            k.f130 = i6 + 1;
                        }
                        return new String(cArr3);
                    }
                    if (f5177f) {
                        int length2 = cArr.length;
                        k.f129 = length2;
                        char[] cArr4 = new char[length2];
                        k.f130 = 0;
                        while (k.f130 < k.f129) {
                            int i7 = k.f130;
                            int i8 = k.f129 - 1;
                            int i9 = k.f130;
                            cArr4[i7] = (char) (cArr2[cArr[i8 - i9] - i2] - i3);
                            k.f130 = i9 + 1;
                        }
                        return new String(cArr4);
                    }
                    int length3 = iArr.length;
                    k.f129 = length3;
                    char[] cArr5 = new char[length3];
                    k.f130 = 0;
                    while (k.f130 < k.f129) {
                        int i10 = k.f130;
                        int i11 = k.f129 - 1;
                        int i12 = k.f130;
                        cArr5[i10] = (char) (cArr2[iArr[i11 - i12] - i2] - i3);
                        k.f130 = i12 + 1;
                    }
                    return new String(cArr5);
                }
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() {
                int i2 = i + 93;
                h = i2 % 128;
                int i3 = i2 % 2;
                ag.w(ag.this).onEvent(b(null, null, TextUtils.lastIndexOf("", '0') + 128, "\u0088\u0085\u0082\u0087\u0086\u0085\u0084\u0083\u0082\u0081").intern());
                ag.this.m257(b(null, null, TextUtils.indexOf("", "", 0, 0) + 127, "\u0088\u0085\u0082\u0087\u0086\u0085\u0084\u0083\u0082\u0081").intern(), f.c(this.j));
                int i4 = i + 97;
                h = i4 % 128;
                if (i4 % 2 == 0) {
                } else {
                    throw null;
                }
            }
        }

        f() {
        }

        private static JSONObject a(Activity activity) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(b("픬핍ꦊꛏ\udb2e씖职군\ue9d5\ued1c膯", ExpandableListView.getPackedPositionGroup(0L)).intern(), activity.getClass().getName());
                int i = c + 37;
                b = i % 128;
                int i2 = i % 2;
            } catch (JSONException unused) {
                m.m1031(b("㗯㖮\ud993훛\ue163ｎ㏝ểऎ鴑믮妴䲬", KeyEvent.normalizeMetaState(0)).intern(), b("䮉䯌\ua878Ꜭ㣤⛚龛늆督\uecb2扡\uf5f5㋝⼓꿶㥞﹡掣\uec93糕릀ꛜ⠡耽攈餒痎쎐⁴\uddff", ViewConfiguration.getWindowTouchSlop() >> 8).intern());
            }
            return jSONObject;
        }

        private static String b(String str, int i) {
            String str2;
            Object charArray = str;
            if (str != null) {
                charArray = str.toCharArray();
            }
            char[] cArr = (char[]) charArray;
            synchronized (com.json.adqualitysdk.sdk.i.f.f54) {
                char[] cArrM713 = com.json.adqualitysdk.sdk.i.f.m713(a, cArr, i);
                com.json.adqualitysdk.sdk.i.f.f52 = 4;
                while (true) {
                    int i2 = com.json.adqualitysdk.sdk.i.f.f52;
                    if (i2 < cArrM713.length) {
                        com.json.adqualitysdk.sdk.i.f.f53 = i2 - 4;
                        cArrM713[com.json.adqualitysdk.sdk.i.f.f52] = (char) (((long) (cArrM713[r1] ^ cArrM713[r1 % 4])) ^ (((long) com.json.adqualitysdk.sdk.i.f.f53) * a));
                        com.json.adqualitysdk.sdk.i.f.f52++;
                    } else {
                        str2 = new String(cArrM713, 4, cArrM713.length - 4);
                    }
                }
            }
            return str2;
        }

        static /* synthetic */ JSONObject c(Activity activity) {
            int i = c + 87;
            b = i % 128;
            int i2 = i % 2;
            JSONObject jSONObjectA = a(activity);
            int i3 = b + 67;
            c = i3 % 128;
            int i4 = i3 % 2;
            return jSONObjectA;
        }

        @Override // com.json.adqualitysdk.sdk.i.jf
        /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
        public final void mo268(Activity activity) {
            t.m1039(new a(activity));
            int i = b + 13;
            c = i % 128;
            if (i % 2 != 0) {
                return;
            }
            int i2 = 87 / 0;
        }

        @Override // com.json.adqualitysdk.sdk.i.jf
        /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
        public final void mo269(Activity activity) {
            t.m1039(new b(activity));
            int i = c + 81;
            b = i % 128;
            if ((i % 2 != 0 ? (char) 5 : (char) 14) != 5) {
                return;
            }
            int i2 = 83 / 0;
        }
    }

    final class g implements aq {
        g() {
        }

        @Override // com.json.adqualitysdk.sdk.i.aq
        /* JADX INFO: renamed from: ﻛ */
        public final void mo221() {
            ag.n(ag.this);
        }
    }

    final class h implements is, iz.c {
        h() {
        }

        @Override // com.json.adqualitysdk.sdk.i.is
        /* JADX INFO: renamed from: ﻛ */
        public final void mo265(ip ipVar, String str) {
            ag.q(ag.this);
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.iz.c
        /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
        public final void mo270(List<iv> list) {
            if (list != null) {
                try {
                    if (!list.isEmpty()) {
                        PriorityQueue priorityQueue = new PriorityQueue();
                        Iterator<iv> it = list.iterator();
                        while (it.hasNext()) {
                            priorityQueue.add(new af(it.next()));
                        }
                        ArrayList arrayList = new ArrayList();
                        for (af afVar = (af) priorityQueue.poll(); afVar != null; afVar = (af) priorityQueue.poll()) {
                            if (ag.D(ag.this, afVar)) {
                                if (TextUtils.isEmpty(afVar.m254())) {
                                    afVar.m249(ag.h(ag.this).m916().m293());
                                }
                                arrayList.add(afVar);
                            } else {
                                ag.f(ag.this).m891(afVar.m250());
                            }
                        }
                        if (arrayList.isEmpty()) {
                            return;
                        }
                        ag.y(ag.this, arrayList, this);
                        return;
                    }
                } catch (Exception unused) {
                    ag.q(ag.this);
                    return;
                }
            }
            ag.q(ag.this);
        }

        @Override // com.json.adqualitysdk.sdk.i.is
        /* JADX INFO: renamed from: ﾒ */
        public final void mo266(ip ipVar) {
            ag.q(ag.this);
            ag.I(ag.this);
        }
    }

    final class i implements iz.d {
        private /* synthetic */ boolean a;

        final class a extends il {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private static long f5179d = 0;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private static int f5180e = 0;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private static char f5181f = 2638;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            private static int f5182g = 0;
            private static int h = 1;

            a() {
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
                            cArr6[i5] = (char) (((((long) (cArr[i5] ^ cArr4[i4])) ^ f5179d) ^ ((long) f5180e)) ^ ((long) f5181f));
                            com.json.adqualitysdk.sdk.i.j.f125 = i5 + 1;
                        } else {
                            str4 = new String(cArr6);
                        }
                    }
                }
                return str4;
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() {
                int i = f5182g + 93;
                h = i % 128;
                int i2 = i % 2;
                try {
                    ag.p(ag.this);
                    int i3 = h + 101;
                    f5182g = i3 % 128;
                    if (i3 % 2 == 0) {
                        return;
                    }
                    int i4 = 64 / 0;
                } catch (Throwable th) {
                    m.m1029(b("啁ᗫ鴴쮑", "\u0000\u0000\u0000\u0000", 873851732 - ((byte) KeyEvent.getModifierMetaStateMask()), (char) (KeyEvent.getMaxKeyCode() >> 16), "\ue53cꊍ컌䁄㫐\uef5aשּ枺샚").intern(), b("㗰뢺倠栯", "\u0000\u0000\u0000\u0000", (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)) + 548977205, (char) (12112 - Drawable.resolveOpacity(0, 0)), "鹋燕蔷뮝롦⬩헢샋捚蕪\udc02¹롤䘶냇竛䠜㸞\ud818֞ᐻ畺鸱Œ捹\ue4ed苼\ue0c1洙䨲ϊ").intern(), th);
                    ag.q(ag.this);
                }
            }
        }

        i(boolean z) {
            this.a = z;
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.iz.d
        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
        public final void mo271(int i) {
            ag.u(ag.this).removeCallbacksAndMessages(null);
            ag.u(ag.this).postDelayed(new a(), (ag.K(ag.this, i) || this.a) ? 0L : ag.k(ag.this));
        }
    }

    final class j extends je {
        j() {
        }

        @Override // com.json.adqualitysdk.sdk.i.je, com.json.adqualitysdk.sdk.i.jc
        /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
        public final void mo272(Activity activity) {
            ag.this.m258();
        }

        @Override // com.json.adqualitysdk.sdk.i.je, com.json.adqualitysdk.sdk.i.jc
        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
        public final void mo273(Activity activity) {
            ag.t(ag.this);
        }
    }

    public ag(Context context, ak akVar, am amVar, boolean z, String str, q qVar) {
        this.y = qVar;
        Thread.setDefaultUncaughtExceptionHandler(new d());
        this.i = amVar;
        this.s = context;
        ix ixVar = new ix(context, H(new int[]{-1120341153, 2145059232, -960851986, -611875677, 466543287, -1374584030, -860883198, -943398665, 1476393239, 1122978245, 483824823, -1426137618, 38645096, 1773435101}, 25 - ExpandableListView.getPackedPositionType(0L)).intern(), H(new int[]{-1662043811, -2099185488, 602571165, -810199889, 698956127, 372937376, -704304246, 1136631552, 186616307, 405816583, -934694433, -1082555088}, (ViewConfiguration.getKeyRepeatDelay() >> 16) + 24).intern());
        this.l = new iz(H(new int[]{1298553202, -526861724, 566030648, 1358160397}, KeyEvent.normalizeMetaState(0) + 8).intern(), x((ViewConfiguration.getEdgeSlop() >> 16) - 81, 2020779866 - Color.blue(0), (byte) TextUtils.getOffsetBefore("", 0), (short) (ViewConfiguration.getFadingEdgeLength() >> 16), 58869718 - Color.alpha(0)).intern(), ixVar);
        int iL = L(ixVar);
        this.m = new ai(context, akVar, iL, Q(ixVar));
        this.k = new ir(context);
        this.j = false;
        HandlerThread handlerThread = new HandlerThread(H(new int[]{-1043139694, 1244692413, -1862197142, 1561699720, -722083045, -1957396258, 2118283337, -201658172}, Color.rgb(0, 0, 0) + 16777230).intern());
        handlerThread.start();
        this.n = new Handler(handlerThread.getLooper());
        this.u = new a0(iL);
        this.o = !z;
        this.x = str;
        G(true);
        m();
    }

    private void A(JSONObject jSONObject, il ilVar) {
        z(jSONObject);
        af afVar = new af(iz.m890(jSONObject));
        afVar.m251(e().m349());
        this.l.m893(afVar.m250(), ilVar);
        N(afVar.m253());
        t.m1046(ilVar);
        int i2 = f5152g + 115;
        h = i2 % 128;
        int i3 = i2 % 2;
    }

    private synchronized void B(boolean z) {
        int i2 = h + 97;
        f5152g = i2 % 128;
        if ((i2 % 2 != 0 ? (char) 21 : 'W') != 'W') {
            this.j = false;
            G(false);
        } else {
            this.j = true;
            G(true);
        }
        int i3 = f5152g + 123;
        h = i3 % 128;
        if (i3 % 2 == 0) {
            throw null;
        }
    }

    private boolean C(af afVar) {
        int i2 = f5152g + 29;
        h = i2 % 128;
        int i3 = i2 % 2;
        boolean zMo326 = ao.m303().mo326(afVar.m252(), this.x);
        int i4 = f5152g + 19;
        h = i4 % 128;
        int i5 = i4 % 2;
        return zMo326;
    }

    static /* synthetic */ boolean D(ag agVar, af afVar) {
        int i2 = f5152g + 43;
        h = i2 % 128;
        if ((i2 % 2 == 0 ? '5' : '@') != '5') {
            return agVar.C(afVar);
        }
        agVar.C(afVar);
        throw null;
    }

    static /* synthetic */ Thread.UncaughtExceptionHandler E(ag agVar) {
        int i2 = f5152g;
        int i3 = i2 + 37;
        h = i3 % 128;
        boolean z = i3 % 2 == 0;
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = agVar.v;
        if (z) {
            int i4 = 17 / 0;
        }
        int i5 = i2 + 95;
        h = i5 % 128;
        if (i5 % 2 == 0) {
            throw null;
        }
        return uncaughtExceptionHandler;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x007f A[EXC_TOP_SPLITTER, PHI: r2 r7
      0x007f: PHI (r2v11 com.ironsource.adqualitysdk.sdk.i.af) = (r2v10 com.ironsource.adqualitysdk.sdk.i.af), (r2v18 com.ironsource.adqualitysdk.sdk.i.af) binds: [B:20:0x007c, B:14:0x0052] A[DONT_GENERATE, DONT_INLINE]
      0x007f: PHI (r7v1 org.json.JSONObject) = (r7v0 org.json.JSONObject), (r7v3 org.json.JSONObject) binds: [B:20:0x007c, B:14:0x0052] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void F(java.util.List<com.json.adqualitysdk.sdk.i.af> r11, com.json.adqualitysdk.sdk.i.is r12) {
        /*
            Method dump skipped, instruction units count: 234
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.ag.F(java.util.List, com.ironsource.adqualitysdk.sdk.i.is):void");
    }

    private synchronized void G(boolean z) {
        this.l.m892(new i(z));
        int i2 = f5152g + 93;
        h = i2 % 128;
        int i3 = i2 % 2;
    }

    private static String H(int[] iArr, int i2) {
        String str;
        synchronized (com.json.adqualitysdk.sdk.i.b.f33) {
            char[] cArr = new char[4];
            char[] cArr2 = new char[iArr.length << 1];
            int[] iArr2 = (int[]) a.clone();
            com.json.adqualitysdk.sdk.i.b.f34 = 0;
            while (true) {
                int i3 = com.json.adqualitysdk.sdk.i.b.f34;
                if (i3 < iArr.length) {
                    cArr[0] = (char) (iArr[i3] >> 16);
                    cArr[1] = (char) iArr[i3];
                    cArr[2] = (char) (iArr[i3 + 1] >> 16);
                    cArr[3] = (char) iArr[i3 + 1];
                    com.json.adqualitysdk.sdk.i.b.f31 = (cArr[0] << 16) + cArr[1];
                    com.json.adqualitysdk.sdk.i.b.f32 = (cArr[2] << 16) + cArr[3];
                    com.json.adqualitysdk.sdk.i.b.m390(iArr2);
                    for (int i4 = 0; i4 < 16; i4++) {
                        int i5 = com.json.adqualitysdk.sdk.i.b.f31 ^ iArr2[i4];
                        com.json.adqualitysdk.sdk.i.b.f31 = i5;
                        com.json.adqualitysdk.sdk.i.b.f32 = com.json.adqualitysdk.sdk.i.b.m391(i5) ^ com.json.adqualitysdk.sdk.i.b.f32;
                        int i6 = com.json.adqualitysdk.sdk.i.b.f31;
                        com.json.adqualitysdk.sdk.i.b.f31 = com.json.adqualitysdk.sdk.i.b.f32;
                        com.json.adqualitysdk.sdk.i.b.f32 = i6;
                    }
                    int i7 = com.json.adqualitysdk.sdk.i.b.f31;
                    com.json.adqualitysdk.sdk.i.b.f31 = com.json.adqualitysdk.sdk.i.b.f32;
                    com.json.adqualitysdk.sdk.i.b.f32 = i7;
                    com.json.adqualitysdk.sdk.i.b.f32 = i7 ^ iArr2[16];
                    com.json.adqualitysdk.sdk.i.b.f31 ^= iArr2[17];
                    int i8 = com.json.adqualitysdk.sdk.i.b.f32;
                    int i9 = com.json.adqualitysdk.sdk.i.b.f31;
                    cArr[0] = (char) (i9 >>> 16);
                    cArr[1] = (char) i9;
                    int i10 = com.json.adqualitysdk.sdk.i.b.f32;
                    cArr[2] = (char) (i10 >>> 16);
                    cArr[3] = (char) i10;
                    com.json.adqualitysdk.sdk.i.b.m390(iArr2);
                    int i11 = com.json.adqualitysdk.sdk.i.b.f34;
                    cArr2[i11 << 1] = cArr[0];
                    cArr2[(i11 << 1) + 1] = cArr[1];
                    cArr2[(i11 << 1) + 2] = cArr[2];
                    cArr2[(i11 << 1) + 3] = cArr[3];
                    com.json.adqualitysdk.sdk.i.b.f34 = i11 + 2;
                } else {
                    str = new String(cArr2, 0, i2);
                }
            }
        }
        return str;
    }

    static /* synthetic */ void I(ag agVar) {
        int i2 = h + 101;
        f5152g = i2 % 128;
        if (i2 % 2 != 0) {
        }
        agVar.G(false);
    }

    static /* synthetic */ void J(ag agVar, JSONObject jSONObject, il ilVar) {
        int i2 = h + 35;
        f5152g = i2 % 128;
        boolean z = i2 % 2 != 0;
        agVar.A(jSONObject, ilVar);
        if (z) {
            throw null;
        }
        int i3 = f5152g + 67;
        h = i3 % 128;
        if (!(i3 % 2 == 0)) {
        } else {
            throw null;
        }
    }

    static /* synthetic */ boolean K(ag agVar, int i2) {
        int i3 = f5152g + 109;
        h = i3 % 128;
        if (i3 % 2 != 0) {
            return agVar.R(i2);
        }
        agVar.R(i2);
        throw null;
    }

    private static int L(ix ixVar) {
        int i2;
        int i3 = f5152g + 3;
        h = i3 % 128;
        int i4 = i3 % 2;
        String strM879 = ixVar.m879(x((-80) - (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)), TextUtils.indexOf("", "", 0) + 2020779870, (byte) ((-1) - TextUtils.indexOf((CharSequence) "", '0', 0, 0)), (short) (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)), TextUtils.lastIndexOf("", '0', 0, 0) + 58869825).intern());
        if (TextUtils.isEmpty(strM879)) {
            i2 = 1;
        } else {
            i2 = Integer.parseInt(strM879) + 1;
            int i5 = h + 43;
            f5152g = i5 % 128;
            int i6 = i5 % 2;
        }
        ixVar.m874(x((-81) - (ViewConfiguration.getEdgeSlop() >> 16), 2020779871 - (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)), (byte) (MotionEvent.axisFromString("") + 1), (short) (ViewConfiguration.getScrollBarSize() >> 8), 58869824 - ((Process.getThreadPriority(0) + 20) >> 6)).intern(), String.valueOf(i2));
        return i2;
    }

    static /* synthetic */ void M(ag agVar) {
        int i2 = h + 123;
        f5152g = i2 % 128;
        char c2 = i2 % 2 != 0 ? 'L' : 'C';
        agVar.v();
        if (c2 != 'C') {
            throw null;
        }
        int i3 = f5152g + 1;
        h = i3 % 128;
        int i4 = i3 % 2;
    }

    private void N(JSONObject jSONObject) {
        ArrayList arrayList;
        if (r.m1033().m1037()) {
            synchronized (this) {
                arrayList = new ArrayList(this.q);
            }
            t.m1046(new c(arrayList, jSONObject));
        }
    }

    private synchronized void O(boolean z) {
        int i2 = f5152g + 1;
        int i3 = i2 % 128;
        h = i3;
        if (i2 % 2 != 0) {
            this.p = z;
        } else {
            this.p = z;
            int i4 = 47 / 0;
        }
        int i5 = i3 + 43;
        f5152g = i5 % 128;
        int i6 = i5 % 2;
    }

    static /* synthetic */ a0 P(ag agVar) {
        int i2 = f5152g + 101;
        int i3 = i2 % 128;
        h = i3;
        int i4 = i2 % 2;
        a0 a0Var = agVar.u;
        int i5 = i3 + 79;
        f5152g = i5 % 128;
        int i6 = i5 % 2;
        return a0Var;
    }

    private static String Q(ix ixVar) {
        int i2 = f5152g + 63;
        h = i2 % 128;
        int i3 = i2 % 2;
        String strM879 = ixVar.m879(H(new int[]{-1064594859, 884160406, -1355624327, -952039602, 36466401, -284615097, -160646396, -178067483}, 16 - TextUtils.indexOf("", "")).intern());
        if ((TextUtils.isEmpty(strM879) ? '1' : (char) 18) != 18) {
            int i4 = f5152g + 41;
            h = i4 % 128;
            int i5 = i4 % 2;
            strM879 = UUID.randomUUID().toString();
            ixVar.m874(H(new int[]{-1064594859, 884160406, -1355624327, -952039602, 36466401, -284615097, -160646396, -178067483}, 15 - ((byte) KeyEvent.getModifierMetaStateMask())).intern(), strM879);
        }
        int i6 = f5152g + 73;
        h = i6 % 128;
        if ((i6 % 2 == 0 ? 'T' : '\t') != 'T') {
            return strM879;
        }
        throw null;
    }

    private boolean R(int i2) {
        int i3 = h + 85;
        f5152g = i3 % 128;
        if ((i3 % 2 != 0 ? (char) 21 : (char) 19) != 19) {
            e().m353();
            throw null;
        }
        if (!(i2 < e().m353())) {
            return true;
        }
        int i4 = h + 119;
        f5152g = i4 % 128;
        int i5 = i4 % 2;
        return false;
    }

    static /* synthetic */ List a(ag agVar) {
        int i2 = h + 119;
        int i3 = i2 % 128;
        f5152g = i3;
        int i4 = i2 % 2;
        List<ix.d> list = agVar.r;
        int i5 = i3 + 27;
        h = i5 % 128;
        int i6 = i5 % 2;
        return list;
    }

    static /* synthetic */ ir b(ag agVar) {
        int i2 = h + 103;
        int i3 = i2 % 128;
        f5152g = i3;
        int i4 = i2 % 2;
        ir irVar = agVar.k;
        int i5 = i3 + 63;
        h = i5 % 128;
        int i6 = i5 % 2;
        return irVar;
    }

    static /* synthetic */ String c(ag agVar) {
        int i2 = h + 33;
        f5152g = i2 % 128;
        if (i2 % 2 != 0) {
            agVar.j();
            throw null;
        }
        String strJ = agVar.j();
        int i3 = f5152g + 71;
        h = i3 % 128;
        if ((i3 % 2 == 0 ? ',' : '3') == '3') {
            return strJ;
        }
        int i4 = 72 / 0;
        return strJ;
    }

    private synchronized boolean d() {
        int i2 = h + 45;
        f5152g = i2 % 128;
        if (i2 % 2 != 0) {
            throw null;
        }
        return this.j;
    }

    private synchronized ar e() {
        int i2 = f5152g + 43;
        h = i2 % 128;
        if ((i2 % 2 == 0 ? '.' : (char) 31) != 31) {
            ao.m303().mo314();
            throw null;
        }
        return ao.m303().mo314();
    }

    static /* synthetic */ iz f(ag agVar) {
        int i2 = h + 35;
        int i3 = i2 % 128;
        f5152g = i3;
        boolean z = i2 % 2 != 0;
        iz izVar = agVar.l;
        if (z) {
            throw null;
        }
        int i4 = i3 + 47;
        h = i4 % 128;
        if (i4 % 2 != 0) {
            return izVar;
        }
        throw null;
    }

    private int g() {
        if (e() == null) {
            return 100;
        }
        int i2 = h + 9;
        f5152g = i2 % 128;
        if ((i2 % 2 != 0 ? '\"' : 'F') != 'F') {
            ao.m303().mo317();
            throw null;
        }
        if (ao.m303().mo317()) {
            return 100;
        }
        int iM351 = e().m351();
        int i3 = h + 7;
        f5152g = i3 % 128;
        int i4 = i3 % 2;
        return iM351;
    }

    static /* synthetic */ ai h(ag agVar) {
        int i2 = f5152g;
        int i3 = i2 + 21;
        h = i3 % 128;
        int i4 = i3 % 2;
        ai aiVar = agVar.m;
        int i5 = i2 + 105;
        h = i5 % 128;
        if ((i5 % 2 == 0 ? (char) 28 : '/') != 28) {
            return aiVar;
        }
        throw null;
    }

    static /* synthetic */ am i(ag agVar) {
        int i2 = f5152g + 117;
        int i3 = i2 % 128;
        h = i3;
        int i4 = i2 % 2;
        am amVar = agVar.i;
        int i5 = i3 + 103;
        f5152g = i5 % 128;
        int i6 = i5 % 2;
        return amVar;
    }

    private String j() {
        int i2 = f5152g + 67;
        h = i2 % 128;
        int i3 = i2 % 2;
        if (!(ao.m303().mo317())) {
            return e().m346();
        }
        String strM347 = e().m347();
        int i4 = h + 61;
        f5152g = i4 % 128;
        int i5 = i4 % 2;
        return strM347;
    }

    static /* synthetic */ int k(ag agVar) {
        int i2 = h + 95;
        f5152g = i2 % 128;
        int i3 = i2 % 2;
        int iG = agVar.g();
        int i4 = f5152g + 111;
        h = i4 % 128;
        if (i4 % 2 != 0) {
            return iG;
        }
        int i5 = 13 / 0;
        return iG;
    }

    private synchronized void l() {
        int i2 = f5152g + 17;
        h = i2 % 128;
        if (i2 % 2 == 0) {
            d();
            throw null;
        }
        if (d()) {
            if ((!TextUtils.isEmpty(this.m.m916().m293()) ? (char) 26 : ' ') != ' ') {
                int i3 = h + 93;
                f5152g = i3 % 128;
                int i4 = i3 % 2;
                if (!r()) {
                    O(true);
                    m.m1024(H(new int[]{1906578546, -1401289909, 483824823, -1426137618, 38645096, 1773435101}, View.resolveSize(0, 0) + 9).intern(), x((-81) - (ViewConfiguration.getDoubleTapTimeout() >> 16), 2020779848 - (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)), (byte) (ViewConfiguration.getFadingEdgeLength() >> 16), (short) (ViewConfiguration.getJumpTapTimeout() >> 16), 58869833 - (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1))).intern());
                    this.l.m894(e().m353(), new h());
                }
            }
        }
        int i5 = h + 123;
        f5152g = i5 % 128;
        if (i5 % 2 != 0) {
            throw null;
        }
    }

    private void m() {
        this.t = new b();
        this.k.m851().m863(this.t);
        this.w = new jg(new f());
        jb.m899().m904(new j());
        ao.m303().mo321(new g());
        int i2 = h + 47;
        f5152g = i2 % 128;
        if (i2 % 2 == 0) {
            return;
        }
        int i3 = 37 / 0;
    }

    static /* synthetic */ void n(ag agVar) {
        int i2 = h + 55;
        f5152g = i2 % 128;
        if (i2 % 2 != 0) {
        }
        agVar.B(true);
    }

    private void o() {
        int i2 = f5152g;
        int i3 = i2 + 119;
        h = i3 % 128;
        int i4 = i3 % 2;
        if (this.o) {
            int i5 = i2 + 73;
            h = i5 % 128;
            int i6 = i5 % 2;
            m256();
        }
        this.o = false;
        int i7 = h + 29;
        f5152g = i7 % 128;
        if (!(i7 % 2 != 0)) {
            return;
        }
        int i8 = 51 / 0;
    }

    static /* synthetic */ void p(ag agVar) {
        int i2 = h + 33;
        f5152g = i2 % 128;
        int i3 = i2 % 2;
        agVar.l();
        int i4 = h + 29;
        f5152g = i4 % 128;
        if ((i4 % 2 != 0 ? 'F' : (char) 4) == 4) {
        } else {
            throw null;
        }
    }

    static /* synthetic */ void q(ag agVar) {
        int i2 = h + 107;
        f5152g = i2 % 128;
        if (i2 % 2 != 0) {
        }
        agVar.O(false);
        int i3 = f5152g + 27;
        h = i3 % 128;
        int i4 = i3 % 2;
    }

    private synchronized boolean r() {
        boolean z;
        int i2 = h + 49;
        int i3 = i2 % 128;
        f5152g = i3;
        int i4 = i2 % 2;
        z = this.p;
        int i5 = i3 + 25;
        h = i5 % 128;
        if ((i5 % 2 == 0 ? '*' : 'M') != 'M') {
            throw null;
        }
        return z;
    }

    private void s() {
        int i2 = f5152g + 119;
        h = i2 % 128;
        if ((i2 % 2 == 0 ? 'N' : (char) 6) != 6) {
            throw null;
        }
        if (this.t != null) {
            this.k.m851().m860(this.t);
        }
        this.w.m910();
        this.w = null;
        int i3 = f5152g + 121;
        h = i3 % 128;
        if (i3 % 2 != 0) {
        } else {
            throw null;
        }
    }

    static /* synthetic */ void t(ag agVar) {
        int i2 = h + 29;
        f5152g = i2 % 128;
        int i3 = i2 % 2;
        agVar.o();
        int i4 = f5152g + 93;
        h = i4 % 128;
        if ((i4 % 2 == 0 ? '$' : 'L') == 'L') {
        } else {
            throw null;
        }
    }

    static /* synthetic */ Handler u(ag agVar) {
        int i2 = h;
        int i3 = i2 + 13;
        f5152g = i3 % 128;
        int i4 = i3 % 2;
        Handler handler = agVar.n;
        int i5 = i2 + 103;
        f5152g = i5 % 128;
        int i6 = i5 % 2;
        return handler;
    }

    private void v() {
        int i2 = f5152g + 41;
        h = i2 % 128;
        int i3 = i2 % 2;
        G(false);
        int i4 = f5152g + 39;
        h = i4 % 128;
        if (i4 % 2 != 0) {
        } else {
            throw null;
        }
    }

    static /* synthetic */ q w(ag agVar) {
        int i2 = h + 95;
        f5152g = i2 % 128;
        boolean z = i2 % 2 == 0;
        q qVar = agVar.y;
        if (!z) {
            int i3 = 78 / 0;
        }
        return qVar;
    }

    private static String x(int i2, int i3, byte b2, short s, int i4) {
        String string;
        synchronized (n.f132) {
            StringBuilder sb = new StringBuilder();
            int i5 = c;
            int i6 = i2 + i5;
            boolean z = i6 == -1;
            if (z) {
                byte[] bArr = f5150e;
                i6 = bArr != null ? (byte) (bArr[b + i4] + i5) : (short) (f5151f[b + i4] + i5);
            }
            if (i6 > 0) {
                n.f136 = ((i4 + i6) - 2) + b + (z ? 1 : 0);
                n.f135 = b2;
                char c2 = (char) (i3 + f5149d);
                n.f133 = c2;
                sb.append(c2);
                n.f134 = n.f133;
                n.f137 = 1;
                while (n.f137 < i6) {
                    byte[] bArr2 = f5150e;
                    if (bArr2 != null) {
                        int i7 = n.f136;
                        n.f136 = i7 - 1;
                        n.f133 = (char) (n.f134 + (((byte) (bArr2[i7] + s)) ^ n.f135));
                    } else {
                        short[] sArr = f5151f;
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

    static /* synthetic */ void y(ag agVar, List list, is isVar) {
        int i2 = f5152g + 61;
        h = i2 % 128;
        int i3 = i2 % 2;
        agVar.F(list, isVar);
        int i4 = f5152g + 31;
        h = i4 % 128;
        if ((i4 % 2 == 0 ? '/' : '&') != '/') {
        } else {
            throw null;
        }
    }

    private void z(JSONObject jSONObject) {
        int i2 = f5152g + 97;
        h = i2 % 128;
        int i3 = i2 % 2;
        Iterator<String> it = e().m352().iterator();
        int i4 = f5152g + 91;
        h = i4 % 128;
        int i5 = i4 % 2;
        while (true) {
            if (!it.hasNext()) {
                return;
            } else {
                jSONObject.remove(it.next());
            }
        }
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static JSONObject m255(String str, String str2, String str3, String str4, JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put(x((-81) - ExpandableListView.getPackedPositionGroup(0L), (SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)) + 2020779865, (byte) (1 - (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1))), (short) (ViewConfiguration.getKeyRepeatDelay() >> 16), KeyEvent.keyCodeFromString("") + 58869774).intern(), str);
            jSONObject2.put(H(new int[]{1672462474, -1576178270, 1487066871, 661348147}, 4 - Process.getGidForName("")).intern(), str2);
            jSONObject2.put(x((-80) - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)), 2020779865 - TextUtils.lastIndexOf("", '0'), (byte) Drawable.resolveOpacity(0, 0), (short) ((ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)) - 1), (ViewConfiguration.getLongPressTimeout() >> 16) + 58869779).intern(), str3);
            if (!TextUtils.isEmpty(str4)) {
                int i2 = f5152g + 13;
                h = i2 % 128;
                jSONObject2.put(i2 % 2 == 0 ? H(new int[]{-994441655, 2121355303, -1449298757, 430346487}, 3 << AndroidCharacter.getMirror(',')).intern() : H(new int[]{-994441655, 2121355303, -1449298757, 430346487}, AndroidCharacter.getMirror('0') - '+').intern(), str4);
            }
            if ((jSONObject != null ? '2' : (char) 20) == '2') {
                int i3 = f5152g + 89;
                h = i3 % 128;
                int i4 = i3 % 2;
                ju.m960(jSONObject2, jSONObject);
            }
        } catch (JSONException e2) {
            m.m1032(H(new int[]{1906578546, -1401289909, 483824823, -1426137618, 38645096, 1773435101}, TextUtils.indexOf((CharSequence) "", '0') + 10).intern(), H(new int[]{631528201, 904116263, -1115741576, -291993745, -870454694, -1757866208, 9446013, 1901748655, 61267540, 1033613181, 514316235, 579437968, -178768739, -1972339502}, Gravity.getAbsoluteGravity(0, 0) + 26).intern(), e2);
        }
        int i5 = h + 89;
        f5152g = i5 % 128;
        if (!(i5 % 2 != 0)) {
            return jSONObject2;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final void m256() {
        this.y.onEvent(x((-81) - (ViewConfiguration.getKeyRepeatTimeout() >> 16), Color.green(0) + 2020779881, (byte) KeyEvent.getDeadChar(0, 0), (short) (ViewConfiguration.getWindowTouchSlop() >> 8), 58869735 - (ViewConfiguration.getScrollBarSize() >> 8)).intern());
        m257(x((-81) - TextUtils.indexOf("", ""), (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)) + 2020779880, (byte) ((-1) - TextUtils.lastIndexOf("", '0', 0, 0)), (short) (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)), Color.alpha(0) + 58869735).intern(), new JSONObject());
        int i2 = f5152g + 19;
        h = i2 % 128;
        if (i2 % 2 == 0) {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final void m257(String str, JSONObject jSONObject) {
        int i2 = f5152g + 107;
        h = i2 % 128;
        char c2 = i2 % 2 == 0 ? (char) 29 : '7';
        m260(str, jSONObject, null);
        if (c2 != '7') {
            int i3 = 88 / 0;
        }
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final void m258() {
        try {
            this.o = true;
            m263();
            synchronized (this) {
                Handler handler = this.n;
                if (handler != null) {
                    handler.removeCallbacksAndMessages(null);
                }
                G(true);
            }
        } catch (Exception e2) {
            jy.m987(H(new int[]{1906578546, -1401289909, 483824823, -1426137618, 38645096, 1773435101}, View.resolveSize(0, 0) + 9).intern(), x(TextUtils.getOffsetAfter("", 0) - 81, (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)) + 2020779835, (byte) (ViewConfiguration.getFadingEdgeLength() >> 16), (short) (1 - (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1))), 58869747 - ExpandableListView.getPackedPositionChild(0L)).intern(), (Throwable) e2, false);
        }
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final synchronized void m259(ix.d dVar) {
        int i2 = h + 69;
        f5152g = i2 % 128;
        int i3 = i2 % 2;
        this.r.add(dVar);
        int i4 = h + 13;
        f5152g = i4 % 128;
        int i5 = i4 % 2;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final void m260(String str, JSONObject jSONObject, JSONObject jSONObject2) {
        String strIntern = H(new int[]{1906578546, -1401289909, 483824823, -1426137618, 38645096, 1773435101}, (ViewConfiguration.getScrollBarFadeDuration() >> 16) + 9).intern();
        StringBuilder sb = new StringBuilder();
        sb.append(H(new int[]{-1235212231, -798981051, -348640727, 1257090872, -1383407532, 43175876, 1649582397, -1035609610, -1919991927, 428727255, 504481612, -29070427}, MotionEvent.axisFromString("") + 23).intern());
        sb.append(str);
        sb.append(H(new int[]{1776312597, 1780639588, -691156449, -299003303, 1707815185, -1479194602, -898826924, -63216319, -786304281, -835786047}, (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)) + 17).intern());
        m.m1027(strIntern, sb.toString(), jSONObject);
        try {
            if (e().m350().contains(str)) {
                String strIntern2 = H(new int[]{1906578546, -1401289909, 483824823, -1426137618, 38645096, 1773435101}, (ViewConfiguration.getScrollDefaultDelay() >> 16) + 9).intern();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(H(new int[]{2131639876, 1787676034, -1701470368, -346524932, -653781958, 1934727618, 1601802049, -1131601531, -1577366248, 763378268, 2068671083, 778448446, -1402603853, -1615078168, -931550515, -1238914795}, 29 - KeyEvent.getDeadChar(0, 0)).intern());
                sb2.append(str);
                sb2.append(x((-81) - (ViewConfiguration.getJumpTapTimeout() >> 16), 2020779797 - KeyEvent.keyCodeFromString(""), (byte) (ViewConfiguration.getFadingEdgeLength() >> 16), (short) (ViewConfiguration.getKeyRepeatTimeout() >> 16), 58869785 - (KeyEvent.getMaxKeyCode() >> 16)).intern());
                m.m1024(strIntern2, sb2.toString());
                return;
            }
            String strIntern3 = H(new int[]{1906578546, -1401289909, 483824823, -1426137618, 38645096, 1773435101}, 9 - TextUtils.indexOf("", "")).intern();
            StringBuilder sb3 = new StringBuilder();
            sb3.append(H(new int[]{-1235212231, -798981051, -348640727, 1257090872, -1383407532, 43175876, 1649582397, -1035609610, -1919991927, 428727255, 1776312597, 1780639588, 256901139, -991527101, 588298272, 1556236085}, 32 - KeyEvent.keyCodeFromString("")).intern());
            sb3.append(str);
            m.m1024(strIntern3, sb3.toString());
            this.m.m276(str, jSONObject, jSONObject2, this.k.m851().m858(), new e());
            int i2 = h + 99;
            f5152g = i2 % 128;
            int i3 = i2 % 2;
        } catch (Exception e2) {
            jy.m993(H(new int[]{1906578546, -1401289909, 483824823, -1426137618, 38645096, 1773435101}, (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)) + 8).intern(), x(KeyEvent.keyCodeFromString("") - 81, 2020779834 - (KeyEvent.getMaxKeyCode() >> 16), (byte) (ExpandableListView.getPackedPositionChild(0L) + 1), (short) (ViewConfiguration.getEdgeSlop() >> 16), 58869807 - (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1))).intern(), (Throwable) e2, false, false, true);
        }
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final String m261() {
        String strQ = Q(new ix(this.s, H(new int[]{-1120341153, 2145059232, -960851986, -611875677, 466543287, -1374584030, -860883198, -943398665, 1476393239, 1122978245, 483824823, -1426137618, 38645096, 1773435101}, Color.rgb(0, 0, 0) + 16777241).intern(), H(new int[]{-1662043811, -2099185488, 602571165, -810199889, 698956127, 372937376, -704304246, 1136631552, 186616307, 405816583, -934694433, -1082555088}, 24 - View.MeasureSpec.getMode(0)).intern()));
        int i2 = h + 1;
        f5152g = i2 % 128;
        int i3 = i2 % 2;
        return strQ;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x002b A[Catch: all -> 0x0049, TryCatch #1 {, blocks: (B:3:0x0001, B:9:0x0015, B:18:0x0030, B:24:0x0048, B:17:0x002b, B:15:0x0025, B:22:0x0046), top: B:30:0x0001, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0044 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0046 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized void m262() {
        /*
            r4 = this;
            monitor-enter(r4)
            int r0 = com.json.adqualitysdk.sdk.i.ag.h     // Catch: java.lang.Throwable -> L49
            int r0 = r0 + 61
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.ag.f5152g = r1     // Catch: java.lang.Throwable -> L49
            int r0 = r0 % 2
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L11
            r0 = 1
            goto L12
        L11:
            r0 = 0
        L12:
            r3 = 0
            if (r0 == r2) goto L25
            r4.j = r1     // Catch: java.lang.Throwable -> L49
            android.os.Handler r0 = r4.n     // Catch: java.lang.Throwable -> L49
            r1 = 47
            if (r0 == 0) goto L20
            r0 = 47
            goto L22
        L20:
            r0 = 51
        L22:
            if (r0 == r1) goto L2b
            goto L30
        L25:
            r4.j = r2     // Catch: java.lang.Throwable -> L49
            android.os.Handler r0 = r4.n     // Catch: java.lang.Throwable -> L49
            if (r0 == 0) goto L30
        L2b:
            android.os.Handler r0 = r4.n     // Catch: java.lang.Throwable -> L49
            r0.removeCallbacksAndMessages(r3)     // Catch: java.lang.Throwable -> L49
        L30:
            com.ironsource.adqualitysdk.sdk.i.ir r0 = r4.k     // Catch: java.lang.Throwable -> L49
            r0.m853()     // Catch: java.lang.Throwable -> L49
            r4.s()     // Catch: java.lang.Throwable -> L49
            int r0 = com.json.adqualitysdk.sdk.i.ag.f5152g     // Catch: java.lang.Throwable -> L49
            int r0 = r0 + 17
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.ag.h = r1     // Catch: java.lang.Throwable -> L49
            int r0 = r0 % 2
            if (r0 == 0) goto L46
            monitor-exit(r4)
            return
        L46:
            throw r3     // Catch: java.lang.Throwable -> L47
        L47:
            r0 = move-exception
            throw r0     // Catch: java.lang.Throwable -> L49
        L49:
            r0 = move-exception
            monitor-exit(r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.ag.m262():void");
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m263() {
        this.y.onEvent(x(TextUtils.indexOf("", "", 0, 0) - 81, Drawable.resolveOpacity(0, 0) + 2020779881, (byte) (TextUtils.lastIndexOf("", '0') + 1), (short) ((AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)) - 1), (ViewConfiguration.getKeyRepeatDelay() >> 16) + 58869724).intern());
        m257(x((ViewConfiguration.getTouchSlop() >> 8) - 81, (ViewConfiguration.getFadingEdgeLength() >> 16) + 2020779881, (byte) (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)), (short) (ViewConfiguration.getJumpTapTimeout() >> 16), Gravity.getAbsoluteGravity(0, 0) + 58869724).intern(), new JSONObject());
        int i2 = h + 73;
        f5152g = i2 % 128;
        int i3 = i2 % 2;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized void m264(ah ahVar) {
        int i2 = h + 33;
        f5152g = i2 % 128;
        int i3 = i2 % 2;
        this.q.add(ahVar);
        int i4 = h + 63;
        f5152g = i4 % 128;
        if (i4 % 2 != 0) {
            throw null;
        }
    }
}
