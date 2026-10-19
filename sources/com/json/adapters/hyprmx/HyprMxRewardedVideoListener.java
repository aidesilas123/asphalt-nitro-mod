package com.json.adapters.hyprmx;

import com.hyprmx.android.sdk.core.HyprMXErrors;
import com.hyprmx.android.sdk.placement.Placement;
import com.hyprmx.android.sdk.placement.RewardedPlacementListener;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.logger.IronSourceError;
import com.json.mediationsdk.sdk.RewardedVideoSmashListener;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public class HyprMxRewardedVideoListener implements RewardedPlacementListener {
    private WeakReference<HyprMXAdapter> mAdapter;
    private RewardedVideoSmashListener mListener;
    private String mPropertyId;

    HyprMxRewardedVideoListener(HyprMXAdapter hyprMXAdapter, RewardedVideoSmashListener rewardedVideoSmashListener, String str) {
        this.mAdapter = new WeakReference<>(hyprMXAdapter);
        this.mListener = rewardedVideoSmashListener;
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
            this.mListener.onRewardedVideoAvailabilityChanged(true);
        }
    }

    @Override // com.hyprmx.android.sdk.placement.PlacementListener
    public void onAdClosed(Placement placement, boolean z) {
        IronLog.ADAPTER_CALLBACK.verbose("propertyId = " + this.mPropertyId);
        RewardedVideoSmashListener rewardedVideoSmashListener = this.mListener;
        if (rewardedVideoSmashListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
        } else {
            rewardedVideoSmashListener.onRewardedVideoAdClosed();
        }
    }

    @Override // com.hyprmx.android.sdk.placement.PlacementListener
    public void onAdDisplayError(Placement placement, HyprMXErrors hyprMXErrors) {
        IronLog.ADAPTER_CALLBACK.error("propertyId = " + this.mPropertyId + ", error = " + hyprMXErrors);
        if (this.mListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
            return;
        }
        WeakReference<HyprMXAdapter> weakReference = this.mAdapter;
        if (weakReference == null || weakReference.get() == null) {
            IronLog.INTERNAL.verbose("adapter is null");
            return;
        }
        this.mListener.onRewardedVideoAdShowFailed(new IronSourceError(hyprMXErrors.ordinal(), this.mAdapter.get().getProviderName() + " onAdDisplayError " + placement));
    }

    @Override // com.hyprmx.android.sdk.placement.PlacementListener
    public void onAdExpired(Placement placement) {
        IronLog.ADAPTER_CALLBACK.error("propertyId = " + this.mPropertyId);
        if (this.mListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
            return;
        }
        WeakReference<HyprMXAdapter> weakReference = this.mAdapter;
        if (weakReference == null || weakReference.get() == null) {
            IronLog.INTERNAL.verbose("adapter is null");
        } else {
            this.mListener.onRewardedVideoLoadFailed(new IronSourceError(IronSourceError.ERROR_RV_EXPIRED_ADS, "ads are expired"));
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
            this.mListener.onRewardedVideoAvailabilityChanged(false);
        }
    }

    @Override // com.hyprmx.android.sdk.placement.RewardedPlacementListener
    public void onAdRewarded(Placement placement, String str, int i) {
        IronLog.ADAPTER_CALLBACK.verbose("propertyId = " + this.mPropertyId);
        RewardedVideoSmashListener rewardedVideoSmashListener = this.mListener;
        if (rewardedVideoSmashListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
        } else {
            rewardedVideoSmashListener.onRewardedVideoAdRewarded();
        }
    }

    @Override // com.hyprmx.android.sdk.placement.PlacementListener
    public void onAdStarted(Placement placement) {
        IronLog.ADAPTER_CALLBACK.verbose("propertyId = " + this.mPropertyId);
        RewardedVideoSmashListener rewardedVideoSmashListener = this.mListener;
        if (rewardedVideoSmashListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
        } else {
            rewardedVideoSmashListener.onRewardedVideoAdOpened();
        }
    }
}
