###### Class kotlinx.coroutines.CancellableContinuationImpl (kotlinx.coroutines.i)
.class public Lkotlinx/coroutines/i;
.super Lkotlinx/coroutines/w;
.source "CancellableContinuationImpl.kt"

# interfaces
.implements Lkotlinx/coroutines/CancellableContinuation;
.implements Lkotlin/coroutines/jvm/internal/d;
.implements Lkotlinx/coroutines/k1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/w<",
        "TT;>;",
        "Lkotlinx/coroutines/CancellableContinuation<",
        "TT;>;",
        "Lkotlin/coroutines/jvm/internal/d;",
        "Lkotlinx/coroutines/k1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00d2\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0001\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0011\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u00032\u00060\u0004j\u0002`\u00052\u00020\u0006B\u001b\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0012\u0010+\u001a\u00020,2\u0008\u0010-\u001a\u0004\u0018\u00010\u0012H\u0002J\u0018\u0010.\u001a\u00020/2\u0006\u00100\u001a\u0002012\u0008\u00102\u001a\u0004\u0018\u000103J\u001a\u0010.\u001a\u00020/2\u0006\u00100\u001a\u0002042\u0008\u00102\u001a\u0004\u0018\u000103H\u0002J\u0017\u00105\u001a\u00020/2\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u00020/07H\u0082\u0008J1\u00108\u001a\u00020/2!\u00109\u001a\u001d\u0012\u0013\u0012\u001103\u00a2\u0006\u000c\u0008;\u0012\u0008\u0008<\u0012\u0004\u0008\u0008(2\u0012\u0004\u0012\u00020/0:2\u0006\u00102\u001a\u000203J\u001e\u0010=\u001a\u00020/2\n\u0010>\u001a\u0006\u0012\u0002\u0008\u00030?2\u0008\u00102\u001a\u0004\u0018\u000103H\u0002J\u0012\u0010@\u001a\u00020\u001d2\u0008\u00102\u001a\u0004\u0018\u000103H\u0016J\u001f\u0010A\u001a\u00020/2\u0008\u0010B\u001a\u0004\u0018\u00010\u00122\u0006\u00102\u001a\u000203H\u0010\u00a2\u0006\u0002\u0008CJ\u0010\u0010D\u001a\u00020\u001d2\u0006\u00102\u001a\u000203H\u0002J\u0010\u0010E\u001a\u00020/2\u0006\u0010F\u001a\u00020\u0012H\u0016J\r\u0010G\u001a\u00020/H\u0000\u00a2\u0006\u0002\u0008HJ\u0008\u0010I\u001a\u00020/H\u0002J\u0010\u0010J\u001a\u00020/2\u0006\u0010K\u001a\u00020\nH\u0002J\u0010\u0010L\u001a\u0002032\u0006\u0010M\u001a\u00020NH\u0016J\u0019\u0010O\u001a\u0004\u0018\u0001032\u0008\u0010$\u001a\u0004\u0018\u00010\u0012H\u0010\u00a2\u0006\u0002\u0008PJ\n\u0010Q\u001a\u0004\u0018\u00010\u0012H\u0001J\u0010\u0010R\u001a\n\u0018\u00010Sj\u0004\u0018\u0001`TH\u0016J\u001f\u0010U\u001a\u0002H\u0001\"\u0004\u0008\u0001\u0010\u00012\u0008\u0010$\u001a\u0004\u0018\u00010\u0012H\u0010\u00a2\u0006\u0004\u0008V\u0010WJ\u0008\u0010X\u001a\u00020/H\u0016J\n\u0010Y\u001a\u0004\u0018\u00010\u0010H\u0002J1\u0010Z\u001a\u00020/2\'\u00100\u001a#\u0012\u0015\u0012\u0013\u0018\u000103\u00a2\u0006\u000c\u0008;\u0012\u0008\u0008<\u0012\u0004\u0008\u0008(2\u0012\u0004\u0012\u00020/0:j\u0002`[H\u0016J\u001c\u0010Z\u001a\u00020/2\n\u0010>\u001a\u0006\u0012\u0002\u0008\u00030?2\u0006\u0010\\\u001a\u00020\nH\u0016J\u0010\u0010]\u001a\u00020/2\u0006\u00100\u001a\u00020\u0012H\u0002J\u0015\u0010^\u001a\u00020/2\u0006\u00100\u001a\u000201H\u0000\u00a2\u0006\u0002\u0008_J\u0008\u0010`\u001a\u00020\u001dH\u0002J\u001a\u0010a\u001a\u00020/2\u0006\u00100\u001a\u00020\u00122\u0008\u0010$\u001a\u0004\u0018\u00010\u0012H\u0002J\u0008\u0010b\u001a\u00020(H\u0014J\u0015\u0010c\u001a\u00020/2\u0006\u00102\u001a\u000203H\u0000\u00a2\u0006\u0002\u0008dJ\r\u0010e\u001a\u00020/H\u0000\u00a2\u0006\u0002\u0008fJ\u0008\u0010g\u001a\u00020\u001dH\u0001J:\u0010h\u001a\u00020/2\u0006\u0010i\u001a\u00028\u00002#\u00109\u001a\u001f\u0012\u0013\u0012\u001103\u00a2\u0006\u000c\u0008;\u0012\u0008\u0008<\u0012\u0004\u0008\u0008(2\u0012\u0004\u0012\u00020/\u0018\u00010:H\u0016\u00a2\u0006\u0002\u0010jJA\u0010k\u001a\u00020/2\u0008\u0010-\u001a\u0004\u0018\u00010\u00122\u0006\u0010\t\u001a\u00020\n2%\u0008\u0002\u00109\u001a\u001f\u0012\u0013\u0012\u001103\u00a2\u0006\u000c\u0008;\u0012\u0008\u0008<\u0012\u0004\u0008\u0008(2\u0012\u0004\u0012\u00020/\u0018\u00010:H\u0002J\u001b\u0010l\u001a\u00020/2\u000c\u0010m\u001a\u0008\u0012\u0004\u0012\u00028\u00000nH\u0016\u00a2\u0006\u0002\u0010oJS\u0010p\u001a\u0004\u0018\u00010\u00122\u0006\u0010$\u001a\u00020q2\u0008\u0010-\u001a\u0004\u0018\u00010\u00122\u0006\u0010\t\u001a\u00020\n2#\u00109\u001a\u001f\u0012\u0013\u0012\u001103\u00a2\u0006\u000c\u0008;\u0012\u0008\u0008<\u0012\u0004\u0008\u0008(2\u0012\u0004\u0012\u00020/\u0018\u00010:2\u0008\u0010r\u001a\u0004\u0018\u00010\u0012H\u0002J\u000f\u0010s\u001a\u0004\u0018\u00010\u0012H\u0010\u00a2\u0006\u0002\u0008tJ\u0008\u0010u\u001a\u00020(H\u0016J\u0008\u0010v\u001a\u00020\u001dH\u0002J!\u0010v\u001a\u0004\u0018\u00010\u00122\u0006\u0010i\u001a\u00028\u00002\u0008\u0010r\u001a\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0002\u0010wJF\u0010v\u001a\u0004\u0018\u00010\u00122\u0006\u0010i\u001a\u00028\u00002\u0008\u0010r\u001a\u0004\u0018\u00010\u00122#\u00109\u001a\u001f\u0012\u0013\u0012\u001103\u00a2\u0006\u000c\u0008;\u0012\u0008\u0008<\u0012\u0004\u0008\u0008(2\u0012\u0004\u0012\u00020/\u0018\u00010:H\u0016\u00a2\u0006\u0002\u0010xJC\u0010y\u001a\u0004\u0018\u00010z2\u0008\u0010-\u001a\u0004\u0018\u00010\u00122\u0008\u0010r\u001a\u0004\u0018\u00010\u00122#\u00109\u001a\u001f\u0012\u0013\u0012\u001103\u00a2\u0006\u000c\u0008;\u0012\u0008\u0008<\u0012\u0004\u0008\u0008(2\u0012\u0004\u0012\u00020/\u0018\u00010:H\u0002J\u0012\u0010{\u001a\u0004\u0018\u00010\u00122\u0006\u0010|\u001a\u000203H\u0016J\u0008\u0010}\u001a\u00020\u001dH\u0002J\u001a\u0010~\u001a\u00020/*\u00020\u007f2\u0006\u0010i\u001a\u00028\u0000H\u0016\u00a2\u0006\u0003\u0010\u0080\u0001J\u0015\u0010\u0081\u0001\u001a\u00020/*\u00020\u007f2\u0006\u0010|\u001a\u000203H\u0016R\t\u0010\u000c\u001a\u00020\rX\u0082\u0004R\u0011\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000fX\u0082\u0004R\u0011\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u000fX\u0082\u0004R\u001c\u0010\u0013\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u0017X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u001c\u001a\u00020\u001d8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001eR\u0014\u0010\u001f\u001a\u00020\u001d8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u001eR\u0014\u0010 \u001a\u00020\u001d8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\u001eR\u0016\u0010!\u001a\u0004\u0018\u00010\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010#R\u0016\u0010$\u001a\u0004\u0018\u00010\u00128@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&R\u0014\u0010\'\u001a\u00020(8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010*\u00a8\u0006\u0082\u0001"
    }
    d2 = {
        "Lkotlinx/coroutines/CancellableContinuationImpl;",
        "T",
        "Lkotlinx/coroutines/DispatchedTask;",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "Lkotlinx/coroutines/internal/CoroutineStackFrame;",
        "Lkotlinx/coroutines/Waiter;",
        "delegate",
        "Lkotlin/coroutines/Continuation;",
        "resumeMode",
        "",
        "(Lkotlin/coroutines/Continuation;I)V",
        "_decisionAndIndex",
        "Lkotlinx/atomicfu/AtomicInt;",
        "_parentHandle",
        "Lkotlinx/atomicfu/AtomicRef;",
        "Lkotlinx/coroutines/DisposableHandle;",
        "_state",
        "",
        "callerFrame",
        "getCallerFrame",
        "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "getContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "getDelegate$kotlinx_coroutines_core",
        "()Lkotlin/coroutines/Continuation;",
        "isActive",
        "",
        "()Z",
        "isCancelled",
        "isCompleted",
        "parentHandle",
        "getParentHandle",
        "()Lkotlinx/coroutines/DisposableHandle;",
        "state",
        "getState$kotlinx_coroutines_core",
        "()Ljava/lang/Object;",
        "stateDebugRepresentation",
        "",
        "getStateDebugRepresentation",
        "()Ljava/lang/String;",
        "alreadyResumedError",
        "",
        "proposedUpdate",
        "callCancelHandler",
        "",
        "handler",
        "Lkotlinx/coroutines/CancelHandler;",
        "cause",
        "",
        "Lkotlinx/coroutines/InternalCompletionHandler;",
        "callCancelHandlerSafely",
        "block",
        "Lkotlin/Function0;",
        "callOnCancellation",
        "onCancellation",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "callSegmentOnCancellation",
        "segment",
        "Lkotlinx/coroutines/internal/Segment;",
        "cancel",
        "cancelCompletedResult",
        "takenState",
        "cancelCompletedResult$kotlinx_coroutines_core",
        "cancelLater",
        "completeResume",
        "token",
        "detachChild",
        "detachChild$kotlinx_coroutines_core",
        "detachChildIfNonResuable",
        "dispatchResume",
        "mode",
        "getContinuationCancellationCause",
        "parent",
        "Lkotlinx/coroutines/Job;",
        "getExceptionalResult",
        "getExceptionalResult$kotlinx_coroutines_core",
        "getResult",
        "getStackTraceElement",
        "Ljava/lang/StackTraceElement;",
        "Lkotlinx/coroutines/internal/StackTraceElement;",
        "getSuccessfulResult",
        "getSuccessfulResult$kotlinx_coroutines_core",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "initCancellability",
        "installParentHandle",
        "invokeOnCancellation",
        "Lkotlinx/coroutines/CompletionHandler;",
        "index",
        "invokeOnCancellationImpl",
        "invokeOnCancellationInternal",
        "invokeOnCancellationInternal$kotlinx_coroutines_core",
        "isReusable",
        "multipleHandlersError",
        "nameString",
        "parentCancelled",
        "parentCancelled$kotlinx_coroutines_core",
        "releaseClaimedReusableContinuation",
        "releaseClaimedReusableContinuation$kotlinx_coroutines_core",
        "resetStateReusable",
        "resume",
        "value",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V",
        "resumeImpl",
        "resumeWith",
        "result",
        "Lkotlin/Result;",
        "(Ljava/lang/Object;)V",
        "resumedState",
        "Lkotlinx/coroutines/NotCompleted;",
        "idempotent",
        "takeState",
        "takeState$kotlinx_coroutines_core",
        "toString",
        "tryResume",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "tryResumeImpl",
        "Lkotlinx/coroutines/internal/Symbol;",
        "tryResumeWithException",
        "exception",
        "trySuspend",
        "resumeUndispatched",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Object;)V",
        "resumeUndispatchedWithException",
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
.field private static final synthetic d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final synthetic e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _decisionAndIndex$volatile:I

.field private volatile synthetic _parentHandle$volatile:Ljava/lang/Object;

.field private volatile synthetic _state$volatile:Ljava/lang/Object;

.field private final g:Lkotlin/coroutines/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final h:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Ljava/lang/Object;

    const-class v1, Lkotlinx/coroutines/i;

    const-string v2, "_decisionAndIndex$volatile"

    invoke-static {v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    sput-object v1, Lkotlinx/coroutines/i;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-class v1, Lkotlinx/coroutines/i;

    const-string v2, "_state$volatile"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sput-object v1, Lkotlinx/coroutines/i;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v1, Lkotlinx/coroutines/i;

    const-string v2, "_parentHandle$volatile"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/i;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/d;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lkotlinx/coroutines/w;-><init>(I)V

    iput-object p1, p0, Lkotlinx/coroutines/i;->g:Lkotlin/coroutines/d;

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, -0x1

    if-eq p2, v0, :cond_10

    const/4 p2, 0x1

    goto :goto_11

    :cond_10
    const/4 p2, 0x0

    :goto_11
    if-eqz p2, :cond_14

    goto :goto_1a

    :cond_14
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1a
    :goto_1a
    invoke-interface {p1}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/i;->h:Lkotlin/coroutines/CoroutineContext;

    const p1, 0x1fffffff

    iput p1, p0, Lkotlinx/coroutines/i;->_decisionAndIndex$volatile:I

    sget-object p1, Lkotlinx/coroutines/c;->a:Lkotlinx/coroutines/c;

    iput-object p1, p0, Lkotlinx/coroutines/i;->_state$volatile:Ljava/lang/Object;

    return-void
.end method

.method private final A()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lkotlinx/coroutines/i;->z()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/w0;

    if-eqz v1, :cond_b

    const-string v0, "Active"

    goto :goto_14

    :cond_b
    instance-of v0, v0, Lkotlinx/coroutines/k;

    if-eqz v0, :cond_12

    const-string v0, "Cancelled"

    goto :goto_14

    :cond_12
    const-string v0, "Completed"

    :goto_14
    return-object v0
.end method

.method private static final synthetic B()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .registers 1

    sget-object v0, Lkotlinx/coroutines/i;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method

.method private static final synthetic C()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .registers 1

    sget-object v0, Lkotlinx/coroutines/i;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private static final synthetic D()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .registers 1

    sget-object v0, Lkotlinx/coroutines/i;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final H()Lkotlinx/coroutines/z;
    .registers 8

    invoke-virtual {p0}, Lkotlinx/coroutines/i;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/Job;->g0:Lkotlinx/coroutines/Job$a;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$a;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/Job;

    const/4 v0, 0x0

    if-nez v1, :cond_11

    return-object v0

    :cond_11
    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Lkotlinx/coroutines/l;

    invoke-direct {v4, p0}, Lkotlinx/coroutines/l;-><init>(Lkotlinx/coroutines/i;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/JobKt;->invokeOnCompletion$default(Lkotlinx/coroutines/Job;ZZLkotlinx/coroutines/k0;ILjava/lang/Object;)Lkotlinx/coroutines/z;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/i;->C()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object v1
.end method

.method private final I(Ljava/lang/Object;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_20

    instance-of v2, v1, Lkotlinx/coroutines/h;

    if-nez v2, :cond_16

    instance-of v2, v1, Lkotlinx/coroutines/internal/r;

    if-eqz v2, :cond_14

    goto :goto_16

    :cond_14
    const/4 v2, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v2, 0x1

    :goto_17
    if-eqz v2, :cond_1a

    goto :goto_20

    :cond_1a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_20
    :goto_20
    invoke-static {}, Lkotlinx/coroutines/i;->D()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    :cond_24
    :goto_24
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    instance-of v4, v12, Lkotlinx/coroutines/c;

    if-eqz v4, :cond_37

    invoke-static {}, Lkotlinx/coroutines/i;->D()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    invoke-virtual {v4, v0, v12, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    return-void

    :cond_37
    instance-of v4, v12, Lkotlinx/coroutines/h;

    if-eqz v4, :cond_3d

    const/4 v4, 0x1

    goto :goto_3f

    :cond_3d
    instance-of v4, v12, Lkotlinx/coroutines/internal/r;

    :goto_3f
    if-eqz v4, :cond_45

    invoke-direct {v0, v1, v12}, Lkotlinx/coroutines/i;->L(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_24

    :cond_45
    instance-of v4, v12, Lkotlinx/coroutines/o;

    if-eqz v4, :cond_77

    move-object v2, v12

    check-cast v2, Lkotlinx/coroutines/o;

    invoke-virtual {v2}, Lkotlinx/coroutines/o;->c()Z

    move-result v3

    if-nez v3, :cond_55

    invoke-direct {v0, v1, v12}, Lkotlinx/coroutines/i;->L(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_55
    instance-of v3, v12, Lkotlinx/coroutines/k;

    if-eqz v3, :cond_76

    const/4 v3, 0x0

    if-eqz v4, :cond_5d

    goto :goto_5e

    :cond_5d
    move-object v2, v3

    :goto_5e
    if-eqz v2, :cond_62

    iget-object v3, v2, Lkotlinx/coroutines/o;->b:Ljava/lang/Throwable;

    :cond_62
    instance-of v2, v1, Lkotlinx/coroutines/h;

    if-eqz v2, :cond_6c

    check-cast v1, Lkotlinx/coroutines/h;

    invoke-virtual {v0, v1, v3}, Lkotlinx/coroutines/i;->l(Lkotlinx/coroutines/h;Ljava/lang/Throwable;)V

    goto :goto_76

    :cond_6c
    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.internal.Segment<*>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lkotlinx/coroutines/internal/r;

    invoke-direct {v0, v1, v3}, Lkotlinx/coroutines/i;->q(Lkotlinx/coroutines/internal/r;Ljava/lang/Throwable;)V

    :cond_76
    :goto_76
    return-void

    :cond_77
    instance-of v4, v12, Lkotlinx/coroutines/CompletedContinuation;

    const-string v5, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler"

    if-eqz v4, :cond_b8

    move-object v13, v12

    check-cast v13, Lkotlinx/coroutines/CompletedContinuation;

    iget-object v4, v13, Lkotlinx/coroutines/CompletedContinuation;->b:Lkotlinx/coroutines/h;

    if-eqz v4, :cond_87

    invoke-direct {v0, v1, v12}, Lkotlinx/coroutines/i;->L(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_87
    instance-of v4, v1, Lkotlinx/coroutines/internal/r;

    if-eqz v4, :cond_8c

    return-void

    :cond_8c
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v15, v1

    check-cast v15, Lkotlinx/coroutines/h;

    invoke-virtual {v13}, Lkotlinx/coroutines/CompletedContinuation;->b()Z

    move-result v4

    if-eqz v4, :cond_9e

    iget-object v1, v13, Lkotlinx/coroutines/CompletedContinuation;->e:Ljava/lang/Throwable;

    invoke-virtual {v0, v15, v1}, Lkotlinx/coroutines/i;->l(Lkotlinx/coroutines/h;Ljava/lang/Throwable;)V

    return-void

    :cond_9e
    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1d

    const/16 v20, 0x0

    invoke-static/range {v13 .. v20}, Lkotlinx/coroutines/CompletedContinuation;->copy$default(Lkotlinx/coroutines/CompletedContinuation;Ljava/lang/Object;Lkotlinx/coroutines/h;Lkotlin/jvm/b/l;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)Lkotlinx/coroutines/CompletedContinuation;

    move-result-object v4

    invoke-static {}, Lkotlinx/coroutines/i;->D()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    invoke-virtual {v5, v0, v12, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    return-void

    :cond_b8
    instance-of v4, v1, Lkotlinx/coroutines/internal/r;

    if-eqz v4, :cond_bd

    return-void

    :cond_bd
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v1

    check-cast v6, Lkotlinx/coroutines/h;

    new-instance v13, Lkotlinx/coroutines/CompletedContinuation;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1c

    const/4 v11, 0x0

    move-object v4, v13

    move-object v5, v12

    invoke-direct/range {v4 .. v11}, Lkotlinx/coroutines/CompletedContinuation;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/h;Lkotlin/jvm/b/l;Ljava/lang/Object;Ljava/lang/Throwable;ILkotlin/jvm/internal/n;)V

    invoke-static {}, Lkotlinx/coroutines/i;->D()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    invoke-virtual {v4, v0, v12, v13}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    return-void
.end method

.method private final K()Z
    .registers 3

    iget v0, p0, Lkotlinx/coroutines/w;->c:I

    invoke-static {v0}, Lkotlinx/coroutines/DispatchedTaskKt;->isReusableMode(I)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lkotlinx/coroutines/i;->g:Lkotlin/coroutines/d;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->s()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0
.end method

.method private final L(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "It\'s prohibited to register multiple handlers, tried to register "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", already has "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final R(Ljava/lang/Object;ILkotlin/jvm/b/l;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/i;->D()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    :cond_4
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lkotlinx/coroutines/w0;

    if-eqz v2, :cond_29

    move-object v4, v1

    check-cast v4, Lkotlinx/coroutines/w0;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lkotlinx/coroutines/i;->T(Lkotlinx/coroutines/w0;Ljava/lang/Object;ILkotlin/jvm/b/l;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/i;->D()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    invoke-virtual {v3, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lkotlinx/coroutines/i;->t()V

    invoke-direct {p0, p2}, Lkotlinx/coroutines/i;->v(I)V

    return-void

    :cond_29
    instance-of p2, v1, Lkotlinx/coroutines/k;

    if-eqz p2, :cond_3d

    check-cast v1, Lkotlinx/coroutines/k;

    invoke-virtual {v1}, Lkotlinx/coroutines/k;->e()Z

    move-result p2

    if-eqz p2, :cond_3d

    if-eqz p3, :cond_3c

    iget-object p1, v1, Lkotlinx/coroutines/o;->b:Ljava/lang/Throwable;

    invoke-virtual {p0, p3, p1}, Lkotlinx/coroutines/i;->o(Lkotlin/jvm/b/l;Ljava/lang/Throwable;)V

    :cond_3c
    return-void

    :cond_3d
    invoke-direct {p0, p1}, Lkotlinx/coroutines/i;->k(Ljava/lang/Object;)Ljava/lang/Void;

    new-instance p1, Lkotlin/f;

    invoke-direct {p1}, Lkotlin/f;-><init>()V

    throw p1
.end method

.method static synthetic S(Lkotlinx/coroutines/i;Ljava/lang/Object;ILkotlin/jvm/b/l;ILjava/lang/Object;)V
    .registers 6

    if-nez p5, :cond_b

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_7

    const/4 p3, 0x0

    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/i;->R(Ljava/lang/Object;ILkotlin/jvm/b/l;)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: resumeImpl"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final T(Lkotlinx/coroutines/w0;Ljava/lang/Object;ILkotlin/jvm/b/l;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/w0;",
            "Ljava/lang/Object;",
            "I",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/v;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/o;

    if-eqz v0, :cond_2d

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_1a

    if-nez p5, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    if-eqz p1, :cond_14

    goto :goto_1a

    :cond_14
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1a
    :goto_1a
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result p1

    if-eqz p1, :cond_55

    if-nez p4, :cond_23

    goto :goto_24

    :cond_23
    const/4 p3, 0x0

    :goto_24
    if-eqz p3, :cond_27

    goto :goto_55

    :cond_27
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2d
    invoke-static {p3}, Lkotlinx/coroutines/DispatchedTaskKt;->isCancellableMode(I)Z

    move-result p3

    if-nez p3, :cond_36

    if-nez p5, :cond_36

    goto :goto_55

    :cond_36
    if-nez p4, :cond_3e

    instance-of p3, p1, Lkotlinx/coroutines/h;

    if-nez p3, :cond_3e

    if-eqz p5, :cond_55

    :cond_3e
    new-instance p3, Lkotlinx/coroutines/CompletedContinuation;

    instance-of v0, p1, Lkotlinx/coroutines/h;

    if-eqz v0, :cond_47

    check-cast p1, Lkotlinx/coroutines/h;

    goto :goto_48

    :cond_47
    const/4 p1, 0x0

    :goto_48
    move-object v2, p1

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p3

    move-object v1, p2

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v7}, Lkotlinx/coroutines/CompletedContinuation;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/h;Lkotlin/jvm/b/l;Ljava/lang/Object;Ljava/lang/Throwable;ILkotlin/jvm/internal/n;)V

    move-object p2, p3

    :cond_55
    :goto_55
    return-object p2
.end method

.method private final U()Z
    .registers 7

    invoke-static {}, Lkotlinx/coroutines/i;->B()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    :cond_4
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    shr-int/lit8 v2, v1, 0x1d

    const/4 v3, 0x1

    if-eqz v2, :cond_1d

    if-ne v2, v3, :cond_11

    const/4 v0, 0x0

    return v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already resumed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    invoke-static {}, Lkotlinx/coroutines/i;->B()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    const v4, 0x1fffffff

    and-int/2addr v4, v1

    const/high16 v5, 0x40000000    # 2.0f

    add-int/2addr v5, v4

    invoke-virtual {v2, p0, v1, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_4

    return v3
.end method

.method private final V(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/b/l;)Lkotlinx/coroutines/internal/s;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/v;",
            ">;)",
            "Lkotlinx/coroutines/internal/s;"
        }
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/i;->D()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    :cond_4
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lkotlinx/coroutines/w0;

    if-eqz v2, :cond_29

    move-object v4, v1

    check-cast v4, Lkotlinx/coroutines/w0;

    iget v6, p0, Lkotlinx/coroutines/w;->c:I

    move-object v3, p0

    move-object v5, p1

    move-object v7, p3

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lkotlinx/coroutines/i;->T(Lkotlinx/coroutines/w0;Ljava/lang/Object;ILkotlin/jvm/b/l;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/i;->D()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    invoke-virtual {v3, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lkotlinx/coroutines/i;->t()V

    sget-object p1, Lkotlinx/coroutines/j;->a:Lkotlinx/coroutines/internal/s;

    return-object p1

    :cond_29
    instance-of p3, v1, Lkotlinx/coroutines/CompletedContinuation;

    const/4 v0, 0x0

    if-eqz p3, :cond_4d

    if-eqz p2, :cond_4d

    check-cast v1, Lkotlinx/coroutines/CompletedContinuation;

    iget-object p3, v1, Lkotlinx/coroutines/CompletedContinuation;->d:Ljava/lang/Object;

    if-ne p3, p2, :cond_4d

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result p2

    if-eqz p2, :cond_4b

    iget-object p2, v1, Lkotlinx/coroutines/CompletedContinuation;->a:Ljava/lang/Object;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    goto :goto_4b

    :cond_45
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4b
    :goto_4b
    sget-object v0, Lkotlinx/coroutines/j;->a:Lkotlinx/coroutines/internal/s;

    :cond_4d
    return-object v0
.end method

.method private final W()Z
    .registers 6

    invoke-static {}, Lkotlinx/coroutines/i;->B()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    :cond_4
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    shr-int/lit8 v2, v1, 0x1d

    if-eqz v2, :cond_1d

    const/4 v0, 0x2

    if-ne v2, v0, :cond_11

    const/4 v0, 0x0

    return v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already suspended"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    invoke-static {}, Lkotlinx/coroutines/i;->B()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    const v3, 0x1fffffff

    and-int/2addr v3, v1

    const/high16 v4, 0x20000000

    add-int/2addr v4, v3

    invoke-virtual {v2, p0, v1, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    return v0
.end method

.method private final k(Ljava/lang/Object;)Ljava/lang/Void;
    .registers 5

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already resumed, but proposed with update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final q(Lkotlinx/coroutines/internal/r;Ljava/lang/Throwable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/r<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/i;->B()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    if-eqz v1, :cond_3a

    :try_start_13
    invoke-virtual {p0}, Lkotlinx/coroutines/i;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lkotlinx/coroutines/internal/r;->r(ILjava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1b

    goto :goto_39

    :catchall_1b
    move-exception p1

    invoke-virtual {p0}, Lkotlinx/coroutines/i;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    new-instance v0, Lkotlinx/coroutines/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in invokeOnCancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/p;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, v0}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    :goto_39
    return-void

    :cond_3a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The index for Segment.onCancellation(..) is broken"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final r(Ljava/lang/Throwable;)Z
    .registers 4

    invoke-direct {p0}, Lkotlinx/coroutines/i;->K()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    iget-object v0, p0, Lkotlinx/coroutines/i;->g:Lkotlin/coroutines/d;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/internal/DispatchedContinuation;->t(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method private final t()V
    .registers 2

    invoke-direct {p0}, Lkotlinx/coroutines/i;->K()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lkotlinx/coroutines/i;->s()V

    :cond_9
    return-void
.end method

.method private final v(I)V
    .registers 3

    invoke-direct {p0}, Lkotlinx/coroutines/i;->U()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-static {p0, p1}, Lkotlinx/coroutines/DispatchedTaskKt;->dispatch(Lkotlinx/coroutines/w;I)V

    return-void
.end method

.method private final x()Lkotlinx/coroutines/z;
    .registers 2

    invoke-static {}, Lkotlinx/coroutines/i;->C()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/z;

    return-object v0
.end method


# virtual methods
.method public E()V
    .registers 3

    invoke-direct {p0}, Lkotlinx/coroutines/i;->H()Lkotlinx/coroutines/z;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lkotlinx/coroutines/i;->d()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Lkotlinx/coroutines/z;->dispose()V

    invoke-static {}, Lkotlinx/coroutines/i;->C()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/v0;->a:Lkotlinx/coroutines/v0;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    return-void
.end method

.method public F(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/b/l;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/i;->V(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/b/l;)Lkotlinx/coroutines/internal/s;

    move-result-object p1

    return-object p1
.end method

.method public G(Lkotlinx/coroutines/r;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/r;",
            "TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/i;->g:Lkotlin/coroutines/d;

    instance-of v1, v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    check-cast v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    goto :goto_b

    :cond_a
    move-object v0, v2

    :goto_b
    if-eqz v0, :cond_f

    iget-object v2, v0, Lkotlinx/coroutines/internal/DispatchedContinuation;->e:Lkotlinx/coroutines/r;

    :cond_f
    if-ne v2, p1, :cond_14

    const/4 p1, 0x4

    const/4 v2, 0x4

    goto :goto_17

    :cond_14
    iget p1, p0, Lkotlinx/coroutines/w;->c:I

    move v2, p1

    :goto_17
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->S(Lkotlinx/coroutines/i;Ljava/lang/Object;ILkotlin/jvm/b/l;ILjava/lang/Object;)V

    return-void
.end method

.method public final J(Lkotlinx/coroutines/h;)V
    .registers 2

    invoke-direct {p0, p1}, Lkotlinx/coroutines/i;->I(Ljava/lang/Object;)V

    return-void
.end method

.method protected M()Ljava/lang/String;
    .registers 2

    const-string v0, "CancellableContinuation"

    return-object v0
.end method

.method public final N(Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1}, Lkotlinx/coroutines/i;->r(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/i;->a(Ljava/lang/Throwable;)Z

    invoke-direct {p0}, Lkotlinx/coroutines/i;->t()V

    return-void
.end method

.method public O(Ljava/lang/Object;)V
    .registers 3

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lkotlinx/coroutines/j;->a:Lkotlinx/coroutines/internal/s;

    if-ne p1, v0, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    if-eqz p1, :cond_10

    goto :goto_16

    :cond_10
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_16
    :goto_16
    iget p1, p0, Lkotlinx/coroutines/w;->c:I

    invoke-direct {p0, p1}, Lkotlinx/coroutines/i;->v(I)V

    return-void
.end method

.method public final P()V
    .registers 3

    iget-object v0, p0, Lkotlinx/coroutines/i;->g:Lkotlin/coroutines/d;

    instance-of v1, v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    if-eqz v1, :cond_9

    check-cast v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_19

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->w(Lkotlinx/coroutines/CancellableContinuation;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_19

    :cond_13
    invoke-virtual {p0}, Lkotlinx/coroutines/i;->s()V

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/i;->a(Ljava/lang/Throwable;)Z

    :cond_19
    :goto_19
    return-void
.end method

.method public final Q()Z
    .registers 5

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_19

    iget v0, p0, Lkotlinx/coroutines/w;->c:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_13

    goto :goto_19

    :cond_13
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_19
    :goto_19
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-direct {p0}, Lkotlinx/coroutines/i;->x()Lkotlinx/coroutines/z;

    move-result-object v0

    sget-object v3, Lkotlinx/coroutines/v0;->a:Lkotlinx/coroutines/v0;

    if-eq v0, v3, :cond_29

    const/4 v0, 0x1

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    if-eqz v0, :cond_2d

    goto :goto_33

    :cond_2d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_33
    :goto_33
    invoke-static {}, Lkotlinx/coroutines/i;->D()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v3

    if-eqz v3, :cond_4d

    instance-of v3, v0, Lkotlinx/coroutines/w0;

    xor-int/2addr v3, v2

    if-eqz v3, :cond_47

    goto :goto_4d

    :cond_47
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4d
    :goto_4d
    instance-of v3, v0, Lkotlinx/coroutines/CompletedContinuation;

    if-eqz v3, :cond_5b

    check-cast v0, Lkotlinx/coroutines/CompletedContinuation;

    iget-object v0, v0, Lkotlinx/coroutines/CompletedContinuation;->d:Ljava/lang/Object;

    if-eqz v0, :cond_5b

    invoke-virtual {p0}, Lkotlinx/coroutines/i;->s()V

    return v1

    :cond_5b
    invoke-static {}, Lkotlinx/coroutines/i;->B()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    const v1, 0x1fffffff

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    invoke-static {}, Lkotlinx/coroutines/i;->D()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/c;->a:Lkotlinx/coroutines/c;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return v2
.end method

.method public a(Ljava/lang/Throwable;)Z
    .registers 8

    invoke-static {}, Lkotlinx/coroutines/i;->D()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    :cond_4
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lkotlinx/coroutines/w0;

    const/4 v3, 0x0

    if-nez v2, :cond_e

    return v3

    :cond_e
    new-instance v2, Lkotlinx/coroutines/k;

    instance-of v4, v1, Lkotlinx/coroutines/h;

    const/4 v5, 0x1

    if-nez v4, :cond_19

    instance-of v4, v1, Lkotlinx/coroutines/internal/r;

    if-eqz v4, :cond_1a

    :cond_19
    const/4 v3, 0x1

    :cond_1a
    invoke-direct {v2, p0, p1, v3}, Lkotlinx/coroutines/k;-><init>(Lkotlin/coroutines/d;Ljava/lang/Throwable;Z)V

    invoke-static {}, Lkotlinx/coroutines/i;->D()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    invoke-virtual {v3, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v0, v1

    check-cast v0, Lkotlinx/coroutines/w0;

    instance-of v2, v0, Lkotlinx/coroutines/h;

    if-eqz v2, :cond_34

    check-cast v1, Lkotlinx/coroutines/h;

    invoke-virtual {p0, v1, p1}, Lkotlinx/coroutines/i;->l(Lkotlinx/coroutines/h;Ljava/lang/Throwable;)V

    goto :goto_3d

    :cond_34
    instance-of v0, v0, Lkotlinx/coroutines/internal/r;

    if-eqz v0, :cond_3d

    check-cast v1, Lkotlinx/coroutines/internal/r;

    invoke-direct {p0, v1, p1}, Lkotlinx/coroutines/i;->q(Lkotlinx/coroutines/internal/r;Ljava/lang/Throwable;)V

    :cond_3d
    :goto_3d
    invoke-direct {p0}, Lkotlinx/coroutines/i;->t()V

    iget p1, p0, Lkotlinx/coroutines/w;->c:I

    invoke-direct {p0, p1}, Lkotlinx/coroutines/i;->v(I)V

    return v5
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 22

    move-object/from16 v0, p0

    invoke-static {}, Lkotlinx/coroutines/i;->D()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    :cond_6
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    instance-of v2, v10, Lkotlinx/coroutines/w0;

    if-nez v2, :cond_69

    instance-of v2, v10, Lkotlinx/coroutines/o;

    if-eqz v2, :cond_13

    return-void

    :cond_13
    instance-of v2, v10, Lkotlinx/coroutines/CompletedContinuation;

    if-eqz v2, :cond_4d

    move-object v2, v10

    check-cast v2, Lkotlinx/coroutines/CompletedContinuation;

    invoke-virtual {v2}, Lkotlinx/coroutines/CompletedContinuation;->b()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_41

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0xf

    const/16 v18, 0x0

    move-object v11, v2

    move-object/from16 v16, p2

    invoke-static/range {v11 .. v18}, Lkotlinx/coroutines/CompletedContinuation;->copy$default(Lkotlinx/coroutines/CompletedContinuation;Ljava/lang/Object;Lkotlinx/coroutines/h;Lkotlin/jvm/b/l;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)Lkotlinx/coroutines/CompletedContinuation;

    move-result-object v3

    invoke-static {}, Lkotlinx/coroutines/i;->D()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    invoke-virtual {v4, v0, v10, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    move-object/from16 v11, p2

    if-eqz v3, :cond_6

    invoke-virtual {v2, v0, v11}, Lkotlinx/coroutines/CompletedContinuation;->c(Lkotlinx/coroutines/i;Ljava/lang/Throwable;)V

    return-void

    :cond_41
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Must be called at most once"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4d
    move-object/from16 v11, p2

    invoke-static {}, Lkotlinx/coroutines/i;->D()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v12

    new-instance v13, Lkotlinx/coroutines/CompletedContinuation;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0xe

    const/4 v9, 0x0

    move-object v2, v13

    move-object v3, v10

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v9}, Lkotlinx/coroutines/CompletedContinuation;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/h;Lkotlin/jvm/b/l;Ljava/lang/Object;Ljava/lang/Throwable;ILkotlin/jvm/internal/n;)V

    invoke-virtual {v12, v0, v10, v13}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-void

    :cond_69
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not completed"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public c(Lkotlinx/coroutines/internal/r;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/r<",
            "*>;I)V"
        }
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/i;->B()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    :cond_4
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x1fffffff

    and-int v3, v1, v2

    if-ne v3, v2, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    if-eqz v2, :cond_23

    shr-int/lit8 v2, v1, 0x1d

    shl-int/lit8 v2, v2, 0x1d

    add-int/2addr v2, p2

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p1}, Lkotlinx/coroutines/i;->I(Ljava/lang/Object;)V

    return-void

    :cond_23
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "invokeOnCancellation should be called at most once"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()Z
    .registers 2

    invoke-virtual {p0}, Lkotlinx/coroutines/i;->z()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/w0;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lkotlinx/coroutines/i;->V(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/b/l;)Lkotlinx/coroutines/internal/s;

    move-result-object p1

    return-object p1
.end method

.method public final f()Lkotlin/coroutines/d;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/d<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/i;->g:Lkotlin/coroutines/d;

    return-object v0
.end method

.method public g(Ljava/lang/Object;)Ljava/lang/Throwable;
    .registers 4

    invoke-super {p0, p1}, Lkotlinx/coroutines/w;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1a

    iget-object v0, p0, Lkotlinx/coroutines/i;->g:Lkotlin/coroutines/d;

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v1

    if-eqz v1, :cond_1b

    instance-of v1, v0, Lkotlin/coroutines/jvm/internal/d;

    if-nez v1, :cond_13

    goto :goto_1b

    :cond_13
    check-cast v0, Lkotlin/coroutines/jvm/internal/d;

    invoke-static {p1, v0}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->access$recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/d;)Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :cond_1b
    :goto_1b
    return-object p1
.end method

.method public getCallerFrame()Lkotlin/coroutines/jvm/internal/d;
    .registers 3

    iget-object v0, p0, Lkotlinx/coroutines/i;->g:Lkotlin/coroutines/d;

    instance-of v1, v0, Lkotlin/coroutines/jvm/internal/d;

    if-eqz v1, :cond_9

    check-cast v0, Lkotlin/coroutines/jvm/internal/d;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .registers 2

    iget-object v0, p0, Lkotlinx/coroutines/i;->h:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public h(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/CompletedContinuation;

    if-eqz v0, :cond_8

    check-cast p1, Lkotlinx/coroutines/CompletedContinuation;

    iget-object p1, p1, Lkotlinx/coroutines/CompletedContinuation;->a:Ljava/lang/Object;

    :cond_8
    return-object p1
.end method

.method public j()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlinx/coroutines/i;->z()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final l(Lkotlinx/coroutines/h;Ljava/lang/Throwable;)V
    .registers 6

    :try_start_0
    invoke-interface {p1, p2}, Lkotlinx/coroutines/h;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_22

    :catchall_4
    move-exception p1

    invoke-virtual {p0}, Lkotlinx/coroutines/i;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    new-instance v0, Lkotlinx/coroutines/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in invokeOnCancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/p;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, v0}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    :goto_22
    return-void
.end method

.method public m(Lkotlin/jvm/b/l;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/h$a;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/h$a;-><init>(Lkotlin/jvm/b/l;)V

    invoke-static {p0, v0}, Lkotlinx/coroutines/CancellableContinuationKt;->invokeOnCancellation(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/h;)V

    return-void
.end method

.method public n(Ljava/lang/Throwable;)Ljava/lang/Object;
    .registers 6

    new-instance v0, Lkotlinx/coroutines/o;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lkotlinx/coroutines/o;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/n;)V

    invoke-direct {p0, v0, v3, v3}, Lkotlinx/coroutines/i;->V(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/b/l;)Lkotlinx/coroutines/internal/s;

    move-result-object p1

    return-object p1
.end method

.method public final o(Lkotlin/jvm/b/l;Ljava/lang/Throwable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/v;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1, p2}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_22

    :catchall_4
    move-exception p1

    invoke-virtual {p0}, Lkotlinx/coroutines/i;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    new-instance v0, Lkotlinx/coroutines/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in resume onCancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/p;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, v0}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    :goto_22
    return-void
.end method

.method public p(Lkotlinx/coroutines/r;Ljava/lang/Throwable;)V
    .registers 12

    iget-object v0, p0, Lkotlinx/coroutines/i;->g:Lkotlin/coroutines/d;

    instance-of v1, v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    check-cast v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    goto :goto_b

    :cond_a
    move-object v0, v2

    :goto_b
    new-instance v4, Lkotlinx/coroutines/o;

    const/4 v1, 0x0

    const/4 v3, 0x2

    invoke-direct {v4, p2, v1, v3, v2}, Lkotlinx/coroutines/o;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/n;)V

    if-eqz v0, :cond_16

    iget-object v2, v0, Lkotlinx/coroutines/internal/DispatchedContinuation;->e:Lkotlinx/coroutines/r;

    :cond_16
    if-ne v2, p1, :cond_1b

    const/4 p1, 0x4

    const/4 v5, 0x4

    goto :goto_1e

    :cond_1b
    iget p1, p0, Lkotlinx/coroutines/w;->c:I

    move v5, p1

    :goto_1e
    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->S(Lkotlinx/coroutines/i;Ljava/lang/Object;ILkotlin/jvm/b/l;ILjava/lang/Object;)V

    return-void
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .registers 8

    invoke-static {p1, p0}, Lkotlinx/coroutines/CompletionStateKt;->toState(Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lkotlinx/coroutines/w;->c:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->S(Lkotlinx/coroutines/i;Ljava/lang/Object;ILkotlin/jvm/b/l;ILjava/lang/Object;)V

    return-void
.end method

.method public final s()V
    .registers 3

    invoke-direct {p0}, Lkotlinx/coroutines/i;->x()Lkotlinx/coroutines/z;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-interface {v0}, Lkotlinx/coroutines/z;->dispose()V

    invoke-static {}, Lkotlinx/coroutines/i;->C()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/v0;->a:Lkotlinx/coroutines/v0;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlinx/coroutines/i;->M()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/i;->g:Lkotlin/coroutines/d;

    invoke-static {v1}, Lkotlinx/coroutines/DebugStringsKt;->toDebugString(Lkotlin/coroutines/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lkotlinx/coroutines/i;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Ljava/lang/Object;Lkotlin/jvm/b/l;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lkotlinx/coroutines/w;->c:I

    invoke-direct {p0, p1, v0, p2}, Lkotlinx/coroutines/i;->R(Ljava/lang/Object;ILkotlin/jvm/b/l;)V

    return-void
.end method

.method public w(Lkotlinx/coroutines/Job;)Ljava/lang/Throwable;
    .registers 2

    invoke-interface {p1}, Lkotlinx/coroutines/Job;->i()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    return-object p1
.end method

.method public final y()Ljava/lang/Object;
    .registers 4

    invoke-direct {p0}, Lkotlinx/coroutines/i;->K()Z

    move-result v0

    invoke-direct {p0}, Lkotlinx/coroutines/i;->W()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-direct {p0}, Lkotlinx/coroutines/i;->x()Lkotlinx/coroutines/z;

    move-result-object v1

    if-nez v1, :cond_13

    invoke-direct {p0}, Lkotlinx/coroutines/i;->H()Lkotlinx/coroutines/z;

    :cond_13
    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lkotlinx/coroutines/i;->P()V

    :cond_18
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1d
    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lkotlinx/coroutines/i;->P()V

    :cond_22
    invoke-virtual {p0}, Lkotlinx/coroutines/i;->z()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/o;

    if-eqz v1, :cond_39

    check-cast v0, Lkotlinx/coroutines/o;

    iget-object v0, v0, Lkotlinx/coroutines/o;->b:Ljava/lang/Throwable;

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-static {v0, p0}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->access$recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/d;)Ljava/lang/Throwable;

    move-result-object v0

    :cond_38
    throw v0

    :cond_39
    iget v1, p0, Lkotlinx/coroutines/w;->c:I

    invoke-static {v1}, Lkotlinx/coroutines/DispatchedTaskKt;->isCancellableMode(I)Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-virtual {p0}, Lkotlinx/coroutines/i;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/Job;->g0:Lkotlinx/coroutines/Job$a;

    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$a;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_67

    invoke-interface {v1}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v2

    if-nez v2, :cond_67

    invoke-interface {v1}, Lkotlinx/coroutines/Job;->i()Ljava/util/concurrent/CancellationException;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/i;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-static {v1, p0}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->access$recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/d;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_66
    throw v1

    :cond_67
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/i;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final z()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lkotlinx/coroutines/i;->D()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
