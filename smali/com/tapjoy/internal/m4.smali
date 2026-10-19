###### Class com.tapjoy.internal.m4 (com.tapjoy.internal.m4)
.class public final Lcom/tapjoy/internal/m4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;
.implements Lcom/tapjoy/TJPlacementListener;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lcom/tapjoy/internal/a4;

.field public volatile c:Z

.field public d:Lcom/tapjoy/TJPlacement;

.field public final synthetic e:Lcom/tapjoy/internal/y4;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/y4;Lcom/tapjoy/internal/a4;)V
    .registers 3

    iput-object p1, p0, Lcom/tapjoy/internal/m4;->e:Lcom/tapjoy/internal/y4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tapjoy/internal/m4;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/tapjoy/internal/m4;->b:Lcom/tapjoy/internal/a4;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tapjoy/internal/m4;->c:Z

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    iget-object v0, p0, Lcom/tapjoy/internal/m4;->b:Lcom/tapjoy/internal/a4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_7f

    :try_start_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/tapjoy/internal/a4;->b:J

    sub-long/2addr v1, v3

    iget-wide v3, v0, Lcom/tapjoy/internal/a4;->a:J
    :try_end_15
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_15} :catch_1c
    .catchall {:try_start_c .. :try_end_15} :catchall_7f

    cmp-long v0, v1, v3

    if-lez v0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v0, 0x0

    goto :goto_1d

    :catch_1c
    :goto_1c
    const/4 v0, 0x1

    :goto_1d
    if-eqz v0, :cond_26

    :try_start_1f
    const-string v0, "Timed out"

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/m4;->b(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :cond_26
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3c

    sget-object v0, Lcom/tapjoy/internal/a3;->a:Lcom/tapjoy/internal/n2;

    invoke-virtual {v0, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isConnected()Z

    move-result v1

    if-nez v1, :cond_39

    monitor-exit p0

    return-void

    :cond_39
    invoke-virtual {v0, p0}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    :cond_3c
    iget-object v0, p0, Lcom/tapjoy/internal/m4;->d:Lcom/tapjoy/TJPlacement;

    if-nez v0, :cond_62

    iget-object v0, p0, Lcom/tapjoy/internal/m4;->e:Lcom/tapjoy/internal/y4;

    invoke-virtual {v0}, Lcom/tapjoy/internal/y4;->d()Z

    move-result v0

    if-nez v0, :cond_4f

    const-string v0, "Cannot request"

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/m4;->b(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :cond_4f
    iget-object v0, p0, Lcom/tapjoy/internal/m4;->e:Lcom/tapjoy/internal/y4;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/m4;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p0, v2}, Lcom/tapjoy/internal/y4;->a(Landroid/content/Context;Lcom/tapjoy/TJPlacementListener;Ljava/lang/Object;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/m4;->d:Lcom/tapjoy/TJPlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->h()V

    monitor-exit p0

    return-void

    :cond_62
    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->g()Z

    move-result v0

    if-nez v0, :cond_6a

    monitor-exit p0

    return-void

    :cond_6a
    iget-object v0, p0, Lcom/tapjoy/internal/m4;->e:Lcom/tapjoy/internal/y4;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/y4;->e(Ljava/util/Observer;)Z

    move-result v0

    if-nez v0, :cond_74

    monitor-exit p0

    return-void

    :cond_74
    iget-object v0, p0, Lcom/tapjoy/internal/m4;->d:Lcom/tapjoy/TJPlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->j()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/m4;->b(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_7f
    move-exception v0

    monitor-exit p0
    :try_end_81
    .catchall {:try_start_1f .. :try_end_81} :catchall_7f

    throw v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 6

    const-string v0, "Placement "

    const-string v1, "Cannot show placement "

    monitor-enter p0

    :try_start_5
    iget-object v2, p0, Lcom/tapjoy/internal/m4;->e:Lcom/tapjoy/internal/y4;

    iget-object v3, p0, Lcom/tapjoy/internal/m4;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/y4;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-nez p1, :cond_26

    const-string p1, "SystemPlacement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is presented now"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_44

    :cond_26
    const-string v0, "SystemPlacement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " now ("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_44
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tapjoy/internal/m4;->c:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tapjoy/internal/m4;->d:Lcom/tapjoy/TJPlacement;

    sget-object p1, Lcom/tapjoy/internal/a3;->a:Lcom/tapjoy/internal/n2;

    invoke-virtual {p1, p0}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    sget-object p1, Lcom/tapjoy/internal/a3;->e:Lcom/tapjoy/internal/n2;

    invoke-virtual {p1, p0}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    sget-object p1, Lcom/tapjoy/internal/a3;->c:Lcom/tapjoy/internal/n2;

    invoke-virtual {p1, p0}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_5 .. :try_end_5a} :catchall_60

    iget-object p1, p0, Lcom/tapjoy/internal/m4;->e:Lcom/tapjoy/internal/y4;

    invoke-virtual {p1, p0}, Lcom/tapjoy/internal/y4;->c(Lcom/tapjoy/internal/m4;)V

    return-void

    :catchall_60
    move-exception p1

    :try_start_61
    monitor-exit p0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw p1
.end method

.method public final onClick(Lcom/tapjoy/TJPlacement;)V
    .registers 2

    return-void
.end method

.method public final onContentDismiss(Lcom/tapjoy/TJPlacement;)V
    .registers 2

    return-void
.end method

.method public final onContentReady(Lcom/tapjoy/TJPlacement;)V
    .registers 2

    invoke-virtual {p0}, Lcom/tapjoy/internal/m4;->a()V

    return-void
.end method

.method public final onContentShow(Lcom/tapjoy/TJPlacement;)V
    .registers 2

    return-void
.end method

.method public final onPurchaseRequest(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public final onRequestFailure(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/r;)V
    .registers 3

    iget-object p1, p2, Lcom/tapjoy/r;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/m4;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final onRequestSuccess(Lcom/tapjoy/TJPlacement;)V
    .registers 2

    return-void
.end method

.method public final onRewardRequest(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;I)V
    .registers 5

    return-void
.end method

.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0}, Lcom/tapjoy/internal/m4;->a()V

    return-void
.end method
