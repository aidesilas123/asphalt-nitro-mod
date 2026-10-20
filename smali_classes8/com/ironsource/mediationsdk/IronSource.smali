###### Class com.json.mediationsdk.IronSource (com.ironsource.mediationsdk.IronSource)
.class public abstract Lcom/ironsource/mediationsdk/IronSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addImpressionDataListener(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V
    .registers 2

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/p;->b(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V

    return-void
.end method

.method public static clearRewardedVideoServerParameters()V
    .registers 1

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/p;->b()V

    return-void
.end method

.method public static createBanner(Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .registers 3

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ironsource/mediationsdk/p;->b(Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object p0

    return-object p0
.end method

.method public static createBannerForDemandOnly(Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;
    .registers 3

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ironsource/mediationsdk/p;->a(Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;

    move-result-object p0

    return-object p0
.end method

.method public static destroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    .registers 2

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V

    return-void
.end method

.method public static destroyISDemandOnlyBanner(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/p;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static getAdvertiserId(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/p;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getISDemandOnlyBiddingData(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-class v0, Lcom/ironsource/mediationsdk/IronSource;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ironsource/mediationsdk/p;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getInterstitialPlacementInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    .registers 2

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/p;->g(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object p0

    return-object p0
.end method

.method public static getOfferwallCredits()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/p;->getOfferwallCredits()V

    return-void
.end method

.method public static getRewardedVideoPlacementInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;
    .registers 2

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/p;->i(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/ironsource/mediationsdk/IronSource;->init(Landroid/content/Context;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/sdk/InitializationListener;)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/ironsource/mediationsdk/IronSource;->init(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/sdk/InitializationListener;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    return-void
.end method

.method public static varargs init(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/sdk/InitializationListener;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .registers 10

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/ironsource/mediationsdk/p;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/ironsource/mediationsdk/sdk/InitializationListener;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    return-void
.end method

.method public static varargs init(Landroid/content/Context;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .registers 9

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ironsource/mediationsdk/p;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/ironsource/mediationsdk/sdk/InitializationListener;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    return-void
.end method

.method public static varargs initISDemandOnly(Landroid/content/Context;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .registers 4

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/ironsource/mediationsdk/p;->a(Landroid/content/Context;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    return-void
.end method

.method public static isBannerPlacementCapped(Ljava/lang/String;)Z
    .registers 2

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/p;->T0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isISDemandOnlyInterstitialReady(Ljava/lang/String;)Z
    .registers 2

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/p;->f(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isISDemandOnlyRewardedVideoAvailable(Ljava/lang/String;)Z
    .registers 2

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/p;->k(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isInterstitialPlacementCapped(Ljava/lang/String;)Z
    .registers 2

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/p;->U0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isInterstitialReady()Z
    .registers 1

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/p;->D()Z

    move-result v0

    return v0
.end method

.method public static isOfferwallAvailable()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/p;->isOfferwallAvailable()Z

    move-result v0

    return v0
.end method

.method public static isRewardedVideoAvailable()Z
    .registers 1

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/p;->J()Z

    move-result v0

    return v0
.end method

.method public static isRewardedVideoPlacementCapped(Ljava/lang/String;)Z
    .registers 2

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/p;->W0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static launchTestSuite(Landroid/content/Context;)V
    .registers 2

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/p;->d(Landroid/content/Context;)V

    return-void
.end method

.method public static loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    .registers 2

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/p;->b(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V

    return-void
.end method

.method public static loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V

    return-void
.end method

.method public static loadISDemandOnlyBanner(Landroid/app/Activity;Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/ironsource/mediationsdk/p;->a(Landroid/app/Activity;Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;Ljava/lang/String;)V

    return-void
.end method

.method public static loadISDemandOnlyBannerWithAdm(Landroid/app/Activity;Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/ironsource/mediationsdk/p;->a(Landroid/app/Activity;Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static loadISDemandOnlyInterstitial(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ironsource/mediationsdk/p;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public static loadISDemandOnlyInterstitialWithAdm(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/ironsource/mediationsdk/p;->b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static loadISDemandOnlyRewardedVideo(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ironsource/mediationsdk/p;->b(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public static loadISDemandOnlyRewardedVideoWithAdm(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/ironsource/mediationsdk/p;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static loadInterstitial()V
    .registers 1

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/p;->N()V

    return-void
.end method

.method public static loadRewardedVideo()V
    .registers 1

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/p;->O()V

    return-void
.end method

.method public static onPause(Landroid/app/Activity;)V
    .registers 2

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/p;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public static onResume(Landroid/app/Activity;)V
    .registers 2

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/p;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public static removeImpressionDataListener(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V
    .registers 2

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V

    return-void
.end method

.method public static removeInterstitialListener()V
    .registers 1

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/p;->f()V

    return-void
.end method

.method public static removeOfferwallListener()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/p;->e()V

    return-void
.end method

.method public static removeRewardedVideoListener()V
    .registers 1

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/p;->d()V

    return-void
.end method

.method public static setAdRevenueData(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ironsource/mediationsdk/p;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static setAdaptersDebug(Z)V
    .registers 2

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/p;->a(Z)V

    return-void
.end method

.method public static setConsent(Z)V
    .registers 2

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/p;->b(Z)V

    return-void
.end method

.method public static setDynamicUserId(Ljava/lang/String;)Z
    .registers 2

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/p;->e(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static setISDemandOnlyInterstitialListener(Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;)V
    .registers 2

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;)V

    return-void
.end method

.method public static setISDemandOnlyRewardedVideoListener(Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;)V
    .registers 2

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;)V

    return-void
.end method

.method public static setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V

    return-void
.end method

.method public static setLevelPlayInterstitialListener(Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;)V
    .registers 2

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;)V

    return-void
.end method

.method public static setLevelPlayRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoListener;)V
    .registers 2

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoListener;)V

    return-void
.end method

.method public static setLevelPlayRewardedVideoManualListener(Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoManualListener;)V
    .registers 2

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoManualListener;)V

    return-void
.end method

.method public static setLogListener(Lcom/ironsource/mediationsdk/logger/LogListener;)V
    .registers 2

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/mediationsdk/logger/LogListener;)V

    return-void
.end method

.method public static setManualLoadRewardedVideo(Lcom/ironsource/mediationsdk/sdk/RewardedVideoManualListener;)V
    .registers 2

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/mediationsdk/sdk/RewardedVideoManualListener;)V

    return-void
.end method

.method public static setMediationType(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/p;->h(Ljava/lang/String;)V

    return-void
.end method

.method public static setMetaData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/ironsource/mediationsdk/p;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static setMetaData(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ironsource/mediationsdk/p;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static setNetworkData(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ironsource/mediationsdk/p;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static setOfferwallListener(Lcom/ironsource/mediationsdk/sdk/OfferwallListener;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/mediationsdk/sdk/OfferwallListener;)V

    return-void
.end method

.method public static setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V

    return-void
.end method

.method public static setRewardedVideoServerParameters(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/p;->a(Ljava/util/Map;)V

    return-void
.end method

.method public static setSegment(Lcom/ironsource/mediationsdk/IronSourceSegment;)V
    .registers 2

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    return-void
.end method

.method public static setSegmentListener(Lcom/ironsource/mediationsdk/sdk/SegmentListener;)V
    .registers 2

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/p;->d0(Lcom/ironsource/mediationsdk/sdk/SegmentListener;)V

    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/p;->Y0(Ljava/lang/String;)V

    return-void
.end method

.method public static setWaterfallConfiguration(Lcom/ironsource/mediationsdk/WaterfallConfiguration;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .registers 3

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/WaterfallConfiguration;)V

    return-void
.end method

.method public static shouldTrackNetworkState(Landroid/content/Context;Z)V
    .registers 3

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ironsource/mediationsdk/p;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method public static showISDemandOnlyInterstitial(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/p;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static showISDemandOnlyRewardedVideo(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/p;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static showInterstitial()V
    .registers 2

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/p;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public static showInterstitial(Landroid/app/Activity;)V
    .registers 2

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/p;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public static showInterstitial(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ironsource/mediationsdk/p;->c(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public static showInterstitial(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/ironsource/mediationsdk/p;->c(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public static showOfferwall()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/p;->c()V

    return-void
.end method

.method public static showOfferwall(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/p;->j(Ljava/lang/String;)V

    return-void
.end method

.method public static showRewardedVideo()V
    .registers 2

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/p;->d(Landroid/app/Activity;)V

    return-void
.end method

.method public static showRewardedVideo(Landroid/app/Activity;)V
    .registers 2

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/p;->d(Landroid/app/Activity;)V

    return-void
.end method

.method public static showRewardedVideo(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ironsource/mediationsdk/p;->f(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public static showRewardedVideo(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/ironsource/mediationsdk/p;->f(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
