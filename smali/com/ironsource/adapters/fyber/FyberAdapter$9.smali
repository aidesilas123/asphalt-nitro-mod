###### Class com.json.adapters.fyber.FyberAdapter.AnonymousClass9 (com.ironsource.adapters.fyber.FyberAdapter$9)
.class Lcom/ironsource/adapters/fyber/FyberAdapter$9;
.super Ljava/lang/Object;
.source "FyberAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/fyber/FyberAdapter;->setCCPAValue(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/fyber/FyberAdapter;

.field final synthetic val$value:Z


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/fyber/FyberAdapter;Z)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/adapters/fyber/FyberAdapter$9;->this$0:Lcom/ironsource/adapters/fyber/FyberAdapter;

    iput-boolean p2, p0, Lcom/ironsource/adapters/fyber/FyberAdapter$9;->val$value:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    invoke-static {}, Lcom/ironsource/adapters/fyber/FyberAdapter;->access$200()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_35

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCCPAValue - value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/ironsource/adapters/fyber/FyberAdapter$9;->val$value:Z

    const-string v3, "1YY-"

    const-string v4, "1YN-"

    if-eqz v2, :cond_20

    move-object v2, v3

    goto :goto_21

    :cond_20
    move-object v2, v4

    :goto_21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/ironsource/adapters/fyber/FyberAdapter$9;->val$value:Z

    if-eqz v0, :cond_30

    goto :goto_31

    :cond_30
    move-object v3, v4

    :goto_31
    invoke-static {v3}, Lcom/fyber/inneractive/sdk/external/InneractiveAdManager;->setUSPrivacyString(Ljava/lang/String;)V

    goto :goto_3e

    :cond_35
    iget-boolean v0, p0, Lcom/ironsource/adapters/fyber/FyberAdapter$9;->val$value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/adapters/fyber/FyberAdapter;->access$1602(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    :goto_3e
    return-void
.end method
