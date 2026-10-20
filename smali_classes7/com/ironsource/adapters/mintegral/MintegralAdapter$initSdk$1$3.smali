###### Class com.json.adapters.mintegral.MintegralAdapter$initSdk$1$3 (com.ironsource.adapters.mintegral.MintegralAdapter$initSdk$1$3)
.class public final Lcom/ironsource/adapters/mintegral/MintegralAdapter$initSdk$1$3;
.super Ljava/lang/Object;
.source "MintegralAdapter.kt"

# interfaces
.implements Lcom/mbridge/msdk/out/SDKInitStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/mintegral/MintegralAdapter;->initSdk(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/ironsource/adapters/mintegral/MintegralAdapter$initSdk$1$3",
        "Lcom/mbridge/msdk/out/SDKInitStatusListener;",
        "onInitFail",
        "",
        "errorMsg",
        "",
        "onInitSuccess",
        "mintegraladapter_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/mintegral/MintegralAdapter;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/mintegral/MintegralAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adapters/mintegral/MintegralAdapter$initSdk$1$3;->this$0:Lcom/ironsource/adapters/mintegral/MintegralAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitFail(Ljava/lang/String;)V
    .registers 5

    const-string v0, "errorMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    sget-object p1, Lcom/ironsource/adapters/mintegral/MintegralAdapter;->Companion:Lcom/ironsource/adapters/mintegral/MintegralAdapter$Companion;

    sget-object p1, Lcom/ironsource/adapters/mintegral/MintegralAdapter$Companion$EInitState;->INIT_FAIL:Lcom/ironsource/adapters/mintegral/MintegralAdapter$Companion$EInitState;

    invoke-static {p1}, Lcom/ironsource/adapters/mintegral/MintegralAdapter;->access$setMInitState$cp(Lcom/ironsource/adapters/mintegral/MintegralAdapter$Companion$EInitState;)V

    invoke-static {}, Lcom/ironsource/adapters/mintegral/MintegralAdapter;->access$getInitCallbackListeners$cp()Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "initCallbackListeners"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;

    const-string v1, "SDK failed to init."

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;->onNetworkInitCallbackFailed(Ljava/lang/String;)V

    goto :goto_2a

    :cond_41
    invoke-static {}, Lcom/ironsource/adapters/mintegral/MintegralAdapter;->access$getInitCallbackListeners$cp()Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public onInitSuccess()V
    .registers 4

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    sget-object v0, Lcom/ironsource/adapters/mintegral/MintegralAdapter;->Companion:Lcom/ironsource/adapters/mintegral/MintegralAdapter$Companion;

    sget-object v0, Lcom/ironsource/adapters/mintegral/MintegralAdapter$Companion$EInitState;->INIT_SUCCESS:Lcom/ironsource/adapters/mintegral/MintegralAdapter$Companion$EInitState;

    invoke-static {v0}, Lcom/ironsource/adapters/mintegral/MintegralAdapter;->access$setMInitState$cp(Lcom/ironsource/adapters/mintegral/MintegralAdapter$Companion$EInitState;)V

    iget-object v0, p0, Lcom/ironsource/adapters/mintegral/MintegralAdapter$initSdk$1$3;->this$0:Lcom/ironsource/adapters/mintegral/MintegralAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/mintegral/MintegralAdapter;->access$getCoppaUserData$p(Lcom/ironsource/adapters/mintegral/MintegralAdapter;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/ironsource/adapters/mintegral/MintegralAdapter$initSdk$1$3;->this$0:Lcom/ironsource/adapters/mintegral/MintegralAdapter;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/ironsource/adapters/mintegral/MintegralAdapter;->access$setCOPPAValue(Lcom/ironsource/adapters/mintegral/MintegralAdapter;Z)V

    :cond_1d
    invoke-static {}, Lcom/ironsource/adapters/mintegral/MintegralAdapter;->access$getInitCallbackListeners$cp()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "initCallbackListeners"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;

    invoke-interface {v1}, Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;->onNetworkInitCallbackSuccess()V

    goto :goto_25

    :cond_3a
    invoke-static {}, Lcom/ironsource/adapters/mintegral/MintegralAdapter;->access$getInitCallbackListeners$cp()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method
