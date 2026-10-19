package com.json.adapters.custom.kidoz;

import android.app.Activity;
import android.util.Log;
import com.json.adapters.custom.kidoz.utils.InterstitialLifecycleHandler;
import com.json.mediationsdk.adunit.adapter.BaseInterstitial;
import com.json.mediationsdk.adunit.adapter.listener.InterstitialAdListener;
import com.json.mediationsdk.adunit.adapter.utility.AdData;
import com.json.mediationsdk.logger.IronSourceError;
import com.json.mediationsdk.model.NetworkSettings;
import com.kidoz.sdk.api.ads.fullscreen.interstitial.InterstitialAd;

/* JADX INFO: loaded from: classes3.dex */
public class KidozCustomInterstitial extends BaseInterstitial<KidozCustomAdapter> {
    public static final String TAG = "KidozCustomInterstitial";
    private InterstitialLifecycleHandler interstitialLifecycleHandler;

    public KidozCustomInterstitial(NetworkSettings networkSettings) {
        super(networkSettings);
        Log.d(TAG, "constructor");
    }

    @Override // com.json.mediationsdk.adunit.adapter.BaseInterstitial, com.json.mediationsdk.adunit.adapter.internal.BaseAdInteractionAdapter, com.json.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public boolean isAdAvailable(AdData adData) {
        InterstitialLifecycleHandler interstitialLifecycleHandler = this.interstitialLifecycleHandler;
        return interstitialLifecycleHandler != null && interstitialLifecycleHandler.isAdLoaded();
    }

    @Override // com.json.mediationsdk.adunit.adapter.BaseInterstitial, com.json.mediationsdk.adunit.adapter.internal.BaseAdInteractionAdapter, com.json.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public void loadAd(AdData adData, Activity activity, InterstitialAdListener interstitialAdListener) {
        Log.d(TAG, "loadAd");
        InterstitialLifecycleHandler interstitialLifecycleHandler = new InterstitialLifecycleHandler(interstitialAdListener);
        this.interstitialLifecycleHandler = interstitialLifecycleHandler;
        InterstitialAd.load(activity, interstitialLifecycleHandler);
    }

    @Override // com.json.mediationsdk.adunit.adapter.BaseInterstitial, com.json.mediationsdk.adunit.adapter.internal.BaseAdInteractionAdapter, com.json.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public void showAd(AdData adData, InterstitialAdListener interstitialAdListener) {
        Log.d(TAG, "showAd");
        if (isAdAvailable(adData)) {
            this.interstitialLifecycleHandler.show(interstitialAdListener);
        } else {
            interstitialAdListener.onAdShowFailed(IronSourceError.ERROR_IS_SHOW_EXCEPTION, "Interstitial is not loaded");
        }
    }
}
