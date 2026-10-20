###### Class com.unity3d.services.banners.UnityBanners (com.unity3d.services.banners.UnityBanners)
.class public final Lcom/unity3d/services/banners/UnityBanners;
.super Ljava/lang/Object;
.source "UnityBanners.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;,
        Lcom/unity3d/services/banners/UnityBanners$BannerWrapper;
    }
.end annotation


# static fields
.field private static instance:Lcom/unity3d/services/banners/UnityBanners;


# instance fields
.field private _bannerListener:Lcom/unity3d/services/banners/IUnityBannerListener;

.field private _currentBannerPosition:Lcom/unity3d/services/banners/view/BannerPosition;

.field private _currentBannerWrapper:Lcom/unity3d/services/banners/UnityBanners$BannerWrapper;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/unity3d/services/banners/view/BannerPosition;->NONE:Lcom/unity3d/services/banners/view/BannerPosition;

    iput-object v0, p0, Lcom/unity3d/services/banners/UnityBanners;->_currentBannerPosition:Lcom/unity3d/services/banners/view/BannerPosition;

    return-void
.end method

.method private _destroy()V
    .registers 2

    iget-object v0, p0, Lcom/unity3d/services/banners/UnityBanners;->_currentBannerWrapper:Lcom/unity3d/services/banners/UnityBanners$BannerWrapper;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/unity3d/services/banners/UnityBanners$BannerWrapper;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/services/banners/UnityBanners;->_currentBannerWrapper:Lcom/unity3d/services/banners/UnityBanners$BannerWrapper;

    :cond_a
    return-void
.end method

.method private _loadBanner(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/unity3d/services/banners/UnityBanners;->_currentBannerWrapper:Lcom/unity3d/services/banners/UnityBanners$BannerWrapper;

    if-nez v0, :cond_2a

    new-instance v0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;

    new-instance v1, Lcom/unity3d/services/banners/UnityBannerSize;

    const/16 v2, 0x140

    const/16 v3, 0x32

    invoke-direct {v1, v2, v3}, Lcom/unity3d/services/banners/UnityBannerSize;-><init>(II)V

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;-><init>(Lcom/unity3d/services/banners/UnityBanners;Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/services/banners/UnityBannerSize;)V

    new-instance p2, Lcom/unity3d/services/banners/UnityBanners$BannerWrapper;

    invoke-direct {p2, p0, p1, v0}, Lcom/unity3d/services/banners/UnityBanners$BannerWrapper;-><init>(Lcom/unity3d/services/banners/UnityBanners;Landroid/content/Context;Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;)V

    iget-object p1, p0, Lcom/unity3d/services/banners/UnityBanners;->_currentBannerPosition:Lcom/unity3d/services/banners/view/BannerPosition;

    invoke-virtual {p2, p1}, Lcom/unity3d/services/banners/UnityBanners$BannerWrapper;->setBannerPosition(Lcom/unity3d/services/banners/view/BannerPosition;)V

    iput-object p2, p0, Lcom/unity3d/services/banners/UnityBanners;->_currentBannerWrapper:Lcom/unity3d/services/banners/UnityBanners$BannerWrapper;

    new-instance p1, Lcom/unity3d/services/banners/UnityBanners$1;

    invoke-direct {p1, p0, p0, p2}, Lcom/unity3d/services/banners/UnityBanners$1;-><init>(Lcom/unity3d/services/banners/UnityBanners;Lcom/unity3d/services/banners/UnityBanners;Lcom/unity3d/services/banners/UnityBanners$BannerWrapper;)V

    invoke-virtual {v0, p1}, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->setListener(Lcom/unity3d/services/banners/BannerView$IListener;)V

    invoke-virtual {v0}, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->load()V

    goto :goto_2f

    :cond_2a
    const-string p1, "A Banner is already in use, please call destroy before loading another banner!"

    invoke-static {p1}, Lcom/unity3d/services/banners/UnityBanners;->sendError(Ljava/lang/String;)V

    :goto_2f
    return-void
.end method

.method static synthetic access$000(Lcom/unity3d/services/banners/UnityBanners;)Lcom/unity3d/services/banners/IUnityBannerListener;
    .registers 1

    iget-object p0, p0, Lcom/unity3d/services/banners/UnityBanners;->_bannerListener:Lcom/unity3d/services/banners/IUnityBannerListener;

    return-object p0
.end method

.method public static destroy()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/unity3d/services/banners/UnityBanners;->getInstance()Lcom/unity3d/services/banners/UnityBanners;

    move-result-object v0

    invoke-direct {v0}, Lcom/unity3d/services/banners/UnityBanners;->_destroy()V

    return-void
.end method

.method public static getBannerListener()Lcom/unity3d/services/banners/IUnityBannerListener;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/unity3d/services/banners/UnityBanners;->getInstance()Lcom/unity3d/services/banners/UnityBanners;

    move-result-object v0

    iget-object v0, v0, Lcom/unity3d/services/banners/UnityBanners;->_bannerListener:Lcom/unity3d/services/banners/IUnityBannerListener;

    return-object v0
.end method

.method private static getInstance()Lcom/unity3d/services/banners/UnityBanners;
    .registers 1

    sget-object v0, Lcom/unity3d/services/banners/UnityBanners;->instance:Lcom/unity3d/services/banners/UnityBanners;

    if-nez v0, :cond_b

    new-instance v0, Lcom/unity3d/services/banners/UnityBanners;

    invoke-direct {v0}, Lcom/unity3d/services/banners/UnityBanners;-><init>()V

    sput-object v0, Lcom/unity3d/services/banners/UnityBanners;->instance:Lcom/unity3d/services/banners/UnityBanners;

    :cond_b
    sget-object v0, Lcom/unity3d/services/banners/UnityBanners;->instance:Lcom/unity3d/services/banners/UnityBanners;

    return-object v0
.end method

.method public static loadBanner(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/unity3d/services/core/log/DeviceLog;->entered()V

    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isSupported()Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "Unity Ads is not supported on this device."

    invoke-static {v0}, Lcom/unity3d/services/banners/UnityBanners;->sendError(Ljava/lang/String;)V

    :cond_e
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1a

    const-string p0, "UnityAds is not initialized."

    invoke-static {p0}, Lcom/unity3d/services/banners/UnityBanners;->sendError(Ljava/lang/String;)V

    return-void

    :cond_1a
    invoke-static {p0}, Lcom/unity3d/services/core/properties/ClientProperties;->setActivity(Landroid/app/Activity;)V

    invoke-static {}, Lcom/unity3d/services/banners/UnityBanners;->getInstance()Lcom/unity3d/services/banners/UnityBanners;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/unity3d/services/banners/UnityBanners;->_loadBanner(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method private static sendError(Ljava/lang/String;)V
    .registers 2

    new-instance v0, Lcom/unity3d/services/banners/UnityBanners$2;

    invoke-direct {v0, p0}, Lcom/unity3d/services/banners/UnityBanners$2;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setBannerListener(Lcom/unity3d/services/banners/IUnityBannerListener;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/unity3d/services/banners/UnityBanners;->getInstance()Lcom/unity3d/services/banners/UnityBanners;

    move-result-object v0

    iput-object p0, v0, Lcom/unity3d/services/banners/UnityBanners;->_bannerListener:Lcom/unity3d/services/banners/IUnityBannerListener;

    return-void
.end method

.method public static setBannerPosition(Lcom/unity3d/services/banners/view/BannerPosition;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/unity3d/services/banners/UnityBanners;->getInstance()Lcom/unity3d/services/banners/UnityBanners;

    move-result-object v0

    iput-object p0, v0, Lcom/unity3d/services/banners/UnityBanners;->_currentBannerPosition:Lcom/unity3d/services/banners/view/BannerPosition;

    return-void
.end method
