package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.webkit.ProxyConfig;
import com.bytedance.sdk.component.adexpress.c.f;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.x;
import com.json.b4;
import java.io.InputStream;
import java.util.Iterator;

/* JADX INFO: compiled from: ExpressClient.java */
/* JADX INFO: loaded from: classes2.dex */
public class h extends com.bytedance.sdk.openadsdk.core.widget.a.e {
    private final q a;

    public h(Context context, x xVar, q qVar, com.bytedance.sdk.openadsdk.b.j jVar) {
        super(context, xVar, qVar.Y(), jVar, false);
        this.a = qVar;
    }

    private WebResourceResponse a(WebView webView, String str) {
        com.bytedance.sdk.openadsdk.core.model.n nVar = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        f.a aVarA = com.bytedance.sdk.component.adexpress.c.f.a(str);
        if (aVarA != f.a.IMAGE) {
            Iterator<com.bytedance.sdk.openadsdk.core.model.n> it = this.a.Q().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                com.bytedance.sdk.openadsdk.core.model.n next = it.next();
                if (!TextUtils.isEmpty(next.a()) && !TextUtils.isEmpty(str)) {
                    String strA = next.a();
                    if (strA.startsWith("https")) {
                        strA = strA.replaceFirst("https", ProxyConfig.MATCH_HTTP);
                    }
                    if ((str.startsWith("https") ? str.replaceFirst("https", ProxyConfig.MATCH_HTTP) : str).equals(strA)) {
                        nVar = next;
                        break;
                    }
                }
            }
        }
        return (aVarA == f.a.IMAGE || nVar != null) ? a(str, com.bytedance.sdk.openadsdk.core.nativeexpress.a.b.a(this.a, str)) : com.bytedance.sdk.component.adexpress.a.b.a.a(str, aVarA, "");
    }

    private WebResourceResponse a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            InputStream inputStreamA = com.bytedance.sdk.openadsdk.f.d.a(str, str2);
            if (inputStreamA != null) {
                return new WebResourceResponse(f.a.IMAGE.a(), b4.L, inputStreamA);
            }
            return null;
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.c("ExpressClient", "get image WebResourceResponse error", th);
            return null;
        }
    }

    private void a(long j, long j2, String str, int i) {
        com.bytedance.sdk.openadsdk.b.j jVar = this.f1750f;
        if (jVar == null || jVar.b() == null) {
            return;
        }
        f.a aVarA = com.bytedance.sdk.component.adexpress.c.f.a(str);
        if (aVarA == f.a.HTML) {
            this.f1750f.b().a(str, j, j2, i);
        } else if (aVarA == f.a.JS) {
            this.f1750f.b().b(str, j, j2, i);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.a.e, android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        this.f1751g = false;
        super.onPageFinished(webView, str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.a.e, android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        this.h = false;
        super.onPageStarted(webView, str, bitmap);
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.a.e, android.webkit.WebViewClient
    @TargetApi(21)
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        try {
            return shouldInterceptRequest(webView, webResourceRequest.getUrl().toString());
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.c("ExpressClient", "shouldInterceptRequest error1", th);
            return super.shouldInterceptRequest(webView, webResourceRequest);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.a.e, android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            WebResourceResponse webResourceResponseA = a(webView, str);
            a(jCurrentTimeMillis, System.currentTimeMillis(), str, webResourceResponseA != null ? 1 : 2);
            if (webResourceResponseA != null) {
                return webResourceResponseA;
            }
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.c("ExpressClient", "shouldInterceptRequest error2", th);
        }
        return super.shouldInterceptRequest(webView, str);
    }
}
