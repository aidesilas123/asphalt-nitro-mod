package com.kidoz.sdk.api.ads.fullscreen.interstitial;

import android.app.Activity;
import com.kidoz.sdk.api.ads.fullscreen.KidozFullScreenAdManager;

/* JADX INFO: loaded from: classes4.dex */
public class InterstitialManager extends KidozFullScreenAdManager {
    private static InterstitialManager instance;

    private InterstitialManager() {
    }

    public static void clearActivitySession(int i) {
        instance.clearActivitySession_(i);
    }

    protected static InterstitialManager getInstance() {
        return instance;
    }

    public static void resetSession() {
        instance = new InterstitialManager();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kidoz.sdk.api.ads.fullscreen.KidozFullScreenAdManager
    public InterstitialAd getNewAdInstance(Activity activity, String str) {
        return new InterstitialAd(activity, str);
    }

    protected void loadAd(Activity activity, String str, InterstitialAdCallback interstitialAdCallback) {
        loadFullScreenAd(activity, str, interstitialAdCallback);
    }
}
