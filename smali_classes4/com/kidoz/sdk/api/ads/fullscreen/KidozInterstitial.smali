###### Class com.kidoz.sdk.api.ads.fullscreen.KidozInterstitial (com.kidoz.sdk.api.ads.fullscreen.KidozInterstitial)
.class public Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial;
.super Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial;
.source "KidozInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "KidozInterstitial"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;)V
    .registers 4

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial;->initInnerWrapper(Landroid/app/Activity;Ljava/lang/String;Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;)V

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial;->setRequestType()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial;->mInterstitialView:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial;->mInterstitialView:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    return-void
.end method

.method protected initInnerWrapper(Landroid/app/Activity;Ljava/lang/String;Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;)V
    .registers 5

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-direct {v0, p1, p2}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial;->mInterstitialView:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-virtual {v0, p3}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->setAdType(Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;)V

    return-void
.end method

.method protected isLoaded()Z
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial;->mInterstitialView:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->isInterstitialLoaded()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method declared-synchronized loadAd()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial;->mInterstitialView:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->setIsLocalRequest(Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial;->mInterstitialView:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->getAdType()Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->load(Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    :cond_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected setOnInterstitialEventListener(Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial$IOnInterstitialEventListener;)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial;->mInterstitialView:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->getPlacementHelper()Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial;->mInterstitialView:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->getPlacementHelper()Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper;->setExternalInterstitialListener(Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial$IOnInterstitialEventListener;)V

    :cond_11
    return-void
.end method

.method public setOnInterstitialRewardedEventListener(Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial$IOnInterstitialRewardedEventListener;)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial;->mInterstitialView:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->getPlacementHelper()Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper;->setExternalRewardedListener(Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial$IOnInterstitialRewardedEventListener;)V

    :cond_b
    return-void
.end method

.method protected setRequestType()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial;->mInterstitialView:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->setIsLocalRequest(Z)V

    return-void
.end method

.method public declared-synchronized show()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial;->mInterstitialView:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->show()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    :cond_8
    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
