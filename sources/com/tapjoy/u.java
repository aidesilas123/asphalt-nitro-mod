package com.tapjoy;

import android.view.ViewGroup;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.tapjoy.TapjoyErrorMessage;

/* JADX INFO: loaded from: classes4.dex */
public final class u extends WebViewClient {
    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        TapjoyLog.d("TJEventOptimizer", "boostrap html loaded successfully");
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
        TapjoyLog.e("TJEventOptimizer", new TapjoyErrorMessage(TapjoyErrorMessage.ErrorType.b, "Error encountered when instantiating a WebViewClient"));
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        TJEventOptimizer tJEventOptimizer = TJEventOptimizer.a;
        if (tJEventOptimizer != null) {
            ViewGroup viewGroup = (ViewGroup) tJEventOptimizer.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(TJEventOptimizer.a);
            }
            TJEventOptimizer.a.destroy();
            TJEventOptimizer.a = null;
        }
        TapjoyLog.e("TJEventOptimizer", new TapjoyErrorMessage(TapjoyErrorMessage.ErrorType.b, "WebView rendering process exited while instantiating a WebViewClient unexpectedly"));
        return true;
    }
}
