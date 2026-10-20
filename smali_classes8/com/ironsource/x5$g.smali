###### Class com.ironsource.x5.g (com.ironsource.x5$g)
.class Lcom/ironsource/x5$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/x5;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/mediationsdk/logger/IronSourceError;

.field final synthetic b:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

.field final synthetic c:Lcom/ironsource/x5;


# direct methods
.method constructor <init>(Lcom/ironsource/x5;Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/x5$g;->c:Lcom/ironsource/x5;

    iput-object p2, p0, Lcom/ironsource/x5$g;->a:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    iput-object p3, p0, Lcom/ironsource/x5$g;->b:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/x5$g;->c:Lcom/ironsource/x5;

    invoke-static {v0}, Lcom/ironsource/x5;->c(Lcom/ironsource/x5;)Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/ironsource/x5$g;->c:Lcom/ironsource/x5;

    invoke-static {v0}, Lcom/ironsource/x5;->c(Lcom/ironsource/x5;)Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/x5$g;->a:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    iget-object v2, p0, Lcom/ironsource/x5$g;->c:Lcom/ironsource/x5;

    iget-object v3, p0, Lcom/ironsource/x5$g;->b:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-static {v2, v3}, Lcom/ironsource/x5;->s(Lcom/ironsource/x5;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;->onAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdShowFailed() adInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/x5$g;->c:Lcom/ironsource/x5;

    iget-object v3, p0, Lcom/ironsource/x5$g;->b:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-static {v2, v3}, Lcom/ironsource/x5;->t(Lcom/ironsource/x5;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/x5$g;->a:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    :cond_47
    return-void
.end method
