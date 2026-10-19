package com.tapjoy.internal;

import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.tapjoy.TJWebViewActivity;
import com.unity3d.ads.adplayer.AndroidWebViewClient;

/* JADX INFO: loaded from: classes4.dex */
public final class v9 extends WebViewClient {
    public final /* synthetic */ TJWebViewActivity a;

    public v9(TJWebViewActivity tJWebViewActivity) {
        this.a = tJWebViewActivity;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        this.a.h.g();
        this.a.h.e();
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
        if (webView != null) {
            webView.loadUrl(AndroidWebViewClient.BLANK_PAGE);
        }
        this.a.d();
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        return this.a.e(webResourceRequest.getUrl().toString());
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        return this.a.e(str);
    }
}
