###### Class com.json.bc (com.ironsource.bc)
.class public final Lcom/ironsource/bc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010*\u001a\u00020\u001f\u0012\u0006\u0010+\u001a\u00020&\u0012\u0006\u0010,\u001a\u00020\"\u00a2\u0006\u0004\u0008-\u0010.J(\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u000e\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0006H\u0002J \u0010\u000e\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bH\u0007J\u0008\u0010\u000f\u001a\u00020\u0008H\u0007J\u0008\u0010\u0010\u001a\u00020\u0008H\u0007J \u0010\u0011\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bH\u0007J\u0008\u0010\u0012\u001a\u00020\u0008H\u0007J\u0008\u0010\u0013\u001a\u00020\u0008H\u0007J8\u0010\u0018\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0015H\u0007J\u0010\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u0019H\u0007J\u0008\u0010\u001c\u001a\u00020\u0008H\u0007J\u0008\u0010\u001d\u001a\u00020\u0008H\u0007J\u0008\u0010\u001e\u001a\u00020\u0008H\u0007R\u0014\u0010!\u001a\u00020\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010 R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0014\u0010)\u001a\u00020&8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(\u00a8\u0006/"
    }
    d2 = {
        "Lcom/ironsource/bc;",
        "",
        "",
        "callbackName",
        "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
        "adUnit",
        "",
        "args",
        "",
        "a",
        "adNetwork",
        "",
        "isBidding",
        "isTest",
        "loadInterstitialAd",
        "isInterstitialReady",
        "showInterstitialAd",
        "loadRewardedVideoAd",
        "isRewardedVideoReady",
        "showRewardedVideoAd",
        "description",
        "",
        "width",
        "height",
        "loadBannerAd",
        "",
        "marginPercentageFromTop",
        "addBannerAdToScreen",
        "destroyBannerAd",
        "onDataLoaded",
        "closeTestSuite",
        "Lcom/ironsource/xb;",
        "Lcom/ironsource/xb;",
        "mAdsManager",
        "Lcom/ironsource/cc;",
        "b",
        "Lcom/ironsource/cc;",
        "mJavaScriptEvaluator",
        "Lcom/ironsource/a7;",
        "c",
        "Lcom/ironsource/a7;",
        "mUILifeCycleListener",
        "adsManager",
        "uiLifeCycleListener",
        "javaScriptEvaluator",
        "<init>",
        "(Lcom/ironsource/xb;Lcom/ironsource/a7;Lcom/ironsource/cc;)V",
        "mediationsdk_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lcom/ironsource/xb;

.field private final b:Lcom/ironsource/cc;

.field private final c:Lcom/ironsource/a7;


# direct methods
.method public constructor <init>(Lcom/ironsource/xb;Lcom/ironsource/a7;Lcom/ironsource/cc;)V
    .registers 5

    const-string v0, "adsManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiLifeCycleListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaScriptEvaluator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/bc;->a:Lcom/ironsource/xb;

    iput-object p3, p0, Lcom/ironsource/bc;->b:Lcom/ironsource/cc;

    iput-object p2, p0, Lcom/ironsource/bc;->c:Lcom/ironsource/a7;

    return-void
.end method

.method private final a(Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/bc;->b:Lcom/ironsource/cc;

    invoke-interface {v0, p1, p2, p3}, Lcom/ironsource/cc;->a(Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final addBannerAdToScreen(D)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/ironsource/bc;->a:Lcom/ironsource/xb;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/xb;->a(D)V

    return-void
.end method

.method public final closeTestSuite()V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-virtual {p0}, Lcom/ironsource/bc;->destroyBannerAd()V

    iget-object v0, p0, Lcom/ironsource/bc;->c:Lcom/ironsource/a7;

    invoke-interface {v0}, Lcom/ironsource/a7;->onClosed()V

    return-void
.end method

.method public final destroyBannerAd()V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/ironsource/bc;->a:Lcom/ironsource/xb;

    invoke-virtual {v0}, Lcom/ironsource/xb;->a()V

    return-void
.end method

.method public final isInterstitialReady()V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/ironsource/bc;->a:Lcom/ironsource/xb;

    invoke-virtual {v0}, Lcom/ironsource/xb;->c()Z

    move-result v0

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    sget-object v2, Lcom/ironsource/jc;->a:Lcom/ironsource/jc;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/ironsource/jc;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v2, "isInterstitialReady"

    invoke-direct {p0, v2, v1, v0}, Lcom/ironsource/bc;->a(Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/util/List;)V

    return-void
.end method

.method public final isRewardedVideoReady()V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/ironsource/bc;->a:Lcom/ironsource/xb;

    invoke-virtual {v0}, Lcom/ironsource/xb;->d()Z

    move-result v0

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    sget-object v2, Lcom/ironsource/jc;->a:Lcom/ironsource/jc;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/ironsource/jc;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v2, "isRewardedVideoReady"

    invoke-direct {p0, v2, v1, v0}, Lcom/ironsource/bc;->a(Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/util/List;)V

    return-void
.end method

.method public final loadBannerAd(Ljava/lang/String;ZZLjava/lang/String;II)V
    .registers 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "adNetwork"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/dc;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-direct {v0, p1, p2, p3}, Lcom/ironsource/dc;-><init>(Ljava/lang/String;ZLjava/lang/Boolean;)V

    iget-object p1, p0, Lcom/ironsource/bc;->a:Lcom/ironsource/xb;

    invoke-virtual {p1, v0, p4, p5, p6}, Lcom/ironsource/xb;->a(Lcom/ironsource/dc;Ljava/lang/String;II)V

    return-void
.end method

.method public final loadInterstitialAd(Ljava/lang/String;ZZ)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "adNetwork"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/dc;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-direct {v0, p1, p2, p3}, Lcom/ironsource/dc;-><init>(Ljava/lang/String;ZLjava/lang/Boolean;)V

    iget-object p1, p0, Lcom/ironsource/bc;->a:Lcom/ironsource/xb;

    invoke-virtual {p1, v0}, Lcom/ironsource/xb;->a(Lcom/ironsource/dc;)V

    return-void
.end method

.method public final loadRewardedVideoAd(Ljava/lang/String;ZZ)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "adNetwork"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/dc;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-direct {v0, p1, p2, p3}, Lcom/ironsource/dc;-><init>(Ljava/lang/String;ZLjava/lang/Boolean;)V

    iget-object p1, p0, Lcom/ironsource/bc;->a:Lcom/ironsource/xb;

    invoke-virtual {p1, v0}, Lcom/ironsource/xb;->b(Lcom/ironsource/dc;)V

    return-void
.end method

.method public final onDataLoaded()V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/ironsource/bc;->c:Lcom/ironsource/a7;

    invoke-interface {v0}, Lcom/ironsource/a7;->onUIReady()V

    return-void
.end method

.method public final showInterstitialAd()V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/ironsource/bc;->a:Lcom/ironsource/xb;

    invoke-virtual {v0}, Lcom/ironsource/xb;->e()V

    return-void
.end method

.method public final showRewardedVideoAd()V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/ironsource/bc;->a:Lcom/ironsource/xb;

    invoke-virtual {v0}, Lcom/ironsource/xb;->f()V

    return-void
.end method
