###### Class com.tapjoy.internal.m0 (com.tapjoy.internal.m0)
.class public final Lcom/tapjoy/internal/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    sget-boolean v0, Lcom/tapjoy/internal/na;->a:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/tapjoy/internal/e7;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_a
    new-instance v0, Lcom/tapjoy/internal/f7;

    invoke-direct {v0}, Lcom/tapjoy/internal/f7;-><init>()V

    const-wide/16 v1, 0x4e20

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/f7;->b(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3d

    iget-wide v3, v0, Lcom/tapjoy/internal/f7;->a:J

    iget-wide v5, v0, Lcom/tapjoy/internal/f7;->b:J

    iget-wide v0, v0, Lcom/tapjoy/internal/f7;->c:J

    const-wide/16 v7, 0x2

    div-long/2addr v0, v7

    const-class v0, Lcom/tapjoy/internal/na;

    monitor-enter v0

    :try_start_25
    sput-boolean v2, Lcom/tapjoy/internal/na;->a:Z

    sput-wide v3, Lcom/tapjoy/internal/na;->b:J

    sput-wide v5, Lcom/tapjoy/internal/na;->c:J

    sget-wide v3, Lcom/tapjoy/internal/na;->b:J

    sget-wide v5, Lcom/tapjoy/internal/na;->c:J

    sub-long/2addr v3, v5

    sput-wide v3, Lcom/tapjoy/internal/na;->d:J

    invoke-static {}, Lcom/tapjoy/internal/na;->a()J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_38
    .catchall {:try_start_25 .. :try_end_38} :catchall_3a

    monitor-exit v0

    goto :goto_3e

    :catchall_3a
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_3d
    const/4 v2, 0x0

    :goto_3e
    if-eqz v2, :cond_46

    sget-object v0, Lcom/tapjoy/internal/e7;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_4f

    :cond_46
    sget-object v0, Lcom/tapjoy/internal/e7;->a:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x12c

    invoke-interface {v0, p0, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :goto_4f
    return-void
.end method
