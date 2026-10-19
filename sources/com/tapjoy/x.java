package com.tapjoy;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.view.ViewGroup;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import androidx.webkit.ProxyConfig;
import com.tapjoy.TapjoyErrorMessage;
import java.util.HashSet;

/* JADX INFO: loaded from: classes4.dex */
public final class x extends WebViewClient {
    public final /* synthetic */ y a;

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        if (this.a.k.booleanValue()) {
            ProgressBar progressBar = this.a.n;
            if (progressBar != null) {
                progressBar.setProgress(0);
                this.a.n.setVisibility(8);
            }
            this.a.c();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        if (this.a.k.booleanValue()) {
            this.a.o.setText(TapjoyUrlFormatter.getDomain(str));
            this.a.n.setVisibility(0);
        }
        TapjoyLog.d("TJSplitWebView", "onPageStarted: " + str);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        TapjoyLog.d("TJSplitWebView", "onReceivedError: " + str2 + " firstUrl:" + this.a.f8054d);
        y yVar = this.a;
        if (yVar.r) {
            yVar.e();
        } else if (str2.equals(yVar.f8054d)) {
            this.a.i.d(null, null);
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        TJWebView tJWebView = this.a.a;
        if (tJWebView != null) {
            ViewGroup viewGroup = (ViewGroup) tJWebView.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(this.a.a);
                viewGroup.removeAllViews();
            }
            this.a.a.destroy();
            this.a.a = null;
        }
        k kVar = this.a.i;
        if (kVar != null) {
            kVar.a();
            this.a.i = null;
        }
        TapjoyLog.e("TJSplitWebView", new TapjoyErrorMessage(TapjoyErrorMessage.ErrorType.b, "WebView rendering process exited while instantiating a WebViewClient unexpectedly"));
        return true;
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        y yVar = this.a;
        String str2 = yVar.f8056f;
        Uri uri = yVar.f8057g;
        if (str2 != null && uri != null && str != null && str.startsWith(str2)) {
            this.a.j.startActivity(new Intent("android.intent.action.VIEW", uri));
            this.a.i.d(null, null);
        }
        return super.shouldInterceptRequest(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        HashSet hashSet;
        TapjoyLog.d("TJSplitWebView", "shouldOverrideUrlLoading: " + str);
        Uri uri = Uri.parse(str);
        if (uri != null) {
            String host = uri.getHost();
            String scheme = uri.getScheme();
            if (scheme != null && host != null && ((scheme.equals(ProxyConfig.MATCH_HTTP) || scheme.equals("https")) && ((hashSet = this.a.h) == null || !hashSet.contains(host)))) {
                this.a.f8055e = str;
                return false;
            }
        }
        try {
            this.a.j.startActivity(new Intent("android.intent.action.VIEW", uri));
            if (this.a.k.booleanValue()) {
                return true;
            }
            this.a.i.d(null, null);
            return true;
        } catch (Exception e2) {
            TapjoyLog.e("TJSplitWebView", e2.getMessage());
            return true;
        }
    }
}
