package com.json.mediationsdk.sdk;

import com.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public interface InterstitialListener {
    @Deprecated
    void onInterstitialAdClicked();

    @Deprecated
    void onInterstitialAdClosed();

    @Deprecated
    void onInterstitialAdLoadFailed(IronSourceError ironSourceError);

    @Deprecated
    void onInterstitialAdOpened();

    @Deprecated
    void onInterstitialAdReady();

    @Deprecated
    void onInterstitialAdShowFailed(IronSourceError ironSourceError);

    @Deprecated
    void onInterstitialAdShowSucceeded();
}
