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
