package com.bytedance.sdk.component.adexpress.d;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.MutableContextWrapper;
import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.bytedance.component.sdk.annotation.UiThread;
import com.bytedance.sdk.component.a.z;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.component.widget.SSWebView;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: WebViewPool.java */
/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final byte[] f693d = new byte[0];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f694e = 10;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static volatile e f695g;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final AtomicBoolean f696f = new AtomicBoolean(false);
    private List<SSWebView> a = new ArrayList();
    private Map<Integer, c> b = new HashMap();
    private Map<Integer, d> c = new HashMap();

    private e() {
        com.bytedance.sdk.component.adexpress.a.a.c cVarC = com.bytedance.sdk.component.adexpress.a.a.a.a().c();
        if (cVarC != null) {
            f694e = cVarC.j();
        }
    }

    public static e a() {
        if (f695g == null) {
            synchronized (e.class) {
                if (f695g == null) {
                    f695g = new e();
                }
            }
        }
        return f695g;
    }

    private void e(SSWebView sSWebView) {
        sSWebView.removeAllViews();
        sSWebView.c();
        sSWebView.setWebChromeClient(null);
        sSWebView.setWebViewClient(null);
        sSWebView.setDownloadListener(null);
        sSWebView.setJavaScriptEnabled(true);
        sSWebView.setAppCacheEnabled(false);
        sSWebView.setSupportZoom(false);
        sSWebView.setUseWideViewPort(true);
        sSWebView.setJavaScriptCanOpenWindowsAutomatically(true);
        sSWebView.setDomStorageEnabled(true);
        sSWebView.setBuiltInZoomControls(false);
        sSWebView.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NORMAL);
        sSWebView.setLoadWithOverviewMode(false);
        sSWebView.setDefaultTextEncodingName(C.UTF8_NAME);
        sSWebView.setDefaultFontSize(16);
    }

    public SSWebView a(Context context, String str) {
        if (c() <= 0) {
            return null;
        }
        if (com.bytedance.sdk.component.adexpress.c.c.a(str) && c() <= 1) {
            l.a("WebViewPool", "get WebView from pool; but ad type is does not meet the requirement ", Integer.valueOf(c()));
            return null;
        }
        SSWebView sSWebViewRemove = this.a.remove(0);
        if (sSWebViewRemove == null) {
            return null;
        }
        try {
            ((MutableContextWrapper) sSWebViewRemove.getContext()).setBaseContext(context);
            sSWebViewRemove.setRecycler(false);
            l.a("WebViewPool", "get WebView from pool; current available count: ", Integer.valueOf(c()));
            return sSWebViewRemove;
        } catch (Exception unused) {
            l.a("WebViewPool", "get WebView from pool exception; current available count: ", Integer.valueOf(c()));
            return null;
        }
    }

    public void a(int i) {
        synchronized (f693d) {
            f694e = i;
        }
    }

    @SuppressLint({"JavascriptInterface"})
    public void a(WebView webView, z zVar, String str) {
        if (webView == null || zVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        d dVar = this.c.get(Integer.valueOf(webView.hashCode()));
        if (dVar != null) {
            dVar.a(zVar);
        } else {
            dVar = new d(zVar);
            this.c.put(Integer.valueOf(webView.hashCode()), dVar);
        }
        webView.addJavascriptInterface(dVar, str);
    }

    public void a(WebView webView, String str) {
        if (webView == null || TextUtils.isEmpty(str)) {
            return;
        }
        d dVar = this.c.get(Integer.valueOf(webView.hashCode()));
        if (dVar != null) {
            dVar.a(null);
        }
        webView.removeJavascriptInterface(str);
    }

    @UiThread
    public void a(SSWebView sSWebView) {
        if (sSWebView == null) {
            return;
        }
        e(sSWebView);
        sSWebView.b_("SDK_INJECT_GLOBAL");
        d(sSWebView);
        b(sSWebView);
    }

    @SuppressLint({"JavascriptInterface"})
    public void a(SSWebView sSWebView, b bVar) {
        if (sSWebView == null || bVar == null) {
            return;
        }
        c cVar = this.b.get(Integer.valueOf(sSWebView.hashCode()));
        if (cVar != null) {
            cVar.a(bVar);
        } else {
            cVar = new c(bVar);
            this.b.put(Integer.valueOf(sSWebView.hashCode()), cVar);
        }
        sSWebView.a(cVar, "SDK_INJECT_GLOBAL");
    }

    public void b() {
        for (SSWebView sSWebView : this.a) {
            if (sSWebView != null) {
                try {
                    Context context = sSWebView.getContext();
                    if (context instanceof MutableContextWrapper) {
                        ((MutableContextWrapper) context).setBaseContext(context.getApplicationContext());
                    }
                    sSWebView.l();
                } catch (Exception e2) {
                    l.a("WebViewPool", "WebView clear failed ", e2.getMessage());
                }
            }
        }
        this.a.clear();
    }

    public void b(SSWebView sSWebView) {
        if (sSWebView == null) {
            return;
        }
        if (this.a.size() >= f694e) {
            l.b("WebViewPool", "WebView pool is full，destroy webview");
            try {
                Context context = sSWebView.getContext();
                if (context instanceof MutableContextWrapper) {
                    ((MutableContextWrapper) context).setBaseContext(context.getApplicationContext());
                }
                sSWebView.l();
                return;
            } catch (Exception e2) {
                l.a("WebViewPool", "WebView pool is full，destroy webview ", e2.getMessage());
                return;
            }
        }
        if (this.a.contains(sSWebView)) {
            return;
        }
        try {
            ((MutableContextWrapper) sSWebView.getContext()).setBaseContext(com.bytedance.sdk.component.adexpress.d.a());
            sSWebView.setRecycler(true);
            this.a.add(sSWebView);
            l.a("WebViewPool", "recycle WebView，current available count: ", Integer.valueOf(c()));
        } catch (Exception e3) {
            l.a("WebViewPool", "recycle WebView fail，current available count: ", Integer.valueOf(c()), "exception is ", e3.getMessage());
        }
    }

    public int c() {
        return this.a.size();
    }

    public boolean c(SSWebView sSWebView) {
        if (sSWebView == null) {
            return false;
        }
        l.b("WebViewPool", "WebView render fail and abandon");
        try {
            Context context = sSWebView.getContext();
            if (context instanceof MutableContextWrapper) {
                ((MutableContextWrapper) context).setBaseContext(context.getApplicationContext());
            }
            sSWebView.l();
        } catch (Exception e2) {
            l.a("WebViewPool", "WebView abandon failed ", e2.getMessage());
        }
        return true;
    }

    public int d() {
        return this.a.size();
    }

    public void d(SSWebView sSWebView) {
        if (sSWebView == null) {
            return;
        }
        c cVar = this.b.get(Integer.valueOf(sSWebView.hashCode()));
        if (cVar != null) {
            cVar.a(null);
        }
        sSWebView.b_("SDK_INJECT_GLOBAL");
    }
}
