###### Class com.fyber.inneractive.sdk.web.t.h (com.fyber.inneractive.sdk.web.t$h)
.class public Lcom/fyber/inneractive/sdk/web/t$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/web/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/web/t;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/web/t;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/t$h;->a:Lcom/fyber/inneractive/sdk/web/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackButtonPressed()V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t$h;->a:Lcom/fyber/inneractive/sdk/web/t;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/t;->q:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t$h;->a:Lcom/fyber/inneractive/sdk/web/t;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/t;->q:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/inneractive/sdk/activities/InternalStoreWebpageActivity;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/activities/InternalStoreWebpageActivity;->finish()V

    :cond_19
    return-void
.end method

.method public onCancelButtonPressed()V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t$h;->a:Lcom/fyber/inneractive/sdk/web/t;

    iget-boolean v1, v0, Lcom/fyber/inneractive/sdk/web/t;->B:Z

    if-eqz v1, :cond_9

    sget-object v1, Lcom/fyber/inneractive/sdk/ignite/k;->TRUE_SINGLE_TAP:Lcom/fyber/inneractive/sdk/ignite/k;

    goto :goto_b

    :cond_9
    sget-object v1, Lcom/fyber/inneractive/sdk/ignite/k;->SINGLE_TAP:Lcom/fyber/inneractive/sdk/ignite/k;

    :goto_b
    iput-object v1, v0, Lcom/fyber/inneractive/sdk/web/t;->d:Lcom/fyber/inneractive/sdk/ignite/k;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/web/t;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/web/t;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t$h;->a:Lcom/fyber/inneractive/sdk/web/t;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/web/t;->h:Lcom/fyber/inneractive/sdk/ignite/j;

    if-eqz v1, :cond_31

    iget-boolean v1, v0, Lcom/fyber/inneractive/sdk/web/t;->r:Z

    if-nez v1, :cond_31

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/web/t;->d:Lcom/fyber/inneractive/sdk/ignite/k;

    if-eqz v1, :cond_31

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fyber/inneractive/sdk/web/t;->b(Lcom/fyber/inneractive/sdk/web/t;Z)Z

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t$h;->a:Lcom/fyber/inneractive/sdk/web/t;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/web/t;->h:Lcom/fyber/inneractive/sdk/ignite/j;

    sget-object v2, Lcom/fyber/inneractive/sdk/network/r;->IGNITE_FLOW_CANCEL_INSTALL_CLICKED:Lcom/fyber/inneractive/sdk/network/r;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/t;->d:Lcom/fyber/inneractive/sdk/ignite/k;

    check-cast v1, Lcom/fyber/inneractive/sdk/flow/p$a;

    invoke-virtual {v1, v2, v0}, Lcom/fyber/inneractive/sdk/flow/p$a;->a(Lcom/fyber/inneractive/sdk/network/r;Lcom/fyber/inneractive/sdk/ignite/k;)V

    :cond_31
    return-void
.end method

.method public onInstallButtonPressed()V
    .registers 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t$h;->a:Lcom/fyber/inneractive/sdk/web/t;

    iget-boolean v1, v0, Lcom/fyber/inneractive/sdk/web/t;->B:Z

    if-eqz v1, :cond_9

    sget-object v1, Lcom/fyber/inneractive/sdk/ignite/k;->TRUE_SINGLE_TAP:Lcom/fyber/inneractive/sdk/ignite/k;

    goto :goto_b

    :cond_9
    sget-object v1, Lcom/fyber/inneractive/sdk/ignite/k;->SINGLE_TAP:Lcom/fyber/inneractive/sdk/ignite/k;

    :goto_b
    iput-object v1, v0, Lcom/fyber/inneractive/sdk/web/t;->d:Lcom/fyber/inneractive/sdk/ignite/k;

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/web/t;->b:Lcom/fyber/inneractive/sdk/ignite/c;

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/web/t;->c:Ljava/lang/String;

    new-instance v4, Lcom/fyber/inneractive/sdk/ignite/c$d;

    iget-object v5, v0, Lcom/fyber/inneractive/sdk/web/t;->f:Ljava/lang/String;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/t;->h:Lcom/fyber/inneractive/sdk/ignite/j;

    check-cast v0, Lcom/fyber/inneractive/sdk/flow/p$a;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/flow/p$a;->a:Lcom/fyber/inneractive/sdk/flow/p;

    invoke-direct {v4, v5, v1, v0}, Lcom/fyber/inneractive/sdk/ignite/c$d;-><init>(Ljava/lang/String;Lcom/fyber/inneractive/sdk/ignite/k;Lcom/fyber/inneractive/sdk/flow/p;)V

    invoke-virtual {v2, v3, v4}, Lcom/fyber/inneractive/sdk/ignite/c;->a(Ljava/lang/String;Lcom/fyber/inneractive/sdk/ignite/c$d;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t$h;->a:Lcom/fyber/inneractive/sdk/web/t;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/web/t;->h:Lcom/fyber/inneractive/sdk/ignite/j;

    if-eqz v1, :cond_40

    iget-boolean v1, v0, Lcom/fyber/inneractive/sdk/web/t;->s:Z

    if-nez v1, :cond_40

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/web/t;->d:Lcom/fyber/inneractive/sdk/ignite/k;

    if-eqz v1, :cond_40

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fyber/inneractive/sdk/web/t;->a(Lcom/fyber/inneractive/sdk/web/t;Z)Z

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t$h;->a:Lcom/fyber/inneractive/sdk/web/t;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/web/t;->h:Lcom/fyber/inneractive/sdk/ignite/j;

    sget-object v2, Lcom/fyber/inneractive/sdk/network/r;->IGNITE_FLOW_INSTALL_CLICKED:Lcom/fyber/inneractive/sdk/network/r;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/t;->d:Lcom/fyber/inneractive/sdk/ignite/k;

    check-cast v1, Lcom/fyber/inneractive/sdk/flow/p$a;

    invoke-virtual {v1, v2, v0}, Lcom/fyber/inneractive/sdk/flow/p$a;->a(Lcom/fyber/inneractive/sdk/network/r;Lcom/fyber/inneractive/sdk/ignite/k;)V

    :cond_40
    return-void
.end method

.method public onNavigatedInsideStorePage()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t$h;->a:Lcom/fyber/inneractive/sdk/web/t;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fyber/inneractive/sdk/web/t;->c(Lcom/fyber/inneractive/sdk/web/t;Z)Z

    return-void
.end method

.method public onNavigatedToMainPage()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t$h;->a:Lcom/fyber/inneractive/sdk/web/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fyber/inneractive/sdk/web/t;->c(Lcom/fyber/inneractive/sdk/web/t;Z)Z

    return-void
.end method

.method public onOpenButtonPressed()V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t$h;->a:Lcom/fyber/inneractive/sdk/web/t;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/t;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_7b

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t$h;->a:Lcom/fyber/inneractive/sdk/web/t;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/t;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/web/t$h;->a:Lcom/fyber/inneractive/sdk/web/t;

    iget-object v4, v3, Lcom/fyber/inneractive/sdk/web/t;->c:Ljava/lang/String;

    iget-object v3, v3, Lcom/fyber/inneractive/sdk/web/t;->g:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_35

    :cond_27
    sget-object v0, Lcom/fyber/inneractive/sdk/util/l;->a:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/web/t$h;->a:Lcom/fyber/inneractive/sdk/web/t;

    iget-object v3, v3, Lcom/fyber/inneractive/sdk/web/t;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :goto_35
    if-eqz v0, :cond_61

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_3c
    sget-object v1, Lcom/fyber/inneractive/sdk/util/l;->a:Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_41} :catch_42

    goto :goto_8d

    :catch_42
    move-exception v0

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/web/t$h;->a:Lcom/fyber/inneractive/sdk/web/t;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/web/t;->h:Lcom/fyber/inneractive/sdk/ignite/j;

    if-eqz v1, :cond_8d

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    check-cast v1, Lcom/fyber/inneractive/sdk/flow/p$a;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/flow/p$a;->a:Lcom/fyber/inneractive/sdk/flow/p;

    iget-object v3, v1, Lcom/fyber/inneractive/sdk/flow/q;->a:Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/flow/q;->b:Lcom/fyber/inneractive/sdk/response/e;

    invoke-static {v2, v0, v3, v1}, Lcom/fyber/inneractive/sdk/network/t;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;Lcom/fyber/inneractive/sdk/response/e;)V

    goto :goto_8d

    :cond_61
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/web/t$h;->a:Lcom/fyber/inneractive/sdk/web/t;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/web/t$h;->a:Lcom/fyber/inneractive/sdk/web/t;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/web/t;->c:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "%sPackage %s not found"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8d

    :cond_7b
    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/web/t$h;->a:Lcom/fyber/inneractive/sdk/web/t;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%smPackageName is null"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8d
    :goto_8d
    return-void
.end method

.method public onTransitionEnded()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t$h;->a:Lcom/fyber/inneractive/sdk/web/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fyber/inneractive/sdk/web/t;->d(Lcom/fyber/inneractive/sdk/web/t;Z)Z

    return-void
.end method

.method public onTransitionStarting()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t$h;->a:Lcom/fyber/inneractive/sdk/web/t;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fyber/inneractive/sdk/web/t;->d(Lcom/fyber/inneractive/sdk/web/t;Z)Z

    return-void
.end method
