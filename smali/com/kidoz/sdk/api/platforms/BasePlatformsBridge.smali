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

###### Class com.kidoz.sdk.api.platforms.BasePlatformsBridge.AnonymousClass1 (com.kidoz.sdk.api.platforms.BasePlatformsBridge$1)
.class Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$1;
.super Ljava/lang/Object;
.source "BasePlatformsBridge.java"

# interfaces
.implements Lcom/kidoz/sdk/api/interfaces/SDKEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$1;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitError(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$1;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->onSDKInitError(Ljava/lang/String;)V

    return-void
.end method

.method public onInitSuccess()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$1;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->onSDKInitSuccess()V

    return-void
.end method

###### Class com.kidoz.sdk.api.platforms.BasePlatformsBridge.AnonymousClass2 (com.kidoz.sdk.api.platforms.BasePlatformsBridge$2)
.class Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$2;
.super Ljava/lang/Object;
.source "BasePlatformsBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->addContainerIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$2;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$2;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-static {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$000(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$2;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    iget-object v1, v0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$100(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$2;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$002(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;Z)Z

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$2;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-static {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$100(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    :cond_28
    return-void
.end method

###### Class com.kidoz.sdk.api.platforms.BasePlatformsBridge.AnonymousClass3 (com.kidoz.sdk.api.platforms.BasePlatformsBridge$3)
.class Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3;
.super Ljava/lang/Object;
.source "BasePlatformsBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->loadInterstitialAd(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

.field final synthetic val$autoShowOnLoad:Z


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;Z)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    iput-boolean p2, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3;->val$autoShowOnLoad:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    iget-object v0, v0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3$1;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3$1;-><init>(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3;)V

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAd;->load(Landroid/app/Activity;Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAdCallback;)V

    return-void
.end method

###### Class com.kidoz.sdk.api.platforms.BasePlatformsBridge.AnonymousClass3.AnonymousClass1 (com.kidoz.sdk.api.platforms.BasePlatformsBridge$3$1)
.class Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3$1;
.super Ljava/lang/Object;
.source "BasePlatformsBridge.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed(Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAd;)V
    .registers 3

    const-string p1, "BasePlatformsBridge"

    const-string v0, "onAdClosed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3;

    iget-object p1, p1, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->onInterstitialClosed()V

    return-void
.end method

.method public bridge synthetic onAdClosed(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAd;

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3$1;->onAdClosed(Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAd;)V

    return-void
.end method

.method public onAdFailedToLoad(Lcom/kidoz/sdk/api/general/KidozError;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdFailedToLoad::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/KidozError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BasePlatformsBridge"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3;

    iget-object v0, v0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->onInterstitialFailedToLoad(Lcom/kidoz/sdk/api/general/KidozError;)V

    return-void
.end method

.method public onAdFailedToShow(Lcom/kidoz/sdk/api/general/KidozError;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdFailedToShow::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/KidozError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BasePlatformsBridge"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3;

    iget-object v0, v0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->onInterstitialFailedToShow(Lcom/kidoz/sdk/api/general/KidozError;)V

    return-void
.end method

.method public onAdImpression()V
    .registers 3

    const-string v0, "BasePlatformsBridge"

    const-string v1, "onAdImpression"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3;

    iget-object v0, v0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->onInterstitialImpression()V

    return-void
.end method

.method public onAdLoaded(Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAd;)V
    .registers 4

    const-string v0, "BasePlatformsBridge"

    const-string v1, "onAdShown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3;

    iget-object v0, v0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-static {v0, p1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$202(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAd;)Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAd;

    iget-object p1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3;

    iget-object p1, p1, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->onInterstitialLoaded()V

    iget-object p1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3;

    iget-boolean v0, p1, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3;->val$autoShowOnLoad:Z

    if-eqz v0, :cond_20

    iget-object p1, p1, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->showInterstitial()V

    :cond_20
    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAd;

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3$1;->onAdLoaded(Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAd;)V

    return-void
.end method

.method public onAdShown(Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAd;)V
    .registers 3

    const-string p1, "BasePlatformsBridge"

    const-string v0, "onAdShown"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3;

    iget-object p1, p1, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->onInterstitialShown()V

    return-void
.end method

.method public bridge synthetic onAdShown(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAd;

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3$1;->onAdShown(Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAd;)V

    return-void
.end method

###### Class com.kidoz.sdk.api.platforms.BasePlatformsBridge.AnonymousClass4 (com.kidoz.sdk.api.platforms.BasePlatformsBridge$4)
.class Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;
.super Ljava/lang/Object;
.source "BasePlatformsBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->loadRewardedAd(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

.field final synthetic val$autoShowOnLoad:Z


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;Z)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    iput-boolean p2, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;->val$autoShowOnLoad:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    iget-object v0, v0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4$1;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4$1;-><init>(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;)V

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ads/fullscreen/rewarded/RewardedAd;->load(Landroid/app/Activity;Lcom/kidoz/sdk/api/ads/fullscreen/rewarded/RewardedAdCallback;)V

    return-void
.end method

###### Class com.kidoz.sdk.api.platforms.BasePlatformsBridge.AnonymousClass4.AnonymousClass1 (com.kidoz.sdk.api.platforms.BasePlatformsBridge$4$1)
.class Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4$1;
.super Ljava/lang/Object;
.source "BasePlatformsBridge.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ads/fullscreen/rewarded/RewardedAdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed(Lcom/kidoz/sdk/api/ads/fullscreen/rewarded/RewardedAd;)V
    .registers 2

    iget-object p1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;

    iget-object p1, p1, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->onRewardedClosed()V

    return-void
.end method

.method public bridge synthetic onAdClosed(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/kidoz/sdk/api/ads/fullscreen/rewarded/RewardedAd;

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4$1;->onAdClosed(Lcom/kidoz/sdk/api/ads/fullscreen/rewarded/RewardedAd;)V

    return-void
.end method

.method public onAdFailedToLoad(Lcom/kidoz/sdk/api/general/KidozError;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdFailedToLoad::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/KidozError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BasePlatformsBridge"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;

    iget-object v0, v0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->onRewardedFailedToLoad(Lcom/kidoz/sdk/api/general/KidozError;)V

    return-void
.end method

.method public onAdFailedToShow(Lcom/kidoz/sdk/api/general/KidozError;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdFailedToShow::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/KidozError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BasePlatformsBridge"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;

    iget-object v0, v0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->onRewardedFailedToShow(Lcom/kidoz/sdk/api/general/KidozError;)V

    return-void
.end method

.method public onAdImpression()V
    .registers 3

    const-string v0, "BasePlatformsBridge"

    const-string v1, "onAdImpression"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;

    iget-object v0, v0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->onRewardedImpression()V

    return-void
.end method

.method public onAdLoaded(Lcom/kidoz/sdk/api/ads/fullscreen/rewarded/RewardedAd;)V
    .registers 4

    const-string v0, "BasePlatformsBridge"

    const-string v1, "onAdLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;

    iget-object v0, v0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-static {v0, p1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$302(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;Lcom/kidoz/sdk/api/ads/fullscreen/rewarded/RewardedAd;)Lcom/kidoz/sdk/api/ads/fullscreen/rewarded/RewardedAd;

    iget-object p1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;

    iget-object p1, p1, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->onRewardedLoaded()V

    iget-object p1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;

    iget-boolean v0, p1, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;->val$autoShowOnLoad:Z

    if-eqz v0, :cond_20

    iget-object p1, p1, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->showRewarded()V

    :cond_20
    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/kidoz/sdk/api/ads/fullscreen/rewarded/RewardedAd;

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4$1;->onAdLoaded(Lcom/kidoz/sdk/api/ads/fullscreen/rewarded/RewardedAd;)V

    return-void
.end method

.method public onAdShown(Lcom/kidoz/sdk/api/ads/fullscreen/rewarded/RewardedAd;)V
    .registers 3

    const-string p1, "BasePlatformsBridge"

    const-string v0, "onAdShown"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;

    iget-object p1, p1, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->onRewardedShown()V

    return-void
.end method

.method public bridge synthetic onAdShown(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/kidoz/sdk/api/ads/fullscreen/rewarded/RewardedAd;

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4$1;->onAdShown(Lcom/kidoz/sdk/api/ads/fullscreen/rewarded/RewardedAd;)V

    return-void
.end method

.method public onRewardReceived()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;

    iget-object v0, v0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->onRewarded()V

    return-void
.end method

###### Class com.kidoz.sdk.api.platforms.BasePlatformsBridge.AnonymousClass5 (com.kidoz.sdk.api.platforms.BasePlatformsBridge$5)
.class Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$5;
.super Ljava/lang/Object;
.source "BasePlatformsBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->setBannerPosition(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

.field final synthetic val$bannerPosition:I


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;I)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$5;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    iput p2, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$5;->val$bannerPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$5;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-static {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$400(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$5;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-static {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$400(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$5;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    iget v2, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$5;->val$bannerPosition:I

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$500(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;I)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->setBannerPosition(Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;)V

    :cond_19
    return-void
.end method

###### Class com.kidoz.sdk.api.platforms.BasePlatformsBridge.AnonymousClass6 (com.kidoz.sdk.api.platforms.BasePlatformsBridge$6)
.class Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;
.super Ljava/lang/Object;
.source "BasePlatformsBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->loadBannerAd(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

.field final synthetic val$autoShowOnLoad:Z

.field final synthetic val$bannerPosition:I


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;ZI)V
    .registers 4

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    iput-boolean p2, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;->val$autoShowOnLoad:Z

    iput p3, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;->val$bannerPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-static {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$400(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    move-result-object v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    new-instance v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    iget-object v2, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    iget-object v2, v2, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$402(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-static {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$400(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->setLayoutWithoutShowing()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-static {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$400(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    move-result-object v0

    new-instance v1, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6$1;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6$1;-><init>(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;)V

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->setKidozBannerListener(Lcom/kidoz/sdk/api/ads/banner/BannerAdCallback;)V

    :cond_2d
    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-static {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$400(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    iget v2, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;->val$bannerPosition:I

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$500(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;I)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->setBannerPosition(Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-static {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$400(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->load()V

    return-void
.end method

###### Class com.kidoz.sdk.api.platforms.BasePlatformsBridge.AnonymousClass6.AnonymousClass1 (com.kidoz.sdk.api.platforms.BasePlatformsBridge$6$1)
.class Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6$1;
.super Ljava/lang/Object;
.source "BasePlatformsBridge.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ads/banner/BannerAdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;

    iget-object v0, v0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->onBannerClosed()V

    return-void
.end method

.method public onAdFailedToLoad(Lcom/kidoz/sdk/api/general/KidozError;)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;

    iget-object v0, v0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->onBannerFailedToLoad(Lcom/kidoz/sdk/api/general/KidozError;)V

    return-void
.end method

.method public onAdFailedToShow(Lcom/kidoz/sdk/api/general/KidozError;)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;

    iget-object v0, v0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->onBannerFailedToShow(Lcom/kidoz/sdk/api/general/KidozError;)V

    return-void
.end method

.method public onAdImpression()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;

    iget-object v0, v0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->onBannerImpression()V

    return-void
.end method

.method public onAdLoaded()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;

    iget-object v0, v0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->onBannerLoaded()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;

    iget-boolean v1, v0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;->val$autoShowOnLoad:Z

    if-eqz v1, :cond_12

    iget-object v0, v0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->showBannerAd()V

    :cond_12
    return-void
.end method

.method public onAdShown()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;

    iget-object v0, v0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->onBannerShown()V

    return-void
.end method

###### Class com.kidoz.sdk.api.platforms.BasePlatformsBridge.AnonymousClass7 (com.kidoz.sdk.api.platforms.BasePlatformsBridge$7)
.class Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$7;
.super Ljava/lang/Object;
.source "BasePlatformsBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->showBannerAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$7;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const-string v0, "BasePlatformsBridge"

    :try_start_2
    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$7;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-static {v1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$400(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$600(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2d

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$7;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-static {v2}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$100(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$7;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-static {v3}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$400(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$7;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-static {v1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$400(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->bringToFront()V

    :cond_2d
    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$7;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-static {v1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$400(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    move-result-object v1

    if-eqz v1, :cond_66

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$7;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-static {v1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$400(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->bringToFront()V

    const-string v1, "BasePlatformBridge | showBannerAd() | showing.."

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$7;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-static {v1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$400(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->show()V
    :try_end_4c
    .catchall {:try_start_2 .. :try_end_4c} :catchall_4d

    goto :goto_66

    :catchall_4d
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to show banner "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_66
    :goto_66
    return-void
.end method

###### Class com.kidoz.sdk.api.platforms.BasePlatformsBridge.AnonymousClass8 (com.kidoz.sdk.api.platforms.BasePlatformsBridge$8)
.class Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$8;
.super Ljava/lang/Object;
.source "BasePlatformsBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->hideBannerAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$8;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$8;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-static {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$400(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    move-result-object v0

    if-eqz v0, :cond_39

    const-string v0, "BasePlatformsBridge"

    const-string v1, "BasePlatformBridge | hideBannerAd() | hiding.."

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$8;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-static {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$400(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->hide()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$8;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-static {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$400(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$600(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$8;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-static {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$100(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$8;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-static {v1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$400(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_33
    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$8;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$402(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    :cond_39
    return-void
.end method

###### Class com.kidoz.sdk.api.platforms.BasePlatformsBridge.AnonymousClass9 (com.kidoz.sdk.api.platforms.BasePlatformsBridge$9)
.class Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$9;
.super Ljava/lang/Object;
.source "BasePlatformsBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->printToastLog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

.field final synthetic val$log:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$9;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    iput-object p2, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$9;->val$log:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$9;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    iget-object v0, v0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$9;->val$log:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
