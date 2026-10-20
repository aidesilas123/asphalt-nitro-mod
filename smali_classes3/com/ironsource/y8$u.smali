###### Class com.ironsource.y8.u (com.ironsource.y8$u)
.class Lcom/ironsource/y8$u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/y8;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/mediationsdk/logger/IronSourceError;

.field final synthetic b:Lcom/ironsource/y8;


# direct methods
.method constructor <init>(Lcom/ironsource/y8;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/y8$u;->b:Lcom/ironsource/y8;

    iput-object p2, p0, Lcom/ironsource/y8$u;->a:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/y8$u;->b:Lcom/ironsource/y8;

    invoke-static {v0}, Lcom/ironsource/y8;->d(Lcom/ironsource/y8;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/y8$u;->a:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method
