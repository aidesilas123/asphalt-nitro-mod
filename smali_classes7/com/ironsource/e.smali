###### Class com.json.e (com.ironsource.e)
.class public Lcom/ironsource/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private a:Lcom/ironsource/ea;


# direct methods
.method public constructor <init>(Lcom/ironsource/ea;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/e;->a:Lcom/ironsource/ea;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 3

    invoke-static {p1}, Lcom/ironsource/sdk/utils/SDKUtils;->isIronSourceActivity(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/ironsource/e;->a:Lcom/ironsource/ea;

    invoke-interface {v0, p1}, Lcom/ironsource/ea;->b(Landroid/app/Activity;)V

    :cond_b
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 3

    invoke-static {p1}, Lcom/ironsource/sdk/utils/SDKUtils;->isIronSourceActivity(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/ironsource/e;->a:Lcom/ironsource/ea;

    invoke-interface {v0, p1}, Lcom/ironsource/ea;->c(Landroid/app/Activity;)V

    :cond_b
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method
