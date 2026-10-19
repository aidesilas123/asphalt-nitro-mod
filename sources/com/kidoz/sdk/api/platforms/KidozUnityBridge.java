package com.kidoz.sdk.api.platforms;

import android.app.Activity;
import android.content.Context;
import com.hyprmx.android.sdk.core.HyprMXMediationProvider;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.kidoz.sdk.api.KidozSDK;
import com.kidoz.sdk.api.general.KidozError;
import com.unity3d.player.UnityPlayer;

/* JADX INFO: loaded from: classes4.dex */
public final class KidozUnityBridge extends BasePlatformsBridge {
    private String ON_BANNER_CLOSED;
    private String ON_BANNER_FAILED_TO_LOAD;
    private String ON_BANNER_FAILED_TO_SHOW;
    private String ON_BANNER_IMPRESSION;
    private String ON_BANNER_LOADED;
    private String ON_BANNER_SHOWN;
    private String ON_INTERSTITIAL_CLOSED;
    private String ON_INTERSTITIAL_FAILED_TO_LOAD;
    private String ON_INTERSTITIAL_FAILED_TO_SHOW;
    private String ON_INTERSTITIAL_IMPRESSION;
    private String ON_INTERSTITIAL_LOADED;
    private String ON_INTERSTITIAL_SHOWN;
    private String ON_REWARDED_CLOSED;
    private String ON_REWARDED_FAILED_TO_LOAD;
    private String ON_REWARDED_FAILED_TO_SHOW;
    private String ON_REWARDED_IMPRESSION;
    private String ON_REWARDED_LOADED;
    private String ON_REWARDED_RECEIVED;
    private String ON_REWARDED_SHOWN;
    private String ON_SDK_INIT_ERROR;
    private String ON_SDK_INIT_SUCCESS;
    private String mGameObject;

    public KidozUnityBridge(Context context) {
        super(context);
        this.ON_SDK_INIT_SUCCESS = "initSuccessCallback";
        this.ON_SDK_INIT_ERROR = "initErrorCallback";
        this.ON_INTERSTITIAL_LOADED = "interstitialLoadedCallBack";
        this.ON_INTERSTITIAL_FAILED_TO_LOAD = "interstitialFailedToLoadCallBack";
        this.ON_INTERSTITIAL_SHOWN = "interstitialShownCallBack";
        this.ON_INTERSTITIAL_FAILED_TO_SHOW = "interstitialFailedToShowCallBack";
        this.ON_INTERSTITIAL_IMPRESSION = "interstitialImpressionCallBack";
        this.ON_INTERSTITIAL_CLOSED = "interstitialClosedCallBack";
        this.ON_REWARDED_LOADED = "rewardedLoadedCallBack";
        this.ON_REWARDED_FAILED_TO_LOAD = "rewardedFailedToLoadCallBack";
        this.ON_REWARDED_SHOWN = "rewardedShownCallBack";
        this.ON_REWARDED_FAILED_TO_SHOW = "rewardedFailedToShowCallBack";
        this.ON_REWARDED_IMPRESSION = "rewardedImpressionCallBack";
        this.ON_REWARDED_RECEIVED = "rewardedReceivedCallBack";
        this.ON_REWARDED_CLOSED = "rewardedClosedCallBack";
        this.ON_BANNER_LOADED = "bannerLoadedCallBack";
        this.ON_BANNER_FAILED_TO_LOAD = "bannerFailedToLoadCallBack";
        this.ON_BANNER_SHOWN = "bannerShownCallBack";
        this.ON_BANNER_FAILED_TO_SHOW = "bannerFailedToShowCallBack";
        this.ON_BANNER_IMPRESSION = "bannerImpressionCallBack";
        this.ON_BANNER_CLOSED = "bannerClosedCallBack";
    }

    public static KidozUnityBridge getInstance(Context context) {
        return new KidozUnityBridge(context);
    }

    public void initialize(Activity activity, String str, String str2, String str3, String str4) {
        this.mGameObject = str4;
        KidozSDK.setExtension(HyprMXMediationProvider.UNITY, str3);
        KidozSDK.initialize(activity, str, str2);
    }

    @Override // com.kidoz.sdk.api.platforms.BasePlatformsBridge
    public boolean isInitialised() {
        return KidozSDK.isInitialised();
    }

    @Override // com.kidoz.sdk.api.platforms.BasePlatformsBridge
    public void onBannerClosed() {
        String str = this.mGameObject;
        if (str != null) {
            UnityPlayer.UnitySendMessage(str, this.ON_BANNER_CLOSED, "Banner Close");
        }
    }

    @Override // com.kidoz.sdk.api.platforms.BasePlatformsBridge
    public void onBannerFailedToLoad(KidozError kidozError) {
        String str = this.mGameObject;
        if (str != null) {
            UnityPlayer.UnitySendMessage(str, this.ON_BANNER_FAILED_TO_LOAD, kidozError.getMessage());
        }
    }

    @Override // com.kidoz.sdk.api.platforms.BasePlatformsBridge
    public void onBannerFailedToShow(KidozError kidozError) {
        String str = this.mGameObject;
        if (str != null) {
            UnityPlayer.UnitySendMessage(str, this.ON_BANNER_FAILED_TO_SHOW, kidozError.getMessage());
        }
    }

    @Override // com.kidoz.sdk.api.platforms.BasePlatformsBridge
    public void onBannerImpression() {
        UnityPlayer.UnitySendMessage(this.mGameObject, this.ON_BANNER_IMPRESSION, "");
    }

    @Override // com.kidoz.sdk.api.platforms.BasePlatformsBridge
    public void onBannerLoaded() {
        String str = this.mGameObject;
        if (str != null) {
            UnityPlayer.UnitySendMessage(str, this.ON_BANNER_LOADED, "Banner loaded");
        }
    }

    @Override // com.kidoz.sdk.api.platforms.BasePlatformsBridge
    public void onBannerShown() {
        UnityPlayer.UnitySendMessage(this.mGameObject, this.ON_BANNER_SHOWN, "");
    }

    @Override // com.kidoz.sdk.api.platforms.BasePlatformsBridge
    public void onInterstitialClosed() {
        String str = this.mGameObject;
        if (str != null) {
            UnityPlayer.UnitySendMessage(str, this.ON_INTERSTITIAL_CLOSED, "Interstitial Closed");
        }
    }

    @Override // com.kidoz.sdk.api.platforms.BasePlatformsBridge
    public void onInterstitialFailedToLoad(KidozError kidozError) {
        String str = this.mGameObject;
        if (str != null) {
            UnityPlayer.UnitySendMessage(str, this.ON_INTERSTITIAL_FAILED_TO_LOAD, kidozError.getMessage());
        }
    }

    @Override // com.kidoz.sdk.api.platforms.BasePlatformsBridge
    public void onInterstitialFailedToShow(KidozError kidozError) {
        String str = this.mGameObject;
        if (str != null) {
            UnityPlayer.UnitySendMessage(str, this.ON_INTERSTITIAL_FAILED_TO_SHOW, kidozError.getMessage());
        }
    }

    @Override // com.kidoz.sdk.api.platforms.BasePlatformsBridge
    public void onInterstitialImpression() {
        String str = this.mGameObject;
        if (str != null) {
            UnityPlayer.UnitySendMessage(str, this.ON_INTERSTITIAL_IMPRESSION, "");
        }
    }

    @Override // com.kidoz.sdk.api.platforms.BasePlatformsBridge
    public void onInterstitialLoaded() {
        String str = this.mGameObject;
        if (str != null) {
            UnityPlayer.UnitySendMessage(str, this.ON_INTERSTITIAL_LOADED, "Interstitial loaded");
        }
    }

    @Override // com.kidoz.sdk.api.platforms.BasePlatformsBridge
    public void onInterstitialShown() {
        String str = this.mGameObject;
        if (str != null) {
            UnityPlayer.UnitySendMessage(str, this.ON_INTERSTITIAL_SHOWN, "Interstitial Opened");
        }
    }

    @Override // com.kidoz.sdk.api.platforms.BasePlatformsBridge
    public void onRewarded() {
        String str = this.mGameObject;
        if (str != null) {
            UnityPlayer.UnitySendMessage(str, this.ON_REWARDED_RECEIVED, IronSourceConstants.REWARDED_VIDEO_AD_UNIT);
        }
    }

    @Override // com.kidoz.sdk.api.platforms.BasePlatformsBridge
    public void onRewardedClosed() {
        String str = this.mGameObject;
        if (str != null) {
            UnityPlayer.UnitySendMessage(str, this.ON_REWARDED_CLOSED, "Rewarded Closed");
        }
    }

    @Override // com.kidoz.sdk.api.platforms.BasePlatformsBridge
    public void onRewardedFailedToLoad(KidozError kidozError) {
        String str = this.mGameObject;
        if (str != null) {
            UnityPlayer.UnitySendMessage(str, this.ON_REWARDED_FAILED_TO_LOAD, kidozError.getMessage());
        }
    }

    @Override // com.kidoz.sdk.api.platforms.BasePlatformsBridge
    public void onRewardedFailedToShow(KidozError kidozError) {
        String str = this.mGameObject;
        if (str != null) {
            UnityPlayer.UnitySendMessage(str, this.ON_REWARDED_FAILED_TO_SHOW, kidozError.getMessage());
        }
    }

    @Override // com.kidoz.sdk.api.platforms.BasePlatformsBridge
    public void onRewardedImpression() {
        String str = this.mGameObject;
        if (str != null) {
            UnityPlayer.UnitySendMessage(str, this.ON_REWARDED_IMPRESSION, "");
        }
    }

    @Override // com.kidoz.sdk.api.platforms.BasePlatformsBridge
    public void onRewardedLoaded() {
        String str = this.mGameObject;
        if (str != null) {
            UnityPlayer.UnitySendMessage(str, this.ON_REWARDED_LOADED, "Rewarded loaded");
        }
    }

    @Override // com.kidoz.sdk.api.platforms.BasePlatformsBridge
    public void onRewardedShown() {
        String str = this.mGameObject;
        if (str != null) {
            UnityPlayer.UnitySendMessage(str, this.ON_REWARDED_SHOWN, "Rewarded Opened");
        }
    }

    @Override // com.kidoz.sdk.api.platforms.BasePlatformsBridge
    protected void onSDKInitError(String str) {
        String str2 = this.mGameObject;
        if (str2 != null) {
            UnityPlayer.UnitySendMessage(str2, this.ON_SDK_INIT_ERROR, "Init Error: " + str);
        }
    }

    @Override // com.kidoz.sdk.api.platforms.BasePlatformsBridge
    public void onSDKInitSuccess() {
        String str = this.mGameObject;
        if (str != null) {
            UnityPlayer.UnitySendMessage(str, this.ON_SDK_INIT_SUCCESS, "Init Success");
        }
    }
}
