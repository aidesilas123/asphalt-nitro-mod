package com.json.adapters.custom.kidoz.utils;

import android.util.Log;
import com.json.adapters.custom.kidoz.KidozCustomRewardedVideo;
import com.json.d1;
import com.json.hc;
import com.json.mediationsdk.adunit.adapter.listener.RewardedVideoAdListener;
import com.json.mediationsdk.adunit.adapter.utility.AdapterErrorType;
import com.json.mediationsdk.logger.IronSourceError;
import com.kidoz.sdk.api.ads.fullscreen.rewarded.RewardedAd;
import com.kidoz.sdk.api.ads.fullscreen.rewarded.RewardedAdCallback;
import com.kidoz.sdk.api.general.KidozError;

/* JADX INFO: loaded from: classes3.dex */
public class RewardedLifecycleHandler implements RewardedAdCallback {
    protected final String TAG = KidozCustomRewardedVideo.TAG;
    RewardedAd ad;
    protected RewardedVideoAdListener mIronSourceListener;

    public RewardedLifecycleHandler(RewardedVideoAdListener rewardedVideoAdListener) {
        this.mIronSourceListener = rewardedVideoAdListener;
    }

    public boolean isAdLoaded() {
        RewardedAd rewardedAd = this.ad;
        return rewardedAd != null && rewardedAd.isLoaded();
    }

    @Override // com.kidoz.sdk.api.ads.AdCallback
    public void onAdClosed(RewardedAd rewardedAd) {
        Log.d(this.TAG, hc.f6150g);
        RewardedVideoAdListener rewardedVideoAdListener = this.mIronSourceListener;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onAdClosed();
        }
    }

    @Override // com.kidoz.sdk.api.ads.AdCallback
    public void onAdFailedToLoad(KidozError kidozError) {
        Log.d(this.TAG, "onAdFailedToLoad");
        this.mIronSourceListener.onAdLoadFailed(kidozError.getErrorCode() == 10404 ? AdapterErrorType.ADAPTER_ERROR_TYPE_NO_FILL : AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL, kidozError.getErrorCode(), kidozError.getMessage());
    }

    @Override // com.kidoz.sdk.api.ads.AdCallback
    public void onAdFailedToShow(KidozError kidozError) {
        Log.d(this.TAG, "onAdFailedToShow");
        this.mIronSourceListener.onAdShowFailed(IronSourceError.ERROR_IS_SHOW_EXCEPTION, kidozError.toString());
    }

    @Override // com.kidoz.sdk.api.ads.AdCallback
    public void onAdImpression() {
        Log.d(this.TAG, "onAdImpression");
    }

    @Override // com.kidoz.sdk.api.ads.AdCallback
    public void onAdLoaded(RewardedAd rewardedAd) {
        Log.d(this.TAG, hc.j);
        this.ad = rewardedAd;
        RewardedVideoAdListener rewardedVideoAdListener = this.mIronSourceListener;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onAdLoadSuccess();
        }
    }

    @Override // com.kidoz.sdk.api.ads.AdCallback
    public void onAdShown(RewardedAd rewardedAd) {
        Log.d(this.TAG, "onAdShown");
        RewardedVideoAdListener rewardedVideoAdListener = this.mIronSourceListener;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onAdOpened();
        }
    }

    @Override // com.kidoz.sdk.api.ui_views.interstitial.BaseInterstitial.IOnInterstitialRewardedEventListener
    public void onRewardReceived() {
        Log.d(this.TAG, "onRewardReceived");
        RewardedVideoAdListener rewardedVideoAdListener = this.mIronSourceListener;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onAdRewarded();
        }
    }

    public void show(RewardedVideoAdListener rewardedVideoAdListener) {
        Log.d(this.TAG, d1.u);
        this.mIronSourceListener = rewardedVideoAdListener;
        this.ad.show();
    }
}
