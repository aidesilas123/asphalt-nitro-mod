package com.kidoz.sdk.api.ads.fullscreen;

import android.app.Activity;
import com.kidoz.sdk.api.ads.fullscreen.KidozInterstitial;
import com.kidoz.sdk.api.ui_views.interstitial.BaseInterstitial;

/* JADX INFO: loaded from: classes4.dex */
public class FullScreenAd {
    protected static String DEFAULT_INSTANCE_ID = "defaultInstanceId";
    private int contextId;
    private String instanceId;
    private KidozInterstitial kidozInterstitial;

    protected FullScreenAd(Activity activity, String str, KidozInterstitial.AD_TYPE ad_type) {
        this.kidozInterstitial = new KidozInterstitial(activity, str, ad_type);
        this.instanceId = str;
        this.contextId = activity.hashCode();
    }

    protected void destroy() {
        KidozInterstitial kidozInterstitial = this.kidozInterstitial;
        if (kidozInterstitial != null) {
            kidozInterstitial.destroy();
            this.kidozInterstitial = null;
        }
    }

    public int getContextId() {
        return this.contextId;
    }

    public String getInstanceId() {
        return this.instanceId;
    }

    public boolean isLoaded() {
        return this.kidozInterstitial.isLoaded();
    }

    protected void load() {
        this.kidozInterstitial.loadAd();
    }

    protected void setInternalFullScreenEventListener(BaseInterstitial.IOnInterstitialEventListener iOnInterstitialEventListener) {
        this.kidozInterstitial.setOnInterstitialEventListener(iOnInterstitialEventListener);
    }

    protected void setRewardedEventListener(BaseInterstitial.IOnInterstitialRewardedEventListener iOnInterstitialRewardedEventListener) {
        this.kidozInterstitial.setOnInterstitialRewardedEventListener(iOnInterstitialRewardedEventListener);
    }

    public void show() {
        this.kidozInterstitial.show();
    }
}
