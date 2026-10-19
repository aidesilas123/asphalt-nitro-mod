package com.json.mediationsdk.sdk;

import com.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public interface RewardedVideoManualListener extends RewardedVideoListener {
    @Deprecated
    void onRewardedVideoAdLoadFailed(IronSourceError ironSourceError);

    @Deprecated
    void onRewardedVideoAdReady();
}
