package com.mbridge.msdk.click;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.json.b4;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.same.report.p;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import java.util.HashMap;
import java.util.Objects;

/* JADX INFO: compiled from: WebViewSpider.java */
/* JADX INFO: loaded from: classes4.dex */
public class l {
    public static long a = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f6819d = "l";
    boolean b;
    boolean c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f6820e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f6821f;
    private com.mbridge.msdk.c.e h;
    private a i;
    private String j;
    private String k;
    private WebView l;
    private boolean m;
    private String n;
    private int o;
    private boolean q;
    private boolean p = false;
    private final Runnable r = new Runnable() { // from class: com.mbridge.msdk.click.l.4
        @Override // java.lang.Runnable
        public final void run() {
            l.this.p = true;
            l.this.o = 1;
            l.m(l.this);
        }
    };
    private final Runnable s = new Runnable() { // from class: com.mbridge.msdk.click.l.5
        @Override // java.lang.Runnable
        public final void run() {
            l.this.p = true;
            l.this.o = 2;
            l.m(l.this);
        }
    };

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Handler f6822g = new Handler(Looper.getMainLooper());

    /* JADX INFO: compiled from: WebViewSpider.java */
    interface a {
        void a(int i, String str, String str2, String str3);

        void a(String str, boolean z, String str2);

        boolean a(String str);

        boolean b(String str);

        boolean c(String str);
    }

    public l() {
        this.f6820e = DefaultLoadControl.DEFAULT_MIN_BUFFER_MS;
        this.f6821f = 3000;
        com.mbridge.msdk.c.e eVarB = com.mbridge.msdk.c.f.a().b(com.mbridge.msdk.foundation.controller.b.d().h());
        this.h = eVarB;
        if (eVarB == null) {
            this.h = com.mbridge.msdk.c.f.a().b();
        }
        this.m = this.h.V();
        this.f6820e = (int) this.h.aa();
        this.f6821f = (int) this.h.aa();
    }

    private void a(final Context context, final String str, final String str2) {
        WebView webView = new WebView(context);
        this.l = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        this.l.getSettings().setCacheMode(2);
        this.l.getSettings().setLoadsImagesAutomatically(false);
        this.l.setWebViewClient(new WebViewClient() { // from class: com.mbridge.msdk.click.l.2
            @Override // android.webkit.WebViewClient
            public final void onPageFinished(WebView webView2, String str3) {
                super.onPageFinished(webView2, str3);
                try {
                    webView2.loadUrl("javascript:window.navigator.vibrate([]);");
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }

            @Override // android.webkit.WebViewClient
            public final void onPageStarted(WebView webView2, String str3, Bitmap bitmap) {
                try {
                    webView2.loadUrl("javascript:window.navigator.vibrate([]);");
                    if (l.this.q) {
                        l.this.o = 0;
                        l.c(l.this);
                        return;
                    }
                    l.this.c = false;
                    if (webView2.getTag() == null) {
                        webView2.setTag("has_first_started");
                    } else {
                        l.this.b = true;
                    }
                    synchronized (l.f6819d) {
                        l.this.j = str3;
                        if (l.this.i == null || !l.this.i.a(str3)) {
                            l.e(l.this);
                        } else {
                            l.this.q = true;
                            l.c(l.this);
                        }
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }

            @Override // android.webkit.WebViewClient
            public final void onReceivedError(WebView webView2, int i, String str3, String str4) {
                synchronized (l.f6819d) {
                    l.this.q = true;
                    l.this.b();
                    l.c(l.this);
                }
                if (l.this.i != null) {
                    l.this.i.a(i, webView2.getUrl(), str3, l.this.n);
                }
            }

            @Override // android.webkit.WebViewClient
            public final void onReceivedSslError(WebView webView2, SslErrorHandler sslErrorHandler, SslError sslError) {
                try {
                    if (MBridgeConstans.IS_SP_CBT_CF && sslErrorHandler != null) {
                        sslErrorHandler.cancel();
                    }
                    if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
                        return;
                    }
                    new p(context).a(str, str2, webView2.getUrl());
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }

            @Override // android.webkit.WebViewClient
            public final boolean shouldOverrideUrlLoading(WebView webView2, String str3) {
                synchronized (l.f6819d) {
                    l lVar = l.this;
                    lVar.c = true;
                    lVar.d();
                    if (l.this.q) {
                        l.this.c();
                        l.c(l.this);
                        return true;
                    }
                    l.this.j = str3;
                    if (l.this.i != null && l.this.i.b(str3)) {
                        l.this.q = true;
                        l.this.c();
                        l.c(l.this);
                        return true;
                    }
                    if (l.this.m) {
                        HashMap map = new HashMap();
                        if (l.this.l.getUrl() != null) {
                            map.put("Referer", l.this.l.getUrl());
                        }
                        l.this.l.loadUrl(str3, map);
                    } else {
                        l.this.l.loadUrl(str3);
                    }
                    return true;
                }
            }
        });
        this.l.setWebChromeClient(new WebChromeClient() { // from class: com.mbridge.msdk.click.l.3
            @Override // android.webkit.WebChromeClient
            public final boolean onJsAlert(WebView webView2, String str3, String str4, JsResult jsResult) {
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public final boolean onJsConfirm(WebView webView2, String str3, String str4, JsResult jsResult) {
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public final boolean onJsPrompt(WebView webView2, String str3, String str4, String str5, JsPromptResult jsPromptResult) {
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public final void onProgressChanged(WebView webView2, int i) {
                if (i == 100) {
                    try {
                        webView2.loadUrl("javascript:window.navigator.vibrate([]);");
                        if (!l.this.q) {
                            l lVar = l.this;
                            if (!lVar.c) {
                                l.l(lVar);
                            }
                        }
                        if (l.this.i != null) {
                            l.this.i.c(webView2.getUrl());
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            }
        });
    }

    private void a(final String str, final String str2, final Context context) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            a(str, str2, context, this.j);
        } else {
            this.f6822g.post(new Runnable() { // from class: com.mbridge.msdk.click.l.1
                @Override // java.lang.Runnable
                public final void run() {
                    l lVar = l.this;
                    lVar.a(str, str2, context, lVar.j);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, Context context, String str3) {
        try {
            a(context, str, str2);
            if (!TextUtils.isEmpty(this.k)) {
                this.l.getSettings().setDefaultTextEncodingName(b4.L);
                this.f6821f = 2000;
                this.f6820e = 2000;
                aa.b(f6819d, this.k);
                this.l.loadDataWithBaseURL(str3, this.k, "*/*", b4.L, str3);
                return;
            }
            if (!this.m) {
                this.l.loadUrl(str3);
                return;
            }
            HashMap map = new HashMap();
            if (this.l.getUrl() != null) {
                map.put("Referer", this.l.getUrl());
            }
            this.l.loadUrl(str3, map);
        } catch (Throwable th) {
            try {
                a aVar = this.i;
                if (aVar != null) {
                    aVar.a(0, this.j, th.getMessage(), this.n);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        d();
        c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        this.f6822g.removeCallbacks(this.s);
    }

    static /* synthetic */ void c(l lVar) {
        a aVar;
        synchronized (f6819d) {
            try {
                lVar.b();
                aVar = lVar.i;
            } catch (Exception e2) {
                aa.d(f6819d, e2.getMessage());
            } catch (Throwable th) {
                aa.d(f6819d, th.getMessage());
            }
            if (aVar != null) {
                aVar.a(lVar.j, lVar.p, lVar.n);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        this.f6822g.removeCallbacks(this.r);
    }

    static /* synthetic */ void e(l lVar) {
        lVar.c();
        lVar.f6822g.postDelayed(lVar.s, lVar.f6820e);
    }

    static /* synthetic */ void l(l lVar) {
        lVar.d();
        lVar.f6822g.postDelayed(lVar.r, lVar.f6821f);
    }

    static /* synthetic */ void m(l lVar) {
        a aVar;
        synchronized (f6819d) {
            try {
                try {
                    lVar.b();
                    lVar.l.destroy();
                    aVar = lVar.i;
                } finally {
                }
            } catch (Exception e2) {
                aa.d(f6819d, e2.getMessage());
            }
            if (aVar != null) {
                aVar.a(lVar.j, lVar.p, lVar.n);
            }
        }
    }

    public final void a(String str, String str2, Context context, String str3, a aVar) {
        Objects.requireNonNull(aVar, "OverrideUrlLoadingListener can not be null");
        this.j = str3;
        this.i = aVar;
        a(str, str2, context);
    }

    public final void a(String str, String str2, Context context, String str3, String str4, a aVar) {
        Objects.requireNonNull(aVar, "OverrideUrlLoadingListener can not be null");
        this.k = str4;
        this.j = str3;
        this.i = aVar;
        a(str, str2, context);
    }
}
