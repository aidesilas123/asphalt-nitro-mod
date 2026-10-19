package com.json;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import com.json.o2;
import com.json.sdk.utils.Logger;
import com.json.y6;
import com.vungle.ads.internal.model.AdPayload;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class f6 implements y6 {
    private static final String a = "f6";
    private final String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WebView f6103d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private d6 f6104e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private y5 f6105f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Context f6106g;

    class a implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ JSONObject b;
        final /* synthetic */ String c;

        a(String str, JSONObject jSONObject, String str2) {
            this.a = str;
            this.b = jSONObject;
            this.c = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (f6.this.f6103d != null) {
                o6.a(gb.q, new j6().a(b4.z, "loadWithUrl | webView is not null").a());
            }
            try {
                f6.this.j(this.a);
                f6.this.f6103d.loadUrl(f6.this.f(this.b.getString("urlForWebView")));
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("adViewId", f6.this.b);
                f6.this.f6104e.a(this.c, jSONObject);
            } catch (Exception e2) {
                f6.this.b(this.a, e2.getMessage());
                o6.a(gb.q, new j6().a(b4.z, e2.getMessage()).a());
            }
        }
    }

    class b implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;

        b(String str, String str2) {
            this.a = str;
            this.b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (f6.this.f6103d != null) {
                    f6.this.f6103d.destroy();
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("adViewId", f6.this.b);
                if (f6.this.f6104e != null) {
                    f6.this.f6104e.a(this.a, jSONObject);
                    f6.this.f6104e.b();
                }
                f6.this.f6104e = null;
                f6.this.f6106g = null;
            } catch (Exception e2) {
                Log.e(f6.a, "performCleanup | could not destroy ISNAdView webView ID: " + f6.this.b);
                o6.a(gb.r, new j6().a(b4.z, e2.getMessage()).a());
                f6.this.b(this.b, e2.getMessage());
            }
        }
    }

    class c implements y6.a {
        final /* synthetic */ String a;

        c(String str) {
            this.a = str;
        }

        @Override // com.ironsource.y6.a
        public void a(String str) {
            Logger.i(f6.a, "ISNAdViewWebPresenter | WebViewClient | reportOnError: " + str);
            f6.this.b(this.a, str);
        }

        @Override // com.ironsource.y6.a
        public void b(String str) {
            Logger.i(f6.a, "ISNAdViewWebPresenter | WebViewClient | onRenderProcessGone: " + str);
            try {
                ((ViewGroup) f6.this.f6103d.getParent()).removeView(f6.this.f6103d);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            f6.this.o();
        }
    }

    public f6(b6 b6Var, Context context, String str, y5 y5Var) {
        this.f6106g = context;
        d6 d6Var = new d6();
        this.f6104e = d6Var;
        d6Var.g(str);
        this.b = str;
        this.f6104e.a(b6Var);
        this.f6105f = y5Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String f(String str) {
        if (!l(str)) {
            return str;
        }
        return AdPayload.FILE_SCHEME + this.c + m(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"AddJavascriptInterface"})
    public void j(String str) {
        Logger.i(a, "ISNAdViewWebPresenter | createWebView");
        WebView webView = new WebView(this.f6106g);
        this.f6103d = webView;
        webView.addJavascriptInterface(new c6(this), z5.f6748e);
        this.f6103d.setWebViewClient(new e6(new c(str)));
        od.a(this.f6103d);
        this.f6104e.a(this.f6103d);
    }

    private boolean l(String str) {
        return str.startsWith(".");
    }

    private String m(String str) {
        String strSubstring = str.substring(str.indexOf("/") + 1);
        return strSubstring.substring(strSubstring.indexOf("/"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void o() {
        a("", "");
    }

    @Override // com.json.y6
    public synchronized void a(String str, String str2) {
        if (this.f6106g == null) {
            return;
        }
        Logger.i(a, "performCleanup");
        q5.a.c(new b(str, str2));
    }

    @Override // com.json.y6
    public void a(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            b(str3, o2.c.F);
            return;
        }
        Logger.i(a, "trying to perform WebView Action: " + str);
        try {
            if (str.equals(o2.h.t0)) {
                this.f6103d.onPause();
            } else {
                if (!str.equals(o2.h.u0)) {
                    b(str3, o2.c.E);
                    return;
                }
                this.f6103d.onResume();
            }
            this.f6104e.f(str2);
        } catch (Exception unused) {
            b(str3, o2.c.G);
        }
    }

    @Override // com.json.y6
    public void a(JSONObject jSONObject, String str, String str2) {
        try {
            this.f6104e.e(str);
        } catch (Exception e2) {
            Logger.i(a, "sendHandleGetViewVisibility fail with reason: " + e2.getMessage());
        }
    }

    public String b() {
        return this.b;
    }

    public void b(String str, String str2) {
        d6 d6Var = this.f6104e;
        if (d6Var != null) {
            d6Var.a(str, str2);
        }
    }

    @Override // com.json.y6
    public void b(JSONObject jSONObject, String str, String str2) {
        q5.a.c(new a(str2, jSONObject, str));
    }

    public d6 c() {
        return this.f6104e;
    }

    @Override // com.json.y6
    public void c(JSONObject jSONObject, String str, String str2) throws Exception {
        try {
            this.f6104e.a(jSONObject.getString("params"), str, str2);
        } catch (Exception e2) {
            Logger.i(a, "sendMessageToAd fail message: " + e2.getMessage());
            throw e2;
        }
    }

    public y5 d() {
        return this.f6105f;
    }

    public void e(String str) {
        this.c = str;
    }

    @Override // com.json.y6
    public WebView getPresentingView() {
        return this.f6103d;
    }

    @JavascriptInterface
    public void handleMessageFromAd(String str) {
        this.f6104e.c(str);
    }
}
