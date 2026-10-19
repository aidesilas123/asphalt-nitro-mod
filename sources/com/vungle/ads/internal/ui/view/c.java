package com.vungle.ads.internal.ui.view;

import android.webkit.WebView;
import android.webkit.WebViewRenderProcess;
import kotlin.Metadata;

/* JADX INFO: compiled from: WebViewAPI.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u001c\u0010\b\u001a\u00020\u00032\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH&J!\u0010\r\u001a\u00020\u00072\b\u0010\u000e\u001a\u0004\u0018\u00010\n2\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H&¢\u0006\u0002\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/vungle/ads/internal/ui/view/WebViewAPI$WebClientErrorHandler;", "", "onReceivedError", "", "errorDesc", "", "didCrash", "", "onRenderProcessUnresponsive", "webView", "Landroid/webkit/WebView;", "webViewRenderProcess", "Landroid/webkit/WebViewRenderProcess;", "onWebRenderingProcessGone", "view", "(Landroid/webkit/WebView;Ljava/lang/Boolean;)Z", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
public interface c {
    void onReceivedError(String errorDesc, boolean didCrash);

    void onRenderProcessUnresponsive(WebView webView, WebViewRenderProcess webViewRenderProcess);

    boolean onWebRenderingProcessGone(WebView view, Boolean didCrash);
}
