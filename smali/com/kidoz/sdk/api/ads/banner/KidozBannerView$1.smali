###### Class com.kidoz.sdk.api.ads.banner.KidozBannerView.AnonymousClass1 (com.kidoz.sdk.api.ads.banner.KidozBannerView$1)
.class Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$1;
.super Ljava/lang/Object;
.source "KidozBannerView.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->setKidozBannerListener(Lcom/kidoz/sdk/api/ads/banner/BannerAdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

.field final synthetic val$callback:Lcom/kidoz/sdk/api/ads/banner/BannerAdCallback;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;Lcom/kidoz/sdk/api/ads/banner/BannerAdCallback;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$1;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    iput-object p2, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$1;->val$callback:Lcom/kidoz/sdk/api/ads/banner/BannerAdCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBannerClose()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$1;->val$callback:Lcom/kidoz/sdk/api/ads/banner/BannerAdCallback;

    invoke-interface {v0}, Lcom/kidoz/sdk/api/ads/AdViewCallback;->onAdClosed()V

    return-void
.end method

.method public onBannerError(Lcom/kidoz/sdk/api/general/KidozError;)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$1;->val$callback:Lcom/kidoz/sdk/api/ads/banner/BannerAdCallback;

    invoke-interface {v0, p1}, Lcom/kidoz/sdk/api/ads/AdViewCallback;->onAdFailedToLoad(Lcom/kidoz/sdk/api/general/KidozError;)V

    return-void
.end method

.method public onBannerImpression()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$1;->val$callback:Lcom/kidoz/sdk/api/ads/banner/BannerAdCallback;

    invoke-interface {v0}, Lcom/kidoz/sdk/api/ads/AdViewCallback;->onAdImpression()V

    return-void
.end method

.method public onBannerReady()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$1;->val$callback:Lcom/kidoz/sdk/api/ads/banner/BannerAdCallback;

    invoke-interface {v0}, Lcom/kidoz/sdk/api/ads/AdViewCallback;->onAdLoaded()V

    return-void
.end method

.method public onBannerShowFailed(Lcom/kidoz/sdk/api/general/KidozError;)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$1;->val$callback:Lcom/kidoz/sdk/api/ads/banner/BannerAdCallback;

    invoke-interface {v0, p1}, Lcom/kidoz/sdk/api/ads/AdViewCallback;->onAdFailedToShow(Lcom/kidoz/sdk/api/general/KidozError;)V

    return-void
.end method

.method public onBannerShowSuccess()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$1;->val$callback:Lcom/kidoz/sdk/api/ads/banner/BannerAdCallback;

    invoke-interface {v0}, Lcom/kidoz/sdk/api/ads/AdViewCallback;->onAdShown()V

    return-void
.end method
