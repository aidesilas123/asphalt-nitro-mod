package com.json.adqualitysdk.sdk.i;

import android.content.Context;
import android.graphics.Color;
import android.media.AudioTrack;
import android.os.Process;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Field;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class kb {
    private static boolean a = false;
    private static boolean b = false;
    private static boolean c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f5955d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f5956e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static h f5957f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static h f5958g = null;
    private static char h = 0;
    private static char i = 0;
    private static char j = 0;
    private static char k = 0;
    private static char[] l = null;
    private static long m = 0;
    private static int n = 0;
    private static int o = 1;

    final class a implements hr {
        a() {
        }

        @Override // com.json.adqualitysdk.sdk.i.hr
        /* JADX INFO: renamed from: ﻛ */
        public final boolean mo591(hp hpVar) {
            return WebViewClient.class.equals(hpVar.mo767().getType());
        }
    }

    final class b extends WebViewClient {
        b() {
        }
    }

    final class c implements hi {
        private /* synthetic */ List a;

        c(List list) {
            this.a = list;
        }

        @Override // com.json.adqualitysdk.sdk.i.hi
        /* JADX INFO: renamed from: ﾇ */
        public final Field[] mo728(Object obj) {
            hq.m770().m772();
            return hj.m729(obj.getClass(), true, -1, this.a);
        }
    }

    final class d extends WebChromeClient {
        d() {
        }
    }

    final class e extends WebChromeClient {
        e() {
        }
    }

    final class f extends WebViewClient {
        f() {
        }
    }

    final class g implements hr {
        g() {
        }

        @Override // com.json.adqualitysdk.sdk.i.hr
        /* JADX INFO: renamed from: ﻛ */
        public final boolean mo591(hp hpVar) {
            return WebChromeClient.class.equals(hpVar.mo767().getType());
        }
    }

    static class h {
        private boolean a;
        private boolean b;

        private h() {
            this.a = false;
            this.b = false;
        }

        /* synthetic */ h(byte b) {
            this();
        }

        private boolean d() {
            return this.a;
        }

        final void a() {
            this.a = true;
        }

        final boolean b() {
            return this.b;
        }

        final void c() {
            this.b = true;
        }

        final boolean e() {
            return d() || b();
        }
    }

    static {
        o();
        a = true;
        b = true;
        c = true;
        byte b2 = 0;
        f5955d = false;
        f5956e = false;
        f5957f = new h(b2);
        f5958g = new h(b2);
        int i2 = o + 23;
        n = i2 % 128;
        int i3 = i2 % 2;
    }

    private static synchronized aw a() {
        aw awVarMo313;
        int i2 = n + 47;
        o = i2 % 128;
        if (!(i2 % 2 != 0)) {
            ao.m303().mo313();
            throw null;
        }
        awVarMo313 = ao.m303().mo313();
        int i3 = o + 117;
        n = i3 % 128;
        int i4 = i3 % 2;
        return awVarMo313;
    }

    private static hp<WebViewClient> b(WebView webView) {
        int i2 = o + 49;
        n = i2 % 128;
        int i3 = i2 % 2;
        i(webView.getContext());
        hp<WebViewClient> hpVarL = l(webView, h(), f5957f);
        int i4 = n + 5;
        o = i4 % 128;
        int i5 = i4 % 2;
        return hpVarL;
    }

    private static <T> hp<T> c(WebView webView, hr hrVar, List<String> list, int i2) {
        int i3 = n + 87;
        o = i3 % 128;
        if ((i3 % 2 == 0 ? '@' : '?') == '?') {
            return g(webView, hrVar, list, i2);
        }
        g(webView, hrVar, list, i2);
        throw null;
    }

    private static <T> hp<T> d(T t, hr hrVar, List<String> list, int i2) {
        int i3 = n + 67;
        o = i3 % 128;
        boolean z = i3 % 2 != 0;
        hp<T> hpVarG = g(t, hrVar, list, i2);
        if (!z) {
            int i4 = 14 / 0;
        }
        return hpVarG;
    }

    @RequiresApi(api = 26)
    private static boolean e(Context context) {
        if (b) {
            boolean z = false;
            b = false;
            WebView webView = new WebView(context);
            hd hdVar = new hd(null, new b());
            webView.setWebViewClient(hdVar);
            if ((hdVar == webView.getWebViewClient() ? '-' : '3') != '3') {
                z = true;
            } else {
                int i2 = n + 27;
                o = i2 % 128;
                int i3 = i2 % 2;
            }
            f5955d = z;
        }
        boolean z2 = f5955d;
        int i4 = n + 25;
        o = i4 % 128;
        int i5 = i4 % 2;
        return z2;
    }

    private static hp<WebChromeClient> f(WebView webView) {
        int i2 = n + 47;
        o = i2 % 128;
        if ((i2 % 2 == 0 ? '>' : 'C') == '>') {
            i(webView.getContext());
            l(webView, j(), f5958g);
            throw null;
        }
        i(webView.getContext());
        hp<WebChromeClient> hpVarL = l(webView, j(), f5958g);
        int i3 = n + 47;
        o = i3 % 128;
        if (i3 % 2 != 0) {
            return hpVarL;
        }
        throw null;
    }

    private static <T> hp<T> g(Object obj, hr hrVar, List<String> list, int i2) {
        hp<T> hpVarM780 = hq.m770().m771().m780(obj, hrVar, new c(list), list, i2);
        int i3 = n + 19;
        o = i3 % 128;
        int i4 = i3 % 2;
        return hpVarM780;
    }

    private static hr h() {
        a aVar = new a();
        int i2 = o + 79;
        n = i2 % 128;
        int i3 = i2 % 2;
        return aVar;
    }

    private static void i(Context context) {
        int i2 = n + 123;
        o = i2 % 128;
        int i3 = i2 % 2;
        if (a) {
            a = false;
            try {
                WebView webView = new WebView(context);
                hd hdVar = new hd(null, new f());
                webView.setWebViewClient(hdVar);
                hg hgVar = new hg(null, new e());
                webView.setWebChromeClient(hgVar);
                f5957f = k(webView, hdVar, h());
                f5958g = k(webView, hgVar, j());
                int i4 = n + 55;
                o = i4 % 128;
                if ((i4 % 2 == 0 ? (char) 11 : (char) 20) != 20) {
                    int i5 = 92 / 0;
                }
            } catch (Throwable th) {
                jy.m987(m((AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)) + 12, TextUtils.getOffsetBefore("", 0), (char) ((ViewConfiguration.getTouchSlop() >> 8) + 17947)).intern(), n("줔♵띳\ue0c6봎䒫㟔蹢䘄ク覣磟\ue4c2潵뿊\ue815㺕ਬ懯꾩䨛‖㲨摌ᘊ캭벰젩\u2e74钮\ue3c2\ue3b6", 31 - ((byte) KeyEvent.getModifierMetaStateMask())).intern(), th, false);
            }
        }
    }

    private static hr j() {
        g gVar = new g();
        int i2 = o + 103;
        n = i2 % 128;
        int i3 = i2 % 2;
        return gVar;
    }

    private static <T> h k(WebView webView, T t, hr hrVar) {
        h hVar = new h((byte) 0);
        hp hpVarC = c(webView, hrVar, a().m365(), a().m363());
        if ((hpVarC == null ? (byte) 1 : (byte) 0) == 0) {
            int i2 = o + 81;
            n = i2 % 128;
            int i3 = i2 % 2;
            Object objMo768 = hpVarC.mo768();
            if (objMo768 == t) {
                hVar.a();
                int i4 = n + 31;
                o = i4 % 128;
                int i5 = i4 % 2;
            } else {
                hp hpVarD = d(objMo768, hrVar, a().m362(), a().m366());
                if (hpVarD != null) {
                    int i6 = n + 27;
                    o = i6 % 128;
                    if (i6 % 2 == 0) {
                        hpVarD.mo768();
                        throw null;
                    }
                    if ((hpVarD.mo768() == t ? 'C' : '9') != '9') {
                        int i7 = n + 95;
                        o = i7 % 128;
                        if (i7 % 2 == 0) {
                            hVar.c();
                            throw null;
                        }
                        hVar.c();
                    }
                }
            }
        }
        return hVar;
    }

    private static <T> hp<T> l(WebView webView, hr hrVar, h hVar) {
        int i2 = o + 119;
        n = i2 % 128;
        int i3 = i2 % 2;
        try {
            if (hVar.e()) {
                int i4 = n + 115;
                o = i4 % 128;
                if (i4 % 2 == 0) {
                    c(webView, hrVar, a().m365(), a().m363());
                    hVar.b();
                    throw null;
                }
                hp<T> hpVarC = c(webView, hrVar, a().m365(), a().m363());
                if (hVar.b()) {
                    if ((hpVarC != null ? '8' : '>') == '8') {
                        int i5 = o + 71;
                        n = i5 % 128;
                        if (i5 % 2 != 0) {
                            hpVarC.mo768();
                            throw null;
                        }
                        T tMo768 = hpVarC.mo768();
                        if (tMo768 != null && !tMo768.getClass().equals(hpVarC.mo767().getType())) {
                            hpVarC = d(tMo768, hrVar, a().m362(), a().m366());
                        }
                        return hpVarC;
                    }
                }
                int i6 = n + 91;
                o = i6 % 128;
                if (i6 % 2 != 0) {
                    return hpVarC;
                }
                int i7 = 36 / 0;
                return hpVarC;
            }
        } catch (Throwable th) {
            jy.m987(m(12 - (Process.myTid() >> 22), Process.myPid() >> 22, (char) (View.resolveSize(0, 0) + 17947)).intern(), n("줔♵띳\ue0c6봎䒫룑쾳\uda81鮫觨\ue77a呔譗\ue1ce商솖镹ᔲ澹뿊\ue815솖镹졔솗", (-16777190) - Color.rgb(0, 0, 0)).intern(), th, false);
        }
        return null;
    }

    private static String m(int i2, int i3, char c2) {
        String str;
        synchronized (com.json.adqualitysdk.sdk.i.e.f50) {
            char[] cArr = new char[i2];
            com.json.adqualitysdk.sdk.i.e.f51 = 0;
            while (true) {
                int i4 = com.json.adqualitysdk.sdk.i.e.f51;
                if (i4 < i2) {
                    cArr[i4] = (char) ((((long) l[i3 + i4]) ^ (((long) i4) * m)) ^ ((long) c2));
                    com.json.adqualitysdk.sdk.i.e.f51 = i4 + 1;
                } else {
                    str = new String(cArr);
                }
            }
        }
        return str;
    }

    private static String n(String str, int i2) {
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

    static void o() {
        j = (char) 37346;
        i = (char) 6148;
        k = (char) 10496;
        h = (char) 16958;
        l = new char[]{17996, 49451, 18643, 54194, 23334, 58071, 28050, 62749, 31943, 34703, 3877, 38607, 'C', 34618, 3807, 38291, 7472, 42183, 11225, 45863, 14984, 49563, 18747, 53449, 22424, 57201, 26353, 60830, 30002, 64742, 33682, 2877, 37579, 6548, 41259, 10464, 44948, 14116, 48839, 17817, 52536, 21633, 56208, 25378, 60101, 29081, 63790};
        m = -3503645522658949291L;
    }

    @RequiresApi(api = 26)
    private static boolean p(Context context) {
        if (c) {
            boolean z = false;
            c = false;
            WebView webView = new WebView(context);
            hg hgVar = new hg(null, new d());
            webView.setWebChromeClient(hgVar);
            if (!(hgVar == webView.getWebChromeClient())) {
                int i2 = o + 9;
                n = i2 % 128;
                int i3 = i2 % 2;
            } else {
                int i4 = o + 29;
                n = i4 % 128;
                int i5 = i4 % 2;
                z = true;
            }
            f5956e = z;
        }
        return f5956e;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0026  */
    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.webkit.WebChromeClient m1013(android.webkit.WebView r4) {
        /*
            int r0 = com.json.adqualitysdk.sdk.i.kb.n
            int r0 = r0 + 15
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.kb.o = r1
            int r0 = r0 % 2
            r1 = 1
            r2 = 0
            if (r0 != 0) goto L10
            r0 = 1
            goto L11
        L10:
            r0 = 0
        L11:
            if (r0 == r1) goto L1a
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 26
            if (r0 < r1) goto L72
            goto L26
        L1a:
            int r0 = android.os.Build.VERSION.SDK_INT
            r3 = 30
            if (r0 < r3) goto L22
            r0 = 1
            goto L23
        L22:
            r0 = 0
        L23:
            if (r0 == r1) goto L26
            goto L72
        L26:
            int r0 = com.json.adqualitysdk.sdk.i.kb.n
            int r0 = r0 + 85
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.kb.o = r1
            int r0 = r0 % 2
            com.ironsource.adqualitysdk.sdk.i.aw r0 = a()
            boolean r0 = r0.m361()
            if (r0 == 0) goto L72
            int r0 = com.json.adqualitysdk.sdk.i.kb.n
            int r0 = r0 + 57
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.kb.o = r1
            int r0 = r0 % 2
            r1 = 0
            if (r0 == 0) goto L68
            android.content.Context r0 = r4.getContext()
            boolean r0 = p(r0)
            if (r0 == 0) goto L72
            int r0 = com.json.adqualitysdk.sdk.i.kb.n
            int r0 = r0 + 3
            int r2 = r0 % 128
            com.json.adqualitysdk.sdk.i.kb.o = r2
            int r0 = r0 % 2
            if (r0 == 0) goto L62
            android.webkit.WebChromeClient r4 = r4.getWebChromeClient()
            goto L7e
        L62:
            r4.getWebChromeClient()
            throw r1     // Catch: java.lang.Throwable -> L66
        L66:
            r4 = move-exception
            throw r4
        L68:
            android.content.Context r4 = r4.getContext()
            p(r4)
            throw r1     // Catch: java.lang.Throwable -> L70
        L70:
            r4 = move-exception
            throw r4
        L72:
            com.ironsource.adqualitysdk.sdk.i.hp r4 = f(r4)
            if (r4 == 0) goto L7f
            java.lang.Object r4 = r4.mo768()
            android.webkit.WebChromeClient r4 = (android.webkit.WebChromeClient) r4
        L7e:
            return r4
        L7f:
            java.lang.RuntimeException r4 = new java.lang.RuntimeException
            int r0 = android.graphics.Color.blue(r2)
            int r0 = r0 + 35
            int r1 = android.view.View.resolveSize(r2, r2)
            int r1 = r1 + 12
            int r2 = android.graphics.Color.argb(r2, r2, r2, r2)
            char r2 = (char) r2
            java.lang.String r0 = m(r0, r1, r2)
            java.lang.String r0 = r0.intern()
            r4.<init>(r0)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.kb.m1013(android.webkit.WebView):android.webkit.WebChromeClient");
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static void m1014(WebView webView, String str) {
        int i2 = o + 85;
        int i3 = i2 % 128;
        n = i3;
        int i4 = i2 % 2;
        if (webView != null) {
            int i5 = i3 + 89;
            o = i5 % 128;
            if ((i5 % 2 == 0 ? 'E' : 'B') != 'B') {
                webView.getHandler();
                throw null;
            }
            if ((webView.getHandler() == null ? '_' : '$') == '_') {
                int i6 = o + 73;
                n = i6 % 128;
                int i7 = i6 % 2;
                if (webView.getRootView() == null) {
                    return;
                }
            }
            StringBuilder sb = new StringBuilder();
            sb.append(n("\u0de0跼匲均₠顝じℬ惇㽝촸\uda1b匲均\ue386屶䆝ኳ卧\ue833\uec79䩓", TextUtils.getTrimmedLength("") + 22).intern());
            sb.append(ia.m824(str.getBytes()));
            sb.append(n("处脺蔀꛲", 4 - (ViewConfiguration.getTouchSlop() >> 8)).intern());
            webView.loadUrl(sb.toString());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0038  */
    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.webkit.WebViewClient m1015(android.webkit.WebView r3) {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 26
            r2 = 75
            if (r0 < r1) goto Lb
            r0 = 12
            goto Ld
        Lb:
            r0 = 75
        Ld:
            if (r0 == r2) goto L38
            com.ironsource.adqualitysdk.sdk.i.aw r0 = a()
            boolean r0 = r0.m364()
            r1 = 1
            if (r0 == 0) goto L1c
            r0 = 0
            goto L1d
        L1c:
            r0 = 1
        L1d:
            if (r0 == r1) goto L38
            android.content.Context r0 = r3.getContext()
            boolean r0 = e(r0)
            if (r0 == 0) goto L38
            int r0 = com.json.adqualitysdk.sdk.i.kb.o
            int r0 = r0 + 105
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.kb.n = r1
            int r0 = r0 % 2
            android.webkit.WebViewClient r3 = r3.getWebViewClient()
            goto L44
        L38:
            com.ironsource.adqualitysdk.sdk.i.hp r3 = b(r3)
            if (r3 == 0) goto L54
            java.lang.Object r3 = r3.mo768()
            android.webkit.WebViewClient r3 = (android.webkit.WebViewClient) r3
        L44:
            int r0 = com.json.adqualitysdk.sdk.i.kb.n
            int r0 = r0 + r2
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.kb.o = r1
            int r0 = r0 % 2
            if (r0 == 0) goto L50
            return r3
        L50:
            r3 = 0
            throw r3     // Catch: java.lang.Throwable -> L52
        L52:
            r3 = move-exception
            throw r3
        L54:
            java.lang.RuntimeException r3 = new java.lang.RuntimeException
            int r0 = android.view.ViewConfiguration.getDoubleTapTimeout()
            int r0 = r0 >> 16
            int r0 = r0 + 33
            java.lang.String r1 = "뒽蜢聘\uf69a袃\uecc1滅ல뿊\ue815觨\ue77a\udad4爈\ude77劖竢놉솖镹椧寍벰젩\u2e74钮蔮⭯䴪렮Ꭺ鄷憳崲"
            java.lang.String r0 = n(r1, r0)
            java.lang.String r0 = r0.intern()
            r3.<init>(r0)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.kb.m1015(android.webkit.WebView):android.webkit.WebViewClient");
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static boolean m1016(WebView webView) {
        int i2 = o + 35;
        n = i2 % 128;
        int i3 = i2 % 2;
        boolean z = m1015(webView) instanceof hd;
        int i4 = n + 117;
        o = i4 % 128;
        if ((i4 % 2 == 0 ? 'U' : '-') == '-') {
            return z;
        }
        int i5 = 48 / 0;
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x006a A[Catch: all -> 0x00a6, PHI: r2
      0x006a: PHI (r2v16 android.content.Intent) = (r2v15 android.content.Intent), (r2v25 android.content.Intent) binds: [B:19:0x0068, B:16:0x004b] A[DONT_GENERATE, DONT_INLINE], TryCatch #0 {all -> 0x00a6, blocks: (B:3:0x000b, B:5:0x0010, B:12:0x002c, B:21:0x0080, B:22:0x0097, B:20:0x006a, B:18:0x004e), top: B:29:0x000b }] */
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean m1017(android.webkit.WebView r6, java.lang.String r7) {
        /*
            Method dump skipped, instruction units count: 218
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.kb.m1017(android.webkit.WebView, java.lang.String):boolean");
    }
}
