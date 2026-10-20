.class public final Lcom/facebook/ads/redexgen/X/HO;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A00:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized A00()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 36522
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A00:Z

    if-nez v0, :cond_9

    .line 36523
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 36524
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/HO;
    :cond_9
    monitor-exit p0

    return-void

    .line 36525
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A01()Z
    .registers 3

    monitor-enter p0

    .line 36526
    :try_start_1
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A00:Z

    .line 36527
    .local v0, "wasOpen":Z
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A00:Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 36528
    monitor-exit p0

    return v1

    .line 36529
    .end local v0    # "wasOpen":Z
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/HO;
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A02()Z
    .registers 2

    monitor-enter p0

    .line 36530
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A00:Z

    if-eqz v0, :cond_8
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_10

    .line 36531
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 36532
    :cond_8
    const/4 v0, 0x1

    :try_start_9
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A00:Z

    .line 36533
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_10

    .line 36534
    monitor-exit p0

    return v0

    .line 36535
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/HO;
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
