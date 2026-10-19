###### Class com.ironsource.va.s (com.ironsource.va$s)
.class Lcom/ironsource/va$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/va;->d(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/va;


# direct methods
.method constructor <init>(Lcom/ironsource/va;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/va$s;->a:Lcom/ironsource/va;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/va$s;->a:Lcom/ironsource/va;

    invoke-static {v0}, Lcom/ironsource/va;->i(Lcom/ironsource/va;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/ironsource/va$s;->a:Lcom/ironsource/va;

    invoke-static {v0}, Lcom/ironsource/va;->i(Lcom/ironsource/va;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/RewardedVideoManualListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoManualListener;->onRewardedVideoAdReady()V

    iget-object v0, p0, Lcom/ironsource/va$s;->a:Lcom/ironsource/va;

    const-string v1, "onRewardedVideoAdReady()"

    invoke-static {v0, v1}, Lcom/ironsource/va;->f(Lcom/ironsource/va;Ljava/lang/String;)V

    :cond_1a
    return-void
.end method
