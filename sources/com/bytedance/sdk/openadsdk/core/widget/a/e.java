package com.bytedance.sdk.openadsdk.core.widget.a;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.text.TextUtils;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.annotation.RequiresApi;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.b.j;
import com.bytedance.sdk.openadsdk.core.model.i;
import com.bytedance.sdk.openadsdk.core.model.o;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.x;
import com.google.android.gms.drive.DriveFile;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: compiled from: TTWebViewClient.java */
/* JADX INFO: loaded from: classes2.dex */
public class e extends SSWebView.a {
    private static final HashSet<String> n;
    private final boolean a;
    private String b;
    protected final x c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final Context f1748d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final String f1749e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected j f1750f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected boolean f1751g = true;
    protected boolean h = true;
    private i i;
    private Map<String, Object> j;
    private boolean k;
    private JSONObject l;
    private q m;

    static {
        HashSet<String> hashSet = new HashSet<>();
        n = hashSet;
        hashSet.add("png");
        hashSet.add("ico");
        hashSet.add("jpg");
        hashSet.add("gif");
        hashSet.add("svg");
        hashSet.add("jpeg");
    }

    public e(Context context, x xVar, String str, j jVar, boolean z) {
        this.f1748d = context;
        this.c = xVar;
        this.f1749e = str;
        this.f1750f = jVar;
        this.a = z;
    }

    private void a(String str, String str2) {
        if ((e(str) || "market".equals(str)) && ((this.i != null || this.l != null) && b(str2))) {
            a();
        }
        this.i = null;
        this.l = null;
    }

    protected static String d(String str) {
        int iLastIndexOf;
        String strSubstring;
        if (str == null || (iLastIndexOf = str.lastIndexOf(46)) < 0 || iLastIndexOf == str.length() - 1 || (strSubstring = str.substring(iLastIndexOf)) == null || !n.contains(strSubstring.toLowerCase(Locale.getDefault()))) {
            return null;
        }
        return "image/" + strSubstring;
    }

    private boolean e(String str) {
        if (o.f(this.m)) {
            return TextUtils.equals(this.m.aO(), str);
        }
        return false;
    }

    public void a() {
        if (TextUtils.isEmpty(this.b) || !o.e(this.m) || this.k) {
            return;
        }
        i iVar = this.i;
        if (iVar != null) {
            com.bytedance.sdk.openadsdk.b.c.a(CampaignEx.JSON_NATIVE_VIDEO_CLICK, this.m, iVar, this.b, true, this.j, 1);
            this.k = true;
            return;
        }
        JSONObject jSONObject = this.l;
        if (jSONObject != null) {
            com.bytedance.sdk.openadsdk.b.c.a(this.m, this.b, CampaignEx.JSON_NATIVE_VIDEO_CLICK, jSONObject);
            this.k = true;
        }
    }

    public void a(i iVar) {
        this.i = iVar;
    }

    public void a(q qVar) {
        this.m = qVar;
    }

    public void a(String str) {
        this.b = str;
    }

    public void a(Map<String, Object> map) {
        this.j = map;
    }

    public void a(JSONObject jSONObject) {
        this.l = jSONObject;
    }

    public boolean b(String str) {
        String strA;
        if (this.f1748d == null) {
            return false;
        }
        q qVar = this.m;
        String strC = "";
        if (qVar == null || qVar.aa() == null) {
            strA = "";
        } else {
            strC = this.m.aa().c();
            strA = this.m.aa().a();
        }
        return com.com.bytedance.overseas.sdk.a.a.a(str, this.f1748d, this.b, this.m, (Map<String, Object>) null) || com.com.bytedance.overseas.sdk.a.a.a(this.m, strC, this.f1748d, this.b, (Map<String, Object>) null) || com.com.bytedance.overseas.sdk.a.b.a(this.f1748d, strA, strC, this.b, this.m);
    }

    public boolean c(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Uri uri = Uri.parse(str);
            if ("play.google.com".equals(uri.getHost())) {
                if (o.f(this.m) && this.l == null && this.i == null) {
                    return true;
                }
                Intent intent = new Intent("android.intent.action.VIEW");
                if (!(this.f1748d instanceof Activity)) {
                    intent.addFlags(DriveFile.MODE_READ_ONLY);
                }
                intent.setData(uri);
                intent.setPackage("com.android.vending");
                this.f1748d.startActivity(intent);
                a();
                this.l = null;
                this.i = null;
                return true;
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    @Override // android.webkit.WebViewClient
    public void onLoadResource(WebView webView, String str) {
        super.onLoadResource(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        if (l.a()) {
            l.a("WebChromeClient", "onPageFinished " + str);
        }
        j jVar = this.f1750f;
        if (jVar != null) {
            jVar.a(webView, str, this.a);
        }
        super.onPageFinished(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        j jVar = this.f1750f;
        if (jVar != null) {
            jVar.a(webView, str, bitmap);
        }
        if (this.h) {
            c.a(this.f1748d).a(Build.VERSION.SDK_INT >= 19).b(webView.getSettings().getBuiltInZoomControls()).a(webView);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
        if (Build.VERSION.SDK_INT < 23 && this.f1750f != null) {
            this.f1750f.a(webView, i, str, str2, d(str2), (webView == null || str2 == null || !str2.equals(webView.getUrl())) ? false : true);
        }
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(23)
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        if (Build.VERSION.SDK_INT < 23 || this.f1750f == null || webResourceError == null) {
            return;
        }
        Uri url = webResourceRequest.getUrl();
        String string = url != null ? url.toString() : "";
        Map<String, String> requestHeaders = webResourceRequest.getRequestHeaders();
        this.f1750f.a(webView, webResourceError.getErrorCode(), String.valueOf(webResourceError.getDescription()), string, requestHeaders.containsKey("accept") ? requestHeaders.get("accept") : "", webResourceRequest.isForMainFrame());
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(21)
    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        if (this.f1750f == null || webResourceResponse == null) {
            return;
        }
        Uri url = webResourceRequest.getUrl();
        String string = url != null ? url.toString() : "";
        Map<String, String> requestHeaders = webResourceRequest.getRequestHeaders();
        this.f1750f.a(webView, webResourceResponse.getStatusCode(), String.valueOf(webResourceResponse.getReasonPhrase()), string, requestHeaders.containsKey("accept") ? requestHeaders.get("accept") : "", webResourceRequest.isForMainFrame());
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        if (sslErrorHandler != null) {
            try {
                sslErrorHandler.cancel();
            } catch (Throwable unused) {
            }
        }
        if (this.f1750f != null) {
            int primaryError = 0;
            String str = "SslError: unknown";
            String url = null;
            if (sslError != null) {
                try {
                    primaryError = sslError.getPrimaryError();
                    str = "SslError: " + sslError;
                    url = sslError.getUrl();
                } catch (Throwable unused2) {
                }
            }
            String str2 = url;
            this.f1750f.a(webView, primaryError, str, str2, d(str2), true);
        }
    }

    @Override // com.bytedance.sdk.component.widget.SSWebView.a, android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        try {
            com.bytedance.sdk.component.adexpress.d.e.a().b();
        } catch (Exception unused) {
        }
        return super.onRenderProcessGone(webView, renderProcessGoneDetail);
    }

    @Override // android.webkit.WebViewClient
    @RequiresApi(api = 21)
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        j jVar = this.f1750f;
        if (jVar != null) {
            jVar.a(webView, webResourceRequest);
        }
        return super.shouldInterceptRequest(webView, webResourceRequest);
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return super.shouldInterceptRequest(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        Uri uri;
        String lowerCase;
        l.b("WebChromeClient", "shouldOverrideUrlLoading " + str);
        try {
            uri = Uri.parse(str);
            lowerCase = uri.getScheme().toLowerCase();
        } catch (Throwable th) {
            l.b("WebChromeClient", "shouldOverrideUrlLoading", th);
            x xVar = this.c;
            if (xVar != null && xVar.d()) {
                return true;
            }
        }
        if ("bytedance".equals(lowerCase)) {
            com.bytedance.sdk.openadsdk.utils.l.a(uri, this.c);
            return true;
        }
        if (c(str)) {
            return true;
        }
        if (!com.bytedance.sdk.component.utils.o.a(str)) {
            if (o.f(this.m)) {
                a(lowerCase, str);
                return true;
            }
            try {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(uri);
                intent.addFlags(DriveFile.MODE_READ_ONLY);
                this.f1748d.startActivity(intent);
            } catch (Throwable unused) {
            }
            return true;
        }
        return super.shouldOverrideUrlLoading(webView, str);
    }
}
