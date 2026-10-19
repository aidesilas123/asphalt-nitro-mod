package com.json.adqualitysdk.sdk.i;

import android.app.Activity;
import android.graphics.Color;
import android.graphics.ImageFormat;
import android.graphics.PointF;
import android.media.AudioTrack;
import android.os.Process;
import android.text.AndroidCharacter;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.webkit.WebView;
import android.widget.ExpandableListView;
import com.applovin.exoplayer2.common.base.Ascii;
import com.json.adqualitysdk.sdk.i.at;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class ab extends y<View, Activity> {
    private static int[] n = {1854695932, 1270177423, -1757637628, 1823622023, 595297542, -1800648723, 1367438170, 2047838246, 553631992, -1940621460, -888964428, 1952428304, 792045714, -1104624992, 2054064395, -2096185321, -271412168, -1792559120};
    private static int o = 0;
    private static int p = 1;
    private im r;
    private View.OnLayoutChangeListener s;
    private jh t;
    private Class w;
    private final Map<WebView, ad> q = new WeakHashMap();
    private final Map<View, ab> u = new WeakHashMap();
    private final Map<View, View.OnLayoutChangeListener> v = new WeakHashMap();
    private d x = new d();
    private final List<View> y = new ArrayList();

    final class a extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ Activity f5130d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private /* synthetic */ View f5131e;

        /* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ab$a$a, reason: collision with other inner class name */
        final class C0332a extends il {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private /* synthetic */ List f5133d;

            C0332a(List list) {
                this.f5133d = list;
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() {
                ab.q(ab.this, this.f5133d);
            }
        }

        a(Activity activity, View view) {
            this.f5130d = activity;
            this.f5131e = view;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
        public final void mo225() {
            ab.p(ab.this).clear();
            ab.t(this.f5130d, this.f5131e, ab.s(ab.this), d.D(ab.f(ab.this)), d.H(ab.f(ab.this)), d.q(ab.f(ab.this)), ab.p(ab.this));
            if (ka.m1011(this.f5131e, ab.s(ab.this), (String) null, (List<Integer>) d.H(ab.f(ab.this)), (List<String>) d.q(ab.f(ab.this)))) {
                ab.p(ab.this).add(this.f5131e);
            }
            ArrayList arrayList = new ArrayList(ab.p(ab.this));
            if (d.h(ab.f(ab.this))) {
                t.m1041(new C0332a(arrayList));
            } else {
                ab.q(ab.this, arrayList);
            }
        }
    }

    final class b implements View.OnLayoutChangeListener {
        private static char[] a = {280, 299, 295, 313, 259, 294, 309, 266, 291, 304, 302, 308, 263, 305, 226, 270, 315, 311, 310, 261, 298, 297};
        private static int b = 194;
        private static boolean c = true;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static boolean f5135d = true;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static int f5136e = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static int f5137f = 1;

        b() {
        }

        private static String a(int[] iArr, String str, int i, String str2) throws UnsupportedEncodingException {
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
                char[] cArr2 = a;
                int i2 = b;
                if (f5135d) {
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
                if (c) {
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

        @Override // android.view.View.OnLayoutChangeListener
        public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            int i9 = f5137f + 99;
            f5136e = i9 % 128;
            try {
                if (i9 % 2 != 0) {
                    ab.this.m224(view);
                    throw null;
                }
                ab.this.m224(view);
            } catch (Throwable th) {
                jy.m987(a(null, null, 127 - ((Process.getThreadPriority(0) + 20) >> 6), "\u008c\u0083\u008b\u0086\u008a\u0089\u0088\u0087\u0086\u0085\u0084\u0083\u0082\u0081").intern(), a(null, null, 127 - (ViewConfiguration.getPressedStateDuration() >> 16), "\u0083\u0096\u008a\u0089\u0095\u0094\u0093\u0092\u008e\u0091\u0089\u0090\u008a\u008e\u008f\u008a\u0082\u008f\u008c\u008e\u008c\u008c\u008d").intern(), th, false);
            }
        }
    }

    final class c implements at.e {
        c() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.at.e, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
        public final /* bridge */ /* synthetic */ void mo226(JSONObject jSONObject, Object obj, Object obj2) {
            ab.this.mo226(jSONObject, (WebView) obj, (Activity) obj2);
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.at.e, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
        public final /* bridge */ /* synthetic */ void mo227(JSONObject jSONObject, Object obj, Object obj2, Object obj3) {
            ab.this.mo227(jSONObject, (WebView) obj, obj2, (Activity) obj3);
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.at.e, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
        public final /* bridge */ /* synthetic */ void mo228(JSONObject jSONObject, Object obj, Object obj2) {
            ab.this.mo228(jSONObject, (WebView) obj, (Activity) obj2);
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.at.e, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
        public final /* bridge */ /* synthetic */ void mo229(JSONObject jSONObject, Object obj, Object obj2) {
            ab.this.mo229(jSONObject, (WebView) obj, (Activity) obj2);
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.at.e, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
        public final /* bridge */ /* synthetic */ void mo230(JSONObject jSONObject, Object obj, Object obj2) {
            ab.this.mo230(jSONObject, (WebView) obj, (Activity) obj2);
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.at.e, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
        public final /* bridge */ /* synthetic */ void mo231(JSONObject jSONObject, Object obj, Object obj2, Object obj3) {
            ab.this.mo231(jSONObject, (WebView) obj, obj2, (Activity) obj3);
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.at.e, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
        public final /* bridge */ /* synthetic */ void mo232(JSONObject jSONObject, Object obj, Object obj2) {
            ab.this.mo232(jSONObject, (WebView) obj, (Activity) obj2);
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.at.e, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
        public final /* bridge */ /* synthetic */ void mo233(JSONObject jSONObject, Object obj, Object obj2, Object obj3) {
            ab.this.mo233(jSONObject, (WebView) obj, obj2, (Activity) obj3);
        }
    }

    public class d {
        private static char b = 6;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static int f5139d = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static int f5140e = 1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f5141f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f5142g;
        private String h;
        private boolean i;
        private String j;
        private boolean k;
        private boolean l;
        private boolean m;
        private boolean n;
        private boolean o;
        private boolean p;
        private boolean q;
        private List<Integer> r = new ArrayList();
        private List<String> s = new ArrayList();
        private List<String> t = new ArrayList();
        private List<String> u = new ArrayList();
        private static char[] a = {'a', 'd', 'V', 'i', 'e', 'w', 'C', 'l', 's', 'N', 'm', 'P', 'c', 'k', 'g', 'j', 'T', 'o', 'I', 'n', 't', 'u', 'W', 'b', 'v', 'A', 'f', 'r', 'S', 'E', 'J', 'p', 'x', 'B', 'K', 'h'};
        private static int[] c = {2113000905, -119037417, -399077742, 1355838914, 840333486, -294558199, 1664179428, -1978313910, 112704617, -1376756903, -2044949814, -2041509811, -335747306, -1160449856, 1964019648, 627841071, -1978332679, -1162440671};

        public d() {
        }

        public d(JSONObject jSONObject) {
            u(jSONObject.optString(C((byte) (TextUtils.lastIndexOf("", '0') + 72), "\u0001\u0002\u0003\u0004\u0005\u0000\u0007\b\u0002\u0006\t\n\u0004\u0006¬", ExpandableListView.getPackedPositionChild(0L) + 16).intern()));
            z(jSONObject.optString(C((byte) (102 - ImageFormat.getBitsPerPixel(0)), "\u0001\u0002\u0003\u0004\u0005\u0000\u0006\u0005\r\u000e\u0002\fÌ", ImageFormat.getBitsPerPixel(0) + 14).intern()));
            o(jSONObject.optString(C((byte) (62 - (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1))), "\u000e\t\u0011\f\u0013\u0014\u0010\u0003\u000e\u0012", Process.getGidForName("") + 11).intern()));
            B(jSONObject.optBoolean(C((byte) (104 - (ViewConfiguration.getFadingEdgeLength() >> 16)), "\u0014\t\n\u001c\u0005\u0016\u0003\u0004\u0005\u0000\u0007\b\u0004\u0005\u0014\u0015", 16 - (ViewConfiguration.getJumpTapTimeout() >> 16)).intern()));
            jSONObject.optBoolean(x(new int[]{-25222554, -214696313, 452397398, -1082135606, -1287432654, -655939028, 1750567903, -906405098, 1923497270, -966907993}, 18 - ExpandableListView.getPackedPositionType(0L)).intern());
            E(jSONObject.optString(x(new int[]{114384953, 2050147951, -1154828688, 851928665, -1318660097, 1000723057}, 9 - (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1))).intern()));
            s(jSONObject.optBoolean(C((byte) (Color.green(0) + 34), "\u0002\t\u0006\u0003\u0015\u0002\u001c\u0000\u001f\u0007", 9 - TextUtils.lastIndexOf("", '0', 0, 0)).intern()));
            w(jSONObject.optBoolean(C((byte) (Color.red(0) + 57), "\u001d\u000e\u0018\u000f\n\"\u0001\u0016\u0007\u001f¥¥\u0018\u0019\u0001\u0016\u001a\u000e", TextUtils.getCapsMode("", 0, 0) + 18).intern()));
            p(jSONObject.optBoolean(x(new int[]{688761516, 905086298, -1480783653, -1830919900, -1637277775, -2079072010}, 8 - TextUtils.lastIndexOf("", '0', 0)).intern()));
            G(jSONObject.optBoolean(C((byte) (((byte) KeyEvent.getModifierMetaStateMask()) + Ascii.FF), "\u0014\t\u0000\"\u0006\u001e\u0002\u0006\u000f\u0018\u0001!\u007f", (ViewConfiguration.getPressedStateDuration() >> 16) + 13).intern(), true));
            k(jSONObject.optBoolean(x(new int[]{108525292, -1975286307, 2113785573, -1117535922, -1459933679, -905678404}, (ViewConfiguration.getWindowTouchSlop() >> 8) + 10).intern()));
            m(jSONObject.optBoolean(C((byte) (43 - (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1))), "\r#\u0001\u0016\u0007\b\u0000\u000f\u000e\u0007\u0013\u0014\u001a#\u0016\u0002\u0019\u0015\u0001\u0006\u0003!\u0017\u000b\n\u0002\u009d", TextUtils.getOffsetBefore("", 0) + 27).intern()));
            g(jSONObject.optBoolean(x(new int[]{-241394958, 1851085638, 1915972605, 668025739, 1728382397, -374386148, -1926305256, -1695679302, 842909856, -524828457, -984771615, 1382195661}, 23 - TextUtils.indexOf((CharSequence) "", '0')).intern(), true));
            r(ju.m956(jSONObject.optJSONArray(C((byte) (91 - TextUtils.indexOf((CharSequence) "", '0')), "\u001b\u0000\u0005\u0000\u0013\u0000Ï", (ViewConfiguration.getEdgeSlop() >> 16) + 7).intern())));
            F(ju.m956(jSONObject.optJSONArray(C((byte) ((ViewConfiguration.getKeyRepeatDelay() >> 16) + 23), "\u0006\u0012\u0015\u0002\u001b\u0000\u0015\u0002\u0002\n\u0011\f\u0014\f\u0017\r\u001c\u0003", TextUtils.getCapsMode("", 0, 0) + 18).intern())));
            A(ju.m956(jSONObject.optJSONArray(x(new int[]{1655629984, 287457839, -1244267224, 608212257, 1331302741, -603619023, -1637277775, -2079072010}, 13 - KeyEvent.normalizeMetaState(0)).intern())));
            v(ju.m956(jSONObject.optJSONArray(C((byte) (TextUtils.indexOf("", "", 0) + 44), "\r\u0006\u0002\u0006\n\u0002\n\u000e\u0010#\u0091\u0091\u009c", Color.argb(0, 0, 0, 0) + 13).intern())));
        }

        private d A(List<String> list) {
            int i = f5139d + 121;
            int i2 = i % 128;
            f5140e = i2;
            int i3 = i % 2;
            if ((list != null ? '.' : '0') != '0') {
                int i4 = i2 + 3;
                f5139d = i4 % 128;
                int i5 = i4 % 2;
                this.t = list;
            }
            return this;
        }

        private d B(boolean z) {
            int i = f5139d + 5;
            int i2 = i % 128;
            f5140e = i2;
            int i3 = i % 2;
            this.i = z;
            int i4 = i2 + 23;
            f5139d = i4 % 128;
            if ((i4 % 2 != 0 ? 'G' : '$') == '$') {
                return this;
            }
            int i5 = 58 / 0;
            return this;
        }

        private static String C(byte b2, String str, int i) {
            String str2;
            Object charArray = str;
            if (str != null) {
                charArray = str.toCharArray();
            }
            char[] cArr = (char[]) charArray;
            synchronized (g.f56) {
                char[] cArr2 = a;
                char c2 = b;
                char[] cArr3 = new char[i];
                if (i % 2 != 0) {
                    i--;
                    cArr3[i] = (char) (cArr[i] - b2);
                }
                if (i > 1) {
                    g.f60 = 0;
                    while (true) {
                        int i2 = g.f60;
                        if (i2 >= i) {
                            break;
                        }
                        g.f58 = cArr[i2];
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
                                int i3 = (g.f59 * c2) + g.f55;
                                int i4 = (g.f61 * c2) + g.f57;
                                int i5 = g.f60;
                                cArr3[i5] = cArr2[i3];
                                cArr3[i5 + 1] = cArr2[i4];
                            } else if (g.f59 == g.f61) {
                                g.f55 = ((g.f55 + c2) - 1) % c2;
                                g.f57 = ((g.f57 + c2) - 1) % c2;
                                int i6 = (g.f59 * c2) + g.f55;
                                int i7 = (g.f61 * c2) + g.f57;
                                int i8 = g.f60;
                                cArr3[i8] = cArr2[i6];
                                cArr3[i8 + 1] = cArr2[i7];
                            } else {
                                int i9 = (g.f59 * c2) + g.f57;
                                int i10 = (g.f61 * c2) + g.f55;
                                int i11 = g.f60;
                                cArr3[i11] = cArr2[i9];
                                cArr3[i11 + 1] = cArr2[i10];
                            }
                        }
                        g.f60 += 2;
                    }
                }
                str2 = new String(cArr3);
            }
            return str2;
        }

        static /* synthetic */ boolean D(d dVar) {
            int i = f5139d + 103;
            int i2 = i % 128;
            f5140e = i2;
            char c2 = i % 2 == 0 ? ';' : 'C';
            boolean z = dVar.m;
            if (c2 != 'C') {
                int i3 = 64 / 0;
            }
            int i4 = i2 + 13;
            f5139d = i4 % 128;
            if (i4 % 2 == 0) {
                return z;
            }
            int i5 = 27 / 0;
            return z;
        }

        private d E(String str) {
            int i = f5139d + 31;
            int i2 = i % 128;
            f5140e = i2;
            int i3 = i % 2;
            this.j = str;
            int i4 = i2 + 7;
            f5139d = i4 % 128;
            int i5 = i4 % 2;
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0020  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private com.ironsource.adqualitysdk.sdk.i.ab.d F(java.util.List<java.lang.String> r5) {
            /*
                r4 = this;
                int r0 = com.ironsource.adqualitysdk.sdk.i.ab.d.f5140e
                int r0 = r0 + 49
                int r1 = r0 % 128
                com.ironsource.adqualitysdk.sdk.i.ab.d.f5139d = r1
                int r0 = r0 % 2
                r2 = 1
                r3 = 0
                if (r0 == 0) goto L10
                r0 = 1
                goto L11
            L10:
                r0 = 0
            L11:
                if (r0 == 0) goto L1e
                r0 = 71
                int r0 = r0 / r3
                if (r5 == 0) goto L19
                r2 = 0
            L19:
                if (r2 == 0) goto L20
                goto L2a
            L1c:
                r5 = move-exception
                throw r5
            L1e:
                if (r5 == 0) goto L2a
            L20:
                int r1 = r1 + 67
                int r0 = r1 % 128
                com.ironsource.adqualitysdk.sdk.i.ab.d.f5140e = r0
                int r1 = r1 % 2
                r4.s = r5
            L2a:
                int r5 = com.ironsource.adqualitysdk.sdk.i.ab.d.f5140e
                int r5 = r5 + 109
                int r0 = r5 % 128
                com.ironsource.adqualitysdk.sdk.i.ab.d.f5139d = r0
                int r5 = r5 % 2
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.ab.d.F(java.util.List):com.ironsource.adqualitysdk.sdk.i.ab$d");
        }

        private d G(boolean z) {
            int i = f5139d;
            int i2 = i + 91;
            f5140e = i2 % 128;
            int i3 = i2 % 2;
            this.n = z;
            int i4 = i + 53;
            f5140e = i4 % 128;
            int i5 = i4 % 2;
            return this;
        }

        static /* synthetic */ List H(d dVar) {
            int i = f5139d + 57;
            int i2 = i % 128;
            f5140e = i2;
            boolean z = i % 2 != 0;
            List<Integer> list = dVar.r;
            if (!z) {
                int i3 = 98 / 0;
            }
            int i4 = i2 + 125;
            f5139d = i4 % 128;
            int i5 = i4 % 2;
            return list;
        }

        static /* synthetic */ List a(d dVar) {
            int i = f5139d + 5;
            int i2 = i % 128;
            f5140e = i2;
            char c2 = i % 2 == 0 ? '8' : '1';
            List<String> list = dVar.u;
            if (c2 != '1') {
                int i3 = 14 / 0;
            }
            int i4 = i2 + 87;
            f5139d = i4 % 128;
            if (i4 % 2 != 0) {
                throw null;
            }
            return list;
        }

        static /* synthetic */ String b(d dVar) {
            int i = f5139d + 33;
            int i2 = i % 128;
            f5140e = i2;
            int i3 = i % 2;
            String str = dVar.j;
            int i4 = i2 + 109;
            f5139d = i4 % 128;
            if (!(i4 % 2 != 0)) {
                return str;
            }
            int i5 = 38 / 0;
            return str;
        }

        static /* synthetic */ boolean c(d dVar) {
            int i = f5140e + 103;
            f5139d = i % 128;
            char c2 = i % 2 != 0 ? (char) 22 : '\"';
            boolean z = dVar.p;
            if (c2 == '\"') {
                return z;
            }
            throw null;
        }

        static /* synthetic */ boolean d(d dVar) {
            int i = f5140e;
            int i2 = i + 49;
            f5139d = i2 % 128;
            int i3 = i2 % 2;
            boolean z = dVar.o;
            int i4 = i + 39;
            f5139d = i4 % 128;
            if ((i4 % 2 != 0 ? '4' : (char) 5) != '4') {
                return z;
            }
            throw null;
        }

        static /* synthetic */ boolean e(d dVar) {
            int i = f5139d;
            int i2 = i + 49;
            f5140e = i2 % 128;
            char c2 = i2 % 2 == 0 ? (char) 4 : (char) 19;
            boolean z = dVar.n;
            if (c2 != 19) {
                throw null;
            }
            int i3 = i + 105;
            f5140e = i3 % 128;
            if ((i3 % 2 == 0 ? '`' : '(') == '(') {
                return z;
            }
            throw null;
        }

        static /* synthetic */ boolean f(d dVar) {
            int i = f5140e + 69;
            f5139d = i % 128;
            char c2 = i % 2 != 0 ? '^' : '[';
            boolean z = dVar.i;
            if (c2 != '^') {
                return z;
            }
            throw null;
        }

        private d g(boolean z) {
            int i = f5140e;
            int i2 = i + 107;
            f5139d = i2 % 128;
            if ((i2 % 2 != 0 ? '8' : 'c') != '8') {
                this.q = z;
            } else {
                this.q = z;
                int i3 = 6 / 0;
            }
            int i4 = i + 13;
            f5139d = i4 % 128;
            if ((i4 % 2 != 0 ? '.' : '3') == '3') {
                return this;
            }
            int i5 = 20 / 0;
            return this;
        }

        static /* synthetic */ boolean h(d dVar) {
            int i = f5140e;
            int i2 = i + 49;
            f5139d = i2 % 128;
            char c2 = i2 % 2 != 0 ? (char) 4 : '+';
            boolean z = dVar.q;
            if (c2 == 4) {
                throw null;
            }
            int i3 = i + 67;
            f5139d = i3 % 128;
            int i4 = i3 % 2;
            return z;
        }

        static /* synthetic */ String i(d dVar) {
            int i = f5140e;
            int i2 = i + 33;
            f5139d = i2 % 128;
            char c2 = i2 % 2 != 0 ? (char) 14 : '\"';
            String str = dVar.h;
            if (c2 == 14) {
                int i3 = 98 / 0;
            }
            int i4 = i + 19;
            f5139d = i4 % 128;
            if (i4 % 2 == 0) {
                return str;
            }
            throw null;
        }

        static /* synthetic */ boolean j(d dVar) {
            int i = f5139d + 19;
            int i2 = i % 128;
            f5140e = i2;
            int i3 = i % 2;
            boolean z = dVar.k;
            int i4 = i2 + 113;
            f5139d = i4 % 128;
            if (i4 % 2 != 0) {
                throw null;
            }
            return z;
        }

        private d k(boolean z) {
            int i = f5140e + 53;
            int i2 = i % 128;
            f5139d = i2;
            if (!(i % 2 != 0)) {
                this.o = z;
            } else {
                this.o = z;
                int i3 = 27 / 0;
            }
            int i4 = i2 + 69;
            f5140e = i4 % 128;
            if ((i4 % 2 == 0 ? 'T' : '6') != 'T') {
                return this;
            }
            int i5 = 77 / 0;
            return this;
        }

        static /* synthetic */ String l(d dVar) {
            int i = f5139d + 117;
            f5140e = i % 128;
            boolean z = i % 2 == 0;
            String str = dVar.f5142g;
            if (z) {
                int i2 = 85 / 0;
            }
            return str;
        }

        private d m(boolean z) {
            int i = f5140e + 31;
            f5139d = i % 128;
            if ((i % 2 != 0 ? 'R' : 'L') != 'R') {
                this.p = z;
                return this;
            }
            this.p = z;
            throw null;
        }

        static /* synthetic */ boolean n(d dVar) {
            int i = f5140e + 57;
            f5139d = i % 128;
            boolean z = i % 2 != 0;
            boolean z2 = dVar.l;
            if (z) {
                int i2 = 3 / 0;
            }
            return z2;
        }

        private d o(String str) {
            int i = f5139d;
            int i2 = i + 113;
            f5140e = i2 % 128;
            int i3 = i2 % 2;
            this.h = str;
            int i4 = i + 31;
            f5140e = i4 % 128;
            if ((i4 % 2 == 0 ? '\\' : (char) 17) != '\\') {
                return this;
            }
            throw null;
        }

        private d p(boolean z) {
            int i = f5139d;
            int i2 = i + 109;
            f5140e = i2 % 128;
            int i3 = i2 % 2;
            this.m = z;
            int i4 = i + 25;
            f5140e = i4 % 128;
            if (i4 % 2 == 0) {
                throw null;
            }
            return this;
        }

        static /* synthetic */ List q(d dVar) {
            int i = f5140e + 125;
            int i2 = i % 128;
            f5139d = i2;
            int i3 = i % 2;
            List<String> list = dVar.t;
            int i4 = i2 + 5;
            f5140e = i4 % 128;
            if ((i4 % 2 == 0 ? '?' : 'A') != '?') {
                return list;
            }
            int i5 = 33 / 0;
            return list;
        }

        private d r(List<Integer> list) {
            int i = f5139d;
            int i2 = i + 75;
            f5140e = i2 % 128;
            int i3 = i2 % 2;
            if ((list != null ? 'X' : (char) 4) != 4) {
                int i4 = i + 93;
                f5140e = i4 % 128;
                int i5 = i4 % 2;
                this.r = list;
            }
            return this;
        }

        private d s(boolean z) {
            int i = f5139d + 83;
            int i2 = i % 128;
            f5140e = i2;
            int i3 = i % 2;
            this.k = z;
            int i4 = i2 + 107;
            f5139d = i4 % 128;
            if ((i4 % 2 != 0 ? '.' : '@') != '.') {
                return this;
            }
            int i5 = 43 / 0;
            return this;
        }

        static /* synthetic */ String t(d dVar) {
            int i = f5140e;
            int i2 = i + 39;
            f5139d = i2 % 128;
            int i3 = i2 % 2;
            String str = dVar.f5141f;
            int i4 = i + 35;
            f5139d = i4 % 128;
            if ((i4 % 2 != 0 ? 'G' : '!') == '!') {
                return str;
            }
            throw null;
        }

        private d u(String str) {
            int i = f5140e;
            int i2 = i + 41;
            f5139d = i2 % 128;
            int i3 = i2 % 2;
            this.f5141f = str;
            int i4 = i + 21;
            f5139d = i4 % 128;
            int i5 = i4 % 2;
            return this;
        }

        private d v(List<String> list) {
            int i = f5140e + 107;
            int i2 = i % 128;
            f5139d = i2;
            int i3 = i % 2;
            if ((list != null ? 'b' : (char) 4) == 'b') {
                int i4 = i2 + 75;
                f5140e = i4 % 128;
                int i5 = i4 % 2;
                this.u = list;
            }
            int i6 = f5140e + 91;
            f5139d = i6 % 128;
            if (!(i6 % 2 != 0)) {
                return this;
            }
            throw null;
        }

        private d w(boolean z) {
            int i = f5139d;
            int i2 = i + 111;
            f5140e = i2 % 128;
            int i3 = i2 % 2;
            this.l = z;
            int i4 = i + 63;
            f5140e = i4 % 128;
            if (i4 % 2 == 0) {
                throw null;
            }
            return this;
        }

        private static String x(int[] iArr, int i) {
            String str;
            synchronized (com.json.adqualitysdk.sdk.i.b.f33) {
                char[] cArr = new char[4];
                char[] cArr2 = new char[iArr.length << 1];
                int[] iArr2 = (int[]) c.clone();
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

        static /* synthetic */ List y(d dVar) {
            int i = f5140e;
            int i2 = i + 33;
            f5139d = i2 % 128;
            boolean z = i2 % 2 != 0;
            List<String> list = dVar.s;
            if (z) {
                throw null;
            }
            int i3 = i + 59;
            f5139d = i3 % 128;
            if ((i3 % 2 != 0 ? '\f' : 'M') == 'M') {
                return list;
            }
            int i4 = 64 / 0;
            return list;
        }

        private d z(String str) {
            int i = f5139d + 3;
            f5140e = i % 128;
            if ((i % 2 == 0 ? ';' : (char) 17) == 17) {
                this.f5142g = str;
                return this;
            }
            this.f5142g = str;
            throw null;
        }
    }

    final class e implements jh {
        e() {
        }

        @Override // com.json.adqualitysdk.sdk.i.jh
        /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
        public final void mo234(View view) {
            view.addOnLayoutChangeListener(ab.i(ab.this));
            ab.v(ab.this).put(view, ab.i(ab.this));
        }

        @Override // com.json.adqualitysdk.sdk.i.jh
        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
        public final void mo235(View view) {
            view.removeOnLayoutChangeListener(ab.i(ab.this));
            ab.v(ab.this).remove(view);
        }
    }

    ab(JSONObject jSONObject, im imVar) {
        m(jSONObject, imVar);
        m222();
    }

    static /* synthetic */ d f(ab abVar) {
        int i = o;
        int i2 = i + 65;
        p = i2 % 128;
        boolean z = i2 % 2 == 0;
        d dVar = abVar.x;
        if (z) {
            throw null;
        }
        int i3 = i + 97;
        p = i3 % 128;
        int i4 = i3 % 2;
        return dVar;
    }

    private static boolean h(View view, List<String> list) {
        if (list != null) {
            if (!(list.isEmpty())) {
                int i = p + 1;
                o = i % 128;
                int i2 = i % 2;
                String name = view.getClass().getPackage().getName();
                Iterator<String> it = list.iterator();
                while (it.hasNext()) {
                    String strN = n(it.next());
                    if (!TextUtils.isEmpty(strN)) {
                        if ((name.startsWith(strN) ? '#' : (char) 18) == '#') {
                            return true;
                        }
                    }
                    int i3 = p + 81;
                    o = i3 % 128;
                    int i4 = i3 % 2;
                }
                int i5 = o + 25;
                p = i5 % 128;
                if ((i5 % 2 == 0 ? 'X' : 'F') != 'X') {
                    return false;
                }
                throw null;
            }
        }
        return true;
    }

    static /* synthetic */ View.OnLayoutChangeListener i(ab abVar) {
        int i = p;
        int i2 = i + 79;
        o = i2 % 128;
        int i3 = i2 % 2;
        View.OnLayoutChangeListener onLayoutChangeListener = abVar.s;
        int i4 = i + 71;
        o = i4 % 128;
        int i5 = i4 % 2;
        return onLayoutChangeListener;
    }

    private static String j() {
        int i = p;
        int i2 = i + 7;
        o = i2 % 128;
        if (i2 % 2 != 0) {
            int i3 = 54 / 0;
        }
        int i4 = i + 33;
        o = i4 % 128;
        if ((i4 % 2 != 0 ? (char) 2 : '[') != 2) {
            return null;
        }
        throw null;
    }

    private static <E extends View> void k(Activity activity, View view, Class<E> cls, boolean z, List<Integer> list, List<String> list2, List<E> list3) {
        if (!(view != null)) {
            ka.m1002(activity, cls, z, list, list2, list3);
            int i = p + 87;
            o = i % 128;
            int i2 = i % 2;
            return;
        }
        int i3 = p + 1;
        o = i3 % 128;
        int i4 = i3 % 2;
        ka.m1003(view, cls, false, z, list, list2, list3);
    }

    private void l(List<View> list) {
        int i = o + 63;
        p = i % 128;
        int i2 = i % 2;
        int i3 = 0;
        while (true) {
            if ((i3 < list.size() ? 'H' : '\"') != 'H') {
                return;
            }
            int i4 = o + 75;
            p = i4 % 128;
            if (!(i4 % 2 == 0)) {
                w(list.get(i3), this.x);
                i3++;
            } else {
                w(list.get(i3), this.x);
                i3 += 65;
            }
        }
    }

    private static String n(String str) {
        int i = p + 63;
        o = i % 128;
        if (!(i % 2 == 0)) {
            TextUtils.isEmpty(str);
            throw null;
        }
        if (!TextUtils.isEmpty(str)) {
            List listAsList = Arrays.asList(str.split(o(new int[]{-1673951220, -413623908}, 3 - TextUtils.indexOf("", "", 0, 0)).intern()));
            return listAsList.size() <= 3 ? str : TextUtils.join(o(new int[]{374168409, 1997071149}, 1 - View.resolveSizeAndState(0, 0, 0)).intern(), listAsList.subList(0, 3));
        }
        int i2 = o + 13;
        p = i2 % 128;
        if (i2 % 2 != 0) {
            return null;
        }
        int i3 = 81 / 0;
        return null;
    }

    private static String o(int[] iArr, int i) {
        String str;
        synchronized (com.json.adqualitysdk.sdk.i.b.f33) {
            char[] cArr = new char[4];
            char[] cArr2 = new char[iArr.length << 1];
            int[] iArr2 = (int[]) n.clone();
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

    static /* synthetic */ List p(ab abVar) {
        int i = o + 31;
        int i2 = i % 128;
        p = i2;
        int i3 = i % 2;
        List<View> list = abVar.y;
        int i4 = i2 + 29;
        o = i4 % 128;
        int i5 = i4 % 2;
        return list;
    }

    static /* synthetic */ void q(ab abVar, List list) {
        int i = p + 75;
        o = i % 128;
        boolean z = i % 2 == 0;
        abVar.l(list);
        if (!z) {
            throw null;
        }
        int i2 = p + 33;
        o = i2 % 128;
        int i3 = i2 % 2;
    }

    private p<WebView, Activity> r() {
        c cVar = new c();
        int i = p + 89;
        o = i % 128;
        if ((i % 2 != 0 ? (char) 28 : (char) 5) == 5) {
            return cVar;
        }
        throw null;
    }

    static /* synthetic */ Class s(ab abVar) {
        int i = o;
        int i2 = i + 71;
        p = i2 % 128;
        int i3 = i2 % 2;
        Class cls = abVar.w;
        int i4 = i + 123;
        p = i4 % 128;
        if (i4 % 2 == 0) {
            throw null;
        }
        return cls;
    }

    static /* synthetic */ void t(Activity activity, View view, Class cls, boolean z, List list, List list2, List list3) {
        int i = p + 79;
        o = i % 128;
        int i2 = i % 2;
        k(activity, view, cls, z, list, list2, list3);
        int i3 = p + 13;
        o = i3 % 128;
        if ((i3 % 2 != 0 ? 'P' : 'X') != 'P') {
        } else {
            throw null;
        }
    }

    private boolean u(View view) {
        int i = p;
        int i2 = i + 17;
        o = i2 % 128;
        int i3 = i2 % 2;
        if (this.r == null) {
            int i4 = i + 39;
            o = i4 % 128;
            if (!(i4 % 2 != 0)) {
                return true;
            }
            int i5 = 11 / 0;
            return true;
        }
        if (h(view, d.a(this.x))) {
            if ((this.r.mo457(view) ? '-' : 'H') != 'H') {
                int i6 = o + 77;
                p = i6 % 128;
                int i7 = i6 % 2;
                return true;
            }
        }
        return false;
    }

    static /* synthetic */ Map v(ab abVar) {
        int i = o;
        int i2 = i + 3;
        p = i2 % 128;
        boolean z = i2 % 2 == 0;
        Map<View, View.OnLayoutChangeListener> map = abVar.v;
        if (z) {
            throw null;
        }
        int i3 = i + 71;
        p = i3 % 128;
        int i4 = i3 % 2;
        return map;
    }

    private void w(View view, d dVar) {
        int i = o + 67;
        p = i % 128;
        int i2 = i % 2;
        if ((u(view) ? (char) 23 : '1') != 23) {
            return;
        }
        if (d.j(dVar)) {
            int i3 = o + 49;
            p = i3 % 128;
            if ((i3 % 2 == 0 ? '\f' : ')') == '\f') {
                this.u.get(view);
                throw null;
            }
            if (this.u.get(view) == null) {
                this.u.put(view, this);
                mo229(new JSONObject(), view, null);
                return;
            } else {
                if (d.n(dVar)) {
                    mo229(new JSONObject(), view, null);
                    int i4 = o + 3;
                    p = i4 % 128;
                    int i5 = i4 % 2;
                    return;
                }
                return;
            }
        }
        ArrayList arrayList = new ArrayList();
        ka.m1003(view, WebView.class, false, d.D(dVar), d.H(dVar), d.q(dVar), arrayList);
        if (view instanceof WebView) {
            int i6 = o + 11;
            p = i6 % 128;
            int i7 = i6 % 2;
            arrayList.add((WebView) view);
        }
        Iterator it = arrayList.iterator();
        while (true) {
            if ((it.hasNext() ? (char) 19 : (char) 14) == 14) {
                return;
            }
            WebView webView = (WebView) it.next();
            if (this.u.get(webView) == null && webView.getClass().getName().startsWith(d.l(dVar))) {
                j0 j0Var = new j0();
                this.q.put(webView, j0Var);
                j0Var.s(d.i(dVar), !(!TextUtils.isEmpty(d.b(dVar))) ? null : Arrays.asList(d.b(dVar).split(o(new int[]{-1164176132, -1447679091}, 1 - (ViewConfiguration.getKeyRepeatDelay() >> 16)).intern())), d.e(dVar), d.c(dVar), d.f(dVar), d.d(dVar));
                j0Var.m1070(r());
                j0Var.m241(webView);
                j0Var.m239(Integer.toHexString(webView.hashCode()));
                this.u.put(webView, this);
            }
        }
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    private void m222() {
        this.s = new b();
        this.t = new e();
        jd.m907().m909(this.t);
        int i = p + 1;
        o = i % 128;
        int i2 = i % 2;
    }

    final void g() {
        m1070((p) null);
        jd.m907().m908(this.t);
        HashSet hashSet = new HashSet(this.v.keySet());
        this.v.clear();
        Iterator it = hashSet.iterator();
        while (true) {
            if (!(it.hasNext())) {
                return;
            }
            int i = p + 21;
            o = i % 128;
            int i2 = i % 2;
            ((View) it.next()).removeOnLayoutChangeListener(this.s);
            int i3 = p + 95;
            o = i3 % 128;
            int i4 = i3 % 2;
        }
    }

    final void m(JSONObject jSONObject, im imVar) {
        this.x = new d(jSONObject);
        this.r = imVar;
        int i = p + 39;
        o = i % 128;
        if ((i % 2 != 0 ? 'Q' : '\"') == '\"') {
        } else {
            throw null;
        }
    }

    @Override // com.json.adqualitysdk.sdk.i.y
    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    protected final /* synthetic */ String mo223(Activity activity) {
        int i = p + 39;
        o = i % 128;
        if ((i % 2 != 0 ? 'K' : '^') != 'K') {
            return j();
        }
        j();
        throw null;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m224(View view) {
        int i = o + 75;
        int i2 = i % 128;
        p = i2;
        int i3 = i % 2;
        try {
            boolean z = false;
            if (this.w == null) {
                int i4 = i2 + 109;
                o = i4 % 128;
                if (i4 % 2 != 0) {
                    this.w = Class.forName(d.t(this.x));
                    int i5 = 93 / 0;
                } else {
                    this.w = Class.forName(d.t(this.x));
                }
            }
            Activity activityMo902 = jb.m899().mo902();
            if (activityMo902 == null) {
                int i6 = o + 83;
                p = i6 % 128;
                if (i6 % 2 == 0) {
                    int i7 = 29 / 0;
                    return;
                }
                return;
            }
            if (d.y(this.x).isEmpty()) {
                z = true;
            }
            if (!z) {
                Activity activityM1004 = ka.m1004(view);
                if ((activityM1004 != null ? 'Z' : '^') != '^') {
                    int i8 = p + 87;
                    o = i8 % 128;
                    int i9 = i8 % 2;
                    if (d.y(this.x).contains(activityM1004.getClass().getName())) {
                        return;
                    }
                }
            }
            t.m1044(new a(activityMo902, view));
        } catch (Throwable th) {
            String strIntern = o(new int[]{643898673, 234626274, -1603315848, -174932105, 1584946287, -580880821, -2012385408, 1632388444}, '>' - AndroidCharacter.getMirror('0')).intern();
            StringBuilder sb = new StringBuilder();
            sb.append(o(new int[]{104286055, 1603633104, -2119343631, -18666865, -1918164138, 113078111, 618206539, 1478703285, -1278959211, 120627802}, 20 - (ViewConfiguration.getKeyRepeatTimeout() >> 16)).intern());
            sb.append(d.t(this.x));
            sb.append(o(new int[]{-1518950926, -1458428049}, (ViewConfiguration.getScrollDefaultDelay() >> 16) + 3).intern());
            sb.append(th.getLocalizedMessage());
            m.m1031(strIntern, sb.toString());
        }
    }
}
