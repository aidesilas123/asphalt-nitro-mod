###### Class com.fyber.inneractive.sdk.player.controller.q (com.fyber.inneractive.sdk.player.controller.q)
.class public Lcom/fyber/inneractive/sdk/player/controller/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/player/controller/n;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/controller/n;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/q;->a:Lcom/fyber/inneractive/sdk/player/controller/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .registers 4

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/q;->a:Lcom/fyber/inneractive/sdk/player/controller/n;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/q;->a:Lcom/fyber/inneractive/sdk/player/controller/n;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/fyber/inneractive/sdk/player/ui/d;->h:Z

    iget-object v0, p1, Lcom/fyber/inneractive/sdk/player/ui/l;->G:Lcom/fyber/inneractive/sdk/util/u0;

    if-eqz v0, :cond_26

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Autoclick paused"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/ui/l;->G:Lcom/fyber/inneractive/sdk/util/u0;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/util/u0;->a()V

    :cond_26
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/q;->a:Lcom/fyber/inneractive/sdk/player/controller/n;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/player/ui/d;->b()V

    :cond_2d
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 4

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/q;->a:Lcom/fyber/inneractive/sdk/player/controller/n;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/q;->a:Lcom/fyber/inneractive/sdk/player/controller/n;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/fyber/inneractive/sdk/player/ui/d;->h:Z

    iget-object v1, p1, Lcom/fyber/inneractive/sdk/player/ui/l;->G:Lcom/fyber/inneractive/sdk/util/u0;

    if-eqz v1, :cond_25

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Autoclick resumed"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/ui/l;->G:Lcom/fyber/inneractive/sdk/util/u0;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/util/u0;->b()V

    :cond_25
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/q;->a:Lcom/fyber/inneractive/sdk/player/controller/n;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/player/ui/d;->b()V

    :cond_2c
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
