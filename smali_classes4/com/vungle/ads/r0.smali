###### Class com.vungle.ads.BannerAdListener (com.vungle.ads.r0)
.class public interface abstract Lcom/vungle/ads/r0;
.super Ljava/lang/Object;
.source "BannerAdListener.kt"

# interfaces
.implements Lcom/vungle/ads/t0;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/vungle/ads/BannerAdListener;",
        "Lcom/vungle/ads/BaseAdListener;",
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

.method public abstract synthetic onAdStart(Lcom/vungle/ads/BaseAd;)V
.end method
