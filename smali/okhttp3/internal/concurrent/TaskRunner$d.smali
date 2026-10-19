###### Class okhttp3.internal.concurrent.TaskRunner.d (okhttp3.internal.concurrent.TaskRunner$d)
.class public final Lokhttp3/internal/concurrent/TaskRunner$d;
.super Ljava/lang/Object;
.source "TaskRunner.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/concurrent/TaskRunner;-><init>(Lokhttp3/internal/concurrent/TaskRunner$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "okhttp3/internal/concurrent/TaskRunner$runnable$1",
        "Ljava/lang/Runnable;",
        "run",
        "",
        "okhttp"
    }
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/internal/concurrent/TaskRunner;


# direct methods
.method constructor <init>(Lokhttp3/internal/concurrent/TaskRunner;)V
    .registers 2

    iput-object p1, p0, Lokhttp3/internal/concurrent/TaskRunner$d;->a:Lokhttp3/internal/concurrent/TaskRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    :cond_0
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/concurrent/TaskRunner$d;->a:Lokhttp3/internal/concurrent/TaskRunner;

    monitor-enter v0

    :try_start_3
    invoke-virtual {v0}, Lokhttp3/internal/concurrent/TaskRunner;->b()Lokhttp3/internal/concurrent/a;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_7f

    monitor-exit v0

    if-nez v1, :cond_b

    return-void

    :cond_b
    invoke-virtual {v1}, Lokhttp3/internal/concurrent/a;->d()Lokhttp3/internal/concurrent/TaskQueue;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lokhttp3/internal/concurrent/TaskRunner$d;->a:Lokhttp3/internal/concurrent/TaskRunner;

    const-wide/16 v3, -0x1

    sget-object v5, Lokhttp3/internal/concurrent/TaskRunner;->a:Lokhttp3/internal/concurrent/TaskRunner$b;

    invoke-virtual {v5}, Lokhttp3/internal/concurrent/TaskRunner$b;->a()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-virtual {v0}, Lokhttp3/internal/concurrent/TaskQueue;->h()Lokhttp3/internal/concurrent/TaskRunner;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/internal/concurrent/TaskRunner;->e()Lokhttp3/internal/concurrent/TaskRunner$a;

    move-result-object v3

    invoke-interface {v3}, Lokhttp3/internal/concurrent/TaskRunner$a;->nanoTime()J

    move-result-wide v3

    const-string v6, "starting"

    invoke-static {v1, v0, v6}, Lokhttp3/internal/concurrent/TaskLoggerKt;->access$log(Lokhttp3/internal/concurrent/a;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V

    :cond_35
    :try_start_35
    invoke-static {v2, v1}, Lokhttp3/internal/concurrent/TaskRunner;->access$runTask(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/concurrent/a;)V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_59

    :try_start_38
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;
    :try_end_3a
    .catchall {:try_start_38 .. :try_end_3a} :catchall_57

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lokhttp3/internal/concurrent/TaskQueue;->h()Lokhttp3/internal/concurrent/TaskRunner;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/internal/concurrent/TaskRunner;->e()Lokhttp3/internal/concurrent/TaskRunner$a;

    move-result-object v2

    invoke-interface {v2}, Lokhttp3/internal/concurrent/TaskRunner$a;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-string v2, "finished run in "

    invoke-static {v5, v6}, Lokhttp3/internal/concurrent/TaskLoggerKt;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lokhttp3/internal/concurrent/TaskLoggerKt;->access$log(Lokhttp3/internal/concurrent/a;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V

    goto :goto_0

    :catchall_57
    move-exception v2

    goto :goto_62

    :catchall_59
    move-exception v6

    :try_start_5a
    invoke-virtual {v2}, Lokhttp3/internal/concurrent/TaskRunner;->e()Lokhttp3/internal/concurrent/TaskRunner$a;

    move-result-object v2

    invoke-interface {v2, p0}, Lokhttp3/internal/concurrent/TaskRunner$a;->execute(Ljava/lang/Runnable;)V

    throw v6
    :try_end_62
    .catchall {:try_start_5a .. :try_end_62} :catchall_57

    :goto_62
    if-eqz v5, :cond_7e

    invoke-virtual {v0}, Lokhttp3/internal/concurrent/TaskQueue;->h()Lokhttp3/internal/concurrent/TaskRunner;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/internal/concurrent/TaskRunner;->e()Lokhttp3/internal/concurrent/TaskRunner$a;

    move-result-object v5

    invoke-interface {v5}, Lokhttp3/internal/concurrent/TaskRunner$a;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-string v3, "failed a run in "

    invoke-static {v5, v6}, Lokhttp3/internal/concurrent/TaskLoggerKt;->formatDuration(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lokhttp3/internal/concurrent/TaskLoggerKt;->access$log(Lokhttp3/internal/concurrent/a;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V

    :cond_7e
    throw v2

    :catchall_7f
    move-exception v1

    monitor-exit v0

    throw v1
.end method
