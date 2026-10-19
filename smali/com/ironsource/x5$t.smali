###### Class com.ironsource.x5.t (com.ironsource.x5$t)
.class Lcom/ironsource/x5$t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/x5;->d(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/x5;


# direct methods
.method constructor <init>(Lcom/ironsource/x5;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/x5$t;->a:Lcom/ironsource/x5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/x5$t;->a:Lcom/ironsource/x5;

    invoke-static {v0}, Lcom/ironsource/x5;->g(Lcom/ironsource/x5;)Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/ironsource/x5$t;->a:Lcom/ironsource/x5;

    invoke-static {v0}, Lcom/ironsource/x5;->g(Lcom/ironsource/x5;)Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialListener;->onInterstitialAdOpened()V

    iget-object v0, p0, Lcom/ironsource/x5$t;->a:Lcom/ironsource/x5;

    const-string v1, "onInterstitialAdOpened()"

    invoke-static {v0, v1}, Lcom/ironsource/x5;->d(Lcom/ironsource/x5;Ljava/lang/String;)V

    :cond_18
    return-void
.end method
