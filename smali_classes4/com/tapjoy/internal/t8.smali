###### Class com.tapjoy.internal.t8 (com.tapjoy.internal.t8)
.class public final Lcom/tapjoy/internal/t8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tapjoy/internal/e9;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/e9;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/internal/t8;->a:Lcom/tapjoy/internal/e9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/tapjoy/internal/t8;->a:Lcom/tapjoy/internal/e9;

    iget-object v0, v0, Lcom/tapjoy/internal/e9;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/tapjoy/internal/t8;->a:Lcom/tapjoy/internal/e9;

    iget-object v0, v0, Lcom/tapjoy/internal/e9;->a:Lcom/tapjoy/internal/i5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/tapjoy/internal/i5;->c:J

    sub-long/2addr v1, v3

    iget-object v3, v0, Lcom/tapjoy/internal/i5;->a:Lcom/tapjoy/internal/d3;

    monitor-enter v3

    :try_start_1d
    iget-object v4, v3, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v4, v4, Lcom/tapjoy/internal/h2;->i:Lcom/tapjoy/internal/b3;

    invoke-virtual {v4}, Lcom/tapjoy/internal/b3;->c()J

    move-result-wide v4

    add-long/2addr v4, v1

    iget-object v6, v3, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v6, v6, Lcom/tapjoy/internal/h2;->i:Lcom/tapjoy/internal/b3;

    invoke-virtual {v6, v4, v5}, Lcom/tapjoy/internal/b3;->b(J)V

    iget-object v6, v3, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v6, Lcom/tapjoy/internal/s5;->i:Ljava/lang/Long;

    monitor-exit v3
    :try_end_36
    .catchall {:try_start_1d .. :try_end_36} :catchall_56

    sget-object v3, Lcom/tapjoy/internal/r1;->a:Lcom/tapjoy/internal/r1;

    const-string v4, "session"

    invoke-virtual {v0, v3, v4}, Lcom/tapjoy/internal/i5;->a(Lcom/tapjoy/internal/r1;Ljava/lang/String;)Lcom/tapjoy/internal/d4;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/i5;->b(Lcom/tapjoy/internal/d4;)V

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/tapjoy/internal/i5;->c:J

    iget-object v0, v0, Lcom/tapjoy/internal/i5;->a:Lcom/tapjoy/internal/d3;

    iget-object v3, v3, Lcom/tapjoy/internal/d4;->e:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/tapjoy/internal/d3;->d(JJ)V

    sget-object v0, Lcom/tapjoy/internal/a3;->d:Lcom/tapjoy/internal/n2;

    invoke-virtual {v0}, Lcom/tapjoy/internal/n2;->notifyObservers()V

    goto :goto_59

    :catchall_56
    move-exception v0

    :try_start_57
    monitor-exit v3
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v0

    :cond_59
    :goto_59
    return-void
.end method
