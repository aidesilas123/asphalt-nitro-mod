package com.json.adapters.custom.kidoz.utils;

import android.util.Log;
import com.json.adapters.custom.kidoz.KidozCustomInterstitial;
import com.json.d1;
import com.json.hc;
import com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener;
import com.json.mediationsdk.adunit.adapter.listener.InterstitialAdListener;
import com.json.mediationsdk.adunit.adapter.utility.AdapterErrorType;
import com.json.mediationsdk.logger.IronSourceError;
import com.kidoz.sdk.api.ads.fullscreen.interstitial.InterstitialAd;
import com.kidoz.sdk.api.ads.fullscreen.interstitial.InterstitialAdCallback;
import com.kidoz.sdk.api.general.KidozError;

/* JADX INFO: loaded from: classes3.dex */
public class InterstitialLifecycleHandler implements InterstitialAdCallback {
    protected final String TAG = KidozCustomInterstitial.TAG;
    InterstitialAd ad;
    protected AdapterAdInteractionListener mIronSourceListener;

    public InterstitialLifecycleHandler(AdapterAdInteractionListener adapterAdInteractionListener) {
        this.mIronSourceListener = adapterAdInteractionListener;
    }

    public boolean isAdLoaded() {
        InterstitialAd interstitialAd = this.ad;
        return interstitialAd != null && interstitialAd.isLoaded();
    }

    @Override // com.kidoz.sdk.api.ads.AdCallback
    public void onAdClosed(InterstitialAd interstitialAd) {
        Log.d(this.TAG, hc.f6150g);
        AdapterAdInteractionListener adapterAdInteractionListener = this.mIronSourceListener;
        if (adapterAdInteractionListener != null) {
            adapterAdInteractionListener.onAdClosed();
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
    public void onAdLoaded(InterstitialAd interstitialAd) {
        Log.d(this.TAG, hc.j);
        this.ad = interstitialAd;
        AdapterAdInteractionListener adapterAdInteractionListener = this.mIronSourceListener;
        if (adapterAdInteractionListener != null) {
            adapterAdInteractionListener.onAdLoadSuccess();
        }
    }

    @Override // com.kidoz.sdk.api.ads.AdCallback
    public void onAdShown(InterstitialAd interstitialAd) {
        Log.d(this.TAG, "onAdShown");
        AdapterAdInteractionListener adapterAdInteractionListener = this.mIronSourceListener;
        if (adapterAdInteractionListener != null) {
            adapterAdInteractionListener.onAdOpened();
        }
    }

    public void show(InterstitialAdListener interstitialAdListener) {
        Log.d(this.TAG, d1.u);
        this.mIronSourceListener = interstitialAdListener;
        this.ad.show();
    }
}
