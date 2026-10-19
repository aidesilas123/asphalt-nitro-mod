package com.applovin.mediation;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes.dex */
public interface MaxRewardedAdListener extends MaxAdListener {
    @Deprecated
    void onRewardedVideoCompleted(@NonNull MaxAd maxAd);

    @Deprecated
    void onRewardedVideoStarted(@NonNull MaxAd maxAd);

    void onUserRewarded(@NonNull MaxAd maxAd, @NonNull MaxReward maxReward);
}
