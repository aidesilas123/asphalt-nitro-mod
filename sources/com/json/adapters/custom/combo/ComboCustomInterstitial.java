package com.json.adapters.custom.combo;

import android.app.Activity;
import android.text.TextUtils;
import com.json.mediationsdk.adunit.adapter.BaseInterstitial;
import com.json.mediationsdk.adunit.adapter.listener.InterstitialAdListener;
import com.json.mediationsdk.adunit.adapter.utility.AdData;
import com.json.mediationsdk.adunit.adapter.utility.AdapterErrorType;
import com.json.mediationsdk.model.NetworkSettings;

/* JADX INFO: loaded from: classes3.dex */
public class ComboCustomInterstitial extends BaseInterstitial<ComboCustomAdapter> {
    public ComboCustomInterstitial(NetworkSettings networkSettings) {
        super(networkSettings);
    }

    @Override // com.json.mediationsdk.adunit.adapter.BaseInterstitial, com.json.mediationsdk.adunit.adapter.internal.BaseAdInteractionAdapter, com.json.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public boolean isAdAvailable(AdData adData) {
        String string = adData.getString("instance_id");
        if (TextUtils.isEmpty(string)) {
            return false;
        }
        return ComboCustomAdapter.IsAdLoaded(1, string);
    }

    @Override // com.json.mediationsdk.adunit.adapter.BaseInterstitial, com.json.mediationsdk.adunit.adapter.internal.BaseAdInteractionAdapter, com.json.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public void loadAd(AdData adData, Activity activity, InterstitialAdListener interstitialAdListener) {
        String string = adData.getString("instance_id");
        if (TextUtils.isEmpty(string)) {
            interstitialAdListener.onAdShowFailed(1020, null);
        } else {
            ComboCustomAdapter.interstitialAdListenerMap.put(string, interstitialAdListener);
            ComboCustomAdapter.LoadAd(1, string);
        }
    }

    @Override // com.json.mediationsdk.adunit.adapter.BaseInterstitial, com.json.mediationsdk.adunit.adapter.internal.BaseAdInteractionAdapter, com.json.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public void showAd(AdData adData, InterstitialAdListener interstitialAdListener) {
        String string = adData.getString("instance_id");
        if (TextUtils.isEmpty(string)) {
            interstitialAdListener.onAdLoadFailed(AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL, 1020, null);
        } else {
            ComboCustomAdapter.interstitialAdListenerMap.put(string, interstitialAdListener);
            ComboCustomAdapter.ShowLoadedAd(1, string);
        }
    }
}
