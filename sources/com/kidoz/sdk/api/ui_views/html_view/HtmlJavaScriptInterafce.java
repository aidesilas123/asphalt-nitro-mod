package com.kidoz.sdk.api.ui_views.html_view;

import android.webkit.JavascriptInterface;

/* JADX INFO: loaded from: classes4.dex */
public interface HtmlJavaScriptInterafce {
    @JavascriptInterface
    void forwardToGooglePlay(String str, String str2, String str3, String str4, String str5, String str6);

    @JavascriptInterface
    void getLocalParameter(String str, String str2);

    @JavascriptInterface
    void getParentalLockStatus(String str);

    @JavascriptInterface
    void notifyAdFailedToStart(int i, String str);

    @JavascriptInterface
    void notifyAdImpression();

    @JavascriptInterface
    void notifyAdStarted();

    @JavascriptInterface
    void onAdStateChanged(int i);

    @JavascriptInterface
    void onDone();

    @JavascriptInterface
    void onInitWebViewWithProperties(String str);

    @JavascriptInterface
    void onInvokeAboutClick();

    @JavascriptInterface
    void onInvokeCloseClick();

    @JavascriptInterface
    void onInvokeMaximize();

    @JavascriptInterface
    void onInvokeParentalClick();

    @JavascriptInterface
    void onRewarded();

    @JavascriptInterface
    void onRewardedVideoStarted();

    @JavascriptInterface
    void onSendConversionEvent(String str, String str2, String str3, String str4, String str5, String str6);

    @JavascriptInterface
    void onSendImpressionEvent(String str, String str2, String str3, String str4);

    @JavascriptInterface
    void onStoreLocalParameter(String str, String str2, String str3);

    @JavascriptInterface
    void onViewReady();

    @JavascriptInterface
    void onViewReady2();

    @JavascriptInterface
    void playVideo(String str);

    @JavascriptInterface
    void sendEvent(String str, String str2, String str3, String str4, String str5);

    @JavascriptInterface
    void sendURLEvent(String str);

    @JavascriptInterface
    void setBlockClick(boolean z);

    @JavascriptInterface
    void setDeviceOrientation(int i);

    @JavascriptInterface
    void simulateClick(String str, int i);

    @JavascriptInterface
    void toggleLoadingState(String str);

    @JavascriptInterface
    void toggleWidgetState(boolean z);
}
