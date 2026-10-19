package com.json.adapters.custom.kidoz;

import android.app.Activity;
import android.util.Log;
import com.json.adapters.custom.kidoz.utils.RewardedLifecycleHandler;
import com.json.mediationsdk.adunit.adapter.BaseRewardedVideo;
import com.json.mediationsdk.adunit.adapter.listener.RewardedVideoAdListener;
import com.json.mediationsdk.adunit.adapter.utility.AdData;
import com.json.mediationsdk.logger.IronSourceError;
import com.json.mediationsdk.model.NetworkSettings;
import com.kidoz.sdk.api.ads.fullscreen.rewarded.RewardedAd;

/* JADX INFO: loaded from: classes3.dex */
public class KidozCustomRewardedVideo extends BaseRewardedVideo<KidozCustomAdapter> {
    public static final String TAG = "KidozCustomRewardedVideo";
    private RewardedLifecycleHandler rewardedLifecycleHandler;

    public KidozCustomRewardedVideo(NetworkSettings networkSettings) {
        super(networkSettings);
        Log.d(TAG, "constructor");
    }

    @Override // com.json.mediationsdk.adunit.adapter.BaseRewardedVideo, com.json.mediationsdk.adunit.adapter.internal.BaseAdInteractionAdapter, com.json.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public boolean isAdAvailable(AdData adData) {
        RewardedLifecycleHandler rewardedLifecycleHandler = this.rewardedLifecycleHandler;
        return rewardedLifecycleHandler != null && rewardedLifecycleHandler.isAdLoaded();
    }

    @Override // com.json.mediationsdk.adunit.adapter.BaseRewardedVideo, com.json.mediationsdk.adunit.adapter.internal.BaseAdInteractionAdapter, com.json.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public void loadAd(AdData adData, Activity activity, RewardedVideoAdListener rewardedVideoAdListener) {
        Log.d(TAG, "loadAd");
        RewardedLifecycleHandler rewardedLifecycleHandler = new RewardedLifecycleHandler(rewardedVideoAdListener);
        this.rewardedLifecycleHandler = rewardedLifecycleHandler;
        RewardedAd.load(activity, rewardedLifecycleHandler);
    }

    @Override // com.json.mediationsdk.adunit.adapter.BaseRewardedVideo, com.json.mediationsdk.adunit.adapter.internal.BaseAdInteractionAdapter, com.json.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public void showAd(AdData adData, RewardedVideoAdListener rewardedVideoAdListener) {
        Log.d(TAG, "showAd");
        if (isAdAvailable(adData)) {
            this.rewardedLifecycleHandler.show(rewardedVideoAdListener);
        } else {
            rewardedVideoAdListener.onAdShowFailed(IronSourceError.ERROR_RV_SHOW_EXCEPTION, "Rewarded is not loaded");
        }
    }
}
