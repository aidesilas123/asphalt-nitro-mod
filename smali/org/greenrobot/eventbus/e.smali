###### Class org.greenrobot.eventbus.e (org.greenrobot.eventbus.e)
.class public Lorg/greenrobot/eventbus/e;
.super Landroid/os/Handler;
.source "HandlerPoster.java"

# interfaces
.implements Lorg/greenrobot/eventbus/j;


# instance fields
.field private final a:Lorg/greenrobot/eventbus/i;

.field private final b:I

.field private final c:Lorg/greenrobot/eventbus/EventBus;

.field private d:Z


# direct methods
.method public constructor <init>(Lorg/greenrobot/eventbus/EventBus;Landroid/os/Looper;I)V
    .registers 4

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lorg/greenrobot/eventbus/e;->c:Lorg/greenrobot/eventbus/EventBus;

    iput p3, p0, Lorg/greenrobot/eventbus/e;->b:I

    new-instance p1, Lorg/greenrobot/eventbus/i;

    invoke-direct {p1}, Lorg/greenrobot/eventbus/i;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/eventbus/e;->a:Lorg/greenrobot/eventbus/i;

    return-void
.end method


# virtual methods
.method public a(Lorg/greenrobot/eventbus/o;Ljava/lang/Object;)V
    .registers 3

    invoke-static {p1, p2}, Lorg/greenrobot/eventbus/h;->a(Lorg/greenrobot/eventbus/o;Ljava/lang/Object;)Lorg/greenrobot/eventbus/h;

    move-result-object p1

    monitor-enter p0

    :try_start_5
    iget-object p2, p0, Lorg/greenrobot/eventbus/e;->a:Lorg/greenrobot/eventbus/i;

    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/i;->a(Lorg/greenrobot/eventbus/h;)V

    iget-boolean p1, p0, Lorg/greenrobot/eventbus/e;->d:Z

    if-nez p1, :cond_24

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/greenrobot/eventbus/e;->d:Z

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p1

    if-eqz p1, :cond_1c

    goto :goto_24

    :cond_1c
    new-instance p1, Lorg/greenrobot/eventbus/d;

    const-string p2, "Could not send handler message"

    invoke-direct {p1, p2}, Lorg/greenrobot/eventbus/d;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_24
    :goto_24
    monitor-exit p0

    return-void

    :catchall_26
    move-exception p1

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_26

    throw p1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    const/4 p1, 0x0

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    :cond_5
    iget-object v2, p0, Lorg/greenrobot/eventbus/e;->a:Lorg/greenrobot/eventbus/i;

    invoke-virtual {v2}, Lorg/greenrobot/eventbus/i;->b()Lorg/greenrobot/eventbus/h;

    move-result-object v2

    if-nez v2, :cond_21

    monitor-enter p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_48

    :try_start_e
    iget-object v2, p0, Lorg/greenrobot/eventbus/e;->a:Lorg/greenrobot/eventbus/i;

    invoke-virtual {v2}, Lorg/greenrobot/eventbus/i;->b()Lorg/greenrobot/eventbus/h;

    move-result-object v2

    if-nez v2, :cond_1c

    iput-boolean p1, p0, Lorg/greenrobot/eventbus/e;->d:Z

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_1e

    iput-boolean p1, p0, Lorg/greenrobot/eventbus/e;->d:Z

    return-void

    :cond_1c
    :try_start_1c
    monitor-exit p0

    goto :goto_21

    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_1e

    :try_start_20
    throw v0

    :cond_21
    :goto_21
    iget-object v3, p0, Lorg/greenrobot/eventbus/e;->c:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v3, v2}, Lorg/greenrobot/eventbus/EventBus;->f(Lorg/greenrobot/eventbus/h;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget v4, p0, Lorg/greenrobot/eventbus/e;->b:I

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_5

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0
    :try_end_3a
    .catchall {:try_start_20 .. :try_end_3a} :catchall_48

    if-eqz v0, :cond_40

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/greenrobot/eventbus/e;->d:Z

    return-void

    :cond_40
    :try_start_40
    new-instance v0, Lorg/greenrobot/eventbus/d;

    const-string v1, "Could not send handler message"

    invoke-direct {v0, v1}, Lorg/greenrobot/eventbus/d;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_48
    .catchall {:try_start_40 .. :try_end_48} :catchall_48

    :catchall_48
    move-exception v0

    iput-boolean p1, p0, Lorg/greenrobot/eventbus/e;->d:Z

    throw v0
.end method
