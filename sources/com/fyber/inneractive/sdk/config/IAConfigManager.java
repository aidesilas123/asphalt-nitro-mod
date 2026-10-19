package com.fyber.inneractive.sdk.config;

import android.content.Context;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.fyber.inneractive.sdk.config.enums.Vendor;
import com.fyber.inneractive.sdk.external.InneractiveMediationName;
import com.fyber.inneractive.sdk.external.InneractiveUserConfig;
import com.fyber.inneractive.sdk.network.q0;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.s0;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class IAConfigManager {
    public static long N;
    public final com.fyber.inneractive.sdk.util.e0 A;
    public com.fyber.inneractive.sdk.network.c0<c> B;
    public com.fyber.inneractive.sdk.network.c0<com.fyber.inneractive.sdk.config.global.l> C;
    public com.fyber.inneractive.sdk.config.d D;
    public final com.fyber.inneractive.sdk.ignite.c E;
    public final com.fyber.inneractive.sdk.dv.handler.a F;
    public final com.fyber.inneractive.sdk.cache.i G;
    public final com.fyber.inneractive.sdk.network.c H;
    public final Map<com.fyber.inneractive.sdk.util.t, com.fyber.inneractive.sdk.util.s> I;
    public com.fyber.inneractive.sdk.measurement.a J;
    public WebView K;
    public final com.fyber.inneractive.sdk.config.global.s L;
    public Map<String, z> a = new HashMap();
    public Map<String, a0> b = new HashMap();
    public String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f1933d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f1934e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Context f1935f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public List<OnConfigurationReadyAndValidListener> f1936g;
    public boolean h;
    public final s i;
    public InneractiveUserConfig j;
    public String k;
    public boolean l;
    public String m;
    public InneractiveMediationName n;
    public String o;
    public String p;
    public List<String> q;
    public boolean r;
    public final com.fyber.inneractive.sdk.network.y s;
    public String t;
    public j u;
    public com.fyber.inneractive.sdk.config.e v;
    public k w;
    public final f0 x;
    public s0 y;
    public com.fyber.inneractive.sdk.config.global.a z;
    public static final IAConfigManager M = new IAConfigManager();
    public static final Runnable O = new b();

    public interface OnConfigurationReadyAndValidListener {
        void onConfigurationReadyAndValid(IAConfigManager iAConfigManager, boolean z, Exception exc);
    }

    public class a extends WebViewClient {
        public a(IAConfigManager iAConfigManager) {
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            return true;
        }
    }

    public class b implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            IAConfigManager iAConfigManager = IAConfigManager.M;
            WebView webView = iAConfigManager.K;
            if (webView == null || iAConfigManager.f1935f == null) {
                return;
            }
            webView.destroy();
            iAConfigManager.K = iAConfigManager.a(iAConfigManager.f1935f);
        }
    }

    public static class c {
        public String a;
        public String b;
        public String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Map<String, z> f1937d = new HashMap();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Map<String, a0> f1938e = new HashMap();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public e f1939f = new e();
    }

    public static class d extends Exception {
    }

    public static class e {
        public Set<Vendor> a = new HashSet();
    }

    public IAConfigManager() {
        new HashSet();
        this.h = false;
        this.i = new s();
        this.l = false;
        this.r = false;
        this.s = new com.fyber.inneractive.sdk.network.y();
        this.t = "";
        this.x = new f0();
        this.A = new com.fyber.inneractive.sdk.util.e0();
        this.E = new com.fyber.inneractive.sdk.ignite.c();
        this.F = com.fyber.inneractive.sdk.util.l.a("com.google.android.gms.ads.MobileAds", "com.google.android.gms.ads.query.QueryInfoGenerationCallback") ? new com.fyber.inneractive.sdk.dv.handler.c() : new com.fyber.inneractive.sdk.dv.handler.d();
        this.G = new com.fyber.inneractive.sdk.cache.i();
        this.H = new com.fyber.inneractive.sdk.network.c();
        this.I = new HashMap();
        this.L = com.fyber.inneractive.sdk.config.global.s.b();
        this.f1936g = new CopyOnWriteArrayList();
    }

    public static void a() {
        IAConfigManager iAConfigManager = M;
        com.fyber.inneractive.sdk.network.c0<c> c0Var = iAConfigManager.B;
        if (c0Var != null) {
            iAConfigManager.s.a.offer(c0Var);
            c0Var.a(q0.QUEUED);
        }
        j jVar = iAConfigManager.u;
        if (jVar.f1964d) {
            return;
        }
        jVar.b();
    }

    public static void a(String str, String str2) {
        com.fyber.inneractive.sdk.util.m.b.post(new r(str, str2));
    }

    public static void addListener(OnConfigurationReadyAndValidListener onConfigurationReadyAndValidListener) {
        M.f1936g.add(onConfigurationReadyAndValidListener);
    }

    public static com.fyber.inneractive.sdk.config.e b() {
        return M.v;
    }

    public static j c() {
        return M.u;
    }

    public static com.fyber.inneractive.sdk.ignite.c d() {
        return M.E;
    }

    public static f0 e() {
        return M.x;
    }

    public static s0 f() {
        return M.y;
    }

    public static String g() {
        return M.D.f1951d;
    }

    public static boolean h() {
        return M.f1934e != null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean i() {
        /*
            boolean r0 = h()
            int r1 = com.fyber.inneractive.sdk.config.f.a
            r1 = 0
            java.lang.String r2 = java.lang.Boolean.toString(r1)
            java.lang.String r3 = "ia.testEnvironmentConfiguration.forceConfigRefresh"
            java.lang.String r2 = java.lang.System.getProperty(r3, r2)
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r2)
            boolean r2 = r2.booleanValue()
            if (r0 == 0) goto L2e
            long r3 = java.lang.System.currentTimeMillis()
            long r5 = com.fyber.inneractive.sdk.config.IAConfigManager.N
            long r3 = r3 - r5
            r5 = 3600000(0x36ee80, double:1.7786363E-317)
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 > 0) goto L2b
            r3 = 1
            goto L2c
        L2b:
            r3 = 0
        L2c:
            if (r3 == 0) goto L30
        L2e:
            if (r2 == 0) goto L59
        L30:
            if (r2 == 0) goto L42
            com.fyber.inneractive.sdk.config.IAConfigManager r2 = com.fyber.inneractive.sdk.config.IAConfigManager.M
            com.fyber.inneractive.sdk.config.j r2 = r2.u
            r2.f1964d = r1
            com.fyber.inneractive.sdk.cache.d r1 = r2.f1965e
            com.fyber.inneractive.sdk.util.k r2 = new com.fyber.inneractive.sdk.util.k
            r2.<init>(r1)
            com.fyber.inneractive.sdk.util.m.a(r2)
        L42:
            a()
            com.fyber.inneractive.sdk.config.IAConfigManager r1 = com.fyber.inneractive.sdk.config.IAConfigManager.M
            com.fyber.inneractive.sdk.cache.i r1 = r1.G
            r1.a()
            com.fyber.inneractive.sdk.web.z r1 = com.fyber.inneractive.sdk.web.z.c
            r1.getClass()
            com.fyber.inneractive.sdk.web.y r2 = new com.fyber.inneractive.sdk.web.y
            r2.<init>(r1)
            com.fyber.inneractive.sdk.util.m.a(r2)
        L59:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.config.IAConfigManager.i():boolean");
    }

    public static void removeListener(OnConfigurationReadyAndValidListener onConfigurationReadyAndValidListener) {
        M.f1936g.remove(onConfigurationReadyAndValidListener);
    }

    public final WebView a(Context context) {
        try {
            WebView webView = new WebView(context);
            webView.setWebViewClient(new a(this));
            return webView;
        } catch (Throwable unused) {
            IAlog.a("failed to create a new webview", new Object[0]);
            return null;
        }
    }

    public final void a(Exception exc) {
        for (OnConfigurationReadyAndValidListener onConfigurationReadyAndValidListener : this.f1936g) {
            if (onConfigurationReadyAndValidListener != null) {
                boolean zH = h();
                onConfigurationReadyAndValidListener.onConfigurationReadyAndValid(this, zH, !zH ? exc : null);
            }
        }
    }
}
