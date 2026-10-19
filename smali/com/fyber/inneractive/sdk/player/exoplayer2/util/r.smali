###### Class com.fyber.inneractive.sdk.player.exoplayer2.util.r (com.fyber.inneractive.sdk.player.exoplayer2.util.r)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/util/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field public volatile c:J


# direct methods
.method public constructor <init>(J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/r;->c:J

    invoke-virtual {p0, p1, p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/r;->c(J)V

    return-void
.end method


# virtual methods
.method public a()J
    .registers 8

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/r;->a:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v6, v0, v4

    if-nez v6, :cond_13

    const-wide/16 v2, 0x0

    goto :goto_1c

    :cond_13
    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/r;->c:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1a

    goto :goto_1c

    :cond_1a
    iget-wide v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/r;->b:J

    :goto_1c
    return-wide v2
.end method

.method public a(J)J
    .registers 8

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_a

    return-wide v0

    :cond_a
    iget-wide v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/r;->c:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_13

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/r;->c:J

    goto :goto_28

    :cond_13
    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/r;->a:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_21

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/r;->b:J

    :cond_21
    monitor-enter p0

    :try_start_22
    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/r;->c:J

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_2c

    :goto_28
    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/r;->b:J

    add-long/2addr p1, v0

    return-wide p1

    :catchall_2c
    move-exception p1

    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public b(J)J
    .registers 15

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_a

    return-wide v0

    :cond_a
    iget-wide v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/r;->c:J

    const-wide/32 v4, 0x15f90

    const-wide/32 v6, 0xf4240

    cmp-long v8, v2, v0

    if-eqz v8, :cond_42

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/r;->c:J

    mul-long v0, v0, v4

    div-long/2addr v0, v6

    const-wide v2, 0x100000000L

    add-long/2addr v2, v0

    const-wide v8, 0x200000000L

    div-long/2addr v2, v8

    const-wide/16 v10, 0x1

    sub-long v10, v2, v10

    mul-long v10, v10, v8

    add-long/2addr v10, p1

    mul-long v2, v2, v8

    add-long/2addr p1, v2

    sub-long v2, v10, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sub-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v8, v2, v0

    if-gez v8, :cond_42

    move-wide p1, v10

    :cond_42
    mul-long p1, p1, v6

    div-long/2addr p1, v4

    invoke-virtual {p0, p1, p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/r;->a(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public declared-synchronized c(J)V
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/r;->c:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->b(Z)V

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/r;->a:J
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method
