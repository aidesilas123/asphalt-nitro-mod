###### Class com.fyber.inneractive.sdk.web.d (com.fyber.inneractive.sdk.web.d)
.class public abstract Lcom/fyber/inneractive/sdk/web/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/web/f;
.implements Lcom/fyber/inneractive/sdk/util/z$e;
.implements Lcom/fyber/inneractive/sdk/web/g$a;
.implements Lcom/fyber/inneractive/sdk/web/w$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/web/d$e;,
        Lcom/fyber/inneractive/sdk/web/d$c;,
        Lcom/fyber/inneractive/sdk/web/d$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L::Lcom/fyber/inneractive/sdk/web/d0;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/fyber/inneractive/sdk/web/f;",
        "Lcom/fyber/inneractive/sdk/util/z$e;",
        "Lcom/fyber/inneractive/sdk/web/g$a;",
        "Lcom/fyber/inneractive/sdk/web/w$a;"
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Lcom/fyber/inneractive/sdk/web/g;

.field public c:Lcom/fyber/inneractive/sdk/web/r;

.field public d:Lcom/fyber/inneractive/sdk/web/s;

.field public e:Z

.field public f:Lcom/fyber/inneractive/sdk/web/d$d;

.field public g:Lcom/fyber/inneractive/sdk/web/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field public h:F

.field public i:Landroid/graphics/Rect;

.field public j:Z

.field public k:Z

.field public l:Lcom/fyber/inneractive/sdk/web/d$c;

.field public final m:Ljava/lang/Runnable;

.field public final n:Ljava/lang/Runnable;

.field public o:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;

.field public s:Lcom/fyber/inneractive/sdk/flow/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/web/d;->a:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/fyber/inneractive/sdk/web/d;->h:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/web/d;->i:Landroid/graphics/Rect;

    iput-boolean p2, p0, Lcom/fyber/inneractive/sdk/web/d;->k:Z

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/web/d;->a(Landroid/content/Context;)Lcom/fyber/inneractive/sdk/web/g;

    move-result-object p1

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    iput-boolean p3, p0, Lcom/fyber/inneractive/sdk/web/d;->e:Z

    new-instance p1, Lcom/fyber/inneractive/sdk/web/d$a;

    invoke-direct {p1, p0}, Lcom/fyber/inneractive/sdk/web/d$a;-><init>(Lcom/fyber/inneractive/sdk/web/d;)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/d;->n:Ljava/lang/Runnable;

    new-instance p1, Lcom/fyber/inneractive/sdk/web/d$b;

    invoke-direct {p1, p0}, Lcom/fyber/inneractive/sdk/web/d$b;-><init>(Lcom/fyber/inneractive/sdk/web/d;)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/d;->m:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/fyber/inneractive/sdk/web/g;
    .registers 3

    new-instance v0, Lcom/fyber/inneractive/sdk/web/g;

    invoke-direct {v0, p1}, Lcom/fyber/inneractive/sdk/web/g;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public a(I)V
    .registers 2

    return-void
.end method

.method public a(Landroid/view/View;FLandroid/graphics/Rect;)V
    .registers 4

    iget p1, p0, Lcom/fyber/inneractive/sdk/web/d;->h:F

    cmpl-float p1, p2, p1

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/web/d;->i:Landroid/graphics/Rect;

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c

    :cond_e
    iput p2, p0, Lcom/fyber/inneractive/sdk/web/d;->h:F

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/web/d;->i:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/web/g;->a()Z

    :cond_1c
    return-void
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    if-eqz v0, :cond_1d

    if-eqz p2, :cond_a

    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_d

    :cond_a
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_d
    sget-object p2, Lcom/fyber/inneractive/sdk/util/z$d;->a:Lcom/fyber/inneractive/sdk/util/z;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    invoke-virtual {p2, p1, v0, p0}, Lcom/fyber/inneractive/sdk/util/z;->a(Landroid/content/Context;Landroid/view/View;Lcom/fyber/inneractive/sdk/util/z$e;)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    invoke-virtual {p1, p0}, Lcom/fyber/inneractive/sdk/web/g;->setTapListener(Lcom/fyber/inneractive/sdk/web/w$a;)V

    :cond_1d
    return-void
.end method

.method public a(Landroid/webkit/WebView;)V
    .registers 2

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fyber/inneractive/sdk/web/d$d;)V
    .registers 12

    iput-object p5, p0, Lcom/fyber/inneractive/sdk/web/d;->f:Lcom/fyber/inneractive/sdk/web/d$d;

    :try_start_2
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/web/d;->h()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_1b

    new-instance p5, Lcom/fyber/inneractive/sdk/web/e;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/fyber/inneractive/sdk/web/e;-><init>(Lcom/fyber/inneractive/sdk/web/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p5, p0, Lcom/fyber/inneractive/sdk/web/d;->o:Landroid/os/AsyncTask;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    sget-object p2, Lcom/fyber/inneractive/sdk/util/m;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p5, p2, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :catchall_1b
    move-exception p1

    new-instance p2, Lcom/fyber/inneractive/sdk/external/InneractiveInfrastructureError;

    sget-object p3, Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;->SDK_INTERNAL_ERROR:Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;

    sget-object p4, Lcom/fyber/inneractive/sdk/flow/g;->COULD_NOT_CONFIGURE_WEBVIEW:Lcom/fyber/inneractive/sdk/flow/g;

    invoke-direct {p2, p3, p4, p1}, Lcom/fyber/inneractive/sdk/external/InneractiveInfrastructureError;-><init>(Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;Lcom/fyber/inneractive/sdk/flow/g;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/web/d;->f:Lcom/fyber/inneractive/sdk/web/d$d;

    if-eqz p1, :cond_2c

    invoke-interface {p1, p0, p2}, Lcom/fyber/inneractive/sdk/web/d$d;->a(Lcom/fyber/inneractive/sdk/web/d;Lcom/fyber/inneractive/sdk/external/InneractiveInfrastructureError;)V

    :cond_2c
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/web/d;->b(Z)V

    return-void
.end method

.method public a(Z)V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%sonWebViewVisibilityChanged called with: %s"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/d;->g:Lcom/fyber/inneractive/sdk/web/d0;

    if-eqz v0, :cond_1d

    invoke-interface {v0, p1}, Lcom/fyber/inneractive/sdk/web/d0;->a(Z)V

    :cond_1d
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const/4 v0, 0x1

    aput-object p2, p1, v0

    const-string v2, "%shandleUrl called with: %s"

    invoke-static {v2, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    if-nez p1, :cond_1e

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "handleUrl: web view already destroyed. Cannot handle url"

    invoke-static {p2, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1e
    invoke-static {p2}, Lcom/fyber/inneractive/sdk/util/n0;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    const-string p2, "chrome://crash"

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v0

    :cond_2c
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/web/d;->f()Lcom/fyber/inneractive/sdk/util/k0;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/fyber/inneractive/sdk/web/d;->a(Ljava/lang/String;Lcom/fyber/inneractive/sdk/util/k0;)Z

    move-result v1

    if-eqz v1, :cond_37

    return v0

    :cond_37
    new-instance v1, Lcom/fyber/inneractive/sdk/web/d$e;

    invoke-direct {v1, p0, p2, p1}, Lcom/fyber/inneractive/sdk/web/d$e;-><init>(Lcom/fyber/inneractive/sdk/web/d;Ljava/lang/String;Lcom/fyber/inneractive/sdk/util/k0;)V

    invoke-virtual {p0, v1}, Lcom/fyber/inneractive/sdk/web/d;->a(Lcom/fyber/inneractive/sdk/web/d$c;)Z

    return v0
.end method

.method public a(Lcom/fyber/inneractive/sdk/web/d$c;)Z
    .registers 6

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/web/d;->j:Z

    if-eqz v0, :cond_c

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/web/d$c;->d()V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/web/d;->j()V

    const/4 p1, 0x1

    return p1

    :cond_c
    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/web/d;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/d;->m:Ljava/lang/Runnable;

    if-eqz v0, :cond_1a

    sget-object v2, Lcom/fyber/inneractive/sdk/util/m;->b:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1a
    iput-object v1, p0, Lcom/fyber/inneractive/sdk/web/d;->l:Lcom/fyber/inneractive/sdk/web/d$c;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/d;->l:Lcom/fyber/inneractive/sdk/web/d$c;

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/web/d;->m:Ljava/lang/Runnable;

    if-eqz p1, :cond_47

    sget-object p1, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->M:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->u:Lcom/fyber/inneractive/sdk/config/j;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/config/j;->b:Lcom/fyber/inneractive/sdk/config/i;

    const-string v0, "click_timeout"

    const/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v1}, Lcom/fyber/inneractive/sdk/config/i;->a(Ljava/lang/String;II)I

    move-result p1

    sget-object v0, Lcom/fyber/inneractive/sdk/util/m;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/web/d;->m:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_47

    :cond_39
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/d;->m:Ljava/lang/Runnable;

    if-eqz v0, :cond_42

    sget-object v2, Lcom/fyber/inneractive/sdk/util/m;->b:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_42
    iput-object v1, p0, Lcom/fyber/inneractive/sdk/web/d;->l:Lcom/fyber/inneractive/sdk/web/d$c;

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/web/d$c;->d()V

    :cond_47
    :goto_47
    const/4 p1, 0x0

    return p1
.end method

.method public abstract a(Ljava/lang/String;Lcom/fyber/inneractive/sdk/util/k0;)Z
.end method

.method public b(Z)V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s destroy is fatal: %b"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/d;->o:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1d

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_1d
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_46

    sget-object v2, Lcom/fyber/inneractive/sdk/util/z$d;->a:Lcom/fyber/inneractive/sdk/util/z;

    invoke-virtual {v2, v0}, Lcom/fyber/inneractive/sdk/util/z;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/util/q;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/web/d;->d()Lcom/fyber/inneractive/sdk/measurement/a$a;

    move-result-object v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/web/g;->destroy()V

    goto :goto_46

    :cond_3d
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/web/d;->d()Lcom/fyber/inneractive/sdk/measurement/a$a;

    move-result-object v0

    check-cast v0, Lcom/fyber/inneractive/sdk/measurement/tracker/c;

    invoke-virtual {v0, p1}, Lcom/fyber/inneractive/sdk/measurement/tracker/c;->a(Z)V

    :cond_46
    :goto_46
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/d;->d:Lcom/fyber/inneractive/sdk/web/s;

    if-eqz v0, :cond_4c

    iput-object v1, v0, Lcom/fyber/inneractive/sdk/web/s;->e:Lcom/fyber/inneractive/sdk/web/f;

    :cond_4c
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/d;->n:Ljava/lang/Runnable;

    if-eqz v0, :cond_55

    sget-object v2, Lcom/fyber/inneractive/sdk/util/m;->b:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_55
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/d;->m:Ljava/lang/Runnable;

    if-eqz v0, :cond_5e

    sget-object v2, Lcom/fyber/inneractive/sdk/util/m;->b:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_5e
    iput-object v1, p0, Lcom/fyber/inneractive/sdk/web/d;->g:Lcom/fyber/inneractive/sdk/web/d0;

    if-nez p1, :cond_64

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/web/d;->f:Lcom/fyber/inneractive/sdk/web/d$d;

    :cond_64
    iput-object v1, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/web/d;->c:Lcom/fyber/inneractive/sdk/web/r;

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/web/d;->d:Lcom/fyber/inneractive/sdk/web/s;

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/web/d;->s:Lcom/fyber/inneractive/sdk/flow/q;

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/web/d;->r:Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;

    return-void
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/web/d;->b(Z)V

    return-void
.end method

.method public abstract d()Lcom/fyber/inneractive/sdk/measurement/a$a;
.end method

.method public e()Lcom/fyber/inneractive/sdk/web/g;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    return-object v0
.end method

.method public f()Lcom/fyber/inneractive/sdk/util/k0;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/web/g;->getLastClickedLocation()Lcom/fyber/inneractive/sdk/util/k0;

    move-result-object v0

    goto :goto_d

    :cond_9
    invoke-static {}, Lcom/fyber/inneractive/sdk/util/k0;->a()Lcom/fyber/inneractive/sdk/util/k0;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public g()V
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/d;->f:Lcom/fyber/inneractive/sdk/web/d$d;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0}, Lcom/fyber/inneractive/sdk/web/d$d;->a(Lcom/fyber/inneractive/sdk/web/d;)V

    :cond_7
    return-void
.end method

.method public h()V
    .registers 14

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    sget-object v2, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->M:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-boolean v2, v2, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->r:Z

    const/4 v3, 0x2

    if-nez v2, :cond_26

    invoke-static {}, Lcom/fyber/inneractive/sdk/util/p;->a()Z

    move-result v2

    if-eqz v2, :cond_26

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v2, v4, :cond_26

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_26
    iget-boolean v2, p0, Lcom/fyber/inneractive/sdk/web/d;->e:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_34

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v2, v5, :cond_34

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_34
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setHorizontalScrollbarOverlay(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v2, v5, :cond_55

    goto :goto_66

    :cond_55
    :try_start_55
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v2, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5e} :catch_5f

    goto :goto_66

    :catch_5f
    new-array v0, v4, [Ljava/lang/Object;

    const-string v2, "Failed to modify WebView plugin state."

    invoke-static {v2, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_66
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    new-instance v0, Lcom/fyber/inneractive/sdk/web/r;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/web/r;-><init>()V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/web/d;->c:Lcom/fyber/inneractive/sdk/web/r;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/d;->s:Lcom/fyber/inneractive/sdk/flow/q;

    const/16 v2, 0x1f4

    if-eqz v0, :cond_d0

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/flow/q;->c:Lcom/fyber/inneractive/sdk/config/global/s;

    if-eqz v0, :cond_d0

    const-class v5, Lcom/fyber/inneractive/sdk/config/global/features/e;

    invoke-virtual {v0, v5}, Lcom/fyber/inneractive/sdk/config/global/s;->a(Ljava/lang/Class;)Lcom/fyber/inneractive/sdk/config/global/features/g;

    move-result-object v0

    check-cast v0, Lcom/fyber/inneractive/sdk/config/global/features/e;

    if-eqz v0, :cond_d0

    const-string v5, "agg_res"

    invoke-virtual {v0, v5, v4}, Lcom/fyber/inneractive/sdk/config/global/features/g;->a(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "agg_res_ct"

    invoke-virtual {v0, v6}, Lcom/fyber/inneractive/sdk/config/global/features/g;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_a3

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_a5

    :cond_a3
    const/16 v6, 0x1f4

    :goto_a5
    const/16 v7, 0x32

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    const-string v8, "agg_res_rt"

    invoke-virtual {v0, v8}, Lcom/fyber/inneractive/sdk/config/global/features/g;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_b7

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_b7
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    const-string v7, "agg_res_retries"

    invoke-virtual {v0, v7}, Lcom/fyber/inneractive/sdk/config/global/features/g;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_c7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_c7
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v11, v2

    move v12, v3

    move v9, v5

    move v10, v6

    goto :goto_d6

    :cond_d0
    const/4 v9, 0x0

    const/16 v10, 0x1f4

    const/16 v11, 0x1f4

    const/4 v12, 0x2

    :goto_d6
    new-instance v0, Lcom/fyber/inneractive/sdk/web/s;

    move-object v7, v0

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/fyber/inneractive/sdk/web/s;-><init>(Lcom/fyber/inneractive/sdk/web/f;ZIII)V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/web/d;->d:Lcom/fyber/inneractive/sdk/web/s;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :try_start_e4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_f5

    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_ed} :catch_ee

    goto :goto_f5

    :catch_ee
    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Could not set web contents debugging flag"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_f5
    :goto_f5
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    invoke-virtual {v0, p0}, Lcom/fyber/inneractive/sdk/web/g;->setListener(Lcom/fyber/inneractive/sdk/web/g$a;)V

    return-void
.end method

.method public i()V
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    invoke-virtual {v0, p0}, Lcom/fyber/inneractive/sdk/web/g;->setTapListener(Lcom/fyber/inneractive/sdk/web/w$a;)V

    return-void
.end method

.method public j()V
    .registers 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "IAWebViewController resetClick()"

    invoke-static {v2, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/web/d;->n:Ljava/lang/Runnable;

    if-eqz v1, :cond_11

    sget-object v2, Lcom/fyber/inneractive/sdk/util/m;->b:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_11
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/web/d;->m:Ljava/lang/Runnable;

    if-eqz v1, :cond_1a

    sget-object v2, Lcom/fyber/inneractive/sdk/util/m;->b:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1a
    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/web/d;->j:Z

    return-void
.end method

.method public setAdContent(Lcom/fyber/inneractive/sdk/flow/q;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/d;->s:Lcom/fyber/inneractive/sdk/flow/q;

    return-void
.end method

.method public setAdRequest(Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/d;->r:Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;

    return-void
.end method

.method public setListener(Lcom/fyber/inneractive/sdk/web/d0;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/d;->g:Lcom/fyber/inneractive/sdk/web/d0;

    return-void
.end method

###### Class com.fyber.inneractive.sdk.web.d.a (com.fyber.inneractive.sdk.web.d$a)
.class public Lcom/fyber/inneractive/sdk/web/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/web/d;-><init>(Landroid/content/Context;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/web/d;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/web/d;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/d$a;->a:Lcom/fyber/inneractive/sdk/web/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/d$a;->a:Lcom/fyber/inneractive/sdk/web/d;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/web/d;->j()V

    return-void
.end method

###### Class com.fyber.inneractive.sdk.web.d.b (com.fyber.inneractive.sdk.web.d$b)
.class public Lcom/fyber/inneractive/sdk/web/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/web/d;-><init>(Landroid/content/Context;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/web/d;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/web/d;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/d$b;->a:Lcom/fyber/inneractive/sdk/web/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/d$b;->a:Lcom/fyber/inneractive/sdk/web/d;

    iget-boolean v1, v0, Lcom/fyber/inneractive/sdk/web/d;->k:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_41

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/d;->l:Lcom/fyber/inneractive/sdk/web/d$c;

    aput-object v0, v1, v3

    const-string v0, "No user web action detected for : %s blocking."

    invoke-static {v0, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/d$b;->a:Lcom/fyber/inneractive/sdk/web/d;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/web/d;->l:Lcom/fyber/inneractive/sdk/web/d$c;

    invoke-interface {v1}, Lcom/fyber/inneractive/sdk/web/d$c;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/web/d$b;->a:Lcom/fyber/inneractive/sdk/web/d;

    iget-object v5, v5, Lcom/fyber/inneractive/sdk/web/d;->l:Lcom/fyber/inneractive/sdk/web/d$c;

    invoke-interface {v5}, Lcom/fyber/inneractive/sdk/web/d$c;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/d;->g:Lcom/fyber/inneractive/sdk/web/d0;

    if-eqz v0, :cond_2b

    invoke-interface {v0, v1, v5}, Lcom/fyber/inneractive/sdk/web/d0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    sget v0, Lcom/fyber/inneractive/sdk/util/IAlog;->a:I

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "AD_AUTO_CLICK_DETECTED"

    invoke-static {v4, v2, v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(ILjava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/d$b;->a:Lcom/fyber/inneractive/sdk/web/d;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/d;->l:Lcom/fyber/inneractive/sdk/web/d$c;

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/web/d$c;->b()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/d$b;->a:Lcom/fyber/inneractive/sdk/web/d;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/web/d;->j()V

    goto :goto_53

    :cond_41
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/d;->l:Lcom/fyber/inneractive/sdk/web/d$c;

    aput-object v0, v1, v3

    const-string v0, "User web action detected for: %s"

    invoke-static {v0, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/d$b;->a:Lcom/fyber/inneractive/sdk/web/d;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/d;->l:Lcom/fyber/inneractive/sdk/web/d$c;

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/web/d$c;->d()V

    :goto_53
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/d$b;->a:Lcom/fyber/inneractive/sdk/web/d;

    iput-object v2, v0, Lcom/fyber/inneractive/sdk/web/d;->l:Lcom/fyber/inneractive/sdk/web/d$c;

    return-void
.end method

###### Class com.fyber.inneractive.sdk.web.d.c (com.fyber.inneractive.sdk.web.d$c)
.class public interface abstract Lcom/fyber/inneractive/sdk/web/d$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/web/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()V
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()V
.end method

###### Class com.fyber.inneractive.sdk.web.d.InterfaceC0201d (com.fyber.inneractive.sdk.web.d$d)
.class public interface abstract Lcom/fyber/inneractive/sdk/web/d$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/web/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "d"
.end annotation


# virtual methods
.method public abstract a(Lcom/fyber/inneractive/sdk/web/d;)V
.end method

.method public abstract a(Lcom/fyber/inneractive/sdk/web/d;Lcom/fyber/inneractive/sdk/external/InneractiveInfrastructureError;)V
.end method

###### Class com.fyber.inneractive.sdk.web.d.e (com.fyber.inneractive.sdk.web.d$e)
.class public Lcom/fyber/inneractive/sdk/web/d$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/web/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/web/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/fyber/inneractive/sdk/util/k0;

.field public final synthetic c:Lcom/fyber/inneractive/sdk/web/d;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/web/d;Ljava/lang/String;Lcom/fyber/inneractive/sdk/util/k0;)V
    .registers 4

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/d$e;->c:Lcom/fyber/inneractive/sdk/web/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/web/d$e;->b:Lcom/fyber/inneractive/sdk/util/k0;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/web/d$e;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    const-string v0, "open"

    return-object v0
.end method

.method public d()V
    .registers 5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/d$e;->c:Lcom/fyber/inneractive/sdk/web/d;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/web/d$e;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/web/d$e;->b:Lcom/fyber/inneractive/sdk/util/k0;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/d;->g:Lcom/fyber/inneractive/sdk/web/d0;

    if-eqz v0, :cond_11

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/fyber/inneractive/sdk/web/d0;->a(Ljava/lang/String;Lcom/fyber/inneractive/sdk/util/k0;Lcom/fyber/inneractive/sdk/web/b$a;)Lcom/fyber/inneractive/sdk/util/x$a;

    move-result-object v0

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/util/x$a;->a:Lcom/fyber/inneractive/sdk/util/x$d;

    :cond_11
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action: open url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/web/d$e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
