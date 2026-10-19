package com.kidoz.sdk.api.ads.fullscreen.interstitial;

import android.app.Activity;
import com.kidoz.sdk.api.ads.fullscreen.FullScreenAd;
import com.kidoz.sdk.api.ads.fullscreen.KidozInterstitial;

/* JADX INFO: loaded from: classes4.dex */
public class InterstitialAd extends FullScreenAd {
    public InterstitialAd(Activity activity, String str) {
        super(activity, str, KidozInterstitial.AD_TYPE.INTERSTITIAL);
    }

    public static void load(Activity activity, InterstitialAdCallback interstitialAdCallback) {
        InterstitialManager.getInstance().loadAd(activity, FullScreenAd.DEFAULT_INSTANCE_ID, interstitialAdCallback);
    }
}
