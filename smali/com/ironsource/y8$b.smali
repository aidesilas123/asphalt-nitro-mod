###### Class com.ironsource.y8.b (com.ironsource.y8$b)
.class Lcom/ironsource/y8$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/y8;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
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

    iput-object p1, p0, Lcom/ironsource/y8$b;->b:Lcom/ironsource/y8;

    iput-object p2, p0, Lcom/ironsource/y8$b;->a:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/y8$b;->b:Lcom/ironsource/y8;

    invoke-static {v0}, Lcom/ironsource/y8;->e(Lcom/ironsource/y8;)Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/y8$b;->a:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/sdk/InterstitialListener;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method
