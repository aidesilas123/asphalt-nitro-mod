###### Class com.applovin.exoplayer2.l.g (com.applovin.exoplayer2.l.g)
.class public Lcom/applovin/exoplayer2/l/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private abQ:Z

.field private final bR:Lcom/applovin/exoplayer2/l/d;


# direct methods
.method public constructor <init>()V
    .registers 2

    sget-object v0, Lcom/applovin/exoplayer2/l/d;->abJ:Lcom/applovin/exoplayer2/l/d;

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/l/g;-><init>(Lcom/applovin/exoplayer2/l/d;)V

    return-void
.end method

.method public constructor <init>(Lcom/applovin/exoplayer2/l/d;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/l/g;->bR:Lcom/applovin/exoplayer2/l/d;

    return-void
.end method


# virtual methods
.method public declared-synchronized hB()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/l/g;->abQ:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized oN()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/l/g;->abQ:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x1

    :try_start_9
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/l/g;->abQ:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_10

    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized oO()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/l/g;->abQ:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/l/g;->abQ:Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized oP()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/l/g;->abQ:Z

    if-nez v0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    goto :goto_1

    :cond_9
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized oQ()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    :goto_2
    :try_start_2
    iget-boolean v1, p0, Lcom/applovin/exoplayer2/l/g;->abQ:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_17

    if-nez v1, :cond_c

    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_9} :catch_a
    .catchall {:try_start_6 .. :try_end_9} :catchall_17

    goto :goto_2

    :catch_a
    const/4 v0, 0x1

    goto :goto_2

    :cond_c
    if-eqz v0, :cond_15

    :try_start_e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_17

    :cond_15
    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method
