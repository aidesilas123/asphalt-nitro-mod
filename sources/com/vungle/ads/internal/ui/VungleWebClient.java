package com.vungle.ads.internal.ui;

import android.annotation.TargetApi;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.webkit.WebViewRenderProcess;
import android.webkit.WebViewRenderProcessClient;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.webkit.ProxyConfig;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.o2;
import com.json.v4;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.model.Placement;
import com.vungle.ads.internal.omsdk.WebViewObserver;
import com.vungle.ads.v0;
import java.util.concurrent.ExecutorService;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.serialization.json.JsonElementBuildersKt;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonObjectBuilder;

/* JADX INFO: compiled from: VungleWebClient.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\u0018\u0000 s2\u00020\u00012\u00020\u0002:\u0002stB\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ \u0010L\u001a\u00020M2\u0006\u0010N\u001a\u00020\u001a2\u0006\u0010O\u001a\u00020\u001a2\u0006\u0010P\u001a\u00020\u000bH\u0002J\u0010\u0010Q\u001a\u00020\u000b2\u0006\u0010O\u001a\u00020\u001aH\u0002J\u0010\u0010R\u001a\u00020M2\u0006\u0010S\u001a\u00020\u000bH\u0016J\u001c\u0010T\u001a\u00020M2\b\u0010U\u001a\u0004\u0018\u0001042\b\u0010O\u001a\u0004\u0018\u00010\u001aH\u0016J&\u0010V\u001a\u00020M2\b\u0010U\u001a\u0004\u0018\u0001042\b\u0010W\u001a\u0004\u0018\u00010X2\b\u0010Y\u001a\u0004\u0018\u00010ZH\u0016J*\u0010V\u001a\u00020M2\b\u0010U\u001a\u0004\u0018\u0001042\u0006\u0010[\u001a\u00020\\2\u0006\u0010]\u001a\u00020\u001a2\u0006\u0010^\u001a\u00020\u001aH\u0017J&\u0010_\u001a\u00020M2\b\u0010U\u001a\u0004\u0018\u0001042\b\u0010W\u001a\u0004\u0018\u00010X2\b\u0010`\u001a\u0004\u0018\u00010aH\u0016J\u001c\u0010b\u001a\u00020\u000b2\b\u0010U\u001a\u0004\u0018\u0001042\b\u0010c\u001a\u0004\u0018\u00010dH\u0017J\u001a\u0010e\u001a\u00020M2\b\u0010f\u001a\u0004\u0018\u0001042\u0006\u0010g\u001a\u00020\u001aH\u0002J\u0010\u0010h\u001a\u00020M2\u0006\u0010,\u001a\u00020\u000bH\u0016J8\u0010i\u001a\u00020M2\u0006\u0010j\u001a\u00020\u000b2\b\u0010k\u001a\u0004\u0018\u00010\u001a2\b\u0010l\u001a\u0004\u0018\u00010\u001a2\b\u0010m\u001a\u0004\u0018\u00010\u001a2\b\u0010n\u001a\u0004\u0018\u00010\u001aH\u0016J\u0010\u0010o\u001a\u00020M2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0012\u0010p\u001a\u00020M2\b\u0010:\u001a\u0004\u0018\u00010;H\u0016J\u0012\u0010q\u001a\u00020M2\b\u0010E\u001a\u0004\u0018\u00010FH\u0016J\u001c\u0010r\u001a\u00020\u000b2\b\u0010U\u001a\u0004\u0018\u0001042\b\u0010O\u001a\u0004\u0018\u00010\u001aH\u0017R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\u000b8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R&\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0014\u0010\r\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R&\u0010\u0019\u001a\u0004\u0018\u00010\u001a8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u001b\u0010\r\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR&\u0010 \u001a\u0004\u0018\u00010\u001a8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b!\u0010\r\u001a\u0004\b\"\u0010\u001d\"\u0004\b#\u0010\u001fR&\u0010$\u001a\u0004\u0018\u00010\u001a8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b%\u0010\r\u001a\u0004\b&\u0010\u001d\"\u0004\b'\u0010\u001fR&\u0010(\u001a\u0004\u0018\u00010\u001a8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b)\u0010\r\u001a\u0004\b*\u0010\u001d\"\u0004\b+\u0010\u001fR(\u0010,\u001a\u0004\u0018\u00010\u000b8\u0000@\u0000X\u0081\u000e¢\u0006\u0016\n\u0002\u00102\u0012\u0004\b-\u0010\r\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R&\u00103\u001a\u0004\u0018\u0001048\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b5\u0010\r\u001a\u0004\b6\u00107\"\u0004\b8\u00109R&\u0010:\u001a\u0004\u0018\u00010;8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b<\u0010\r\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010A\u001a\u00020\u000b8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bB\u0010\r\u001a\u0004\bC\u0010\u000f\"\u0004\bD\u0010\u0011R&\u0010E\u001a\u0004\u0018\u00010F8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bG\u0010\r\u001a\u0004\bH\u0010I\"\u0004\bJ\u0010K¨\u0006u"}, d2 = {"Lcom/vungle/ads/internal/ui/VungleWebClient;", "Landroid/webkit/WebViewClient;", "Lcom/vungle/ads/internal/ui/view/WebViewAPI;", "advertisement", "Lcom/vungle/ads/internal/model/AdPayload;", "placement", "Lcom/vungle/ads/internal/model/Placement;", "offloadExecutor", "Ljava/util/concurrent/ExecutorService;", "(Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/internal/model/Placement;Ljava/util/concurrent/ExecutorService;)V", "collectConsent", "", "getCollectConsent$vungle_ads_release$annotations", "()V", "getCollectConsent$vungle_ads_release", "()Z", "setCollectConsent$vungle_ads_release", "(Z)V", "errorHandler", "Lcom/vungle/ads/internal/ui/view/WebViewAPI$WebClientErrorHandler;", "getErrorHandler$vungle_ads_release$annotations", "getErrorHandler$vungle_ads_release", "()Lcom/vungle/ads/internal/ui/view/WebViewAPI$WebClientErrorHandler;", "setErrorHandler$vungle_ads_release", "(Lcom/vungle/ads/internal/ui/view/WebViewAPI$WebClientErrorHandler;)V", "gdprAccept", "", "getGdprAccept$vungle_ads_release$annotations", "getGdprAccept$vungle_ads_release", "()Ljava/lang/String;", "setGdprAccept$vungle_ads_release", "(Ljava/lang/String;)V", "gdprBody", "getGdprBody$vungle_ads_release$annotations", "getGdprBody$vungle_ads_release", "setGdprBody$vungle_ads_release", "gdprDeny", "getGdprDeny$vungle_ads_release$annotations", "getGdprDeny$vungle_ads_release", "setGdprDeny$vungle_ads_release", "gdprTitle", "getGdprTitle$vungle_ads_release$annotations", "getGdprTitle$vungle_ads_release", "setGdprTitle$vungle_ads_release", o2.h.o, "isViewable$vungle_ads_release$annotations", "isViewable$vungle_ads_release", "()Ljava/lang/Boolean;", "setViewable$vungle_ads_release", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "loadedWebView", "Landroid/webkit/WebView;", "getLoadedWebView$vungle_ads_release$annotations", "getLoadedWebView$vungle_ads_release", "()Landroid/webkit/WebView;", "setLoadedWebView$vungle_ads_release", "(Landroid/webkit/WebView;)V", "mraidDelegate", "Lcom/vungle/ads/internal/ui/view/WebViewAPI$MraidDelegate;", "getMraidDelegate$vungle_ads_release$annotations", "getMraidDelegate$vungle_ads_release", "()Lcom/vungle/ads/internal/ui/view/WebViewAPI$MraidDelegate;", "setMraidDelegate$vungle_ads_release", "(Lcom/vungle/ads/internal/ui/view/WebViewAPI$MraidDelegate;)V", o2.h.s, "getReady$vungle_ads_release$annotations", "getReady$vungle_ads_release", "setReady$vungle_ads_release", "webViewObserver", "Lcom/vungle/ads/internal/omsdk/WebViewObserver;", "getWebViewObserver$vungle_ads_release$annotations", "getWebViewObserver$vungle_ads_release", "()Lcom/vungle/ads/internal/omsdk/WebViewObserver;", "setWebViewObserver$vungle_ads_release", "(Lcom/vungle/ads/internal/omsdk/WebViewObserver;)V", "handleWebViewError", "", "errorMsg", "url", "didCrash", "isCriticalAsset", "notifyPropertiesChange", "skipCmdQueue", "onPageFinished", "view", "onReceivedError", "request", "Landroid/webkit/WebResourceRequest;", "error", "Landroid/webkit/WebResourceError;", IronSourceConstants.EVENTS_ERROR_CODE, "", "description", "failingUrl", "onReceivedHttpError", "errorResponse", "Landroid/webkit/WebResourceResponse;", "onRenderProcessGone", "detail", "Landroid/webkit/RenderProcessGoneDetail;", "runJavascriptOnWebView", "webView", "injectJs", "setAdVisibility", "setConsentStatus", "collectedConsent", "title", "message", "accept", "deny", "setErrorHandler", "setMraidDelegate", "setWebViewObserver", "shouldOverrideUrlLoading", "Companion", "VungleWebViewRenderProcessClient", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
public final class VungleWebClient extends WebViewClient {
    private static final String TAG = "VungleWebClient";
    private final AdPayload advertisement;
    private boolean collectConsent;
    private com.vungle.ads.internal.ui.view.c errorHandler;
    private String gdprAccept;
    private String gdprBody;
    private String gdprDeny;
    private String gdprTitle;
    private Boolean isViewable;
    private WebView loadedWebView;
    private com.vungle.ads.internal.ui.view.b mraidDelegate;
    private final ExecutorService offloadExecutor;
    private final Placement placement;
    private boolean ready;
    private WebViewObserver webViewObserver;

    /* JADX INFO: compiled from: VungleWebClient.kt */
    @RequiresApi(29)
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u001a\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016J\u001a\u0010\u000e\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\u000f"}, d2 = {"Lcom/vungle/ads/internal/ui/VungleWebClient$VungleWebViewRenderProcessClient;", "Landroid/webkit/WebViewRenderProcessClient;", "errorHandler", "Lcom/vungle/ads/internal/ui/view/WebViewAPI$WebClientErrorHandler;", "(Lcom/vungle/ads/internal/ui/view/WebViewAPI$WebClientErrorHandler;)V", "getErrorHandler", "()Lcom/vungle/ads/internal/ui/view/WebViewAPI$WebClientErrorHandler;", "setErrorHandler", "onRenderProcessResponsive", "", "webView", "Landroid/webkit/WebView;", "webViewRenderProcess", "Landroid/webkit/WebViewRenderProcess;", "onRenderProcessUnresponsive", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class b extends WebViewRenderProcessClient {
        private com.vungle.ads.internal.ui.view.c errorHandler;

        public b(com.vungle.ads.internal.ui.view.c cVar) {
            this.errorHandler = cVar;
        }

        public final com.vungle.ads.internal.ui.view.c getErrorHandler() {
            return this.errorHandler;
        }

        @Override // android.webkit.WebViewRenderProcessClient
        public void onRenderProcessResponsive(WebView webView, WebViewRenderProcess webViewRenderProcess) {
            Intrinsics.checkNotNullParameter(webView, "webView");
        }

        @Override // android.webkit.WebViewRenderProcessClient
        public void onRenderProcessUnresponsive(WebView webView, WebViewRenderProcess webViewRenderProcess) {
            Intrinsics.checkNotNullParameter(webView, "webView");
            StringBuilder sb = new StringBuilder();
            sb.append("onRenderProcessUnresponsive(Title = ");
            sb.append(webView.getTitle());
            sb.append(", URL = ");
            sb.append(webView.getOriginalUrl());
            sb.append(", (webViewRenderProcess != null) = ");
            sb.append(webViewRenderProcess != null);
            Log.w(VungleWebClient.TAG, sb.toString());
            com.vungle.ads.internal.ui.view.c cVar = this.errorHandler;
            if (cVar != null) {
                cVar.onRenderProcessUnresponsive(webView, webViewRenderProcess);
            }
        }

        public final void setErrorHandler(com.vungle.ads.internal.ui.view.c cVar) {
            this.errorHandler = cVar;
        }
    }

    public VungleWebClient(AdPayload advertisement, Placement placement, ExecutorService offloadExecutor) {
        Intrinsics.checkNotNullParameter(advertisement, "advertisement");
        Intrinsics.checkNotNullParameter(placement, "placement");
        Intrinsics.checkNotNullParameter(offloadExecutor, "offloadExecutor");
        this.advertisement = advertisement;
        this.placement = placement;
        this.offloadExecutor = offloadExecutor;
    }

    @VisibleForTesting
    public static /* synthetic */ void getCollectConsent$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getErrorHandler$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getGdprAccept$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getGdprBody$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getGdprDeny$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getGdprTitle$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getLoadedWebView$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getMraidDelegate$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getReady$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getWebViewObserver$vungle_ads_release$annotations() {
    }

    private final void handleWebViewError(String errorMsg, String url, boolean didCrash) {
        String str = url + ' ' + errorMsg;
        com.vungle.ads.internal.ui.view.c cVar = this.errorHandler;
        if (cVar != null) {
            cVar.onReceivedError(str, didCrash);
        }
    }

    private final boolean isCriticalAsset(String url) {
        if (url.length() > 0) {
            return this.advertisement.getDownloadableUrls().containsValue(url);
        }
        return false;
    }

    @VisibleForTesting
    public static /* synthetic */ void isViewable$vungle_ads_release$annotations() {
    }

    private final void runJavascriptOnWebView(WebView webView, String injectJs) {
        try {
            if (Build.VERSION.SDK_INT >= 19) {
                if (webView != null) {
                    webView.evaluateJavascript(injectJs, null);
                }
            } else if (webView != null) {
                webView.loadUrl("javascript:" + injectJs);
            }
        } catch (Exception e2) {
            AnalyticsClient.INSTANCE.logError$vungle_ads_release(313, "Evaluate js failed " + e2.getLocalizedMessage(), this.placement.getReferenceId(), this.advertisement.getCreativeId(), this.advertisement.eventId());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: shouldOverrideUrlLoading$lambda-4$lambda-3$lambda-2, reason: not valid java name */
    public static final void m1161shouldOverrideUrlLoading$lambda4$lambda3$lambda2(com.vungle.ads.internal.ui.view.b it, String command, JsonObject args, Handler handler, final VungleWebClient this$0, final WebView webView) {
        Intrinsics.checkNotNullParameter(it, "$it");
        Intrinsics.checkNotNullParameter(command, "$command");
        Intrinsics.checkNotNullParameter(args, "$args");
        Intrinsics.checkNotNullParameter(handler, "$handler");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (it.processCommand(command, args)) {
            handler.post(new Runnable() { // from class: com.vungle.ads.internal.ui.b
                @Override // java.lang.Runnable
                public final void run() {
                    VungleWebClient.m1162shouldOverrideUrlLoading$lambda4$lambda3$lambda2$lambda1(this.a, webView);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: shouldOverrideUrlLoading$lambda-4$lambda-3$lambda-2$lambda-1, reason: not valid java name */
    public static final void m1162shouldOverrideUrlLoading$lambda4$lambda3$lambda2$lambda1(VungleWebClient this$0, WebView webView) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.runJavascriptOnWebView(webView, "window.vungle.mraidBridge.notifyCommandComplete()");
    }

    /* JADX INFO: renamed from: getCollectConsent$vungle_ads_release, reason: from getter */
    public final boolean getCollectConsent() {
        return this.collectConsent;
    }

    /* JADX INFO: renamed from: getErrorHandler$vungle_ads_release, reason: from getter */
    public final com.vungle.ads.internal.ui.view.c getErrorHandler() {
        return this.errorHandler;
    }

    /* JADX INFO: renamed from: getGdprAccept$vungle_ads_release, reason: from getter */
    public final String getGdprAccept() {
        return this.gdprAccept;
    }

    /* JADX INFO: renamed from: getGdprBody$vungle_ads_release, reason: from getter */
    public final String getGdprBody() {
        return this.gdprBody;
    }

    /* JADX INFO: renamed from: getGdprDeny$vungle_ads_release, reason: from getter */
    public final String getGdprDeny() {
        return this.gdprDeny;
    }

    /* JADX INFO: renamed from: getGdprTitle$vungle_ads_release, reason: from getter */
    public final String getGdprTitle() {
        return this.gdprTitle;
    }

    /* JADX INFO: renamed from: getLoadedWebView$vungle_ads_release, reason: from getter */
    public final WebView getLoadedWebView() {
        return this.loadedWebView;
    }

    /* JADX INFO: renamed from: getMraidDelegate$vungle_ads_release, reason: from getter */
    public final com.vungle.ads.internal.ui.view.b getMraidDelegate() {
        return this.mraidDelegate;
    }

    /* JADX INFO: renamed from: getReady$vungle_ads_release, reason: from getter */
    public final boolean getReady() {
        return this.ready;
    }

    /* JADX INFO: renamed from: getWebViewObserver$vungle_ads_release, reason: from getter */
    public final WebViewObserver getWebViewObserver() {
        return this.webViewObserver;
    }

    /* JADX INFO: renamed from: isViewable$vungle_ads_release, reason: from getter */
    public final Boolean getIsViewable() {
        return this.isViewable;
    }

    public void notifyPropertiesChange(boolean skipCmdQueue) {
        WebView webView = this.loadedWebView;
        if (webView != null) {
            JsonObjectBuilder jsonObjectBuilder = new JsonObjectBuilder();
            JsonObjectBuilder jsonObjectBuilder2 = new JsonObjectBuilder();
            JsonElementBuildersKt.put(jsonObjectBuilder2, "width", Integer.valueOf(webView.getWidth()));
            JsonElementBuildersKt.put(jsonObjectBuilder2, "height", Integer.valueOf(webView.getHeight()));
            JsonObject jsonObjectA = jsonObjectBuilder2.a();
            JsonObjectBuilder jsonObjectBuilder3 = new JsonObjectBuilder();
            JsonElementBuildersKt.put(jsonObjectBuilder3, "x", (Number) 0);
            JsonElementBuildersKt.put(jsonObjectBuilder3, "y", (Number) 0);
            JsonElementBuildersKt.put(jsonObjectBuilder3, "width", Integer.valueOf(webView.getWidth()));
            JsonElementBuildersKt.put(jsonObjectBuilder3, "height", Integer.valueOf(webView.getHeight()));
            JsonObject jsonObjectA2 = jsonObjectBuilder3.a();
            JsonObjectBuilder jsonObjectBuilder4 = new JsonObjectBuilder();
            Boolean bool = Boolean.FALSE;
            JsonElementBuildersKt.put(jsonObjectBuilder4, "sms", bool);
            JsonElementBuildersKt.put(jsonObjectBuilder4, "tel", bool);
            JsonElementBuildersKt.put(jsonObjectBuilder4, "calendar", bool);
            JsonElementBuildersKt.put(jsonObjectBuilder4, "storePicture", bool);
            JsonElementBuildersKt.put(jsonObjectBuilder4, "inlineVideo", bool);
            JsonObject jsonObjectA3 = jsonObjectBuilder4.a();
            jsonObjectBuilder.b(SDKConstants.PARAM_CONTEXT_MAX_SIZE, jsonObjectA);
            jsonObjectBuilder.b("screenSize", jsonObjectA);
            jsonObjectBuilder.b("defaultPosition", jsonObjectA2);
            jsonObjectBuilder.b("currentPosition", jsonObjectA2);
            jsonObjectBuilder.b("supports", jsonObjectA3);
            JsonElementBuildersKt.put(jsonObjectBuilder, "placementType", this.advertisement.templateType());
            Boolean bool2 = this.isViewable;
            if (bool2 != null) {
                JsonElementBuildersKt.put(jsonObjectBuilder, o2.h.o, Boolean.valueOf(bool2.booleanValue()));
            }
            JsonElementBuildersKt.put(jsonObjectBuilder, v4.x, "android");
            JsonElementBuildersKt.put(jsonObjectBuilder, "osVersion", String.valueOf(Build.VERSION.SDK_INT));
            JsonElementBuildersKt.put(jsonObjectBuilder, "incentivized", this.placement.getIncentivized());
            JsonElementBuildersKt.put(jsonObjectBuilder, "enableBackImmediately", Integer.valueOf(this.advertisement.getShowCloseDelay(this.placement.getIncentivized())));
            JsonElementBuildersKt.put(jsonObjectBuilder, "version", "1.0");
            if (this.collectConsent) {
                JsonElementBuildersKt.put(jsonObjectBuilder, "consentRequired", Boolean.TRUE);
                JsonElementBuildersKt.put(jsonObjectBuilder, "consentTitleText", this.gdprTitle);
                JsonElementBuildersKt.put(jsonObjectBuilder, "consentBodyText", this.gdprBody);
                JsonElementBuildersKt.put(jsonObjectBuilder, "consentAcceptButtonText", this.gdprAccept);
                JsonElementBuildersKt.put(jsonObjectBuilder, "consentDenyButtonText", this.gdprDeny);
            } else {
                JsonElementBuildersKt.put(jsonObjectBuilder, "consentRequired", bool);
            }
            JsonElementBuildersKt.put(jsonObjectBuilder, "sdkVersion", v0.VERSION_NAME);
            JsonObject jsonObjectA4 = jsonObjectBuilder.a();
            Log.d(TAG, "loadJs->javascript:window.vungle.mraidBridge.notifyPropertiesChange(" + jsonObjectA4 + ',' + skipCmdQueue + ')');
            runJavascriptOnWebView(webView, "window.vungle.mraidBridge.notifyPropertiesChange(" + jsonObjectA4 + ',' + skipCmdQueue + ')');
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView view, String url) {
        super.onPageFinished(view, url);
        if (view == null) {
            return;
        }
        this.loadedWebView = view;
        if (view != null) {
            view.setVisibility(0);
        }
        notifyPropertiesChange(true);
        if (Build.VERSION.SDK_INT >= 29) {
            view.setWebViewRenderProcessClient(new b(this.errorHandler));
        }
        WebViewObserver webViewObserver = this.webViewObserver;
        if (webViewObserver != null) {
            webViewObserver.onPageFinished(view);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(failingUrl, "failingUrl");
        super.onReceivedError(view, errorCode, description, failingUrl);
        if (Build.VERSION.SDK_INT < 23) {
            boolean zIsCriticalAsset = isCriticalAsset(failingUrl);
            Log.e(TAG, "Error desc " + description + " for URL " + failingUrl);
            handleWebViewError(description, failingUrl, zIsCriticalAsset);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView view, WebResourceRequest request, WebResourceError error) {
        super.onReceivedError(view, request, error);
        if (Build.VERSION.SDK_INT >= 23) {
            String strValueOf = String.valueOf(error != null ? error.getDescription() : null);
            String strValueOf2 = String.valueOf(request != null ? request.getUrl() : null);
            boolean z = request != null && request.isForMainFrame();
            Log.e(TAG, "Error desc " + strValueOf + ' ' + z + " for URL " + strValueOf2);
            handleWebViewError(strValueOf, strValueOf2, isCriticalAsset(strValueOf2) && z);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedHttpError(WebView view, WebResourceRequest request, WebResourceResponse errorResponse) {
        super.onReceivedHttpError(view, request, errorResponse);
        if (Build.VERSION.SDK_INT >= 21) {
            String strValueOf = String.valueOf(errorResponse != null ? Integer.valueOf(errorResponse.getStatusCode()) : null);
            String strValueOf2 = String.valueOf(request != null ? request.getUrl() : null);
            boolean z = request != null && request.isForMainFrame();
            Log.e(TAG, "Http Error desc " + strValueOf + ' ' + z + " for URL " + strValueOf2);
            handleWebViewError(strValueOf, strValueOf2, isCriticalAsset(strValueOf2) && z);
        }
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(26)
    public boolean onRenderProcessGone(WebView view, RenderProcessGoneDetail detail) {
        StringBuilder sb = new StringBuilder();
        sb.append("onRenderProcessGone url: ");
        sb.append(view != null ? view.getUrl() : null);
        sb.append(", did crash: ");
        sb.append(detail != null ? Boolean.valueOf(detail.didCrash()) : null);
        Log.w(TAG, sb.toString());
        this.loadedWebView = null;
        com.vungle.ads.internal.ui.view.c cVar = this.errorHandler;
        if (cVar != null) {
            return cVar.onWebRenderingProcessGone(view, detail != null ? Boolean.valueOf(detail.didCrash()) : null);
        }
        return super.onRenderProcessGone(view, detail);
    }

    public void setAdVisibility(boolean isViewable) {
        this.isViewable = Boolean.valueOf(isViewable);
        notifyPropertiesChange(false);
    }

    public final void setCollectConsent$vungle_ads_release(boolean z) {
        this.collectConsent = z;
    }

    public void setConsentStatus(boolean collectedConsent, String title, String message, String accept, String deny) {
        this.collectConsent = collectedConsent;
        this.gdprTitle = title;
        this.gdprBody = message;
        this.gdprAccept = accept;
        this.gdprDeny = deny;
    }

    public void setErrorHandler(com.vungle.ads.internal.ui.view.c errorHandler) {
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        this.errorHandler = errorHandler;
    }

    public final void setErrorHandler$vungle_ads_release(com.vungle.ads.internal.ui.view.c cVar) {
        this.errorHandler = cVar;
    }

    public final void setGdprAccept$vungle_ads_release(String str) {
        this.gdprAccept = str;
    }

    public final void setGdprBody$vungle_ads_release(String str) {
        this.gdprBody = str;
    }

    public final void setGdprDeny$vungle_ads_release(String str) {
        this.gdprDeny = str;
    }

    public final void setGdprTitle$vungle_ads_release(String str) {
        this.gdprTitle = str;
    }

    public final void setLoadedWebView$vungle_ads_release(WebView webView) {
        this.loadedWebView = webView;
    }

    public void setMraidDelegate(com.vungle.ads.internal.ui.view.b bVar) {
        this.mraidDelegate = bVar;
    }

    public final void setMraidDelegate$vungle_ads_release(com.vungle.ads.internal.ui.view.b bVar) {
        this.mraidDelegate = bVar;
    }

    public final void setReady$vungle_ads_release(boolean z) {
        this.ready = z;
    }

    public final void setViewable$vungle_ads_release(Boolean bool) {
        this.isViewable = bool;
    }

    public void setWebViewObserver(WebViewObserver webViewObserver) {
        this.webViewObserver = webViewObserver;
    }

    public final void setWebViewObserver$vungle_ads_release(WebViewObserver webViewObserver) {
        this.webViewObserver = webViewObserver;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(final WebView view, String url) {
        Log.d(TAG, "MRAID Command " + url);
        if (url == null || url.length() == 0) {
            Log.e(TAG, "Invalid URL ");
            return false;
        }
        Uri uri = Uri.parse(url);
        if (uri == null || uri.getScheme() == null) {
            return false;
        }
        String scheme = uri.getScheme();
        if (Intrinsics.areEqual(scheme, CampaignEx.JSON_KEY_MRAID)) {
            final String host = uri.getHost();
            if (host != null) {
                if (!Intrinsics.areEqual("propertiesChangeCompleted", host)) {
                    final com.vungle.ads.internal.ui.view.b bVar = this.mraidDelegate;
                    if (bVar != null) {
                        JsonObjectBuilder jsonObjectBuilder = new JsonObjectBuilder();
                        for (String param : uri.getQueryParameterNames()) {
                            Intrinsics.checkNotNullExpressionValue(param, "param");
                            JsonElementBuildersKt.put(jsonObjectBuilder, param, uri.getQueryParameter(param));
                        }
                        final JsonObject jsonObjectA = jsonObjectBuilder.a();
                        final Handler handler = new Handler(Looper.getMainLooper());
                        this.offloadExecutor.submit(new Runnable() { // from class: com.vungle.ads.internal.ui.a
                            @Override // java.lang.Runnable
                            public final void run() {
                                VungleWebClient.m1161shouldOverrideUrlLoading$lambda4$lambda3$lambda2(bVar, host, jsonObjectA, handler, this, view);
                            }
                        });
                    }
                } else if (!this.ready) {
                    runJavascriptOnWebView(view, "window.vungle.mraidBridge.notifyReadyEvent(" + this.advertisement.createMRAIDArgs() + ')');
                    this.ready = true;
                }
                return true;
            }
        } else if (StringsKt__StringsJVMKt.equals(ProxyConfig.MATCH_HTTP, scheme, true) || StringsKt__StringsJVMKt.equals("https", scheme, true)) {
            Log.d(TAG, "Open URL" + url);
            com.vungle.ads.internal.ui.view.b bVar2 = this.mraidDelegate;
            if (bVar2 != null) {
                JsonObjectBuilder jsonObjectBuilder2 = new JsonObjectBuilder();
                JsonElementBuildersKt.put(jsonObjectBuilder2, "url", url);
                bVar2.processCommand("openNonMraid", jsonObjectBuilder2.a());
            }
            return true;
        }
        return false;
    }
}
