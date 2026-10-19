###### Class com.google.common.util.concurrent.Futures (com.google.common.util.concurrent.Futures)
.class public final Lcom/google/common/util/concurrent/Futures;
.super Lcom/google/common/util/concurrent/e0;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/Futures$d;,
        Lcom/google/common/util/concurrent/Futures$g;,
        Lcom/google/common/util/concurrent/Futures$f;,
        Lcom/google/common/util/concurrent/Futures$h;,
        Lcom/google/common/util/concurrent/Futures$e;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/util/concurrent/e0;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Iterable;)[Lcom/google/common/util/concurrent/h0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/common/util/concurrent/h0<",
            "+TT;>;>;)[",
            "Lcom/google/common/util/concurrent/h0<",
            "+TT;>;"
        }
    .end annotation

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_7

    check-cast p0, Ljava/util/Collection;

    goto :goto_b

    :cond_7
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    :goto_b
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/util/concurrent/h0;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/common/util/concurrent/h0;

    return-object p0
.end method

.method public static addCallback(Lcom/google/common/util/concurrent/h0;Lcom/google/common/util/concurrent/c0;Ljava/util/concurrent/Executor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/h0<",
            "TV;>;",
            "Lcom/google/common/util/concurrent/c0<",
            "-TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/util/concurrent/Futures$d;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/Futures$d;-><init>(Ljava/util/concurrent/Future;Lcom/google/common/util/concurrent/c0;)V

    invoke-interface {p0, v0, p2}, Lcom/google/common/util/concurrent/h0;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static allAsList(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/h0;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/common/util/concurrent/h0<",
            "+TV;>;>;)",
            "Lcom/google/common/util/concurrent/h0<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/t$a;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/t$a;-><init>(Lcom/google/common/collect/n1;Z)V

    return-object v0
.end method

.method public static varargs allAsList([Lcom/google/common/util/concurrent/h0;)Lcom/google/common/util/concurrent/h0;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/google/common/util/concurrent/h0<",
            "+TV;>;)",
            "Lcom/google/common/util/concurrent/h0<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/t$a;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/t$a;-><init>(Lcom/google/common/collect/n1;Z)V

    return-object v0
.end method

.method private static b(Ljava/lang/Throwable;)V
    .registers 2

    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_c

    new-instance v0, Lcom/google/common/util/concurrent/u;

    check-cast p0, Ljava/lang/Error;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/u;-><init>(Ljava/lang/Error;)V

    throw v0

    :cond_c
    new-instance v0, Lcom/google/common/util/concurrent/u0;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/u0;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static catching(Lcom/google/common/util/concurrent/h0;Ljava/lang/Class;Lcom/google/common/base/f;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/h0;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcom/google/common/util/concurrent/h0<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/common/base/f<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/h0<",
            "TV;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/l;->F(Lcom/google/common/util/concurrent/h0;Ljava/lang/Class;Lcom/google/common/base/f;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/h0;

    move-result-object p0

    return-object p0
.end method

.method public static catchingAsync(Lcom/google/common/util/concurrent/h0;Ljava/lang/Class;Lcom/google/common/util/concurrent/s;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/h0;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcom/google/common/util/concurrent/h0<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/common/util/concurrent/s<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/h0<",
            "TV;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/l;->G(Lcom/google/common/util/concurrent/h0;Ljava/lang/Class;Lcom/google/common/util/concurrent/s;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/h0;

    move-result-object p0

    return-object p0
.end method

.method public static getChecked(Ljava/util/concurrent/Future;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Ljava/lang/Class<",
            "TX;>;)TV;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/util/concurrent/FuturesGetChecked;->d(Ljava/util/concurrent/Future;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getChecked(Ljava/util/concurrent/Future;Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Ljava/lang/Class<",
            "TX;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/util/concurrent/FuturesGetChecked;->e(Ljava/util/concurrent/Future;Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const-string v1, "Future was expected to be done: %s"

    invoke-static {v0, v1, p0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getUnchecked(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_3
    invoke-static {p0}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0
    :try_end_7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_7} :catch_8

    return-object p0

    :catch_8
    move-exception p0

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->b(Ljava/lang/Throwable;)V

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public static immediateCancelledFuture()Lcom/google/common/util/concurrent/h0;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/util/concurrent/h0<",
            "TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/util/concurrent/f0$a;->h:Lcom/google/common/util/concurrent/f0$a;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Lcom/google/common/util/concurrent/f0$a;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/f0$a;-><init>()V

    return-object v0
.end method

.method public static immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/h0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/google/common/util/concurrent/h0<",
            "TV;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/util/concurrent/f0$b;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/f0$b;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/h0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)",
            "Lcom/google/common/util/concurrent/h0<",
            "TV;>;"
        }
    .end annotation

    if-nez p0, :cond_5

    sget-object p0, Lcom/google/common/util/concurrent/f0;->a:Lcom/google/common/util/concurrent/h0;

    return-object p0

    :cond_5
    new-instance v0, Lcom/google/common/util/concurrent/f0;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/f0;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static immediateVoidFuture()Lcom/google/common/util/concurrent/h0;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/h0<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/util/concurrent/f0;->a:Lcom/google/common/util/concurrent/h0;

    return-object v0
.end method

.method public static inCompletionOrder(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/common/util/concurrent/h0<",
            "+TT;>;>;)",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/util/concurrent/h0<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->a(Ljava/lang/Iterable;)[Lcom/google/common/util/concurrent/h0;

    move-result-object p0

    new-instance v0, Lcom/google/common/util/concurrent/Futures$g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/Futures$g;-><init>([Lcom/google/common/util/concurrent/h0;Lcom/google/common/util/concurrent/Futures$a;)V

    array-length v2, p0

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->builderWithExpectedSize(I)Lcom/google/common/collect/ImmutableList$a;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_11
    array-length v5, p0

    if-ge v4, v5, :cond_1f

    new-instance v5, Lcom/google/common/util/concurrent/Futures$f;

    invoke-direct {v5, v0, v1}, Lcom/google/common/util/concurrent/Futures$f;-><init>(Lcom/google/common/util/concurrent/Futures$g;Lcom/google/common/util/concurrent/Futures$a;)V

    invoke-virtual {v2, v5}, Lcom/google/common/collect/ImmutableList$a;->i(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_1f
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$a;->k()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    :goto_23
    array-length v2, p0

    if-ge v3, v2, :cond_37

    aget-object v2, p0, v3

    new-instance v4, Lcom/google/common/util/concurrent/Futures$c;

    invoke-direct {v4, v0, v1, v3}, Lcom/google/common/util/concurrent/Futures$c;-><init>(Lcom/google/common/util/concurrent/Futures$g;Lcom/google/common/collect/ImmutableList;I)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/google/common/util/concurrent/h0;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_37
    return-object v1
.end method

.method public static lazyTransform(Ljava/util/concurrent/Future;Lcom/google/common/base/f;)Ljava/util/concurrent/Future;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TI;>;",
            "Lcom/google/common/base/f<",
            "-TI;+TO;>;)",
            "Ljava/util/concurrent/Future<",
            "TO;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/util/concurrent/Futures$b;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/Futures$b;-><init>(Ljava/util/concurrent/Future;Lcom/google/common/base/f;)V

    return-object v0
.end method

.method public static nonCancellationPropagating(Lcom/google/common/util/concurrent/h0;)Lcom/google/common/util/concurrent/h0;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/h0<",
            "TV;>;)",
            "Lcom/google/common/util/concurrent/h0<",
            "TV;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    new-instance v0, Lcom/google/common/util/concurrent/Futures$h;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/Futures$h;-><init>(Lcom/google/common/util/concurrent/h0;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/google/common/util/concurrent/h0;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static scheduleAsync(Lcom/google/common/util/concurrent/r;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/h0;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/r<",
            "TO;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/google/common/util/concurrent/h0<",
            "TO;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/util/concurrent/t0;->F(Lcom/google/common/util/concurrent/r;)Lcom/google/common/util/concurrent/t0;

    move-result-object p0

    invoke-interface {p4, p0, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    new-instance p2, Lcom/google/common/util/concurrent/Futures$a;

    invoke-direct {p2, p1}, Lcom/google/common/util/concurrent/Futures$a;-><init>(Ljava/util/concurrent/Future;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/common/util/concurrent/FluentFuture$a;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p0
.end method

.method public static submit(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/h0;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/h0<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/t0;->G(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/t0;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public static submit(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/h0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/h0<",
            "TO;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/util/concurrent/t0;->H(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/t0;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public static submitAsync(Lcom/google/common/util/concurrent/r;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/h0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/r<",
            "TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/h0<",
            "TO;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/util/concurrent/t0;->F(Lcom/google/common/util/concurrent/r;)Lcom/google/common/util/concurrent/t0;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public static successfulAsList(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/h0;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/common/util/concurrent/h0<",
            "+TV;>;>;)",
            "Lcom/google/common/util/concurrent/h0<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/t$a;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/t$a;-><init>(Lcom/google/common/collect/n1;Z)V

    return-object v0
.end method

.method public static varargs successfulAsList([Lcom/google/common/util/concurrent/h0;)Lcom/google/common/util/concurrent/h0;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/google/common/util/concurrent/h0<",
            "+TV;>;)",
            "Lcom/google/common/util/concurrent/h0<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/t$a;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/t$a;-><init>(Lcom/google/common/collect/n1;Z)V

    return-object v0
.end method

.method public static transform(Lcom/google/common/util/concurrent/h0;Lcom/google/common/base/f;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/h0;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/h0<",
            "TI;>;",
            "Lcom/google/common/base/f<",
            "-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/h0<",
            "TO;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/common/util/concurrent/p;->F(Lcom/google/common/util/concurrent/h0;Lcom/google/common/base/f;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/h0;

    move-result-object p0

    return-object p0
.end method

.method public static transformAsync(Lcom/google/common/util/concurrent/h0;Lcom/google/common/util/concurrent/s;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/h0;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/h0<",
            "TI;>;",
            "Lcom/google/common/util/concurrent/s<",
            "-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/h0<",
            "TO;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/common/util/concurrent/p;->G(Lcom/google/common/util/concurrent/h0;Lcom/google/common/util/concurrent/s;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/h0;

    move-result-object p0

    return-object p0
.end method

.method public static whenAllComplete(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/Futures$e;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/common/util/concurrent/h0<",
            "+TV;>;>;)",
            "Lcom/google/common/util/concurrent/Futures$e<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/Futures$e;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/common/util/concurrent/Futures$e;-><init>(ZLcom/google/common/collect/ImmutableList;Lcom/google/common/util/concurrent/Futures$a;)V

    return-object v0
.end method

.method public static varargs whenAllComplete([Lcom/google/common/util/concurrent/h0;)Lcom/google/common/util/concurrent/Futures$e;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/google/common/util/concurrent/h0<",
            "+TV;>;)",
            "Lcom/google/common/util/concurrent/Futures$e<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/Futures$e;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/common/util/concurrent/Futures$e;-><init>(ZLcom/google/common/collect/ImmutableList;Lcom/google/common/util/concurrent/Futures$a;)V

    return-object v0
.end method

.method public static whenAllSucceed(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/Futures$e;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/common/util/concurrent/h0<",
            "+TV;>;>;)",
            "Lcom/google/common/util/concurrent/Futures$e<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/Futures$e;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/common/util/concurrent/Futures$e;-><init>(ZLcom/google/common/collect/ImmutableList;Lcom/google/common/util/concurrent/Futures$a;)V

    return-object v0
.end method

.method public static varargs whenAllSucceed([Lcom/google/common/util/concurrent/h0;)Lcom/google/common/util/concurrent/Futures$e;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/google/common/util/concurrent/h0<",
            "+TV;>;)",
            "Lcom/google/common/util/concurrent/Futures$e<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/Futures$e;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/common/util/concurrent/Futures$e;-><init>(ZLcom/google/common/collect/ImmutableList;Lcom/google/common/util/concurrent/Futures$a;)V

    return-object v0
.end method

.method public static withTimeout(Lcom/google/common/util/concurrent/h0;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/h0;
    .registers 6
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

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/util/concurrent/s0;->I(Lcom/google/common/util/concurrent/h0;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/h0;

    move-result-object p0

    return-object p0
.end method

###### Class com.google.common.util.concurrent.Futures.a (com.google.common.util.concurrent.Futures$a)
.class Lcom/google/common/util/concurrent/Futures$a;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/Futures;->scheduleAsync(Lcom/google/common/util/concurrent/r;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/Future;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Future;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$a;->a:Ljava/util/concurrent/Future;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$a;->a:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method

###### Class com.google.common.util.concurrent.Futures.b (com.google.common.util.concurrent.Futures$b)
.class Lcom/google/common/util/concurrent/Futures$b;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/Futures;->lazyTransform(Ljava/util/concurrent/Future;Lcom/google/common/base/f;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TO;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/Future;

.field final synthetic b:Lcom/google/common/base/f;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Future;Lcom/google/common/base/f;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$b;->a:Ljava/util/concurrent/Future;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$b;->b:Lcom/google/common/base/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)TO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$b;->b:Lcom/google/common/base/f;

    invoke-interface {v0, p1}, Lcom/google/common/base/f;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-object p1

    :catchall_7
    move-exception p1

    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public cancel(Z)Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$b;->a:Ljava/util/concurrent/Future;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$b;->a:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Futures$b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$b;->a:Ljava/util/concurrent/Future;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Futures$b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isCancelled()Z
    .registers 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$b;->a:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .registers 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$b;->a:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    return v0
.end method

###### Class com.google.common.util.concurrent.Futures.c (com.google.common.util.concurrent.Futures$c)
.class Lcom/google/common/util/concurrent/Futures$c;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/Futures;->inCompletionOrder(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/Futures$g;

.field final synthetic b:Lcom/google/common/collect/ImmutableList;

.field final synthetic c:I


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/Futures$g;Lcom/google/common/collect/ImmutableList;I)V
    .registers 4

    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$c;->a:Lcom/google/common/util/concurrent/Futures$g;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$c;->b:Lcom/google/common/collect/ImmutableList;

    iput p3, p0, Lcom/google/common/util/concurrent/Futures$c;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$c;->a:Lcom/google/common/util/concurrent/Futures$g;

    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$c;->b:Lcom/google/common/collect/ImmutableList;

    iget v2, p0, Lcom/google/common/util/concurrent/Futures$c;->c:I

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures$g;->a(Lcom/google/common/util/concurrent/Futures$g;Lcom/google/common/collect/ImmutableList;I)V

    return-void
.end method

###### Class com.google.common.util.concurrent.Futures.d (com.google.common.util.concurrent.Futures$d)
.class final Lcom/google/common/util/concurrent/Futures$d;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
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
.field final a:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation
.end field

.field final b:Lcom/google/common/util/concurrent/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/c0<",
            "-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Future;Lcom/google/common/util/concurrent/c0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Lcom/google/common/util/concurrent/c0<",
            "-TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$d;->a:Ljava/util/concurrent/Future;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$d;->b:Lcom/google/common/util/concurrent/c0;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$d;->a:Ljava/util/concurrent/Future;

    instance-of v1, v0, Lcom/google/common/util/concurrent/internal/a;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/google/common/util/concurrent/internal/a;

    invoke-static {v0}, Lcom/google/common/util/concurrent/internal/InternalFutures;->tryInternalFastPathGetFailure(Lcom/google/common/util/concurrent/internal/a;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$d;->b:Lcom/google/common/util/concurrent/c0;

    invoke-interface {v1, v0}, Lcom/google/common/util/concurrent/c0;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$d;->a:Ljava/util/concurrent/Future;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_14 .. :try_end_1a} :catch_29
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_1a} :catch_22
    .catch Ljava/lang/Error; {:try_start_14 .. :try_end_1a} :catch_20

    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$d;->b:Lcom/google/common/util/concurrent/c0;

    invoke-interface {v1, v0}, Lcom/google/common/util/concurrent/c0;->onSuccess(Ljava/lang/Object;)V

    return-void

    :catch_20
    move-exception v0

    goto :goto_23

    :catch_22
    move-exception v0

    :goto_23
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$d;->b:Lcom/google/common/util/concurrent/c0;

    invoke-interface {v1, v0}, Lcom/google/common/util/concurrent/c0;->a(Ljava/lang/Throwable;)V

    return-void

    :catch_29
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$d;->b:Lcom/google/common/util/concurrent/c0;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/common/util/concurrent/c0;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$d;->b:Lcom/google/common/util/concurrent/c0;

    invoke-virtual {v0, v1}, Lcom/google/common/base/MoreObjects$b;->j(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.util.concurrent.Futures.e (com.google.common.util.concurrent.Futures$e)
.class public final Lcom/google/common/util/concurrent/Futures$e;
.super Ljava/lang/Object;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/util/concurrent/h0<",
            "+TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ZLcom/google/common/collect/ImmutableList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/util/concurrent/h0<",
            "+TV;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/common/util/concurrent/Futures$e;->a:Z

    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$e;->b:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method synthetic constructor <init>(ZLcom/google/common/collect/ImmutableList;Lcom/google/common/util/concurrent/Futures$a;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/Futures$e;-><init>(ZLcom/google/common/collect/ImmutableList;)V

    return-void
.end method

###### Class com.google.common.util.concurrent.Futures.f (com.google.common.util.concurrent.Futures$f)
.class final Lcom/google/common/util/concurrent/Futures$f;
.super Lcom/google/common/util/concurrent/m;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/m<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private h:Lcom/google/common/util/concurrent/Futures$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/Futures$g<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/Futures$g;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/Futures$g<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/util/concurrent/m;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$f;->h:Lcom/google/common/util/concurrent/Futures$g;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/Futures$g;Lcom/google/common/util/concurrent/Futures$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Futures$f;-><init>(Lcom/google/common/util/concurrent/Futures$g;)V

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .registers 4

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$f;->h:Lcom/google/common/util/concurrent/Futures$g;

    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/m;->cancel(Z)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/google/common/util/concurrent/Futures$g;

    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/Futures$g;->b(Lcom/google/common/util/concurrent/Futures$g;Z)V

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method protected m()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$f;->h:Lcom/google/common/util/concurrent/Futures$g;

    return-void
.end method

.method protected y()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$f;->h:Lcom/google/common/util/concurrent/Futures$g;

    if-eqz v0, :cond_32

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures$g;->c(Lcom/google/common/util/concurrent/Futures$g;)[Lcom/google/common/util/concurrent/h0;

    move-result-object v1

    array-length v1, v1

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures$g;->d(Lcom/google/common/util/concurrent/Futures$g;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/16 v2, 0x31

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "inputCount=["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], remaining=["

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_32
    const/4 v0, 0x0

    return-object v0
.end method

###### Class com.google.common.util.concurrent.Futures.g (com.google.common.util.concurrent.Futures$g)
.class final Lcom/google/common/util/concurrent/Futures$g;
.super Ljava/lang/Object;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final d:[Lcom/google/common/util/concurrent/h0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/util/concurrent/h0<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private volatile e:I


# direct methods
.method private constructor <init>([Lcom/google/common/util/concurrent/h0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/common/util/concurrent/h0<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/Futures$g;->a:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/common/util/concurrent/Futures$g;->b:Z

    iput v0, p0, Lcom/google/common/util/concurrent/Futures$g;->e:I

    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$g;->d:[Lcom/google/common/util/concurrent/h0;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    array-length p1, p1

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$g;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>([Lcom/google/common/util/concurrent/h0;Lcom/google/common/util/concurrent/Futures$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Futures$g;-><init>([Lcom/google/common/util/concurrent/h0;)V

    return-void
.end method

.method static synthetic a(Lcom/google/common/util/concurrent/Futures$g;Lcom/google/common/collect/ImmutableList;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/Futures$g;->f(Lcom/google/common/collect/ImmutableList;I)V

    return-void
.end method

.method static synthetic b(Lcom/google/common/util/concurrent/Futures$g;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Futures$g;->g(Z)V

    return-void
.end method

.method static synthetic c(Lcom/google/common/util/concurrent/Futures$g;)[Lcom/google/common/util/concurrent/h0;
    .registers 1

    iget-object p0, p0, Lcom/google/common/util/concurrent/Futures$g;->d:[Lcom/google/common/util/concurrent/h0;

    return-object p0
.end method

.method static synthetic d(Lcom/google/common/util/concurrent/Futures$g;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    iget-object p0, p0, Lcom/google/common/util/concurrent/Futures$g;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private e()V
    .registers 6

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$g;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/google/common/util/concurrent/Futures$g;->a:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$g;->d:[Lcom/google/common/util/concurrent/h0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_1e

    aget-object v3, v0, v2

    if-eqz v3, :cond_1b

    iget-boolean v4, p0, Lcom/google/common/util/concurrent/Futures$g;->b:Z

    invoke-interface {v3, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1e
    return-void
.end method

.method private f(Lcom/google/common/collect/ImmutableList;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/util/concurrent/m<",
            "TT;>;>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$g;->d:[Lcom/google/common/util/concurrent/h0;

    aget-object v0, v0, p2

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/google/common/util/concurrent/h0;

    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$g;->d:[Lcom/google/common/util/concurrent/h0;

    const/4 v2, 0x0

    aput-object v2, v1, p2

    iget p2, p0, Lcom/google/common/util/concurrent/Futures$g;->e:I

    :goto_10
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge p2, v1, :cond_2d

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/m;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/m;->D(Lcom/google/common/util/concurrent/h0;)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-direct {p0}, Lcom/google/common/util/concurrent/Futures$g;->e()V

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/common/util/concurrent/Futures$g;->e:I

    return-void

    :cond_2a
    add-int/lit8 p2, p2, 0x1

    goto :goto_10

    :cond_2d
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    iput p1, p0, Lcom/google/common/util/concurrent/Futures$g;->e:I

    return-void
.end method

.method private g(Z)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/Futures$g;->a:Z

    if-nez p1, :cond_8

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/common/util/concurrent/Futures$g;->b:Z

    :cond_8
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Futures$g;->e()V

    return-void
.end method

###### Class com.google.common.util.concurrent.Futures.h (com.google.common.util.concurrent.Futures$h)
.class final Lcom/google/common/util/concurrent/Futures$h;
.super Lcom/google/common/util/concurrent/m$j;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/m$j<",
        "TV;>;",
        "Ljava/lang/Runnable;"
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


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/h0;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/h0<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/util/concurrent/m$j;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$h;->h:Lcom/google/common/util/concurrent/h0;

    return-void
.end method


# virtual methods
.method protected m()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$h;->h:Lcom/google/common/util/concurrent/h0;

    return-void
.end method

.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$h;->h:Lcom/google/common/util/concurrent/h0;

    if-eqz v0, :cond_7

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/m;->D(Lcom/google/common/util/concurrent/h0;)Z

    :cond_7
    return-void
.end method

.method protected y()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$h;->h:Lcom/google/common/util/concurrent/h0;

    if-eqz v0, :cond_25

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "delegate=["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_25
    const/4 v0, 0x0

    return-object v0
.end method
