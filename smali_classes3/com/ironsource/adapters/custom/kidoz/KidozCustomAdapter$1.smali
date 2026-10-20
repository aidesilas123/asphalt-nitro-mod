###### Class com.json.adapters.custom.kidoz.KidozCustomAdapter.AnonymousClass1 (com.ironsource.adapters.custom.kidoz.KidozCustomAdapter$1)
.class Lcom/ironsource/adapters/custom/kidoz/KidozCustomAdapter$1;
.super Ljava/lang/Object;
.source "KidozCustomAdapter.java"

# interfaces
.implements Lcom/kidoz/sdk/api/interfaces/SDKEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/custom/kidoz/KidozCustomAdapter;->init(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/custom/kidoz/KidozCustomAdapter;

.field final synthetic val$networkInitializationListener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/custom/kidoz/KidozCustomAdapter;Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/adapters/custom/kidoz/KidozCustomAdapter$1;->this$0:Lcom/ironsource/adapters/custom/kidoz/KidozCustomAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/custom/kidoz/KidozCustomAdapter$1;->val$networkInitializationListener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitError(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/ironsource/adapters/custom/kidoz/KidozCustomAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KidozCustomAdapter onInitError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ironsource/adapters/custom/kidoz/KidozCustomAdapter$1;->val$networkInitializationListener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;

    if-eqz v0, :cond_1f

    const/16 v1, 0x3e8

    invoke-interface {v0, v1, p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;->onInitFailed(ILjava/lang/String;)V

    :cond_1f
    return-void
.end method

.method public onInitSuccess()V
    .registers 3

    sget-object v0, Lcom/ironsource/adapters/custom/kidoz/KidozCustomAdapter;->TAG:Ljava/lang/String;

    const-string v1, "KidozCustomAdapter onInitSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ironsource/adapters/custom/kidoz/KidozCustomAdapter$1;->val$networkInitializationListener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;->onInitSuccess()V

    :cond_e
    return-void
.end method
