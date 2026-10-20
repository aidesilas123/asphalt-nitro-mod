###### Class com.json.adapters.hyprmx.HyprMXAdapter.AnonymousClass3 (com.ironsource.adapters.hyprmx.HyprMXAdapter$3)
.class Lcom/ironsource/adapters/hyprmx/HyprMXAdapter$3;
.super Ljava/lang/Object;
.source "HyprMXAdapter.java"

# interfaces
.implements Lcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXInitializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/hyprmx/HyprMXAdapter;->initSDK(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/hyprmx/HyprMXAdapter;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/hyprmx/HyprMXAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adapters/hyprmx/HyprMXAdapter$3;->this$0:Lcom/ironsource/adapters/hyprmx/HyprMXAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initializationComplete()V
    .registers 3

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    iget-object v0, p0, Lcom/ironsource/adapters/hyprmx/HyprMXAdapter$3;->this$0:Lcom/ironsource/adapters/hyprmx/HyprMXAdapter;

    sget-object v1, Lcom/ironsource/adapters/hyprmx/HyprMXAdapter$EInitState;->INIT_SUCCESS:Lcom/ironsource/adapters/hyprmx/HyprMXAdapter$EInitState;

    invoke-static {v0, v1}, Lcom/ironsource/adapters/hyprmx/HyprMXAdapter;->access$100(Lcom/ironsource/adapters/hyprmx/HyprMXAdapter;Lcom/ironsource/adapters/hyprmx/HyprMXAdapter$EInitState;)V

    invoke-static {}, Lcom/ironsource/adapters/hyprmx/HyprMXAdapter;->access$200()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;

    invoke-interface {v1}, Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;->onNetworkInitCallbackSuccess()V

    goto :goto_14

    :cond_24
    invoke-static {}, Lcom/ironsource/adapters/hyprmx/HyprMXAdapter;->access$200()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public initializationFailed()V
    .registers 4

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    iget-object v0, p0, Lcom/ironsource/adapters/hyprmx/HyprMXAdapter$3;->this$0:Lcom/ironsource/adapters/hyprmx/HyprMXAdapter;

    sget-object v1, Lcom/ironsource/adapters/hyprmx/HyprMXAdapter$EInitState;->INIT_FAIL:Lcom/ironsource/adapters/hyprmx/HyprMXAdapter$EInitState;

    invoke-static {v0, v1}, Lcom/ironsource/adapters/hyprmx/HyprMXAdapter;->access$100(Lcom/ironsource/adapters/hyprmx/HyprMXAdapter;Lcom/ironsource/adapters/hyprmx/HyprMXAdapter$EInitState;)V

    invoke-static {}, Lcom/ironsource/adapters/hyprmx/HyprMXAdapter;->access$200()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;

    const-string v2, "HyprMX SDK failed to initiate"

    invoke-interface {v1, v2}, Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;->onNetworkInitCallbackFailed(Ljava/lang/String;)V

    goto :goto_14

    :cond_26
    invoke-static {}, Lcom/ironsource/adapters/hyprmx/HyprMXAdapter;->access$200()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method
