package com.json.adapters.custom.combo;

import android.app.Activity;
import android.text.TextUtils;
import com.json.mediationsdk.adunit.adapter.BaseRewardedVideo;
import com.json.mediationsdk.adunit.adapter.listener.RewardedVideoAdListener;
import com.json.mediationsdk.adunit.adapter.utility.AdData;
import com.json.mediationsdk.adunit.adapter.utility.AdapterErrorType;
import com.json.mediationsdk.model.NetworkSettings;

/* JADX INFO: loaded from: classes3.dex */
public class ComboCustomRewardedVideo extends BaseRewardedVideo<ComboCustomAdapter> {
    public ComboCustomRewardedVideo(NetworkSettings networkSettings) {
        super(networkSettings);
    }

    @Override // com.json.mediationsdk.adunit.adapter.BaseRewardedVideo, com.json.mediationsdk.adunit.adapter.internal.BaseAdInteractionAdapter, com.json.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public boolean isAdAvailable(AdData adData) {
        String string = adData.getString("instance_id");
        if (TextUtils.isEmpty(string)) {
            return false;
        }
        return ComboCustomAdapter.IsAdLoaded(2, string);
    }

    @Override // com.json.mediationsdk.adunit.adapter.BaseRewardedVideo, com.json.mediationsdk.adunit.adapter.internal.BaseAdInteractionAdapter, com.json.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public void loadAd(AdData adData, Activity activity, RewardedVideoAdListener rewardedVideoAdListener) {
        String string = adData.getString("instance_id");
        if (TextUtils.isEmpty(string)) {
            rewardedVideoAdListener.onAdShowFailed(1020, null);
        } else {
            ComboCustomAdapter.rewardedVideoAdListenerMap.put(string, rewardedVideoAdListener);
            ComboCustomAdapter.LoadAd(2, string);
        }
    }

    @Override // com.json.mediationsdk.adunit.adapter.BaseRewardedVideo, com.json.mediationsdk.adunit.adapter.internal.BaseAdInteractionAdapter, com.json.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public void showAd(AdData adData, RewardedVideoAdListener rewardedVideoAdListener) {
        String string = adData.getString("instance_id");
        if (TextUtils.isEmpty(string)) {
            rewardedVideoAdListener.onAdLoadFailed(AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL, 1020, null);
        } else {
            ComboCustomAdapter.rewardedVideoAdListenerMap.put(string, rewardedVideoAdListener);
            ComboCustomAdapter.ShowLoadedAd(2, string);
        }
    }
}
