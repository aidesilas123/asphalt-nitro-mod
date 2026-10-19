package com.applovin.impl.adview;

import android.annotation.TargetApi;
import android.content.Intent;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.view.MotionEvent;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import com.applovin.adview.AppLovinAdView;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.ab;
import com.applovin.impl.sdk.r;
import com.applovin.sdk.AppLovinAdSize;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.measurement.AppMeasurement;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class e extends ab {
    private final b agH;
    private final com.applovin.impl.sdk.x logger;
    private final com.applovin.impl.sdk.n sdk;

    public e(@Nullable b bVar, com.applovin.impl.sdk.n nVar) {
        this.sdk = nVar;
        this.logger = nVar.BN();
        this.agH = bVar;
    }

    private void a(d dVar, Uri uri) {
        a(dVar, uri, (Bundle) null);
    }

    private void a(d dVar, Uri uri, @Nullable Bundle bundle) {
        com.applovin.impl.sdk.ad.e currentAd = dVar.getCurrentAd();
        AppLovinAdView appLovinAdViewQY = this.agH.qY();
        if (appLovinAdViewQY != null && currentAd != null) {
            com.applovin.impl.sdk.d.d statsManagerHelper = dVar.getStatsManagerHelper();
            if (statsManagerHelper != null) {
                statsManagerHelper.JN();
            }
            if (currentAd instanceof com.applovin.impl.b.a) {
                ((com.applovin.impl.b.a) currentAd).getAdEventTracker().Jg();
            }
            this.agH.a(currentAd, appLovinAdViewQY, uri, dVar.getAndClearLastClickEvent(), bundle);
            return;
        }
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.i("AdWebView", "Attempting to track click that is null or not an ApplovinAdView instance for clickedUri = " + uri);
        }
    }

    private void a(com.applovin.impl.b.a aVar, d dVar) {
        a(aVar, dVar, (Bundle) null);
    }

    private void a(com.applovin.impl.b.a aVar, d dVar, @Nullable Bundle bundle) {
        com.applovin.impl.b.d dVarLX = aVar.LX();
        if (dVarLX != null) {
            com.applovin.impl.b.m.a(dVarLX.Mp(), this.agH.getSdk());
            a(dVar, dVarLX.Mn(), bundle);
        }
    }

    private void b(MotionEvent motionEvent) {
        this.agH.b(motionEvent);
    }

    private void i(Uri uri) {
        String str;
        boolean booleanQueryParameter = uri.getBooleanQueryParameter("success", false);
        String queryParameter = uri.getQueryParameter("type");
        if (booleanQueryParameter) {
            str = "Tracked event: " + queryParameter;
        } else {
            str = "Failed to track event: " + queryParameter;
        }
        com.applovin.impl.sdk.utils.u.e(str, com.applovin.impl.sdk.n.getApplicationContext());
    }

    private void qT() {
        this.agH.qT();
    }

    private void rs() {
        this.agH.qU();
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x02b9  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x016b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected boolean e(android.webkit.WebView r11, java.lang.String r12) {
        /*
            Method dump skipped, instruction units count: 701
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.adview.e.e(android.webkit.WebView, java.lang.String):boolean");
    }

    @Override // android.webkit.WebViewClient
    public void onLoadResource(WebView webView, String str) {
        super.onLoadResource(webView, str);
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.g("AdWebView", "Loaded resource: " + str);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.g("AdWebView", "Loaded URL: " + str);
        }
        b bVar = this.agH;
        if (bVar != null) {
            bVar.d(webView, str);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
        b bVar = this.agH;
        if (bVar != null) {
            com.applovin.impl.sdk.ad.e currentAd = bVar.getCurrentAd();
            String str3 = "Received error with error code: " + i + " with description \\'" + str + "\\' for URL: " + str2;
            if (currentAd != null) {
                this.sdk.Cd().a(currentAd).a(com.applovin.impl.sdk.d.b.aSA, str3).JL();
            }
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.i("AdWebView", str3 + " for ad: " + currentAd);
            }
        }
        if (com.applovin.impl.sdk.utils.u.dI(str2)) {
            this.sdk.Cs().b(str2, "adWebViewReceivedError", i);
        }
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(23)
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        onReceivedError(webView, webResourceError.getErrorCode(), webResourceError.getDescription().toString(), webResourceRequest.getUrl().toString());
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(21)
    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        b bVar = this.agH;
        if (bVar != null) {
            com.applovin.impl.sdk.ad.e currentAd = bVar.getCurrentAd();
            this.sdk.Cd().a(currentAd).a(com.applovin.impl.sdk.d.b.aSB).JL();
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.i("AdWebView", "Received HTTP error: " + webResourceResponse + "for url: " + webResourceRequest.getUrl() + " and ad: " + currentAd);
            }
        }
        if (com.applovin.impl.sdk.utils.u.dI(webResourceRequest.getUrl().toString())) {
            this.sdk.Cs().b(webResourceRequest.getUrl().toString(), "adWebViewReceivedHttpError", webResourceResponse.getStatusCode());
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
        b bVar = this.agH;
        if (bVar != null) {
            com.applovin.impl.sdk.ad.e currentAd = bVar.getCurrentAd();
            String str = "Received SSL error: " + sslError;
            this.sdk.Cd().a(currentAd).a(com.applovin.impl.sdk.d.b.aSD, str).JL();
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.i("AdWebView", str + " for ad: " + currentAd);
            }
        }
    }

    @Override // com.applovin.impl.sdk.ab, android.webkit.WebViewClient
    @TargetApi(26)
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.render_process_gone"), null);
        if (this.agH == null) {
            return true;
        }
        com.applovin.impl.sdk.x.H("AdWebView", "Render process gone for ad: " + this.agH.getCurrentAd() + ". Process did crash: " + renderProcessGoneDetail.didCrash());
        com.applovin.impl.sdk.ad.e currentAd = this.agH.getCurrentAd();
        if (currentAd != null) {
            this.sdk.Cd().a(currentAd).a(com.applovin.impl.sdk.d.b.aSC).JL();
            HashMap map = new HashMap();
            map.put("top_main_method", "onRenderProcessGone");
            map.put("details", "size=" + currentAd.getSize() + ",ad_id=" + currentAd.getAdIdNumber() + ",dsp=" + currentAd.getDspName());
            if (com.applovin.impl.sdk.utils.h.La()) {
                map.put(ShareConstants.FEED_SOURCE_PARAM, renderProcessGoneDetail.didCrash() ? AppMeasurement.CRASH_ORIGIN : "non_crash");
            }
            this.sdk.Cs().a(r.a.WEB_VIEW_ERROR, map);
        }
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aQp)).booleanValue()) {
            if (renderProcessGoneDetail.didCrash() && ((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aQs)).booleanValue()) {
                throw new RuntimeException("Render process crashed. This is likely caused by a crash in an AppLovin ad with ID: " + (currentAd != null ? String.valueOf(currentAd.getAdIdNumber()) : "null"));
            }
            if (webView != null && webView.equals(this.agH.qZ())) {
                this.agH.destroy();
                AppLovinAdSize size = this.agH.getSize();
                if (com.applovin.impl.sdk.utils.u.c(size)) {
                    this.agH.a(size);
                    this.agH.resume();
                }
            }
        }
        return super.onRenderProcessGone(webView, renderProcessGoneDetail);
    }

    protected b rr() {
        return this.agH;
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(24)
    public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        Uri url = webResourceRequest.getUrl();
        if (url != null) {
            return e(webView, url.toString());
        }
        if (!com.applovin.impl.sdk.x.Fn()) {
            return false;
        }
        this.logger.i("AdWebView", "No url found for request");
        return false;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        return e(webView, str);
    }
}
