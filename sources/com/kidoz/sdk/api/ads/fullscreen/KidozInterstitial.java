package com.kidoz.sdk.api.ads.fullscreen;

import android.app.Activity;
import com.kidoz.sdk.api.general.UniquePlacement.UniquePlacementHelper;
import com.kidoz.sdk.api.ui_views.interstitial.BaseInterstitial;
import com.kidoz.sdk.api.ui_views.interstitial.IntrstWrapper;

/* JADX INFO: loaded from: classes4.dex */
public class KidozInterstitial extends BaseInterstitial {
    public static final String TAG = "KidozInterstitial";

    public enum AD_TYPE {
        INTERSTITIAL(0),
        REWARDED_VIDEO(1);

        private int value;

        AD_TYPE(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    protected KidozInterstitial(Activity activity, String str, AD_TYPE ad_type) {
        initInnerWrapper(activity, str, ad_type);
        setRequestType();
    }

    public void destroy() {
        this.mInterstitialView.destroy();
        this.mInterstitialView = null;
    }

    protected void initInnerWrapper(Activity activity, String str, AD_TYPE ad_type) {
        IntrstWrapper intrstWrapper = new IntrstWrapper(activity, str);
        this.mInterstitialView = intrstWrapper;
        intrstWrapper.setAdType(ad_type);
    }

    protected boolean isLoaded() {
        IntrstWrapper intrstWrapper = this.mInterstitialView;
        if (intrstWrapper != null) {
            return intrstWrapper.isInterstitialLoaded();
        }
        return false;
    }

    synchronized void loadAd() {
        this.mInterstitialView.setIsLocalRequest(false);
        IntrstWrapper intrstWrapper = this.mInterstitialView;
        if (intrstWrapper != null) {
            intrstWrapper.load(intrstWrapper.getAdType());
        }
    }

    protected void setOnInterstitialEventListener(BaseInterstitial.IOnInterstitialEventListener iOnInterstitialEventListener) {
        if (this.mInterstitialView.getPlacementHelper() != null) {
            this.mInterstitialView.getPlacementHelper().setExternalInterstitialListener(iOnInterstitialEventListener);
        }
    }

    public void setOnInterstitialRewardedEventListener(BaseInterstitial.IOnInterstitialRewardedEventListener iOnInterstitialRewardedEventListener) {
        UniquePlacementHelper placementHelper = this.mInterstitialView.getPlacementHelper();
        if (placementHelper != null) {
            placementHelper.setExternalRewardedListener(iOnInterstitialRewardedEventListener);
        }
    }

    protected void setRequestType() {
        this.mInterstitialView.setIsLocalRequest(false);
    }

    public synchronized void show() {
        IntrstWrapper intrstWrapper = this.mInterstitialView;
        if (intrstWrapper != null) {
            intrstWrapper.show();
        }
    }
}
