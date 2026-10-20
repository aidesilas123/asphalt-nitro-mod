###### Class com.ironsource.y8.p (com.ironsource.y8$p)
.class Lcom/ironsource/y8$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/y8;->a(ZLjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/ironsource/y8;


# direct methods
.method constructor <init>(Lcom/ironsource/y8;Z)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/y8$p;->b:Lcom/ironsource/y8;

    iput-boolean p2, p0, Lcom/ironsource/y8$p;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/y8$p;->b:Lcom/ironsource/y8;

    invoke-static {v0}, Lcom/ironsource/y8;->d(Lcom/ironsource/y8;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ironsource/y8$p;->a:Z

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAvailabilityChanged(Z)V

    return-void
.end method
