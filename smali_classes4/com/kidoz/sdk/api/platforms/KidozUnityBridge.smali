###### Class com.kidoz.sdk.api.platforms.KidozUnityBridge (com.kidoz.sdk.api.platforms.KidozUnityBridge)
.class public final Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;
.super Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;
.source "KidozUnityBridge.java"


# instance fields
.field private ON_BANNER_CLOSED:Ljava/lang/String;

.field private ON_BANNER_FAILED_TO_LOAD:Ljava/lang/String;

.field private ON_BANNER_FAILED_TO_SHOW:Ljava/lang/String;

.field private ON_BANNER_IMPRESSION:Ljava/lang/String;

.field private ON_BANNER_LOADED:Ljava/lang/String;

.field private ON_BANNER_SHOWN:Ljava/lang/String;

.field private ON_INTERSTITIAL_CLOSED:Ljava/lang/String;

.field private ON_INTERSTITIAL_FAILED_TO_LOAD:Ljava/lang/String;

.field private ON_INTERSTITIAL_FAILED_TO_SHOW:Ljava/lang/String;

.field private ON_INTERSTITIAL_IMPRESSION:Ljava/lang/String;

.field private ON_INTERSTITIAL_LOADED:Ljava/lang/String;

.field private ON_INTERSTITIAL_SHOWN:Ljava/lang/String;

.field private ON_REWARDED_CLOSED:Ljava/lang/String;

.field private ON_REWARDED_FAILED_TO_LOAD:Ljava/lang/String;

.field private ON_REWARDED_FAILED_TO_SHOW:Ljava/lang/String;

.field private ON_REWARDED_IMPRESSION:Ljava/lang/String;

.field private ON_REWARDED_LOADED:Ljava/lang/String;

.field private ON_REWARDED_RECEIVED:Ljava/lang/String;

.field private ON_REWARDED_SHOWN:Ljava/lang/String;

.field private ON_SDK_INIT_ERROR:Ljava/lang/String;

.field private ON_SDK_INIT_SUCCESS:Ljava/lang/String;

.field private mGameObject:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;-><init>(Landroid/content/Context;)V

    const-string p1, "initSuccessCallback"

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->ON_SDK_INIT_SUCCESS:Ljava/lang/String;

    const-string p1, "initErrorCallback"

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->ON_SDK_INIT_ERROR:Ljava/lang/String;

    const-string p1, "interstitialLoadedCallBack"

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->ON_INTERSTITIAL_LOADED:Ljava/lang/String;

    const-string p1, "interstitialFailedToLoadCallBack"

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->ON_INTERSTITIAL_FAILED_TO_LOAD:Ljava/lang/String;

    const-string p1, "interstitialShownCallBack"

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->ON_INTERSTITIAL_SHOWN:Ljava/lang/String;

    const-string p1, "interstitialFailedToShowCallBack"

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->ON_INTERSTITIAL_FAILED_TO_SHOW:Ljava/lang/String;

    const-string p1, "interstitialImpressionCallBack"

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->ON_INTERSTITIAL_IMPRESSION:Ljava/lang/String;

    const-string p1, "interstitialClosedCallBack"

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->ON_INTERSTITIAL_CLOSED:Ljava/lang/String;

    const-string p1, "rewardedLoadedCallBack"

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->ON_REWARDED_LOADED:Ljava/lang/String;

    const-string p1, "rewardedFailedToLoadCallBack"

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->ON_REWARDED_FAILED_TO_LOAD:Ljava/lang/String;

    const-string p1, "rewardedShownCallBack"

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->ON_REWARDED_SHOWN:Ljava/lang/String;

    const-string p1, "rewardedFailedToShowCallBack"

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->ON_REWARDED_FAILED_TO_SHOW:Ljava/lang/String;

    const-string p1, "rewardedImpressionCallBack"

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->ON_REWARDED_IMPRESSION:Ljava/lang/String;

    const-string p1, "rewardedReceivedCallBack"

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->ON_REWARDED_RECEIVED:Ljava/lang/String;

    const-string p1, "rewardedClosedCallBack"

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->ON_REWARDED_CLOSED:Ljava/lang/String;

    const-string p1, "bannerLoadedCallBack"

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->ON_BANNER_LOADED:Ljava/lang/String;

    const-string p1, "bannerFailedToLoadCallBack"

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->ON_BANNER_FAILED_TO_LOAD:Ljava/lang/String;

    const-string p1, "bannerShownCallBack"

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->ON_BANNER_SHOWN:Ljava/lang/String;

    const-string p1, "bannerFailedToShowCallBack"

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->ON_BANNER_FAILED_TO_SHOW:Ljava/lang/String;

    const-string p1, "bannerImpressionCallBack"

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->ON_BANNER_IMPRESSION:Ljava/lang/String;

    const-string p1, "bannerClosedCallBack"

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->ON_BANNER_CLOSED:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;
    .registers 2

    new-instance v0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public initialize(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iput-object p5, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->mGameObject:Ljava/lang/String;

    const-string p5, "unity"

    invoke-static {p5, p4}, Lcom/kidoz/sdk/api/KidozSDK;->setExtension(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lcom/kidoz/sdk/api/KidozSDK;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isInitialised()Z
    .registers 2

    invoke-static {}, Lcom/kidoz/sdk/api/KidozSDK;->isInitialised()Z

    move-result v0

    return v0
.end method

.method public onBannerClosed()V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->mGameObject:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->ON_BANNER_CLOSED:Ljava/lang/String;

    const-string v2, "Banner Close"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public onBannerFailedToLoad(Lcom/kidoz/sdk/api/general/KidozError;)V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->mGameObject:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->ON_BANNER_FAILED_TO_LOAD:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/KidozError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public onBannerFailedToShow(Lcom/kidoz/sdk/api/general/KidozError;)V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->mGameObject:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->ON_BANNER_FAILED_TO_SHOW:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/KidozError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public onBannerImpression()V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->mGameObject:Ljava/lang/String;

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->ON_BANNER_IMPRESSION:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBannerLoaded()V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->mGameObject:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->ON_BANNER_LOADED:Ljava/lang/String;

    const-string v2, "Banner loaded"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public onBannerShown()V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->mGameObject:Ljava/lang/String;

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->ON_BANNER_SHOWN:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialClosed()V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->mGameObject:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->ON_INTERSTITIAL_CLOSED:Ljava/lang/String;

    const-string v2, "Interstitial Closed"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public onInterstitialFailedToLoad(Lcom/kidoz/sdk/api/general/KidozError;)V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->mGameObject:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->ON_INTERSTITIAL_FAILED_TO_LOAD:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/KidozError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public onInterstitialFailedToShow(Lcom/kidoz/sdk/api/general/KidozError;)V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->mGameObject:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->ON_INTERSTITIAL_FAILED_TO_SHOW:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/KidozError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public onInterstitialImpression()V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->mGameObject:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->ON_INTERSTITIAL_IMPRESSION:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public onInterstitialLoaded()V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->mGameObject:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->ON_INTERSTITIAL_LOADED:Ljava/lang/String;

    const-string v2, "Interstitial loaded"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public onInterstitialShown()V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->mGameObject:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->ON_INTERSTITIAL_SHOWN:Ljava/lang/String;

    const-string v2, "Interstitial Opened"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public onRewarded()V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->mGameObject:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->ON_REWARDED_RECEIVED:Ljava/lang/String;

    const-string v2, "Rewarded Video"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public onRewardedClosed()V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->mGameObject:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->ON_REWARDED_CLOSED:Ljava/lang/String;

    const-string v2, "Rewarded Closed"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public onRewardedFailedToLoad(Lcom/kidoz/sdk/api/general/KidozError;)V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->mGameObject:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->ON_REWARDED_FAILED_TO_LOAD:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/KidozError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public onRewardedFailedToShow(Lcom/kidoz/sdk/api/general/KidozError;)V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->mGameObject:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->ON_REWARDED_FAILED_TO_SHOW:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/KidozError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public onRewardedImpression()V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->mGameObject:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->ON_REWARDED_IMPRESSION:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public onRewardedLoaded()V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->mGameObject:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->ON_REWARDED_LOADED:Ljava/lang/String;

    const-string v2, "Rewarded loaded"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public onRewardedShown()V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->mGameObject:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->ON_REWARDED_SHOWN:Ljava/lang/String;

    const-string v2, "Rewarded Opened"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method protected onSDKInitError(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->mGameObject:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->ON_SDK_INIT_ERROR:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Init Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    return-void
.end method

.method public onSDKInitSuccess()V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->mGameObject:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/KidozUnityBridge;->ON_SDK_INIT_SUCCESS:Ljava/lang/String;

    const-string v2, "Init Success"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method
