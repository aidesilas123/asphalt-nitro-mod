package com.applovin.impl.adview;

import android.annotation.TargetApi;
import android.webkit.WebView;
import android.webkit.WebViewRenderProcess;
import android.webkit.WebViewRenderProcessClient;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(29)
class f {
    private final WebViewRenderProcessClient agN = new WebViewRenderProcessClient() { // from class: com.applovin.impl.adview.f.1
        @Override // android.webkit.WebViewRenderProcessClient
        public void onRenderProcessResponsive(WebView webView, WebViewRenderProcess webViewRenderProcess) {
        }

        @Override // android.webkit.WebViewRenderProcessClient
        public void onRenderProcessUnresponsive(WebView webView, WebViewRenderProcess webViewRenderProcess) {
            if (webView instanceof d) {
                com.applovin.impl.sdk.ad.e currentAd = ((d) webView).getCurrentAd();
                f.this.sdk.Cd().a(currentAd).a(com.applovin.impl.sdk.d.b.aSE).JL();
                f.this.sdk.BN();
                if (com.applovin.impl.sdk.x.Fn()) {
                    f.this.sdk.BN().i("AdWebViewRenderProcessClient", "WebView render process unresponsive for ad: " + currentAd);
                }
            }
        }
    };
    private final com.applovin.impl.sdk.n sdk;

    f(com.applovin.impl.sdk.n nVar) {
        this.sdk = nVar;
    }

    WebViewRenderProcessClient rt() {
        return this.agN;
    }
}
