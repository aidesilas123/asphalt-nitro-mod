###### Class com.json.adapters.fyber.FyberAdapter.AnonymousClass7 (com.ironsource.adapters.fyber.FyberAdapter$7)
.class Lcom/ironsource/adapters/fyber/FyberAdapter$7;
.super Ljava/lang/Object;
.source "FyberAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/fyber/FyberAdapter;->destroyBanner(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/fyber/FyberAdapter;

.field final synthetic val$spotId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/fyber/FyberAdapter;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/adapters/fyber/FyberAdapter$7;->this$0:Lcom/ironsource/adapters/fyber/FyberAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/fyber/FyberAdapter$7;->val$spotId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/adapters/fyber/FyberAdapter$7;->this$0:Lcom/ironsource/adapters/fyber/FyberAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/fyber/FyberAdapter;->access$1400(Lcom/ironsource/adapters/fyber/FyberAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/fyber/FyberAdapter$7;->val$spotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;

    if-eqz v0, :cond_36

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroying previous ad with spotId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ironsource/adapters/fyber/FyberAdapter$7;->val$spotId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;->destroy()V

    iget-object v0, p0, Lcom/ironsource/adapters/fyber/FyberAdapter$7;->this$0:Lcom/ironsource/adapters/fyber/FyberAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/fyber/FyberAdapter;->access$1400(Lcom/ironsource/adapters/fyber/FyberAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/fyber/FyberAdapter$7;->val$spotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    return-void
.end method
