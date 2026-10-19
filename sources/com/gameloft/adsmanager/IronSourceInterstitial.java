package com.gameloft.adsmanager;

import com.gameloft.adsmanager.Interstitial.BaseInterstitialObject;
import com.gameloft.adsmanager.JavaUtils;

/* JADX INFO: loaded from: classes2.dex */
public class IronSourceInterstitial extends BaseInterstitialObject {
    private IronSource parent;
    public String sdkLocation;

    public IronSourceInterstitial(IronSource ironSource, String str) {
        super(ironSource);
        this.sdkLocation = str;
        this.parent = ironSource;
    }

    @Override // com.gameloft.adsmanager.Interstitial.InterstitialObjectInterface
    public void Close() {
    }

    @Override // com.gameloft.adsmanager.Interstitial.InterstitialObjectInterface
    public void Destroy() {
    }

    @Override // com.gameloft.adsmanager.Interstitial.InterstitialObjectInterface
    public boolean IsValid() {
        return true;
    }

    @Override // com.gameloft.adsmanager.Interstitial.InterstitialObjectInterface
    public void Show(String str, String str2) {
        this.parent.onScreenInterstitial = this;
        JavaUtils.PostAndLogException(AdsManager.parentViewGroup, new Runnable() { // from class: com.gameloft.adsmanager.IronSourceInterstitial.1
            @Override // java.lang.Runnable
            public void run() {
                IronSourceInterstitial.this.parent.OnPauseGameAudio();
                com.json.mediationsdk.IronSource.showInterstitial(IronSourceInterstitial.this.sdkLocation);
            }
        }, new Runnable() { // from class: com.gameloft.adsmanager.IronSourceInterstitial.2
            @Override // java.lang.Runnable
            public void run() {
                IronSourceInterstitial ironSourceInterstitial = IronSourceInterstitial.this;
                ironSourceInterstitial.OnShowError(JavaUtils.Errors.ERROR_EXCEPTION_RAISED, ironSourceInterstitial.sdkLocation);
                IronSourceInterstitial.this.parent.ResetInterstitial();
            }
        });
    }
}
