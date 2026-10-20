###### Class com.json.adapters.custom.kidoz.KidozCustomBanner (com.ironsource.adapters.custom.kidoz.KidozCustomBanner)
.class public Lcom/ironsource/adapters/custom/kidoz/KidozCustomBanner;
.super Lcom/ironsource/mediationsdk/adunit/adapter/BaseBanner;
.source "KidozCustomBanner.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ironsource/mediationsdk/adunit/adapter/BaseBanner<",
        "Lcom/ironsource/adapters/custom/kidoz/KidozCustomAdapter;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "KidozCustomBanner"


# instance fields
.field bannerLifecycleHandler:Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/adunit/adapter/BaseBanner;-><init>(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V

    sget-object p1, Lcom/ironsource/adapters/custom/kidoz/KidozCustomBanner;->TAG:Ljava/lang/String;

    const-string v0, "constructor"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public destroyAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)V
    .registers 2

    iget-object p1, p0, Lcom/ironsource/adapters/custom/kidoz/KidozCustomBanner;->bannerLifecycleHandler:Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;

    invoke-virtual {p1}, Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;->closeAd()V

    return-void
.end method

.method public bridge synthetic loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;)V
    .registers 5

    check-cast p4, Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ironsource/adapters/custom/kidoz/KidozCustomBanner;->loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;)V

    return-void
.end method

.method public loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;)V
    .registers 5

    sget-object p1, Lcom/ironsource/adapters/custom/kidoz/KidozCustomBanner;->TAG:Ljava/lang/String;

    const-string p3, "loadAd"

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;

    invoke-direct {p1, p2, p4}, Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;-><init>(Landroid/app/Activity;Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;)V

    iput-object p1, p0, Lcom/ironsource/adapters/custom/kidoz/KidozCustomBanner;->bannerLifecycleHandler:Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;

    invoke-virtual {p1}, Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;->loadAd()V

    return-void
.end method
