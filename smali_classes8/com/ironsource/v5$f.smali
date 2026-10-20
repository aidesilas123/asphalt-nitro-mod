###### Class com.ironsource.v5.f (com.ironsource.v5$f)
.class Lcom/ironsource/v5$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/v5;->onRewardedVideoAdRewarded(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;

.field final synthetic c:Lcom/ironsource/v5;


# direct methods
.method constructor <init>(Lcom/ironsource/v5;Ljava/lang/String;Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/v5$f;->c:Lcom/ironsource/v5;

    iput-object p2, p0, Lcom/ironsource/v5$f;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/v5$f;->b:Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/v5$f;->c:Lcom/ironsource/v5;

    iget-object v1, p0, Lcom/ironsource/v5$f;->a:Ljava/lang/String;

    const-string v2, "onRewardedVideoAdRewarded()"

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/s5$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/v5$f;->b:Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;

    iget-object v1, p0, Lcom/ironsource/v5$f;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;->onRewardedVideoAdRewarded(Ljava/lang/String;)V

    return-void
.end method
