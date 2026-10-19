###### Class com.vungle.ads.BannerAd (com.vungle.ads.p0)
.class public final Lcom/vungle/ads/p0;
.super Lcom/vungle/ads/BaseAd;
.source "BannerAd.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008B\'\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0015\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0002\u001a\u00020\u0003H\u0010\u00a2\u0006\u0002\u0008\u0012J\u0006\u0010\u0013\u001a\u00020\u0014J\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000fR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/vungle/ads/BannerAd;",
        "Lcom/vungle/ads/BaseAd;",
        "context",
        "Landroid/content/Context;",
        "placementId",
        "",
        "adSize",
        "Lcom/vungle/ads/BannerAdSize;",
        "(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/BannerAdSize;)V",
        "adConfig",
        "Lcom/vungle/ads/AdConfig;",
        "(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/BannerAdSize;Lcom/vungle/ads/AdConfig;)V",
        "adPlayCallback",
        "Lcom/vungle/ads/internal/presenter/AdPlayCallbackWrapper;",
        "bannerView",
        "Lcom/vungle/ads/BannerView;",
        "constructAdInternal",
        "Lcom/vungle/ads/BannerAdInternal;",
        "constructAdInternal$vungle_ads_release",
        "finishAd",
        "",
        "getBannerView",
        "vungle-ads_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final adPlayCallback:Lcom/vungle/ads/internal/presenter/k;

.field private adSize:Lcom/vungle/ads/BannerAdSize;

.field private bannerView:Lcom/vungle/ads/s0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/BannerAdSize;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placementId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adSize"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/vungle/ads/AdConfig;

    invoke-direct {v0}, Lcom/vungle/ads/AdConfig;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/vungle/ads/p0;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/BannerAdSize;Lcom/vungle/ads/AdConfig;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/BannerAdSize;Lcom/vungle/ads/AdConfig;)V
    .registers 5

    invoke-direct {p0, p1, p2, p4}, Lcom/vungle/ads/BaseAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/AdConfig;)V

    iput-object p3, p0, Lcom/vungle/ads/p0;->adSize:Lcom/vungle/ads/BannerAdSize;

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal()Lcom/vungle/ads/internal/AdInternal;

    move-result-object p1

    const-string p3, "null cannot be cast to non-null type com.vungle.ads.BannerAdInternal"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/vungle/ads/q0;

    new-instance p3, Lcom/vungle/ads/p0$a;

    invoke-direct {p3, p0, p2}, Lcom/vungle/ads/p0$a;-><init>(Lcom/vungle/ads/p0;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/vungle/ads/q0;->wrapCallback$vungle_ads_release(Lcom/vungle/ads/internal/presenter/j;)Lcom/vungle/ads/internal/presenter/k;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/ads/p0;->adPlayCallback:Lcom/vungle/ads/internal/presenter/k;

    return-void
.end method

.method public static synthetic c(Lcom/vungle/ads/p0;Lcom/vungle/ads/VungleError;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/vungle/ads/p0;->getBannerView$lambda-0(Lcom/vungle/ads/p0;Lcom/vungle/ads/VungleError;)V

    return-void
.end method

.method private static final getBannerView$lambda-0(Lcom/vungle/ads/p0;Lcom/vungle/ads/VungleError;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdListener()Lcom/vungle/ads/t0;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v0, p0, p1}, Lcom/vungle/ads/t0;->onAdFailedToPlay(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V

    :cond_e
    return-void
.end method


# virtual methods
.method public bridge synthetic constructAdInternal$vungle_ads_release(Landroid/content/Context;)Lcom/vungle/ads/internal/AdInternal;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/vungle/ads/p0;->constructAdInternal$vungle_ads_release(Landroid/content/Context;)Lcom/vungle/ads/q0;

    move-result-object p1

    return-object p1
.end method

.method public constructAdInternal$vungle_ads_release(Landroid/content/Context;)Lcom/vungle/ads/q0;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/vungle/ads/q0;

    iget-object v1, p0, Lcom/vungle/ads/p0;->adSize:Lcom/vungle/ads/BannerAdSize;

    invoke-direct {v0, p1, v1}, Lcom/vungle/ads/q0;-><init>(Landroid/content/Context;Lcom/vungle/ads/BannerAdSize;)V

    return-object v0
.end method

.method public final finishAd()V
    .registers 3

    iget-object v0, p0, Lcom/vungle/ads/p0;->bannerView:Lcom/vungle/ads/s0;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/s0;->finishAdInternal(Z)V

    :cond_8
    return-void
.end method

.method public final getBannerView()Lcom/vungle/ads/s0;
    .registers 12

    sget-object v0, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    new-instance v2, Lcom/vungle/ads/c2;

    sget-object v1, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->PLAY_AD_API:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {v2, v1}, Lcom/vungle/ads/c2;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getPlacementId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getCreativeId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getEventId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v8}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/c2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/vungle/ads/p0;->bannerView:Lcom/vungle/ads/s0;

    if-eqz v1, :cond_22

    return-object v1

    :cond_22
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal()Lcom/vungle/ads/internal/AdInternal;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/vungle/ads/internal/AdInternal;->canPlayAd(Z)Lcom/vungle/ads/VungleError;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_50

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal()Lcom/vungle/ads/internal/AdInternal;

    move-result-object v0

    invoke-virtual {v1}, Lcom/vungle/ads/VungleError;->getCode()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/vungle/ads/internal/AdInternal;->isErrorTerminal$vungle_ads_release(I)Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal()Lcom/vungle/ads/internal/AdInternal;

    move-result-object v0

    sget-object v3, Lcom/vungle/ads/internal/AdInternal$AdState;->ERROR:Lcom/vungle/ads/internal/AdInternal$AdState;

    invoke-virtual {v0, v3}, Lcom/vungle/ads/internal/AdInternal;->setAdState(Lcom/vungle/ads/internal/AdInternal$AdState;)V

    :cond_45
    sget-object v0, Lcom/vungle/ads/internal/util/ThreadUtil;->INSTANCE:Lcom/vungle/ads/internal/util/ThreadUtil;

    new-instance v3, Lcom/vungle/ads/e;

    invoke-direct {v3, p0, v1}, Lcom/vungle/ads/e;-><init>(Lcom/vungle/ads/p0;Lcom/vungle/ads/VungleError;)V

    invoke-virtual {v0, v3}, Lcom/vungle/ads/internal/util/ThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-object v2

    :cond_50
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal()Lcom/vungle/ads/internal/AdInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/ads/internal/AdInternal;->getAdvertisement()Lcom/vungle/ads/internal/model/AdPayload;

    move-result-object v6

    if-nez v6, :cond_5b

    return-object v2

    :cond_5b
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal()Lcom/vungle/ads/internal/AdInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/ads/internal/AdInternal;->getPlacement()Lcom/vungle/ads/internal/model/Placement;

    move-result-object v5

    if-nez v5, :cond_66

    return-object v2

    :cond_66
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal()Lcom/vungle/ads/internal/AdInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/ads/internal/AdInternal;->cancelDownload$vungle_ads_release()V

    :try_start_6d
    new-instance v1, Lcom/vungle/ads/s0;

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v7, p0, Lcom/vungle/ads/p0;->adSize:Lcom/vungle/ads/BannerAdSize;

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdConfig()Lcom/vungle/ads/AdConfig;

    move-result-object v8

    iget-object v9, p0, Lcom/vungle/ads/p0;->adPlayCallback:Lcom/vungle/ads/internal/presenter/k;

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal()Lcom/vungle/ads/internal/AdInternal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vungle/ads/internal/AdInternal;->getBidPayload()Lcom/vungle/ads/internal/model/BidPayload;

    move-result-object v10

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/vungle/ads/s0;-><init>(Landroid/content/Context;Lcom/vungle/ads/internal/model/Placement;Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/BannerAdSize;Lcom/vungle/ads/AdConfig;Lcom/vungle/ads/internal/presenter/j;Lcom/vungle/ads/internal/model/BidPayload;)V

    iput-object v1, p0, Lcom/vungle/ads/p0;->bannerView:Lcom/vungle/ads/s0;
    :try_end_89
    .catch Ljava/lang/InstantiationException; {:try_start_6d .. :try_end_89} :catch_b4
    .catchall {:try_start_6d .. :try_end_89} :catchall_b2

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getResponseToShowMetric$vungle_ads_release()Lcom/vungle/ads/d2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/ads/d2;->markEnd()V

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getResponseToShowMetric$vungle_ads_release()Lcom/vungle/ads/d2;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getPlacementId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getCreativeId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getEventId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v8}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/d2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getShowToDisplayMetric$vungle_ads_release()Lcom/vungle/ads/d2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/d2;->markStart()V

    iget-object v0, p0, Lcom/vungle/ads/p0;->bannerView:Lcom/vungle/ads/s0;

    return-object v0

    :catchall_b2
    move-exception v0

    goto :goto_f2

    :catch_b4
    move-exception v0

    :try_start_b5
    sget-object v1, Lcom/vungle/ads/internal/util/Logger;->Companion:Lcom/vungle/ads/internal/util/Logger$a;

    const-string v3, "BannerAd"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not create banner view: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v0}, Lcom/vungle/ads/internal/util/Logger$a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d1
    .catchall {:try_start_b5 .. :try_end_d1} :catchall_b2

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getResponseToShowMetric$vungle_ads_release()Lcom/vungle/ads/d2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/d2;->markEnd()V

    sget-object v3, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getResponseToShowMetric$vungle_ads_release()Lcom/vungle/ads/d2;

    move-result-object v4

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getPlacementId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getCreativeId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getEventId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/d2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-object v2

    :goto_f2
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getResponseToShowMetric$vungle_ads_release()Lcom/vungle/ads/d2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/ads/d2;->markEnd()V

    sget-object v2, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getResponseToShowMetric$vungle_ads_release()Lcom/vungle/ads/d2;

    move-result-object v3

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getPlacementId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getCreativeId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getEventId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/d2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0
.end method

###### Class com.vungle.ads.BannerAd.a (com.vungle.ads.p0$a)
.class public final Lcom/vungle/ads/p0$a;
.super Ljava/lang/Object;
.source "BannerAd.kt"

# interfaces
.implements Lcom/vungle/ads/internal/presenter/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/p0;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/BannerAdSize;Lcom/vungle/ads/AdConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0008\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\t\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\n\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\rH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/vungle/ads/BannerAd$adPlayCallback$1",
        "Lcom/vungle/ads/internal/presenter/AdPlayCallback;",
        "onAdClick",
        "",
        "id",
        "",
        "onAdEnd",
        "onAdImpression",
        "onAdLeftApplication",
        "onAdRewarded",
        "onAdStart",
        "onFailure",
        "error",
        "Lcom/vungle/ads/VungleError;",
        "vungle-ads_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $placementId:Ljava/lang/String;

.field final synthetic this$0:Lcom/vungle/ads/p0;


# direct methods
.method constructor <init>(Lcom/vungle/ads/p0;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/vungle/ads/p0$a;->this$0:Lcom/vungle/ads/p0;

    iput-object p2, p0, Lcom/vungle/ads/p0$a;->$placementId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/vungle/ads/p0;)V
    .registers 1

    invoke-static {p0}, Lcom/vungle/ads/p0$a;->onAdClick$lambda-3(Lcom/vungle/ads/p0;)V

    return-void
.end method

.method public static synthetic b(Lcom/vungle/ads/p0;Lcom/vungle/ads/VungleError;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/vungle/ads/p0$a;->onFailure$lambda-5(Lcom/vungle/ads/p0;Lcom/vungle/ads/VungleError;)V

    return-void
.end method

.method public static synthetic c(Lcom/vungle/ads/p0;)V
    .registers 1

    invoke-static {p0}, Lcom/vungle/ads/p0$a;->onAdStart$lambda-0(Lcom/vungle/ads/p0;)V

    return-void
.end method

.method public static synthetic d(Lcom/vungle/ads/p0;)V
    .registers 1

    invoke-static {p0}, Lcom/vungle/ads/p0$a;->onAdImpression$lambda-1(Lcom/vungle/ads/p0;)V

    return-void
.end method

.method public static synthetic e(Lcom/vungle/ads/p0;)V
    .registers 1

    invoke-static {p0}, Lcom/vungle/ads/p0$a;->onAdEnd$lambda-2(Lcom/vungle/ads/p0;)V

    return-void
.end method

.method public static synthetic f(Lcom/vungle/ads/p0;)V
    .registers 1

    invoke-static {p0}, Lcom/vungle/ads/p0$a;->onAdLeftApplication$lambda-4(Lcom/vungle/ads/p0;)V

    return-void
.end method

.method private static final onAdClick$lambda-3(Lcom/vungle/ads/p0;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdListener()Lcom/vungle/ads/t0;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v0, p0}, Lcom/vungle/ads/t0;->onAdClicked(Lcom/vungle/ads/BaseAd;)V

    :cond_e
    return-void
.end method

.method private static final onAdEnd$lambda-2(Lcom/vungle/ads/p0;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdListener()Lcom/vungle/ads/t0;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v0, p0}, Lcom/vungle/ads/t0;->onAdEnd(Lcom/vungle/ads/BaseAd;)V

    :cond_e
    return-void
.end method

.method private static final onAdImpression$lambda-1(Lcom/vungle/ads/p0;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdListener()Lcom/vungle/ads/t0;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v0, p0}, Lcom/vungle/ads/t0;->onAdImpression(Lcom/vungle/ads/BaseAd;)V

    :cond_e
    return-void
.end method

.method private static final onAdLeftApplication$lambda-4(Lcom/vungle/ads/p0;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdListener()Lcom/vungle/ads/t0;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v0, p0}, Lcom/vungle/ads/t0;->onAdLeftApplication(Lcom/vungle/ads/BaseAd;)V

    :cond_e
    return-void
.end method

.method private static final onAdStart$lambda-0(Lcom/vungle/ads/p0;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdListener()Lcom/vungle/ads/t0;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v0, p0}, Lcom/vungle/ads/t0;->onAdStart(Lcom/vungle/ads/BaseAd;)V

    :cond_e
    return-void
.end method

.method private static final onFailure$lambda-5(Lcom/vungle/ads/p0;Lcom/vungle/ads/VungleError;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdListener()Lcom/vungle/ads/t0;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-interface {v0, p0, p1}, Lcom/vungle/ads/t0;->onAdFailedToPlay(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V

    :cond_13
    return-void
.end method


# virtual methods
.method public onAdClick(Ljava/lang/String;)V
    .registers 10

    sget-object p1, Lcom/vungle/ads/internal/util/ThreadUtil;->INSTANCE:Lcom/vungle/ads/internal/util/ThreadUtil;

    iget-object v0, p0, Lcom/vungle/ads/p0$a;->this$0:Lcom/vungle/ads/p0;

    new-instance v1, Lcom/vungle/ads/f;

    invoke-direct {v1, v0}, Lcom/vungle/ads/f;-><init>(Lcom/vungle/ads/p0;)V

    invoke-virtual {p1, v1}, Lcom/vungle/ads/internal/util/ThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/vungle/ads/p0$a;->this$0:Lcom/vungle/ads/p0;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getDisplayToClickMetric$vungle_ads_release()Lcom/vungle/ads/q1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/q1;->markEnd()V

    sget-object v0, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    iget-object p1, p0, Lcom/vungle/ads/p0$a;->this$0:Lcom/vungle/ads/p0;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getDisplayToClickMetric$vungle_ads_release()Lcom/vungle/ads/q1;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/ads/p0$a;->$placementId:Ljava/lang/String;

    iget-object p1, p0, Lcom/vungle/ads/p0$a;->this$0:Lcom/vungle/ads/p0;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getCreativeId()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/vungle/ads/p0$a;->this$0:Lcom/vungle/ads/p0;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getEventId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/q1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onAdEnd(Ljava/lang/String;)V
    .registers 4

    sget-object p1, Lcom/vungle/ads/internal/util/ThreadUtil;->INSTANCE:Lcom/vungle/ads/internal/util/ThreadUtil;

    iget-object v0, p0, Lcom/vungle/ads/p0$a;->this$0:Lcom/vungle/ads/p0;

    new-instance v1, Lcom/vungle/ads/j;

    invoke-direct {v1, v0}, Lcom/vungle/ads/j;-><init>(Lcom/vungle/ads/p0;)V

    invoke-virtual {p1, v1}, Lcom/vungle/ads/internal/util/ThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdImpression(Ljava/lang/String;)V
    .registers 10

    sget-object p1, Lcom/vungle/ads/internal/util/ThreadUtil;->INSTANCE:Lcom/vungle/ads/internal/util/ThreadUtil;

    iget-object v0, p0, Lcom/vungle/ads/p0$a;->this$0:Lcom/vungle/ads/p0;

    new-instance v1, Lcom/vungle/ads/i;

    invoke-direct {v1, v0}, Lcom/vungle/ads/i;-><init>(Lcom/vungle/ads/p0;)V

    invoke-virtual {p1, v1}, Lcom/vungle/ads/internal/util/ThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/vungle/ads/p0$a;->this$0:Lcom/vungle/ads/p0;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getShowToDisplayMetric$vungle_ads_release()Lcom/vungle/ads/d2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/d2;->markEnd()V

    sget-object v0, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    iget-object p1, p0, Lcom/vungle/ads/p0$a;->this$0:Lcom/vungle/ads/p0;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getShowToDisplayMetric$vungle_ads_release()Lcom/vungle/ads/d2;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/ads/p0$a;->$placementId:Ljava/lang/String;

    iget-object p1, p0, Lcom/vungle/ads/p0$a;->this$0:Lcom/vungle/ads/p0;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getCreativeId()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/vungle/ads/p0$a;->this$0:Lcom/vungle/ads/p0;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getEventId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/d2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/vungle/ads/p0$a;->this$0:Lcom/vungle/ads/p0;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getDisplayToClickMetric$vungle_ads_release()Lcom/vungle/ads/q1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/q1;->markStart()V

    return-void
.end method

.method public onAdLeftApplication(Ljava/lang/String;)V
    .registers 4

    sget-object p1, Lcom/vungle/ads/internal/util/ThreadUtil;->INSTANCE:Lcom/vungle/ads/internal/util/ThreadUtil;

    iget-object v0, p0, Lcom/vungle/ads/p0$a;->this$0:Lcom/vungle/ads/p0;

    new-instance v1, Lcom/vungle/ads/k;

    invoke-direct {v1, v0}, Lcom/vungle/ads/k;-><init>(Lcom/vungle/ads/p0;)V

    invoke-virtual {p1, v1}, Lcom/vungle/ads/internal/util/ThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdRewarded(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onAdStart(Ljava/lang/String;)V
    .registers 4

    sget-object p1, Lcom/vungle/ads/internal/util/ThreadUtil;->INSTANCE:Lcom/vungle/ads/internal/util/ThreadUtil;

    iget-object v0, p0, Lcom/vungle/ads/p0$a;->this$0:Lcom/vungle/ads/p0;

    new-instance v1, Lcom/vungle/ads/h;

    invoke-direct {v1, v0}, Lcom/vungle/ads/h;-><init>(Lcom/vungle/ads/p0;)V

    invoke-virtual {p1, v1}, Lcom/vungle/ads/internal/util/ThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFailure(Lcom/vungle/ads/VungleError;)V
    .registers 5

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vungle/ads/internal/util/ThreadUtil;->INSTANCE:Lcom/vungle/ads/internal/util/ThreadUtil;

    iget-object v1, p0, Lcom/vungle/ads/p0$a;->this$0:Lcom/vungle/ads/p0;

    new-instance v2, Lcom/vungle/ads/g;

    invoke-direct {v2, v1, p1}, Lcom/vungle/ads/g;-><init>(Lcom/vungle/ads/p0;Lcom/vungle/ads/VungleError;)V

    invoke-virtual {v0, v2}, Lcom/vungle/ads/internal/util/ThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.vungle.ads.f (com.vungle.ads.f)
.class public final synthetic Lcom/vungle/ads/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/p0;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/p0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/f;->a:Lcom/vungle/ads/p0;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/f;->a:Lcom/vungle/ads/p0;

    invoke-static {v0}, Lcom/vungle/ads/p0$a;->a(Lcom/vungle/ads/p0;)V

    return-void
.end method

###### Class com.vungle.ads.g (com.vungle.ads.g)
.class public final synthetic Lcom/vungle/ads/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/p0;

.field public final synthetic b:Lcom/vungle/ads/VungleError;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/p0;Lcom/vungle/ads/VungleError;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/g;->a:Lcom/vungle/ads/p0;

    iput-object p2, p0, Lcom/vungle/ads/g;->b:Lcom/vungle/ads/VungleError;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/vungle/ads/g;->a:Lcom/vungle/ads/p0;

    iget-object v1, p0, Lcom/vungle/ads/g;->b:Lcom/vungle/ads/VungleError;

    invoke-static {v0, v1}, Lcom/vungle/ads/p0$a;->b(Lcom/vungle/ads/p0;Lcom/vungle/ads/VungleError;)V

    return-void
.end method

###### Class com.vungle.ads.h (com.vungle.ads.h)
.class public final synthetic Lcom/vungle/ads/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/p0;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/p0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/h;->a:Lcom/vungle/ads/p0;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/h;->a:Lcom/vungle/ads/p0;

    invoke-static {v0}, Lcom/vungle/ads/p0$a;->c(Lcom/vungle/ads/p0;)V

    return-void
.end method

###### Class com.vungle.ads.i (com.vungle.ads.i)
.class public final synthetic Lcom/vungle/ads/i;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/p0;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/p0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/i;->a:Lcom/vungle/ads/p0;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/i;->a:Lcom/vungle/ads/p0;

    invoke-static {v0}, Lcom/vungle/ads/p0$a;->d(Lcom/vungle/ads/p0;)V

    return-void
.end method

###### Class com.vungle.ads.j (com.vungle.ads.j)
.class public final synthetic Lcom/vungle/ads/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/p0;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/p0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/j;->a:Lcom/vungle/ads/p0;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/j;->a:Lcom/vungle/ads/p0;

    invoke-static {v0}, Lcom/vungle/ads/p0$a;->e(Lcom/vungle/ads/p0;)V

    return-void
.end method

###### Class com.vungle.ads.k (com.vungle.ads.k)
.class public final synthetic Lcom/vungle/ads/k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/p0;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/p0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/k;->a:Lcom/vungle/ads/p0;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/k;->a:Lcom/vungle/ads/p0;

    invoke-static {v0}, Lcom/vungle/ads/p0$a;->f(Lcom/vungle/ads/p0;)V

    return-void
.end method

###### Class com.vungle.ads.e (com.vungle.ads.e)
.class public final synthetic Lcom/vungle/ads/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/p0;

.field public final synthetic b:Lcom/vungle/ads/VungleError;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/p0;Lcom/vungle/ads/VungleError;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/e;->a:Lcom/vungle/ads/p0;

    iput-object p2, p0, Lcom/vungle/ads/e;->b:Lcom/vungle/ads/VungleError;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/vungle/ads/e;->a:Lcom/vungle/ads/p0;

    iget-object v1, p0, Lcom/vungle/ads/e;->b:Lcom/vungle/ads/VungleError;

    invoke-static {v0, v1}, Lcom/vungle/ads/p0;->c(Lcom/vungle/ads/p0;Lcom/vungle/ads/VungleError;)V

    return-void
.end method
