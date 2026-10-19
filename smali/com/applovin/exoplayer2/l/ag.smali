###### Class com.applovin.exoplayer2.l.ag (com.applovin.exoplayer2.l.ag)
.class public final Lcom/applovin/exoplayer2/l/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private CD:J
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private acS:J
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private acT:J
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final acU:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/l/ag;->acU:Ljava/lang/ThreadLocal;

    invoke-virtual {p0, p1, p2}, Lcom/applovin/exoplayer2/l/ag;->aI(J)V

    return-void
.end method

.method public static bt(J)J
    .registers 4

    const-wide/32 v0, 0xf4240

    mul-long p0, p0, v0

    const-wide/32 v0, 0x15f90

    div-long/2addr p0, v0

    return-wide p0
.end method

.method public static bu(J)J
    .registers 4

    const-wide/32 v0, 0x15f90

    mul-long p0, p0, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public declared-synchronized aI(J)V
    .registers 8

    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/applovin/exoplayer2/l/ag;->CD:J

    const-wide v0, 0x7fffffffffffffffL

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p1, v0

    if-nez v4, :cond_14

    const-wide/16 p1, 0x0

    goto :goto_15

    :cond_14
    move-wide p1, v2

    :goto_15
    iput-wide p1, p0, Lcom/applovin/exoplayer2/l/ag;->acS:J

    iput-wide v2, p0, Lcom/applovin/exoplayer2/l/ag;->acT:J
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized br(J)J
    .registers 11

    monitor-enter p0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_c

    monitor-exit p0

    return-wide v0

    :cond_c
    :try_start_c
    iget-wide v2, p0, Lcom/applovin/exoplayer2/l/ag;->acT:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_3d

    invoke-static {v2, v3}, Lcom/applovin/exoplayer2/l/ag;->bu(J)J

    move-result-wide v0

    const-wide v2, 0x100000000L

    add-long/2addr v2, v0

    const-wide v4, 0x200000000L

    div-long/2addr v2, v4

    const-wide/16 v6, 0x1

    sub-long v6, v2, v6

    mul-long v6, v6, v4

    add-long/2addr v6, p1

    mul-long v2, v2, v4

    add-long/2addr p1, v2

    sub-long v2, v6, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sub-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v4, v2, v0

    if-gez v4, :cond_3d

    move-wide p1, v6

    :cond_3d
    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/l/ag;->bt(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/applovin/exoplayer2/l/ag;->bs(J)J

    move-result-wide p1
    :try_end_45
    .catchall {:try_start_c .. :try_end_45} :catchall_47

    monitor-exit p0

    return-wide p1

    :catchall_47
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized bs(J)J
    .registers 8

    monitor-enter p0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_c

    monitor-exit p0

    return-wide v0

    :cond_c
    :try_start_c
    iget-wide v2, p0, Lcom/applovin/exoplayer2/l/ag;->acS:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_35

    iget-wide v0, p0, Lcom/applovin/exoplayer2/l/ag;->CD:J

    const-wide v2, 0x7ffffffffffffffeL

    cmp-long v4, v0, v2

    if-nez v4, :cond_2f

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/ag;->acU:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_2f
    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/applovin/exoplayer2/l/ag;->acS:J

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_35
    iput-wide p1, p0, Lcom/applovin/exoplayer2/l/ag;->acT:J

    iget-wide v0, p0, Lcom/applovin/exoplayer2/l/ag;->acS:J
    :try_end_39
    .catchall {:try_start_c .. :try_end_39} :catchall_3c

    add-long/2addr p1, v0

    monitor-exit p0

    return-wide p1

    :catchall_3c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized pS()J
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/applovin/exoplayer2/l/ag;->CD:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1c

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_15

    const-wide v2, 0x7ffffffffffffffeL

    cmp-long v4, v0, v2

    if-nez v4, :cond_1a

    :cond_15
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :cond_1a
    monitor-exit p0

    return-wide v0

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pT()J
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/applovin/exoplayer2/l/ag;->acT:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_10

    iget-wide v2, p0, Lcom/applovin/exoplayer2/l/ag;->acS:J

    add-long/2addr v0, v2

    goto :goto_14

    :cond_10
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/ag;->pS()J

    move-result-wide v0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    :goto_14
    monitor-exit p0

    return-wide v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pU()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/applovin/exoplayer2/l/ag;->acS:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
