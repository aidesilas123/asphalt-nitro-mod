package com.kidoz.sdk.api.ads.fullscreen.rewarded;

import android.app.Activity;
import com.kidoz.sdk.api.ads.fullscreen.KidozFullScreenAdManager;

/* JADX INFO: loaded from: classes4.dex */
public class RewardedManager extends KidozFullScreenAdManager {
    private static RewardedManager instance;

    private RewardedManager() {
    }

    public static void clearActivitySession(int i) {
        instance.clearActivitySession_(i);
    }

    protected static RewardedManager getInstance() {
        return instance;
    }

    public static void resetSession() {
        instance = new RewardedManager();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kidoz.sdk.api.ads.fullscreen.KidozFullScreenAdManager
    public RewardedAd getNewAdInstance(Activity activity, String str) {
        return new RewardedAd(activity, str);
    }

    public void loadAd(Activity activity, String str, RewardedAdCallback rewardedAdCallback) {
        loadFullScreenAd(activity, str, rewardedAdCallback);
    }
}
