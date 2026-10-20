###### Class kotlinx.coroutines.flow.StateFlowImpl (kotlinx.coroutines.flow.v)
.class final Lkotlinx/coroutines/flow/v;
.super Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;
.source "StateFlow.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/l;
.implements Lkotlinx/coroutines/flow/c;
.implements Lkotlinx/coroutines/flow/internal/FusibleFlow;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/flow/internal/AbstractSharedFlow<",
        "Lkotlinx/coroutines/flow/StateFlowSlot;",
        ">;",
        "Lkotlinx/coroutines/flow/l<",
        "TT;>;",
        "Lkotlinx/coroutines/flow/c<",
        "TT;>;",
        "Lkotlinx/coroutines/flow/internal/FusibleFlow<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u00042\u0008\u0012\u0004\u0012\u0002H\u00010\u00052\u0008\u0012\u0004\u0012\u0002H\u00010\u0006B\r\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u001c\u0010\u0016\u001a\u00020\u00172\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0019H\u0096@\u00a2\u0006\u0002\u0010\u001aJ\u001d\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00028\u00002\u0006\u0010\u001e\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u001fJ\u0008\u0010 \u001a\u00020\u0003H\u0014J\u001d\u0010!\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\"2\u0006\u0010#\u001a\u00020\u0011H\u0014\u00a2\u0006\u0002\u0010$J\u0016\u0010%\u001a\u00020&2\u0006\u0010\u0012\u001a\u00028\u0000H\u0096@\u00a2\u0006\u0002\u0010\'J&\u0010(\u001a\u0008\u0012\u0004\u0012\u00028\u00000)2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\u00112\u0006\u0010-\u001a\u00020.H\u0016J\u0008\u0010/\u001a\u00020&H\u0016J\u0015\u00100\u001a\u00020\u001c2\u0006\u0010\u0012\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u00101J\u001a\u00102\u001a\u00020\u001c2\u0008\u00103\u001a\u0004\u0018\u00010\u00082\u0006\u00104\u001a\u00020\u0008H\u0002R\u000f\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000bX\u0082\u0004R\u001a\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u0012\u001a\u00028\u00002\u0006\u0010\u0012\u001a\u00028\u00008V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\t\u00a8\u00065"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/StateFlowImpl;",
        "T",
        "Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;",
        "Lkotlinx/coroutines/flow/StateFlowSlot;",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lkotlinx/coroutines/flow/CancellableFlow;",
        "Lkotlinx/coroutines/flow/internal/FusibleFlow;",
        "initialState",
        "",
        "(Ljava/lang/Object;)V",
        "_state",
        "Lkotlinx/atomicfu/AtomicRef;",
        "replayCache",
        "",
        "getReplayCache",
        "()Ljava/util/List;",
        "sequence",
        "",
        "value",
        "getValue",
        "()Ljava/lang/Object;",
        "setValue",
        "collect",
        "",
        "collector",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "compareAndSet",
        "",
        "expect",
        "update",
        "(Ljava/lang/Object;Ljava/lang/Object;)Z",
        "createSlot",
        "createSlotArray",
        "",
        "size",
        "(I)[Lkotlinx/coroutines/flow/StateFlowSlot;",
        "emit",
        "",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "fuse",
        "Lkotlinx/coroutines/flow/Flow;",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "capacity",
        "onBufferOverflow",
        "Lkotlinx/coroutines/channels/BufferOverflow;",
        "resetReplayCache",
        "tryEmit",
        "(Ljava/lang/Object;)Z",
        "updateState",
        "expectedState",
        "newState",
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
.field private static final synthetic e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _state$volatile:Ljava/lang/Object;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lkotlinx/coroutines/flow/v;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state$volatile"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/flow/v;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/flow/v;->_state$volatile:Ljava/lang/Object;

    return-void
.end method

.method private static final synthetic n()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .registers 1

    sget-object v0, Lkotlinx/coroutines/flow/v;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final o(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 9

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lkotlinx/coroutines/flow/v;->n()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_14

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_64

    if-nez p1, :cond_14

    monitor-exit p0

    return v1

    :cond_14
    :try_start_14
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_64

    const/4 v0, 0x1

    if-eqz p1, :cond_1d

    monitor-exit p0

    return v0

    :cond_1d
    :try_start_1d
    invoke-static {}, Lkotlinx/coroutines/flow/v;->n()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget p1, p0, Lkotlinx/coroutines/flow/v;->f:I

    and-int/lit8 p2, p1, 0x1

    if-nez p2, :cond_5e

    add-int/2addr p1, v0

    iput p1, p0, Lkotlinx/coroutines/flow/v;->f:I

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->k()[Lkotlinx/coroutines/flow/internal/c;

    move-result-object p2

    sget-object v2, Lkotlin/v;->a:Lkotlin/v;
    :try_end_33
    .catchall {:try_start_1d .. :try_end_33} :catchall_64

    monitor-exit p0

    :goto_34
    check-cast p2, [Lkotlinx/coroutines/flow/StateFlowSlot;

    if-eqz p2, :cond_46

    array-length v2, p2

    const/4 v3, 0x0

    :goto_3a
    if-ge v3, v2, :cond_46

    aget-object v4, p2, v3

    if-eqz v4, :cond_43

    invoke-virtual {v4}, Lkotlinx/coroutines/flow/StateFlowSlot;->f()V

    :cond_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    :cond_46
    monitor-enter p0

    :try_start_47
    iget p2, p0, Lkotlinx/coroutines/flow/v;->f:I

    if-ne p2, p1, :cond_50

    add-int/2addr p1, v0

    iput p1, p0, Lkotlinx/coroutines/flow/v;->f:I
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_5b

    monitor-exit p0

    return v0

    :cond_50
    :try_start_50
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->k()[Lkotlinx/coroutines/flow/internal/c;

    move-result-object p1

    sget-object v2, Lkotlin/v;->a:Lkotlin/v;
    :try_end_56
    .catchall {:try_start_50 .. :try_end_56} :catchall_5b

    monitor-exit p0

    move v5, p2

    move-object p2, p1

    move p1, v5

    goto :goto_34

    :catchall_5b
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_5e
    add-int/lit8 p1, p1, 0x2

    :try_start_60
    iput p1, p0, Lkotlinx/coroutines/flow/v;->f:I
    :try_end_62
    .catchall {:try_start_60 .. :try_end_62} :catchall_64

    monitor-exit p0

    return v0

    :catchall_64
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public a(Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/i;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "I",
            "Lkotlinx/coroutines/channels/BufferOverflow;",
            ")",
            "Lkotlinx/coroutines/flow/i<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/StateFlowKt;->fuseStateFlow(Lkotlinx/coroutines/flow/u;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/i;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/v;->setValue(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public collect(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/j<",
            "-TT;>;",
            "Lkotlin/coroutines/d<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/flow/v$a;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/v$a;

    iget v1, v0, Lkotlinx/coroutines/flow/v$a;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/v$a;->h:I

    goto :goto_18

    :cond_13
    new-instance v0, Lkotlinx/coroutines/flow/v$a;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/v$a;-><init>(Lkotlinx/coroutines/flow/v;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p2, v0, Lkotlinx/coroutines/flow/v$a;->f:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lkotlinx/coroutines/flow/v$a;->h:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_76

    if-eq v2, v6, :cond_61

    if-eq v2, v5, :cond_4a

    if-ne v2, v4, :cond_42

    iget-object p1, v0, Lkotlinx/coroutines/flow/v$a;->e:Ljava/lang/Object;

    iget-object v2, v0, Lkotlinx/coroutines/flow/v$a;->d:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/Job;

    iget-object v6, v0, Lkotlinx/coroutines/flow/v$a;->c:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/flow/StateFlowSlot;

    iget-object v7, v0, Lkotlinx/coroutines/flow/v$a;->b:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/flow/j;

    iget-object v8, v0, Lkotlinx/coroutines/flow/v$a;->a:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/flow/v;

    :try_start_3e
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_73

    goto :goto_a6

    :cond_42
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4a
    iget-object p1, v0, Lkotlinx/coroutines/flow/v$a;->e:Ljava/lang/Object;

    iget-object v2, v0, Lkotlinx/coroutines/flow/v$a;->d:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/Job;

    iget-object v6, v0, Lkotlinx/coroutines/flow/v$a;->c:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/flow/StateFlowSlot;

    iget-object v7, v0, Lkotlinx/coroutines/flow/v$a;->b:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/flow/j;

    iget-object v8, v0, Lkotlinx/coroutines/flow/v$a;->a:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/flow/v;

    :try_start_5c
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_73

    goto/16 :goto_d6

    :cond_61
    iget-object p1, v0, Lkotlinx/coroutines/flow/v$a;->c:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Lkotlinx/coroutines/flow/StateFlowSlot;

    iget-object p1, v0, Lkotlinx/coroutines/flow/v$a;->b:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/j;

    iget-object v2, v0, Lkotlinx/coroutines/flow/v$a;->a:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Lkotlinx/coroutines/flow/v;

    :try_start_6f
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_73

    goto :goto_97

    :catchall_73
    move-exception p1

    goto/16 :goto_f2

    :cond_76
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->b()Lkotlinx/coroutines/flow/internal/c;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/flow/StateFlowSlot;

    :try_start_7f
    instance-of v2, p1, Lkotlinx/coroutines/flow/w;

    if-eqz v2, :cond_95

    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/flow/w;

    iput-object p0, v0, Lkotlinx/coroutines/flow/v$a;->a:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/v$a;->b:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/flow/v$a;->c:Ljava/lang/Object;

    iput v6, v0, Lkotlinx/coroutines/flow/v$a;->h:I

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/flow/w;->a(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v2
    :try_end_92
    .catchall {:try_start_7f .. :try_end_92} :catchall_ef

    if-ne v2, v1, :cond_95

    return-object v1

    :cond_95
    move-object v8, p0

    move-object v6, p2

    :goto_97
    :try_start_97
    invoke-interface {v0}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    sget-object v2, Lkotlinx/coroutines/Job;->g0:Lkotlinx/coroutines/Job$a;

    invoke-interface {p2, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$a;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/Job;

    move-object v7, p1

    move-object v2, p2

    move-object p1, v3

    :cond_a6
    :goto_a6
    invoke-static {}, Lkotlinx/coroutines/flow/v;->n()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p2

    invoke-virtual {p2, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_b3

    invoke-static {v2}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlinx/coroutines/Job;)V

    :cond_b3
    if-eqz p1, :cond_bb

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d6

    :cond_bb
    sget-object p1, Lkotlinx/coroutines/flow/internal/m;->a:Lkotlinx/coroutines/internal/s;

    if-ne p2, p1, :cond_c1

    move-object p1, v3

    goto :goto_c2

    :cond_c1
    move-object p1, p2

    :goto_c2
    iput-object v8, v0, Lkotlinx/coroutines/flow/v$a;->a:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/flow/v$a;->b:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/flow/v$a;->c:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/flow/v$a;->d:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/flow/v$a;->e:Ljava/lang/Object;

    iput v5, v0, Lkotlinx/coroutines/flow/v$a;->h:I

    invoke-interface {v7, p1, v0}, Lkotlinx/coroutines/flow/j;->emit(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_d5

    return-object v1

    :cond_d5
    move-object p1, p2

    :cond_d6
    :goto_d6
    invoke-virtual {v6}, Lkotlinx/coroutines/flow/StateFlowSlot;->g()Z

    move-result p2

    if-nez p2, :cond_a6

    iput-object v8, v0, Lkotlinx/coroutines/flow/v$a;->a:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/flow/v$a;->b:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/flow/v$a;->c:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/flow/v$a;->d:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/v$a;->e:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/flow/v$a;->h:I

    invoke-virtual {v6, v0}, Lkotlinx/coroutines/flow/StateFlowSlot;->d(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p2
    :try_end_ec
    .catchall {:try_start_97 .. :try_end_ec} :catchall_73

    if-ne p2, v1, :cond_a6

    return-object v1

    :catchall_ef
    move-exception p1

    move-object v8, p0

    move-object v6, p2

    :goto_f2
    invoke-virtual {v8, v6}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->g(Lkotlinx/coroutines/flow/internal/c;)V

    throw p1
.end method

.method public bridge synthetic d()Lkotlinx/coroutines/flow/internal/c;
    .registers 2

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/v;->l()Lkotlinx/coroutines/flow/StateFlowSlot;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e(I)[Lkotlinx/coroutines/flow/internal/c;
    .registers 2

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/v;->m(I)[Lkotlinx/coroutines/flow/StateFlowSlot;

    move-result-object p1

    return-object p1
.end method

.method public emit(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/v;->setValue(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public getValue()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lkotlinx/coroutines/flow/internal/m;->a:Lkotlinx/coroutines/internal/s;

    invoke-static {}, Lkotlinx/coroutines/flow/v;->n()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_d

    const/4 v1, 0x0

    :cond_d
    return-object v1
.end method

.method public h(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    if-nez p1, :cond_4

    sget-object p1, Lkotlinx/coroutines/flow/internal/m;->a:Lkotlinx/coroutines/internal/s;

    :cond_4
    if-nez p2, :cond_8

    sget-object p2, Lkotlinx/coroutines/flow/internal/m;->a:Lkotlinx/coroutines/internal/s;

    :cond_8
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/flow/v;->o(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public i()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MutableStateFlow.resetReplayCache is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected l()Lkotlinx/coroutines/flow/StateFlowSlot;
    .registers 2

    new-instance v0, Lkotlinx/coroutines/flow/StateFlowSlot;

    invoke-direct {v0}, Lkotlinx/coroutines/flow/StateFlowSlot;-><init>()V

    return-object v0
.end method

.method protected m(I)[Lkotlinx/coroutines/flow/StateFlowSlot;
    .registers 2

    new-array p1, p1, [Lkotlinx/coroutines/flow/StateFlowSlot;

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_4

    sget-object p1, Lkotlinx/coroutines/flow/internal/m;->a:Lkotlinx/coroutines/internal/s;

    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lkotlinx/coroutines/flow/v;->o(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
