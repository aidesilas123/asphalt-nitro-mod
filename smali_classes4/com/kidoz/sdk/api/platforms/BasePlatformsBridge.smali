###### Class com.kidoz.sdk.api.platforms.BasePlatformsBridge (com.kidoz.sdk.api.platforms.BasePlatformsBridge)
.class public abstract Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;
.super Ljava/lang/Object;
.source "BasePlatformsBridge.java"


# static fields
.field private static final BANNER_DEFAULT_GRAVITY:I = 0x50

.field private static final BANNER_POSITION_BOTTOM:I = 0x1

.field private static final BANNER_POSITION_BOTTOM_CENTER:I = 0x1

.field private static final BANNER_POSITION_BOTTOM_LEFT:I = 0x4

.field private static final BANNER_POSITION_BOTTOM_RIGHT:I = 0x5

.field private static final BANNER_POSITION_TOP:I = 0x0

.field private static final BANNER_POSITION_TOP_CENTER:I = 0x0

.field private static final BANNER_POSITION_TOP_LEFT:I = 0x2

.field private static final BANNER_POSITION_TOP_RIGHT:I = 0x3

.field public static final FLEXI_VIEW_POSITION_BOTTOM_CENTER:I = 0x7

.field public static final FLEXI_VIEW_POSITION_BOTTOM_END:I = 0x8

.field public static final FLEXI_VIEW_POSITION_BOTTOM_START:I = 0x6

.field public static final FLEXI_VIEW_POSITION_MID_CENTER:I = 0x4

.field public static final FLEXI_VIEW_POSITION_MID_END:I = 0x5

.field public static final FLEXI_VIEW_POSITION_MID_START:I = 0x3

.field public static final FLEXI_VIEW_POSITION_TOP_CENTER:I = 0x1

.field public static final FLEXI_VIEW_POSITION_TOP_END:I = 0x2

.field public static final FLEXI_VIEW_POSITION_TOP_START:I = 0x0

.field public static final HANDLE_POSITION_CENTER:I = 0x1

.field public static final HANDLE_POSITION_END:I = 0x2

.field public static final HANDLE_POSITION_NONE:I = 0x3

.field public static final HANDLE_POSITION_START:I = 0x0

.field protected static final KIDOZ_ERROR_ACTIVITY_REQUIRED:Ljava/lang/String; = "Kidoz requires an Activity context in order to function properly."

.field public static final PANEL_TYPE_BOTTOM:I = 0x0

.field public static final PANEL_TYPE_LEFT:I = 0x2

.field public static final PANEL_TYPE_RIGHT:I = 0x3

.field public static final PANEL_TYPE_TOP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BasePlatformsBridge"


# instance fields
.field private isContainerAdded:Z

.field protected mActivity:Landroid/app/Activity;

.field private mBannerView:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

.field private mContainer:Landroid/widget/FrameLayout;

.field private mInterstitialAd:Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAd;

.field private mInterstitialAdType:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

.field private mPanelView:Lcom/kidoz/sdk/api/PanelView;

.field private mRewardedAd:Lcom/kidoz/sdk/api/ads/fullscreen/rewarded/RewardedAd;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->isContainerAdded:Z

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_10

    const-string p1, "Kidoz requires an Activity context in order to function properly."

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;)V

    return-void

    :cond_10
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->mActivity:Landroid/app/Activity;

    new-instance p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->mContainer:Landroid/widget/FrameLayout;

    new-instance p1, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$1;

    invoke-direct {p1, p0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$1;-><init>(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)V

    invoke-static {p1}, Lcom/kidoz/sdk/api/KidozSDK;->setSDKListener(Lcom/kidoz/sdk/api/interfaces/SDKEventListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->isContainerAdded:Z

    return p0
.end method

.method static synthetic access$002(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->isContainerAdded:Z

    return p1
.end method

.method static synthetic access$100(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)Landroid/widget/FrameLayout;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->mContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$202(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAd;)Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAd;
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->mInterstitialAd:Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAd;

    return-object p1
.end method

.method static synthetic access$302(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;Lcom/kidoz/sdk/api/ads/fullscreen/rewarded/RewardedAd;)Lcom/kidoz/sdk/api/ads/fullscreen/rewarded/RewardedAd;
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->mRewardedAd:Lcom/kidoz/sdk/api/ads/fullscreen/rewarded/RewardedAd;

    return-object p1
.end method

.method static synthetic access$400(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->mBannerView:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    return-object p0
.end method

.method static synthetic access$402(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->mBannerView:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;I)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;
    .registers 2

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->bannerPositionConverter(I)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;Landroid/view/View;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->isChildViewExistsInContainer(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private addContainerIfNeeded()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$2;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$2;-><init>(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private bannerPositionConverter(I)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;
    .registers 3

    if-eqz p1, :cond_23

    const/4 v0, 0x1

    if-eq p1, v0, :cond_20

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x4

    if-eq p1, v0, :cond_17

    const/4 v0, 0x5

    if-eq p1, v0, :cond_14

    sget-object p1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->BOTTOM_CENTER:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    return-object p1

    :cond_14
    sget-object p1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->BOTTOM_RIGHT:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    return-object p1

    :cond_17
    sget-object p1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->BOTTOM_LEFT:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    return-object p1

    :cond_1a
    sget-object p1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->TOP_RIGHT:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    return-object p1

    :cond_1d
    sget-object p1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->TOP_LEFT:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    return-object p1

    :cond_20
    sget-object p1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->BOTTOM_CENTER:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    return-object p1

    :cond_23
    sget-object p1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->TOP_CENTER:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    return-object p1
.end method

.method private defineAdType(I)V
    .registers 3

    sget-object v0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;->INTERSTITIAL:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    iput-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->mInterstitialAdType:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    :try_start_4
    invoke-static {}, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;->values()[Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    move-result-object v0

    array-length v0, v0

    if-le v0, p1, :cond_13

    invoke-static {}, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;->values()[Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    move-result-object v0

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->mInterstitialAdType:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_13} :catch_13

    :catch_13
    :cond_13
    return-void
.end method

.method private getGravityForPosition(I)I
    .registers 3

    if-eqz p1, :cond_1d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x3

    if-eq p1, v0, :cond_17

    const/4 v0, 0x4

    if-eq p1, v0, :cond_14

    const/4 v0, 0x5

    if-eq p1, v0, :cond_11

    const/16 p1, 0x50

    return p1

    :cond_11
    const/16 p1, 0x55

    return p1

    :cond_14
    const/16 p1, 0x53

    return p1

    :cond_17
    const/16 p1, 0x35

    return p1

    :cond_1a
    const/16 p1, 0x33

    return p1

    :cond_1d
    const/16 p1, 0x30

    return p1
.end method

.method private isChildViewExistsInContainer(Landroid/view/View;)Z
    .registers 5

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->mContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_21

    const/4 v0, 0x0

    :goto_c
    iget-object v2, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_21

    iget-object v2, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_1e

    const/4 v1, 0x1

    goto :goto_21

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_21
    :goto_21
    return v1
.end method


# virtual methods
.method public getIsInterstitialLoaded()Z
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->mInterstitialAd:Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAd;

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

.method public getIsRewardedLoaded()Z
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->mRewardedAd:Lcom/kidoz/sdk/api/ads/fullscreen/rewarded/RewardedAd;

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

.method public hideBannerAd()V
    .registers 3

    const-string v0, "BasePlatformsBridge"

    const-string v1, "BasePlatformBridge | hideBannerAd()"

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$8;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$8;-><init>(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected abstract isInitialised()Z
.end method

.method public loadBannerAd(ZI)V
    .registers 5

    invoke-direct {p0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->addContainerIfNeeded()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;-><init>(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;ZI)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadInterstitialAd(Z)V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3;

    invoke-direct {v1, p0, p1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3;-><init>(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadRewardedAd(Z)V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;

    invoke-direct {v1, p0, p1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;-><init>(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract onBannerClosed()V
.end method

.method public abstract onBannerFailedToLoad(Lcom/kidoz/sdk/api/general/KidozError;)V
.end method

.method public abstract onBannerFailedToShow(Lcom/kidoz/sdk/api/general/KidozError;)V
.end method

.method public abstract onBannerImpression()V
.end method

.method public abstract onBannerLoaded()V
.end method

.method public abstract onBannerShown()V
.end method

.method public abstract onInterstitialClosed()V
.end method

.method public abstract onInterstitialFailedToLoad(Lcom/kidoz/sdk/api/general/KidozError;)V
.end method

.method public abstract onInterstitialFailedToShow(Lcom/kidoz/sdk/api/general/KidozError;)V
.end method

.method public abstract onInterstitialImpression()V
.end method

.method public abstract onInterstitialLoaded()V
.end method

.method public abstract onInterstitialShown()V
.end method

.method public abstract onRewarded()V
.end method

.method public abstract onRewardedClosed()V
.end method

.method public abstract onRewardedFailedToLoad(Lcom/kidoz/sdk/api/general/KidozError;)V
.end method

.method public abstract onRewardedFailedToShow(Lcom/kidoz/sdk/api/general/KidozError;)V
.end method

.method public abstract onRewardedImpression()V
.end method

.method public abstract onRewardedLoaded()V
.end method

.method public abstract onRewardedShown()V
.end method

.method protected abstract onSDKInitError(Ljava/lang/String;)V
.end method

.method protected abstract onSDKInitSuccess()V
.end method

.method public printToastLog(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$9;

    invoke-direct {v1, p0, p1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$9;-><init>(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBannerPosition(I)V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$5;

    invoke-direct {v1, p0, p1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$5;-><init>(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showBannerAd()V
    .registers 3

    const-string v0, "BasePlatformsBridge"

    const-string v1, "BasePlatformBridge | showBannerAd()"

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$7;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$7;-><init>(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showInterstitial()V
    .registers 2

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->getIsInterstitialLoaded()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->mInterstitialAd:Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAd;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;->show()V

    :cond_b
    return-void
.end method

.method public showRewarded()V
    .registers 2

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->getIsRewardedLoaded()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->mRewardedAd:Lcom/kidoz/sdk/api/ads/fullscreen/rewarded/RewardedAd;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;->show()V

    :cond_b
    return-void
.end method
