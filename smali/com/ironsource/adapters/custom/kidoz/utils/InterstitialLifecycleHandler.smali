###### Class com.json.adapters.custom.kidoz.utils.InterstitialLifecycleHandler (com.ironsource.adapters.custom.kidoz.utils.InterstitialLifecycleHandler)
.class public Lcom/ironsource/adapters/custom/kidoz/utils/InterstitialLifecycleHandler;
.super Ljava/lang/Object;
.source "InterstitialLifecycleHandler.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAdCallback;


# instance fields
.field protected final TAG:Ljava/lang/String;

.field ad:Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAd;

.field protected mIronSourceListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/ironsource/adapters/custom/kidoz/KidozCustomInterstitial;->TAG:Ljava/lang/String;

    iput-object v0, p0, Lcom/ironsource/adapters/custom/kidoz/utils/InterstitialLifecycleHandler;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/ironsource/adapters/custom/kidoz/utils/InterstitialLifecycleHandler;->mIronSourceListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;

    return-void
.end method


# virtual methods
.method public isAdLoaded()Z
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adapters/custom/kidoz/utils/InterstitialLifecycleHandler;->ad:Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAd;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public onAdClosed(Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAd;)V
    .registers 3

    iget-object p1, p0, Lcom/ironsource/adapters/custom/kidoz/utils/InterstitialLifecycleHandler;->TAG:Ljava/lang/String;

    const-string v0, "onAdClosed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ironsource/adapters/custom/kidoz/utils/InterstitialLifecycleHandler;->mIronSourceListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;

    if-eqz p1, :cond_e

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;->onAdClosed()V

    :cond_e
    return-void
.end method

.method public bridge synthetic onAdClosed(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAd;

    invoke-virtual {p0, p1}, Lcom/ironsource/adapters/custom/kidoz/utils/InterstitialLifecycleHandler;->onAdClosed(Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAd;)V

    return-void
.end method

.method public onAdFailedToLoad(Lcom/kidoz/sdk/api/general/KidozError;)V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/adapters/custom/kidoz/utils/InterstitialLifecycleHandler;->TAG:Ljava/lang/String;

    const-string v1, "onAdFailedToLoad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ironsource/adapters/custom/kidoz/utils/InterstitialLifecycleHandler;->mIronSourceListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/KidozError;->getErrorCode()I

    move-result v1

    const/16 v2, 0x28a4

    if-ne v1, v2, :cond_14

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_NO_FILL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    goto :goto_16

    :cond_14
    sget-object v1, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_INTERNAL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    :goto_16
    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/KidozError;->getErrorCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/KidozError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void
.end method

.method public onAdFailedToShow(Lcom/kidoz/sdk/api/general/KidozError;)V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/adapters/custom/kidoz/utils/InterstitialLifecycleHandler;->TAG:Ljava/lang/String;

    const-string v1, "onAdFailedToShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ironsource/adapters/custom/kidoz/utils/InterstitialLifecycleHandler;->mIronSourceListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/KidozError;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x40f

    invoke-interface {v0, v1, p1}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;->onAdShowFailed(ILjava/lang/String;)V

    return-void
.end method

.method public onAdImpression()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adapters/custom/kidoz/utils/InterstitialLifecycleHandler;->TAG:Ljava/lang/String;

    const-string v1, "onAdImpression"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdLoaded(Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAd;)V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/adapters/custom/kidoz/utils/InterstitialLifecycleHandler;->TAG:Ljava/lang/String;

    const-string v1, "onAdLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/ironsource/adapters/custom/kidoz/utils/InterstitialLifecycleHandler;->ad:Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAd;

    iget-object p1, p0, Lcom/ironsource/adapters/custom/kidoz/utils/InterstitialLifecycleHandler;->mIronSourceListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;

    if-eqz p1, :cond_10

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;->onAdLoadSuccess()V

    :cond_10
    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAd;

    invoke-virtual {p0, p1}, Lcom/ironsource/adapters/custom/kidoz/utils/InterstitialLifecycleHandler;->onAdLoaded(Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAd;)V

    return-void
.end method

.method public onAdShown(Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAd;)V
    .registers 3

    iget-object p1, p0, Lcom/ironsource/adapters/custom/kidoz/utils/InterstitialLifecycleHandler;->TAG:Ljava/lang/String;

    const-string v0, "onAdShown"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ironsource/adapters/custom/kidoz/utils/InterstitialLifecycleHandler;->mIronSourceListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;

    if-eqz p1, :cond_e

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;->onAdOpened()V

    :cond_e
    return-void
.end method

.method public bridge synthetic onAdShown(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAd;

    invoke-virtual {p0, p1}, Lcom/ironsource/adapters/custom/kidoz/utils/InterstitialLifecycleHandler;->onAdShown(Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAd;)V

    return-void
.end method

.method public show(Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;)V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/adapters/custom/kidoz/utils/InterstitialLifecycleHandler;->TAG:Ljava/lang/String;

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/ironsource/adapters/custom/kidoz/utils/InterstitialLifecycleHandler;->mIronSourceListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;

    iget-object p1, p0, Lcom/ironsource/adapters/custom/kidoz/utils/InterstitialLifecycleHandler;->ad:Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAd;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;->show()V

    return-void
.end method
