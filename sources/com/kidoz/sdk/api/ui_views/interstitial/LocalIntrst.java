package com.kidoz.sdk.api.ui_views.interstitial;

import android.app.Activity;
import com.kidoz.sdk.api.ads.fullscreen.KidozInterstitial;

/* JADX INFO: loaded from: classes4.dex */
public class LocalIntrst extends KidozInterstitial {
    private KidozInterstitial.AD_TYPE mAdType;

    public LocalIntrst(Activity activity, KidozInterstitial.AD_TYPE ad_type) {
        super(activity, "instanceId", ad_type);
        this.mAdType = ad_type;
    }

    public void loadAd() {
        this.mInterstitialView.setIsLocalRequest(true);
        IntrstWrapper intrstWrapper = this.mInterstitialView;
        if (intrstWrapper != null) {
            intrstWrapper.load(this.mAdType);
        }
    }

    @Override // com.kidoz.sdk.api.ads.fullscreen.KidozInterstitial
    protected void setRequestType() {
        this.mInterstitialView.setIsLocalRequest(true);
    }
}
