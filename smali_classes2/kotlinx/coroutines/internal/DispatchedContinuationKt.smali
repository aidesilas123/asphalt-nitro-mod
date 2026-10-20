###### Class kotlinx.coroutines.internal.DispatchedContinuationKt (kotlinx.coroutines.internal.DispatchedContinuationKt)
.class public final Lkotlinx/coroutines/internal/DispatchedContinuationKt;
.super Ljava/lang/Object;
.source "DispatchedContinuation.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001a;\u0010\u0003\u001a\u00020\u0004*\u0006\u0012\u0002\u0008\u00030\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u00042\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u0082\u0008\u001aR\u0010\u000e\u001a\u00020\r\"\u0004\u0008\u0000\u0010\u000f*\u0008\u0012\u0004\u0012\u0002H\u000f0\u00102\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u000f0\u00122%\u0008\u0002\u0010\u0013\u001a\u001f\u0012\u0013\u0012\u00110\u0015\u00a2\u0006\u000c\u0008\u0016\u0012\u0008\u0008\u0017\u0012\u0004\u0008\u0008(\u0018\u0012\u0004\u0012\u00020\r\u0018\u00010\u0014H\u0007\u00a2\u0006\u0002\u0010\u0019\u001a\u0012\u0010\u001a\u001a\u00020\u0004*\u0008\u0012\u0004\u0012\u00020\r0\u0005H\u0000\"\u0010\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "REUSABLE_CLAIMED",
        "Lkotlinx/coroutines/internal/Symbol;",
        "UNDEFINED",
        "executeUnconfined",
        "",
        "Lkotlinx/coroutines/internal/DispatchedContinuation;",
        "contState",
        "",
        "mode",
        "",
        "doYield",
        "block",
        "Lkotlin/Function0;",
        "",
        "resumeCancellableWith",
        "T",
        "Lkotlin/coroutines/Continuation;",
        "result",
        "Lkotlin/Result;",
        "onCancellation",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "cause",
        "(Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V",
        "yieldUndispatched",
        "kotlinx-coroutines-core"
    }
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final a:Lkotlinx/coroutines/internal/s;

.field public static final b:Lkotlinx/coroutines/internal/s;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlinx/coroutines/internal/s;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/s;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->a:Lkotlinx/coroutines/internal/s;

    new-instance v0, Lkotlinx/coroutines/internal/s;

    const-string v1, "REUSABLE_CLAIMED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/s;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->b:Lkotlinx/coroutines/internal/s;

    return-void
.end method

.method public static final synthetic access$getUNDEFINED$p()Lkotlinx/coroutines/internal/s;
    .registers 1

    sget-object v0, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->a:Lkotlinx/coroutines/internal/s;

    return-object v0
.end method

.method public static final resumeCancellableWith(Lkotlin/coroutines/d;Ljava/lang/Object;Lkotlin/jvm/b/l;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/d<",
            "-TT;>;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    if-eqz v0, :cond_ba

    check-cast p0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    invoke-static {p1, p2}, Lkotlinx/coroutines/CompletionStateKt;->toState(Ljava/lang/Object;Lkotlin/jvm/b/l;)Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->e:Lkotlinx/coroutines/r;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/r;->isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_26

    iput-object p2, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->g:Ljava/lang/Object;

    iput v1, p0, Lkotlinx/coroutines/w;->c:I

    iget-object p1, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->e:Lkotlinx/coroutines/r;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lkotlinx/coroutines/r;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    goto/16 :goto_bd

    :cond_26
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    sget-object v0, Lkotlinx/coroutines/d1;->a:Lkotlinx/coroutines/d1;

    invoke-virtual {v0}, Lkotlinx/coroutines/d1;->b()Lkotlinx/coroutines/EventLoop;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/EventLoop;->Q()Z

    move-result v2

    if-eqz v2, :cond_3f

    iput-object p2, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->g:Ljava/lang/Object;

    iput v1, p0, Lkotlinx/coroutines/w;->c:I

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/EventLoop;->J(Lkotlinx/coroutines/w;)V

    goto/16 :goto_bd

    :cond_3f
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/EventLoop;->L(Z)V

    const/4 v2, 0x0

    :try_start_43
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    sget-object v4, Lkotlinx/coroutines/Job;->g0:Lkotlinx/coroutines/Job$a;

    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$a;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/Job;

    if-eqz v3, :cond_6d

    invoke-interface {v3}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v4

    if-nez v4, :cond_6d

    invoke-interface {v3}, Lkotlinx/coroutines/Job;->i()Ljava/util/concurrent/CancellationException;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Lkotlinx/coroutines/internal/DispatchedContinuation;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    sget-object p2, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {v3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    const/4 p2, 0x1

    goto :goto_6e

    :cond_6d
    const/4 p2, 0x0

    :goto_6e
    if-nez p2, :cond_a6

    iget-object p2, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->f:Lkotlin/coroutines/d;

    iget-object v3, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->h:Ljava/lang/Object;

    invoke-interface {p2}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlinx/coroutines/internal/ThreadContextKt;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lkotlinx/coroutines/internal/ThreadContextKt;->a:Lkotlinx/coroutines/internal/s;

    if-eq v3, v5, :cond_85

    invoke-static {p2, v4, v3}, Lkotlinx/coroutines/CoroutineContextKt;->updateUndispatchedCompletion(Lkotlin/coroutines/d;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Lkotlinx/coroutines/i1;

    move-result-object p2
    :try_end_84
    .catchall {:try_start_43 .. :try_end_84} :catchall_ad

    goto :goto_86

    :cond_85
    move-object p2, v2

    :goto_86
    :try_start_86
    iget-object v5, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->f:Lkotlin/coroutines/d;

    invoke-interface {v5, p1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_8d
    .catchall {:try_start_86 .. :try_end_8d} :catchall_99

    if-eqz p2, :cond_95

    :try_start_8f
    invoke-virtual {p2}, Lkotlinx/coroutines/i1;->d1()Z

    move-result p1

    if-eqz p1, :cond_a6

    :cond_95
    invoke-static {v4, v3}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    goto :goto_a6

    :catchall_99
    move-exception p1

    if-eqz p2, :cond_a2

    invoke-virtual {p2}, Lkotlinx/coroutines/i1;->d1()Z

    move-result p2

    if-eqz p2, :cond_a5

    :cond_a2
    invoke-static {v4, v3}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    :cond_a5
    throw p1

    :cond_a6
    :goto_a6
    invoke-virtual {v0}, Lkotlinx/coroutines/EventLoop;->V()Z

    move-result p1
    :try_end_aa
    .catchall {:try_start_8f .. :try_end_aa} :catchall_ad

    if-nez p1, :cond_a6

    goto :goto_b1

    :catchall_ad
    move-exception p1

    :try_start_ae
    invoke-virtual {p0, p1, v2}, Lkotlinx/coroutines/w;->i(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_b5

    :goto_b1
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/EventLoop;->u(Z)V

    goto :goto_bd

    :catchall_b5
    move-exception p0

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/EventLoop;->u(Z)V

    throw p0

    :cond_ba
    invoke-interface {p0, p1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    :goto_bd
    return-void
.end method

.method public static synthetic resumeCancellableWith$default(Lkotlin/coroutines/d;Ljava/lang/Object;Lkotlin/jvm/b/l;ILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->resumeCancellableWith(Lkotlin/coroutines/d;Ljava/lang/Object;Lkotlin/jvm/b/l;)V

    return-void
.end method

.method public static final yieldUndispatched(Lkotlinx/coroutines/internal/DispatchedContinuation;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/DispatchedContinuation<",
            "-",
            "Lkotlin/v;",
            ">;)Z"
        }
    .end annotation

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v1

    sget-object v1, Lkotlinx/coroutines/d1;->a:Lkotlinx/coroutines/d1;

    invoke-virtual {v1}, Lkotlinx/coroutines/d1;->b()Lkotlinx/coroutines/EventLoop;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/coroutines/EventLoop;->S()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_14

    goto :goto_39

    :cond_14
    invoke-virtual {v1}, Lkotlinx/coroutines/EventLoop;->Q()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_24

    iput-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->g:Ljava/lang/Object;

    iput v4, p0, Lkotlinx/coroutines/w;->c:I

    invoke-virtual {v1, p0}, Lkotlinx/coroutines/EventLoop;->J(Lkotlinx/coroutines/w;)V

    const/4 v3, 0x1

    goto :goto_39

    :cond_24
    invoke-virtual {v1, v4}, Lkotlinx/coroutines/EventLoop;->L(Z)V

    :try_start_27
    invoke-virtual {p0}, Lkotlinx/coroutines/w;->run()V

    :cond_2a
    invoke-virtual {v1}, Lkotlinx/coroutines/EventLoop;->V()Z

    move-result v0
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_31

    if-nez v0, :cond_2a

    goto :goto_36

    :catchall_31
    move-exception v0

    const/4 v2, 0x0

    :try_start_33
    invoke-virtual {p0, v0, v2}, Lkotlinx/coroutines/w;->i(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_3a

    :goto_36
    invoke-virtual {v1, v4}, Lkotlinx/coroutines/EventLoop;->u(Z)V

    :goto_39
    return v3

    :catchall_3a
    move-exception p0

    invoke-virtual {v1, v4}, Lkotlinx/coroutines/EventLoop;->u(Z)V

    throw p0
.end method
