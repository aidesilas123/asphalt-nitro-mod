###### Class kotlinx.coroutines.internal.ThreadSafeHeap (kotlinx.coroutines.internal.u)
.class public Lkotlinx/coroutines/internal/u;
.super Ljava/lang/Object;
.source "ThreadSafeHeap.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lkotlinx/coroutines/internal/v;",
        ":",
        "Ljava/lang/Comparable<",
        "-TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0014\u0008\u0017\u0018\u0000*\u0012\u0008\u0000\u0010\u0001*\u00020\u0002*\u0008\u0012\u0004\u0012\u0002H\u00010\u00032\u00060\u0004j\u0002`\u0005B\u0005\u00a2\u0006\u0002\u0010\u0006J\u0015\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00028\u0000H\u0001\u00a2\u0006\u0002\u0010\u0019J\u0013\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0019J,\u0010\u001b\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00028\u00002\u0014\u0010\u001c\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0012\u0004\u0012\u00020\r0\u001dH\u0086\u0008\u00a2\u0006\u0002\u0010\u001eJ0\u0010\u001f\u001a\u0004\u0018\u00018\u00002!\u0010 \u001a\u001d\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008!\u0012\u0008\u0008\"\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\r0\u001d\u00a2\u0006\u0002\u0010#J\u000f\u0010$\u001a\u0004\u0018\u00018\u0000H\u0001\u00a2\u0006\u0002\u0010%J\r\u0010&\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0002\u0010%J\u0015\u0010\'\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\nH\u0002\u00a2\u0006\u0002\u0010(J\u0013\u0010)\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00028\u0000\u00a2\u0006\u0002\u0010*J\u0015\u0010+\u001a\u00028\u00002\u0006\u0010,\u001a\u00020\u0010H\u0001\u00a2\u0006\u0002\u0010-J$\u0010.\u001a\u0004\u0018\u00018\u00002\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\r0\u001dH\u0086\u0008\u00a2\u0006\u0002\u0010#J\r\u0010/\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0002\u0010%J\u0011\u00100\u001a\u00020\u00172\u0006\u00101\u001a\u00020\u0010H\u0082\u0010J\u0011\u00102\u001a\u00020\u00172\u0006\u00101\u001a\u00020\u0010H\u0082\u0010J\u0018\u00103\u001a\u00020\u00172\u0006\u00101\u001a\u00020\u00102\u0006\u00104\u001a\u00020\u0010H\u0002R\t\u0010\u0007\u001a\u00020\u0008X\u0082\u0004R\u001a\u0010\t\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u000eR$\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u00108F@BX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u00065"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/ThreadSafeHeap;",
        "T",
        "Lkotlinx/coroutines/internal/ThreadSafeHeapNode;",
        "",
        "",
        "Lkotlinx/coroutines/internal/SynchronizedObject;",
        "()V",
        "_size",
        "Lkotlinx/atomicfu/AtomicInt;",
        "a",
        "",
        "[Lkotlinx/coroutines/internal/ThreadSafeHeapNode;",
        "isEmpty",
        "",
        "()Z",
        "value",
        "",
        "size",
        "getSize",
        "()I",
        "setSize",
        "(I)V",
        "addImpl",
        "",
        "node",
        "(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;)V",
        "addLast",
        "addLastIf",
        "cond",
        "Lkotlin/Function1;",
        "(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;Lkotlin/jvm/functions/Function1;)Z",
        "find",
        "predicate",
        "Lkotlin/ParameterName;",
        "name",
        "(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/ThreadSafeHeapNode;",
        "firstImpl",
        "()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;",
        "peek",
        "realloc",
        "()[Lkotlinx/coroutines/internal/ThreadSafeHeapNode;",
        "remove",
        "(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;)Z",
        "removeAtImpl",
        "index",
        "(I)Lkotlinx/coroutines/internal/ThreadSafeHeapNode;",
        "removeFirstIf",
        "removeFirstOrNull",
        "siftDownFrom",
        "i",
        "siftUpFrom",
        "swap",
        "j",
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
.field private volatile synthetic _size$volatile:I

.field private b:[Lkotlinx/coroutines/internal/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lkotlinx/coroutines/internal/u;

    const-string v1, "_size$volatile"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/u;->a:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final synthetic d()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .registers 1

    sget-object v0, Lkotlinx/coroutines/internal/u;->a:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method

.method private final g()[Lkotlinx/coroutines/internal/v;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/internal/u;->b:[Lkotlinx/coroutines/internal/v;

    if-nez v0, :cond_a

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlinx/coroutines/internal/v;

    iput-object v0, p0, Lkotlinx/coroutines/internal/u;->b:[Lkotlinx/coroutines/internal/v;

    goto :goto_24

    :cond_a
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/u;->c()I

    move-result v1

    array-length v2, v0

    if-lt v1, v2, :cond_24

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/u;->c()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "copyOf(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Lkotlinx/coroutines/internal/v;

    iput-object v0, p0, Lkotlinx/coroutines/internal/u;->b:[Lkotlinx/coroutines/internal/v;

    :cond_24
    :goto_24
    return-object v0
.end method

.method private final k(I)V
    .registers 3

    invoke-static {}, Lkotlinx/coroutines/internal/u;->d()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    return-void
.end method

.method private final l(I)V
    .registers 7

    :goto_0
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/u;->c()I

    move-result v1

    if-lt v0, v1, :cond_b

    return-void

    :cond_b
    iget-object v1, p0, Lkotlinx/coroutines/internal/u;->b:[Lkotlinx/coroutines/internal/v;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/u;->c()I

    move-result v3

    if-ge v2, v3, :cond_2b

    aget-object v3, v1, v2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Ljava/lang/Comparable;

    aget-object v4, v1, v0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_2b

    move v0, v2

    :cond_2b
    aget-object v2, v1, p1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Comparable;

    aget-object v1, v1, v0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_3e

    return-void

    :cond_3e
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/internal/u;->n(II)V

    move p1, v0

    goto :goto_0
.end method

.method private final m(I)V
    .registers 5

    :goto_0
    if-gtz p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lkotlinx/coroutines/internal/u;->b:[Lkotlinx/coroutines/internal/v;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    add-int/lit8 v1, p1, -0x1

    div-int/lit8 v1, v1, 0x2

    aget-object v2, v0, v1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Comparable;

    aget-object v0, v0, p1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1f

    return-void

    :cond_1f
    invoke-direct {p0, p1, v1}, Lkotlinx/coroutines/internal/u;->n(II)V

    move p1, v1

    goto :goto_0
.end method

.method private final n(II)V
    .registers 6

    iget-object v0, p0, Lkotlinx/coroutines/internal/u;->b:[Lkotlinx/coroutines/internal/v;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v1, v0, p2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v2, v0, p1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aput-object v1, v0, p1

    aput-object v2, v0, p2

    invoke-interface {v1, p1}, Lkotlinx/coroutines/internal/v;->setIndex(I)V

    invoke-interface {v2, p2}, Lkotlinx/coroutines/internal/v;->setIndex(I)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/internal/v;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p1}, Lkotlinx/coroutines/internal/v;->e()Lkotlinx/coroutines/internal/u;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_12

    goto :goto_18

    :cond_12
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_18
    :goto_18
    invoke-interface {p1, p0}, Lkotlinx/coroutines/internal/v;->a(Lkotlinx/coroutines/internal/u;)V

    invoke-direct {p0}, Lkotlinx/coroutines/internal/u;->g()[Lkotlinx/coroutines/internal/v;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/u;->c()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lkotlinx/coroutines/internal/u;->k(I)V

    aput-object p1, v0, v1

    invoke-interface {p1, v1}, Lkotlinx/coroutines/internal/v;->setIndex(I)V

    invoke-direct {p0, v1}, Lkotlinx/coroutines/internal/u;->m(I)V

    return-void
.end method

.method public final b()Lkotlinx/coroutines/internal/v;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/internal/u;->b:[Lkotlinx/coroutines/internal/v;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method public final c()I
    .registers 2

    invoke-static {}, Lkotlinx/coroutines/internal/u;->d()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final e()Z
    .registers 2

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/u;->c()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final f()Lkotlinx/coroutines/internal/v;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/u;->b()Lkotlinx/coroutines/internal/v;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final h(Lkotlinx/coroutines/internal/v;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-interface {p1}, Lkotlinx/coroutines/internal/v;->e()Lkotlinx/coroutines/internal/u;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_b

    const/4 v1, 0x0

    goto :goto_24

    :cond_b
    invoke-interface {p1}, Lkotlinx/coroutines/internal/v;->h()I

    move-result p1

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_21

    if-ltz p1, :cond_18

    const/4 v2, 0x1

    :cond_18
    if-eqz v2, :cond_1b

    goto :goto_21

    :cond_1b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_21
    :goto_21
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/u;->i(I)Lkotlinx/coroutines/internal/v;
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    :goto_24
    monitor-exit p0

    return v1

    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final i(I)Lkotlinx/coroutines/internal/v;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/u;->c()I

    move-result v0

    if-lez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_14

    goto :goto_1a

    :cond_14
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1a
    :goto_1a
    iget-object v0, p0, Lkotlinx/coroutines/internal/u;->b:[Lkotlinx/coroutines/internal/v;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/u;->c()I

    move-result v3

    const/4 v4, -0x1

    add-int/2addr v3, v4

    invoke-direct {p0, v3}, Lkotlinx/coroutines/internal/u;->k(I)V

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/u;->c()I

    move-result v3

    if-ge p1, v3, :cond_57

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/u;->c()I

    move-result v3

    invoke-direct {p0, p1, v3}, Lkotlinx/coroutines/internal/u;->n(II)V

    add-int/lit8 v3, p1, -0x1

    div-int/lit8 v3, v3, 0x2

    if-lez p1, :cond_54

    aget-object v5, v0, p1

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Ljava/lang/Comparable;

    aget-object v6, v0, v3

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_54

    invoke-direct {p0, p1, v3}, Lkotlinx/coroutines/internal/u;->n(II)V

    invoke-direct {p0, v3}, Lkotlinx/coroutines/internal/u;->m(I)V

    goto :goto_57

    :cond_54
    invoke-direct {p0, p1}, Lkotlinx/coroutines/internal/u;->l(I)V

    :cond_57
    :goto_57
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/u;->c()I

    move-result p1

    aget-object p1, v0, p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v3

    if-eqz v3, :cond_76

    invoke-interface {p1}, Lkotlinx/coroutines/internal/v;->e()Lkotlinx/coroutines/internal/u;

    move-result-object v3

    if-ne v3, p0, :cond_6d

    const/4 v1, 0x1

    :cond_6d
    if-eqz v1, :cond_70

    goto :goto_76

    :cond_70
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_76
    :goto_76
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lkotlinx/coroutines/internal/v;->a(Lkotlinx/coroutines/internal/u;)V

    invoke-interface {p1, v4}, Lkotlinx/coroutines/internal/v;->setIndex(I)V

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/u;->c()I

    move-result v2

    aput-object v1, v0, v2

    return-object p1
.end method

.method public final j()Lkotlinx/coroutines/internal/v;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/u;->c()I

    move-result v0

    if-lez v0, :cond_d

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/internal/u;->i(I)Lkotlinx/coroutines/internal/v;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_10

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
