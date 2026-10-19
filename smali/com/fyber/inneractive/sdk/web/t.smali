###### Class com.fyber.inneractive.sdk.web.t (com.fyber.inneractive.sdk.web.t)
.class public Lcom/fyber/inneractive/sdk/web/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/ignite/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/web/t$g;,
        Lcom/fyber/inneractive/sdk/web/t$h;
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public final E:Landroid/webkit/WebViewClient;

.field public final a:Landroid/webkit/WebView;

.field public final b:Lcom/fyber/inneractive/sdk/ignite/c;

.field public final c:Ljava/lang/String;

.field public d:Lcom/fyber/inneractive/sdk/ignite/k;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Lcom/fyber/inneractive/sdk/ignite/j;

.field public i:Lcom/fyber/inneractive/sdk/web/t$g;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Z

.field public m:Lcom/fyber/inneractive/sdk/config/global/s;

.field public n:J

.field public o:J

.field public p:Ljava/lang/Runnable;

.field public q:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/fyber/inneractive/sdk/activities/InternalStoreWebpageActivity;",
            ">;"
        }
    .end annotation
.end field

.field public r:Z

.field public s:Z

.field public final t:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final u:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final v:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/web/v;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "invalid_task_id"

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/web/t;->j:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/web/t;->l:Z

    const-wide/16 v1, 0xa

    iput-wide v1, p0, Lcom/fyber/inneractive/sdk/web/t;->n:J

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/web/t;->r:Z

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/web/t;->s:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/web/t;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/web/t;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/web/t;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/web/t;->w:Z

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/web/t;->x:Z

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/web/t;->y:Z

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/web/t;->z:Z

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/web/t;->A:Z

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/web/t;->C:Z

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/web/t;->D:Z

    new-instance v0, Lcom/fyber/inneractive/sdk/web/t$a;

    invoke-direct {v0, p0}, Lcom/fyber/inneractive/sdk/web/t$a;-><init>(Lcom/fyber/inneractive/sdk/web/t;)V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/web/t;->E:Landroid/webkit/WebViewClient;

    iget-object v0, p1, Lcom/fyber/inneractive/sdk/web/v;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/web/t;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/fyber/inneractive/sdk/web/v;->b:Lcom/fyber/inneractive/sdk/ignite/k;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/web/t;->d:Lcom/fyber/inneractive/sdk/ignite/k;

    iget-object v0, p1, Lcom/fyber/inneractive/sdk/web/v;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/web/t;->e:Ljava/lang/String;

    iget-object v0, p1, Lcom/fyber/inneractive/sdk/web/v;->d:Lcom/fyber/inneractive/sdk/config/global/s;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/web/t;->m:Lcom/fyber/inneractive/sdk/config/global/s;

    iget-object v0, p1, Lcom/fyber/inneractive/sdk/web/v;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/web/t;->f:Ljava/lang/String;

    iget-object v0, p1, Lcom/fyber/inneractive/sdk/web/v;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/web/t;->g:Ljava/lang/String;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/web/v;->g:Lcom/fyber/inneractive/sdk/ignite/j;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/t;->h:Lcom/fyber/inneractive/sdk/ignite/j;

    invoke-static {}, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->d()Lcom/fyber/inneractive/sdk/ignite/c;

    move-result-object p1

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/t;->b:Lcom/fyber/inneractive/sdk/ignite/c;

    invoke-virtual {p1, p0}, Lcom/fyber/inneractive/sdk/ignite/c;->a(Lcom/fyber/inneractive/sdk/ignite/n;)V

    new-instance p1, Landroid/webkit/WebView;

    invoke-static {}, Lcom/fyber/inneractive/sdk/util/l;->a()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/t;->a:Landroid/webkit/WebView;

    return-void
.end method

.method public static synthetic a(Lcom/fyber/inneractive/sdk/web/t;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/web/t;->s:Z

    return p1
.end method

.method public static synthetic b(Lcom/fyber/inneractive/sdk/web/t;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/web/t;->r:Z

    return p1
.end method

.method public static synthetic c(Lcom/fyber/inneractive/sdk/web/t;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/web/t;->w:Z

    return p1
.end method

.method public static synthetic d(Lcom/fyber/inneractive/sdk/web/t;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/web/t;->x:Z

    return p1
.end method

.method public static synthetic e(Lcom/fyber/inneractive/sdk/web/t;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/web/t;->l:Z

    return p1
.end method


# virtual methods
.method public a()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/web/t;->y:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/web/t;->D:Z

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/web/t;->b:Lcom/fyber/inneractive/sdk/ignite/c;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/ignite/c;->i:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/web/t;->i:Lcom/fyber/inneractive/sdk/web/t$g;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "destroy internalStoreWebpageController"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/web/t;->z:Z

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t;->j:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/web/t;->b:Lcom/fyber/inneractive/sdk/ignite/c;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/ignite/c;->b()V

    const-string p1, "onInstallStart();"

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/web/t;->f(Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public a(Ljava/lang/String;ID)V
    .registers 6

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t;->j:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    const/4 p1, 0x1

    if-eqz p2, :cond_14

    if-eq p2, p1, :cond_e

    goto :goto_26

    :cond_e
    const-string p1, "onInstallationProgress();"

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/web/t;->f(Ljava/lang/String;)V

    goto :goto_26

    :cond_14
    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const-string p2, "onDownloadProgress(%f);"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/web/t;->f(Ljava/lang/String;)V

    :cond_26
    :goto_26
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/fyber/inneractive/sdk/ignite/i;)V
    .registers 5

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/web/t;->b:Lcom/fyber/inneractive/sdk/ignite/c;

    iget-boolean v0, p1, Lcom/fyber/inneractive/sdk/ignite/c;->j:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t;->h:Lcom/fyber/inneractive/sdk/ignite/j;

    if-eqz v0, :cond_19

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/fyber/inneractive/sdk/ignite/c;->j:Z

    sget-object p1, Lcom/fyber/inneractive/sdk/network/q;->IGNITE_FLOW_FAILED_TO_START:Lcom/fyber/inneractive/sdk/network/q;

    invoke-virtual {p2}, Lcom/fyber/inneractive/sdk/ignite/i;->e()Ljava/lang/String;

    move-result-object p2

    check-cast v0, Lcom/fyber/inneractive/sdk/flow/p$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, v1}, Lcom/fyber/inneractive/sdk/flow/p$a;->a(Lcom/fyber/inneractive/sdk/network/q;Ljava/lang/String;Ljava/lang/String;Lcom/fyber/inneractive/sdk/ignite/k;)V

    :cond_19
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/t;->j:Ljava/lang/String;

    :cond_e
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object p3, p0, Lcom/fyber/inneractive/sdk/web/t;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-nez p3, :cond_9

    return-void

    :cond_9
    if-eqz p2, :cond_45

    sget-object p3, Lcom/fyber/inneractive/sdk/ignite/i;->NOT_CONNECTED:Lcom/fyber/inneractive/sdk/ignite/i;

    invoke-virtual {p3}, Lcom/fyber/inneractive/sdk/ignite/i;->e()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_23

    sget-object p3, Lcom/fyber/inneractive/sdk/ignite/i;->SESSION_EXPIRED:Lcom/fyber/inneractive/sdk/ignite/i;

    invoke-virtual {p3}, Lcom/fyber/inneractive/sdk/ignite/i;->e()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_45

    :cond_23
    iget-object p2, p0, Lcom/fyber/inneractive/sdk/web/t;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p2

    const/4 p3, 0x2

    if-ge p2, p3, :cond_37

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/web/t;->b:Lcom/fyber/inneractive/sdk/ignite/c;

    new-instance p3, Lcom/fyber/inneractive/sdk/web/t$d;

    invoke-direct {p3, p0, p1}, Lcom/fyber/inneractive/sdk/web/t$d;-><init>(Lcom/fyber/inneractive/sdk/web/t;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/fyber/inneractive/sdk/ignite/c;->a(Lcom/fyber/inneractive/sdk/ignite/h;)V

    goto :goto_45

    :cond_37
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/web/t;->b:Lcom/fyber/inneractive/sdk/ignite/c;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/ignite/c;->e()Z

    move-result p1

    if-nez p1, :cond_45

    sget-object p1, Lcom/fyber/inneractive/sdk/ignite/i;->FAILED_TO_BIND_SERVICE:Lcom/fyber/inneractive/sdk/ignite/i;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/fyber/inneractive/sdk/web/t;->a(Ljava/lang/String;Lcom/fyber/inneractive/sdk/ignite/i;)V

    :cond_45
    :goto_45
    return-void
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t;->b:Lcom/fyber/inneractive/sdk/ignite/c;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/ignite/c;->b()V

    const-string v0, "onInstallationFailed();"

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/web/t;->f(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/web/t;->D:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/web/t;->z:Z

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/web/t;->j:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_3a

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/web/t;->b:Lcom/fyber/inneractive/sdk/ignite/c;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/ignite/c;->b()V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/web/t;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_3a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3a

    const-string p1, "App already installed"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    const-string p1, "onInstallationSuccess();"

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/web/t;->f(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/fyber/inneractive/sdk/web/t;->A:Z

    return-void

    :cond_3a
    if-eqz p2, :cond_54

    sget-object p1, Lcom/fyber/inneractive/sdk/ignite/i;->NOT_CONNECTED:Lcom/fyber/inneractive/sdk/ignite/i;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/ignite/i;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5c

    sget-object p1, Lcom/fyber/inneractive/sdk/ignite/i;->SESSION_EXPIRED:Lcom/fyber/inneractive/sdk/ignite/i;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/ignite/i;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5c

    :cond_54
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/web/t;->b:Lcom/fyber/inneractive/sdk/ignite/c;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/ignite/c;->d()Z

    move-result p1

    if-nez p1, :cond_82

    :cond_5c
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/web/t;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    const/4 v2, 0x2

    if-ge p1, v2, :cond_70

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/web/t;->b:Lcom/fyber/inneractive/sdk/ignite/c;

    new-instance v1, Lcom/fyber/inneractive/sdk/web/t$c;

    invoke-direct {v1, p0, p2, p3}, Lcom/fyber/inneractive/sdk/web/t$c;-><init>(Lcom/fyber/inneractive/sdk/web/t;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/fyber/inneractive/sdk/ignite/c;->a(Lcom/fyber/inneractive/sdk/ignite/h;)V

    goto :goto_92

    :cond_70
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/web/t;->b()V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/web/t;->b:Lcom/fyber/inneractive/sdk/ignite/c;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/ignite/c;->e()Z

    move-result p1

    if-nez p1, :cond_91

    sget-object p1, Lcom/fyber/inneractive/sdk/ignite/i;->FAILED_TO_BIND_SERVICE:Lcom/fyber/inneractive/sdk/ignite/i;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/fyber/inneractive/sdk/web/t;->a(Ljava/lang/String;Lcom/fyber/inneractive/sdk/ignite/i;)V

    goto :goto_91

    :cond_82
    sget-object p1, Lcom/fyber/inneractive/sdk/ignite/i;->DOWNLOAD_IS_CANCELLED:Lcom/fyber/inneractive/sdk/ignite/i;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/ignite/i;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_91

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/web/t;->b()V

    :cond_91
    :goto_91
    const/4 v0, 0x1

    :goto_92
    if-eqz v0, :cond_a1

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/web/t;->d:Lcom/fyber/inneractive/sdk/ignite/k;

    if-eqz p1, :cond_a1

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t;->h:Lcom/fyber/inneractive/sdk/ignite/j;

    sget-object v1, Lcom/fyber/inneractive/sdk/network/q;->IGNITE_FLOW_FAILED_TO_INSTALL_APP:Lcom/fyber/inneractive/sdk/network/q;

    check-cast v0, Lcom/fyber/inneractive/sdk/flow/p$a;

    invoke-virtual {v0, v1, p2, p3, p1}, Lcom/fyber/inneractive/sdk/flow/p$a;->a(Lcom/fyber/inneractive/sdk/network/q;Ljava/lang/String;Ljava/lang/String;Lcom/fyber/inneractive/sdk/ignite/k;)V

    :cond_a1
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/web/t;->z:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/web/t;->A:Z

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t;->j:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/web/t;->b:Lcom/fyber/inneractive/sdk/ignite/c;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/ignite/c;->b()V

    const-string p1, "onInstallationSuccess();"

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/web/t;->f(Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 8

    if-eqz p1, :cond_87

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t;->b:Lcom/fyber/inneractive/sdk/ignite/c;

    new-instance v3, Lcom/fyber/inneractive/sdk/web/t$e;

    invoke-direct {v3, p0}, Lcom/fyber/inneractive/sdk/web/t$e;-><init>(Lcom/fyber/inneractive/sdk/web/t;)V

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/ignite/c;->d()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/ignite/c;->f()Z

    move-result v4

    if-nez v4, :cond_3e

    :try_start_21
    iget-object v4, v0, Lcom/fyber/inneractive/sdk/ignite/c;->b:Lcom/digitalturbine/ignite/cl/aidl/IIgniteServiceAPI;

    iget-object v5, v0, Lcom/fyber/inneractive/sdk/ignite/c;->g:Landroid/os/Bundle;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/ignite/c;->h:Lcom/fyber/inneractive/sdk/ignite/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/fyber/inneractive/sdk/ignite/b;

    invoke-direct {v0, v3}, Lcom/fyber/inneractive/sdk/ignite/b;-><init>(Lcom/fyber/inneractive/sdk/ignite/g$b;)V

    invoke-interface {v4, p1, v5, v0}, Lcom/digitalturbine/ignite/cl/aidl/IIgniteServiceAPI;->cancel(Ljava/lang/String;Landroid/os/Bundle;Lcom/digitalturbine/ignite/cl/aidl/IIgniteServiceCallback;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_32} :catch_33

    goto :goto_66

    :catch_33
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Failed to cancel task"

    invoke-static {v0, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Lcom/fyber/inneractive/sdk/web/t$e;->a(Z)V

    goto :goto_66

    :cond_3e
    iget-object p1, v0, Lcom/fyber/inneractive/sdk/ignite/c;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_44
    :goto_44
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fyber/inneractive/sdk/ignite/n;

    if-eqz v2, :cond_44

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/ignite/c;->f()Z

    move-result v3

    if-eqz v3, :cond_5b

    sget-object v3, Lcom/fyber/inneractive/sdk/ignite/i;->SESSION_EXPIRED:Lcom/fyber/inneractive/sdk/ignite/i;

    goto :goto_5d

    :cond_5b
    sget-object v3, Lcom/fyber/inneractive/sdk/ignite/i;->NOT_CONNECTED:Lcom/fyber/inneractive/sdk/ignite/i;

    :goto_5d
    invoke-virtual {v3}, Lcom/fyber/inneractive/sdk/ignite/i;->e()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3, v4}, Lcom/fyber/inneractive/sdk/ignite/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_44

    :cond_66
    :goto_66
    sget-object p1, Lcom/fyber/inneractive/sdk/util/m;->b:Landroid/os/Handler;

    new-instance v0, Lcom/fyber/inneractive/sdk/web/t$f;

    invoke-direct {v0, p0}, Lcom/fyber/inneractive/sdk/web/t$f;-><init>(Lcom/fyber/inneractive/sdk/web/t;)V

    const-wide/16 v2, 0x9c4

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/web/t;->h:Lcom/fyber/inneractive/sdk/ignite/j;

    if-eqz p1, :cond_87

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/web/t;->r:Z

    if-nez v0, :cond_87

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t;->d:Lcom/fyber/inneractive/sdk/ignite/k;

    if-eqz v0, :cond_87

    iput-boolean v1, p0, Lcom/fyber/inneractive/sdk/web/t;->r:Z

    sget-object v1, Lcom/fyber/inneractive/sdk/network/r;->IGNITE_FLOW_CANCEL_INSTALL_CLICKED:Lcom/fyber/inneractive/sdk/network/r;

    check-cast p1, Lcom/fyber/inneractive/sdk/flow/p$a;

    invoke-virtual {p1, v1, v0}, Lcom/fyber/inneractive/sdk/flow/p$a;->a(Lcom/fyber/inneractive/sdk/network/r;Lcom/fyber/inneractive/sdk/ignite/k;)V

    :cond_87
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/fyber/inneractive/sdk/util/m;->b:Landroid/os/Handler;

    new-instance v1, Lcom/fyber/inneractive/sdk/web/t$b;

    invoke-direct {v1, p0, p1}, Lcom/fyber/inneractive/sdk/web/t$b;-><init>(Lcom/fyber/inneractive/sdk/web/t;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .registers 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_96

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/t;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t;->a:Landroid/webkit/WebView;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t;->a:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/web/t;->E:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t;->a:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setLongClickable(Z)V

    new-instance v3, Lcom/fyber/inneractive/sdk/util/a0;

    invoke-direct {v3}, Lcom/fyber/inneractive/sdk/util/a0;-><init>()V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t;->a:Landroid/webkit/WebView;

    new-instance v3, Lcom/fyber/inneractive/sdk/web/t$h;

    invoke-direct {v3, p0}, Lcom/fyber/inneractive/sdk/web/t$h;-><init>(Lcom/fyber/inneractive/sdk/web/t;)V

    const-string v4, "nativeInterface"

    invoke-virtual {v0, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/web/t;->m:Lcom/fyber/inneractive/sdk/config/global/s;

    if-eqz p1, :cond_82

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-class v3, Lcom/fyber/inneractive/sdk/config/global/features/p;

    invoke-virtual {p1, v3}, Lcom/fyber/inneractive/sdk/config/global/s;->a(Ljava/lang/Class;)Lcom/fyber/inneractive/sdk/config/global/features/g;

    move-result-object p1

    check-cast p1, Lcom/fyber/inneractive/sdk/config/global/features/p;

    const-string v3, "load_timeout"

    invoke-virtual {p1, v3}, Lcom/fyber/inneractive/sdk/config/global/features/g;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    const/16 v3, 0xa

    if-eqz p1, :cond_63

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_65

    :cond_63
    const/16 p1, 0xa

    :goto_65
    const/16 v4, 0x1e

    if-ge p1, v4, :cond_6e

    const/4 v4, 0x2

    if-gt p1, v4, :cond_6d

    goto :goto_6e

    :cond_6d
    move v3, p1

    :cond_6e
    :goto_6e
    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/fyber/inneractive/sdk/web/t;->n:J

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "InternalStoreWebpageController: Starting load timeout with %d"

    invoke-static {v0, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/web/t;->o:J

    new-instance p1, Lcom/fyber/inneractive/sdk/web/u;

    invoke-direct {p1, p0}, Lcom/fyber/inneractive/sdk/web/u;-><init>(Lcom/fyber/inneractive/sdk/web/t;)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/t;->p:Ljava/lang/Runnable;

    sget-object v0, Lcom/fyber/inneractive/sdk/util/m;->b:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/fyber/inneractive/sdk/web/t;->n:J

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_96
    return-void
.end method

###### Class com.fyber.inneractive.sdk.web.t.a (com.fyber.inneractive.sdk.web.t$a)
.class public Lcom/fyber/inneractive/sdk/web/t$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/web/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/web/t;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/web/t;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/t$a;->a:Lcom/fyber/inneractive/sdk/web/t;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .registers 5

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/web/t$a;->a:Lcom/fyber/inneractive/sdk/web/t;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/web/t;->q:Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/util/q;->a(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_f
    sget-object p1, Lcom/fyber/inneractive/sdk/util/m;->b:Landroid/os/Handler;

    new-instance p2, Lcom/fyber/inneractive/sdk/web/t$a$a;

    invoke-direct {p2, p0}, Lcom/fyber/inneractive/sdk/web/t$a$a;-><init>(Lcom/fyber/inneractive/sdk/web/t$a;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 8

    const-string p1, "success"

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_40

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/web/t$a;->a:Lcom/fyber/inneractive/sdk/web/t;

    iget-object p2, p1, Lcom/fyber/inneractive/sdk/web/t;->p:Ljava/lang/Runnable;

    if-eqz p2, :cond_18

    sget-object v3, Lcom/fyber/inneractive/sdk/util/m;->b:Landroid/os/Handler;

    invoke-virtual {v3, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v1, p1, Lcom/fyber/inneractive/sdk/web/t;->p:Ljava/lang/Runnable;

    :cond_18
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/web/t$a;->a:Lcom/fyber/inneractive/sdk/web/t;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/web/t$a;->a:Lcom/fyber/inneractive/sdk/web/t;

    iget-wide v3, p2, Lcom/fyber/inneractive/sdk/web/t;->o:J

    sub-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "%sInternalStoreWebpageController: onWebviewLoaded - load took %d msec"

    invoke-static {p2, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/web/t$a;->a:Lcom/fyber/inneractive/sdk/web/t;

    invoke-static {p1, v2}, Lcom/fyber/inneractive/sdk/web/t;->e(Lcom/fyber/inneractive/sdk/web/t;Z)Z

    return v2

    :cond_40
    const-string p1, "exit"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8a

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/web/t$a;->a:Lcom/fyber/inneractive/sdk/web/t;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/web/t;->q:Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/util/q;->a(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-nez p1, :cond_55

    return v2

    :cond_55
    :try_start_55
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "target"

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "mail"

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    new-instance v3, Landroid/content/Intent;

    if-eqz p2, :cond_70

    const-string v4, "android.intent.action.SENDTO"

    goto :goto_72

    :cond_70
    const-string v4, "android.intent.action.VIEW"

    :goto_72
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz p2, :cond_81

    const-string p2, "Choose an application"

    invoke-static {v3, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    :cond_81
    invoke-static {p1, v3}, Lcom/fyber/inneractive/sdk/util/x;->a(Landroid/content/Context;Landroid/content/Intent;)Z
    :try_end_84
    .catchall {:try_start_55 .. :try_end_84} :catchall_85

    goto :goto_89

    :catchall_85
    move-exception p1

    invoke-static {p1, v1, v1}, Lcom/fyber/inneractive/sdk/network/t;->a(Ljava/lang/Throwable;Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;Lcom/fyber/inneractive/sdk/response/e;)V

    :goto_89
    return v2

    :cond_8a
    return v0
.end method

###### Class com.fyber.inneractive.sdk.web.t.a.RunnableC0203a (com.fyber.inneractive.sdk.web.t$a$a)
.class public Lcom/fyber/inneractive/sdk/web/t$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/web/t$a;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/web/t$a;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/web/t$a;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/t$a$a;->a:Lcom/fyber/inneractive/sdk/web/t$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t$a$a;->a:Lcom/fyber/inneractive/sdk/web/t$a;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/t$a;->a:Lcom/fyber/inneractive/sdk/web/t;

    iget-boolean v1, v0, Lcom/fyber/inneractive/sdk/web/t;->y:Z

    if-nez v1, :cond_d

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/web/t;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/web/t;->g(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

###### Class com.fyber.inneractive.sdk.web.t.b (com.fyber.inneractive.sdk.web.t$b)
.class public Lcom/fyber/inneractive/sdk/web/t$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/web/t;->f(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/fyber/inneractive/sdk/web/t;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/web/t;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/t$b;->b:Lcom/fyber/inneractive/sdk/web/t;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/web/t$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/web/t$b;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "injecting JS: %s"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_d
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t$b;->a:Ljava/lang/String;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t$b;->b:Lcom/fyber/inneractive/sdk/web/t;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/t;->a:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/web/t$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2b} :catch_2c

    goto :goto_33

    :catch_2c
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Failed to inject JS"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_33
    :goto_33
    return-void
.end method

###### Class com.fyber.inneractive.sdk.web.t.c (com.fyber.inneractive.sdk.web.t$c)
.class public Lcom/fyber/inneractive/sdk/web/t$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/ignite/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/web/t;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/fyber/inneractive/sdk/web/t;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/web/t;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/t$c;->c:Lcom/fyber/inneractive/sdk/web/t;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/web/t$c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/web/t$c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t$c;->c:Lcom/fyber/inneractive/sdk/web/t;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/web/t;->b()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t$c;->c:Lcom/fyber/inneractive/sdk/web/t;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/web/t;->h:Lcom/fyber/inneractive/sdk/ignite/j;

    sget-object v2, Lcom/fyber/inneractive/sdk/network/q;->IGNITE_FLOW_FAILED_TO_INSTALL_APP:Lcom/fyber/inneractive/sdk/network/q;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/web/t$c;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/web/t$c;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/t;->d:Lcom/fyber/inneractive/sdk/ignite/k;

    check-cast v1, Lcom/fyber/inneractive/sdk/flow/p$a;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/fyber/inneractive/sdk/flow/p$a;->a(Lcom/fyber/inneractive/sdk/network/q;Ljava/lang/String;Ljava/lang/String;Lcom/fyber/inneractive/sdk/ignite/k;)V

    return-void
.end method

.method public b()V
    .registers 7

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t$c;->c:Lcom/fyber/inneractive/sdk/web/t;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/web/t;->b:Lcom/fyber/inneractive/sdk/ignite/c;

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/web/t;->c:Ljava/lang/String;

    new-instance v3, Lcom/fyber/inneractive/sdk/ignite/c$d;

    iget-object v4, v0, Lcom/fyber/inneractive/sdk/web/t;->f:Ljava/lang/String;

    iget-object v5, v0, Lcom/fyber/inneractive/sdk/web/t;->d:Lcom/fyber/inneractive/sdk/ignite/k;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/t;->h:Lcom/fyber/inneractive/sdk/ignite/j;

    check-cast v0, Lcom/fyber/inneractive/sdk/flow/p$a;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/flow/p$a;->a:Lcom/fyber/inneractive/sdk/flow/p;

    invoke-direct {v3, v4, v5, v0}, Lcom/fyber/inneractive/sdk/ignite/c$d;-><init>(Ljava/lang/String;Lcom/fyber/inneractive/sdk/ignite/k;Lcom/fyber/inneractive/sdk/flow/p;)V

    invoke-virtual {v1, v2, v3}, Lcom/fyber/inneractive/sdk/ignite/c;->a(Ljava/lang/String;Lcom/fyber/inneractive/sdk/ignite/c$d;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t$c;->c:Lcom/fyber/inneractive/sdk/web/t;

    const-string v1, "onShowInstallStarted();"

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/web/t;->f(Ljava/lang/String;)V

    return-void
.end method

###### Class com.fyber.inneractive.sdk.web.t.d (com.fyber.inneractive.sdk.web.t$d)
.class public Lcom/fyber/inneractive/sdk/web/t$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/ignite/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/web/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/fyber/inneractive/sdk/web/t;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/web/t;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/t$d;->b:Lcom/fyber/inneractive/sdk/web/t;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/web/t$d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t$d;->b:Lcom/fyber/inneractive/sdk/web/t;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/web/t$d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/web/t;->e(Ljava/lang/String;)V

    return-void
.end method

###### Class com.fyber.inneractive.sdk.web.t.e (com.fyber.inneractive.sdk.web.t$e)
.class public Lcom/fyber/inneractive/sdk/web/t$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/ignite/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/web/t;->e(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/web/t;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/web/t;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/t$e;->a:Lcom/fyber/inneractive/sdk/web/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 6

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t$e;->a:Lcom/fyber/inneractive/sdk/web/t;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/t;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t$e;->a:Lcom/fyber/inneractive/sdk/web/t;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCancelResult("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/fyber/inneractive/sdk/web/t;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/web/t$e;->a:Lcom/fyber/inneractive/sdk/web/t;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/web/t;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2e
    return-void
.end method

###### Class com.fyber.inneractive.sdk.web.t.f (com.fyber.inneractive.sdk.web.t$f)
.class public Lcom/fyber/inneractive/sdk/web/t$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/web/t;->e(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/web/t;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/web/t;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/t$f;->a:Lcom/fyber/inneractive/sdk/web/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t$f;->a:Lcom/fyber/inneractive/sdk/web/t;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/t;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t$f;->a:Lcom/fyber/inneractive/sdk/web/t;

    const-string v2, "onCancelResult(true);"

    invoke-virtual {v0, v2}, Lcom/fyber/inneractive/sdk/web/t;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t$f;->a:Lcom/fyber/inneractive/sdk/web/t;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/t;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1a
    return-void
.end method

###### Class com.fyber.inneractive.sdk.web.t.g (com.fyber.inneractive.sdk.web.t$g)
.class public interface abstract Lcom/fyber/inneractive/sdk/web/t$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/web/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "g"
.end annotation

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
