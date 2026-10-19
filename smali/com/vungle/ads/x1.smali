###### Class com.vungle.ads.RewardedAdListener (com.vungle.ads.x1)
.class public interface abstract Lcom/vungle/ads/x1;
.super Ljava/lang/Object;
.source "RewardedAdListener.kt"

# interfaces
.implements Lcom/vungle/ads/b1;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vungle/ads/RewardedAdListener;",
        "Lcom/vungle/ads/FullscreenAdListener;",
        "onAdRewarded",
        "",
        "baseAd",
        "Lcom/vungle/ads/BaseAd;",
        "vungle-ads_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract synthetic onAdClicked(Lcom/vungle/ads/BaseAd;)V
.end method

.method public abstract synthetic onAdEnd(Lcom/vungle/ads/BaseAd;)V
.end method

.method public abstract synthetic onAdFailedToLoad(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V
.end method

.method public abstract synthetic onAdFailedToPlay(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V
.end method

.method public abstract synthetic onAdImpression(Lcom/vungle/ads/BaseAd;)V
.end method

.method public abstract synthetic onAdLeftApplication(Lcom/vungle/ads/BaseAd;)V
.end method

.method public abstract synthetic onAdLoaded(Lcom/vungle/ads/BaseAd;)V
.end method

.method public abstract onAdRewarded(Lcom/vungle/ads/BaseAd;)V
.end method

.method public abstract synthetic onAdStart(Lcom/vungle/ads/BaseAd;)V
.end method
