package com.vungle.ads;

import com.json.hc;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.vungle.ads.x1, reason: from Kotlin metadata */
/* JADX INFO: compiled from: RewardedAdListener.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/RewardedAdListener;", "Lcom/vungle/ads/FullscreenAdListener;", hc.i, "", "baseAd", "Lcom/vungle/ads/BaseAd;", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
public interface RewardedAdListener extends FullscreenAdListener {
    @Override // com.vungle.ads.FullscreenAdListener, com.vungle.ads.BaseAdListener
    /* synthetic */ void onAdClicked(BaseAd baseAd);

    @Override // com.vungle.ads.FullscreenAdListener, com.vungle.ads.BaseAdListener
    /* synthetic */ void onAdEnd(BaseAd baseAd);

    @Override // com.vungle.ads.FullscreenAdListener, com.vungle.ads.BaseAdListener
    /* synthetic */ void onAdFailedToLoad(BaseAd baseAd, VungleError vungleError);

    @Override // com.vungle.ads.FullscreenAdListener, com.vungle.ads.BaseAdListener
    /* synthetic */ void onAdFailedToPlay(BaseAd baseAd, VungleError vungleError);

    @Override // com.vungle.ads.FullscreenAdListener, com.vungle.ads.BaseAdListener
    /* synthetic */ void onAdImpression(BaseAd baseAd);

    @Override // com.vungle.ads.FullscreenAdListener, com.vungle.ads.BaseAdListener
    /* synthetic */ void onAdLeftApplication(BaseAd baseAd);

    @Override // com.vungle.ads.FullscreenAdListener, com.vungle.ads.BaseAdListener
    /* synthetic */ void onAdLoaded(BaseAd baseAd);

    void onAdRewarded(BaseAd baseAd);

    @Override // com.vungle.ads.FullscreenAdListener, com.vungle.ads.BaseAdListener
    /* synthetic */ void onAdStart(BaseAd baseAd);
}
