###### Class com.gameloft.adsmanager.IronSourceBanner (com.gameloft.adsmanager.IronSourceBanner)
.class public Lcom/gameloft/adsmanager/IronSourceBanner;
.super Lcom/gameloft/adsmanager/Banner/BaseBannerObject;
.source "IronSourceBanner.java"


# instance fields
.field private isBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

.field private parent:Lcom/gameloft/adsmanager/IronSource;

.field public sdkLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/gameloft/adsmanager/IronSource;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/gameloft/adsmanager/Banner/BaseBannerObject;-><init>(Lcom/gameloft/adsmanager/BaseAdsProvider;)V

    iput-object p2, p0, Lcom/gameloft/adsmanager/IronSourceBanner;->sdkLocation:Ljava/lang/String;

    iput-object p1, p0, Lcom/gameloft/adsmanager/IronSourceBanner;->parent:Lcom/gameloft/adsmanager/IronSource;

    sget-object p1, Lcom/gameloft/adsmanager/AdsManager;->parentViewGroup:Landroid/view/ViewGroup;

    new-instance v0, Lcom/gameloft/adsmanager/IronSourceBanner$1;

    invoke-direct {v0, p0, p2}, Lcom/gameloft/adsmanager/IronSourceBanner$1;-><init>(Lcom/gameloft/adsmanager/IronSourceBanner;Ljava/lang/String;)V

    new-instance v1, Lcom/gameloft/adsmanager/IronSourceBanner$2;

    invoke-direct {v1, p0, p2}, Lcom/gameloft/adsmanager/IronSourceBanner$2;-><init>(Lcom/gameloft/adsmanager/IronSourceBanner;Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lcom/gameloft/adsmanager/JavaUtils;->PostAndLogException(Landroid/view/ViewGroup;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/gameloft/adsmanager/IronSourceBanner;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .registers 1

    iget-object p0, p0, Lcom/gameloft/adsmanager/IronSourceBanner;->isBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    return-object p0
.end method

.method static synthetic access$002(Lcom/gameloft/adsmanager/IronSourceBanner;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .registers 2

    iput-object p1, p0, Lcom/gameloft/adsmanager/IronSourceBanner;->isBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    return-object p1
.end method

.method static synthetic access$100(Lcom/gameloft/adsmanager/IronSourceBanner;)Lcom/gameloft/adsmanager/IronSource;
    .registers 1

    iget-object p0, p0, Lcom/gameloft/adsmanager/IronSourceBanner;->parent:Lcom/gameloft/adsmanager/IronSource;

    return-object p0
.end method


# virtual methods
.method public Close()V
    .registers 3

    sget-object v0, Lcom/gameloft/adsmanager/AdsManager;->parentViewGroup:Landroid/view/ViewGroup;

    new-instance v1, Lcom/gameloft/adsmanager/IronSourceBanner$6;

    invoke-direct {v1, p0}, Lcom/gameloft/adsmanager/IronSourceBanner$6;-><init>(Lcom/gameloft/adsmanager/IronSourceBanner;)V

    invoke-static {v0, v1}, Lcom/gameloft/adsmanager/JavaUtils;->PostAndLogException(Landroid/view/ViewGroup;Ljava/lang/Runnable;)V

    return-void
.end method

.method public Destroy()V
    .registers 1

    return-void
.end method

.method public IsValid()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public Move(III)V
    .registers 6

    sget-object v0, Lcom/gameloft/adsmanager/AdsManager;->parentViewGroup:Landroid/view/ViewGroup;

    new-instance v1, Lcom/gameloft/adsmanager/IronSourceBanner$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/gameloft/adsmanager/IronSourceBanner$5;-><init>(Lcom/gameloft/adsmanager/IronSourceBanner;III)V

    invoke-static {v0, v1}, Lcom/gameloft/adsmanager/JavaUtils;->PostAndLogException(Landroid/view/ViewGroup;Ljava/lang/Runnable;)V

    return-void
.end method

.method public Show(IIILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    sget-object p4, Lcom/gameloft/adsmanager/AdsManager;->parentViewGroup:Landroid/view/ViewGroup;

    new-instance p5, Lcom/gameloft/adsmanager/IronSourceBanner$3;

    invoke-direct {p5, p0, p1, p2, p3}, Lcom/gameloft/adsmanager/IronSourceBanner$3;-><init>(Lcom/gameloft/adsmanager/IronSourceBanner;III)V

    new-instance p1, Lcom/gameloft/adsmanager/IronSourceBanner$4;

    invoke-direct {p1, p0}, Lcom/gameloft/adsmanager/IronSourceBanner$4;-><init>(Lcom/gameloft/adsmanager/IronSourceBanner;)V

    invoke-static {p4, p5, p1}, Lcom/gameloft/adsmanager/JavaUtils;->PostAndLogException(Landroid/view/ViewGroup;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method
