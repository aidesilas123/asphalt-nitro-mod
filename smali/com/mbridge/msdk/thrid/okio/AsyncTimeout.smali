###### Class com.mbridge.msdk.thrid.okio.AsyncTimeout (com.mbridge.msdk.thrid.okio.AsyncTimeout)
.class public Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;
.super Lcom/mbridge/msdk/thrid/okio/Timeout;
.source "AsyncTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/thrid/okio/AsyncTimeout$Watchdog;
    }
.end annotation


# static fields
.field private static final IDLE_TIMEOUT_MILLIS:J

.field private static final IDLE_TIMEOUT_NANOS:J

.field private static final TIMEOUT_WRITE_SIZE:I = 0x10000

.field static head:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private inQueue:Z

.field private next:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private timeoutAt:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->IDLE_TIMEOUT_NANOS:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/mbridge/msdk/thrid/okio/Timeout;-><init>()V

    return-void
.end method

.method static awaitTimeout()Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;
    .registers 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-class v0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    sget-object v1, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->head:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    iget-object v1, v1, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->next:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    const/4 v2, 0x0

    if-nez v1, :cond_26

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sget-wide v5, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V

    sget-object v0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->head:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->next:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    if-nez v0, :cond_25

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v3

    sget-wide v3, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->IDLE_TIMEOUT_NANOS:J

    cmp-long v5, v0, v3

    if-ltz v5, :cond_25

    sget-object v2, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->head:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    :cond_25
    return-object v2

    :cond_26
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_41

    const-wide/32 v5, 0xf4240

    div-long v7, v3, v5

    mul-long v5, v5, v7

    sub-long/2addr v3, v5

    long-to-int v1, v3

    invoke-virtual {v0, v7, v8, v1}, Ljava/lang/Object;->wait(JI)V

    return-object v2

    :cond_41
    sget-object v0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->head:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    iget-object v3, v1, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->next:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    iput-object v3, v0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->next:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    iput-object v2, v1, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->next:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    return-object v1
.end method

.method private static declared-synchronized cancelScheduledTimeout(Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;)Z
    .registers 4

    const-class v0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->head:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    :goto_5
    if-eqz v1, :cond_17

    iget-object v2, v1, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->next:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    if-ne v2, p0, :cond_15

    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->next:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    iput-object v2, v1, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->next:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->next:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1a

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :cond_15
    move-object v1, v2

    goto :goto_5

    :cond_17
    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_1a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private remainingNanos(J)J
    .registers 5

    iget-wide v0, p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->timeoutAt:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method private static declared-synchronized scheduleTimeout(Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;JZ)V
    .registers 10

    const-class v0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->head:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    if-nez v1, :cond_16

    new-instance v1, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    invoke-direct {v1}, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;-><init>()V

    sput-object v1, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->head:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    new-instance v1, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout$Watchdog;

    invoke-direct {v1}, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout$Watchdog;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_16
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-eqz v5, :cond_2f

    if-eqz p3, :cond_2f

    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okio/Timeout;->deadlineNanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    add-long/2addr p1, v1

    iput-wide p1, p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->timeoutAt:J

    goto :goto_3d

    :cond_2f
    if-eqz v5, :cond_35

    add-long/2addr p1, v1

    iput-wide p1, p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->timeoutAt:J

    goto :goto_3d

    :cond_35
    if-eqz p3, :cond_62

    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okio/Timeout;->deadlineNanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->timeoutAt:J

    :goto_3d
    invoke-direct {p0, v1, v2}, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide p1

    sget-object p3, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->head:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    :goto_43
    iget-object v3, p3, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->next:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    if-eqz v3, :cond_53

    invoke-direct {v3, v1, v2}, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v3

    cmp-long v5, p1, v3

    if-gez v5, :cond_50

    goto :goto_53

    :cond_50
    iget-object p3, p3, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->next:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    goto :goto_43

    :cond_53
    :goto_53
    iget-object p1, p3, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->next:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->next:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    iput-object p0, p3, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->next:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    sget-object p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->head:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    if-ne p3, p0, :cond_60

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_60
    .catchall {:try_start_3 .. :try_end_60} :catchall_68

    :cond_60
    monitor-exit v0

    return-void

    :cond_62
    :try_start_62
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
    :try_end_68
    .catchall {:try_start_62 .. :try_end_68} :catchall_68

    :catchall_68
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final enter()V
    .registers 7

    iget-boolean v0, p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->inQueue:Z

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okio/Timeout;->timeoutNanos()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okio/Timeout;->hasDeadline()Z

    move-result v2

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_15

    if-nez v2, :cond_15

    return-void

    :cond_15
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->inQueue:Z

    invoke-static {p0, v0, v1, v2}, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->scheduleTimeout(Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;JZ)V

    return-void

    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unbalanced enter/exit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final exit(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->exit()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p1

    :cond_7
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method final exit(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->exit()Z

    move-result v0

    if-eqz v0, :cond_f

    if-nez p1, :cond_9

    goto :goto_f

    :cond_9
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_f
    :goto_f
    return-void
.end method

.method public final exit()Z
    .registers 3

    iget-boolean v0, p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->inQueue:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iput-boolean v1, p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->inQueue:Z

    invoke-static {p0}, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->cancelScheduledTimeout(Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;)Z

    move-result v0

    return v0
.end method

.method protected newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4
    .param p1    # Ljava/io/IOException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_c

    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_c
    return-object v0
.end method

.method public final sink(Lcom/mbridge/msdk/thrid/okio/Sink;)Lcom/mbridge/msdk/thrid/okio/Sink;
    .registers 3

    new-instance v0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout$1;

    invoke-direct {v0, p0, p1}, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout$1;-><init>(Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;Lcom/mbridge/msdk/thrid/okio/Sink;)V

    return-object v0
.end method

.method public final source(Lcom/mbridge/msdk/thrid/okio/Source;)Lcom/mbridge/msdk/thrid/okio/Source;
    .registers 3

    new-instance v0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout$2;

    invoke-direct {v0, p0, p1}, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout$2;-><init>(Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;Lcom/mbridge/msdk/thrid/okio/Source;)V

    return-object v0
.end method

.method protected timedOut()V
    .registers 1

    return-void
.end method

###### Class com.mbridge.msdk.thrid.okio.AsyncTimeout.AnonymousClass1 (com.mbridge.msdk.thrid.okio.AsyncTimeout$1)
.class Lcom/mbridge/msdk/thrid/okio/AsyncTimeout$1;
.super Ljava/lang/Object;
.source "AsyncTimeout.java"

# interfaces
.implements Lcom/mbridge/msdk/thrid/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->sink(Lcom/mbridge/msdk/thrid/okio/Sink;)Lcom/mbridge/msdk/thrid/okio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

.field final synthetic val$sink:Lcom/mbridge/msdk/thrid/okio/Sink;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;Lcom/mbridge/msdk/thrid/okio/Sink;)V
    .registers 3

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout$1;->this$0:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    iput-object p2, p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout$1;->val$sink:Lcom/mbridge/msdk/thrid/okio/Sink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout$1;->this$0:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->enter()V

    :try_start_5
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout$1;->val$sink:Lcom/mbridge/msdk/thrid/okio/Sink;

    invoke-interface {v0}, Lcom/mbridge/msdk/thrid/okio/Sink;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_13
    .catchall {:try_start_5 .. :try_end_a} :catchall_11

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout$1;->this$0:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->exit(Z)V

    return-void

    :catchall_11
    move-exception v0

    goto :goto_1b

    :catch_13
    move-exception v0

    :try_start_14
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout$1;->this$0:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_11

    :goto_1b
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout$1;->this$0:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->exit(Z)V

    throw v0
.end method

.method public flush()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout$1;->this$0:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->enter()V

    :try_start_5
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout$1;->val$sink:Lcom/mbridge/msdk/thrid/okio/Sink;

    invoke-interface {v0}, Lcom/mbridge/msdk/thrid/okio/Sink;->flush()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_13
    .catchall {:try_start_5 .. :try_end_a} :catchall_11

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout$1;->this$0:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->exit(Z)V

    return-void

    :catchall_11
    move-exception v0

    goto :goto_1b

    :catch_13
    move-exception v0

    :try_start_14
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout$1;->this$0:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_11

    :goto_1b
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout$1;->this$0:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->exit(Z)V

    throw v0
.end method

.method public timeout()Lcom/mbridge/msdk/thrid/okio/Timeout;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout$1;->this$0:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout$1;->val$sink:Lcom/mbridge/msdk/thrid/okio/Sink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/mbridge/msdk/thrid/okio/Buffer;J)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p1, Lcom/mbridge/msdk/thrid/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/mbridge/msdk/thrid/okio/Util;->checkOffsetAndCount(JJJ)V

    :goto_8
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_4a

    iget-object v2, p1, Lcom/mbridge/msdk/thrid/okio/Buffer;->head:Lcom/mbridge/msdk/thrid/okio/Segment;

    :goto_10
    const-wide/32 v3, 0x10000

    cmp-long v5, v0, v3

    if-gez v5, :cond_27

    iget v3, v2, Lcom/mbridge/msdk/thrid/okio/Segment;->limit:I

    iget v4, v2, Lcom/mbridge/msdk/thrid/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v0, v3

    cmp-long v3, v0, p2

    if-ltz v3, :cond_24

    move-wide v0, p2

    goto :goto_27

    :cond_24
    iget-object v2, v2, Lcom/mbridge/msdk/thrid/okio/Segment;->next:Lcom/mbridge/msdk/thrid/okio/Segment;

    goto :goto_10

    :cond_27
    :goto_27
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout$1;->this$0:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    invoke-virtual {v3}, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->enter()V

    :try_start_2d
    iget-object v3, p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout$1;->val$sink:Lcom/mbridge/msdk/thrid/okio/Sink;

    invoke-interface {v3, p1, v0, v1}, Lcom/mbridge/msdk/thrid/okio/Sink;->write(Lcom/mbridge/msdk/thrid/okio/Buffer;J)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_32} :catch_3c
    .catchall {:try_start_2d .. :try_end_32} :catchall_3a

    sub-long/2addr p2, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout$1;->this$0:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->exit(Z)V

    goto :goto_8

    :catchall_3a
    move-exception p1

    goto :goto_44

    :catch_3c
    move-exception p1

    :try_start_3d
    iget-object p2, p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout$1;->this$0:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_3a

    :goto_44
    iget-object p2, p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout$1;->this$0:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    invoke-virtual {p2, v2}, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->exit(Z)V

    throw p1

    :cond_4a
    return-void
.end method

###### Class com.mbridge.msdk.thrid.okio.AsyncTimeout.AnonymousClass2 (com.mbridge.msdk.thrid.okio.AsyncTimeout$2)
.class Lcom/mbridge/msdk/thrid/okio/AsyncTimeout$2;
.super Ljava/lang/Object;
.source "AsyncTimeout.java"

# interfaces
.implements Lcom/mbridge/msdk/thrid/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->source(Lcom/mbridge/msdk/thrid/okio/Source;)Lcom/mbridge/msdk/thrid/okio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

.field final synthetic val$source:Lcom/mbridge/msdk/thrid/okio/Source;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;Lcom/mbridge/msdk/thrid/okio/Source;)V
    .registers 3

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout$2;->this$0:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    iput-object p2, p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout$2;->val$source:Lcom/mbridge/msdk/thrid/okio/Source;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout$2;->val$source:Lcom/mbridge/msdk/thrid/okio/Source;

    invoke-interface {v0}, Lcom/mbridge/msdk/thrid/okio/Source;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_e
    .catchall {:try_start_0 .. :try_end_5} :catchall_c

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout$2;->this$0:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->exit(Z)V

    return-void

    :catchall_c
    move-exception v0

    goto :goto_16

    :catch_e
    move-exception v0

    :try_start_f
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout$2;->this$0:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_c

    :goto_16
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout$2;->this$0:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->exit(Z)V

    throw v0
.end method

.method public read(Lcom/mbridge/msdk/thrid/okio/Buffer;J)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout$2;->this$0:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->enter()V

    :try_start_5
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout$2;->val$source:Lcom/mbridge/msdk/thrid/okio/Source;

    invoke-interface {v0, p1, p2, p3}, Lcom/mbridge/msdk/thrid/okio/Source;->read(Lcom/mbridge/msdk/thrid/okio/Buffer;J)J

    move-result-wide p1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_14
    .catchall {:try_start_5 .. :try_end_b} :catchall_12

    const/4 p3, 0x1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout$2;->this$0:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    invoke-virtual {v0, p3}, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->exit(Z)V

    return-wide p1

    :catchall_12
    move-exception p1

    goto :goto_1c

    :catch_14
    move-exception p1

    :try_start_15
    iget-object p2, p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout$2;->this$0:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_12

    :goto_1c
    iget-object p2, p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout$2;->this$0:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->exit(Z)V

    throw p1
.end method

.method public timeout()Lcom/mbridge/msdk/thrid/okio/Timeout;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout$2;->this$0:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout$2;->val$source:Lcom/mbridge/msdk/thrid/okio/Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.mbridge.msdk.thrid.okio.AsyncTimeout.Watchdog (com.mbridge.msdk.thrid.okio.AsyncTimeout$Watchdog)
.class final Lcom/mbridge/msdk/thrid/okio/AsyncTimeout$Watchdog;
.super Ljava/lang/Thread;
.source "AsyncTimeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Watchdog"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    const-string v0, "Okio Watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :catch_0
    :goto_0
    :try_start_0
    const-class v0, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_0

    :try_start_3
    invoke-static {}, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->awaitTimeout()Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    move-result-object v1

    if-nez v1, :cond_b

    monitor-exit v0

    goto :goto_0

    :cond_b
    sget-object v2, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->head:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    if-ne v1, v2, :cond_14

    const/4 v1, 0x0

    sput-object v1, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->head:Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;

    monitor-exit v0

    return-void

    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_19

    :try_start_15
    invoke-virtual {v1}, Lcom/mbridge/msdk/thrid/okio/AsyncTimeout;->timedOut()V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_0

    goto :goto_0

    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    :try_start_1b
    throw v1
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1c} :catch_0
.end method
