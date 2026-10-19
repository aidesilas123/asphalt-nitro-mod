package com.json.mediationsdk.ads.nativead;

import com.json.mediationsdk.ads.nativead.interfaces.NativeAdInteractionListener;
import com.json.mediationsdk.ads.nativead.interfaces.NativeAdLoadListener;
import com.json.mediationsdk.adunit.adapter.utility.AdInfo;
import com.json.mediationsdk.logger.IronSourceError;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u00012\u00020\u0002¨\u0006\u0003"}, d2 = {"Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAdListener;", "Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdLoadListener;", "Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdInteractionListener;", "mediationsdk_release"}, mv = {1, 8, 0}, xi = 48)
public interface LevelPlayNativeAdListener extends NativeAdLoadListener, NativeAdInteractionListener {
    @Override // com.json.mediationsdk.ads.nativead.interfaces.NativeAdInteractionListener
    /* synthetic */ void onAdClicked(LevelPlayNativeAd levelPlayNativeAd, AdInfo adInfo);

    @Override // com.json.mediationsdk.ads.nativead.interfaces.NativeAdInteractionListener
    /* synthetic */ void onAdImpression(LevelPlayNativeAd levelPlayNativeAd, AdInfo adInfo);

    @Override // com.json.mediationsdk.ads.nativead.interfaces.NativeAdLoadListener
    /* synthetic */ void onAdLoadFailed(LevelPlayNativeAd levelPlayNativeAd, IronSourceError ironSourceError);

    @Override // com.json.mediationsdk.ads.nativead.interfaces.NativeAdLoadListener
    /* synthetic */ void onAdLoaded(LevelPlayNativeAd levelPlayNativeAd, AdInfo adInfo);
}
