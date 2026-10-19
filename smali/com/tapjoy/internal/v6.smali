###### Class com.tapjoy.internal.v6 (com.tapjoy.internal.v6)
.class public abstract Lcom/tapjoy/internal/v6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/tapjoy/internal/r7;

.field public static b:J


# direct methods
.method public static a()Lcom/tapjoy/internal/r7;
    .registers 6

    const-class v0, Lcom/tapjoy/internal/v6;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/tapjoy/internal/v6;->a:Lcom/tapjoy/internal/r7;

    if-eqz v1, :cond_17

    iget-object v2, v1, Lcom/tapjoy/internal/r7;->f:Lcom/tapjoy/internal/r7;

    sput-object v2, Lcom/tapjoy/internal/v6;->a:Lcom/tapjoy/internal/r7;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/tapjoy/internal/r7;->f:Lcom/tapjoy/internal/r7;

    sget-wide v2, Lcom/tapjoy/internal/v6;->b:J

    const-wide/16 v4, 0x2000

    sub-long/2addr v2, v4

    sput-wide v2, Lcom/tapjoy/internal/v6;->b:J

    monitor-exit v0

    return-object v1

    :cond_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1e

    new-instance v0, Lcom/tapjoy/internal/r7;

    invoke-direct {v0}, Lcom/tapjoy/internal/r7;-><init>()V

    return-object v0

    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public static a(Lcom/tapjoy/internal/r7;)V
    .registers 7

    iget-object v0, p0, Lcom/tapjoy/internal/r7;->f:Lcom/tapjoy/internal/r7;

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/tapjoy/internal/r7;->g:Lcom/tapjoy/internal/r7;

    if-nez v0, :cond_30

    iget-boolean v0, p0, Lcom/tapjoy/internal/r7;->d:Z

    if-eqz v0, :cond_d

    return-void

    :cond_d
    const-class v0, Lcom/tapjoy/internal/v6;

    monitor-enter v0

    :try_start_10
    sget-wide v1, Lcom/tapjoy/internal/v6;->b:J

    const-wide/16 v3, 0x2000

    add-long/2addr v1, v3

    const-wide/32 v3, 0x10000

    cmp-long v5, v1, v3

    if-lez v5, :cond_1e

    monitor-exit v0

    return-void

    :cond_1e
    sput-wide v1, Lcom/tapjoy/internal/v6;->b:J

    sget-object v1, Lcom/tapjoy/internal/v6;->a:Lcom/tapjoy/internal/r7;

    iput-object v1, p0, Lcom/tapjoy/internal/r7;->f:Lcom/tapjoy/internal/r7;

    const/4 v1, 0x0

    iput v1, p0, Lcom/tapjoy/internal/r7;->c:I

    iput v1, p0, Lcom/tapjoy/internal/r7;->b:I

    sput-object p0, Lcom/tapjoy/internal/v6;->a:Lcom/tapjoy/internal/r7;

    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_10 .. :try_end_2f} :catchall_2d

    throw p0

    :cond_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
