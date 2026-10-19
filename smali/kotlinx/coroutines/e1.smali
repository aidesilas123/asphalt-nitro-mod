###### Class kotlinx.coroutines.ThreadState (kotlinx.coroutines.e1)
.class final Lkotlinx/coroutines/e1;
.super Ljava/lang/Object;
.source "Interruptible.kt"

# interfaces
.implements Lkotlinx/coroutines/k0;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u000c\u001a\u00020\rJ\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0012\u0010\u0012\u001a\u00020\r2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u0006\u0010\u0015\u001a\u00020\rR\t\u0010\u0005\u001a\u00020\u0006X\u0082\u0004R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lkotlinx/coroutines/ThreadState;",
        "Lkotlinx/coroutines/InternalCompletionHandler;",
        "job",
        "Lkotlinx/coroutines/Job;",
        "(Lkotlinx/coroutines/Job;)V",
        "_state",
        "Lkotlinx/atomicfu/AtomicInt;",
        "cancelHandle",
        "Lkotlinx/coroutines/DisposableHandle;",
        "targetThread",
        "Ljava/lang/Thread;",
        "kotlin.jvm.PlatformType",
        "clearInterrupt",
        "",
        "invalidState",
        "",
        "state",
        "",
        "invoke",
        "cause",
        "",
        "setup",
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
.field private static final synthetic a:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic _state$volatile:I

.field private final b:Lkotlinx/coroutines/Job;

.field private final c:Ljava/lang/Thread;

.field private d:Lkotlinx/coroutines/z;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lkotlinx/coroutines/e1;

    const-string v1, "_state$volatile"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/e1;->a:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/Job;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/e1;->b:Lkotlinx/coroutines/Job;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/e1;->c:Ljava/lang/Thread;

    return-void
.end method

.method private static final synthetic c()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .registers 1

    sget-object v0, Lkotlinx/coroutines/e1;->a:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method

.method private final d(I)Ljava/lang/Void;
    .registers 5

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .registers 6

    invoke-static {}, Lkotlinx/coroutines/e1;->c()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object p1

    :cond_4
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eqz v0, :cond_1e

    const/4 p1, 0x1

    if-eq v0, p1, :cond_1d

    if-eq v0, v2, :cond_1d

    if-ne v0, v1, :cond_14

    goto :goto_1d

    :cond_14
    invoke-direct {p0, v0}, Lkotlinx/coroutines/e1;->d(I)Ljava/lang/Void;

    new-instance p1, Lkotlin/f;

    invoke-direct {p1}, Lkotlin/f;-><init>()V

    throw p1

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    invoke-static {}, Lkotlinx/coroutines/e1;->c()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lkotlinx/coroutines/e1;->c:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    invoke-static {}, Lkotlinx/coroutines/e1;->c()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object p1

    invoke-virtual {p1, p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    return-void
.end method

.method public final b()V
    .registers 5

    invoke-static {}, Lkotlinx/coroutines/e1;->c()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    :cond_4
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v0, 0x3

    if-ne v1, v0, :cond_14

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    return-void

    :cond_14
    invoke-direct {p0, v1}, Lkotlinx/coroutines/e1;->d(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/f;

    invoke-direct {v0}, Lkotlin/f;-><init>()V

    throw v0

    :cond_1d
    invoke-static {}, Lkotlinx/coroutines/e1;->c()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lkotlinx/coroutines/e1;->d:Lkotlinx/coroutines/z;

    if-eqz v0, :cond_2f

    invoke-interface {v0}, Lkotlinx/coroutines/z;->dispose()V

    :cond_2f
    return-void
.end method

.method public final e()V
    .registers 5

    iget-object v0, p0, Lkotlinx/coroutines/e1;->b:Lkotlinx/coroutines/Job;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1, p0}, Lkotlinx/coroutines/JobKt;->invokeOnCompletion(Lkotlinx/coroutines/Job;ZZLkotlinx/coroutines/k0;)Lkotlinx/coroutines/z;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/e1;->d:Lkotlinx/coroutines/z;

    invoke-static {}, Lkotlinx/coroutines/e1;->c()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    :cond_d
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_24

    const/4 v0, 0x2

    if-eq v1, v0, :cond_23

    const/4 v0, 0x3

    if-ne v1, v0, :cond_1a

    goto :goto_23

    :cond_1a
    invoke-direct {p0, v1}, Lkotlinx/coroutines/e1;->d(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/f;

    invoke-direct {v0}, Lkotlin/f;-><init>()V

    throw v0

    :cond_23
    :goto_23
    return-void

    :cond_24
    invoke-static {}, Lkotlinx/coroutines/e1;->c()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_d

    return-void
.end method
