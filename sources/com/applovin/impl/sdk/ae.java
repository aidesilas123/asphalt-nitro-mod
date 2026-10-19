package com.applovin.impl.sdk;

import android.annotation.SuppressLint;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinPostbackListener;
import com.applovin.sdk.AppLovinSdkUtils;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class ae extends ab {
    private WebView aFW;
    private final Set<WebView> aFX = Collections.synchronizedSet(new HashSet());
    private final x logger;
    private final n sdk;

    public ae(n nVar) {
        this.sdk = nVar;
        this.logger = nVar.BN();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Fx() {
        this.aFW.destroy();
        this.aFW = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(com.applovin.impl.sdk.network.i iVar, AppLovinPostbackListener appLovinPostbackListener) {
        String strAppendQueryParameters = StringUtils.appendQueryParameters(iVar.zL(), iVar.HR(), ((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOb)).booleanValue());
        if (this.aFW == null) {
            WebView webViewCN = cN("<script>window.al_firePostback = function(url) {\n    setTimeout(function() {\n        var img = new Image();\n        img.src = url;\n    }, 100);\n}\n</script>");
            this.aFW = webViewCN;
            if (webViewCN == null) {
                if (x.Fn()) {
                    this.logger.i("WebTrackerManager", "Failed to fire postback since web view could not be created");
                }
                appLovinPostbackListener.onPostbackFailure(strAppendQueryParameters, -1);
                return;
            }
        }
        String str = "al_firePostback('" + strAppendQueryParameters + "')";
        if (com.applovin.impl.sdk.utils.h.KW()) {
            this.aFW.evaluateJavascript(str, null);
        } else {
            this.aFW.loadUrl("javascript:" + str);
        }
        appLovinPostbackListener.onPostbackSuccess(strAppendQueryParameters);
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    private WebView cN(String str) {
        com.applovin.impl.sdk.utils.u.LF();
        WebView webViewB = com.applovin.impl.sdk.utils.u.b(n.getApplicationContext(), "web tracker");
        if (webViewB == null) {
            return null;
        }
        webViewB.getSettings().setJavaScriptEnabled(true);
        webViewB.setWebViewClient(this);
        webViewB.loadData("<html><head><link rel=\"icon\" href=\"data:,\">" + str + "</head><body></body></html>", "text/html", C.UTF8_NAME);
        return webViewB;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void cO(String str) {
        final WebView webViewCN = cN(str);
        if (webViewCN != null) {
            this.aFX.add(webViewCN);
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.sdk.j0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.g(webViewCN);
                }
            }, ((Integer) this.sdk.a(com.applovin.impl.sdk.c.b.aNG)).intValue());
        } else if (x.Fn()) {
            this.logger.i("WebTrackerManager", "Failed to fire tracker since web view could not be created");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public void g(final WebView webView) {
        if (webView == null || !this.aFX.remove(webView)) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.x1
            @Override // java.lang.Runnable
            public final void run() {
                webView.destroy();
            }
        });
    }

    public void a(final com.applovin.impl.sdk.network.i iVar, final AppLovinPostbackListener appLovinPostbackListener) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.k0
            @Override // java.lang.Runnable
            public final void run() {
                this.a.b(iVar, appLovinPostbackListener);
            }
        });
    }

    public void cM(final String str) {
        if (!AppLovinSdkUtils.isValidString(str)) {
            if (x.Fn()) {
                this.logger.i("WebTrackerManager", "Failed to fire tracker due to empty script string");
            }
        } else if (str.startsWith("<script")) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.m0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.cO(str);
                }
            });
        } else if (x.Fn()) {
            this.logger.i("WebTrackerManager", "Failed to fire tracker due to improperly formatted script tag");
        }
    }

    @Override // com.applovin.impl.sdk.ab, android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        if (webView == this.aFW) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.l0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.Fx();
                }
            });
        } else {
            g(webView);
        }
        return super.onRenderProcessGone(webView, renderProcessGoneDetail);
    }
}
