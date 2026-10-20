###### Class com.ironsource.va.g (com.ironsource.va$g)
.class Lcom/ironsource/va$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/va;->c()V
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

    iput-object p1, p0, Lcom/ironsource/va$g;->a:Lcom/ironsource/va;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/va$g;->a:Lcom/ironsource/va;

    invoke-static {v0}, Lcom/ironsource/va;->i(Lcom/ironsource/va;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/ironsource/va$g;->a:Lcom/ironsource/va;

    invoke-static {v0}, Lcom/ironsource/va;->i(Lcom/ironsource/va;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAdStarted()V

    iget-object v0, p0, Lcom/ironsource/va$g;->a:Lcom/ironsource/va;

    const-string v1, "onRewardedVideoAdStarted()"

    invoke-static {v0, v1}, Lcom/ironsource/va;->f(Lcom/ironsource/va;Ljava/lang/String;)V

    :cond_18
    return-void
.end method
