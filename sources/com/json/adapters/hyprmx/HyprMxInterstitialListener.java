package com.json.adapters.hyprmx;

import com.hyprmx.android.sdk.core.HyprMXErrors;
import com.hyprmx.android.sdk.placement.Placement;
import com.hyprmx.android.sdk.placement.PlacementListener;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.logger.IronSourceError;
import com.json.mediationsdk.sdk.InterstitialSmashListener;
import com.json.mediationsdk.utils.ErrorBuilder;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public class HyprMxInterstitialListener implements PlacementListener {
    private WeakReference<HyprMXAdapter> mAdapter;
    private InterstitialSmashListener mListener;
    private String mPropertyId;

    HyprMxInterstitialListener(HyprMXAdapter hyprMXAdapter, InterstitialSmashListener interstitialSmashListener, String str) {
        this.mAdapter = new WeakReference<>(hyprMXAdapter);
        this.mListener = interstitialSmashListener;
        this.mPropertyId = str;
    }

    @Override // com.hyprmx.android.sdk.placement.PlacementListener
    public void onAdAvailable(Placement placement) {
        IronLog.ADAPTER_CALLBACK.verbose("propertyId = " + this.mPropertyId);
        if (this.mListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
            return;
        }
        WeakReference<HyprMXAdapter> weakReference = this.mAdapter;
        if (weakReference == null || weakReference.get() == null) {
            IronLog.INTERNAL.verbose("adapter is null");
        } else {
            this.mListener.onInterstitialAdReady();
        }
    }

    @Override // com.hyprmx.android.sdk.placement.PlacementListener
    public void onAdClosed(Placement placement, boolean z) {
        IronLog.ADAPTER_CALLBACK.verbose("propertyId = " + this.mPropertyId);
        InterstitialSmashListener interstitialSmashListener = this.mListener;
        if (interstitialSmashListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
        } else {
            interstitialSmashListener.onInterstitialAdClosed();
        }
    }

    @Override // com.hyprmx.android.sdk.placement.PlacementListener
    public void onAdDisplayError(Placement placement, HyprMXErrors hyprMXErrors) {
        IronLog.ADAPTER_CALLBACK.error("propertyId = " + this.mPropertyId + ", error = " + hyprMXErrors);
        InterstitialSmashListener interstitialSmashListener = this.mListener;
        if (interstitialSmashListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
            return;
        }
        interstitialSmashListener.onInterstitialAdShowFailed(new IronSourceError(hyprMXErrors.ordinal(), this.mAdapter.get().getProviderName() + " onAdDisplayError " + placement));
    }

    @Override // com.hyprmx.android.sdk.placement.PlacementListener
    public void onAdExpired(Placement placement) {
        IronLog.ADAPTER_CALLBACK.verbose("propertyId = " + this.mPropertyId);
        WeakReference<HyprMXAdapter> weakReference = this.mAdapter;
        if (weakReference == null || weakReference.get() == null) {
            IronLog.INTERNAL.verbose("adapter is null");
        }
    }

    @Override // com.hyprmx.android.sdk.placement.PlacementListener
    public void onAdNotAvailable(Placement placement) {
        IronLog.ADAPTER_CALLBACK.verbose("propertyId = " + this.mPropertyId);
        if (this.mListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
            return;
        }
        WeakReference<HyprMXAdapter> weakReference = this.mAdapter;
        if (weakReference == null || weakReference.get() == null) {
            IronLog.INTERNAL.verbose("adapter is null");
        } else {
            this.mListener.onInterstitialAdLoadFailed(ErrorBuilder.buildLoadFailedError("Interstitial onAdNotAvailable"));
        }
    }

    @Override // com.hyprmx.android.sdk.placement.PlacementListener
    public void onAdStarted(Placement placement) {
        IronLog.ADAPTER_CALLBACK.verbose("propertyId = " + this.mPropertyId);
        InterstitialSmashListener interstitialSmashListener = this.mListener;
        if (interstitialSmashListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
        } else {
            interstitialSmashListener.onInterstitialAdOpened();
            this.mListener.onInterstitialAdShowSucceeded();
        }
    }
}
