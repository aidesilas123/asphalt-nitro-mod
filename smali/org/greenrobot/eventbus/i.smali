###### Class org.greenrobot.eventbus.i (org.greenrobot.eventbus.i)
.class final Lorg/greenrobot/eventbus/i;
.super Ljava/lang/Object;
.source "PendingPostQueue.java"


# instance fields
.field private a:Lorg/greenrobot/eventbus/h;

.field private b:Lorg/greenrobot/eventbus/h;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized a(Lorg/greenrobot/eventbus/h;)V
    .registers 3

    monitor-enter p0

    if-eqz p1, :cond_23

    :try_start_3
    iget-object v0, p0, Lorg/greenrobot/eventbus/i;->b:Lorg/greenrobot/eventbus/h;

    if-eqz v0, :cond_c

    iput-object p1, v0, Lorg/greenrobot/eventbus/h;->d:Lorg/greenrobot/eventbus/h;

    iput-object p1, p0, Lorg/greenrobot/eventbus/i;->b:Lorg/greenrobot/eventbus/h;

    goto :goto_14

    :cond_c
    iget-object v0, p0, Lorg/greenrobot/eventbus/i;->a:Lorg/greenrobot/eventbus/h;

    if-nez v0, :cond_19

    iput-object p1, p0, Lorg/greenrobot/eventbus/i;->b:Lorg/greenrobot/eventbus/h;

    iput-object p1, p0, Lorg/greenrobot/eventbus/i;->a:Lorg/greenrobot/eventbus/h;

    :goto_14
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_21

    monitor-exit p0

    return-void

    :cond_19
    :try_start_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Head present, but no tail"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_21
    move-exception p1

    goto :goto_2b

    :cond_23
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be enqueued"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2b
    .catchall {:try_start_19 .. :try_end_2b} :catchall_21

    :goto_2b
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized b()Lorg/greenrobot/eventbus/h;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/greenrobot/eventbus/i;->a:Lorg/greenrobot/eventbus/h;

    if-eqz v0, :cond_e

    iget-object v1, v0, Lorg/greenrobot/eventbus/h;->d:Lorg/greenrobot/eventbus/h;

    iput-object v1, p0, Lorg/greenrobot/eventbus/i;->a:Lorg/greenrobot/eventbus/h;

    if-nez v1, :cond_e

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/greenrobot/eventbus/i;->b:Lorg/greenrobot/eventbus/h;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c(I)Lorg/greenrobot/eventbus/h;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/greenrobot/eventbus/i;->a:Lorg/greenrobot/eventbus/h;

    if-nez v0, :cond_9

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    :cond_9
    invoke-virtual {p0}, Lorg/greenrobot/eventbus/i;->b()Lorg/greenrobot/eventbus/h;

    move-result-object p1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object p1

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method
