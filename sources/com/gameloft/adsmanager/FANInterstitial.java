package com.gameloft.adsmanager;

import com.facebook.GraphResponse;
import com.facebook.gamingservices.cloudgaming.DaemonRequest;
import com.facebook.gamingservices.cloudgaming.InAppAdLibrary;
import com.gameloft.adsmanager.Interstitial.BaseInterstitialObject;
import com.gameloft.adsmanager.JavaUtils;

/* JADX INFO: loaded from: classes2.dex */
public class FANInterstitial extends BaseInterstitialObject {
    private DaemonRequest.Callback callbackLoadInterstitial;
    private DaemonRequest.Callback callbackShowInterstitial;
    private FAN fanParent;
    private String sdkLocation;

    public FANInterstitial(FAN fan, final String str) {
        super(fan);
        this.sdkLocation = str;
        this.fanParent = fan;
        JavaUtils.AdsManagerLogInfo("FANInterstitial.java", "!!!!!", str);
        this.callbackShowInterstitial = new DaemonRequest.Callback() { // from class: com.gameloft.adsmanager.FANInterstitial.2
            @Override // com.facebook.gamingservices.cloudgaming.DaemonRequest.Callback
            public void onCompleted(GraphResponse graphResponse) {
                JavaUtils.AdsManagerLogInfo("FANInterstitial.java", "!!!!!", "Interstitial show callback");
                FANInterstitial.this.fanParent.OnResumeGameAudio();
                if (graphResponse == null) {
                    JavaUtils.AdsManagerLogInfo("FANInterstitial.java", "!!!!!", "Null response");
                    FANInterstitial.this.OnShowError(0, str);
                    FANInterstitial.this.fanParent.interstitials.PushPlacement(str);
                    return;
                }
                if (graphResponse.getError() != null) {
                    FANInterstitial.this.OnShowError(graphResponse.getError().getErrorCode(), str);
                    JavaUtils.AdsManagerLogInfo("FANInterstitial.java", "!!!!!!", "Error response :" + graphResponse.getError().toString());
                    FANInterstitial.this.fanParent.interstitials.PushPlacement(str);
                    return;
                }
                if (graphResponse.getJSONObject() != null) {
                    JavaUtils.AdsManagerLogInfo("FANInterstitial.java", "!!!!!", "JSON object" + graphResponse.getJSONObject().toString());
                    FANInterstitial.this.OnClose(str);
                }
            }
        };
        this.callbackLoadInterstitial = new DaemonRequest.Callback() { // from class: com.gameloft.adsmanager.FANInterstitial.3
            @Override // com.facebook.gamingservices.cloudgaming.DaemonRequest.Callback
            public void onCompleted(GraphResponse graphResponse) {
                JavaUtils.AdsManagerLogInfo("FANInterstitial.java", "!!!!!!", "Interstitial load callback");
                if (graphResponse == null) {
                    FANInterstitial.this.fanParent.OnInterstitialLoadError(0, str);
                    FANInterstitial.this.fanParent.interstitials.PushPlacement(str);
                    JavaUtils.AdsManagerLogInfo("FANInterstitial.java", "!!!!!!", "Null response");
                    return;
                }
                if (graphResponse.getError() != null) {
                    FANInterstitial.this.fanParent.OnInterstitialLoadError(0, str);
                    FANInterstitial.this.fanParent.interstitials.PushPlacement(str);
                    JavaUtils.AdsManagerLogInfo("FANInterstitial.java", "!!!!!!", "Error response interstitial:" + graphResponse.getError().toString());
                    return;
                }
                if (graphResponse.getJSONObject() != null) {
                    JavaUtils.AdsManagerLogInfo("FANInterstitial.java", "!!!!!!!", "interstitial JSON object IV:" + graphResponse.getJSONObject().toString());
                    FANInterstitial.this.fanParent.OnInterstitialAvailable(FANInterstitial.this);
                }
            }
        };
    }

    @Override // com.gameloft.adsmanager.Interstitial.InterstitialObjectInterface
    public void Close() {
    }

    @Override // com.gameloft.adsmanager.Interstitial.InterstitialObjectInterface
    public void Destroy() {
        InternalClose(false);
    }

    void InternalClose(final boolean z) {
        JavaUtils.PostAndLogException(AdsManager.parentViewGroup, new Runnable() { // from class: com.gameloft.adsmanager.FANInterstitial.1
            @Override // java.lang.Runnable
            public void run() {
                if (z) {
                    FANInterstitial fANInterstitial = FANInterstitial.this;
                    fANInterstitial.OnClose(fANInterstitial.sdkLocation);
                }
                FANInterstitial.this.fanParent.interstitials.PushPlacement(FANInterstitial.this.sdkLocation);
            }
        });
    }

    @Override // com.gameloft.adsmanager.Interstitial.InterstitialObjectInterface
    public boolean IsValid() {
        return true;
    }

    public void Load() {
        JavaUtils.PostAndLogException(AdsManager.parentViewGroup, new Runnable() { // from class: com.gameloft.adsmanager.FANInterstitial.4
            @Override // java.lang.Runnable
            public void run() {
                JavaUtils.AdsManagerLogInfo("FANInterstitial.java", "!!!!!", "Load for interstitial was called");
                try {
                    InAppAdLibrary.loadInterstitialAd(AdsManager.mainActivity.getApplication().getApplicationContext(), FANInterstitial.this.sdkLocation, FANInterstitial.this.callbackLoadInterstitial);
                } catch (Exception e2) {
                    JavaUtils.AdsManagerLogError("FANInterstitial.java", "!!!!!", "Load error. Exception" + e2.toString());
                    FANInterstitial.this.fanParent.OnInterstitialLoadError(0, FANInterstitial.this.sdkLocation);
                    FANInterstitial.this.fanParent.interstitials.PushPlacement(FANInterstitial.this.sdkLocation);
                }
            }
        }, new Runnable() { // from class: com.gameloft.adsmanager.FANInterstitial.5
            @Override // java.lang.Runnable
            public void run() {
                FANInterstitial.this.fanParent.OnInterstitialLoadError(JavaUtils.Errors.ERROR_EXCEPTION_RAISED, FANInterstitial.this.sdkLocation);
                FANInterstitial.this.fanParent.interstitials.PushPlacement(FANInterstitial.this.sdkLocation);
            }
        });
    }

    @Override // com.gameloft.adsmanager.Interstitial.InterstitialObjectInterface
    public void Show(String str, String str2) {
        JavaUtils.PostAndLogException(AdsManager.parentViewGroup, new Runnable() { // from class: com.gameloft.adsmanager.FANInterstitial.6
            @Override // java.lang.Runnable
            public void run() {
                try {
                    FANInterstitial fANInterstitial = FANInterstitial.this;
                    fANInterstitial.OnDisplay(fANInterstitial.sdkLocation);
                    FANInterstitial.this.fanParent.OnPauseGameAudio();
                    InAppAdLibrary.showInterstitialAd(AdsManager.mainActivity.getApplication().getApplicationContext(), FANInterstitial.this.sdkLocation, FANInterstitial.this.callbackShowInterstitial);
                } catch (Exception e2) {
                    JavaUtils.AdsManagerLogError("FANInterstitial.java", "!!!!!", "Show error. Exception" + e2.toString());
                    FANInterstitial.this.fanParent.OnResumeGameAudio();
                    FANInterstitial fANInterstitial2 = FANInterstitial.this;
                    fANInterstitial2.OnShowError(0, fANInterstitial2.sdkLocation);
                    FANInterstitial.this.fanParent.interstitials.PushPlacement(FANInterstitial.this.sdkLocation);
                }
            }
        }, new Runnable() { // from class: com.gameloft.adsmanager.FANInterstitial.7
            @Override // java.lang.Runnable
            public void run() {
                FANInterstitial fANInterstitial = FANInterstitial.this;
                fANInterstitial.OnShowError(JavaUtils.Errors.ERROR_EXCEPTION_RAISED, fANInterstitial.sdkLocation);
                FANInterstitial.this.fanParent.OnResumeGameAudio();
                FANInterstitial.this.fanParent.interstitials.PushPlacement(FANInterstitial.this.sdkLocation);
            }
        });
    }
}
