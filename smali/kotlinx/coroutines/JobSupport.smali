###### Class kotlinx.coroutines.JobSupport (kotlinx.coroutines.JobSupport)
.class public Lkotlinx/coroutines/JobSupport;
.super Ljava/lang/Object;
.source "JobSupport.kt"

# interfaces
.implements Lkotlinx/coroutines/Job;
.implements Lkotlinx/coroutines/ChildJob;
.implements Lkotlinx/coroutines/ParentJob;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/JobSupport$a;,
        Lkotlinx/coroutines/JobSupport$b;,
        Lkotlinx/coroutines/JobSupport$c;,
        Lkotlinx/coroutines/JobSupport$d;,
        Lkotlinx/coroutines/JobSupport$e;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00e8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0001\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0017\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\n\u00b5\u0001\u00b6\u0001\u00b7\u0001\u00b8\u0001\u00b9\u0001B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J \u0010A\u001a\u00020\u00052\u0006\u0010B\u001a\u00020\u000b2\u0006\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020FH\u0002J\u001e\u0010G\u001a\u00020H2\u0006\u0010I\u001a\u00020\u00112\u000c\u0010J\u001a\u0008\u0012\u0004\u0012\u00020\u00110KH\u0002J\u0012\u0010L\u001a\u00020H2\u0008\u00108\u001a\u0004\u0018\u00010\u000bH\u0014J\u000e\u0010M\u001a\u00020\t2\u0006\u0010N\u001a\u00020\u0002J\u0010\u0010O\u001a\u0004\u0018\u00010\u000bH\u0084@\u00a2\u0006\u0002\u0010PJ\u0010\u0010Q\u001a\u0004\u0018\u00010\u000bH\u0082@\u00a2\u0006\u0002\u0010PJ\u0012\u0010R\u001a\u00020\u00052\u0008\u0010S\u001a\u0004\u0018\u00010\u0011H\u0017J\u0018\u0010R\u001a\u00020H2\u000e\u0010S\u001a\n\u0018\u00010Tj\u0004\u0018\u0001`UH\u0016J\u0010\u0010V\u001a\u00020\u00052\u0008\u0010S\u001a\u0004\u0018\u00010\u0011J\u0017\u0010W\u001a\u00020\u00052\u0008\u0010S\u001a\u0004\u0018\u00010\u000bH\u0000\u00a2\u0006\u0002\u0008XJ\u0010\u0010Y\u001a\u00020H2\u0006\u0010S\u001a\u00020\u0011H\u0016J\u0014\u0010Z\u001a\u0004\u0018\u00010\u000b2\u0008\u0010S\u001a\u0004\u0018\u00010\u000bH\u0002J\u0010\u0010[\u001a\u00020\u00052\u0006\u0010S\u001a\u00020\u0011H\u0002J\u0008\u0010\\\u001a\u00020]H\u0014J\u0010\u0010^\u001a\u00020\u00052\u0006\u0010S\u001a\u00020\u0011H\u0016J\u001a\u0010_\u001a\u00020H2\u0006\u00108\u001a\u00020?2\u0008\u0010`\u001a\u0004\u0018\u00010\u000bH\u0002J\"\u0010a\u001a\u00020H2\u0006\u00108\u001a\u00020b2\u0006\u0010c\u001a\u00020d2\u0008\u0010e\u001a\u0004\u0018\u00010\u000bH\u0002J\u0012\u0010f\u001a\u00020\u00112\u0008\u0010S\u001a\u0004\u0018\u00010\u000bH\u0002J&\u0010g\u001a\u00020h2\n\u0008\u0002\u0010i\u001a\u0004\u0018\u00010]2\n\u0008\u0002\u0010S\u001a\u0004\u0018\u00010\u0011H\u0080\u0008\u00a2\u0006\u0002\u0008jJ\u001c\u0010k\u001a\u0004\u0018\u00010\u000b2\u0006\u00108\u001a\u00020b2\u0008\u0010e\u001a\u0004\u0018\u00010\u000bH\u0002J\u0012\u0010l\u001a\u0004\u0018\u00010d2\u0006\u00108\u001a\u00020?H\u0002J\n\u0010m\u001a\u00060Tj\u0002`UJ\u000c\u0010n\u001a\u00060Tj\u0002`UH\u0016J\u000f\u0010o\u001a\u0004\u0018\u00010\u000bH\u0000\u00a2\u0006\u0002\u0008pJ\u0008\u0010q\u001a\u0004\u0018\u00010\u0011J \u0010r\u001a\u0004\u0018\u00010\u00112\u0006\u00108\u001a\u00020b2\u000c\u0010J\u001a\u0008\u0012\u0004\u0012\u00020\u00110KH\u0002J\u0012\u0010s\u001a\u0004\u0018\u00010D2\u0006\u00108\u001a\u00020?H\u0002J\u0010\u0010t\u001a\u00020\u00052\u0006\u0010u\u001a\u00020\u0011H\u0014J\u0015\u0010v\u001a\u00020H2\u0006\u0010u\u001a\u00020\u0011H\u0010\u00a2\u0006\u0002\u0008wJ\u0012\u0010x\u001a\u00020H2\u0008\u0010/\u001a\u0004\u0018\u00010\u0001H\u0004JA\u0010y\u001a\u00020z2\u0006\u0010{\u001a\u00020\u00052\u0006\u0010|\u001a\u00020\u00052)\u0010}\u001a%\u0012\u0016\u0012\u0014\u0018\u00010\u0011\u00a2\u0006\r\u0008\u007f\u0012\t\u0008\u0080\u0001\u0012\u0004\u0008\u0008(S\u0012\u0004\u0012\u00020H0~j\u0003`\u0081\u0001J1\u0010y\u001a\u00020z2)\u0010}\u001a%\u0012\u0016\u0012\u0014\u0018\u00010\u0011\u00a2\u0006\r\u0008\u007f\u0012\t\u0008\u0080\u0001\u0012\u0004\u0008\u0008(S\u0012\u0004\u0012\u00020H0~j\u0003`\u0081\u0001J(\u0010\u0082\u0001\u001a\u00020z2\u0006\u0010{\u001a\u00020\u00052\u0006\u0010|\u001a\u00020\u00052\u0007\u0010}\u001a\u00030\u0083\u0001H\u0000\u00a2\u0006\u0003\u0008\u0084\u0001J\u000f\u0010\u0085\u0001\u001a\u00020HH\u0086@\u00a2\u0006\u0002\u0010PJ\t\u0010\u0086\u0001\u001a\u00020\u0005H\u0002J\u000f\u0010\u0087\u0001\u001a\u00020HH\u0082@\u00a2\u0006\u0002\u0010PJ\"\u0010\u0088\u0001\u001a\u00030\u0089\u00012\u0015\u0010\u008a\u0001\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0012\u0004\u0012\u00020H0~H\u0082\u0008J\u0015\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u000b2\u0008\u0010S\u001a\u0004\u0018\u00010\u000bH\u0002J\u0019\u0010\u008c\u0001\u001a\u00020\u00052\u0008\u0010e\u001a\u0004\u0018\u00010\u000bH\u0000\u00a2\u0006\u0003\u0008\u008d\u0001J\u001b\u0010\u008e\u0001\u001a\u0004\u0018\u00010\u000b2\u0008\u0010e\u001a\u0004\u0018\u00010\u000bH\u0000\u00a2\u0006\u0003\u0008\u008f\u0001J\u001a\u0010\u0090\u0001\u001a\u00020F2\u0007\u0010}\u001a\u00030\u0083\u00012\u0006\u0010{\u001a\u00020\u0005H\u0002J\u000f\u0010\u0091\u0001\u001a\u00020]H\u0010\u00a2\u0006\u0003\u0008\u0092\u0001J\u0019\u0010\u0093\u0001\u001a\u00020H2\u0006\u0010C\u001a\u00020D2\u0006\u0010S\u001a\u00020\u0011H\u0002J)\u0010\u0094\u0001\u001a\u00020H\"\u000b\u0008\u0000\u0010\u0095\u0001\u0018\u0001*\u00020F2\u0006\u0010C\u001a\u00020D2\u0008\u0010S\u001a\u0004\u0018\u00010\u0011H\u0082\u0008J!\u0010\u0096\u0001\u001a\u0004\u0018\u00010\u000b2\t\u0010\u0097\u0001\u001a\u0004\u0018\u00010\u000b2\t\u0010\u0098\u0001\u001a\u0004\u0018\u00010\u000bH\u0002J\"\u0010\u0099\u0001\u001a\u00020H2\u000c\u0010\u009a\u0001\u001a\u0007\u0012\u0002\u0008\u00030\u009b\u00012\t\u0010\u0097\u0001\u001a\u0004\u0018\u00010\u000bH\u0002J\u0012\u0010{\u001a\u00020H2\u0008\u0010S\u001a\u0004\u0018\u00010\u0011H\u0014J\u0013\u0010\u009c\u0001\u001a\u00020H2\u0008\u00108\u001a\u0004\u0018\u00010\u000bH\u0014J\t\u0010\u009d\u0001\u001a\u00020HH\u0014J\u0010\u0010\u009e\u0001\u001a\u00020H2\u0007\u0010\u009f\u0001\u001a\u00020\u0003J\u0012\u0010\u00a0\u0001\u001a\u00020H2\u0007\u00108\u001a\u00030\u00a1\u0001H\u0002J\u0011\u0010\u00a2\u0001\u001a\u00020H2\u0006\u00108\u001a\u00020FH\u0002J\"\u0010\u00a3\u0001\u001a\u00020H2\u000c\u0010\u009a\u0001\u001a\u0007\u0012\u0002\u0008\u00030\u009b\u00012\t\u0010\u0097\u0001\u001a\u0004\u0018\u00010\u000bH\u0002J\u0017\u0010\u00a4\u0001\u001a\u00020H2\u0006\u0010E\u001a\u00020FH\u0000\u00a2\u0006\u0003\u0008\u00a5\u0001J\u0007\u0010\u00a6\u0001\u001a\u00020\u0005J\u0014\u0010\u00a7\u0001\u001a\u00030\u00a8\u00012\u0008\u00108\u001a\u0004\u0018\u00010\u000bH\u0002J\u0013\u0010\u00a9\u0001\u001a\u00020]2\u0008\u00108\u001a\u0004\u0018\u00010\u000bH\u0002J\t\u0010\u00aa\u0001\u001a\u00020]H\u0007J\t\u0010\u00ab\u0001\u001a\u00020]H\u0016J\u001b\u0010\u00ac\u0001\u001a\u00020\u00052\u0006\u00108\u001a\u00020?2\u0008\u0010`\u001a\u0004\u0018\u00010\u000bH\u0002J\u0019\u0010\u00ad\u0001\u001a\u00020\u00052\u0006\u00108\u001a\u00020?2\u0006\u0010I\u001a\u00020\u0011H\u0002J\u001f\u0010\u00ae\u0001\u001a\u0004\u0018\u00010\u000b2\u0008\u00108\u001a\u0004\u0018\u00010\u000b2\u0008\u0010e\u001a\u0004\u0018\u00010\u000bH\u0002J\u001d\u0010\u00af\u0001\u001a\u0004\u0018\u00010\u000b2\u0006\u00108\u001a\u00020?2\u0008\u0010e\u001a\u0004\u0018\u00010\u000bH\u0002J$\u0010\u00b0\u0001\u001a\u00020\u00052\u0006\u00108\u001a\u00020b2\u0006\u0010N\u001a\u00020d2\u0008\u0010e\u001a\u0004\u0018\u00010\u000bH\u0082\u0010J\u0010\u0010\u00b1\u0001\u001a\u0004\u0018\u00010d*\u00030\u00b2\u0001H\u0002J\u0017\u0010\u00b3\u0001\u001a\u00020H*\u00020D2\u0008\u0010S\u001a\u0004\u0018\u00010\u0011H\u0002J\u001d\u0010\u00b4\u0001\u001a\u00060Tj\u0002`U*\u00020\u00112\n\u0008\u0002\u0010i\u001a\u0004\u0018\u00010]H\u0004R\u0011\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0008X\u0082\u0004R\u0011\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0008X\u0082\u0004R\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00010\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u00118DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u00058DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\u00058PX\u0090\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0016R\u0014\u0010\u0019\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u0016R\u0011\u0010\u001a\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0016R\u0011\u0010\u001b\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u0016R\u0011\u0010\u001c\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u0016R\u0014\u0010\u001d\u001a\u00020\u00058TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u0016R\u0015\u0010\u001e\u001a\u0006\u0012\u0002\u0008\u00030\u001f8F\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R\u001e\u0010\"\u001a\u0006\u0012\u0002\u0008\u00030#8DX\u0084\u0004\u00a2\u0006\u000c\u0012\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'R\u0014\u0010(\u001a\u00020\u00058PX\u0090\u0004\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010\u0016R\u0017\u0010*\u001a\u00020+8F\u00a2\u0006\u000c\u0012\u0004\u0008,\u0010%\u001a\u0004\u0008-\u0010.R\u0016\u0010/\u001a\u0004\u0018\u00010\u00018VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00080\u00101R(\u00103\u001a\u0004\u0018\u00010\t2\u0008\u00102\u001a\u0004\u0018\u00010\t8@@@X\u0080\u000e\u00a2\u0006\u000c\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107R\u0016\u00108\u001a\u0004\u0018\u00010\u000b8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u00089\u0010:R\u001c\u0010;\u001a\u0004\u0018\u00010\u0011*\u0004\u0018\u00010\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008<\u0010=R\u0018\u0010>\u001a\u00020\u0005*\u00020?8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008>\u0010@\u00a8\u0006\u00ba\u0001"
    }
    d2 = {
        "Lkotlinx/coroutines/JobSupport;",
        "Lkotlinx/coroutines/Job;",
        "Lkotlinx/coroutines/ChildJob;",
        "Lkotlinx/coroutines/ParentJob;",
        "active",
        "",
        "(Z)V",
        "_parentHandle",
        "Lkotlinx/atomicfu/AtomicRef;",
        "Lkotlinx/coroutines/ChildHandle;",
        "_state",
        "",
        "children",
        "Lkotlin/sequences/Sequence;",
        "getChildren",
        "()Lkotlin/sequences/Sequence;",
        "completionCause",
        "",
        "getCompletionCause",
        "()Ljava/lang/Throwable;",
        "completionCauseHandled",
        "getCompletionCauseHandled",
        "()Z",
        "handlesException",
        "getHandlesException$kotlinx_coroutines_core",
        "isActive",
        "isCancelled",
        "isCompleted",
        "isCompletedExceptionally",
        "isScopedCoroutine",
        "key",
        "Lkotlin/coroutines/CoroutineContext$Key;",
        "getKey",
        "()Lkotlin/coroutines/CoroutineContext$Key;",
        "onAwaitInternal",
        "Lkotlinx/coroutines/selects/SelectClause1;",
        "getOnAwaitInternal$annotations",
        "()V",
        "getOnAwaitInternal",
        "()Lkotlinx/coroutines/selects/SelectClause1;",
        "onCancelComplete",
        "getOnCancelComplete$kotlinx_coroutines_core",
        "onJoin",
        "Lkotlinx/coroutines/selects/SelectClause0;",
        "getOnJoin$annotations",
        "getOnJoin",
        "()Lkotlinx/coroutines/selects/SelectClause0;",
        "parent",
        "getParent",
        "()Lkotlinx/coroutines/Job;",
        "value",
        "parentHandle",
        "getParentHandle$kotlinx_coroutines_core",
        "()Lkotlinx/coroutines/ChildHandle;",
        "setParentHandle$kotlinx_coroutines_core",
        "(Lkotlinx/coroutines/ChildHandle;)V",
        "state",
        "getState$kotlinx_coroutines_core",
        "()Ljava/lang/Object;",
        "exceptionOrNull",
        "getExceptionOrNull",
        "(Ljava/lang/Object;)Ljava/lang/Throwable;",
        "isCancelling",
        "Lkotlinx/coroutines/Incomplete;",
        "(Lkotlinx/coroutines/Incomplete;)Z",
        "addLastAtomic",
        "expect",
        "list",
        "Lkotlinx/coroutines/NodeList;",
        "node",
        "Lkotlinx/coroutines/JobNode;",
        "addSuppressedExceptions",
        "",
        "rootCause",
        "exceptions",
        "",
        "afterCompletion",
        "attachChild",
        "child",
        "awaitInternal",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "awaitSuspend",
        "cancel",
        "cause",
        "Ljava/util/concurrent/CancellationException;",
        "Lkotlinx/coroutines/CancellationException;",
        "cancelCoroutine",
        "cancelImpl",
        "cancelImpl$kotlinx_coroutines_core",
        "cancelInternal",
        "cancelMakeCompleting",
        "cancelParent",
        "cancellationExceptionMessage",
        "",
        "childCancelled",
        "completeStateFinalization",
        "update",
        "continueCompleting",
        "Lkotlinx/coroutines/JobSupport$Finishing;",
        "lastChild",
        "Lkotlinx/coroutines/ChildHandleNode;",
        "proposedUpdate",
        "createCauseException",
        "defaultCancellationException",
        "Lkotlinx/coroutines/JobCancellationException;",
        "message",
        "defaultCancellationException$kotlinx_coroutines_core",
        "finalizeFinishingState",
        "firstChild",
        "getCancellationException",
        "getChildJobCancellationCause",
        "getCompletedInternal",
        "getCompletedInternal$kotlinx_coroutines_core",
        "getCompletionExceptionOrNull",
        "getFinalRootCause",
        "getOrPromoteCancellingList",
        "handleJobException",
        "exception",
        "handleOnCompletionException",
        "handleOnCompletionException$kotlinx_coroutines_core",
        "initParentJob",
        "invokeOnCompletion",
        "Lkotlinx/coroutines/DisposableHandle;",
        "onCancelling",
        "invokeImmediately",
        "handler",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "Lkotlinx/coroutines/CompletionHandler;",
        "invokeOnCompletionInternal",
        "Lkotlinx/coroutines/InternalCompletionHandler;",
        "invokeOnCompletionInternal$kotlinx_coroutines_core",
        "join",
        "joinInternal",
        "joinSuspend",
        "loopOnState",
        "",
        "block",
        "makeCancelling",
        "makeCompleting",
        "makeCompleting$kotlinx_coroutines_core",
        "makeCompletingOnce",
        "makeCompletingOnce$kotlinx_coroutines_core",
        "makeNode",
        "nameString",
        "nameString$kotlinx_coroutines_core",
        "notifyCancelling",
        "notifyHandlers",
        "T",
        "onAwaitInternalProcessResFunc",
        "ignoredParam",
        "result",
        "onAwaitInternalRegFunc",
        "select",
        "Lkotlinx/coroutines/selects/SelectInstance;",
        "onCompletionInternal",
        "onStart",
        "parentCancelled",
        "parentJob",
        "promoteEmptyToNodeList",
        "Lkotlinx/coroutines/Empty;",
        "promoteSingleToNodeList",
        "registerSelectForOnJoin",
        "removeNode",
        "removeNode$kotlinx_coroutines_core",
        "start",
        "startInternal",
        "",
        "stateString",
        "toDebugString",
        "toString",
        "tryFinalizeSimpleState",
        "tryMakeCancelling",
        "tryMakeCompleting",
        "tryMakeCompletingSlowPath",
        "tryWaitForChild",
        "nextChild",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
        "notifyCompletion",
        "toCancellationException",
        "AwaitContinuation",
        "ChildCompletion",
        "Finishing",
        "SelectOnAwaitCompletionHandler",
        "SelectOnJoinCompletionHandler",
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
.field private static final synthetic a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _parentHandle$volatile:Ljava/lang/Object;

.field private volatile synthetic _state$volatile:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Ljava/lang/Object;

    const-class v1, Lkotlinx/coroutines/JobSupport;

    const-string v2, "_state$volatile"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lkotlinx/coroutines/JobSupport;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_parentHandle$volatile"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/JobSupport;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_a

    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getEMPTY_ACTIVE$p()Lkotlinx/coroutines/c0;

    move-result-object p1

    goto :goto_e

    :cond_a
    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getEMPTY_NEW$p()Lkotlinx/coroutines/c0;

    move-result-object p1

    :goto_e
    iput-object p1, p0, Lkotlinx/coroutines/JobSupport;->_state$volatile:Ljava/lang/Object;

    return-void
.end method

.method private final B0(Lkotlinx/coroutines/k0;Z)Lkotlinx/coroutines/q0;
    .registers 4

    const/4 v0, 0x0

    if-eqz p2, :cond_12

    instance-of p2, p1, Lkotlinx/coroutines/o0;

    if-eqz p2, :cond_a

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/o0;

    :cond_a
    if-nez v0, :cond_33

    new-instance v0, Lkotlinx/coroutines/l0;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/l0;-><init>(Lkotlinx/coroutines/k0;)V

    goto :goto_33

    :cond_12
    instance-of p2, p1, Lkotlinx/coroutines/q0;

    if-eqz p2, :cond_19

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/q0;

    :cond_19
    if-eqz v0, :cond_2e

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result p1

    if-eqz p1, :cond_33

    instance-of p1, v0, Lkotlinx/coroutines/o0;

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_28

    goto :goto_33

    :cond_28
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2e
    new-instance v0, Lkotlinx/coroutines/m0;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/m0;-><init>(Lkotlinx/coroutines/k0;)V

    :cond_33
    :goto_33
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/q0;->t(Lkotlinx/coroutines/JobSupport;)V

    return-object v0
.end method

.method private final D0(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/m;
    .registers 3

    :goto_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->n()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->j()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object p1

    goto :goto_0

    :cond_b
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->i()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->n()Z

    move-result v0

    if-nez v0, :cond_b

    instance-of v0, p1, Lkotlinx/coroutines/m;

    if-eqz v0, :cond_1c

    check-cast p1, Lkotlinx/coroutines/m;

    return-object p1

    :cond_1c
    instance-of v0, p1, Lkotlinx/coroutines/u0;

    if-eqz v0, :cond_b

    const/4 p1, 0x0

    return-object p1
.end method

.method private final E0(Lkotlinx/coroutines/u0;Ljava/lang/Throwable;)V
    .registers 9

    invoke-virtual {p0, p2}, Lkotlinx/coroutines/JobSupport;->I0(Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->h()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    const/4 v1, 0x0

    :goto_f
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    instance-of v2, v0, Lkotlinx/coroutines/o0;

    if-eqz v2, :cond_47

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/q0;

    :try_start_1c
    invoke-interface {v2, p2}, Lkotlinx/coroutines/k0;->a(Ljava/lang/Throwable;)V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_47

    :catchall_20
    move-exception v3

    if-eqz v1, :cond_27

    invoke-static {v1, v3}, Lkotlin/c;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_47

    :cond_27
    new-instance v1, Lkotlinx/coroutines/p;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in completion handler "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lkotlinx/coroutines/p;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v2, Lkotlin/v;->a:Lkotlin/v;

    :cond_47
    :goto_47
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->i()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v0

    goto :goto_f

    :cond_4c
    if-eqz v1, :cond_51

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/JobSupport;->s0(Ljava/lang/Throwable;)V

    :cond_51
    invoke-direct {p0, p2}, Lkotlinx/coroutines/JobSupport;->Y(Ljava/lang/Throwable;)Z

    return-void
.end method

.method private final F0(Lkotlinx/coroutines/u0;Ljava/lang/Throwable;)V
    .registers 9

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->h()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    const/4 v1, 0x0

    :goto_c
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    instance-of v2, v0, Lkotlinx/coroutines/q0;

    if-eqz v2, :cond_44

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/q0;

    :try_start_19
    invoke-interface {v2, p2}, Lkotlinx/coroutines/k0;->a(Ljava/lang/Throwable;)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_44

    :catchall_1d
    move-exception v3

    if-eqz v1, :cond_24

    invoke-static {v1, v3}, Lkotlin/c;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_44

    :cond_24
    new-instance v1, Lkotlinx/coroutines/p;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in completion handler "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lkotlinx/coroutines/p;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v2, Lkotlin/v;->a:Lkotlin/v;

    :cond_44
    :goto_44
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->i()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v0

    goto :goto_c

    :cond_49
    if-eqz v1, :cond_4e

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/JobSupport;->s0(Ljava/lang/Throwable;)V

    :cond_4e
    return-void
.end method

.method private final G0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    instance-of p1, p2, Lkotlinx/coroutines/o;

    if-nez p1, :cond_5

    return-object p2

    :cond_5
    check-cast p2, Lkotlinx/coroutines/o;

    iget-object p1, p2, Lkotlinx/coroutines/o;->b:Ljava/lang/Throwable;

    throw p1
.end method

.method private final H0(Lkotlinx/coroutines/selects/h;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/h<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->o0()Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Lkotlinx/coroutines/i0;

    if-nez v0, :cond_15

    instance-of v0, p2, Lkotlinx/coroutines/o;

    if-eqz v0, :cond_d

    goto :goto_11

    :cond_d
    invoke-static {p2}, Lkotlinx/coroutines/JobSupportKt;->unboxState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_11
    invoke-interface {p1, p2}, Lkotlinx/coroutines/selects/h;->e(Ljava/lang/Object;)V

    return-void

    :cond_15
    invoke-direct {p0, p2}, Lkotlinx/coroutines/JobSupport;->Q0(Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lkotlinx/coroutines/JobSupport$d;

    invoke-direct {v3, p0, p1}, Lkotlinx/coroutines/JobSupport$d;-><init>(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/selects/h;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/JobKt;->invokeOnCompletion$default(Lkotlinx/coroutines/Job;ZZLkotlinx/coroutines/k0;ILjava/lang/Object;)Lkotlinx/coroutines/z;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlinx/coroutines/selects/h;->f(Lkotlinx/coroutines/z;)V

    return-void
.end method

.method private final L0(Lkotlinx/coroutines/c0;)V
    .registers 4

    new-instance v0, Lkotlinx/coroutines/u0;

    invoke-direct {v0}, Lkotlinx/coroutines/u0;-><init>()V

    invoke-virtual {p1}, Lkotlinx/coroutines/c0;->isActive()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_12

    :cond_c
    new-instance v1, Lkotlinx/coroutines/h0;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/h0;-><init>(Lkotlinx/coroutines/u0;)V

    move-object v0, v1

    :goto_12
    invoke-static {}, Lkotlinx/coroutines/JobSupport;->q0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method private final M0(Lkotlinx/coroutines/q0;)V
    .registers 4

    new-instance v0, Lkotlinx/coroutines/u0;

    invoke-direct {v0}, Lkotlinx/coroutines/u0;-><init>()V

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->d(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Z

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->i()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/JobSupport;->q0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method private final N0(Lkotlinx/coroutines/selects/h;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/h<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lkotlinx/coroutines/JobSupport;->w0()Z

    move-result p2

    if-nez p2, :cond_c

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-interface {p1, p2}, Lkotlinx/coroutines/selects/h;->e(Ljava/lang/Object;)V

    return-void

    :cond_c
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lkotlinx/coroutines/JobSupport$e;

    invoke-direct {v3, p0, p1}, Lkotlinx/coroutines/JobSupport$e;-><init>(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/selects/h;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/JobKt;->invokeOnCompletion$default(Lkotlinx/coroutines/Job;ZZLkotlinx/coroutines/k0;ILjava/lang/Object;)Lkotlinx/coroutines/z;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlinx/coroutines/selects/h;->f(Lkotlinx/coroutines/z;)V

    return-void
.end method

.method private final P(Ljava/lang/Object;Lkotlinx/coroutines/u0;Lkotlinx/coroutines/q0;)Z
    .registers 6

    new-instance v0, Lkotlinx/coroutines/JobSupport$f;

    invoke-direct {v0, p3, p0, p1}, Lkotlinx/coroutines/JobSupport$f;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/JobSupport;Ljava/lang/Object;)V

    :goto_5
    invoke-virtual {p2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->j()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object p1

    invoke-virtual {p1, p3, p2, v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->r(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$a;)I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_15

    const/4 v1, 0x2

    if-eq p1, v1, :cond_14

    goto :goto_5

    :cond_14
    const/4 v1, 0x0

    :cond_15
    return v1
.end method

.method private final Q(Ljava/lang/Throwable;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_8

    return-void

    :cond_8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v1

    if-nez v1, :cond_1d

    move-object v1, p1

    goto :goto_21

    :cond_1d
    invoke-static {p1}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->unwrapImpl(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    :goto_21
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_25
    :goto_25
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v3

    if-nez v3, :cond_38

    goto :goto_3c

    :cond_38
    invoke-static {v2}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->unwrapImpl(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    :goto_3c
    if-eq v2, p1, :cond_25

    if-eq v2, v1, :cond_25

    instance-of v3, v2, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_25

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-static {p1, v2}, Lkotlin/c;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_25

    :cond_4e
    return-void
.end method

.method private final Q0(Ljava/lang/Object;)I
    .registers 6

    instance-of v0, p1, Lkotlinx/coroutines/c0;

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_24

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/c0;

    invoke-virtual {v0}, Lkotlinx/coroutines/c0;->isActive()Z

    move-result v0

    if-eqz v0, :cond_11

    return v3

    :cond_11
    invoke-static {}, Lkotlinx/coroutines/JobSupport;->q0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getEMPTY_ACTIVE$p()Lkotlinx/coroutines/c0;

    move-result-object v3

    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    return v1

    :cond_20
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->K0()V

    return v2

    :cond_24
    instance-of v0, p1, Lkotlinx/coroutines/h0;

    if-eqz v0, :cond_3e

    invoke-static {}, Lkotlinx/coroutines/JobSupport;->q0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    move-object v3, p1

    check-cast v3, Lkotlinx/coroutines/h0;

    invoke-virtual {v3}, Lkotlinx/coroutines/h0;->c()Lkotlinx/coroutines/u0;

    move-result-object v3

    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    return v1

    :cond_3a
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->K0()V

    return v2

    :cond_3e
    return v3
.end method

.method private final R0(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    instance-of v0, p1, Lkotlinx/coroutines/JobSupport$c;

    const-string v1, "Active"

    if-eqz v0, :cond_1a

    check-cast p1, Lkotlinx/coroutines/JobSupport$c;

    invoke-virtual {p1}, Lkotlinx/coroutines/JobSupport$c;->i()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v1, "Cancelling"

    goto :goto_33

    :cond_11
    invoke-virtual {p1}, Lkotlinx/coroutines/JobSupport$c;->j()Z

    move-result p1

    if-eqz p1, :cond_33

    const-string v1, "Completing"

    goto :goto_33

    :cond_1a
    instance-of v0, p1, Lkotlinx/coroutines/i0;

    if-eqz v0, :cond_2a

    check-cast p1, Lkotlinx/coroutines/i0;

    invoke-interface {p1}, Lkotlinx/coroutines/i0;->isActive()Z

    move-result p1

    if-eqz p1, :cond_27

    goto :goto_33

    :cond_27
    const-string v1, "New"

    goto :goto_33

    :cond_2a
    instance-of p1, p1, Lkotlinx/coroutines/o;

    if-eqz p1, :cond_31

    const-string v1, "Cancelled"

    goto :goto_33

    :cond_31
    const-string v1, "Completed"

    :cond_33
    :goto_33
    return-object v1
.end method

.method private final T(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/JobSupport$a;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/a;->intercepted(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lkotlinx/coroutines/JobSupport$a;-><init>(Lkotlin/coroutines/d;Lkotlinx/coroutines/JobSupport;)V

    invoke-virtual {v0}, Lkotlinx/coroutines/i;->E()V

    new-instance v5, Lkotlinx/coroutines/x0;

    invoke-direct {v5, v0}, Lkotlinx/coroutines/x0;-><init>(Lkotlinx/coroutines/i;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/JobKt;->invokeOnCompletion$default(Lkotlinx/coroutines/Job;ZZLkotlinx/coroutines/k0;ILjava/lang/Object;)Lkotlinx/coroutines/z;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlinx/coroutines/CancellableContinuationKt;->disposeOnCancellation(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/z;)V

    invoke-virtual {v0}, Lkotlinx/coroutines/i;->y()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_2a

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/d;)V

    :cond_2a
    return-object v0
.end method

.method private final U0(Lkotlinx/coroutines/i0;Ljava/lang/Object;)Z
    .registers 7

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1d

    instance-of v0, p1, Lkotlinx/coroutines/c0;

    if-nez v0, :cond_13

    instance-of v0, p1, Lkotlinx/coroutines/q0;

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    if-eqz v0, :cond_17

    goto :goto_1d

    :cond_17
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1d
    :goto_1d
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_2f

    instance-of v0, p2, Lkotlinx/coroutines/o;

    xor-int/2addr v0, v2

    if-eqz v0, :cond_29

    goto :goto_2f

    :cond_29
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2f
    :goto_2f
    invoke-static {}, Lkotlinx/coroutines/JobSupport;->q0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-static {p2}, Lkotlinx/coroutines/JobSupportKt;->boxIncomplete(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    return v1

    :cond_3e
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->I0(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lkotlinx/coroutines/JobSupport;->J0(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/JobSupport;->b0(Lkotlinx/coroutines/i0;Ljava/lang/Object;)V

    return v2
.end method

.method private final V0(Lkotlinx/coroutines/i0;Ljava/lang/Throwable;)Z
    .registers 8

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    instance-of v0, p1, Lkotlinx/coroutines/JobSupport$c;

    xor-int/2addr v0, v1

    if-eqz v0, :cond_d

    goto :goto_13

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_13
    :goto_13
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p1}, Lkotlinx/coroutines/i0;->isActive()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_26

    :cond_20
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_26
    :goto_26
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->m0(Lkotlinx/coroutines/i0;)Lkotlinx/coroutines/u0;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_2e

    return v2

    :cond_2e
    new-instance v3, Lkotlinx/coroutines/JobSupport$c;

    invoke-direct {v3, v0, v2, p2}, Lkotlinx/coroutines/JobSupport$c;-><init>(Lkotlinx/coroutines/u0;ZLjava/lang/Throwable;)V

    invoke-static {}, Lkotlinx/coroutines/JobSupport;->q0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    invoke-virtual {v4, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3e

    return v2

    :cond_3e
    invoke-direct {p0, v0, p2}, Lkotlinx/coroutines/JobSupport;->E0(Lkotlinx/coroutines/u0;Ljava/lang/Throwable;)V

    return v1
.end method

.method private final W0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    instance-of v0, p1, Lkotlinx/coroutines/i0;

    if-nez v0, :cond_9

    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getCOMPLETING_ALREADY$p()Lkotlinx/coroutines/internal/s;

    move-result-object p1

    return-object p1

    :cond_9
    instance-of v0, p1, Lkotlinx/coroutines/c0;

    if-nez v0, :cond_11

    instance-of v0, p1, Lkotlinx/coroutines/q0;

    if-eqz v0, :cond_27

    :cond_11
    instance-of v0, p1, Lkotlinx/coroutines/m;

    if-nez v0, :cond_27

    instance-of v0, p2, Lkotlinx/coroutines/o;

    if-nez v0, :cond_27

    check-cast p1, Lkotlinx/coroutines/i0;

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/JobSupport;->U0(Lkotlinx/coroutines/i0;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    return-object p2

    :cond_22
    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getCOMPLETING_RETRY$p()Lkotlinx/coroutines/internal/s;

    move-result-object p1

    return-object p1

    :cond_27
    check-cast p1, Lkotlinx/coroutines/i0;

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/JobSupport;->X0(Lkotlinx/coroutines/i0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final X(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->o0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/i0;

    if-eqz v1, :cond_2d

    instance-of v1, v0, Lkotlinx/coroutines/JobSupport$c;

    if-eqz v1, :cond_16

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/JobSupport$c;

    invoke-virtual {v1}, Lkotlinx/coroutines/JobSupport$c;->j()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_2d

    :cond_16
    new-instance v1, Lkotlinx/coroutines/o;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->d0(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlinx/coroutines/o;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/n;)V

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/JobSupport;->W0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getCOMPLETING_RETRY$p()Lkotlinx/coroutines/internal/s;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_2d
    :goto_2d
    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getCOMPLETING_ALREADY$p()Lkotlinx/coroutines/internal/s;

    move-result-object p1

    return-object p1
.end method

.method private final X0(Lkotlinx/coroutines/i0;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->m0(Lkotlinx/coroutines/i0;)Lkotlinx/coroutines/u0;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getCOMPLETING_RETRY$p()Lkotlinx/coroutines/internal/s;

    move-result-object p1

    return-object p1

    :cond_b
    instance-of v1, p1, Lkotlinx/coroutines/JobSupport$c;

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/JobSupport$c;

    goto :goto_15

    :cond_14
    move-object v1, v2

    :goto_15
    const/4 v3, 0x0

    if-nez v1, :cond_1d

    new-instance v1, Lkotlinx/coroutines/JobSupport$c;

    invoke-direct {v1, v0, v3, v2}, Lkotlinx/coroutines/JobSupport$c;-><init>(Lkotlinx/coroutines/u0;ZLjava/lang/Throwable;)V

    :cond_1d
    new-instance v4, Lkotlin/jvm/internal/l0;

    invoke-direct {v4}, Lkotlin/jvm/internal/l0;-><init>()V

    monitor-enter v1

    :try_start_23
    invoke-virtual {v1}, Lkotlinx/coroutines/JobSupport$c;->j()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getCOMPLETING_ALREADY$p()Lkotlinx/coroutines/internal/s;

    move-result-object p1
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_9f

    monitor-exit v1

    return-object p1

    :cond_2f
    const/4 v5, 0x1

    :try_start_30
    invoke-virtual {v1, v5}, Lkotlinx/coroutines/JobSupport$c;->m(Z)V

    if-eq v1, p1, :cond_45

    invoke-static {}, Lkotlinx/coroutines/JobSupport;->q0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    invoke-virtual {v6, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_45

    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getCOMPLETING_RETRY$p()Lkotlinx/coroutines/internal/s;

    move-result-object p1
    :try_end_43
    .catchall {:try_start_30 .. :try_end_43} :catchall_9f

    monitor-exit v1

    return-object p1

    :cond_45
    :try_start_45
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v6

    if-eqz v6, :cond_59

    invoke-virtual {v1}, Lkotlinx/coroutines/JobSupport$c;->k()Z

    move-result v6

    xor-int/2addr v6, v5

    if-eqz v6, :cond_53

    goto :goto_59

    :cond_53
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_59
    :goto_59
    invoke-virtual {v1}, Lkotlinx/coroutines/JobSupport$c;->i()Z

    move-result v6

    instance-of v7, p2, Lkotlinx/coroutines/o;

    if-eqz v7, :cond_65

    move-object v7, p2

    check-cast v7, Lkotlinx/coroutines/o;

    goto :goto_66

    :cond_65
    move-object v7, v2

    :goto_66
    if-eqz v7, :cond_6d

    iget-object v7, v7, Lkotlinx/coroutines/o;->b:Ljava/lang/Throwable;

    invoke-virtual {v1, v7}, Lkotlinx/coroutines/JobSupport$c;->a(Ljava/lang/Throwable;)V

    :cond_6d
    invoke-virtual {v1}, Lkotlinx/coroutines/JobSupport$c;->e()Ljava/lang/Throwable;

    move-result-object v7

    if-nez v6, :cond_74

    const/4 v3, 0x1

    :cond_74
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7f

    move-object v2, v7

    :cond_7f
    iput-object v2, v4, Lkotlin/jvm/internal/l0;->a:Ljava/lang/Object;

    sget-object v3, Lkotlin/v;->a:Lkotlin/v;
    :try_end_83
    .catchall {:try_start_45 .. :try_end_83} :catchall_9f

    monitor-exit v1

    check-cast v2, Ljava/lang/Throwable;

    if-eqz v2, :cond_8b

    invoke-direct {p0, v0, v2}, Lkotlinx/coroutines/JobSupport;->E0(Lkotlinx/coroutines/u0;Ljava/lang/Throwable;)V

    :cond_8b
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->f0(Lkotlinx/coroutines/i0;)Lkotlinx/coroutines/m;

    move-result-object p1

    if-eqz p1, :cond_9a

    invoke-direct {p0, v1, p1, p2}, Lkotlinx/coroutines/JobSupport;->Y0(Lkotlinx/coroutines/JobSupport$c;Lkotlinx/coroutines/m;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9a

    sget-object p1, Lkotlinx/coroutines/JobSupportKt;->b:Lkotlinx/coroutines/internal/s;

    return-object p1

    :cond_9a
    invoke-direct {p0, v1, p2}, Lkotlinx/coroutines/JobSupport;->e0(Lkotlinx/coroutines/JobSupport$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catchall_9f
    move-exception p1

    monitor-exit v1

    throw p1
.end method

.method private final Y(Ljava/lang/Throwable;)Z
    .registers 6

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->v0()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->n0()Lkotlinx/coroutines/ChildHandle;

    move-result-object v2

    if-eqz v2, :cond_20

    sget-object v3, Lkotlinx/coroutines/v0;->a:Lkotlinx/coroutines/v0;

    if-ne v2, v3, :cond_15

    goto :goto_20

    :cond_15
    invoke-interface {v2, p1}, Lkotlinx/coroutines/ChildHandle;->b(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_1f

    if-eqz v0, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :cond_1f
    :goto_1f
    return v1

    :cond_20
    :goto_20
    return v0
.end method

.method private final Y0(Lkotlinx/coroutines/JobSupport$c;Lkotlinx/coroutines/m;Ljava/lang/Object;)Z
    .registers 10

    :cond_0
    iget-object v0, p2, Lkotlinx/coroutines/m;->e:Lkotlinx/coroutines/ChildJob;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lkotlinx/coroutines/JobSupport$b;

    invoke-direct {v3, p0, p1, p2, p3}, Lkotlinx/coroutines/JobSupport$b;-><init>(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/JobSupport$c;Lkotlinx/coroutines/m;Ljava/lang/Object;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/JobKt;->invokeOnCompletion$default(Lkotlinx/coroutines/Job;ZZLkotlinx/coroutines/k0;ILjava/lang/Object;)Lkotlinx/coroutines/z;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/v0;->a:Lkotlinx/coroutines/v0;

    if-eq v0, v1, :cond_15

    const/4 p1, 0x1

    return p1

    :cond_15
    invoke-direct {p0, p2}, Lkotlinx/coroutines/JobSupport;->D0(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/m;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1
.end method

.method public static final synthetic access$awaitSuspend(Lkotlinx/coroutines/JobSupport;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->T(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$cancellationExceptionMessage(Lkotlinx/coroutines/JobSupport;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->Z()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$continueCompleting(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/JobSupport$c;Lkotlinx/coroutines/m;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/JobSupport;->c0(Lkotlinx/coroutines/JobSupport$c;Lkotlinx/coroutines/m;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$joinSuspend(Lkotlinx/coroutines/JobSupport;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->x0(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onAwaitInternalProcessResFunc(Lkotlinx/coroutines/JobSupport;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/JobSupport;->G0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onAwaitInternalRegFunc(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/selects/h;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/JobSupport;->H0(Lkotlinx/coroutines/selects/h;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$registerSelectForOnJoin(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/selects/h;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/JobSupport;->N0(Lkotlinx/coroutines/selects/h;Ljava/lang/Object;)V

    return-void
.end method

.method private final b0(Lkotlinx/coroutines/i0;Ljava/lang/Object;)V
    .registers 6

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->n0()Lkotlinx/coroutines/ChildHandle;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lkotlinx/coroutines/z;->dispose()V

    sget-object v0, Lkotlinx/coroutines/v0;->a:Lkotlinx/coroutines/v0;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->P0(Lkotlinx/coroutines/ChildHandle;)V

    :cond_e
    instance-of v0, p2, Lkotlinx/coroutines/o;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    check-cast p2, Lkotlinx/coroutines/o;

    goto :goto_17

    :cond_16
    move-object p2, v1

    :goto_17
    if-eqz p2, :cond_1b

    iget-object v1, p2, Lkotlinx/coroutines/o;->b:Ljava/lang/Throwable;

    :cond_1b
    instance-of p2, p1, Lkotlinx/coroutines/q0;

    if-eqz p2, :cond_49

    :try_start_1f
    move-object p2, p1

    check-cast p2, Lkotlinx/coroutines/q0;

    invoke-interface {p2, v1}, Lkotlinx/coroutines/k0;->a(Ljava/lang/Throwable;)V
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_26

    goto :goto_52

    :catchall_26
    move-exception p2

    new-instance v0, Lkotlinx/coroutines/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in completion handler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lkotlinx/coroutines/p;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->s0(Ljava/lang/Throwable;)V

    goto :goto_52

    :cond_49
    invoke-interface {p1}, Lkotlinx/coroutines/i0;->c()Lkotlinx/coroutines/u0;

    move-result-object p1

    if-eqz p1, :cond_52

    invoke-direct {p0, p1, v1}, Lkotlinx/coroutines/JobSupport;->F0(Lkotlinx/coroutines/u0;Ljava/lang/Throwable;)V

    :cond_52
    :goto_52
    return-void
.end method

.method private final c0(Lkotlinx/coroutines/JobSupport$c;Lkotlinx/coroutines/m;Ljava/lang/Object;)V
    .registers 5

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->o0()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_e

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
    invoke-direct {p0, p2}, Lkotlinx/coroutines/JobSupport;->D0(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/m;

    move-result-object p2

    if-eqz p2, :cond_25

    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/JobSupport;->Y0(Lkotlinx/coroutines/JobSupport$c;Lkotlinx/coroutines/m;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_25

    return-void

    :cond_25
    invoke-direct {p0, p1, p3}, Lkotlinx/coroutines/JobSupport;->e0(Lkotlinx/coroutines/JobSupport$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->R(Ljava/lang/Object;)V

    return-void
.end method

.method private final d0(Ljava/lang/Object;)Ljava/lang/Throwable;
    .registers 4

    if-nez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_6

    :cond_4
    instance-of v0, p1, Ljava/lang/Throwable;

    :goto_6
    if-eqz v0, :cond_18

    check-cast p1, Ljava/lang/Throwable;

    if-nez p1, :cond_23

    const/4 p1, 0x0

    new-instance v0, Lkotlinx/coroutines/n0;

    invoke-static {p0}, Lkotlinx/coroutines/JobSupport;->access$cancellationExceptionMessage(Lkotlinx/coroutines/JobSupport;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lkotlinx/coroutines/n0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/Job;)V

    move-object p1, v0

    goto :goto_23

    :cond_18
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlinx/coroutines/ParentJob;

    invoke-interface {p1}, Lkotlinx/coroutines/ParentJob;->x()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    :cond_23
    :goto_23
    return-object p1
.end method

.method public static synthetic defaultCancellationException$kotlinx_coroutines_core$default(Lkotlinx/coroutines/JobSupport;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)Lkotlinx/coroutines/n0;
    .registers 6

    if-nez p4, :cond_19

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_8

    move-object p1, v0

    :cond_8
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_d

    move-object p2, v0

    :cond_d
    new-instance p3, Lkotlinx/coroutines/n0;

    if-nez p1, :cond_15

    invoke-static {p0}, Lkotlinx/coroutines/JobSupport;->access$cancellationExceptionMessage(Lkotlinx/coroutines/JobSupport;)Ljava/lang/String;

    move-result-object p1

    :cond_15
    invoke-direct {p3, p1, p2, p0}, Lkotlinx/coroutines/n0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/Job;)V

    return-object p3

    :cond_19
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: defaultCancellationException"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final e0(Lkotlinx/coroutines/JobSupport$c;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->o0()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_10

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
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p1}, Lkotlinx/coroutines/JobSupport$c;->k()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_28

    goto :goto_2e

    :cond_28
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2e
    :goto_2e
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-virtual {p1}, Lkotlinx/coroutines/JobSupport$c;->j()Z

    move-result v0

    if-eqz v0, :cond_3b

    goto :goto_41

    :cond_3b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_41
    :goto_41
    instance-of v0, p2, Lkotlinx/coroutines/o;

    const/4 v3, 0x0

    if-eqz v0, :cond_4a

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/o;

    goto :goto_4b

    :cond_4a
    move-object v0, v3

    :goto_4b
    if-eqz v0, :cond_50

    iget-object v0, v0, Lkotlinx/coroutines/o;->b:Ljava/lang/Throwable;

    goto :goto_51

    :cond_50
    move-object v0, v3

    :goto_51
    monitor-enter p1

    :try_start_52
    invoke-virtual {p1}, Lkotlinx/coroutines/JobSupport$c;->i()Z

    move-result v4

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/JobSupport$c;->l(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lkotlinx/coroutines/JobSupport;->i0(Lkotlinx/coroutines/JobSupport$c;Ljava/util/List;)Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_63

    invoke-direct {p0, v6, v5}, Lkotlinx/coroutines/JobSupport;->Q(Ljava/lang/Throwable;Ljava/util/List;)V
    :try_end_63
    .catchall {:try_start_52 .. :try_end_63} :catchall_b4

    :cond_63
    monitor-exit p1

    if-nez v6, :cond_67

    goto :goto_70

    :cond_67
    if-ne v6, v0, :cond_6a

    goto :goto_70

    :cond_6a
    new-instance p2, Lkotlinx/coroutines/o;

    const/4 v0, 0x2

    invoke-direct {p2, v6, v2, v0, v3}, Lkotlinx/coroutines/o;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/n;)V

    :goto_70
    if-eqz v6, :cond_8d

    invoke-direct {p0, v6}, Lkotlinx/coroutines/JobSupport;->Y(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_80

    invoke-virtual {p0, v6}, Lkotlinx/coroutines/JobSupport;->r0(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_7f

    goto :goto_80

    :cond_7f
    const/4 v1, 0x0

    :cond_80
    :goto_80
    if-eqz v1, :cond_8d

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/o;

    invoke-virtual {v0}, Lkotlinx/coroutines/o;->c()Z

    :cond_8d
    if-nez v4, :cond_92

    invoke-virtual {p0, v6}, Lkotlinx/coroutines/JobSupport;->I0(Ljava/lang/Throwable;)V

    :cond_92
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/JobSupport;->J0(Ljava/lang/Object;)V

    invoke-static {}, Lkotlinx/coroutines/JobSupport;->q0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-static {p2}, Lkotlinx/coroutines/JobSupportKt;->boxIncomplete(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v1

    if-eqz v1, :cond_b0

    if-eqz v0, :cond_aa

    goto :goto_b0

    :cond_aa
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_b0
    :goto_b0
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/JobSupport;->b0(Lkotlinx/coroutines/i0;Ljava/lang/Object;)V

    return-object p2

    :catchall_b4
    move-exception p2

    monitor-exit p1

    throw p2
.end method

.method private final f0(Lkotlinx/coroutines/i0;)Lkotlinx/coroutines/m;
    .registers 4

    instance-of v0, p1, Lkotlinx/coroutines/m;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/m;

    goto :goto_a

    :cond_9
    move-object v0, v1

    :goto_a
    if-nez v0, :cond_17

    invoke-interface {p1}, Lkotlinx/coroutines/i0;->c()Lkotlinx/coroutines/u0;

    move-result-object p1

    if-eqz p1, :cond_18

    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->D0(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/m;

    move-result-object v1

    goto :goto_18

    :cond_17
    move-object v1, v0

    :cond_18
    :goto_18
    return-object v1
.end method

.method public static synthetic getOnJoin$annotations()V
    .registers 0

    return-void
.end method

.method private final h0(Ljava/lang/Object;)Ljava/lang/Throwable;
    .registers 4

    instance-of v0, p1, Lkotlinx/coroutines/o;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    check-cast p1, Lkotlinx/coroutines/o;

    goto :goto_9

    :cond_8
    move-object p1, v1

    :goto_9
    if-eqz p1, :cond_d

    iget-object v1, p1, Lkotlinx/coroutines/o;->b:Ljava/lang/Throwable;

    :cond_d
    return-object v1
.end method

.method private final i0(Lkotlinx/coroutines/JobSupport$c;Ljava/util/List;)Ljava/lang/Throwable;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/JobSupport$c;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lkotlinx/coroutines/JobSupport$c;->i()Z

    move-result p1

    if-eqz p1, :cond_17

    new-instance p1, Lkotlinx/coroutines/n0;

    invoke-static {p0}, Lkotlinx/coroutines/JobSupport;->access$cancellationExceptionMessage(Lkotlinx/coroutines/JobSupport;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v1, p0}, Lkotlinx/coroutines/n0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/Job;)V

    return-object p1

    :cond_17
    return-object v1

    :cond_18
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    instance-of v3, v3, Ljava/util/concurrent/CancellationException;

    xor-int/2addr v3, v2

    if-eqz v3, :cond_1c

    goto :goto_31

    :cond_30
    move-object v0, v1

    :goto_31
    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_36

    return-object v0

    :cond_36
    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    instance-of v3, v0, Lkotlinx/coroutines/f1;

    if-eqz v3, :cond_63

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_45
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/Throwable;

    if-eq v4, v0, :cond_5a

    instance-of v4, v4, Lkotlinx/coroutines/f1;

    if-eqz v4, :cond_5a

    const/4 v4, 0x1

    goto :goto_5b

    :cond_5a
    const/4 v4, 0x0

    :goto_5b
    if-eqz v4, :cond_45

    move-object v1, v3

    :cond_5e
    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_63

    return-object v1

    :cond_63
    return-object v0
.end method

.method private final m0(Lkotlinx/coroutines/i0;)Lkotlinx/coroutines/u0;
    .registers 5

    invoke-interface {p1}, Lkotlinx/coroutines/i0;->c()Lkotlinx/coroutines/u0;

    move-result-object v0

    if-nez v0, :cond_36

    instance-of v0, p1, Lkotlinx/coroutines/c0;

    if-eqz v0, :cond_10

    new-instance v0, Lkotlinx/coroutines/u0;

    invoke-direct {v0}, Lkotlinx/coroutines/u0;-><init>()V

    goto :goto_36

    :cond_10
    instance-of v0, p1, Lkotlinx/coroutines/q0;

    if-eqz v0, :cond_1b

    check-cast p1, Lkotlinx/coroutines/q0;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->M0(Lkotlinx/coroutines/q0;)V

    const/4 v0, 0x0

    goto :goto_36

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State should have list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    :goto_36
    return-object v0
.end method

.method private static final synthetic p0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .registers 1

    sget-object v0, Lkotlinx/coroutines/JobSupport;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private static final synthetic q0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .registers 1

    sget-object v0, Lkotlinx/coroutines/JobSupport;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method public static synthetic toCancellationException$default(Lkotlinx/coroutines/JobSupport;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;
    .registers 5

    if-nez p4, :cond_c

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_7

    const/4 p2, 0x0

    :cond_7
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/JobSupport;->S0(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: toCancellationException"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final w0()Z
    .registers 3

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->o0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/i0;

    if-nez v1, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    invoke-direct {p0, v0}, Lkotlinx/coroutines/JobSupport;->Q0(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method private final x0(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/i;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/a;->intercepted(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/i;-><init>(Lkotlin/coroutines/d;I)V

    invoke-virtual {v0}, Lkotlinx/coroutines/i;->E()V

    new-instance v6, Lkotlinx/coroutines/y0;

    invoke-direct {v6, v0}, Lkotlinx/coroutines/y0;-><init>(Lkotlin/coroutines/d;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/JobKt;->invokeOnCompletion$default(Lkotlinx/coroutines/Job;ZZLkotlinx/coroutines/k0;ILjava/lang/Object;)Lkotlinx/coroutines/z;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlinx/coroutines/CancellableContinuationKt;->disposeOnCancellation(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/z;)V

    invoke-virtual {v0}, Lkotlinx/coroutines/i;->y()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_2b

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/d;)V

    :cond_2b
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne v0, p1, :cond_32

    return-object v0

    :cond_32
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method private final y0(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    const/4 v0, 0x0

    move-object v1, v0

    :cond_2
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->o0()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lkotlinx/coroutines/JobSupport$c;

    if-eqz v3, :cond_51

    monitor-enter v2

    :try_start_b
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/JobSupport$c;

    invoke-virtual {v3}, Lkotlinx/coroutines/JobSupport$c;->k()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getTOO_LATE_TO_CANCEL$p()Lkotlinx/coroutines/internal/s;

    move-result-object p1
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_4e

    monitor-exit v2

    return-object p1

    :cond_1a
    :try_start_1a
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/JobSupport$c;

    invoke-virtual {v3}, Lkotlinx/coroutines/JobSupport$c;->i()Z

    move-result v3

    if-nez p1, :cond_25

    if-nez v3, :cond_31

    :cond_25
    if-nez v1, :cond_2b

    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->d0(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_2b
    move-object p1, v2

    check-cast p1, Lkotlinx/coroutines/JobSupport$c;

    invoke-virtual {p1, v1}, Lkotlinx/coroutines/JobSupport$c;->a(Ljava/lang/Throwable;)V

    :cond_31
    move-object p1, v2

    check-cast p1, Lkotlinx/coroutines/JobSupport$c;

    invoke-virtual {p1}, Lkotlinx/coroutines/JobSupport$c;->e()Ljava/lang/Throwable;

    move-result-object p1
    :try_end_38
    .catchall {:try_start_1a .. :try_end_38} :catchall_4e

    xor-int/lit8 v1, v3, 0x1

    if-eqz v1, :cond_3d

    move-object v0, p1

    :cond_3d
    monitor-exit v2

    if-eqz v0, :cond_49

    check-cast v2, Lkotlinx/coroutines/JobSupport$c;

    invoke-virtual {v2}, Lkotlinx/coroutines/JobSupport$c;->c()Lkotlinx/coroutines/u0;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/JobSupport;->E0(Lkotlinx/coroutines/u0;Ljava/lang/Throwable;)V

    :cond_49
    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getCOMPLETING_ALREADY$p()Lkotlinx/coroutines/internal/s;

    move-result-object p1

    return-object p1

    :catchall_4e
    move-exception p1

    monitor-exit v2

    throw p1

    :cond_51
    instance-of v3, v2, Lkotlinx/coroutines/i0;

    if-eqz v3, :cond_a2

    if-nez v1, :cond_5b

    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->d0(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_5b
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/i0;

    invoke-interface {v3}, Lkotlinx/coroutines/i0;->isActive()Z

    move-result v4

    if-eqz v4, :cond_6f

    invoke-direct {p0, v3, v1}, Lkotlinx/coroutines/JobSupport;->V0(Lkotlinx/coroutines/i0;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getCOMPLETING_ALREADY$p()Lkotlinx/coroutines/internal/s;

    move-result-object p1

    return-object p1

    :cond_6f
    new-instance v3, Lkotlinx/coroutines/o;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v3, v1, v4, v5, v0}, Lkotlinx/coroutines/o;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/n;)V

    invoke-direct {p0, v2, v3}, Lkotlinx/coroutines/JobSupport;->W0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getCOMPLETING_ALREADY$p()Lkotlinx/coroutines/internal/s;

    move-result-object v4

    if-eq v3, v4, :cond_87

    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getCOMPLETING_RETRY$p()Lkotlinx/coroutines/internal/s;

    move-result-object v2

    if-eq v3, v2, :cond_2

    return-object v3

    :cond_87
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot happen in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a2
    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getTOO_LATE_TO_CANCEL$p()Lkotlinx/coroutines/internal/s;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final A0(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->o0()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lkotlinx/coroutines/JobSupport;->W0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getCOMPLETING_ALREADY$p()Lkotlinx/coroutines/internal/s;

    move-result-object v1

    if-eq v0, v1, :cond_15

    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getCOMPLETING_RETRY$p()Lkotlinx/coroutines/internal/s;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Job "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already complete or completing, but is being completed with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->h0(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public C0()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final I(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-direct {p0}, Lkotlinx/coroutines/JobSupport;->w0()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-interface {p1}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_10
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->x0(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1b

    return-object p1

    :cond_1b
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method protected I0(Ljava/lang/Throwable;)V
    .registers 2

    return-void
.end method

.method protected J0(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method protected K0()V
    .registers 1

    return-void
.end method

.method public final N(Lkotlinx/coroutines/ChildJob;)Lkotlinx/coroutines/ChildHandle;
    .registers 8

    new-instance v3, Lkotlinx/coroutines/m;

    invoke-direct {v3, p1}, Lkotlinx/coroutines/m;-><init>(Lkotlinx/coroutines/ChildJob;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/JobKt;->invokeOnCompletion$default(Lkotlinx/coroutines/Job;ZZLkotlinx/coroutines/k0;ILjava/lang/Object;)Lkotlinx/coroutines/z;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ChildHandle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlinx/coroutines/ChildHandle;

    return-object p1
.end method

.method public final O0(Lkotlinx/coroutines/q0;)V
    .registers 5

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->o0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/q0;

    if-eqz v1, :cond_1a

    if-eq v0, p1, :cond_b

    return-void

    :cond_b
    invoke-static {}, Lkotlinx/coroutines/JobSupport;->q0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getEMPTY_ACTIVE$p()Lkotlinx/coroutines/c0;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_1a
    instance-of v1, v0, Lkotlinx/coroutines/i0;

    if-eqz v1, :cond_29

    check-cast v0, Lkotlinx/coroutines/i0;

    invoke-interface {v0}, Lkotlinx/coroutines/i0;->c()Lkotlinx/coroutines/u0;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->o()Z

    :cond_29
    return-void
.end method

.method public final P0(Lkotlinx/coroutines/ChildHandle;)V
    .registers 3

    invoke-static {}, Lkotlinx/coroutines/JobSupport;->p0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected R(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method protected final S(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->o0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/i0;

    if-nez v1, :cond_28

    instance-of v1, v0, Lkotlinx/coroutines/o;

    if-eqz v1, :cond_23

    check-cast v0, Lkotlinx/coroutines/o;

    iget-object v0, v0, Lkotlinx/coroutines/o;->b:Ljava/lang/Throwable;

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v1

    if-eqz v1, :cond_22

    instance-of v1, p1, Lkotlin/coroutines/jvm/internal/d;

    if-nez v1, :cond_1b

    throw v0

    :cond_1b
    check-cast p1, Lkotlin/coroutines/jvm/internal/d;

    invoke-static {v0, p1}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->access$recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/d;)Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    :cond_22
    throw v0

    :cond_23
    invoke-static {v0}, Lkotlinx/coroutines/JobSupportKt;->unboxState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_28
    invoke-direct {p0, v0}, Lkotlinx/coroutines/JobSupport;->Q0(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->T(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected final S0(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;
    .registers 4

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/CancellationException;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-nez v0, :cond_16

    new-instance v0, Lkotlinx/coroutines/n0;

    if-nez p2, :cond_13

    invoke-static {p0}, Lkotlinx/coroutines/JobSupport;->access$cancellationExceptionMessage(Lkotlinx/coroutines/JobSupport;)Ljava/lang/String;

    move-result-object p2

    :cond_13
    invoke-direct {v0, p2, p1, p0}, Lkotlinx/coroutines/n0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/Job;)V

    :cond_16
    return-object v0
.end method

.method public final T0()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->C0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->o0()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lkotlinx/coroutines/JobSupport;->R0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final U(Ljava/lang/Throwable;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->V(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final V(Ljava/lang/Object;)Z
    .registers 5

    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getCOMPLETING_ALREADY$p()Lkotlinx/coroutines/internal/s;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->l0()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->X(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/JobSupportKt;->b:Lkotlinx/coroutines/internal/s;

    if-ne v0, v1, :cond_14

    return v2

    :cond_14
    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getCOMPLETING_ALREADY$p()Lkotlinx/coroutines/internal/s;

    move-result-object v1

    if-ne v0, v1, :cond_1e

    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->y0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_1e
    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getCOMPLETING_ALREADY$p()Lkotlinx/coroutines/internal/s;

    move-result-object p1

    if-ne v0, p1, :cond_25

    goto :goto_35

    :cond_25
    sget-object p1, Lkotlinx/coroutines/JobSupportKt;->b:Lkotlinx/coroutines/internal/s;

    if-ne v0, p1, :cond_2a

    goto :goto_35

    :cond_2a
    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getTOO_LATE_TO_CANCEL$p()Lkotlinx/coroutines/internal/s;

    move-result-object p1

    if-ne v0, p1, :cond_32

    const/4 v2, 0x0

    goto :goto_35

    :cond_32
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->R(Ljava/lang/Object;)V

    :goto_35
    return v2
.end method

.method public W(Ljava/lang/Throwable;)V
    .registers 2

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->V(Ljava/lang/Object;)Z

    return-void
.end method

.method protected Z()Ljava/lang/String;
    .registers 2

    const-string v0, "Job was cancelled"

    return-object v0
.end method

.method public synthetic a(Ljava/lang/Throwable;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    invoke-static {p0, p1, v1, v0, v1}, Lkotlinx/coroutines/JobSupport;->toCancellationException$default(Lkotlinx/coroutines/JobSupport;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    if-nez p1, :cond_13

    :cond_a
    new-instance p1, Lkotlinx/coroutines/n0;

    invoke-static {p0}, Lkotlinx/coroutines/JobSupport;->access$cancellationExceptionMessage(Lkotlinx/coroutines/JobSupport;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2, v1, p0}, Lkotlinx/coroutines/n0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/Job;)V

    :cond_13
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->W(Ljava/lang/Throwable;)V

    return v0
.end method

.method public a0(Ljava/lang/Throwable;)Z
    .registers 4

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->V(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->j0()Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method public b(Ljava/util/concurrent/CancellationException;)V
    .registers 4

    if-nez p1, :cond_d

    const/4 p1, 0x0

    new-instance v0, Lkotlinx/coroutines/n0;

    invoke-static {p0}, Lkotlinx/coroutines/JobSupport;->access$cancellationExceptionMessage(Lkotlinx/coroutines/JobSupport;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lkotlinx/coroutines/n0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/Job;)V

    move-object p1, v0

    :cond_d
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->W(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final d()Z
    .registers 2

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->o0()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/i0;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public fold(Ljava/lang/Object;Lkotlin/jvm/b/p;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lkotlin/jvm/b/p<",
            "-TR;-",
            "Lkotlin/coroutines/CoroutineContext$Element;",
            "+TR;>;)TR;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/Job$DefaultImpls;->fold(Lkotlinx/coroutines/Job;Ljava/lang/Object;Lkotlin/jvm/b/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final g()Lkotlin/sequences/f;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/f<",
            "Lkotlinx/coroutines/Job;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/JobSupport$g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlinx/coroutines/JobSupport$g;-><init>(Lkotlinx/coroutines/JobSupport;Lkotlin/coroutines/d;)V

    invoke-static {v0}, Lkotlin/sequences/i;->sequence(Lkotlin/jvm/b/p;)Lkotlin/sequences/f;

    move-result-object v0

    return-object v0
.end method

.method public final g0()Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->o0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/i0;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_18

    instance-of v1, v0, Lkotlinx/coroutines/o;

    if-nez v1, :cond_13

    invoke-static {v0}, Lkotlinx/coroutines/JobSupportKt;->unboxState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_13
    check-cast v0, Lkotlinx/coroutines/o;

    iget-object v0, v0, Lkotlinx/coroutines/o;->b:Ljava/lang/Throwable;

    throw v0

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This job has not completed yet"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(Lkotlin/coroutines/CoroutineContext$a;)Lkotlin/coroutines/CoroutineContext$Element;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/coroutines/CoroutineContext$Element;",
            ">(",
            "Lkotlin/coroutines/CoroutineContext$a<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlinx/coroutines/Job$DefaultImpls;->get(Lkotlinx/coroutines/Job;Lkotlin/coroutines/CoroutineContext$a;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p1

    return-object p1
.end method

.method public final getKey()Lkotlin/coroutines/CoroutineContext$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/CoroutineContext$a<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lkotlinx/coroutines/Job;->g0:Lkotlinx/coroutines/Job$a;

    return-object v0
.end method

.method public getParent()Lkotlinx/coroutines/Job;
    .registers 2

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->n0()Lkotlinx/coroutines/ChildHandle;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lkotlinx/coroutines/ChildHandle;->getParent()Lkotlinx/coroutines/Job;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public final h(ZZLkotlin/jvm/b/l;)Lkotlinx/coroutines/z;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/v;",
            ">;)",
            "Lkotlinx/coroutines/z;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/k0$a;

    invoke-direct {v0, p3}, Lkotlinx/coroutines/k0$a;-><init>(Lkotlin/jvm/b/l;)V

    invoke-virtual {p0, p1, p2, v0}, Lkotlinx/coroutines/JobSupport;->u0(ZZLkotlinx/coroutines/k0;)Lkotlinx/coroutines/z;

    move-result-object p1

    return-object p1
.end method

.method public final i()Ljava/util/concurrent/CancellationException;
    .registers 5

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->o0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/JobSupport$c;

    const-string v2, "Job is still new or active: "

    if-eqz v1, :cond_47

    check-cast v0, Lkotlinx/coroutines/JobSupport$c;

    invoke-virtual {v0}, Lkotlinx/coroutines/JobSupport$c;->e()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is cancelling"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/JobSupport;->S0(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    if-eqz v0, :cond_2e

    goto :goto_74

    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    instance-of v1, v0, Lkotlinx/coroutines/i0;

    if-nez v1, :cond_75

    instance-of v1, v0, Lkotlinx/coroutines/o;

    const/4 v2, 0x0

    if-eqz v1, :cond_5a

    check-cast v0, Lkotlinx/coroutines/o;

    iget-object v0, v0, Lkotlinx/coroutines/o;->b:Ljava/lang/Throwable;

    const/4 v1, 0x1

    invoke-static {p0, v0, v2, v1, v2}, Lkotlinx/coroutines/JobSupport;->toCancellationException$default(Lkotlinx/coroutines/JobSupport;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    goto :goto_74

    :cond_5a
    new-instance v0, Lkotlinx/coroutines/n0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has completed normally"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, p0}, Lkotlinx/coroutines/n0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/Job;)V

    :goto_74
    return-object v0

    :cond_75
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isActive()Z
    .registers 3

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->o0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/i0;

    if-eqz v1, :cond_12

    check-cast v0, Lkotlinx/coroutines/i0;

    invoke-interface {v0}, Lkotlinx/coroutines/i0;->isActive()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public final isCancelled()Z
    .registers 3

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->o0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/o;

    if-nez v1, :cond_17

    instance-of v1, v0, Lkotlinx/coroutines/JobSupport$c;

    if-eqz v1, :cond_15

    check-cast v0, Lkotlinx/coroutines/JobSupport$c;

    invoke-virtual {v0}, Lkotlinx/coroutines/JobSupport$c;->i()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method public j0()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final k(Lkotlinx/coroutines/ParentJob;)V
    .registers 2

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->V(Ljava/lang/Object;)Z

    return-void
.end method

.method public l0()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public minusKey(Lkotlin/coroutines/CoroutineContext$a;)Lkotlin/coroutines/CoroutineContext;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext$a<",
            "*>;)",
            "Lkotlin/coroutines/CoroutineContext;"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlinx/coroutines/Job$DefaultImpls;->minusKey(Lkotlinx/coroutines/Job;Lkotlin/coroutines/CoroutineContext$a;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    return-object p1
.end method

.method public final n0()Lkotlinx/coroutines/ChildHandle;
    .registers 2

    invoke-static {}, Lkotlinx/coroutines/JobSupport;->p0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/ChildHandle;

    return-object v0
.end method

.method public final o0()Ljava/lang/Object;
    .registers 4

    invoke-static {}, Lkotlinx/coroutines/JobSupport;->q0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    :goto_4
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lkotlinx/coroutines/internal/n;

    if-nez v2, :cond_d

    return-object v1

    :cond_d
    check-cast v1, Lkotlinx/coroutines/internal/n;

    invoke-virtual {v1, p0}, Lkotlinx/coroutines/internal/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method public plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;
    .registers 2

    invoke-static {p0, p1}, Lkotlinx/coroutines/Job$DefaultImpls;->plus(Lkotlinx/coroutines/Job;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    return-object p1
.end method

.method public final q(Lkotlin/jvm/b/l;)Lkotlinx/coroutines/z;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/v;",
            ">;)",
            "Lkotlinx/coroutines/z;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/k0$a;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/k0$a;-><init>(Lkotlin/jvm/b/l;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lkotlinx/coroutines/JobSupport;->u0(ZZLkotlinx/coroutines/k0;)Lkotlinx/coroutines/z;

    move-result-object p1

    return-object p1
.end method

.method protected r0(Ljava/lang/Throwable;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public s0(Ljava/lang/Throwable;)V
    .registers 2

    throw p1
.end method

.method public final start()Z
    .registers 3

    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->o0()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlinx/coroutines/JobSupport;->Q0(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    goto :goto_0

    :cond_e
    return v1

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method protected final t0(Lkotlinx/coroutines/Job;)V
    .registers 3

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->n0()Lkotlinx/coroutines/ChildHandle;

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
    if-nez p1, :cond_20

    sget-object p1, Lkotlinx/coroutines/v0;->a:Lkotlinx/coroutines/v0;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->P0(Lkotlinx/coroutines/ChildHandle;)V

    return-void

    :cond_20
    invoke-interface {p1}, Lkotlinx/coroutines/Job;->start()Z

    invoke-interface {p1, p0}, Lkotlinx/coroutines/Job;->N(Lkotlinx/coroutines/ChildJob;)Lkotlinx/coroutines/ChildHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->P0(Lkotlinx/coroutines/ChildHandle;)V

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->d()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p1}, Lkotlinx/coroutines/z;->dispose()V

    sget-object p1, Lkotlinx/coroutines/v0;->a:Lkotlinx/coroutines/v0;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->P0(Lkotlinx/coroutines/ChildHandle;)V

    :cond_38
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->T0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u0(ZZLkotlinx/coroutines/k0;)Lkotlinx/coroutines/z;
    .registers 10

    invoke-direct {p0, p3, p1}, Lkotlinx/coroutines/JobSupport;->B0(Lkotlinx/coroutines/k0;Z)Lkotlinx/coroutines/q0;

    move-result-object v0

    :cond_4
    :goto_4
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->o0()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lkotlinx/coroutines/c0;

    if-eqz v2, :cond_24

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/c0;

    invoke-virtual {v2}, Lkotlinx/coroutines/c0;->isActive()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-static {}, Lkotlinx/coroutines/JobSupport;->q0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    invoke-virtual {v2, p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_20
    invoke-direct {p0, v2}, Lkotlinx/coroutines/JobSupport;->L0(Lkotlinx/coroutines/c0;)V

    goto :goto_4

    :cond_24
    instance-of v2, v1, Lkotlinx/coroutines/i0;

    const/4 v3, 0x0

    if-eqz v2, :cond_7f

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/i0;

    invoke-interface {v2}, Lkotlinx/coroutines/i0;->c()Lkotlinx/coroutines/u0;

    move-result-object v2

    if-nez v2, :cond_3d

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.JobNode"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lkotlinx/coroutines/q0;

    invoke-direct {p0, v1}, Lkotlinx/coroutines/JobSupport;->M0(Lkotlinx/coroutines/q0;)V

    goto :goto_4

    :cond_3d
    sget-object v4, Lkotlinx/coroutines/v0;->a:Lkotlinx/coroutines/v0;

    if-eqz p1, :cond_70

    instance-of v5, v1, Lkotlinx/coroutines/JobSupport$c;

    if-eqz v5, :cond_70

    monitor-enter v1

    :try_start_46
    move-object v3, v1

    check-cast v3, Lkotlinx/coroutines/JobSupport$c;

    invoke-virtual {v3}, Lkotlinx/coroutines/JobSupport$c;->e()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_5c

    instance-of v5, p3, Lkotlinx/coroutines/m;

    if-eqz v5, :cond_69

    move-object v5, v1

    check-cast v5, Lkotlinx/coroutines/JobSupport$c;

    invoke-virtual {v5}, Lkotlinx/coroutines/JobSupport$c;->j()Z

    move-result v5

    if-nez v5, :cond_69

    :cond_5c
    invoke-direct {p0, v1, v2, v0}, Lkotlinx/coroutines/JobSupport;->P(Ljava/lang/Object;Lkotlinx/coroutines/u0;Lkotlinx/coroutines/q0;)Z

    move-result v4
    :try_end_60
    .catchall {:try_start_46 .. :try_end_60} :catchall_6d

    if-nez v4, :cond_64

    monitor-exit v1

    goto :goto_4

    :cond_64
    if-nez v3, :cond_68

    monitor-exit v1

    return-object v0

    :cond_68
    move-object v4, v0

    :cond_69
    :try_start_69
    sget-object v5, Lkotlin/v;->a:Lkotlin/v;
    :try_end_6b
    .catchall {:try_start_69 .. :try_end_6b} :catchall_6d

    monitor-exit v1

    goto :goto_70

    :catchall_6d
    move-exception p1

    monitor-exit v1

    throw p1

    :cond_70
    :goto_70
    if-eqz v3, :cond_78

    if-eqz p2, :cond_77

    invoke-interface {p3, v3}, Lkotlinx/coroutines/k0;->a(Ljava/lang/Throwable;)V

    :cond_77
    return-object v4

    :cond_78
    invoke-direct {p0, v1, v2, v0}, Lkotlinx/coroutines/JobSupport;->P(Ljava/lang/Object;Lkotlinx/coroutines/u0;Lkotlinx/coroutines/q0;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_7f
    if-eqz p2, :cond_90

    instance-of p1, v1, Lkotlinx/coroutines/o;

    if-eqz p1, :cond_88

    check-cast v1, Lkotlinx/coroutines/o;

    goto :goto_89

    :cond_88
    move-object v1, v3

    :goto_89
    if-eqz v1, :cond_8d

    iget-object v3, v1, Lkotlinx/coroutines/o;->b:Ljava/lang/Throwable;

    :cond_8d
    invoke-interface {p3, v3}, Lkotlinx/coroutines/k0;->a(Ljava/lang/Throwable;)V

    :cond_90
    sget-object p1, Lkotlinx/coroutines/v0;->a:Lkotlinx/coroutines/v0;

    return-object p1
.end method

.method protected v0()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public x()Ljava/util/concurrent/CancellationException;
    .registers 6

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->o0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/JobSupport$c;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/JobSupport$c;

    invoke-virtual {v1}, Lkotlinx/coroutines/JobSupport$c;->e()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_20

    :cond_11
    instance-of v1, v0, Lkotlinx/coroutines/o;

    if-eqz v1, :cond_1b

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/o;

    iget-object v1, v1, Lkotlinx/coroutines/o;->b:Ljava/lang/Throwable;

    goto :goto_20

    :cond_1b
    instance-of v1, v0, Lkotlinx/coroutines/i0;

    if-nez v1, :cond_44

    move-object v1, v2

    :goto_20
    instance-of v3, v1, Ljava/util/concurrent/CancellationException;

    if-eqz v3, :cond_27

    move-object v2, v1

    check-cast v2, Ljava/util/concurrent/CancellationException;

    :cond_27
    if-nez v2, :cond_43

    new-instance v2, Lkotlinx/coroutines/n0;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parent job is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/JobSupport;->R0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1, p0}, Lkotlinx/coroutines/n0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/Job;)V

    :cond_43
    return-object v2

    :cond_44
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot be cancelling child in this state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final z0(Ljava/lang/Object;)Z
    .registers 5

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->o0()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lkotlinx/coroutines/JobSupport;->W0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getCOMPLETING_ALREADY$p()Lkotlinx/coroutines/internal/s;

    move-result-object v1

    if-ne v0, v1, :cond_10

    const/4 p1, 0x0

    return p1

    :cond_10
    sget-object v1, Lkotlinx/coroutines/JobSupportKt;->b:Lkotlinx/coroutines/internal/s;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_16

    return v2

    :cond_16
    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getCOMPLETING_RETRY$p()Lkotlinx/coroutines/internal/s;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->R(Ljava/lang/Object;)V

    return v2
.end method

###### Class kotlinx.coroutines.JobSupport.a (kotlinx.coroutines.JobSupport$a)
.class final Lkotlinx/coroutines/JobSupport$a;
.super Lkotlinx/coroutines/i;
.source "JobSupport.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/JobSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/i<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u001b\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\rH\u0014R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lkotlinx/coroutines/JobSupport$AwaitContinuation;",
        "T",
        "Lkotlinx/coroutines/CancellableContinuationImpl;",
        "delegate",
        "Lkotlin/coroutines/Continuation;",
        "job",
        "Lkotlinx/coroutines/JobSupport;",
        "(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/JobSupport;)V",
        "getContinuationCancellationCause",
        "",
        "parent",
        "Lkotlinx/coroutines/Job;",
        "nameString",
        "",
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
.field private final i:Lkotlinx/coroutines/JobSupport;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/d;Lkotlinx/coroutines/JobSupport;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-TT;>;",
            "Lkotlinx/coroutines/JobSupport;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/i;-><init>(Lkotlin/coroutines/d;I)V

    iput-object p2, p0, Lkotlinx/coroutines/JobSupport$a;->i:Lkotlinx/coroutines/JobSupport;

    return-void
.end method


# virtual methods
.method protected M()Ljava/lang/String;
    .registers 2

    const-string v0, "AwaitContinuation"

    return-object v0
.end method

.method public w(Lkotlinx/coroutines/Job;)Ljava/lang/Throwable;
    .registers 4

    iget-object v0, p0, Lkotlinx/coroutines/JobSupport$a;->i:Lkotlinx/coroutines/JobSupport;

    invoke-virtual {v0}, Lkotlinx/coroutines/JobSupport;->o0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/JobSupport$c;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/JobSupport$c;

    invoke-virtual {v1}, Lkotlinx/coroutines/JobSupport$c;->e()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_14

    return-object v1

    :cond_14
    instance-of v1, v0, Lkotlinx/coroutines/o;

    if-eqz v1, :cond_1d

    check-cast v0, Lkotlinx/coroutines/o;

    iget-object p1, v0, Lkotlinx/coroutines/o;->b:Ljava/lang/Throwable;

    return-object p1

    :cond_1d
    invoke-interface {p1}, Lkotlinx/coroutines/Job;->i()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    return-object p1
.end method

###### Class kotlinx.coroutines.JobSupport.b (kotlinx.coroutines.JobSupport$b)
.class final Lkotlinx/coroutines/JobSupport$b;
.super Lkotlinx/coroutines/q0;
.source "JobSupport.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/JobSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nJ\u0012\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlinx/coroutines/JobSupport$ChildCompletion;",
        "Lkotlinx/coroutines/JobNode;",
        "parent",
        "Lkotlinx/coroutines/JobSupport;",
        "state",
        "Lkotlinx/coroutines/JobSupport$Finishing;",
        "child",
        "Lkotlinx/coroutines/ChildHandleNode;",
        "proposedUpdate",
        "",
        "(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)V",
        "invoke",
        "",
        "cause",
        "",
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
.field private final e:Lkotlinx/coroutines/JobSupport;

.field private final f:Lkotlinx/coroutines/JobSupport$c;

.field private final g:Lkotlinx/coroutines/m;

.field private final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/JobSupport$c;Lkotlinx/coroutines/m;Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Lkotlinx/coroutines/q0;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/JobSupport$b;->e:Lkotlinx/coroutines/JobSupport;

    iput-object p2, p0, Lkotlinx/coroutines/JobSupport$b;->f:Lkotlinx/coroutines/JobSupport$c;

    iput-object p3, p0, Lkotlinx/coroutines/JobSupport$b;->g:Lkotlinx/coroutines/m;

    iput-object p4, p0, Lkotlinx/coroutines/JobSupport$b;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .registers 5

    iget-object p1, p0, Lkotlinx/coroutines/JobSupport$b;->e:Lkotlinx/coroutines/JobSupport;

    iget-object v0, p0, Lkotlinx/coroutines/JobSupport$b;->f:Lkotlinx/coroutines/JobSupport$c;

    iget-object v1, p0, Lkotlinx/coroutines/JobSupport$b;->g:Lkotlinx/coroutines/m;

    iget-object v2, p0, Lkotlinx/coroutines/JobSupport$b;->h:Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Lkotlinx/coroutines/JobSupport;->access$continueCompleting(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/JobSupport$c;Lkotlinx/coroutines/m;Ljava/lang/Object;)V

    return-void
.end method

###### Class kotlinx.coroutines.JobSupport.c (kotlinx.coroutines.JobSupport$c)
.class final Lkotlinx/coroutines/JobSupport$c;
.super Ljava/lang/Object;
.source "JobSupport.kt"

# interfaces
.implements Lkotlinx/coroutines/i0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/JobSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0002\u0018\u00002\u00060\u0001j\u0002`\u00022\u00020\u0003B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nJ\u000e\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\tJ\u0018\u0010%\u001a\u0012\u0012\u0004\u0012\u00020\t0&j\u0008\u0012\u0004\u0012\u00020\t`\'H\u0002J\u0016\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\t0)2\u0008\u0010*\u001a\u0004\u0018\u00010\tJ\u0008\u0010+\u001a\u00020,H\u0016R\u0011\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000cX\u0082\u0004R\t\u0010\r\u001a\u00020\u000eX\u0082\u0004R\u0011\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u000cX\u0082\u0004R(\u0010\u0011\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00018B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0018\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0017R$\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00078F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0006\u0010\u0017\"\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u001b\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u0017R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR(\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\t8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!\u00a8\u0006-"
    }
    d2 = {
        "Lkotlinx/coroutines/JobSupport$Finishing;",
        "",
        "Lkotlinx/coroutines/internal/SynchronizedObject;",
        "Lkotlinx/coroutines/Incomplete;",
        "list",
        "Lkotlinx/coroutines/NodeList;",
        "isCompleting",
        "",
        "rootCause",
        "",
        "(Lkotlinx/coroutines/NodeList;ZLjava/lang/Throwable;)V",
        "_exceptionsHolder",
        "Lkotlinx/atomicfu/AtomicRef;",
        "_isCompleting",
        "Lkotlinx/atomicfu/AtomicBoolean;",
        "_rootCause",
        "value",
        "exceptionsHolder",
        "getExceptionsHolder",
        "()Ljava/lang/Object;",
        "setExceptionsHolder",
        "(Ljava/lang/Object;)V",
        "isActive",
        "()Z",
        "isCancelling",
        "setCompleting",
        "(Z)V",
        "isSealed",
        "getList",
        "()Lkotlinx/coroutines/NodeList;",
        "getRootCause",
        "()Ljava/lang/Throwable;",
        "setRootCause",
        "(Ljava/lang/Throwable;)V",
        "addExceptionLocked",
        "",
        "exception",
        "allocateList",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "sealLocked",
        "",
        "proposedException",
        "toString",
        "",
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

.field private static final synthetic b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _exceptionsHolder$volatile:Ljava/lang/Object;

.field private volatile synthetic _isCompleting$volatile:I

.field private volatile synthetic _rootCause$volatile:Ljava/lang/Object;

.field private final d:Lkotlinx/coroutines/u0;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Ljava/lang/Object;

    const-class v1, Lkotlinx/coroutines/JobSupport$c;

    const-string v2, "_isCompleting$volatile"

    invoke-static {v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    sput-object v2, Lkotlinx/coroutines/JobSupport$c;->a:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v2, "_rootCause$volatile"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lkotlinx/coroutines/JobSupport$c;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_exceptionsHolder$volatile"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/JobSupport$c;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/u0;ZLjava/lang/Throwable;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/JobSupport$c;->d:Lkotlinx/coroutines/u0;

    iput p2, p0, Lkotlinx/coroutines/JobSupport$c;->_isCompleting$volatile:I

    iput-object p3, p0, Lkotlinx/coroutines/JobSupport$c;->_rootCause$volatile:Ljava/lang/Object;

    return-void
.end method

.method private final b()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method private final d()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lkotlinx/coroutines/JobSupport$c;->f()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static final synthetic f()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .registers 1

    sget-object v0, Lkotlinx/coroutines/JobSupport$c;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private static final synthetic g()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .registers 1

    sget-object v0, Lkotlinx/coroutines/JobSupport$c;->a:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method

.method private static final synthetic h()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .registers 1

    sget-object v0, Lkotlinx/coroutines/JobSupport$c;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final n(Ljava/lang/Object;)V
    .registers 3

    invoke-static {}, Lkotlinx/coroutines/JobSupport$c;->f()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .registers 5

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport$c;->e()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport$c;->o(Ljava/lang/Throwable;)V

    return-void

    :cond_a
    if-ne p1, v0, :cond_d

    return-void

    :cond_d
    invoke-direct {p0}, Lkotlinx/coroutines/JobSupport$c;->d()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_17

    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport$c;->n(Ljava/lang/Object;)V

    goto :goto_35

    :cond_17
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_2c

    if-ne p1, v0, :cond_1e

    return-void

    :cond_1e
    invoke-direct {p0}, Lkotlinx/coroutines/JobSupport$c;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lkotlinx/coroutines/JobSupport$c;->n(Ljava/lang/Object;)V

    goto :goto_35

    :cond_2c
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_36

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_35
    return-void

    :cond_36
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()Lkotlinx/coroutines/u0;
    .registers 2

    iget-object v0, p0, Lkotlinx/coroutines/JobSupport$c;->d:Lkotlinx/coroutines/u0;

    return-object v0
.end method

.method public final e()Ljava/lang/Throwable;
    .registers 2

    invoke-static {}, Lkotlinx/coroutines/JobSupport$c;->h()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public final i()Z
    .registers 2

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport$c;->e()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isActive()Z
    .registers 2

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport$c;->e()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final j()Z
    .registers 2

    invoke-static {}, Lkotlinx/coroutines/JobSupport$c;->g()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public final k()Z
    .registers 3

    invoke-direct {p0}, Lkotlinx/coroutines/JobSupport$c;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getSEALED$p()Lkotlinx/coroutines/internal/s;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public final l(Ljava/lang/Throwable;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lkotlinx/coroutines/JobSupport$c;->d()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-direct {p0}, Lkotlinx/coroutines/JobSupport$c;->b()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1e

    :cond_b
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_18

    invoke-direct {p0}, Lkotlinx/coroutines/JobSupport$c;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_1e

    :cond_18
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_3b

    check-cast v0, Ljava/util/ArrayList;

    :goto_1e
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport$c;->e()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_28

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_28
    if-eqz p1, :cond_33

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getSEALED$p()Lkotlinx/coroutines/internal/s;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport$c;->n(Ljava/lang/Object;)V

    return-object v0

    :cond_3b
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final m(Z)V
    .registers 3

    invoke-static {}, Lkotlinx/coroutines/JobSupport$c;->g()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    return-void
.end method

.method public final o(Ljava/lang/Throwable;)V
    .registers 3

    invoke-static {}, Lkotlinx/coroutines/JobSupport$c;->h()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finishing[cancelling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport$c;->i()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", completing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport$c;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", rootCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport$c;->e()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", exceptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lkotlinx/coroutines/JobSupport$c;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport$c;->c()Lkotlinx/coroutines/u0;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class kotlinx.coroutines.JobSupport.d (kotlinx.coroutines.JobSupport$d)
.class final Lkotlinx/coroutines/JobSupport$d;
.super Lkotlinx/coroutines/q0;
.source "JobSupport.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/JobSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016R\u0012\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lkotlinx/coroutines/JobSupport$SelectOnAwaitCompletionHandler;",
        "Lkotlinx/coroutines/JobNode;",
        "select",
        "Lkotlinx/coroutines/selects/SelectInstance;",
        "(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/selects/SelectInstance;)V",
        "invoke",
        "",
        "cause",
        "",
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
.field private final e:Lkotlinx/coroutines/selects/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/selects/h<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic f:Lkotlinx/coroutines/JobSupport;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/selects/h;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/h<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/JobSupport$d;->f:Lkotlinx/coroutines/JobSupport;

    invoke-direct {p0}, Lkotlinx/coroutines/q0;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/JobSupport$d;->e:Lkotlinx/coroutines/selects/h;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .registers 4

    iget-object p1, p0, Lkotlinx/coroutines/JobSupport$d;->f:Lkotlinx/coroutines/JobSupport;

    invoke-virtual {p1}, Lkotlinx/coroutines/JobSupport;->o0()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lkotlinx/coroutines/o;

    if-eqz v0, :cond_b

    goto :goto_f

    :cond_b
    invoke-static {p1}, Lkotlinx/coroutines/JobSupportKt;->unboxState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_f
    iget-object v0, p0, Lkotlinx/coroutines/JobSupport$d;->e:Lkotlinx/coroutines/selects/h;

    iget-object v1, p0, Lkotlinx/coroutines/JobSupport$d;->f:Lkotlinx/coroutines/JobSupport;

    invoke-interface {v0, v1, p1}, Lkotlinx/coroutines/selects/h;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

###### Class kotlinx.coroutines.JobSupport.e (kotlinx.coroutines.JobSupport$e)
.class final Lkotlinx/coroutines/JobSupport$e;
.super Lkotlinx/coroutines/q0;
.source "JobSupport.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/JobSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016R\u0012\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lkotlinx/coroutines/JobSupport$SelectOnJoinCompletionHandler;",
        "Lkotlinx/coroutines/JobNode;",
        "select",
        "Lkotlinx/coroutines/selects/SelectInstance;",
        "(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/selects/SelectInstance;)V",
        "invoke",
        "",
        "cause",
        "",
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
.field private final e:Lkotlinx/coroutines/selects/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/selects/h<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic f:Lkotlinx/coroutines/JobSupport;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/selects/h;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/h<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/JobSupport$e;->f:Lkotlinx/coroutines/JobSupport;

    invoke-direct {p0}, Lkotlinx/coroutines/q0;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/JobSupport$e;->e:Lkotlinx/coroutines/selects/h;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .registers 4

    iget-object p1, p0, Lkotlinx/coroutines/JobSupport$e;->e:Lkotlinx/coroutines/selects/h;

    iget-object v0, p0, Lkotlinx/coroutines/JobSupport$e;->f:Lkotlinx/coroutines/JobSupport;

    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    invoke-interface {p1, v0, v1}, Lkotlinx/coroutines/selects/h;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

###### Class kotlinx.coroutines.JobSupport.f (kotlinx.coroutines.JobSupport$f)
.class public final Lkotlinx/coroutines/JobSupport$f;
.super Lkotlinx/coroutines/internal/LockFreeLinkedListNode$a;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/JobSupport;->P(Ljava/lang/Object;Lkotlinx/coroutines/u0;Lkotlinx/coroutines/q0;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006H\u0016\u00a8\u0006\u0007\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlinx/coroutines/internal/LockFreeLinkedListNode$makeCondAddOp$1",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;",
        "prepare",
        "",
        "affected",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
        "Lkotlinx/coroutines/internal/Node;",
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
.field final synthetic d:Lkotlinx/coroutines/JobSupport;

.field final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/JobSupport;Ljava/lang/Object;)V
    .registers 4

    iput-object p2, p0, Lkotlinx/coroutines/JobSupport$f;->d:Lkotlinx/coroutines/JobSupport;

    iput-object p3, p0, Lkotlinx/coroutines/JobSupport$f;->e:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$a;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic e(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport$f;->g(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Ljava/lang/Object;
    .registers 3

    iget-object p1, p0, Lkotlinx/coroutines/JobSupport$f;->d:Lkotlinx/coroutines/JobSupport;

    invoke-virtual {p1}, Lkotlinx/coroutines/JobSupport;->o0()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lkotlinx/coroutines/JobSupport$f;->e:Ljava/lang/Object;

    if-ne p1, v0, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    if-eqz p1, :cond_11

    const/4 p1, 0x0

    goto :goto_15

    :cond_11
    invoke-static {}, Lkotlinx/coroutines/internal/LockFreeLinkedListKt;->getCONDITION_FALSE()Ljava/lang/Object;

    move-result-object p1

    :goto_15
    return-object p1
.end method

###### Class kotlinx.coroutines.JobSupport.g (kotlinx.coroutines.JobSupport$g)
.class final Lkotlinx/coroutines/JobSupport$g;
.super Lkotlin/coroutines/jvm/internal/h;
.source "JobSupport.kt"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/JobSupport;->g()Lkotlin/sequences/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/h;",
        "Lkotlin/jvm/b/p<",
        "Lkotlin/sequences/h<",
        "-",
        "Lkotlinx/coroutines/Job;",
        ">;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lkotlin/v;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlin/sequences/SequenceScope;",
        "Lkotlinx/coroutines/Job;"
    }
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "kotlinx.coroutines.JobSupport$children$1"
    f = "JobSupport.kt"
    i = {
        0x1,
        0x1,
        0x1
    }
    l = {
        0x3c3,
        0x3c5
    }
    m = "invokeSuspend"
    n = {
        "$this$sequence",
        "this_$iv",
        "cur$iv"
    }
    s = {
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:I

.field private synthetic d:Ljava/lang/Object;

.field final synthetic e:Lkotlinx/coroutines/JobSupport;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/JobSupport;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/JobSupport;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlinx/coroutines/JobSupport$g;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/JobSupport$g;->e:Lkotlinx/coroutines/JobSupport;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/h;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d<",
            "*>;)",
            "Lkotlin/coroutines/d<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/JobSupport$g;

    iget-object v1, p0, Lkotlinx/coroutines/JobSupport$g;->e:Lkotlinx/coroutines/JobSupport;

    invoke-direct {v0, v1, p2}, Lkotlinx/coroutines/JobSupport$g;-><init>(Lkotlinx/coroutines/JobSupport;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Lkotlinx/coroutines/JobSupport$g;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlin/sequences/h;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/JobSupport$g;->invoke(Lkotlin/sequences/h;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/sequences/h;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/h<",
            "-",
            "Lkotlinx/coroutines/Job;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/JobSupport$g;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/JobSupport$g;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/JobSupport$g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lkotlinx/coroutines/JobSupport$g;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2b

    if-eq v1, v3, :cond_27

    if-ne v1, v2, :cond_1f

    iget-object v1, p0, Lkotlinx/coroutines/JobSupport$g;->b:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    iget-object v3, p0, Lkotlinx/coroutines/JobSupport$g;->a:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/internal/i;

    iget-object v4, p0, Lkotlinx/coroutines/JobSupport$g;->d:Ljava/lang/Object;

    check-cast v4, Lkotlin/sequences/h;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    goto :goto_83

    :cond_1f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_27
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_88

    :cond_2b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lkotlinx/coroutines/JobSupport$g;->d:Ljava/lang/Object;

    check-cast p1, Lkotlin/sequences/h;

    iget-object v1, p0, Lkotlinx/coroutines/JobSupport$g;->e:Lkotlinx/coroutines/JobSupport;

    invoke-virtual {v1}, Lkotlinx/coroutines/JobSupport;->o0()Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Lkotlinx/coroutines/m;

    if-eqz v4, :cond_49

    check-cast v1, Lkotlinx/coroutines/m;

    iget-object v1, v1, Lkotlinx/coroutines/m;->e:Lkotlinx/coroutines/ChildJob;

    iput v3, p0, Lkotlinx/coroutines/JobSupport$g;->c:I

    invoke-virtual {p1, v1, p0}, Lkotlin/sequences/h;->c(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_88

    return-object v0

    :cond_49
    instance-of v3, v1, Lkotlinx/coroutines/i0;

    if-eqz v3, :cond_88

    check-cast v1, Lkotlinx/coroutines/i0;

    invoke-interface {v1}, Lkotlinx/coroutines/i0;->c()Lkotlinx/coroutines/u0;

    move-result-object v1

    if-eqz v1, :cond_88

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->h()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-object v4, p1

    move-object p1, p0

    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    :goto_65
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_88

    instance-of v5, v1, Lkotlinx/coroutines/m;

    if-eqz v5, :cond_83

    move-object v5, v1

    check-cast v5, Lkotlinx/coroutines/m;

    iget-object v5, v5, Lkotlinx/coroutines/m;->e:Lkotlinx/coroutines/ChildJob;

    iput-object v4, p1, Lkotlinx/coroutines/JobSupport$g;->d:Ljava/lang/Object;

    iput-object v3, p1, Lkotlinx/coroutines/JobSupport$g;->a:Ljava/lang/Object;

    iput-object v1, p1, Lkotlinx/coroutines/JobSupport$g;->b:Ljava/lang/Object;

    iput v2, p1, Lkotlinx/coroutines/JobSupport$g;->c:I

    invoke-virtual {v4, v5, p1}, Lkotlin/sequences/h;->c(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_83

    return-object v0

    :cond_83
    :goto_83
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->i()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v1

    goto :goto_65

    :cond_88
    :goto_88
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
