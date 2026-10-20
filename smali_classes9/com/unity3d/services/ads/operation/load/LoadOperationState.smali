###### Class com.unity3d.services.ads.operation.load.LoadOperationState (com.unity3d.services.ads.operation.load.LoadOperationState)
.class public Lcom/unity3d/services/ads/operation/load/LoadOperationState;
.super Lcom/unity3d/services/ads/operation/OperationState;
.source "LoadOperationState.java"


# instance fields
.field public listener:Lcom/unity3d/ads/IUnityAdsLoadListener;

.field public loadOptions:Lcom/unity3d/ads/UnityAdsLoadOptions;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsLoadListener;Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/unity3d/services/core/configuration/Configuration;)V
    .registers 5

    invoke-direct {p0, p1, p4}, Lcom/unity3d/services/ads/operation/OperationState;-><init>(Ljava/lang/String;Lcom/unity3d/services/core/configuration/Configuration;)V

    iput-object p2, p0, Lcom/unity3d/services/ads/operation/load/LoadOperationState;->listener:Lcom/unity3d/ads/IUnityAdsLoadListener;

    iput-object p3, p0, Lcom/unity3d/services/ads/operation/load/LoadOperationState;->loadOptions:Lcom/unity3d/ads/UnityAdsLoadOptions;

    return-void
.end method

.method private synthetic lambda$onUnityAdsAdLoaded$1()V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/services/ads/operation/load/LoadOperationState;->listener:Lcom/unity3d/ads/IUnityAdsLoadListener;

    iget-object v1, p0, Lcom/unity3d/services/ads/operation/OperationState;->placementId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/unity3d/ads/IUnityAdsLoadListener;->onUnityAdsAdLoaded(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onUnityAdsFailedToLoad$0(Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/unity3d/services/ads/operation/load/LoadOperationState;->listener:Lcom/unity3d/ads/IUnityAdsLoadListener;

    iget-object v1, p0, Lcom/unity3d/services/ads/operation/OperationState;->placementId:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/unity3d/ads/IUnityAdsLoadListener;->onUnityAdsFailedToLoad(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()V
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/services/ads/operation/load/LoadOperationState;->lambda$onUnityAdsAdLoaded$1()V

    return-void
.end method

.method public synthetic b(Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/unity3d/services/ads/operation/load/LoadOperationState;->lambda$onUnityAdsFailedToLoad$0(Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;)V

    return-void
.end method

.method public isBanner()Z
    .registers 2

    instance-of v0, p0, Lcom/unity3d/services/ads/operation/load/LoadBannerOperationState;

    return v0
.end method

.method public onUnityAdsAdLoaded()V
    .registers 2

    iget-object v0, p0, Lcom/unity3d/services/ads/operation/load/LoadOperationState;->listener:Lcom/unity3d/ads/IUnityAdsLoadListener;

    if-eqz v0, :cond_c

    new-instance v0, Lcom/unity3d/services/ads/operation/load/b;

    invoke-direct {v0, p0}, Lcom/unity3d/services/ads/operation/load/b;-><init>(Lcom/unity3d/services/ads/operation/load/LoadOperationState;)V

    invoke-static {v0}, Lcom/unity3d/services/core/misc/Utilities;->wrapCustomerListener(Ljava/lang/Runnable;)V

    :cond_c
    return-void
.end method

.method public onUnityAdsFailedToLoad(Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/unity3d/services/ads/operation/load/LoadOperationState;->listener:Lcom/unity3d/ads/IUnityAdsLoadListener;

    if-eqz v0, :cond_c

    new-instance v0, Lcom/unity3d/services/ads/operation/load/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/unity3d/services/ads/operation/load/c;-><init>(Lcom/unity3d/services/ads/operation/load/LoadOperationState;Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/services/core/misc/Utilities;->wrapCustomerListener(Ljava/lang/Runnable;)V

    :cond_c
    return-void
.end method
