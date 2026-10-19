package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.graphics.PointF;
import android.graphics.drawable.Drawable;
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
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ad<T> extends y<WebView, T> implements View.OnLayoutChangeListener {
    private static char[] n = {'a', 'd', 'c', 'l', 'b', 'k', ':', '/', 'W', 'e', 'V', 'i', 'w', 'A', 'H', 'n', 'r', 'E', 'o', ' ', 'L', 'y', 'u', 't', 'C', 'h', 'g', 'U', 'T', 'F', '-', '8', 'f', 'j', 'm', 'p'};
    private static char o = 6;
    private static int p = 0;
    private static int q = 1;
    private List<String> r;
    private String s;
    private boolean t;
    private boolean u;
    private boolean v;
    private jn w;
    private jm y;
    private Map<WebView, jn> x = new WeakHashMap();
    private List<ji> z = new ArrayList();

    final class a implements ji {
        private static long a = -7294510191808839212L;
        private static char[] b = {'s', 42524, 19634, 62299, 39361, 16491, 's', 42524, 19634, 62299, 39361, 16492, 33195, 10198, 52584, 'e', 42522, 19645, 62283, 39367, 'e', 42522, 19635, 62295, 39364, 16493, 'w', 42526, 19635, 3469, 43991, 16744, 65204, 37907, 19895, 60381, 33091, 16126, 54330, 36267, 11212, 49502, 32510, 5135, 52656, 23749, 64154, 4130, 45015, 50514, 7336, 47763, 53290, 28581, 34121, 56548, 31377, 36878, 12207, 17680, 40187, 14956, 20481, 61363, 1363, 23680, 64098, 4099, 44983, 50478, 7314, 47664, 'E', 42522, 19618, 62295, 39378, 16424, 58899, 36010, 13093, 55753, 32868, 9745, 52366, 29487, 6544, 49263, 26339, 3211, 45936, 23005, 'V', 42733, 19614, 62252, 39392, 16450, 59107, 35991, 13070};
        private static long c = -7408153713891236248L;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static int f5143d = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static int f5144e = 1;

        a() {
        }

        private static String a(int i, int i2, char c2) {
            String str;
            synchronized (e.f50) {
                char[] cArr = new char[i];
                e.f51 = 0;
                while (true) {
                    int i3 = e.f51;
                    if (i3 < i) {
                        cArr[i3] = (char) ((((long) b[i2 + i3]) ^ (((long) i3) * c)) ^ ((long) c2));
                        e.f51 = i3 + 1;
                    } else {
                        str = new String(cArr);
                    }
                }
            }
            return str;
        }

        private static String b(String str, int i) {
            String str2;
            Object charArray = str;
            if (str != null) {
                charArray = str.toCharArray();
            }
            char[] cArr = (char[]) charArray;
            synchronized (h.f63) {
                h.f64 = i;
                char[] cArr2 = new char[cArr.length];
                h.f65 = 0;
                while (true) {
                    int i2 = h.f65;
                    if (i2 < cArr.length) {
                        cArr2[i2] = (char) (((long) (cArr[i2] ^ (h.f64 * i2))) ^ a);
                        h.f65++;
                    } else {
                        str2 = new String(cArr2);
                    }
                }
            }
            return str2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        private void c(WebView webView, String str, boolean z) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(ib.f105, str);
                jSONObject.put(ib.f106, a(Drawable.resolveOpacity(0, 0) + 3, 26 - Color.green(0), (char) ExpandableListView.getPackedPositionType(0L)).intern());
                jSONObject.put(ib.f114, webView.getOriginalUrl());
                if (z) {
                    int i = f5143d + 81;
                    f5144e = i % 128;
                    int i2 = i % 2;
                    jSONObject.put(ib.f116, true);
                    int i3 = f5143d + 81;
                    f5144e = i3 % 128;
                    int i4 = i3 % 2;
                }
            } catch (JSONException e2) {
                String strIntern = a(16 - Color.red(0), ExpandableListView.getPackedPositionGroup(0L) + 29, (char) (Gravity.getAbsoluteGravity(0, 0) + 3546)).intern();
                StringBuilder sb = new StringBuilder();
                sb.append(a(27 - (ViewConfiguration.getScrollBarFadeDuration() >> 16), 44 - TextUtils.indexOf((CharSequence) "", '0', 0, 0), (char) (Color.blue(0) + 23680)).intern());
                sb.append(e2.getLocalizedMessage());
                m.m1031(strIntern, sb.toString());
            }
            ad adVar = ad.this;
            adVar.mo233(jSONObject, webView, ad.n(adVar), ad.this.j(webView));
        }

        @Override // com.json.adqualitysdk.sdk.i.ji
        /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
        public final void mo245(WebView webView) {
            int i = f5144e + 27;
            f5143d = i % 128;
            if (i % 2 != 0) {
                ad.m(ad.this, webView);
                throw null;
            }
            ad.m(ad.this, webView);
            int i2 = f5144e + 23;
            f5143d = i2 % 128;
            int i3 = i2 % 2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.json.adqualitysdk.sdk.i.ji
        /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
        public final void mo246(WebView webView, String str) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(ib.f118, str);
                jSONObject.put(ib.f113, ib.f109);
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(ib.f117, jSONObject);
                ad adVar = ad.this;
                adVar.mo227(jSONObject2, webView, this, adVar.j(webView));
                int i = f5144e + 83;
                f5143d = i % 128;
                if (!(i % 2 != 0)) {
                } else {
                    throw null;
                }
            } catch (Exception e2) {
                jy.m987(a(View.resolveSizeAndState(0, 0, 0) + 16, 29 - (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)), (char) (3546 - Color.alpha(0))).intern(), a(30 - (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)), (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)) + 71, (char) TextUtils.indexOf("", "", 0, 0)).intern(), (Throwable) e2, false);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.json.adqualitysdk.sdk.i.ji
        /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
        public final void mo247(WebView webView, String str, String str2) {
            String strSubstring = str2.substring(0, str2.indexOf(63));
            String strSubstring2 = str2.substring(str2.indexOf(63) + 1);
            if (!(!strSubstring.equals(b("膧ຍ鿬ⰰ봁䩐", (ViewConfiguration.getTapTimeout() >> 16) + 36653).intern()))) {
                ad.m(ad.this, webView);
                return;
            }
            if (strSubstring.equals(b("膧\uecc1孴즔㐱ꍓ", TextUtils.lastIndexOf("", '0', 0, 0) + 28002).intern())) {
                JSONObject jSONObjectO = ad.o(strSubstring2);
                ad adVar = ad.this;
                adVar.m244(jSONObjectO, webView, adVar.j(webView));
                return;
            }
            if ((strSubstring.equals(b("膧큿∈琪웉ᣮ", 20959 - (ViewConfiguration.getMaximumDrawingCacheSize() >> 24)).intern()) ? (char) 31 : (char) 17) == 31) {
                int i = f5144e + 121;
                f5143d = i % 128;
                if ((i % 2 != 0 ? '!' : (char) 28) != '!') {
                    JSONObject jSONObjectO2 = ad.o(strSubstring2);
                    ad adVar2 = ad.this;
                    adVar2.mo231(jSONObjectO2, webView, ad.n(adVar2), ad.this.j(webView));
                    return;
                } else {
                    JSONObject jSONObjectO3 = ad.o(strSubstring2);
                    ad adVar3 = ad.this;
                    adVar3.mo231(jSONObjectO3, webView, ad.n(adVar3), ad.this.j(webView));
                    throw null;
                }
            }
            if (!strSubstring.equals(a((ViewConfiguration.getEdgeSlop() >> 16) + 6, (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)), (char) (ViewConfiguration.getMinimumFlingVelocity() >> 16)).intern())) {
                if ((strSubstring.equals(a(6 - (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)), 7 - (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)), (char) (1 - (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)))).intern()) ? '\\' : 'I') == '\\') {
                    int i2 = f5143d + 105;
                    f5144e = i2 % 128;
                    int i3 = i2 % 2;
                    JSONObject jSONObjectO4 = ad.o(strSubstring2);
                    jy.m990(jSONObjectO4.optString(a(3 - Color.blue(0), 12 - (Process.myPid() >> 22), (char) ((SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)) + 33246)).intern()), jSONObjectO4.optString(a(Color.alpha(0) + 5, 15 - ((Process.getThreadPriority(0) + 20) >> 6), (char) (Process.myTid() >> 22)).intern()), jSONObjectO4.optString(a(7 - (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)), (ViewConfiguration.getMinimumFlingVelocity() >> 16) + 20, (char) View.resolveSizeAndState(0, 0, 0)).intern()), jSONObjectO4.optString(b("膱瑯樵惻嚛", 62921 - View.MeasureSpec.getMode(0)).intern()));
                }
                int i4 = f5144e + 99;
                f5143d = i4 % 128;
                if (i4 % 2 == 0) {
                    return;
                } else {
                    throw null;
                }
            }
            int i5 = f5144e + 33;
            f5143d = i5 % 128;
            if (i5 % 2 == 0) {
                JSONObject jSONObjectO5 = ad.o(strSubstring2);
                jSONObjectO5.remove(ib.f115);
                ad adVar4 = ad.this;
                adVar4.mo230(jSONObjectO5, webView, adVar4.j(webView));
                return;
            }
            JSONObject jSONObjectO6 = ad.o(strSubstring2);
            jSONObjectO6.remove(ib.f115);
            ad adVar5 = ad.this;
            adVar5.mo230(jSONObjectO6, webView, adVar5.j(webView));
            throw null;
        }

        @Override // com.json.adqualitysdk.sdk.i.ji
        /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
        public final void mo248(WebView webView, String str, boolean z) {
            int i = f5143d + 55;
            f5144e = i % 128;
            if ((i % 2 == 0 ? '-' : (char) 25) != '-') {
                if (!ad.t(ad.this)) {
                    return;
                }
            } else {
                int i2 = 61 / 0;
                if (!ad.t(ad.this)) {
                    return;
                }
            }
            if (ad.l(ad.this) == null || ad.l(ad.this).isEmpty()) {
                c(webView, str, z);
                return;
            }
            Iterator it = ad.l(ad.this).iterator();
            int i3 = f5143d + 83;
            f5144e = i3 % 128;
            int i4 = i3 % 2;
            do {
                if ((it.hasNext() ? '*' : '[') != '*') {
                    return;
                }
            } while ((str.startsWith((String) it.next()) ? '2' : (char) 24) == 24);
            int i5 = f5144e + 39;
            f5143d = i5 % 128;
            if (i5 % 2 == 0) {
                c(webView, str, z);
            } else {
                c(webView, str, z);
                int i6 = 70 / 0;
            }
        }
    }

    private ji f() {
        a aVar = new a();
        int i = p + 9;
        q = i % 128;
        if ((i % 2 == 0 ? (char) 5 : (char) 15) == 15) {
            return aVar;
        }
        int i2 = 80 / 0;
        return aVar;
    }

    private static JSONObject g(String str) {
        int i = p + 31;
        q = i % 128;
        int i2 = i % 2;
        try {
            String strDecode = URLDecoder.decode(str, k((byte) ((KeyEvent.getMaxKeyCode() >> 16) + 19), "\u001c\u001d\u0018#K", 5 - (ViewConfiguration.getJumpTapTimeout() >> 16)).intern());
            if (!TextUtils.isEmpty(strDecode)) {
                return new JSONObject(strDecode);
            }
            int i3 = p + 117;
            q = i3 % 128;
            int i4 = i3 % 2;
        } catch (Exception e2) {
            m.m1032(k((byte) (63 - (ViewConfiguration.getMaximumDrawingCacheSize() >> 24)), "\t\n\n\u0010\u0006\n\r\u000e\u0002\r\u0003\f\u0002\u0004\n\u000f", (ViewConfiguration.getDoubleTapTimeout() >> 16) + 16).intern(), k((byte) (100 - ExpandableListView.getPackedPositionGroup(0L)), "\f\u0011\f\u0016\r\u0016\u001b\bØØ\t\u0011\u0019\u0014\u0002\u0001\u0012\u0005", 18 - View.MeasureSpec.getSize(0)).intern(), e2);
        }
        return new JSONObject();
    }

    private void h(WebView webView) {
        int i = q + 83;
        p = i % 128;
        int i2 = i % 2;
        this.y.m918(webView);
        int i3 = q + 67;
        p = i3 % 128;
        if (i3 % 2 == 0) {
        } else {
            throw null;
        }
    }

    private jl i() {
        jn jnVar = this.w;
        if (jnVar == null) {
            int i = p + 31;
            q = i % 128;
            if (i % 2 != 0) {
                return null;
            }
            throw null;
        }
        int i2 = q + 79;
        p = i2 % 128;
        boolean z = i2 % 2 == 0;
        jl jlVarM923 = jnVar.m923();
        if (z) {
            return jlVarM923;
        }
        int i3 = 0 / 0;
        return jlVarM923;
    }

    private static String k(byte b, String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (g.f56) {
            char[] cArr2 = n;
            char c = o;
            char[] cArr3 = new char[i];
            if (i % 2 != 0) {
                i--;
                cArr3[i] = (char) (cArr[i] - b);
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
                        cArr3[g.f60] = (char) (g.f58 - b);
                        cArr3[g.f60 + 1] = (char) (g.f62 - b);
                    } else {
                        g.f59 = g.f58 / c;
                        g.f55 = g.f58 % c;
                        g.f61 = g.f62 / c;
                        g.f57 = g.f62 % c;
                        if (g.f55 == g.f57) {
                            g.f59 = ((g.f59 + c) - 1) % c;
                            g.f61 = ((g.f61 + c) - 1) % c;
                            int i3 = (g.f59 * c) + g.f55;
                            int i4 = (g.f61 * c) + g.f57;
                            int i5 = g.f60;
                            cArr3[i5] = cArr2[i3];
                            cArr3[i5 + 1] = cArr2[i4];
                        } else if (g.f59 == g.f61) {
                            g.f55 = ((g.f55 + c) - 1) % c;
                            g.f57 = ((g.f57 + c) - 1) % c;
                            int i6 = (g.f59 * c) + g.f55;
                            int i7 = (g.f61 * c) + g.f57;
                            int i8 = g.f60;
                            cArr3[i8] = cArr2[i6];
                            cArr3[i8 + 1] = cArr2[i7];
                        } else {
                            int i9 = (g.f59 * c) + g.f57;
                            int i10 = (g.f61 * c) + g.f55;
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

    static /* synthetic */ List l(ad adVar) {
        int i = p + 15;
        q = i % 128;
        boolean z = i % 2 != 0;
        List<String> list = adVar.r;
        if (z) {
            return list;
        }
        throw null;
    }

    static /* synthetic */ void m(ad adVar, WebView webView) {
        int i = p + 35;
        q = i % 128;
        int i2 = i % 2;
        adVar.r(webView);
        int i3 = q + 45;
        p = i3 % 128;
        if ((i3 % 2 != 0 ? 'F' : 'G') != 'G') {
            int i4 = 8 / 0;
        }
    }

    static /* synthetic */ jl n(ad adVar) {
        int i = p + 25;
        q = i % 128;
        int i2 = i % 2;
        jl jlVarI = adVar.i();
        int i3 = p + 91;
        q = i3 % 128;
        if (!(i3 % 2 == 0)) {
            return jlVarI;
        }
        throw null;
    }

    static /* synthetic */ JSONObject o(String str) {
        int i = p + 37;
        q = i % 128;
        if ((i % 2 == 0 ? '\r' : 'A') == '\r') {
            g(str);
            throw null;
        }
        JSONObject jSONObjectG = g(str);
        int i2 = p + 59;
        q = i2 % 128;
        int i3 = i2 % 2;
        return jSONObjectG;
    }

    private static void p(JSONObject jSONObject, WebView webView) {
        int i = p + 97;
        int i2 = i % 128;
        q = i2;
        int i3 = i % 2;
        if ((webView != null ? (char) 21 : (char) 11) != 21) {
            return;
        }
        int i4 = i2 + 27;
        p = i4 % 128;
        try {
            if (i4 % 2 != 0) {
                String str = ib.f74;
                webView.getWindowToken();
                throw null;
            }
            jSONObject.put(ib.f74, (webView.getWindowToken() != null ? 'c' : '[') != '[');
            int i5 = q + 107;
            p = i5 % 128;
            if (i5 % 2 == 0) {
            } else {
                throw null;
            }
        } catch (JSONException unused) {
        }
    }

    private void q(JSONObject jSONObject, WebView webView, T t) {
        int i = q + 55;
        p = i % 128;
        if ((i % 2 != 0 ? 'B' : '0') != 'B') {
            jSONObject.remove(ib.f115);
            super.mo226(jSONObject, webView, t);
        } else {
            jSONObject.remove(ib.f115);
            super.mo226(jSONObject, webView, t);
            int i2 = 33 / 0;
        }
        int i3 = p + 81;
        q = i3 % 128;
        int i4 = i3 % 2;
    }

    private void r(WebView webView) {
        int i = p + 7;
        q = i % 128;
        int i2 = i % 2;
        jn jnVar = this.x.get(webView);
        if (this.t) {
            int i3 = p + 47;
            q = i3 % 128;
            if (i3 % 2 == 0) {
                jnVar.m924();
                throw null;
            }
            if (!(!jnVar.m924())) {
                if (kb.m1016(webView) ? false : true) {
                    jnVar.m921();
                    int i4 = p + 85;
                    q = i4 % 128;
                    int i5 = i4 % 2;
                }
                h(webView);
            }
        }
        int i6 = p + 79;
        q = i6 % 128;
        int i7 = i6 % 2;
    }

    static /* synthetic */ boolean t(ad adVar) {
        int i = q + 87;
        p = i % 128;
        boolean z = i % 2 == 0;
        boolean z2 = adVar.v;
        if (z) {
            return z2;
        }
        throw null;
    }

    abstract T j(WebView webView);

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        int i9 = p + 97;
        q = i9 % 128;
        int i10 = i9 % 2;
        try {
            if ((view instanceof WebView ? '`' : ',') != ',') {
                WebView webView = (WebView) view;
                if (this.x.containsKey(webView)) {
                    r(webView);
                    int i11 = q + 45;
                    p = i11 % 128;
                    int i12 = i11 % 2;
                }
            }
        } catch (Throwable th) {
            jy.m987(k((byte) (KeyEvent.keyCodeFromString("") + 63), "\t\n\n\u0010\u0006\n\r\u000e\u0002\r\u0003\f\u0002\u0004\n\u000f", (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)) + 15).intern(), k((byte) ((ViewConfiguration.getWindowTouchSlop() >> 8) + 17), "\f\u0011\f\u0016\r\u0016\t\u0011\u0014\u0013\u000e\u0015\u0003\u0012\u0013\u0017\u0012\u001d\u0018\u0001\u000e\u001bv", (ViewConfiguration.getMaximumFlingVelocity() >> 16) + 23).intern(), th, false);
        }
    }

    final void s(String str, List<String> list, boolean z, boolean z2, boolean z3, boolean z4) {
        this.t = z;
        this.u = z2;
        this.y = new jm(str, z4);
        this.v = z3;
        this.r = list;
        int i = p + 69;
        q = i % 128;
        if ((i % 2 == 0 ? (char) 24 : '\t') != 24) {
        } else {
            throw null;
        }
    }

    @Override // com.json.adqualitysdk.sdk.i.y
    /* JADX INFO: renamed from: ﻐ */
    public final String mo223(T t) {
        String str;
        int i = p;
        int i2 = i + 117;
        q = i2 % 128;
        if ((i2 % 2 == 0 ? (char) 1 : (char) 31) != 1) {
            str = this.s;
        } else {
            str = this.s;
            int i3 = 48 / 0;
        }
        int i4 = i + 107;
        q = i4 % 128;
        if ((i4 % 2 == 0 ? (char) 19 : 'R') != 19) {
            return str;
        }
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.json.adqualitysdk.sdk.i.y, com.json.adqualitysdk.sdk.i.p
    /* JADX INFO: renamed from: ﻐ */
    public final /* synthetic */ void mo226(JSONObject jSONObject, Object obj, Object obj2) {
        int i = q + 47;
        p = i % 128;
        int i2 = i % 2;
        q(jSONObject, (WebView) obj, obj2);
        int i3 = p + 87;
        q = i3 % 128;
        if ((i3 % 2 == 0 ? (char) 24 : '3') == '3') {
        } else {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final void m239(String str) {
        int i = q + 107;
        int i2 = i % 128;
        p = i2;
        int i3 = i % 2;
        this.s = str;
        int i4 = i2 + 105;
        q = i4 % 128;
        int i5 = i4 % 2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.json.adqualitysdk.sdk.i.y, com.json.adqualitysdk.sdk.i.p
    /* JADX INFO: renamed from: ｋ */
    public final /* synthetic */ void mo229(JSONObject jSONObject, Object obj, Object obj2) {
        int i = q + 39;
        p = i % 128;
        int i2 = i % 2;
        m244(jSONObject, (WebView) obj, obj2);
        int i3 = q + 47;
        p = i3 % 128;
        int i4 = i3 % 2;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final void m240() {
        int i = q + 89;
        p = i % 128;
        if ((i % 2 == 0 ? 'R' : 'Y') != 'R') {
            this.x.keySet().iterator();
            throw null;
        }
        Iterator<WebView> it = this.x.keySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                this.z.clear();
                this.w = null;
                this.x.clear();
                return;
            }
            WebView next = it.next();
            next.removeOnLayoutChangeListener(this);
            jn jnVar = this.x.get(next);
            Iterator<ji> it2 = this.z.iterator();
            while (true) {
                if (!(!it2.hasNext())) {
                    jnVar.m926(it2.next());
                    int i2 = q + 77;
                    p = i2 % 128;
                    int i3 = i2 % 2;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x007e A[PHI: r1
      0x007e: PHI (r1v9 com.ironsource.adqualitysdk.sdk.i.jn) = (r1v8 com.ironsource.adqualitysdk.sdk.i.jn), (r1v17 com.ironsource.adqualitysdk.sdk.i.jn) binds: [B:22:0x007c, B:19:0x0058] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void m241(android.webkit.WebView r5) {
        /*
            r4 = this;
            int r0 = com.json.adqualitysdk.sdk.i.ad.p
            int r0 = r0 + 59
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.ad.q = r1
            int r0 = r0 % 2
            if (r5 == 0) goto L97
            java.util.Map<android.webkit.WebView, com.ironsource.adqualitysdk.sdk.i.jn> r0 = r4.x
            boolean r0 = r0.containsKey(r5)
            r1 = 0
            r2 = 1
            if (r0 != 0) goto L18
            r0 = 0
            goto L19
        L18:
            r0 = 1
        L19:
            if (r0 == 0) goto L1d
            goto L97
        L1d:
            int r0 = com.json.adqualitysdk.sdk.i.ad.q
            int r0 = r0 + 63
            int r3 = r0 % 128
            com.json.adqualitysdk.sdk.i.ad.p = r3
            int r0 = r0 % 2
            if (r0 == 0) goto L2a
            r1 = 1
        L2a:
            r0 = 11
            java.lang.String r3 = "\u0001\u0002\u0003\u0004\u0005\u0000\u0007\bO"
            if (r1 == r2) goto L5b
            int r1 = android.view.ViewConfiguration.getScrollBarFadeDuration()
            int r1 = r1 >> 16
            int r1 = r1 + 32
            byte r1 = (byte) r1
            int r2 = android.view.ViewConfiguration.getMaximumDrawingCacheSize()
            int r2 = r2 >> 24
            int r2 = r2 + 9
            java.lang.String r1 = k(r1, r3, r2)
            java.lang.String r1 = r1.intern()
            boolean r2 = r4.u
            com.ironsource.adqualitysdk.sdk.i.jn r1 = com.json.adqualitysdk.sdk.i.jn.m919(r5, r1, r2)
            com.ironsource.adqualitysdk.sdk.i.jn r2 = r4.w
            r3 = 28
            if (r2 != 0) goto L56
            goto L58
        L56:
            r0 = 28
        L58:
            if (r0 == r3) goto L80
            goto L7e
        L5b:
            int r1 = android.view.ViewConfiguration.getScrollBarFadeDuration()
            int r1 = r1 >>> 125
            int r0 = r0 - r1
            byte r0 = (byte) r0
            r1 = 74
            int r2 = android.view.ViewConfiguration.getMaximumDrawingCacheSize()
            int r2 = r2 % 96
            int r1 = r1 % r2
            java.lang.String r0 = k(r0, r3, r1)
            java.lang.String r0 = r0.intern()
            boolean r1 = r4.u
            com.ironsource.adqualitysdk.sdk.i.jn r1 = com.json.adqualitysdk.sdk.i.jn.m919(r5, r0, r1)
            com.ironsource.adqualitysdk.sdk.i.jn r0 = r4.w
            if (r0 != 0) goto L80
        L7e:
            r4.w = r1
        L80:
            java.util.Map<android.webkit.WebView, com.ironsource.adqualitysdk.sdk.i.jn> r0 = r4.x
            r0.put(r5, r1)
            com.ironsource.adqualitysdk.sdk.i.ji r0 = r4.f()
            java.util.List<com.ironsource.adqualitysdk.sdk.i.ji> r2 = r4.z
            r2.add(r0)
            r1.m922(r0)
            r4.r(r5)
            r5.addOnLayoutChangeListener(r4)
        L97:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.ad.m241(android.webkit.WebView):void");
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final WebView m242() {
        int i = q;
        int i2 = i + 53;
        p = i2 % 128;
        int i3 = i2 % 2;
        jn jnVar = this.w;
        if (!(jnVar != null)) {
            return null;
        }
        int i4 = i + 51;
        p = i4 % 128;
        boolean z = i4 % 2 == 0;
        WebView webViewM920 = jnVar.m920();
        if (z) {
            return webViewM920;
        }
        int i5 = 61 / 0;
        return webViewM920;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m243(List<WebView> list) {
        int i = q;
        int i2 = i + 75;
        p = i2 % 128;
        int i3 = i2 % 2;
        if (list != null) {
            int i4 = i + 15;
            p = i4 % 128;
            char c = i4 % 2 != 0 ? 'L' : 'J';
            Iterator<WebView> it = list.iterator();
            if (c == 'L') {
                int i5 = 13 / 0;
            }
            while (true) {
                if ((it.hasNext() ? (char) 7 : (char) 26) == 26) {
                    break;
                } else {
                    m241(it.next());
                }
            }
        }
        int i6 = q + 9;
        p = i6 % 128;
        if (i6 % 2 == 0) {
        } else {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m244(JSONObject jSONObject, WebView webView, T t) {
        int i = q + 63;
        p = i % 128;
        if (i % 2 == 0) {
            p(jSONObject, webView);
            super.mo229(jSONObject, webView, t);
        } else {
            p(jSONObject, webView);
            super.mo229(jSONObject, webView, t);
            throw null;
        }
    }
}
