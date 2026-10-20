###### Class com.json.adapters.fyber.FyberAdapter.AnonymousClass6 (com.ironsource.adapters.fyber.FyberAdapter$6)
.class Lcom/ironsource/adapters/fyber/FyberAdapter$6;
.super Ljava/lang/Object;
.source "FyberAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/fyber/FyberAdapter;->loadBannerInternal(Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/fyber/FyberAdapter;

.field final synthetic val$banner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

.field final synthetic val$listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

.field final synthetic val$serverData:Ljava/lang/String;

.field final synthetic val$spotId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/fyber/FyberAdapter;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/ironsource/adapters/fyber/FyberAdapter$6;->this$0:Lcom/ironsource/adapters/fyber/FyberAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/fyber/FyberAdapter$6;->val$banner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    iput-object p3, p0, Lcom/ironsource/adapters/fyber/FyberAdapter$6;->val$listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    iput-object p4, p0, Lcom/ironsource/adapters/fyber/FyberAdapter$6;->val$spotId:Ljava/lang/String;

    iput-object p5, p0, Lcom/ironsource/adapters/fyber/FyberAdapter$6;->val$serverData:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/ironsource/adapters/fyber/FyberAdapter$6;->val$banner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    if-eqz v0, :cond_71

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_71

    :cond_b
    iget-object v0, p0, Lcom/ironsource/adapters/fyber/FyberAdapter$6;->this$0:Lcom/ironsource/adapters/fyber/FyberAdapter;

    iget-object v0, v0, Lcom/ironsource/adapters/fyber/FyberAdapter;->mSpotIdToBannerLayout:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/ironsource/adapters/fyber/FyberAdapter$6;->val$spotId:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/adapters/fyber/FyberAdapter$6;->val$banner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/fyber/inneractive/sdk/external/InneractiveAdSpotManager;->get()Lcom/fyber/inneractive/sdk/external/InneractiveAdSpotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/external/InneractiveAdSpotManager;->createSpot()Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/fyber/FyberAdapter$6;->this$0:Lcom/ironsource/adapters/fyber/FyberAdapter;

    invoke-static {v1, v0}, Lcom/ironsource/adapters/fyber/FyberAdapter;->access$900(Lcom/ironsource/adapters/fyber/FyberAdapter;Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;)V

    iget-object v1, p0, Lcom/ironsource/adapters/fyber/FyberAdapter$6;->this$0:Lcom/ironsource/adapters/fyber/FyberAdapter;

    new-instance v2, Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;

    invoke-direct {v2}, Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;-><init>()V

    iput-object v2, v1, Lcom/ironsource/adapters/fyber/FyberAdapter;->mInneractiveAdViewUnitController:Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;

    iget-object v1, p0, Lcom/ironsource/adapters/fyber/FyberAdapter$6;->this$0:Lcom/ironsource/adapters/fyber/FyberAdapter;

    iget-object v1, v1, Lcom/ironsource/adapters/fyber/FyberAdapter;->mInneractiveAdViewUnitController:Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;

    invoke-interface {v0, v1}, Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;->addUnitController(Lcom/fyber/inneractive/sdk/external/InneractiveUnitController;)V

    new-instance v1, Lcom/ironsource/adapters/fyber/FyberBannerAdListener;

    iget-object v2, p0, Lcom/ironsource/adapters/fyber/FyberAdapter$6;->this$0:Lcom/ironsource/adapters/fyber/FyberAdapter;

    iget-object v3, p0, Lcom/ironsource/adapters/fyber/FyberAdapter$6;->val$listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    iget-object v4, p0, Lcom/ironsource/adapters/fyber/FyberAdapter$6;->val$spotId:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/ironsource/adapters/fyber/FyberBannerAdListener;-><init>(Lcom/ironsource/adapters/fyber/FyberAdapter;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ironsource/adapters/fyber/FyberAdapter$6;->this$0:Lcom/ironsource/adapters/fyber/FyberAdapter;

    invoke-static {v2}, Lcom/ironsource/adapters/fyber/FyberAdapter;->access$1300(Lcom/ironsource/adapters/fyber/FyberAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/adapters/fyber/FyberAdapter$6;->val$spotId:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;->setRequestListener(Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot$RequestListener;)V

    iget-object v2, p0, Lcom/ironsource/adapters/fyber/FyberAdapter$6;->this$0:Lcom/ironsource/adapters/fyber/FyberAdapter;

    iget-object v2, v2, Lcom/ironsource/adapters/fyber/FyberAdapter;->mInneractiveAdViewUnitController:Lcom/fyber/inneractive/sdk/external/InneractiveAdViewUnitController;

    invoke-virtual {v2, v1}, Lcom/fyber/inneractive/sdk/flow/e0;->setEventsListener(Lcom/fyber/inneractive/sdk/external/InneractiveUnitController$EventsListener;)V

    iget-object v1, p0, Lcom/ironsource/adapters/fyber/FyberAdapter$6;->this$0:Lcom/ironsource/adapters/fyber/FyberAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/fyber/FyberAdapter;->access$1400(Lcom/ironsource/adapters/fyber/FyberAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adapters/fyber/FyberAdapter$6;->val$spotId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ironsource/adapters/fyber/FyberAdapter$6;->val$serverData:Ljava/lang/String;

    if-nez v1, :cond_6d

    new-instance v1, Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;

    iget-object v2, p0, Lcom/ironsource/adapters/fyber/FyberAdapter$6;->val$spotId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;->requestAd(Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;)V

    goto :goto_70

    :cond_6d
    invoke-interface {v0, v1}, Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;->loadAd(Ljava/lang/String;)V

    :goto_70
    return-void

    :cond_71
    :goto_71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fyber loadBanner - banner "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/adapters/fyber/FyberAdapter$6;->val$banner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    if-nez v1, :cond_82

    const-string v1, "layout is null"

    goto :goto_84

    :cond_82
    const-string v1, "is destroyed"

    :goto_84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/fyber/FyberAdapter$6;->val$listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    invoke-interface {v1, v0}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method
