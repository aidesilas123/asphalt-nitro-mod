package com.kidoz.sdk.api.ads.fullscreen.rewarded;

import android.app.Activity;
import com.kidoz.sdk.api.ads.fullscreen.FullScreenAd;
import com.kidoz.sdk.api.ads.fullscreen.KidozInterstitial;

/* JADX INFO: loaded from: classes4.dex */
public class RewardedAd extends FullScreenAd {
    RewardedAd(Activity activity, String str) {
        super(activity, str, KidozInterstitial.AD_TYPE.REWARDED_VIDEO);
    }

    public static void load(Activity activity, RewardedAdCallback rewardedAdCallback) {
        RewardedManager.getInstance().loadAd(activity, FullScreenAd.DEFAULT_INSTANCE_ID, rewardedAdCallback);
    }
}
