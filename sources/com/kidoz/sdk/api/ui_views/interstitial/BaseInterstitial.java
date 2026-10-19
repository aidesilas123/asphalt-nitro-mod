package com.kidoz.sdk.api.ui_views.interstitial;

import com.kidoz.sdk.api.general.KidozError;

/* JADX INFO: loaded from: classes4.dex */
public class BaseInterstitial {
    protected IntrstWrapper mInterstitialView;

    public interface IOnInterstitialEventListener {
        void onAdFailedToShow(KidozError kidozError);

        void onAdImpression();

        void onAdLoaded();

        void onAdShown();

        void onClosed();

        void onFailedToLoad(KidozError kidozError);
    }

    public interface IOnInterstitialRewardedEventListener {
        void onRewardReceived();
    }
}
