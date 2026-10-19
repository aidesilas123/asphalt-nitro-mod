package com.mbridge.msdk.mbsignalcommon.b;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import com.mbridge.msdk.foundation.tools.aa;

/* JADX INFO: compiled from: DefaultRVWebViewListener.java */
/* JADX INFO: loaded from: classes4.dex */
public class a implements com.mbridge.msdk.mbsignalcommon.windvane.b {
    @Override // com.mbridge.msdk.mbsignalcommon.windvane.d
    public void a(WebView webView) {
        aa.a("RVWindVaneWebView", "onRenderProcessGone");
    }

    @Override // com.mbridge.msdk.mbsignalcommon.windvane.d
    public void a(WebView webView, int i) {
        aa.a("RVWindVaneWebView", "readyState");
    }

    @Override // com.mbridge.msdk.mbsignalcommon.windvane.d
    public void a(WebView webView, int i, String str, String str2) {
        aa.a("RVWindVaneWebView", "onReceivedError");
    }

    @Override // com.mbridge.msdk.mbsignalcommon.windvane.d
    public void a(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        aa.a("RVWindVaneWebView", "onReceivedSslError");
    }

    @Override // com.mbridge.msdk.mbsignalcommon.windvane.d
    public void a(WebView webView, String str) {
        aa.a("RVWindVaneWebView", "onPageFinished");
    }

    @Override // com.mbridge.msdk.mbsignalcommon.windvane.d
    public final void a(WebView webView, String str, Bitmap bitmap) {
        aa.a("RVWindVaneWebView", "onPageStarted");
    }

    public void a(WebView webView, String str, String str2, int i, int i2) {
        aa.a("RVWindVaneWebView", "loadAds");
    }

    public void a(Object obj) {
        aa.a("RVWindVaneWebView", "getEndScreenInfo");
    }

    public void a(Object obj, String str) {
        aa.a("RVWindVaneWebView", "operateComponent");
    }

    @Override // com.mbridge.msdk.mbsignalcommon.windvane.d
    public final void b(WebView webView, int i) {
        aa.a("RVWindVaneWebView", "onProgressChanged");
    }

    @Override // com.mbridge.msdk.mbsignalcommon.windvane.d
    public final boolean b(WebView webView, String str) {
        aa.a("RVWindVaneWebView", "shouldOverrideUrlLoading");
        return true;
    }

    @Override // com.mbridge.msdk.mbsignalcommon.windvane.d
    public final void c(WebView webView, int i) {
        aa.a("RVWindVaneWebView", "loadingResourceStatus");
    }
}
