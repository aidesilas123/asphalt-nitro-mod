package com.json.adqualitysdk.sdk.i;

import android.R;
import android.app.Activity;
import android.graphics.Color;
import android.media.AudioTrack;
import android.os.Bundle;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.webkit.WebView;
import android.widget.ExpandableListView;
import com.json.adqualitysdk.sdk.i.v;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class w extends v<Activity> implements jc {
    private static String r = null;
    private static char[] s = null;
    private static int t = 0;
    private static boolean u = false;
    private static boolean v = false;
    private static int w = 0;
    private static int x = 1;
    private boolean A;
    private boolean B;
    private boolean C;
    private boolean D;
    private e E;
    private jc y;
    private Class z;

    final class a extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ Activity f6021d;

        a(Activity activity) {
            this.f6021d = activity;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            if (w.E(w.this, this.f6021d)) {
                w.F(w.this).onActivityStopped(this.f6021d);
                if (w.L(w.this) && !w.v(w.this) && this.f6021d.isFinishing()) {
                    w.this.H(this.f6021d);
                }
            }
        }
    }

    final class b extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ Activity f6023d;

        b(Activity activity) {
            this.f6023d = activity;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            if (w.E(w.this, this.f6023d)) {
                w.F(w.this).onActivityDestroyed(this.f6023d);
                if (w.L(w.this) && w.D(w.this) && this.f6023d.isFinishing()) {
                    w.this.H(this.f6023d);
                }
            }
        }
    }

    final class c extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ Activity f6025d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private /* synthetic */ Bundle f6026e;

        c(Activity activity, Bundle bundle) {
            this.f6025d = activity;
            this.f6026e = bundle;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            if (w.E(w.this, this.f6025d)) {
                w.F(w.this).onActivityCreated(this.f6025d, this.f6026e);
                w.C();
                w.Q(w.this, false);
                Bundle bundle = this.f6026e;
                if (bundle == null) {
                    w.M(w.this, false);
                    return;
                }
                w.M(w.this, bundle.getBoolean(w.u()));
                if (w.D(w.this)) {
                    w.Q(w.this, true);
                }
                w.J(w.this, true);
            }
        }
    }

    final class d extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static int[] f6028d = {-1481773412, -272090709, 1627113267, -2058684713, -1103679849, -1514970808, -392084584, 850054787, 813671304, -1689555807, 668964068, -1428476409, -1381425239, -1521520117, -133030048, 1456110425, 1888045507, -787887863};

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static int f6029e = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static int f6030f = 1;

        final class a extends il {
            a() {
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() {
                w.this.m1069();
            }
        }

        d() {
        }

        private static String b(int[] iArr, int i) {
            String str;
            synchronized (com.json.adqualitysdk.sdk.i.b.f33) {
                char[] cArr = new char[4];
                char[] cArr2 = new char[iArr.length << 1];
                int[] iArr2 = (int[]) f6028d.clone();
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
            try {
                w wVar = w.this;
                w.B(wVar, Class.forName(e.w(w.N(wVar))));
                t.m1046(new a());
                int i = f6030f + 33;
                f6029e = i % 128;
                if ((i % 2 != 0 ? '^' : (char) 24) == 24) {
                } else {
                    throw null;
                }
            } catch (ClassNotFoundException e2) {
                String strIntern = b(new int[]{535423130, 1573937800, 1116075241, 1696018169, 2109253107, -956691328, -1109596637, -1918062696, -157658601, -708385311}, (ViewConfiguration.getPressedStateDuration() >> 16) + 17).intern();
                StringBuilder sb = new StringBuilder();
                sb.append(b(new int[]{706478315, -471667127, 431327778, 659105498, -290628438, 2076743956, 575666670, -2061486921, 1954632957, -1861262748, -1141967683, 2049198197, 1165957641, -628108530, -1277251932, -1070596653}, ExpandableListView.getPackedPositionGroup(0L) + 29).intern());
                sb.append(e.w(w.N(w.this)));
                sb.append(b(new int[]{-1097420526, -986687867}, (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)) + 1).intern());
                sb.append(e2.getLocalizedMessage());
                m.m1031(strIntern, sb.toString());
            }
        }
    }

    public class e extends v.e {
        private static char n = 6;
        private static int p = 0;
        private static int q = 1;
        private String r;
        private String s;
        private int t;
        private boolean u;
        private boolean v = false;
        private static char[] m = {'a', 'd', 'A', 'c', 't', 'i', 'v', 'y', 'N', 'm', 'e', 'w', 'b', 'V', 'C', 'l', 's', 'P', 'r', 'f', 'x', 'I', 'T', 'p', 'k', 'o', 'D', 'j', 'n', 'u', 'W', 'H', 'h', 'J', 'E', 'g'};
        private static long o = 3564192204702602403L;

        public e(w wVar, JSONObject jSONObject) {
            q(jSONObject.optString(v(14 - (ViewConfiguration.getTapTimeout() >> 16), (byte) ((Process.myTid() >> 22) + 32), "\u0001\u0002\u0003\u0004\u0005\u0000\u000b\u0000\u0001\n\u0006\u0002\n\u000b").intern()));
            n(jSONObject.optString(v(Gravity.getAbsoluteGravity(0, 0) + 22, (byte) (90 - TextUtils.lastIndexOf("", '0', 0, 0)), "\u0006\u000b\r\u000e\u0004\u000b\b\u0011\f\u0003ÎÎ\u0006\u0002\n\u000b\f\u0017\u0007\u0016\u0002\u0017").intern()));
            u(jSONObject.optInt(v(9 - (ViewConfiguration.getFadingEdgeLength() >> 16), (byte) View.resolveSize(0, 0), "\u0006\u000b\r\u000e\u0004\u000b\t\u0017d").intern(), -1));
            m(jSONObject.optBoolean(v(17 - (Process.myPid() >> 22), (byte) (64 - TextUtils.getCapsMode("", 0, 0)), "\b\u0016\u0001\u0004\u0005\u0003\u0004\u0005\u0000\u000b\u0000\u0005\n\u0013\u000b\u0013¥").intern()));
            l(jSONObject.optBoolean(v(KeyEvent.keyCodeFromString("") + 19, (byte) (-TextUtils.lastIndexOf("", '0', 0)), "\u0001\u0004\u0002\u0010\u0003\f\u0010\r\u0001\u0004\u001c\f\u0007\u001a\u001c\b\f\u0003z").intern()));
            m1060(jSONObject.optString(v((TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)) + 10, (byte) (TextUtils.lastIndexOf("", '0', 0) + 9), "\u001c\u000f\u0013\u001c\u0016\u001b\u001c\t\u0004\u0005").intern()));
            m1062(TextUtils.isEmpty(jSONObject.optString(v(TextUtils.lastIndexOf("", '0') + 10, (byte) (16 - (ViewConfiguration.getMinimumFlingVelocity() >> 16)), "\u0018\u0017\u0010\f\u0016\u0006\u0017\u0001\u0088").intern())) ? null : Arrays.asList(jSONObject.optString(v(Color.green(0) + 9, (byte) (16 - (ViewConfiguration.getJumpTapTimeout() >> 16)), "\u0018\u0017\u0010\f\u0016\u0006\u0017\u0001\u0088").intern()).split(s("⠿疄⠓ﹲ䯮", 1 - Gravity.getAbsoluteGravity(0, 0)).intern())));
            m1059(jSONObject.optBoolean(v(14 - Color.blue(0), (byte) (17 - (ViewConfiguration.getMaximumDrawingCacheSize() >> 24)), "\u001c\u0011\u0006\"\u0006\u0010\u0011\u0001\u000b\u0006\u001e\u0001\u000e\"").intern()));
            m1064(jSONObject.optBoolean(v(TextUtils.lastIndexOf("", '0', 0) + 14, (byte) ((-16777181) - Color.rgb(0, 0, 0)), "\u001c\u0011\t\"\u0006\f\u0004\f\u0000\u0015\u000b\u001d\u0097").intern(), true));
            m1061(jSONObject.optBoolean(s("툀튌퉯ٟ\u0de5꓆ꊊ\udf0d胏\uf5cf彽༛睳ꭄ\uead1ﱢ◡ẳјꫥ顂찱埑\u1778仾ꎡ\ue2ab엟㴻ᄂ㰺", 1 - ExpandableListView.getPackedPositionType(0L)).intern()));
            m1063(!TextUtils.isEmpty(jSONObject.optString(v((ViewConfiguration.getKeyRepeatTimeout() >> 16) + 10, (byte) (8 - Color.alpha(0)), "\u001c\u000f\u0013\u001c\u0016\u001b\u001c\t\u0004\u0005").intern())) || jSONObject.optBoolean(s("\ue083滛\ue0f6⹈ᬄ눧쭺뛄뉪\uddd5䦣曘䗾荔ﰺ閩ᝎ㚺ኣ쌽", (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1))).intern()) || jSONObject.optBoolean(v((ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)) + 17, (byte) ((ViewConfiguration.getKeyRepeatTimeout() >> 16) + 105), "\u001c\u0011\u0006\"\u0006\u0010\u0014\u0002\u0013\u0018\n\u000b\u000f\u0010\u0004\u000b\"\n").intern()));
            m1056(jSONObject.optBoolean(s("\ue083滛\ue0f6⹈ᬄ눧쭺뛄뉪\uddd5䦣曘䗾荔ﰺ閩ᝎ㚺ኣ쌽", (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1))).intern()));
            m1057(jSONObject.optBoolean(v(10 - View.resolveSizeAndState(0, 0, 0), (byte) ((Process.myTid() >> 22) + 124), "\u001c\u0011\u0010\u0004\u0016\u0002\u0018\u0006\"\u000f").intern()));
            m1065(jSONObject.optBoolean(s("쀽ᶃ쁈쥓賮◍Ꭓ\uda17鋄㫀\ude6b\u0a0b敕摔毶論㟼톦蕱꿳詨̧훈", 1 - (ViewConfiguration.getMaximumDrawingCacheSize() >> 24)).intern()));
            m1055(jSONObject.optBoolean(v(Color.red(0) + 17, (byte) ((ViewConfiguration.getScrollBarFadeDuration() >> 16) + 43), "\u000b\u001b\u0010\u0003\u000b\u001d\u0010\t\u0016\u001b\u0016\n\u0004\u0018\u0004\t\u009e").intern()));
            m1054(jSONObject.optBoolean(s("\u085cⵐ࠵咽\uf1e5壓්灬媾ਯꍮꁪ괰", (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1))).intern()));
            m1058(ju.m956(jSONObject.optJSONArray(s("\ue952⎽\ue924\uf777瞫\ude88꽠틾뮭ӆ┵˂䰭婨邹\uf18dẓ", 1 - (ViewConfiguration.getLongPressTimeout() >> 16)).intern())));
        }

        private e l(boolean z) {
            int i = q + 105;
            int i2 = i % 128;
            p = i2;
            int i3 = i % 2;
            this.v = z;
            int i4 = i2 + 23;
            q = i4 % 128;
            int i5 = i4 % 2;
            return this;
        }

        private e m(boolean z) {
            int i = q + 111;
            int i2 = i % 128;
            p = i2;
            int i3 = i % 2;
            this.u = z;
            int i4 = i2 + 113;
            q = i4 % 128;
            int i5 = i4 % 2;
            return this;
        }

        private e n(String str) {
            int i = q;
            int i2 = i + 95;
            p = i2 % 128;
            int i3 = i2 % 2;
            this.s = str;
            int i4 = i + 15;
            p = i4 % 128;
            int i5 = i4 % 2;
            return this;
        }

        static /* synthetic */ boolean o(e eVar) {
            int i = p + 99;
            q = i % 128;
            boolean z = i % 2 != 0;
            boolean z2 = eVar.u;
            if (z) {
                return z2;
            }
            throw null;
        }

        static /* synthetic */ int p(e eVar) {
            int i = p + 103;
            int i2 = i % 128;
            q = i2;
            boolean z = i % 2 != 0;
            int i3 = eVar.t;
            if (!z) {
                throw null;
            }
            int i4 = i2 + 63;
            p = i4 % 128;
            if (i4 % 2 == 0) {
                return i3;
            }
            int i5 = 28 / 0;
            return i3;
        }

        private e q(String str) {
            int i = p;
            int i2 = i + 33;
            q = i2 % 128;
            if (i2 % 2 == 0) {
                this.r = str;
                throw null;
            }
            this.r = str;
            int i3 = i + 101;
            q = i3 % 128;
            if (i3 % 2 != 0) {
                return this;
            }
            throw null;
        }

        static /* synthetic */ String r(e eVar) {
            int i = q + 45;
            p = i % 128;
            boolean z = i % 2 == 0;
            String str = eVar.s;
            if (!z) {
                int i2 = 10 / 0;
            }
            return str;
        }

        private static String s(String str, int i) {
            String str2;
            Object charArray = str;
            if (str != null) {
                charArray = str.toCharArray();
            }
            char[] cArr = (char[]) charArray;
            synchronized (com.json.adqualitysdk.sdk.i.f.f54) {
                char[] cArrM713 = com.json.adqualitysdk.sdk.i.f.m713(o, cArr, i);
                com.json.adqualitysdk.sdk.i.f.f52 = 4;
                while (true) {
                    int i2 = com.json.adqualitysdk.sdk.i.f.f52;
                    if (i2 < cArrM713.length) {
                        com.json.adqualitysdk.sdk.i.f.f53 = i2 - 4;
                        cArrM713[com.json.adqualitysdk.sdk.i.f.f52] = (char) (((long) (cArrM713[r1] ^ cArrM713[r1 % 4])) ^ (((long) com.json.adqualitysdk.sdk.i.f.f53) * o));
                        com.json.adqualitysdk.sdk.i.f.f52++;
                    } else {
                        str2 = new String(cArrM713, 4, cArrM713.length - 4);
                    }
                }
            }
            return str2;
        }

        static /* synthetic */ boolean t(e eVar) {
            int i = q + 43;
            int i2 = i % 128;
            p = i2;
            int i3 = i % 2;
            boolean z = eVar.v;
            int i4 = i2 + 61;
            q = i4 % 128;
            int i5 = i4 % 2;
            return z;
        }

        private e u(int i) {
            int i2 = p + 47;
            int i3 = i2 % 128;
            q = i3;
            if ((i2 % 2 == 0 ? (char) 24 : 'Y') != 'Y') {
                this.t = i;
                throw null;
            }
            this.t = i;
            int i4 = i3 + 13;
            p = i4 % 128;
            int i5 = i4 % 2;
            return this;
        }

        private static String v(int i, byte b, String str) {
            String str2;
            Object charArray = str;
            if (str != null) {
                charArray = str.toCharArray();
            }
            char[] cArr = (char[]) charArray;
            synchronized (com.json.adqualitysdk.sdk.i.g.f56) {
                char[] cArr2 = m;
                char c = n;
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

        static /* synthetic */ String w(e eVar) {
            int i = q + 117;
            int i2 = i % 128;
            p = i2;
            int i3 = i % 2;
            String str = eVar.r;
            int i4 = i2 + 57;
            q = i4 % 128;
            if (i4 % 2 != 0) {
                return str;
            }
            throw null;
        }
    }

    final class f extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ Activity f6033d;

        f(Activity activity) {
            this.f6033d = activity;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            if (w.E(w.this, this.f6033d)) {
                w.F(w.this).mo272(this.f6033d);
            }
        }
    }

    final class g extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ Activity f6035d;

        g(Activity activity) {
            this.f6035d = activity;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            if (w.E(w.this, this.f6035d)) {
                w.F(w.this).mo273(this.f6035d);
            }
        }
    }

    final class h extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ Activity f6037d;

        h(Activity activity) {
            this.f6037d = activity;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            if (w.E(w.this, this.f6037d)) {
                w.F(w.this).onActivityStarted(this.f6037d);
            }
        }
    }

    final class i extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ Activity f6039d;

        i(Activity activity) {
            this.f6039d = activity;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            if (w.E(w.this, this.f6039d)) {
                w.F(w.this).onActivityResumed(this.f6039d);
                w.A(w.this, false);
                w.Q(w.this, true);
                if ((!w.D(w.this) || w.z(w.this)) && !this.f6039d.isFinishing()) {
                    w wVar = w.this;
                    Activity activity = this.f6039d;
                    wVar.I(activity, w.K(activity));
                }
                w.J(w.this, false);
            }
        }
    }

    final class j extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ Activity f6041d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private /* synthetic */ Bundle f6042e;

        j(Activity activity, Bundle bundle) {
            this.f6041d = activity;
            this.f6042e = bundle;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            if (w.E(w.this, this.f6041d)) {
                w.F(w.this).onActivitySaveInstanceState(this.f6041d, this.f6042e);
                Bundle bundle = this.f6042e;
                if (bundle != null) {
                    bundle.putBoolean(w.u(), w.D(w.this));
                }
                w.A(w.this, true);
            }
        }
    }

    final class k extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ Activity f6044d;

        k(Activity activity) {
            this.f6044d = activity;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            if (w.E(w.this, this.f6044d)) {
                w.F(w.this).onActivityPaused(this.f6044d);
            }
        }
    }

    static {
        s();
        r = G(null, null, 127 - (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)), "\u008a\u009d\u008f\u009c\u0093\u0087\u0081\u0098\u009b\u0087\u0095\u0098\u009b\u0087\u0095\u0086\u0083\u0084\u008b\u0089\u0099\u009a\u0087\u0089\u0098\u008c\u0082\u008d\u0099\u008f\u0095\u008a\u008f\u008d\u0084\u0098\u0097\u008f\u0082").intern();
        int i2 = x + 111;
        w = i2 % 128;
        int i3 = i2 % 2;
    }

    w(JSONObject jSONObject, io ioVar) {
        super(ioVar);
        this.A = false;
        this.B = false;
        this.C = false;
        this.D = false;
        m1066(jSONObject);
    }

    static /* synthetic */ boolean A(w wVar, boolean z) {
        int i2 = x + 45;
        int i3 = i2 % 128;
        w = i3;
        int i4 = i2 % 2;
        wVar.C = z;
        int i5 = i3 + 43;
        x = i5 % 128;
        int i6 = i5 % 2;
        return z;
    }

    static /* synthetic */ Class B(w wVar, Class cls) {
        int i2 = x + 111;
        int i3 = i2 % 128;
        w = i3;
        int i4 = i2 % 2;
        wVar.z = cls;
        int i5 = i3 + 121;
        x = i5 % 128;
        int i6 = i5 % 2;
        return cls;
    }

    static /* synthetic */ boolean C() {
        int i2 = w;
        int i3 = i2 + 87;
        x = i3 % 128;
        int i4 = i3 % 2;
        int i5 = i2 + 111;
        x = i5 % 128;
        if ((i5 % 2 == 0 ? 'D' : (char) 22) == 22) {
            return false;
        }
        int i6 = 56 / 0;
        return false;
    }

    static /* synthetic */ boolean D(w wVar) {
        int i2 = x + 97;
        w = i2 % 128;
        boolean z = i2 % 2 == 0;
        boolean z2 = wVar.A;
        if (!z) {
            int i3 = 36 / 0;
        }
        return z2;
    }

    static /* synthetic */ boolean E(w wVar, Activity activity) {
        int i2 = w + 59;
        x = i2 % 128;
        int i3 = i2 % 2;
        boolean zT = wVar.t(activity);
        int i4 = x + 47;
        w = i4 % 128;
        int i5 = i4 % 2;
        return zT;
    }

    static /* synthetic */ jc F(w wVar) {
        int i2 = w + 1;
        x = i2 % 128;
        if ((i2 % 2 == 0 ? 'c' : 'Q') == 'c') {
            wVar.w();
            throw null;
        }
        jc jcVarW = wVar.w();
        int i3 = x + 115;
        w = i3 % 128;
        if ((i3 % 2 != 0 ? 'c' : '\r') != 'c') {
            return jcVarW;
        }
        int i4 = 91 / 0;
        return jcVarW;
    }

    private static String G(String str, int[] iArr, int i2, String str2) throws UnsupportedEncodingException {
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
        synchronized (com.json.adqualitysdk.sdk.i.k.f131) {
            char[] cArr2 = s;
            int i3 = t;
            if (v) {
                int length = bArr.length;
                com.json.adqualitysdk.sdk.i.k.f129 = length;
                char[] cArr3 = new char[length];
                com.json.adqualitysdk.sdk.i.k.f130 = 0;
                while (com.json.adqualitysdk.sdk.i.k.f130 < com.json.adqualitysdk.sdk.i.k.f129) {
                    int i4 = com.json.adqualitysdk.sdk.i.k.f130;
                    int i5 = com.json.adqualitysdk.sdk.i.k.f129 - 1;
                    int i6 = com.json.adqualitysdk.sdk.i.k.f130;
                    cArr3[i4] = (char) (cArr2[bArr[i5 - i6] + i2] - i3);
                    com.json.adqualitysdk.sdk.i.k.f130 = i6 + 1;
                }
                return new String(cArr3);
            }
            if (u) {
                int length2 = cArr.length;
                com.json.adqualitysdk.sdk.i.k.f129 = length2;
                char[] cArr4 = new char[length2];
                com.json.adqualitysdk.sdk.i.k.f130 = 0;
                while (com.json.adqualitysdk.sdk.i.k.f130 < com.json.adqualitysdk.sdk.i.k.f129) {
                    int i7 = com.json.adqualitysdk.sdk.i.k.f130;
                    int i8 = com.json.adqualitysdk.sdk.i.k.f129 - 1;
                    int i9 = com.json.adqualitysdk.sdk.i.k.f130;
                    cArr4[i7] = (char) (cArr2[cArr[i8 - i9] - i2] - i3);
                    com.json.adqualitysdk.sdk.i.k.f130 = i9 + 1;
                }
                return new String(cArr4);
            }
            int length3 = iArr.length;
            com.json.adqualitysdk.sdk.i.k.f129 = length3;
            char[] cArr5 = new char[length3];
            com.json.adqualitysdk.sdk.i.k.f130 = 0;
            while (com.json.adqualitysdk.sdk.i.k.f130 < com.json.adqualitysdk.sdk.i.k.f129) {
                int i10 = com.json.adqualitysdk.sdk.i.k.f130;
                int i11 = com.json.adqualitysdk.sdk.i.k.f129 - 1;
                int i12 = com.json.adqualitysdk.sdk.i.k.f130;
                cArr5[i10] = (char) (cArr2[iArr[i11 - i12] - i2] - i3);
                com.json.adqualitysdk.sdk.i.k.f130 = i12 + 1;
            }
            return new String(cArr5);
        }
    }

    static /* synthetic */ boolean J(w wVar, boolean z) {
        int i2 = w;
        int i3 = i2 + 83;
        x = i3 % 128;
        int i4 = i3 % 2;
        wVar.D = z;
        int i5 = i2 + 23;
        x = i5 % 128;
        int i6 = i5 % 2;
        return z;
    }

    static /* synthetic */ String K(Activity activity) {
        int i2 = w + 31;
        x = i2 % 128;
        if (i2 % 2 != 0) {
            return x(activity);
        }
        x(activity);
        throw null;
    }

    static /* synthetic */ boolean L(w wVar) {
        int i2 = w + 61;
        x = i2 % 128;
        boolean z = i2 % 2 == 0;
        boolean z2 = wVar.B;
        if (z) {
            throw null;
        }
        return z2;
    }

    static /* synthetic */ boolean M(w wVar, boolean z) {
        int i2 = w + 45;
        x = i2 % 128;
        boolean z2 = i2 % 2 != 0;
        wVar.A = z;
        if (z2) {
            return z;
        }
        throw null;
    }

    static /* synthetic */ e N(w wVar) {
        int i2 = w + 61;
        x = i2 % 128;
        boolean z = i2 % 2 == 0;
        e eVar = wVar.E;
        if (z) {
            int i3 = 63 / 0;
        }
        return eVar;
    }

    private void O(Activity activity, List<WebView> list) {
        int i2 = w + 73;
        x = i2 % 128;
        if ((i2 % 2 == 0 ? '`' : '\t') != '`') {
            ka.m1005(activity, WebView.class, e.p(this.E), e.r(this.E), false, false, null, this.E.l, list);
        } else {
            ka.m1005(activity, WebView.class, e.p(this.E), e.r(this.E), true, false, null, this.E.l, list);
        }
        int i3 = w + 7;
        x = i3 % 128;
        int i4 = i3 % 2;
    }

    private void P(il ilVar) {
        int i2 = w + 47;
        x = i2 % 128;
        if ((i2 % 2 == 0 ? '^' : (char) 30) == '^') {
            e.t(this.E);
            throw null;
        }
        if (!(e.t(this.E))) {
            t.m1041(ilVar);
            return;
        }
        t.m1046(ilVar);
        int i3 = x + 125;
        w = i3 % 128;
        int i4 = i3 % 2;
    }

    static /* synthetic */ boolean Q(w wVar, boolean z) {
        int i2 = w + 71;
        int i3 = i2 % 128;
        x = i3;
        int i4 = i2 % 2;
        wVar.B = z;
        int i5 = i3 + 45;
        w = i5 % 128;
        if ((i5 % 2 != 0 ? 'Z' : (char) 31) == 31) {
            return z;
        }
        throw null;
    }

    static void s() {
        u = true;
        v = true;
        t = 137;
        s = new char[]{202, 236, 253, 242, 255, 258, 237, 209, 234, 247, 245, 238, 251, 206, 248, 169, 240, 215, 220, 243, 252, 195, 246, 183, 254, 250, 244, 241, 256};
    }

    private boolean t(Activity activity) {
        Class<?> cls = activity.getClass();
        if (this.z == null) {
            return false;
        }
        int i2 = w + 121;
        x = i2 % 128;
        int i3 = i2 % 2;
        if ((e.o(this.E) ? '8' : (char) 5) == 5) {
            boolean zIsAssignableFrom = this.z.isAssignableFrom(cls);
            int i4 = w + 81;
            x = i4 % 128;
            int i5 = i4 % 2;
            return zIsAssignableFrom;
        }
        int i6 = w + 111;
        x = i6 % 128;
        boolean z = i6 % 2 != 0;
        Class cls2 = this.z;
        if (z) {
            return cls2.equals(cls);
        }
        cls2.equals(cls);
        throw null;
    }

    static /* synthetic */ String u() {
        int i2 = x + 117;
        int i3 = i2 % 128;
        w = i3;
        if (!(i2 % 2 == 0)) {
            throw null;
        }
        String str = r;
        int i4 = i3 + 21;
        x = i4 % 128;
        if (!(i4 % 2 == 0)) {
            return str;
        }
        throw null;
    }

    static /* synthetic */ boolean v(w wVar) {
        int i2 = x + 75;
        int i3 = i2 % 128;
        w = i3;
        int i4 = i2 % 2;
        boolean z = wVar.C;
        int i5 = i3 + 115;
        x = i5 % 128;
        if (i5 % 2 == 0) {
            throw null;
        }
        return z;
    }

    private jc w() {
        int i2 = w + 87;
        int i3 = i2 % 128;
        x = i3;
        int i4 = i2 % 2;
        jc jcVar = this.y;
        int i5 = i3 + 95;
        w = i5 % 128;
        if (!(i5 % 2 != 0)) {
            return jcVar;
        }
        int i6 = 8 / 0;
        return jcVar;
    }

    private static String x(Activity activity) {
        int i2 = x + 101;
        w = i2 % 128;
        char c2 = i2 % 2 != 0 ? 'A' : (char) 0;
        int iHashCode = activity.hashCode();
        if (c2 == 'A') {
            Integer.toHexString(iHashCode);
            throw null;
        }
        String hexString = Integer.toHexString(iHashCode);
        int i3 = x + 91;
        w = i3 % 128;
        if (!(i3 % 2 != 0)) {
            return hexString;
        }
        throw null;
    }

    private static View y(Activity activity) {
        int i2 = w + 103;
        x = i2 % 128;
        int i3 = i2 % 2;
        View viewFindViewById = activity.findViewById(R.id.content);
        int i4 = x + 77;
        w = i4 % 128;
        int i5 = i4 % 2;
        return viewFindViewById;
    }

    static /* synthetic */ boolean z(w wVar) {
        int i2 = x + 87;
        int i3 = i2 % 128;
        w = i3;
        int i4 = i2 % 2;
        boolean z = wVar.D;
        int i5 = i3 + 85;
        x = i5 % 128;
        if (i5 % 2 != 0) {
            return z;
        }
        int i6 = 55 / 0;
        return z;
    }

    final void H(Activity activity) {
        int i2 = x + 81;
        w = i2 % 128;
        if (i2 % 2 != 0) {
        }
        super.j(activity);
        this.A = false;
    }

    final void I(Activity activity, String str) {
        int i2 = x + 1;
        int i3 = i2 % 128;
        w = i3;
        int i4 = i2 % 2;
        if (!this.A) {
            int i5 = i3 + 17;
            x = i5 % 128;
            int i6 = i5 % 2;
            this.A = true;
            super.k(activity, str);
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ib.f69, true);
        } catch (JSONException e2) {
            String strIntern = G(null, null, View.resolveSize(0, 0) + 127, "\u008d\u008c\u008b\u0087\u008a\u0089\u0088\u0087\u0081\u0086\u0083\u0084\u0085\u0084\u0083\u0082\u0081").intern();
            StringBuilder sb = new StringBuilder();
            sb.append(G(null, null, 127 - (ViewConfiguration.getMaximumDrawingCacheSize() >> 24), "\u0090\u0096\u008a\u008f\u0095\u0094\u0090\u008f\u0083\u0090\u0087\u008a\u008c\u0093\u0083\u008f\u0092\u008f\u0087\u0090\u0091\u008a\u0084\u0087\u0087\u0089\u0090\u008d\u008f\u008d\u008d\u008e").intern());
            sb.append(e2.getLocalizedMessage());
            m.m1031(strIntern, sb.toString());
        }
        super.l(jSONObject, activity, str);
        int i7 = w + 87;
        x = i7 % 128;
        if ((i7 % 2 == 0 ? '2' : '1') != '2') {
        } else {
            throw null;
        }
    }

    @Override // com.json.adqualitysdk.sdk.i.v
    final ad f() {
        j0 j0Var = new j0();
        int i2 = x + 105;
        w = i2 % 128;
        if (i2 % 2 == 0) {
            return j0Var;
        }
        int i3 = 88 / 0;
        return j0Var;
    }

    @Override // com.json.adqualitysdk.sdk.i.v
    final p<WebView, Activity> m() {
        int i2 = w;
        int i3 = i2 + 5;
        x = i3 % 128;
        int i4 = i3 % 2;
        int i5 = i2 + 13;
        x = i5 % 128;
        int i6 = i5 % 2;
        return this;
    }

    @Override // com.json.adqualitysdk.sdk.i.v
    final /* synthetic */ View o(Activity activity) {
        int i2 = x + 123;
        w = i2 % 128;
        int i3 = i2 % 2;
        View viewY = y(activity);
        int i4 = x + 49;
        w = i4 % 128;
        if (i4 % 2 == 0) {
            return viewY;
        }
        throw null;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        P(new c(activity, bundle));
        int i2 = x + 51;
        w = i2 % 128;
        int i3 = i2 % 2;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        P(new b(activity));
        int i2 = x + 87;
        w = i2 % 128;
        int i3 = i2 % 2;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        P(new k(activity));
        int i2 = x + 59;
        w = i2 % 128;
        int i3 = i2 % 2;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        P(new i(activity));
        int i2 = w + 59;
        x = i2 % 128;
        int i3 = i2 % 2;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        P(new j(activity, bundle));
        int i2 = w + 111;
        x = i2 % 128;
        if (i2 % 2 == 0) {
            int i3 = 31 / 0;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        P(new h(activity));
        int i2 = x + 45;
        w = i2 % 128;
        int i3 = i2 % 2;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        P(new a(activity));
        int i2 = w + 59;
        x = i2 % 128;
        if (!(i2 % 2 != 0)) {
            int i3 = 83 / 0;
        }
    }

    @Override // com.json.adqualitysdk.sdk.i.v
    final /* bridge */ /* synthetic */ void r(Activity activity, List list) {
        int i2 = w + 41;
        x = i2 % 128;
        int i3 = i2 % 2;
        O(activity, list);
        int i4 = w + 59;
        x = i4 % 128;
        if ((i4 % 2 == 0 ? (char) 31 : 'b') != 31) {
        } else {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    final void m1066(JSONObject jSONObject) {
        e eVar = new e(this, jSONObject);
        q(eVar);
        this.E = eVar;
        t.m1039(new d());
        int i2 = w + 109;
        x = i2 % 128;
        int i3 = i2 % 2;
    }

    @Override // com.json.adqualitysdk.sdk.i.jc
    /* JADX INFO: renamed from: ﻛ */
    public final void mo272(Activity activity) {
        P(new f(activity));
        int i2 = w + 61;
        x = i2 % 128;
        int i3 = i2 % 2;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final void m1067() {
        int i2 = x + 117;
        w = i2 % 128;
        if ((i2 % 2 != 0 ? 'V' : '!') != 'V') {
            m1070((p) null);
            m1068(null);
            jb.m899().m901(this);
        } else {
            m1070((p) null);
            m1068(null);
            jb.m899().m901(this);
            throw null;
        }
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final void m1068(jc jcVar) {
        int i2 = w + 67;
        int i3 = i2 % 128;
        x = i3;
        int i4 = i2 % 2;
        this.y = jcVar;
        int i5 = i3 + 81;
        w = i5 % 128;
        int i6 = i5 % 2;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1069() {
        int i2 = w + 15;
        x = i2 % 128;
        int i3 = i2 % 2;
        jb.m899().m904(this);
        int i4 = x + 83;
        w = i4 % 128;
        int i5 = i4 % 2;
    }

    @Override // com.json.adqualitysdk.sdk.i.jc
    /* JADX INFO: renamed from: ﾒ */
    public final void mo273(Activity activity) {
        P(new g(activity));
        int i2 = w + 99;
        x = i2 % 128;
        if ((i2 % 2 == 0 ? 'S' : (char) 19) != 'S') {
            return;
        }
        int i3 = 78 / 0;
    }
}
