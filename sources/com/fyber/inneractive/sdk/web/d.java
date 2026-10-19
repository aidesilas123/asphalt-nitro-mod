package com.fyber.inneractive.sdk.web;

import android.content.Context;
import android.graphics.Rect;
import android.os.AsyncTask;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.external.InneractiveAdRequest;
import com.fyber.inneractive.sdk.external.InneractiveErrorCode;
import com.fyber.inneractive.sdk.external.InneractiveInfrastructureError;
import com.fyber.inneractive.sdk.measurement.a;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.k0;
import com.fyber.inneractive.sdk.util.n0;
import com.fyber.inneractive.sdk.util.x;
import com.fyber.inneractive.sdk.util.z;
import com.fyber.inneractive.sdk.web.d0;
import com.fyber.inneractive.sdk.web.g;
import com.fyber.inneractive.sdk.web.w;
import com.vungle.ads.internal.presenter.MRAIDPresenter;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d<L extends d0> implements f, z.e, g.a, w.a {
    public g b;
    public r c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public s f2753d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f2754e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public InterfaceC0201d f2755f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public L f2756g;
    public boolean j;
    public boolean k;
    public c l;
    public AsyncTask<Void, Void, String> o;
    public String p;
    public String q;
    public InneractiveAdRequest r;
    public com.fyber.inneractive.sdk.flow.q s;
    public boolean a = false;
    public float h = 0.0f;
    public Rect i = new Rect();
    public final Runnable n = new a();
    public final Runnable m = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.this.j();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d dVar = d.this;
            if (dVar.k) {
                IAlog.a("No user web action detected for : %s blocking.", dVar.l);
                d dVar2 = d.this;
                String strC = dVar2.l.c();
                String strA = d.this.l.a();
                L l = dVar2.f2756g;
                if (l != null) {
                    l.a(strC, strA);
                }
                int i = IAlog.a;
                IAlog.a(1, null, "AD_AUTO_CLICK_DETECTED", new Object[0]);
                d.this.l.b();
                d.this.j();
            } else {
                IAlog.a("User web action detected for: %s", dVar.l);
                d.this.l.d();
            }
            d.this.l = null;
        }
    }

    public interface c {
        String a();

        void b();

        String c();

        void d();
    }

    /* JADX INFO: renamed from: com.fyber.inneractive.sdk.web.d$d, reason: collision with other inner class name */
    public interface InterfaceC0201d {
        void a(d dVar);

        void a(d dVar, InneractiveInfrastructureError inneractiveInfrastructureError);
    }

    public class e implements c {
        public String a;
        public k0 b;

        public e(String str, k0 k0Var) {
            this.b = k0Var;
            this.a = str;
        }

        @Override // com.fyber.inneractive.sdk.web.d.c
        public String a() {
            return null;
        }

        @Override // com.fyber.inneractive.sdk.web.d.c
        public void b() {
        }

        @Override // com.fyber.inneractive.sdk.web.d.c
        public String c() {
            return MRAIDPresenter.OPEN;
        }

        @Override // com.fyber.inneractive.sdk.web.d.c
        public void d() {
            d dVar = d.this;
            String str = this.a;
            k0 k0Var = this.b;
            L l = dVar.f2756g;
            if (l != null) {
                x.d dVar2 = l.a(str, k0Var, null).a;
            }
        }

        public String toString() {
            return "action: open url: " + this.a;
        }
    }

    public d(Context context, boolean z, boolean z2) {
        this.k = z;
        this.b = a(context);
        this.f2754e = z2;
    }

    public g a(Context context) {
        return new g(context);
    }

    @Override // com.fyber.inneractive.sdk.web.f
    public void a(int i) {
    }

    @Override // com.fyber.inneractive.sdk.util.z.e
    public void a(View view, float f2, Rect rect) {
        if (f2 == this.h && rect.equals(this.i)) {
            return;
        }
        this.h = f2;
        this.i.set(rect);
        g gVar = this.b;
        if (gVar != null) {
            gVar.a();
        }
    }

    public void a(ViewGroup viewGroup, ViewGroup.LayoutParams layoutParams) {
        g gVar = this.b;
        if (gVar != null) {
            if (layoutParams != null) {
                viewGroup.addView(gVar, layoutParams);
            } else {
                viewGroup.addView(gVar);
            }
            z.d.a.a(viewGroup.getContext(), this.b, this);
            this.b.setTapListener(this);
        }
    }

    @Override // com.fyber.inneractive.sdk.web.f
    public void a(WebView webView) {
    }

    public void a(String str, String str2, String str3, String str4, InterfaceC0201d interfaceC0201d) {
        this.f2755f = interfaceC0201d;
        try {
            h();
            com.fyber.inneractive.sdk.web.e eVar = new com.fyber.inneractive.sdk.web.e(this, str2, str3, str4, str);
            this.o = eVar;
            eVar.executeOnExecutor(com.fyber.inneractive.sdk.util.m.a, new Void[0]);
        } catch (Throwable th) {
            InneractiveInfrastructureError inneractiveInfrastructureError = new InneractiveInfrastructureError(InneractiveErrorCode.SDK_INTERNAL_ERROR, com.fyber.inneractive.sdk.flow.g.COULD_NOT_CONFIGURE_WEBVIEW, th);
            InterfaceC0201d interfaceC0201d2 = this.f2755f;
            if (interfaceC0201d2 != null) {
                interfaceC0201d2.a(this, inneractiveInfrastructureError);
            }
            b(true);
        }
    }

    public void a(boolean z) {
        IAlog.a("%sonWebViewVisibilityChanged called with: %s", IAlog.a(this), Boolean.valueOf(z));
        L l = this.f2756g;
        if (l != null) {
            l.a(z);
        }
    }

    @Override // com.fyber.inneractive.sdk.web.f
    public boolean a(WebView webView, String str) {
        IAlog.a("%shandleUrl called with: %s", IAlog.a(this), str);
        if (this.b == null) {
            IAlog.a("handleUrl: web view already destroyed. Cannot handle url", new Object[0]);
            return false;
        }
        if (n0.a(str)) {
            this.b.loadUrl("chrome://crash");
            return true;
        }
        k0 k0VarF = f();
        if (a(str, k0VarF)) {
            return true;
        }
        a(new e(str, k0VarF));
        return true;
    }

    public boolean a(c cVar) {
        if (this.j) {
            cVar.d();
            j();
            return true;
        }
        if (!this.k) {
            Runnable runnable = this.m;
            if (runnable != null) {
                com.fyber.inneractive.sdk.util.m.b.removeCallbacks(runnable);
            }
            this.l = null;
            cVar.d();
            return false;
        }
        Runnable runnable2 = this.m;
        if (runnable2 != null) {
            com.fyber.inneractive.sdk.util.m.b.removeCallbacks(runnable2);
        }
        this.l = null;
        this.l = cVar;
        if (this.m == null) {
            return false;
        }
        com.fyber.inneractive.sdk.util.m.b.postDelayed(this.m, IAConfigManager.M.u.b.a("click_timeout", 1000, 1000));
        return false;
    }

    public abstract boolean a(String str, k0 k0Var);

    public void b(boolean z) {
        IAlog.a("%s destroy is fatal: %b", IAlog.a(this), Boolean.valueOf(z));
        AsyncTask<Void, Void, String> asyncTask = this.o;
        if (asyncTask != null) {
            asyncTask.cancel(true);
        }
        g gVar = this.b;
        if (gVar != null) {
            z.d.a.a(gVar);
            com.fyber.inneractive.sdk.util.q.a(this.b);
            this.b.setWebChromeClient(null);
            if (d() == null) {
                this.b.destroy();
            } else {
                ((com.fyber.inneractive.sdk.measurement.tracker.c) d()).a(z);
            }
        }
        s sVar = this.f2753d;
        if (sVar != null) {
            sVar.f2764e = null;
        }
        Runnable runnable = this.n;
        if (runnable != null) {
            com.fyber.inneractive.sdk.util.m.b.removeCallbacks(runnable);
        }
        Runnable runnable2 = this.m;
        if (runnable2 != null) {
            com.fyber.inneractive.sdk.util.m.b.removeCallbacks(runnable2);
        }
        this.f2756g = null;
        if (!z) {
            this.f2755f = null;
        }
        this.b = null;
        this.c = null;
        this.f2753d = null;
        this.s = null;
        this.r = null;
    }

    public void c() {
        b(false);
    }

    public abstract a.InterfaceC0164a d();

    public g e() {
        return this.b;
    }

    public k0 f() {
        g gVar = this.b;
        return gVar != null ? gVar.getLastClickedLocation() : k0.a();
    }

    public void g() {
        InterfaceC0201d interfaceC0201d = this.f2755f;
        if (interfaceC0201d != null) {
            interfaceC0201d.a(this);
        }
    }

    public void h() {
        boolean z;
        int i;
        int i2;
        int iMax;
        com.fyber.inneractive.sdk.config.global.s sVar;
        com.fyber.inneractive.sdk.config.global.features.e eVar;
        WebSettings settings = this.b.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setLoadsImagesAutomatically(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        if (!IAConfigManager.M.r && com.fyber.inneractive.sdk.util.p.a() && Build.VERSION.SDK_INT >= 21) {
            settings.setMixedContentMode(2);
        }
        if (this.f2754e && Build.VERSION.SDK_INT >= 17) {
            settings.setMediaPlaybackRequiresUserGesture(false);
        }
        g gVar = this.b;
        gVar.setHorizontalScrollBarEnabled(false);
        gVar.setHorizontalScrollbarOverlay(false);
        gVar.setVerticalScrollBarEnabled(false);
        gVar.setVerticalScrollbarOverlay(false);
        gVar.getSettings().setSupportZoom(false);
        g gVar2 = this.b;
        gVar2.getClass();
        if (Build.VERSION.SDK_INT < 18) {
            try {
                gVar2.getSettings().setPluginState(WebSettings.PluginState.ON);
            } catch (Exception unused) {
                IAlog.a("Failed to modify WebView plugin state.", new Object[0]);
            }
        }
        this.b.setFocusable(true);
        this.b.setBackgroundColor(0);
        r rVar = new r();
        this.c = rVar;
        this.b.setWebChromeClient(rVar);
        com.fyber.inneractive.sdk.flow.q qVar = this.s;
        if (qVar == null || (sVar = qVar.c) == null || (eVar = (com.fyber.inneractive.sdk.config.global.features.e) sVar.a(com.fyber.inneractive.sdk.config.global.features.e.class)) == null) {
            z = false;
            i = 500;
            i2 = 500;
            iMax = 2;
        } else {
            boolean zA = eVar.a("agg_res", false);
            Integer numB = eVar.b("agg_res_ct");
            int iMax2 = Math.max(numB != null ? numB.intValue() : 500, 50);
            Integer numB2 = eVar.b("agg_res_rt");
            int iMax3 = Math.max(numB2 != null ? numB2.intValue() : 500, 50);
            Integer numB3 = eVar.b("agg_res_retries");
            i2 = iMax3;
            iMax = Math.max(numB3 != null ? numB3.intValue() : 2, 1);
            z = zA;
            i = iMax2;
        }
        s sVar2 = new s(this, z, i, i2, iMax);
        this.f2753d = sVar2;
        this.b.setWebViewClient(sVar2);
        try {
            if (Build.VERSION.SDK_INT >= 19) {
                WebView.setWebContentsDebuggingEnabled(true);
            }
        } catch (Exception unused2) {
            IAlog.a("Could not set web contents debugging flag", new Object[0]);
        }
        this.b.setListener(this);
    }

    public void i() {
        this.b.setTapListener(this);
    }

    public void j() {
        IAlog.a("IAWebViewController resetClick()", new Object[0]);
        Runnable runnable = this.n;
        if (runnable != null) {
            com.fyber.inneractive.sdk.util.m.b.removeCallbacks(runnable);
        }
        Runnable runnable2 = this.m;
        if (runnable2 != null) {
            com.fyber.inneractive.sdk.util.m.b.removeCallbacks(runnable2);
        }
        this.j = false;
    }

    public void setAdContent(com.fyber.inneractive.sdk.flow.q qVar) {
        this.s = qVar;
    }

    public void setAdRequest(InneractiveAdRequest inneractiveAdRequest) {
        this.r = inneractiveAdRequest;
    }

    public void setListener(L l) {
        this.f2756g = l;
    }
}
