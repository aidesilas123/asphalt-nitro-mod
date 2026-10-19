package com.tapjoy;

import android.webkit.WebView;
import com.tapjoy.TapjoyErrorMessage;

/* JADX INFO: loaded from: classes4.dex */
public final class m0 implements Runnable {
    public final WebView a;
    public String b;

    public m0(WebView webView, String str) {
        this.a = webView;
        this.b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.a != null) {
            if (!this.b.startsWith("javascript:")) {
                try {
                    this.a.loadUrl(this.b);
                    return;
                } catch (Exception e2) {
                    TapjoyLog.e("TJWebViewJSInterface", new TapjoyErrorMessage(TapjoyErrorMessage.ErrorType.a, "Exception in loadUrl. Device not supported. " + e2.toString()));
                    return;
                }
            }
            try {
                String strReplaceFirst = this.b.replaceFirst("javascript:", "");
                this.b = strReplaceFirst;
                WebView webView = this.a;
                if (webView == null) {
                    return;
                }
                webView.evaluateJavascript(strReplaceFirst, null);
            } catch (Exception e3) {
                TapjoyLog.e("TJWebViewJSInterface", new TapjoyErrorMessage(TapjoyErrorMessage.ErrorType.a, "Exception in evaluateJavascript. Device not supported. " + e3.toString()));
            }
        }
    }
}
