package com.json.adqualitysdk.sdk.i;

import android.content.Context;
import android.graphics.Color;
import android.graphics.PointF;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import androidx.annotation.AnyThread;
import com.applovin.exoplayer2.common.base.Ascii;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class ai extends jk {
    private static char h = 8229;
    private static char i = 20783;
    private static char j = 64267;
    private static char k = 8133;
    private static int l = -1122104935;
    private static int m = 121;
    private static int n = 248299054;
    private static byte[] o = {109, 44, 37, 51, 121, 116, 45, 41, -70, -69, -46, -6, Ascii.FS, 37, -26, 19, Ascii.SYN, -4, Ascii.RS, 82, -58, 6, Ascii.DC2, 2, 32, 9, 0, Ascii.FS, 80, -69, Ascii.DLE, 10, Ascii.CR, 58, Ascii.ETB, 0, Ascii.CAN, 45, -14, 19, 36, 7, 86, 89, 63, 97, -107, 1, 75, -92, 8, 85, 62, 86, 75, 81, 98, 69, -100, 9, 73, 85, 85, 80, 83, -111, -2, 83, 77, 80, 93, 0, 0, 0, 0, 0, 0, 0, 0};
    private static short[] p = null;
    private static int q = 0;
    private static int r = 1;
    private String s;
    private int t;
    private int u;
    private int v;
    private Handler w;

    final class a extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static int[] f5183d = {1164012926, -816188387, -1666990021, 1524706179, 572659988, -2081216876, 918023563, -1347769725, 1814622712, 732163947, -1795820103, 1184650735, 1417472387, 2033271764, -2022306062, 1838959007, 1466526812, -936750326};

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static int f5184e = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static int f5185f = 1;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private /* synthetic */ String f5186g;
        private /* synthetic */ JSONObject h;
        private /* synthetic */ JSONObject i;
        private /* synthetic */ boolean j;
        final /* synthetic */ e k;

        /* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ai$a$a, reason: collision with other inner class name */
        final class C0335a extends il {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private /* synthetic */ JSONObject f5187d;

            C0335a(JSONObject jSONObject) {
                this.f5187d = jSONObject;
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() {
                a.this.k.onEventGenerated(this.f5187d);
            }
        }

        a(String str, JSONObject jSONObject, JSONObject jSONObject2, boolean z, e eVar) {
            this.f5186g = str;
            this.h = jSONObject;
            this.i = jSONObject2;
            this.j = z;
            this.k = eVar;
        }

        private static String b(int[] iArr, int i) {
            String str;
            synchronized (com.json.adqualitysdk.sdk.i.b.f33) {
                char[] cArr = new char[4];
                char[] cArr2 = new char[iArr.length << 1];
                int[] iArr2 = (int[]) f5183d.clone();
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
        public final void mo225() throws Exception {
            if (!(!this.f5186g.equals(b(new int[]{1273343987, -59101364, 2132119150, 1234950192, -2057659489, 1245968261, 104230817, 789694163}, KeyEvent.keyCodeFromString("") + 13).intern()))) {
                int i = f5185f + 19;
                f5184e = i % 128;
                if (!(i % 2 == 0)) {
                    ai.e(ai.this);
                    throw null;
                }
                ai.e(ai.this);
            }
            int iD = ai.d(ai.this);
            ai.c(ai.this);
            JSONObject jSONObjectM962 = ju.m962(this.h);
            jSONObjectM962.put(b(new int[]{1754165739, -58538308}, (ViewConfiguration.getEdgeSlop() >> 16) + 4).intern(), this.f5186g);
            jSONObjectM962.put(b(new int[]{1202085912, 1823085398}, (ViewConfiguration.getMinimumFlingVelocity() >> 16) + 2).intern(), iD);
            String strIntern = b(new int[]{664399121, 1417675931, 571279300, 1124682187, -1224402552, -69252333}, (-16777207) - Color.rgb(0, 0, 0)).intern();
            JSONObject jSONObject = this.i;
            if ((jSONObject != null ? '0' : '1') != '1') {
                int i2 = f5185f + 17;
                f5184e = i2 % 128;
                if (i2 % 2 != 0) {
                    strIntern = jSONObject.optString(ib.f120);
                    String str = ib.f78;
                    jSONObjectM962.put(str, this.i.optString(str, null));
                    int i3 = 18 / 0;
                } else {
                    strIntern = jSONObject.optString(ib.f120);
                    String str2 = ib.f78;
                    jSONObjectM962.put(str2, this.i.optString(str2, null));
                }
            }
            if (TextUtils.isEmpty(strIntern)) {
                strIntern = b(new int[]{391573233, -258704526}, (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)) + 4).intern();
            }
            jSONObjectM962.put(ib.f122, strIntern);
            if (!jSONObjectM962.has(ib.f121)) {
                jSONObjectM962.put(ib.f121, strIntern);
            }
            t.m1046(new C0335a(ai.this.mo274(jSONObjectM962, this.j, true, this.f5186g.equals(b(new int[]{-1880275451, 1899429644, -616959851, -1238492473}, (ViewConfiguration.getEdgeSlop() >> 16) + 7).intern()))));
        }
    }

    final class b extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static int f5189d = 129;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static int f5190e = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static int f5191f = 1;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private /* synthetic */ boolean f5192g;
        private /* synthetic */ JSONArray h;
        final /* synthetic */ e i;

        final class a extends il {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private /* synthetic */ JSONObject f5193d;

            a(JSONObject jSONObject) {
                this.f5193d = jSONObject;
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() {
                b.this.i.onEventGenerated(this.f5193d);
            }
        }

        b(boolean z, JSONArray jSONArray, e eVar) {
            this.f5192g = z;
            this.h = jSONArray;
            this.i = eVar;
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
                    cArr2[i5] = (char) (cArr2[i5] - f5189d);
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

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() throws Exception {
            int i = f5190e + 87;
            f5191f = i % 128;
            int i2 = i % 2;
            JSONObject jSONObjectMo274 = ai.this.mo274(null, this.f5192g, false, false);
            try {
                jSONObjectMo274.put(b(239 - TextUtils.getCapsMode("", 0, 0), true, (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)) + 2, 6 - ExpandableListView.getPackedPositionType(0L), "\b\ufff7\u0005\u0006\u0000\ufff7").intern(), this.h);
                int i3 = f5190e + 15;
                f5191f = i3 % 128;
                int i4 = i3 % 2;
            } catch (JSONException e2) {
                m.m1032(b((ViewConfiguration.getScrollBarSize() >> 8) + 232, false, Color.rgb(0, 0, 0) + 16777222, MotionEvent.axisFromString("") + 24, "\ufffe\u000b\ufffa\r\b\u000bￚ\u0007\ufffa\u0005\u0012\r\u0002￼\f\uffde\u000f\ufffe\u0007\r￠\ufffe\u0007").intern(), b(TextUtils.indexOf((CharSequence) "", '0', 0, 0) + 228, true, Color.red(0) + 4, 24 - View.resolveSizeAndState(0, 0, 0), "\r\u0010\u0010￣\uffff\u0012\u0003￫\u0012\f\u0003\u0014\u0003ﾾ\u0005\f\u0007\u0012\uffff\u0003\u0010\u0001ﾾ\u0010").intern(), e2);
            }
            t.m1046(new a(jSONObjectMo274));
        }
    }

    public interface e {
        void onEventGenerated(JSONObject jSONObject);
    }

    ai(Context context, ak akVar, int i2, String str) {
        super(context, akVar);
        this.t = i2;
        this.u = 0;
        this.v = 1;
        this.s = str;
        HandlerThread handlerThread = new HandlerThread(a("᷃㇙⋊愣玛\udb73珢쭝팖전皒ꕷㄬ뷨眠鑚\uf749ꦑ侎뒞墣쳵吖㒊", Color.alpha(0) + 23).intern());
        handlerThread.start();
        this.w = new Handler(handlerThread.getLooper());
    }

    private static String a(String str, int i2) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (o.f139) {
            char[] cArr2 = new char[cArr.length];
            o.f138 = 0;
            char[] cArr3 = new char[2];
            while (true) {
                int i3 = o.f138;
                if (i3 < cArr.length) {
                    cArr3[0] = cArr[i3];
                    cArr3[1] = cArr[i3 + 1];
                    int i4 = 58224;
                    for (int i5 = 0; i5 < 16; i5++) {
                        cArr3[1] = (char) (cArr3[1] - (((cArr3[0] + i4) ^ ((cArr3[0] << 4) + j)) ^ ((cArr3[0] >>> 5) + k)));
                        cArr3[0] = (char) (cArr3[0] - (((cArr3[1] + i4) ^ ((cArr3[1] << 4) + h)) ^ ((cArr3[1] >>> 5) + i)));
                        i4 -= 40503;
                    }
                    int i6 = o.f138;
                    cArr2[i6] = cArr3[0];
                    cArr2[i6 + 1] = cArr3[1];
                    o.f138 = i6 + 2;
                } else {
                    str2 = new String(cArr2, 0, i2);
                }
            }
        }
        return str2;
    }

    static /* synthetic */ int c(ai aiVar) {
        int i2 = r + 43;
        int i3 = i2 % 128;
        q = i3;
        int i4 = i2 % 2;
        int i5 = aiVar.v;
        aiVar.v = i5 + 1;
        int i6 = i3 + 15;
        r = i6 % 128;
        if ((i6 % 2 == 0 ? '&' : '_') == '_') {
            return i5;
        }
        int i7 = 51 / 0;
        return i5;
    }

    static /* synthetic */ int d(ai aiVar) {
        int i2 = q;
        int i3 = i2 + 29;
        r = i3 % 128;
        int i4 = i3 % 2;
        int i5 = aiVar.v;
        int i6 = i2 + 33;
        r = i6 % 128;
        if ((i6 % 2 == 0 ? 'Q' : (char) 15) == 15) {
            return i5;
        }
        throw null;
    }

    static /* synthetic */ int e(ai aiVar) {
        int i2;
        int i3;
        int i4 = q;
        int i5 = i4 + 43;
        r = i5 % 128;
        if ((i5 % 2 == 0 ? '<' : 'b') != 'b') {
            i2 = aiVar.u;
            i3 = i2 / 0;
        } else {
            i2 = aiVar.u;
            i3 = i2 + 1;
        }
        aiVar.u = i3;
        int i6 = i4 + 45;
        r = i6 % 128;
        if (i6 % 2 != 0) {
            return i2;
        }
        throw null;
    }

    private synchronized void f(JSONObject jSONObject) {
        int i2 = q + 119;
        r = i2 % 128;
        int i3 = i2 % 2;
        ie ieVarM896 = ja.m895().m896();
        try {
            jSONObject.put(h((-111) - (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)), (-248298946) - Drawable.resolveOpacity(0, 0), (byte) (ViewConfiguration.getKeyRepeatDelay() >> 16), (short) ((-18) - (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1))), Drawable.resolveOpacity(0, 0) + 1122104969).intern(), ju.m959(ieVarM896.m833(), ieVarM896.m834(), ieVarM896.m835(), ieVarM896.m832()));
            int i4 = r + 119;
            q = i4 % 128;
            if (!(i4 % 2 == 0)) {
                throw null;
            }
        } catch (JSONException e2) {
            m.m1032(a("᷃㇙⋊愣玛\udb73珢쭝팖전皒ꕷㄬ뷨眠鑚\uf749ꦑ侎뒞墣쳵吖㒊", 23 - Color.green(0)).intern(), h((-92) - MotionEvent.axisFromString(""), TextUtils.indexOf("", "") - 248298953, (byte) Color.argb(0, 0, 0, 0), (short) ((-80) - Color.alpha(0)), View.combineMeasuredStates(0, 0) + 1122104977).intern(), e2);
        }
    }

    private int g() {
        int i2 = q + 109;
        int i3 = i2 % 128;
        r = i3;
        int i4 = i2 % 2;
        int i5 = this.u;
        if (i5 != 0) {
            return i5;
        }
        int i6 = i3 + 97;
        q = i6 % 128;
        return (i6 % 2 != 0 ? 'M' : 'I') != 'M' ? 1 : 0;
    }

    private static String h(int i2, int i3, byte b2, short s, int i4) {
        String string;
        synchronized (n.f132) {
            StringBuilder sb = new StringBuilder();
            int i5 = m;
            int i6 = i2 + i5;
            boolean z = i6 == -1;
            if (z) {
                byte[] bArr = o;
                i6 = bArr != null ? (byte) (bArr[l + i4] + i5) : (short) (p[l + i4] + i5);
            }
            if (i6 > 0) {
                n.f136 = ((i4 + i6) - 2) + l + (z ? 1 : 0);
                n.f135 = b2;
                char c = (char) (i3 + n);
                n.f133 = c;
                sb.append(c);
                n.f134 = n.f133;
                n.f137 = 1;
                while (n.f137 < i6) {
                    byte[] bArr2 = o;
                    if (bArr2 != null) {
                        int i7 = n.f136;
                        n.f136 = i7 - 1;
                        n.f133 = (char) (n.f134 + (((byte) (bArr2[i7] + s)) ^ n.f135));
                    } else {
                        short[] sArr = p;
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

    @Override // com.json.adqualitysdk.sdk.i.jk
    @AnyThread
    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final JSONObject mo274(JSONObject jSONObject, boolean z, boolean z2, boolean z3) throws JSONException {
        long jM948;
        long jM952;
        synchronized (this) {
            jM948 = jt.m948();
            jM952 = jt.m952();
        }
        JSONObject jSONObjectMo274 = super.mo274(jSONObject, z, z2, z3);
        try {
            long jOptLong = jSONObjectMo274.optLong(ib.f115);
            jSONObjectMo274.remove(ib.f115);
            if (jOptLong != 0) {
                long j2 = jM952 - (jM948 - jOptLong);
                jSONObjectMo274.put(a("럅䗔愻\u05fc", 4 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1))).intern(), jM948);
                jSONObjectMo274.put(a("悷\udc22朮퍌", 3 - (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1))).intern(), jM952);
                jM948 = jOptLong;
                jM952 = j2;
            }
            jSONObjectMo274.put(a("愔\ue22a愻\u05fc", 3 - TextUtils.indexOf("", "", 0)).intern(), jM948);
            jSONObjectMo274.put(h((SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)) - 120, KeyEvent.normalizeMetaState(0) - 248298937, (byte) (ViewConfiguration.getPressedStateDuration() >> 16), (short) (View.resolveSize(0, 0) - 110), (ViewConfiguration.getKeyRepeatTimeout() >> 16) + 1122104935).intern(), jM952);
            jSONObjectMo274.put(h((-117) - (ViewConfiguration.getWindowTouchSlop() >> 8), Color.argb(0, 0, 0, 0) - 248298939, (byte) ((ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)) - 1), (short) ((-49) - KeyEvent.normalizeMetaState(0)), (ViewConfiguration.getLongPressTimeout() >> 16) + 1122104936).intern(), this.s);
            jSONObjectMo274.put(h(TextUtils.lastIndexOf("", '0') - 117, (-248298940) - Process.getGidForName(""), (byte) TextUtils.getTrimmedLength(""), (short) ((-126) - (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1))), (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)) + 1122104938).intern(), this.t);
            jSONObjectMo274.put(h((-118) - View.resolveSize(0, 0), KeyEvent.getDeadChar(0, 0) - 248298939, (byte) (ViewConfiguration.getMaximumFlingVelocity() >> 16), (short) ((-46) - View.MeasureSpec.getMode(0)), (ViewConfiguration.getWindowTouchSlop() >> 8) + 1122104941).intern(), g());
            if (ao.m303().mo305()) {
                jSONObjectMo274.put(h(MotionEvent.axisFromString("") - 116, (-248298955) - Drawable.resolveOpacity(0, 0), (byte) Color.alpha(0), (short) (62 - View.resolveSize(0, 0)), Color.green(0) + 1122104943).intern(), true);
            }
            if (z2) {
                f(jSONObjectMo274);
            }
        } catch (JSONException e2) {
            m.m1032(a("᷃㇙⋊愣玛\udb73珢쭝팖전皒ꕷㄬ뷨眠鑚\uf749ꦑ侎뒞墣쳵吖㒊", 23 - TextUtils.indexOf("", "")).intern(), h(TextUtils.getOffsetBefore("", 0) - 97, (-248298985) - Color.blue(0), (byte) ((ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)) + 1), (short) (View.MeasureSpec.makeMeasureSpec(0, 0) - 13), 1122104946 - Color.argb(0, 0, 0, 0)).intern(), e2);
        }
        return jSONObjectMo274;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final void m275(JSONArray jSONArray, boolean z, e eVar) {
        this.w.post(new b(z, jSONArray, eVar));
        int i2 = r + 39;
        q = i2 % 128;
        int i3 = i2 % 2;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized void m276(String str, JSONObject jSONObject, JSONObject jSONObject2, boolean z, e eVar) {
        this.w.post(new a(str, jSONObject, jSONObject2, z, eVar));
        int i2 = r + 65;
        q = i2 % 128;
        if (i2 % 2 != 0) {
            throw null;
        }
    }
}
