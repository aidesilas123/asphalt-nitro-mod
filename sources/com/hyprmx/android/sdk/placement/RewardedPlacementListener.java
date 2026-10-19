package com.hyprmx.android.sdk.placement;

import com.json.hc;
import com.json.mediationsdk.utils.IronSourceConstants;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\bg\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH&¨\u0006\nÀ\u0006\u0003"}, d2 = {"Lcom/hyprmx/android/sdk/placement/RewardedPlacementListener;", "Lcom/hyprmx/android/sdk/placement/PlacementListener;", hc.i, "", "placement", "Lcom/hyprmx/android/sdk/placement/Placement;", IronSourceConstants.EVENTS_REWARD_NAME, "", "rewardValue", "", "HyprMX-Mobile-Android-SDK_release"}, mv = {1, 7, 1}, xi = 48)
public interface RewardedPlacementListener extends PlacementListener {
    void onAdRewarded(Placement placement, String rewardName, int rewardValue);
}
