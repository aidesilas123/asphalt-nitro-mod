package com.vungle.ads;

import kotlin.Metadata;

/* JADX INFO: renamed from: com.vungle.ads.b1, reason: from Kotlin metadata */
/* JADX INFO: compiled from: FullscreenAdListener.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vungle/ads/FullscreenAdListener;", "Lcom/vungle/ads/BaseAdListener;", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
public interface FullscreenAdListener extends BaseAdListener {
    @Override // com.vungle.ads.BaseAdListener
    /* synthetic */ void onAdClicked(BaseAd baseAd);

    @Override // com.vungle.ads.BaseAdListener
    /* synthetic */ void onAdEnd(BaseAd baseAd);

    @Override // com.vungle.ads.BaseAdListener
    /* synthetic */ void onAdFailedToLoad(BaseAd baseAd, VungleError vungleError);

    @Override // com.vungle.ads.BaseAdListener
    /* synthetic */ void onAdFailedToPlay(BaseAd baseAd, VungleError vungleError);

    @Override // com.vungle.ads.BaseAdListener
    /* synthetic */ void onAdImpression(BaseAd baseAd);

    @Override // com.vungle.ads.BaseAdListener
    /* synthetic */ void onAdLeftApplication(BaseAd baseAd);

    @Override // com.vungle.ads.BaseAdListener
    /* synthetic */ void onAdLoaded(BaseAd baseAd);

    @Override // com.vungle.ads.BaseAdListener
    /* synthetic */ void onAdStart(BaseAd baseAd);
}
