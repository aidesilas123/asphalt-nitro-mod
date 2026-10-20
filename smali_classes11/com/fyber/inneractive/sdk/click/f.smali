###### Class com.fyber.inneractive.sdk.click.f (com.fyber.inneractive.sdk.click.f)
.class public Lcom/fyber/inneractive/sdk/click/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/click/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/click/f$a;
    }
.end annotation


# instance fields
.field public a:Lcom/fyber/inneractive/sdk/web/t;

.field public b:Z

.field public final c:Lcom/fyber/inneractive/sdk/click/f$a;

.field public final d:Lcom/fyber/inneractive/sdk/util/k0;

.field public final e:Lcom/fyber/inneractive/sdk/util/e;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/click/f$a;Lcom/fyber/inneractive/sdk/util/k0;Lcom/fyber/inneractive/sdk/util/e;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/click/f;->c:Lcom/fyber/inneractive/sdk/click/f$a;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/click/f;->d:Lcom/fyber/inneractive/sdk/util/k0;

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/click/f;->e:Lcom/fyber/inneractive/sdk/util/e;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/net/Uri;Ljava/util/List;)Lcom/fyber/inneractive/sdk/click/b;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lcom/fyber/inneractive/sdk/click/i;",
            ">;)",
            "Lcom/fyber/inneractive/sdk/click/b;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/click/f;->a:Lcom/fyber/inneractive/sdk/web/t;

    const-string v1, "IgniteGooglePlay"

    if-eqz v0, :cond_fd

    iget-boolean v2, p0, Lcom/fyber/inneractive/sdk/click/f;->b:Z

    iget-boolean v3, v0, Lcom/fyber/inneractive/sdk/web/t;->C:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_25

    new-instance v0, Lcom/fyber/inneractive/sdk/util/x$a;

    sget-object v2, Lcom/fyber/inneractive/sdk/util/x$d;->FAILED:Lcom/fyber/inneractive/sdk/util/x$d;

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "Store controller is already open"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, v3, p1}, Lcom/fyber/inneractive/sdk/util/x$a;-><init>(Lcom/fyber/inneractive/sdk/util/x$d;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_ad

    :cond_25
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/fyber/inneractive/sdk/web/t;->C:Z

    :try_start_28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_31

    goto :goto_33

    :catchall_31
    const-string v5, "failed"

    :goto_33
    iput-boolean v3, v0, Lcom/fyber/inneractive/sdk/web/t;->D:Z

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/web/t;->j:Ljava/lang/String;

    const-string v7, "invalid_task_id"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    iget-boolean v6, v0, Lcom/fyber/inneractive/sdk/web/t;->z:Z

    if-nez v6, :cond_4c

    if-eqz v2, :cond_48

    sget-object v6, Lcom/fyber/inneractive/sdk/ignite/k;->TRUE_SINGLE_TAP:Lcom/fyber/inneractive/sdk/ignite/k;

    goto :goto_4a

    :cond_48
    sget-object v6, Lcom/fyber/inneractive/sdk/ignite/k;->SINGLE_TAP:Lcom/fyber/inneractive/sdk/ignite/k;

    :goto_4a
    iput-object v6, v0, Lcom/fyber/inneractive/sdk/web/t;->d:Lcom/fyber/inneractive/sdk/ignite/k;

    :cond_4c
    iput-boolean v2, v0, Lcom/fyber/inneractive/sdk/web/t;->B:Z

    iget-boolean v6, v0, Lcom/fyber/inneractive/sdk/web/t;->A:Z

    const/4 v7, 0x0

    const-string v8, "onInstallationSuccess();"

    if-eqz v6, :cond_59

    invoke-virtual {v0, v8}, Lcom/fyber/inneractive/sdk/web/t;->f(Ljava/lang/String;)V

    goto :goto_98

    :cond_59
    iget-boolean v6, v0, Lcom/fyber/inneractive/sdk/web/t;->z:Z

    if-nez v6, :cond_98

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/web/t;->c:Ljava/lang/String;

    :try_start_5f
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_70

    sget-object v9, Lcom/fyber/inneractive/sdk/util/l;->a:Landroid/app/Application;

    invoke-virtual {v9}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v6, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_6f} :catch_70

    goto :goto_71

    :catch_70
    :cond_70
    move-object v6, v7

    :goto_71
    if-eqz v6, :cond_74

    goto :goto_75

    :cond_74
    const/4 v3, 0x0

    :goto_75
    if-eqz v3, :cond_7b

    invoke-virtual {v0, v8}, Lcom/fyber/inneractive/sdk/web/t;->f(Ljava/lang/String;)V

    goto :goto_98

    :cond_7b
    if-eqz v2, :cond_98

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/web/t;->b:Lcom/fyber/inneractive/sdk/ignite/c;

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/web/t;->c:Ljava/lang/String;

    new-instance v6, Lcom/fyber/inneractive/sdk/ignite/c$d;

    iget-object v8, v0, Lcom/fyber/inneractive/sdk/web/t;->f:Ljava/lang/String;

    iget-object v9, v0, Lcom/fyber/inneractive/sdk/web/t;->d:Lcom/fyber/inneractive/sdk/ignite/k;

    iget-object v10, v0, Lcom/fyber/inneractive/sdk/web/t;->h:Lcom/fyber/inneractive/sdk/ignite/j;

    check-cast v10, Lcom/fyber/inneractive/sdk/flow/p$a;

    iget-object v10, v10, Lcom/fyber/inneractive/sdk/flow/p$a;->a:Lcom/fyber/inneractive/sdk/flow/p;

    invoke-direct {v6, v8, v9, v10}, Lcom/fyber/inneractive/sdk/ignite/c$d;-><init>(Ljava/lang/String;Lcom/fyber/inneractive/sdk/ignite/k;Lcom/fyber/inneractive/sdk/flow/p;)V

    invoke-virtual {v2, v3, v6}, Lcom/fyber/inneractive/sdk/ignite/c;->a(Ljava/lang/String;Lcom/fyber/inneractive/sdk/ignite/c$d;)V

    const-string v2, "onShowInstallStarted();"

    invoke-virtual {v0, v2}, Lcom/fyber/inneractive/sdk/web/t;->f(Ljava/lang/String;)V

    :cond_98
    :goto_98
    :try_start_98
    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/t;->e:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/fyber/inneractive/sdk/activities/InternalStoreWebpageActivity;->startActivity(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/fyber/inneractive/sdk/util/x$a;

    sget-object p1, Lcom/fyber/inneractive/sdk/util/x$d;->OPENED_INTERNAL_STORE:Lcom/fyber/inneractive/sdk/util/x$d;

    invoke-direct {v0, p1, v7, v5}, Lcom/fyber/inneractive/sdk/util/x$a;-><init>(Lcom/fyber/inneractive/sdk/util/x$d;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_a4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_98 .. :try_end_a4} :catch_a5

    goto :goto_ad

    :catch_a5
    move-exception p1

    new-instance v0, Lcom/fyber/inneractive/sdk/util/x$a;

    sget-object v2, Lcom/fyber/inneractive/sdk/util/x$d;->FAILED:Lcom/fyber/inneractive/sdk/util/x$d;

    invoke-direct {v0, v2, p1, v5}, Lcom/fyber/inneractive/sdk/util/x$a;-><init>(Lcom/fyber/inneractive/sdk/util/x$d;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_ad
    iget-object p1, v0, Lcom/fyber/inneractive/sdk/util/x$a;->b:Ljava/lang/Throwable;

    if-nez p1, :cond_de

    new-instance p1, Lcom/fyber/inneractive/sdk/network/p0;

    new-instance v0, Lcom/fyber/inneractive/sdk/click/e;

    invoke-direct {v0, p0, p3, p2}, Lcom/fyber/inneractive/sdk/click/e;-><init>(Lcom/fyber/inneractive/sdk/click/f;Ljava/util/List;Landroid/net/Uri;)V

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    sget-object v2, Lcom/fyber/inneractive/sdk/network/x;->c:Lcom/fyber/inneractive/sdk/network/x;

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/network/x;->b()Lcom/fyber/inneractive/sdk/network/g;

    move-result-object v2

    invoke-direct {p1, v0, p3, v2}, Lcom/fyber/inneractive/sdk/network/p0;-><init>(Lcom/fyber/inneractive/sdk/network/w;Ljava/lang/String;Lcom/fyber/inneractive/sdk/network/g;)V

    sget-object p3, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->M:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object p3, p3, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->s:Lcom/fyber/inneractive/sdk/network/y;

    iget-object p3, p3, Lcom/fyber/inneractive/sdk/network/y;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p3, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    sget-object p3, Lcom/fyber/inneractive/sdk/network/q0;->QUEUED:Lcom/fyber/inneractive/sdk/network/q0;

    invoke-virtual {p1, p3}, Lcom/fyber/inneractive/sdk/network/f0;->a(Lcom/fyber/inneractive/sdk/network/q0;)V

    sget-object p1, Lcom/fyber/inneractive/sdk/click/l$d;->OPEN_INTERNAL_STORE:Lcom/fyber/inneractive/sdk/click/l$d;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1, v1}, Lcom/fyber/inneractive/sdk/click/l;->a(Ljava/lang/String;Lcom/fyber/inneractive/sdk/click/l$d;Ljava/lang/String;)Lcom/fyber/inneractive/sdk/click/b;

    move-result-object p1

    return-object p1

    :cond_de
    if-eqz p3, :cond_f2

    new-instance v0, Lcom/fyber/inneractive/sdk/click/i;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/click/f;->a:Lcom/fyber/inneractive/sdk/web/t;

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/web/t;->k:Ljava/lang/String;

    sget-object v3, Lcom/fyber/inneractive/sdk/click/l$d;->OPEN_INTERNAL_STORE:Lcom/fyber/inneractive/sdk/click/l$d;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, v4, v3, p1}, Lcom/fyber/inneractive/sdk/click/i;-><init>(Ljava/lang/String;ZLcom/fyber/inneractive/sdk/click/l$d;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f2
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mInternalStoreWebpageController.show has failed"

    invoke-static {p1, v1, p2}, Lcom/fyber/inneractive/sdk/click/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/inneractive/sdk/click/b;

    move-result-object p1

    return-object p1

    :cond_fd
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mInternalStoreWebpageController is null"

    invoke-static {p1, v1, p2}, Lcom/fyber/inneractive/sdk/click/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/inneractive/sdk/click/b;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/net/Uri;Lcom/fyber/inneractive/sdk/click/l;)Z
    .registers 5

    sget-object p1, Lcom/fyber/inneractive/sdk/ignite/k;->NONE:Lcom/fyber/inneractive/sdk/ignite/k;

    iget-object v0, p2, Lcom/fyber/inneractive/sdk/click/l;->k:Lcom/fyber/inneractive/sdk/ignite/k;

    iget-boolean v1, p2, Lcom/fyber/inneractive/sdk/click/l;->j:Z

    iput-boolean v1, p0, Lcom/fyber/inneractive/sdk/click/f;->b:Z

    iget-object p2, p2, Lcom/fyber/inneractive/sdk/click/l;->i:Lcom/fyber/inneractive/sdk/web/t;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/click/f;->a:Lcom/fyber/inneractive/sdk/web/t;

    const/4 p2, 0x1

    const/4 v1, 0x0

    if-eq v0, p1, :cond_28

    sget-object p1, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->M:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->E:Lcom/fyber/inneractive/sdk/ignite/c;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/ignite/c;->d()Z

    move-result p1

    if-eqz p1, :cond_28

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/click/f;->a:Lcom/fyber/inneractive/sdk/web/t;

    if-eqz p1, :cond_24

    iget-boolean p1, p1, Lcom/fyber/inneractive/sdk/web/t;->l:Z

    if-eqz p1, :cond_24

    const/4 p1, 0x1

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    if-eqz p1, :cond_28

    goto :goto_29

    :cond_28
    const/4 p2, 0x0

    :goto_29
    return p2
.end method
