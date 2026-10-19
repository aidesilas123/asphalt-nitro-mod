package com.json.adapters.mintegral;

import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.logger.IronSourceError;
import com.json.mediationsdk.sdk.RewardedVideoSmashListener;
import com.json.mediationsdk.utils.ErrorBuilder;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.o2;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.out.RewardInfo;
import com.mbridge.msdk.out.RewardVideoListener;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MintergralRewardedVideoListener.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0005¢\u0006\u0002\u0010\tJ\u001c\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0012\u0010\u0010\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016J\u0012\u0010\u0011\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016J\u0012\u0010\u0012\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016J\u001c\u0010\u0013\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u0016J\u0012\u0010\u0015\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016J\u0012\u0010\u0016\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016J\u001c\u0010\u0017\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u0016J\u0012\u0010\u0018\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/ironsource/adapters/mintegral/MintergralRewardedVideoListener;", "Lcom/mbridge/msdk/out/RewardVideoListener;", o2.i, "", "smashListener", "Ljava/lang/ref/WeakReference;", "Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;", "adapterListener", "Lcom/ironsource/adapters/mintegral/MintegralAdapter;", "(Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V", "onAdClose", "", "bridgeIds", "Lcom/mbridge/msdk/out/MBridgeIds;", "rewardInfo", "Lcom/mbridge/msdk/out/RewardInfo;", "onAdShow", "onEndcardShow", "onLoadSuccess", "onShowFail", "errorMsg", "onVideoAdClicked", "onVideoComplete", "onVideoLoadFail", "onVideoLoadSuccess", "mintegraladapter_release"}, mv = {1, 8, 0}, xi = 48)
public final class MintergralRewardedVideoListener implements RewardVideoListener {
    private final WeakReference<MintegralAdapter> adapterListener;
    private final String placementId;
    private final WeakReference<RewardedVideoSmashListener> smashListener;

    public MintergralRewardedVideoListener(String placementId, WeakReference<RewardedVideoSmashListener> smashListener, WeakReference<MintegralAdapter> adapterListener) {
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(smashListener, "smashListener");
        Intrinsics.checkNotNullParameter(adapterListener, "adapterListener");
        this.placementId = placementId;
        this.smashListener = smashListener;
        this.adapterListener = adapterListener;
    }

    @Override // com.mbridge.msdk.out.RewardVideoListener, com.mbridge.msdk.video.bt.module.b.g
    public void onAdClose(MBridgeIds bridgeIds, RewardInfo rewardInfo) {
        RewardedVideoSmashListener rewardedVideoSmashListener;
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        StringBuilder sb = new StringBuilder();
        sb.append("placementId=");
        sb.append(this.placementId);
        sb.append(" rewarded:");
        sb.append(rewardInfo != null ? Boolean.valueOf(rewardInfo.isCompleteView()) : null);
        ironLog.verbose(sb.toString());
        if ((rewardInfo != null && rewardInfo.isCompleteView()) && (rewardedVideoSmashListener = this.smashListener.get()) != null) {
            rewardedVideoSmashListener.onRewardedVideoAdRewarded();
        }
        RewardedVideoSmashListener rewardedVideoSmashListener2 = this.smashListener.get();
        if (rewardedVideoSmashListener2 != null) {
            rewardedVideoSmashListener2.onRewardedVideoAdClosed();
        }
    }

    @Override // com.mbridge.msdk.out.RewardVideoListener, com.mbridge.msdk.video.bt.module.b.g
    public void onAdShow(MBridgeIds bridgeIds) {
        IronLog.ADAPTER_CALLBACK.verbose("placementId=" + this.placementId);
        RewardedVideoSmashListener rewardedVideoSmashListener = this.smashListener.get();
        if (rewardedVideoSmashListener != null) {
            rewardedVideoSmashListener.onRewardedVideoAdOpened();
        }
    }

    @Override // com.mbridge.msdk.out.RewardVideoListener, com.mbridge.msdk.video.bt.module.b.g
    public void onEndcardShow(MBridgeIds bridgeIds) {
        IronLog.ADAPTER_CALLBACK.verbose("placementId=" + this.placementId);
    }

    @Override // com.mbridge.msdk.out.RewardVideoListener, com.mbridge.msdk.video.bt.module.b.g
    public void onLoadSuccess(MBridgeIds bridgeIds) {
        IronLog.ADAPTER_CALLBACK.verbose("placementId=" + this.placementId);
    }

    @Override // com.mbridge.msdk.out.RewardVideoListener, com.mbridge.msdk.video.bt.module.b.g
    public void onShowFail(MBridgeIds bridgeIds, String errorMsg) {
        IronLog.ADAPTER_CALLBACK.verbose("placementId=" + this.placementId + " errorMsg=" + errorMsg);
        RewardedVideoSmashListener rewardedVideoSmashListener = this.smashListener.get();
        if (rewardedVideoSmashListener != null) {
            rewardedVideoSmashListener.onRewardedVideoAdShowFailed(ErrorBuilder.buildShowFailedError(IronSourceConstants.REWARDED_VIDEO_AD_UNIT, errorMsg));
        }
    }

    @Override // com.mbridge.msdk.out.RewardVideoListener, com.mbridge.msdk.video.bt.module.b.g
    public void onVideoAdClicked(MBridgeIds bridgeIds) {
        IronLog.ADAPTER_CALLBACK.verbose("placementId=" + this.placementId);
        RewardedVideoSmashListener rewardedVideoSmashListener = this.smashListener.get();
        if (rewardedVideoSmashListener != null) {
            rewardedVideoSmashListener.onRewardedVideoAdClicked();
        }
    }

    @Override // com.mbridge.msdk.out.RewardVideoListener, com.mbridge.msdk.video.bt.module.b.g
    public void onVideoComplete(MBridgeIds bridgeIds) {
        IronLog.ADAPTER_CALLBACK.verbose("placementId=" + this.placementId);
        RewardedVideoSmashListener rewardedVideoSmashListener = this.smashListener.get();
        if (rewardedVideoSmashListener != null) {
            rewardedVideoSmashListener.onRewardedVideoAdEnded();
        }
    }

    @Override // com.mbridge.msdk.out.RewardVideoListener, com.mbridge.msdk.video.bt.module.b.g
    public void onVideoLoadFail(MBridgeIds bridgeIds, String errorMsg) {
        IronLog.ADAPTER_CALLBACK.verbose("placementId=" + this.placementId + " errorMsg=" + errorMsg);
        MintegralAdapter mintegralAdapter = this.adapterListener.get();
        boolean z = false;
        if (mintegralAdapter != null) {
            mintegralAdapter.updateRewardedVideoAvailability(this.placementId, false);
        }
        RewardedVideoSmashListener rewardedVideoSmashListener = this.smashListener.get();
        if (rewardedVideoSmashListener != null) {
            rewardedVideoSmashListener.onRewardedVideoAvailabilityChanged(false);
        }
        RewardedVideoSmashListener rewardedVideoSmashListener2 = this.smashListener.get();
        if (rewardedVideoSmashListener2 != null) {
            MintegralAdapter mintegralAdapter2 = this.adapterListener.get();
            if (mintegralAdapter2 != null && mintegralAdapter2.isNoFillError(errorMsg)) {
                z = true;
            }
            rewardedVideoSmashListener2.onRewardedVideoLoadFailed(new IronSourceError(z ? 1058 : 509, errorMsg));
        }
    }

    @Override // com.mbridge.msdk.out.RewardVideoListener, com.mbridge.msdk.video.bt.module.b.g
    public void onVideoLoadSuccess(MBridgeIds bridgeIds) {
        IronLog.ADAPTER_CALLBACK.verbose("placementId=" + this.placementId);
        MintegralAdapter mintegralAdapter = this.adapterListener.get();
        if (mintegralAdapter != null) {
            mintegralAdapter.updateRewardedVideoAvailability(this.placementId, true);
        }
        RewardedVideoSmashListener rewardedVideoSmashListener = this.smashListener.get();
        if (rewardedVideoSmashListener != null) {
            rewardedVideoSmashListener.onRewardedVideoAvailabilityChanged(true);
        }
    }
}
