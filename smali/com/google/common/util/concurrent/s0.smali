###### Class com.google.common.util.concurrent.s0 (com.google.common.util.concurrent.s0)
.class final Lcom/google/common/util/concurrent/s0;
.super Lcom/google/common/util/concurrent/FluentFuture$a;
.source "TimeoutFuture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/s0$c;,
        Lcom/google/common/util/concurrent/s0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/FluentFuture$a<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private h:Lcom/google/common/util/concurrent/h0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/h0<",
            "TV;>;"
        }
    .end annotation
.end field

.field private i:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/h0;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/h0<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/util/concurrent/FluentFuture$a;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/h0;

    iput-object p1, p0, Lcom/google/common/util/concurrent/s0;->h:Lcom/google/common/util/concurrent/h0;

    return-void
.end method

.method static synthetic F(Lcom/google/common/util/concurrent/s0;)Lcom/google/common/util/concurrent/h0;
    .registers 1

    iget-object p0, p0, Lcom/google/common/util/concurrent/s0;->h:Lcom/google/common/util/concurrent/h0;

    return-object p0
.end method

.method static synthetic G(Lcom/google/common/util/concurrent/s0;)Ljava/util/concurrent/ScheduledFuture;
    .registers 1

    iget-object p0, p0, Lcom/google/common/util/concurrent/s0;->i:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method static synthetic H(Lcom/google/common/util/concurrent/s0;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .registers 2

    iput-object p1, p0, Lcom/google/common/util/concurrent/s0;->i:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static I(Lcom/google/common/util/concurrent/h0;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/h0;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/h0<",
            "TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/google/common/util/concurrent/h0<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/s0;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/s0;-><init>(Lcom/google/common/util/concurrent/h0;)V

    new-instance v1, Lcom/google/common/util/concurrent/s0$b;

    invoke-direct {v1, v0}, Lcom/google/common/util/concurrent/s0$b;-><init>(Lcom/google/common/util/concurrent/s0;)V

    invoke-interface {p4, v1, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, v0, Lcom/google/common/util/concurrent/s0;->i:Ljava/util/concurrent/ScheduledFuture;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Lcom/google/common/util/concurrent/h0;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method protected m()V
    .registers 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/s0;->h:Lcom/google/common/util/concurrent/h0;

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/m;->x(Ljava/util/concurrent/Future;)V

    iget-object v0, p0, Lcom/google/common/util/concurrent/s0;->i:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/s0;->h:Lcom/google/common/util/concurrent/h0;

    iput-object v0, p0, Lcom/google/common/util/concurrent/s0;->i:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method protected y()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/google/common/util/concurrent/s0;->h:Lcom/google/common/util/concurrent/h0;

    iget-object v1, p0, Lcom/google/common/util/concurrent/s0;->i:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_58

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xe

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "inputFuture=["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_57

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_57

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", remaining delay=["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_57
    return-object v0

    :cond_58
    const/4 v0, 0x0

    return-object v0
.end method

###### Class com.google.common.util.concurrent.s0.a (com.google.common.util.concurrent.s0$a)
.class synthetic Lcom/google/common/util/concurrent/s0$a;
.super Ljava/lang/Object;
.source "TimeoutFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.common.util.concurrent.s0.b (com.google.common.util.concurrent.s0$b)
.class final Lcom/google/common/util/concurrent/s0$b;
.super Ljava/lang/Object;
.source "TimeoutFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field a:Lcom/google/common/util/concurrent/s0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/s0<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/s0;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/s0<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/s0$b;->a:Lcom/google/common/util/concurrent/s0;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    iget-object v0, p0, Lcom/google/common/util/concurrent/s0$b;->a:Lcom/google/common/util/concurrent/s0;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {v0}, Lcom/google/common/util/concurrent/s0;->F(Lcom/google/common/util/concurrent/s0;)Lcom/google/common/util/concurrent/h0;

    move-result-object v1

    if-nez v1, :cond_c

    return-void

    :cond_c
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/common/util/concurrent/s0$b;->a:Lcom/google/common/util/concurrent/s0;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/m;->D(Lcom/google/common/util/concurrent/h0;)Z

    goto :goto_87

    :cond_19
    const/4 v3, 0x1

    :try_start_1a
    invoke-static {v0}, Lcom/google/common/util/concurrent/s0;->G(Lcom/google/common/util/concurrent/s0;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    invoke-static {v0, v2}, Lcom/google/common/util/concurrent/s0;->H(Lcom/google/common/util/concurrent/s0;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    const-string v5, "Timed out"
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_92

    if-eqz v4, :cond_55

    :try_start_25
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v6}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0xa

    cmp-long v4, v6, v8

    if-lez v4, :cond_55

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x42

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (timeout delayed by "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms after scheduled time)"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    :cond_55
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_7c
    .catchall {:try_start_25 .. :try_end_7c} :catchall_88

    :try_start_7c
    new-instance v5, Lcom/google/common/util/concurrent/s0$c;

    invoke-direct {v5, v4, v2}, Lcom/google/common/util/concurrent/s0$c;-><init>(Ljava/lang/String;Lcom/google/common/util/concurrent/s0$a;)V

    invoke-virtual {v0, v5}, Lcom/google/common/util/concurrent/m;->C(Ljava/lang/Throwable;)Z
    :try_end_84
    .catchall {:try_start_7c .. :try_end_84} :catchall_92

    invoke-interface {v1, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :goto_87
    return-void

    :catchall_88
    move-exception v4

    :try_start_89
    new-instance v6, Lcom/google/common/util/concurrent/s0$c;

    invoke-direct {v6, v5, v2}, Lcom/google/common/util/concurrent/s0$c;-><init>(Ljava/lang/String;Lcom/google/common/util/concurrent/s0$a;)V

    invoke-virtual {v0, v6}, Lcom/google/common/util/concurrent/m;->C(Ljava/lang/Throwable;)Z

    throw v4
    :try_end_92
    .catchall {:try_start_89 .. :try_end_92} :catchall_92

    :catchall_92
    move-exception v0

    invoke-interface {v1, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    throw v0
.end method

###### Class com.google.common.util.concurrent.s0.c (com.google.common.util.concurrent.s0$c)
.class final Lcom/google/common/util/concurrent/s0$c;
.super Ljava/util/concurrent/TimeoutException;
.source "TimeoutFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/common/util/concurrent/s0$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/s0$c;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized fillInStackTrace()Ljava/lang/Throwable;
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    new-array v0, v0, [Ljava/lang/StackTraceElement;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/TimeoutException;->setStackTrace([Ljava/lang/StackTraceElement;)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
