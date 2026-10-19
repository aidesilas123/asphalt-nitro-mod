package com.applovin.impl.adview;

import android.content.Intent;
import android.webkit.ConsoleMessage;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.r;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class c extends WebChromeClient {
    private final b agH;
    private final com.applovin.impl.sdk.x logger;
    private final com.applovin.impl.sdk.n sdk;

    public c(@Nullable b bVar, com.applovin.impl.sdk.n nVar) {
        this.sdk = nVar;
        this.logger = nVar.BN();
        this.agH = bVar;
    }

    private void rl() {
        AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.al_onPoststitialShow_undefined"), null);
        com.applovin.impl.sdk.ad.e currentAd = this.agH.getCurrentAd();
        if (currentAd != null) {
            HashMap map = new HashMap();
            map.put("top_main_method", "onPoststitialShowUndefined");
            map.put("details", "size=" + currentAd.getSize() + ",ad_id=" + currentAd.getAdIdNumber() + ",dsp=" + currentAd.getDspName());
            this.sdk.Cs().a(r.a.TEMPLATE_ERROR, map);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onConsoleMessage(String str, int i, String str2) {
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.h("AdWebView", "console.log[" + i + "] :" + str);
        }
    }

    @Override // android.webkit.WebChromeClient
    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        String str = consoleMessage.messageLevel() + ": " + consoleMessage.sourceId() + ": " + consoleMessage.lineNumber() + ": " + consoleMessage.message();
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f("AdWebView", str);
        }
        if (consoleMessage.messageLevel() != ConsoleMessage.MessageLevel.ERROR) {
            return true;
        }
        if (!consoleMessage.message().contains("al_onPoststitialShow is not defined") && !consoleMessage.message().contains("al_showPostitial is not defined")) {
            return true;
        }
        rl();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        if (!com.applovin.impl.sdk.x.Fn()) {
            return true;
        }
        this.logger.h("AdWebView", "Alert attempted: " + str2);
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        if (!com.applovin.impl.sdk.x.Fn()) {
            return true;
        }
        this.logger.h("AdWebView", "JS onBeforeUnload attempted: " + str2);
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        if (!com.applovin.impl.sdk.x.Fn()) {
            return true;
        }
        this.logger.h("AdWebView", "JS confirm attempted: " + str2);
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public void onProgressChanged(WebView webView, int i) {
        b bVar;
        if (i != 100 || (bVar = this.agH) == null) {
            return;
        }
        bVar.b(webView);
    }
}
