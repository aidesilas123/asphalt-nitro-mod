###### Class com.tapjoy.internal.y4 (com.tapjoy.internal.y4)
.class public abstract Lcom/tapjoy/internal/y4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile a:Lcom/tapjoy/internal/m4;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Lcom/tapjoy/TJPlacementListener;Ljava/lang/Object;)Lcom/tapjoy/TJPlacement;
.end method

.method public abstract b(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public final c(Lcom/tapjoy/internal/m4;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/y4;->a:Lcom/tapjoy/internal/m4;

    if-ne v0, p1, :cond_8

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tapjoy/internal/y4;->a:Lcom/tapjoy/internal/m4;

    :cond_8
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public d()Z
    .registers 2

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isFullScreenViewOpen()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public e(Ljava/util/Observer;)Z
    .registers 6

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isFullScreenViewOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/tapjoy/internal/a3;->e:Lcom/tapjoy/internal/n2;

    invoke-virtual {v0, p1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isFullScreenViewOpen()Z

    move-result v2

    if-eqz v2, :cond_13

    return v1

    :cond_13
    invoke-virtual {v0, p1}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    :cond_16
    sget-object v0, Lcom/tapjoy/internal/v1;->a:Lcom/tapjoy/internal/v1;

    iget-object v2, v0, Lcom/tapjoy/internal/v1;->j:Lcom/tapjoy/internal/e9;

    const/4 v3, 0x1

    if-eqz v2, :cond_27

    iget-object v2, v2, Lcom/tapjoy/internal/e9;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v2, 0x1

    goto :goto_28

    :cond_27
    const/4 v2, 0x0

    :goto_28
    if-nez v2, :cond_44

    sget-object v2, Lcom/tapjoy/internal/a3;->c:Lcom/tapjoy/internal/n2;

    invoke-virtual {v2, p1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    iget-object v0, v0, Lcom/tapjoy/internal/v1;->j:Lcom/tapjoy/internal/e9;

    if-eqz v0, :cond_3d

    iget-object v0, v0, Lcom/tapjoy/internal/e9;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v0, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v0, 0x0

    :goto_3e
    if-nez v0, :cond_41

    return v1

    :cond_41
    invoke-virtual {v2, p1}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    :cond_44
    return v3
.end method

.method public f()Lcom/tapjoy/internal/m4;
    .registers 5

    new-instance v0, Lcom/tapjoy/internal/m4;

    new-instance v1, Lcom/tapjoy/internal/a4;

    const-wide/16 v2, 0x2710

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/internal/a4;-><init>(J)V

    invoke-direct {v0, p0, v1}, Lcom/tapjoy/internal/m4;-><init>(Lcom/tapjoy/internal/y4;Lcom/tapjoy/internal/a4;)V

    return-object v0
.end method

.method public final g()Z
    .registers 4

    invoke-virtual {p0}, Lcom/tapjoy/internal/y4;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    monitor-enter p0

    :try_start_a
    iget-object v2, p0, Lcom/tapjoy/internal/y4;->a:Lcom/tapjoy/internal/m4;

    if-nez v2, :cond_14

    invoke-virtual {p0}, Lcom/tapjoy/internal/y4;->f()Lcom/tapjoy/internal/m4;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/y4;->a:Lcom/tapjoy/internal/m4;

    :cond_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_1d

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/tapjoy/internal/m4;->a()V

    const/4 v0, 0x1

    return v0

    :cond_1c
    return v1

    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method
