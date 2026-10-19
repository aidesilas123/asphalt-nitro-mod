###### Class com.json.mediationsdk.ads.nativead.LevelPlayNativeAdListener (com.ironsource.mediationsdk.ads.nativead.LevelPlayNativeAdListener)
.class public interface abstract Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAdListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdLoadListener;
.implements Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdInteractionListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u00012\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAdListener;",
        "Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdLoadListener;",
        "Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdInteractionListener;",
        "mediationsdk_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract synthetic onAdClicked(Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAd;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
.end method

.method public abstract synthetic onAdImpression(Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAd;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
.end method

.method public abstract synthetic onAdLoadFailed(Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAd;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
.end method

.method public abstract synthetic onAdLoaded(Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAd;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
.end method
