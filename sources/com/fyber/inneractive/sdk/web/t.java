package com.fyber.inneractive.sdk.web;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.digitalturbine.ignite.cl.aidl.IIgniteServiceAPI;
import com.fyber.inneractive.sdk.activities.InternalStoreWebpageActivity;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.flow.p;
import com.fyber.inneractive.sdk.ignite.c;
import com.fyber.inneractive.sdk.ignite.g;
import com.fyber.inneractive.sdk.util.IAlog;
import com.google.android.gms.drive.DriveFile;
import java.lang.ref.WeakReference;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public class t implements com.fyber.inneractive.sdk.ignite.n {
    public boolean B;
    public final WebView a;
    public final com.fyber.inneractive.sdk.ignite.c b;
    public final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public com.fyber.inneractive.sdk.ignite.k f2765d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f2766e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f2767f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f2768g;
    public final com.fyber.inneractive.sdk.ignite.j h;
    public g i;
    public String k;
    public com.fyber.inneractive.sdk.config.global.s m;
    public long o;
    public Runnable p;
    public WeakReference<InternalStoreWebpageActivity> q;
    public String j = "invalid_task_id";
    public boolean l = false;
    public long n = 10;
    public boolean r = false;
    public boolean s = false;
    public final AtomicInteger t = new AtomicInteger(0);
    public final AtomicBoolean u = new AtomicBoolean(false);
    public final AtomicBoolean v = new AtomicBoolean(false);
    public boolean w = false;
    public boolean x = false;
    public boolean y = false;
    public boolean z = false;
    public boolean A = false;
    public boolean C = false;
    public boolean D = false;
    public final WebViewClient E = new a();

    public class a extends WebViewClient {

        /* JADX INFO: renamed from: com.fyber.inneractive.sdk.web.t$a$a, reason: collision with other inner class name */
        public class RunnableC0203a implements Runnable {
            public RunnableC0203a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                t tVar = t.this;
                if (tVar.y) {
                    return;
                }
                tVar.g(tVar.k);
            }
        }

        public a() {
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            Activity activity = (Activity) com.fyber.inneractive.sdk.util.q.a(t.this.q);
            if (activity != null) {
                activity.finish();
            }
            com.fyber.inneractive.sdk.util.m.b.postDelayed(new RunnableC0203a(), 1000L);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (str.endsWith("success")) {
                t tVar = t.this;
                Runnable runnable = tVar.p;
                if (runnable != null) {
                    com.fyber.inneractive.sdk.util.m.b.removeCallbacks(runnable);
                    tVar.p = null;
                }
                t tVar2 = t.this;
                tVar2.getClass();
                IAlog.a("%sInternalStoreWebpageController: onWebviewLoaded - load took %d msec", IAlog.a(tVar2), Long.valueOf(System.currentTimeMillis() - t.this.o));
                t.this.l = true;
                return true;
            }
            if (!str.startsWith("exit")) {
                return false;
            }
            Activity activity = (Activity) com.fyber.inneractive.sdk.util.q.a(t.this.q);
            if (activity == null) {
                return true;
            }
            try {
                Uri uri = Uri.parse(str);
                String queryParameter = uri.getQueryParameter(TypedValues.AttributesType.S_TARGET);
                boolean zEquals = TextUtils.equals("mail", uri.getAuthority());
                Intent intent = new Intent(zEquals ? "android.intent.action.SENDTO" : "android.intent.action.VIEW", Uri.parse(queryParameter));
                if (zEquals) {
                    intent = Intent.createChooser(intent, "Choose an application");
                }
                com.fyber.inneractive.sdk.util.x.a(activity, intent);
            } catch (Throwable th) {
                com.fyber.inneractive.sdk.network.t.a(th, null, null);
            }
            return true;
        }
    }

    public class b implements Runnable {
        public final /* synthetic */ String a;

        public b(String str) {
            this.a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            IAlog.a("injecting JS: %s", this.a);
            try {
                if (this.a != null) {
                    t.this.a.loadUrl("javascript:" + this.a);
                }
            } catch (Exception unused) {
                IAlog.a("Failed to inject JS", new Object[0]);
            }
        }
    }

    public class c implements com.fyber.inneractive.sdk.ignite.h {
        public final /* synthetic */ String a;
        public final /* synthetic */ String b;

        public c(String str, String str2) {
            this.a = str;
            this.b = str2;
        }

        @Override // com.fyber.inneractive.sdk.ignite.h
        public void a() {
            t.this.b();
            t tVar = t.this;
            ((p.a) tVar.h).a(com.fyber.inneractive.sdk.network.q.IGNITE_FLOW_FAILED_TO_INSTALL_APP, this.a, this.b, tVar.f2765d);
        }

        @Override // com.fyber.inneractive.sdk.ignite.h
        public void b() {
            t tVar = t.this;
            tVar.b.a(tVar.c, new c.d(tVar.f2767f, tVar.f2765d, com.fyber.inneractive.sdk.flow.p.this));
            t.this.f("onShowInstallStarted();");
        }
    }

    public class d implements com.fyber.inneractive.sdk.ignite.h {
        public final /* synthetic */ String a;

        public d(String str) {
            this.a = str;
        }

        @Override // com.fyber.inneractive.sdk.ignite.h
        public void a() {
        }

        @Override // com.fyber.inneractive.sdk.ignite.h
        public void b() {
            t.this.e(this.a);
        }
    }

    public class e implements g.b {
        public e() {
        }

        public void a(boolean z) {
            if (t.this.u.compareAndSet(false, true)) {
                t.this.f("onCancelResult(" + z + ");");
                t.this.v.set(false);
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (t.this.u.compareAndSet(false, true)) {
                t.this.f("onCancelResult(true);");
                t.this.v.set(false);
            }
        }
    }

    public interface g {
    }

    public class h {
        public h() {
        }

        @JavascriptInterface
        public void onBackButtonPressed() {
            WeakReference<InternalStoreWebpageActivity> weakReference = t.this.q;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            t.this.q.get().finish();
        }

        @JavascriptInterface
        public void onCancelButtonPressed() {
            t tVar = t.this;
            tVar.f2765d = tVar.B ? com.fyber.inneractive.sdk.ignite.k.TRUE_SINGLE_TAP : com.fyber.inneractive.sdk.ignite.k.SINGLE_TAP;
            tVar.e(tVar.j);
            t tVar2 = t.this;
            if (tVar2.h == null || tVar2.r || tVar2.f2765d == null) {
                return;
            }
            tVar2.r = true;
            t tVar3 = t.this;
            ((p.a) tVar3.h).a(com.fyber.inneractive.sdk.network.r.IGNITE_FLOW_CANCEL_INSTALL_CLICKED, tVar3.f2765d);
        }

        @JavascriptInterface
        public void onInstallButtonPressed() {
            t tVar = t.this;
            com.fyber.inneractive.sdk.ignite.k kVar = tVar.B ? com.fyber.inneractive.sdk.ignite.k.TRUE_SINGLE_TAP : com.fyber.inneractive.sdk.ignite.k.SINGLE_TAP;
            tVar.f2765d = kVar;
            tVar.b.a(tVar.c, new c.d(tVar.f2767f, kVar, com.fyber.inneractive.sdk.flow.p.this));
            t tVar2 = t.this;
            if (tVar2.h == null || tVar2.s || tVar2.f2765d == null) {
                return;
            }
            tVar2.s = true;
            t tVar3 = t.this;
            ((p.a) tVar3.h).a(com.fyber.inneractive.sdk.network.r.IGNITE_FLOW_INSTALL_CLICKED, tVar3.f2765d);
        }

        @JavascriptInterface
        public void onNavigatedInsideStorePage() {
            t.this.w = true;
        }

        @JavascriptInterface
        public void onNavigatedToMainPage() {
            t.this.w = false;
        }

        @JavascriptInterface
        public void onOpenButtonPressed() {
            Intent launchIntentForPackage;
            if (TextUtils.isEmpty(t.this.c)) {
                t tVar = t.this;
                tVar.getClass();
                IAlog.e("%smPackageName is null", IAlog.a(tVar));
                return;
            }
            if (TextUtils.isEmpty(t.this.f2768g)) {
                launchIntentForPackage = com.fyber.inneractive.sdk.util.l.a.getPackageManager().getLaunchIntentForPackage(t.this.c);
            } else {
                launchIntentForPackage = new Intent("android.intent.action.MAIN");
                t tVar2 = t.this;
                launchIntentForPackage.setClassName(tVar2.c, tVar2.f2768g);
            }
            if (launchIntentForPackage == null) {
                t tVar3 = t.this;
                tVar3.getClass();
                IAlog.e("%sPackage %s not found", IAlog.a(tVar3), t.this.c);
                return;
            }
            launchIntentForPackage.setFlags(DriveFile.MODE_READ_ONLY);
            try {
                com.fyber.inneractive.sdk.util.l.a.startActivity(launchIntentForPackage);
            } catch (Exception e2) {
                com.fyber.inneractive.sdk.ignite.j jVar = t.this.h;
                if (jVar != null) {
                    String simpleName = e2.getClass().getSimpleName();
                    String message = e2.getMessage();
                    com.fyber.inneractive.sdk.flow.p pVar = com.fyber.inneractive.sdk.flow.p.this;
                    com.fyber.inneractive.sdk.network.t.a(simpleName, message, pVar.a, pVar.b);
                }
            }
        }

        @JavascriptInterface
        public void onTransitionEnded() {
            t.this.x = false;
        }

        @JavascriptInterface
        public void onTransitionStarting() {
            t.this.x = true;
        }
    }

    public t(v vVar) {
        this.c = vVar.a;
        this.f2765d = vVar.b;
        this.f2766e = vVar.c;
        this.m = vVar.f2769d;
        this.f2767f = vVar.f2770e;
        this.f2768g = vVar.f2771f;
        this.h = vVar.f2772g;
        com.fyber.inneractive.sdk.ignite.c cVarD = IAConfigManager.d();
        this.b = cVarD;
        cVarD.a(this);
        this.a = new WebView(com.fyber.inneractive.sdk.util.l.a());
    }

    public void a() {
        this.y = true;
        this.D = false;
        this.b.i.remove(this);
        this.i = null;
        IAlog.a("destroy internalStoreWebpageController", new Object[0]);
    }

    @Override // com.fyber.inneractive.sdk.ignite.n
    public void a(String str) {
        this.z = true;
        if (this.j.equals(str)) {
            this.b.b();
            f("onInstallStart();");
        }
    }

    @Override // com.fyber.inneractive.sdk.ignite.n
    public void a(String str, int i, double d2) {
        if (this.j.equals(str)) {
            if (i == 0) {
                f(String.format("onDownloadProgress(%f);", Double.valueOf(d2)));
            } else {
                if (i != 1) {
                    return;
                }
                f("onInstallationProgress();");
            }
        }
    }

    public void a(String str, com.fyber.inneractive.sdk.ignite.i iVar) {
        com.fyber.inneractive.sdk.ignite.j jVar;
        com.fyber.inneractive.sdk.ignite.c cVar = this.b;
        if (cVar.j || (jVar = this.h) == null) {
            return;
        }
        cVar.j = true;
        ((p.a) jVar).a(com.fyber.inneractive.sdk.network.q.IGNITE_FLOW_FAILED_TO_START, null, iVar.e(), null);
    }

    @Override // com.fyber.inneractive.sdk.ignite.n
    public void a(String str, String str2) {
        if (str == null || str2 == null || !str2.equals(this.c)) {
            return;
        }
        this.j = str;
    }

    @Override // com.fyber.inneractive.sdk.ignite.n
    public void a(String str, String str2, String str3) {
        if (this.v.get() && str2 != null) {
            if (str2.equals(com.fyber.inneractive.sdk.ignite.i.NOT_CONNECTED.e()) || str2.equals(com.fyber.inneractive.sdk.ignite.i.SESSION_EXPIRED.e())) {
                if (this.t.getAndIncrement() < 2) {
                    this.b.a(new d(str));
                } else {
                    if (this.b.e()) {
                        return;
                    }
                    a((String) null, com.fyber.inneractive.sdk.ignite.i.FAILED_TO_BIND_SERVICE);
                }
            }
        }
    }

    public final void b() {
        this.b.b();
        f("onInstallationFailed();");
    }

    @Override // com.fyber.inneractive.sdk.ignite.n
    public void b(String str) {
    }

    @Override // com.fyber.inneractive.sdk.ignite.n
    public void b(String str, String str2, String str3) {
        com.fyber.inneractive.sdk.ignite.k kVar;
        if (this.D) {
            boolean z = false;
            this.z = false;
            if (this.j.equals(str)) {
                this.b.b();
                if (!this.v.get() && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str2) && str2.equals("App already installed")) {
                    f("onInstallationSuccess();");
                    this.A = true;
                    return;
                }
            }
            if ((str2 == null || !(str2.equals(com.fyber.inneractive.sdk.ignite.i.NOT_CONNECTED.e()) || str2.equals(com.fyber.inneractive.sdk.ignite.i.SESSION_EXPIRED.e()))) && this.b.d()) {
                if (!TextUtils.equals(str2, com.fyber.inneractive.sdk.ignite.i.DOWNLOAD_IS_CANCELLED.e())) {
                    b();
                }
            } else {
                if (this.t.getAndIncrement() < 2) {
                    this.b.a(new c(str2, str3));
                    if (z || (kVar = this.f2765d) == null) {
                    }
                    ((p.a) this.h).a(com.fyber.inneractive.sdk.network.q.IGNITE_FLOW_FAILED_TO_INSTALL_APP, str2, str3, kVar);
                    return;
                }
                b();
                if (!this.b.e()) {
                    a((String) null, com.fyber.inneractive.sdk.ignite.i.FAILED_TO_BIND_SERVICE);
                }
            }
            z = true;
            if (z) {
            }
        }
    }

    @Override // com.fyber.inneractive.sdk.ignite.n
    public void c(String str) {
        this.z = false;
        this.A = true;
        if (this.j.equals(str)) {
            this.b.b();
            f("onInstallationSuccess();");
        }
    }

    @Override // com.fyber.inneractive.sdk.ignite.n
    public void d(String str) {
    }

    public void e(String str) {
        com.fyber.inneractive.sdk.ignite.k kVar;
        if (str != null) {
            this.v.set(true);
            this.u.set(false);
            com.fyber.inneractive.sdk.ignite.c cVar = this.b;
            e eVar = new e();
            if (!cVar.d() || cVar.f()) {
                for (com.fyber.inneractive.sdk.ignite.n nVar : cVar.i) {
                    if (nVar != null) {
                        nVar.a((String) null, (cVar.f() ? com.fyber.inneractive.sdk.ignite.i.SESSION_EXPIRED : com.fyber.inneractive.sdk.ignite.i.NOT_CONNECTED).e(), (String) null);
                    }
                }
            } else {
                try {
                    IIgniteServiceAPI iIgniteServiceAPI = cVar.b;
                    Bundle bundle = cVar.f2045g;
                    cVar.h.getClass();
                    iIgniteServiceAPI.cancel(str, bundle, new com.fyber.inneractive.sdk.ignite.b(eVar));
                } catch (Exception unused) {
                    IAlog.a("Failed to cancel task", new Object[0]);
                    eVar.a(false);
                }
            }
            com.fyber.inneractive.sdk.util.m.b.postDelayed(new f(), 2500L);
            com.fyber.inneractive.sdk.ignite.j jVar = this.h;
            if (jVar == null || this.r || (kVar = this.f2765d) == null) {
                return;
            }
            this.r = true;
            ((p.a) jVar).a(com.fyber.inneractive.sdk.network.r.IGNITE_FLOW_CANCEL_INSTALL_CLICKED, kVar);
        }
    }

    public void f(String str) {
        com.fyber.inneractive.sdk.util.m.b.post(new b(str));
    }

    public void g(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.k = str;
        WebSettings settings = this.a.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setUseWideViewPort(true);
        this.a.setInitialScale(1);
        this.a.setBackgroundColor(-1);
        this.a.setWebViewClient(this.E);
        WebView webView = this.a;
        webView.setLongClickable(false);
        webView.setOnLongClickListener(new com.fyber.inneractive.sdk.util.a0());
        this.a.addJavascriptInterface(new h(), "nativeInterface");
        this.a.loadUrl(str);
        com.fyber.inneractive.sdk.config.global.s sVar = this.m;
        if (sVar != null) {
            TimeUnit timeUnit = TimeUnit.SECONDS;
            Integer numB = ((com.fyber.inneractive.sdk.config.global.features.p) sVar.a(com.fyber.inneractive.sdk.config.global.features.p.class)).b("load_timeout");
            int i = 10;
            int iIntValue = numB != null ? numB.intValue() : 10;
            if (iIntValue < 30 && iIntValue > 2) {
                i = iIntValue;
            }
            long millis = timeUnit.toMillis(i);
            this.n = millis;
            IAlog.a("InternalStoreWebpageController: Starting load timeout with %d", Long.valueOf(millis));
        }
        this.o = System.currentTimeMillis();
        u uVar = new u(this);
        this.p = uVar;
        com.fyber.inneractive.sdk.util.m.b.postDelayed(uVar, this.n);
    }
}
