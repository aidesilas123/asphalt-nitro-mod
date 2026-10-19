package com.json.adapters.applovin;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.logger.IronSourceError;
import com.json.mediationsdk.sdk.InterstitialSmashListener;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes3.dex */
public class AppLovinInterstitialListener implements AppLovinAdLoadListener, AppLovinAdClickListener, AppLovinAdDisplayListener, AppLovinAdVideoPlaybackListener {
    private final WeakReference<AppLovinAdapter> mAdapter;
    private final InterstitialSmashListener mListener;
    private final String mZoneId;

    public AppLovinInterstitialListener(AppLovinAdapter appLovinAdapter, InterstitialSmashListener interstitialSmashListener, String str) {
        this.mAdapter = new WeakReference<>(appLovinAdapter);
        this.mZoneId = str;
        this.mListener = interstitialSmashListener;
    }

    @Override // com.applovin.sdk.AppLovinAdClickListener
    public void adClicked(AppLovinAd appLovinAd) {
        IronLog.ADAPTER_CALLBACK.verbose("zoneId = " + this.mZoneId);
        InterstitialSmashListener interstitialSmashListener = this.mListener;
        if (interstitialSmashListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
        } else {
            interstitialSmashListener.onInterstitialAdClicked();
        }
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adDisplayed(AppLovinAd appLovinAd) {
        IronLog.ADAPTER_CALLBACK.verbose("zoneId = " + this.mZoneId);
        InterstitialSmashListener interstitialSmashListener = this.mListener;
        if (interstitialSmashListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
        } else {
            interstitialSmashListener.onInterstitialAdShowSucceeded();
            this.mListener.onInterstitialAdOpened();
        }
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adHidden(AppLovinAd appLovinAd) {
        IronLog.ADAPTER_CALLBACK.verbose("zoneId = " + this.mZoneId);
        InterstitialSmashListener interstitialSmashListener = this.mListener;
        if (interstitialSmashListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
        } else {
            interstitialSmashListener.onInterstitialAdClosed();
        }
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void adReceived(AppLovinAd appLovinAd) {
        IronLog.ADAPTER_CALLBACK.verbose("zoneId = " + this.mZoneId);
        WeakReference<AppLovinAdapter> weakReference = this.mAdapter;
        if (weakReference == null || weakReference.get() == null) {
            IronLog.INTERNAL.verbose("listener is null");
            return;
        }
        WeakReference<AppLovinAdapter> weakReference2 = this.mAdapter;
        if (weakReference2 == null || weakReference2.get() == null) {
            IronLog.INTERNAL.verbose("adapter is null");
            return;
        }
        this.mAdapter.get().mZoneIdToInterstitialAd.put(this.mZoneId, appLovinAd);
        this.mAdapter.get().mZoneIdToInterstitialAdReadyStatus.put(this.mZoneId, Boolean.TRUE);
        this.mListener.onInterstitialAdReady();
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void failedToReceiveAd(int i) {
        IronLog.ADAPTER_CALLBACK.verbose("zoneId = " + this.mZoneId + ", errorCode = " + i);
        if (this.mListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
        } else {
            if (this.mAdapter.get() == null) {
                IronLog.INTERNAL.verbose("adapter is null");
                return;
            }
            IronSourceError ironSourceError = new IronSourceError(i == 204 ? 1158 : i, this.mAdapter.get().getErrorString(i));
            this.mAdapter.get().mZoneIdToInterstitialAdReadyStatus.put(this.mZoneId, Boolean.FALSE);
            this.mListener.onInterstitialAdLoadFailed(ironSourceError);
        }
    }

    @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
    public void videoPlaybackBegan(AppLovinAd appLovinAd) {
        IronLog.ADAPTER_CALLBACK.verbose("zoneId = " + this.mZoneId);
        if (this.mListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
        }
    }

    @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
    public void videoPlaybackEnded(AppLovinAd appLovinAd, double d2, boolean z) {
        IronLog.ADAPTER_CALLBACK.verbose("zoneId = " + this.mZoneId);
    }
}
