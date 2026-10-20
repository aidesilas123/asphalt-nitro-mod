###### Class com.mbridge.msdk.dycreator.bus.BackgroundPoster (com.mbridge.msdk.dycreator.bus.BackgroundPoster)
.class final Lcom/mbridge/msdk/dycreator/bus/BackgroundPoster;
.super Ljava/lang/Object;
.source "BackgroundPoster.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/mbridge/msdk/dycreator/bus/PendingPostQueue;

.field private volatile b:Z

.field private final c:Lcom/mbridge/msdk/dycreator/bus/EventBus;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/dycreator/bus/EventBus;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/bus/BackgroundPoster;->c:Lcom/mbridge/msdk/dycreator/bus/EventBus;

    new-instance p1, Lcom/mbridge/msdk/dycreator/bus/PendingPostQueue;

    invoke-direct {p1}, Lcom/mbridge/msdk/dycreator/bus/PendingPostQueue;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/bus/BackgroundPoster;->a:Lcom/mbridge/msdk/dycreator/bus/PendingPostQueue;

    return-void
.end method


# virtual methods
.method public final enqueue(Lcom/mbridge/msdk/dycreator/bus/Subscription;Ljava/lang/Object;)V
    .registers 3

    invoke-static {p1, p2}, Lcom/mbridge/msdk/dycreator/bus/PendingPost;->a(Lcom/mbridge/msdk/dycreator/bus/Subscription;Ljava/lang/Object;)Lcom/mbridge/msdk/dycreator/bus/PendingPost;

    move-result-object p1

    monitor-enter p0

    :try_start_5
    iget-object p2, p0, Lcom/mbridge/msdk/dycreator/bus/BackgroundPoster;->a:Lcom/mbridge/msdk/dycreator/bus/PendingPostQueue;

    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/dycreator/bus/PendingPostQueue;->a(Lcom/mbridge/msdk/dycreator/bus/PendingPost;)V

    iget-boolean p1, p0, Lcom/mbridge/msdk/dycreator/bus/BackgroundPoster;->b:Z

    if-nez p1, :cond_16

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mbridge/msdk/dycreator/bus/BackgroundPoster;->b:Z

    sget-object p1, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_16
    monitor-exit p0

    return-void

    :catchall_18
    move-exception p1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public final run()V
    .registers 6

    :goto_0
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/bus/BackgroundPoster;->a:Lcom/mbridge/msdk/dycreator/bus/PendingPostQueue;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/dycreator/bus/PendingPostQueue;->a(I)Lcom/mbridge/msdk/dycreator/bus/PendingPost;

    move-result-object v1

    if-nez v1, :cond_1f

    monitor-enter p0
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_c} :catch_27
    .catchall {:try_start_1 .. :try_end_c} :catchall_25

    :try_start_c
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/bus/BackgroundPoster;->a:Lcom/mbridge/msdk/dycreator/bus/PendingPostQueue;

    invoke-virtual {v1}, Lcom/mbridge/msdk/dycreator/bus/PendingPostQueue;->a()Lcom/mbridge/msdk/dycreator/bus/PendingPost;

    move-result-object v1

    if-nez v1, :cond_1a

    iput-boolean v0, p0, Lcom/mbridge/msdk/dycreator/bus/BackgroundPoster;->b:Z

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_1c

    iput-boolean v0, p0, Lcom/mbridge/msdk/dycreator/bus/BackgroundPoster;->b:Z

    return-void

    :cond_1a
    :try_start_1a
    monitor-exit p0

    goto :goto_1f

    :catchall_1c
    move-exception v1

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v1

    :cond_1f
    :goto_1f
    iget-object v2, p0, Lcom/mbridge/msdk/dycreator/bus/BackgroundPoster;->c:Lcom/mbridge/msdk/dycreator/bus/EventBus;

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Lcom/mbridge/msdk/dycreator/bus/PendingPost;)V
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_24} :catch_27
    .catchall {:try_start_1e .. :try_end_24} :catchall_25

    goto :goto_0

    :catchall_25
    move-exception v1

    goto :goto_49

    :catch_27
    move-exception v1

    :try_start_28
    const-string v2, "Event"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " was interruppted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_46
    .catchall {:try_start_28 .. :try_end_46} :catchall_25

    iput-boolean v0, p0, Lcom/mbridge/msdk/dycreator/bus/BackgroundPoster;->b:Z

    return-void

    :goto_49
    iput-boolean v0, p0, Lcom/mbridge/msdk/dycreator/bus/BackgroundPoster;->b:Z

    throw v1
.end method
