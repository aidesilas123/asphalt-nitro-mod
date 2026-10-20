###### Class kotlinx.coroutines.BlockingCoroutine (kotlinx.coroutines.d)
.class final Lkotlinx/coroutines/d;
.super Lkotlinx/coroutines/AbstractCoroutine;
.source "Builders.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/AbstractCoroutine<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tJ\u0012\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014J\u000b\u0010\u0011\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0012R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\u000b8TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000c\u00a8\u0006\u0013"
    }
    d2 = {
        "Lkotlinx/coroutines/BlockingCoroutine;",
        "T",
        "Lkotlinx/coroutines/AbstractCoroutine;",
        "parentContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "blockedThread",
        "Ljava/lang/Thread;",
        "eventLoop",
        "Lkotlinx/coroutines/EventLoop;",
        "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Thread;Lkotlinx/coroutines/EventLoop;)V",
        "isScopedCoroutine",
        "",
        "()Z",
        "afterCompletion",
        "",
        "state",
        "",
        "joinBlocking",
        "()Ljava/lang/Object;",
        "kotlinx-coroutines-core"
    }
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final d:Ljava/lang/Thread;

.field private final e:Lkotlinx/coroutines/EventLoop;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Thread;Lkotlinx/coroutines/EventLoop;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lkotlinx/coroutines/AbstractCoroutine;-><init>(Lkotlin/coroutines/CoroutineContext;ZZ)V

    iput-object p2, p0, Lkotlinx/coroutines/d;->d:Ljava/lang/Thread;

    iput-object p3, p0, Lkotlinx/coroutines/d;->e:Lkotlinx/coroutines/EventLoop;

    return-void
.end method


# virtual methods
.method protected R(Ljava/lang/Object;)V
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v0, p0, Lkotlinx/coroutines/d;->d:Ljava/lang/Thread;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    iget-object p1, p0, Lkotlinx/coroutines/d;->d:Ljava/lang/Thread;

    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->access$getTimeSource$p()Lkotlinx/coroutines/b;

    move-result-object v0

    if-nez v0, :cond_18

    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    goto :goto_1a

    :cond_18
    const/4 p1, 0x0

    throw p1

    :cond_1a
    :goto_1a
    return-void
.end method

.method public final d1()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->access$getTimeSource$p()Lkotlinx/coroutines/b;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_73

    :try_start_7
    iget-object v0, p0, Lkotlinx/coroutines/d;->e:Lkotlinx/coroutines/EventLoop;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_10

    invoke-static {v0, v3, v2, v1}, Lkotlinx/coroutines/EventLoop;->incrementUseCount$default(Lkotlinx/coroutines/EventLoop;ZILjava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_6a

    :cond_10
    :goto_10
    :try_start_10
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_58

    iget-object v0, p0, Lkotlinx/coroutines/d;->e:Lkotlinx/coroutines/EventLoop;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lkotlinx/coroutines/EventLoop;->U()J

    move-result-wide v4

    goto :goto_24

    :cond_1f
    const-wide v4, 0x7fffffffffffffffL

    :goto_24
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->d()Z

    move-result v0

    if-nez v0, :cond_35

    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->access$getTimeSource$p()Lkotlinx/coroutines/b;

    move-result-object v0

    if-nez v0, :cond_34

    invoke-static {p0, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_10

    :cond_34
    throw v1
    :try_end_35
    .catchall {:try_start_10 .. :try_end_35} :catchall_61

    :cond_35
    :try_start_35
    iget-object v0, p0, Lkotlinx/coroutines/d;->e:Lkotlinx/coroutines/EventLoop;

    if-eqz v0, :cond_3c

    invoke-static {v0, v3, v2, v1}, Lkotlinx/coroutines/EventLoop;->decrementUseCount$default(Lkotlinx/coroutines/EventLoop;ZILjava/lang/Object;)V
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_6a

    :cond_3c
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->access$getTimeSource$p()Lkotlinx/coroutines/b;

    move-result-object v0

    if-nez v0, :cond_57

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->o0()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/JobSupportKt;->unboxState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lkotlinx/coroutines/o;

    if-eqz v2, :cond_51

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/o;

    :cond_51
    if-nez v1, :cond_54

    return-object v0

    :cond_54
    iget-object v0, v1, Lkotlinx/coroutines/o;->b:Ljava/lang/Throwable;

    throw v0

    :cond_57
    throw v1

    :cond_58
    :try_start_58
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->U(Ljava/lang/Throwable;)Z

    throw v0
    :try_end_61
    .catchall {:try_start_58 .. :try_end_61} :catchall_61

    :catchall_61
    move-exception v0

    :try_start_62
    iget-object v4, p0, Lkotlinx/coroutines/d;->e:Lkotlinx/coroutines/EventLoop;

    if-eqz v4, :cond_69

    invoke-static {v4, v3, v2, v1}, Lkotlinx/coroutines/EventLoop;->decrementUseCount$default(Lkotlinx/coroutines/EventLoop;ZILjava/lang/Object;)V

    :cond_69
    throw v0
    :try_end_6a
    .catchall {:try_start_62 .. :try_end_6a} :catchall_6a

    :catchall_6a
    move-exception v0

    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->access$getTimeSource$p()Lkotlinx/coroutines/b;

    move-result-object v2

    if-eqz v2, :cond_72

    throw v1

    :cond_72
    throw v0

    :cond_73
    throw v1
.end method

.method protected v0()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
