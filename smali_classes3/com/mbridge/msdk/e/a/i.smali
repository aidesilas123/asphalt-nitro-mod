###### Class com.mbridge.msdk.e.a.i (com.mbridge.msdk.e.a.i)
.class public final Lcom/mbridge/msdk/e/a/i;
.super Ljava/lang/Thread;
.source "NetworkDispatcher.java"


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/mbridge/msdk/e/a/m<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/mbridge/msdk/e/a/h;

.field private final c:Lcom/mbridge/msdk/e/a/a;

.field private final d:Lcom/mbridge/msdk/e/a/q;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/mbridge/msdk/e/a/h;Lcom/mbridge/msdk/e/a/a;Lcom/mbridge/msdk/e/a/q;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/mbridge/msdk/e/a/m<",
            "*>;>;",
            "Lcom/mbridge/msdk/e/a/h;",
            "Lcom/mbridge/msdk/e/a/a;",
            "Lcom/mbridge/msdk/e/a/q;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/e/a/i;->e:Z

    iput-object p1, p0, Lcom/mbridge/msdk/e/a/i;->a:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/mbridge/msdk/e/a/i;->b:Lcom/mbridge/msdk/e/a/h;

    iput-object p3, p0, Lcom/mbridge/msdk/e/a/i;->c:Lcom/mbridge/msdk/e/a/a;

    iput-object p4, p0, Lcom/mbridge/msdk/e/a/i;->d:Lcom/mbridge/msdk/e/a/q;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/e/a/i;->e:Z

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public final run()V
    .registers 10

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_5
    const/4 v0, 0x0

    :try_start_6
    iget-object v1, p0, Lcom/mbridge/msdk/e/a/i;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/e/a/m;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Lcom/mbridge/msdk/e/a/m;->a(I)V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_16} :catch_ac

    const/4 v4, 0x4

    :try_start_17
    invoke-virtual {v1}, Lcom/mbridge/msdk/e/a/m;->l()Z

    move-result v5

    if-eqz v5, :cond_29

    const-string v5, "network-discard-cancelled"

    invoke-virtual {v1, v5}, Lcom/mbridge/msdk/e/a/m;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mbridge/msdk/e/a/m;->u()V
    :try_end_25
    .catch Lcom/mbridge/msdk/e/a/u; {:try_start_17 .. :try_end_25} :catch_95
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_25} :catch_70
    .catchall {:try_start_17 .. :try_end_25} :catchall_6e

    :goto_25
    :try_start_25
    invoke-virtual {v1, v4}, Lcom/mbridge/msdk/e/a/m;->a(I)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_28} :catch_ac

    goto :goto_5

    :cond_29
    :try_start_29
    invoke-virtual {v1}, Lcom/mbridge/msdk/e/a/m;->g()I

    move-result v5

    invoke-static {v5}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    iget-object v5, p0, Lcom/mbridge/msdk/e/a/i;->b:Lcom/mbridge/msdk/e/a/h;

    invoke-interface {v5, v1}, Lcom/mbridge/msdk/e/a/h;->a(Lcom/mbridge/msdk/e/a/m;)Lcom/mbridge/msdk/e/a/k;

    move-result-object v5

    iget-boolean v6, v5, Lcom/mbridge/msdk/e/a/k;->e:Z

    if-eqz v6, :cond_49

    invoke-virtual {v1}, Lcom/mbridge/msdk/e/a/m;->t()Z

    move-result v6

    if-eqz v6, :cond_49

    const-string v5, "not-modified"

    invoke-virtual {v1, v5}, Lcom/mbridge/msdk/e/a/m;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mbridge/msdk/e/a/m;->u()V

    goto :goto_25

    :cond_49
    invoke-virtual {v1, v5}, Lcom/mbridge/msdk/e/a/m;->a(Lcom/mbridge/msdk/e/a/k;)Lcom/mbridge/msdk/e/a/o;

    move-result-object v5

    invoke-virtual {v1}, Lcom/mbridge/msdk/e/a/m;->o()Z

    move-result v6

    if-eqz v6, :cond_62

    iget-object v6, v5, Lcom/mbridge/msdk/e/a/o;->b:Lcom/mbridge/msdk/e/a/a$a;

    if-eqz v6, :cond_62

    iget-object v6, p0, Lcom/mbridge/msdk/e/a/i;->c:Lcom/mbridge/msdk/e/a/a;

    invoke-virtual {v1}, Lcom/mbridge/msdk/e/a/m;->i()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v5, Lcom/mbridge/msdk/e/a/o;->b:Lcom/mbridge/msdk/e/a/a$a;

    invoke-interface {v6, v7, v8}, Lcom/mbridge/msdk/e/a/a;->a(Ljava/lang/String;Lcom/mbridge/msdk/e/a/a$a;)V

    :cond_62
    invoke-virtual {v1}, Lcom/mbridge/msdk/e/a/m;->s()V

    iget-object v6, p0, Lcom/mbridge/msdk/e/a/i;->d:Lcom/mbridge/msdk/e/a/q;

    invoke-interface {v6, v1, v5}, Lcom/mbridge/msdk/e/a/q;->a(Lcom/mbridge/msdk/e/a/m;Lcom/mbridge/msdk/e/a/o;)V

    invoke-virtual {v1, v5}, Lcom/mbridge/msdk/e/a/m;->a(Lcom/mbridge/msdk/e/a/o;)V
    :try_end_6d
    .catch Lcom/mbridge/msdk/e/a/u; {:try_start_29 .. :try_end_6d} :catch_95
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_6d} :catch_70
    .catchall {:try_start_29 .. :try_end_6d} :catchall_6e

    goto :goto_25

    :catchall_6e
    move-exception v2

    goto :goto_a8

    :catch_70
    move-exception v5

    :try_start_71
    const-string v6, "Unhandled exception %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-static {v5, v6, v7}, Lcom/mbridge/msdk/e/a/v;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v6, Lcom/mbridge/msdk/e/a/u;

    invoke-direct {v6, v5}, Lcom/mbridge/msdk/e/a/u;-><init>(Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {v6, v7, v8}, Lcom/mbridge/msdk/e/a/u;->a(J)V

    iget-object v2, p0, Lcom/mbridge/msdk/e/a/i;->d:Lcom/mbridge/msdk/e/a/q;

    invoke-interface {v2, v1, v6}, Lcom/mbridge/msdk/e/a/q;->a(Lcom/mbridge/msdk/e/a/m;Lcom/mbridge/msdk/e/a/u;)V

    invoke-virtual {v1}, Lcom/mbridge/msdk/e/a/m;->u()V

    goto :goto_25

    :catch_95
    move-exception v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Lcom/mbridge/msdk/e/a/u;->a(J)V

    iget-object v2, p0, Lcom/mbridge/msdk/e/a/i;->d:Lcom/mbridge/msdk/e/a/q;

    invoke-interface {v2, v1, v5}, Lcom/mbridge/msdk/e/a/q;->a(Lcom/mbridge/msdk/e/a/m;Lcom/mbridge/msdk/e/a/u;)V

    invoke-virtual {v1}, Lcom/mbridge/msdk/e/a/m;->u()V
    :try_end_a6
    .catchall {:try_start_71 .. :try_end_a6} :catchall_6e

    goto/16 :goto_25

    :goto_a8
    :try_start_a8
    invoke-virtual {v1, v4}, Lcom/mbridge/msdk/e/a/m;->a(I)V

    throw v2
    :try_end_ac
    .catch Ljava/lang/InterruptedException; {:try_start_a8 .. :try_end_ac} :catch_ac

    :catch_ac
    nop

    iget-boolean v1, p0, Lcom/mbridge/msdk/e/a/i;->e:Z

    if-eqz v1, :cond_b9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_b9
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/e/a/v;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5
.end method
