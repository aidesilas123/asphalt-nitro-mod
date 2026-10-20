###### Class kotlinx.coroutines.flow.FlowKt__DelayKt.f (kotlinx.coroutines.flow.FlowKt__DelayKt$f)
.class final Lkotlinx/coroutines/flow/FlowKt__DelayKt$f;
.super Lkotlin/coroutines/jvm/internal/j;
.source "Delay.kt"

# interfaces
.implements Lkotlin/jvm/b/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__DelayKt;->b(Lkotlinx/coroutines/flow/i;J)Lkotlinx/coroutines/flow/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/j;",
        "Lkotlin/jvm/b/q<",
        "Lkotlinx/coroutines/s;",
        "Lkotlinx/coroutines/flow/j<",
        "-TT;>;",
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
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0005H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lkotlinx/coroutines/CoroutineScope;",
        "downStream",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "kotlinx.coroutines.flow.FlowKt__DelayKt$timeoutInternal$1"
    f = "Delay.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x1a0
    }
    m = "invokeSuspend"
    n = {
        "downStream",
        "values"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field a:J

.field b:I

.field private synthetic c:Ljava/lang/Object;

.field synthetic d:Ljava/lang/Object;

.field final synthetic e:J

.field final synthetic f:Lkotlinx/coroutines/flow/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/i<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JLkotlinx/coroutines/flow/i;Lkotlin/coroutines/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/flow/i<",
            "+TT;>;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlinx/coroutines/flow/FlowKt__DelayKt$f;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$f;->e:J

    iput-object p3, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$f;->f:Lkotlinx/coroutines/flow/i;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlinx/coroutines/flow/j;

    check-cast p3, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$f;->k(Lkotlinx/coroutines/s;Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$f;->b:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_27

    if-ne v1, v2, :cond_1f

    iget-wide v4, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$f;->a:J

    iget-object v1, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$f;->d:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$f;->c:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/flow/j;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, v6

    move-wide v5, v4

    move-object v4, v1

    move-object v1, v0

    move-object v0, p0

    goto :goto_84

    :cond_1f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_27
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$f;->c:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/s;

    iget-object v1, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$f;->d:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/j;

    iget-wide v4, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$f;->e:J

    sget-object v6, Lkotlin/time/Duration;->a:Lkotlin/time/Duration$Companion;

    invoke-virtual {v6}, Lkotlin/time/Duration$Companion;->c()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v4

    if-lez v4, :cond_95

    iget-object v4, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$f;->f:Lkotlinx/coroutines/flow/i;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v4, v5, v3, v6, v3}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/i;ILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/i;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlinx/coroutines/flow/FlowKt;->produceIn(Lkotlinx/coroutines/flow/i;Lkotlinx/coroutines/s;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p1

    iget-wide v4, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$f;->e:J

    move-object v6, v1

    move-object v1, p1

    move-object p1, p0

    :goto_51
    new-instance v7, Lkotlinx/coroutines/selects/SelectImplementation;

    invoke-interface {p1}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v8

    invoke-direct {v7, v8}, Lkotlinx/coroutines/selects/SelectImplementation;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    invoke-interface {v1}, Lkotlinx/coroutines/channels/ReceiveChannel;->A()Lkotlinx/coroutines/selects/c;

    move-result-object v8

    new-instance v9, Lkotlinx/coroutines/flow/FlowKt__DelayKt$f$a;

    invoke-direct {v9, v6, v3}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$f$a;-><init>(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/d;)V

    invoke-interface {v7, v8, v9}, Lkotlinx/coroutines/selects/SelectBuilder;->h(Lkotlinx/coroutines/selects/c;Lkotlin/jvm/b/p;)V

    new-instance v8, Lkotlinx/coroutines/flow/FlowKt__DelayKt$f$b;

    invoke-direct {v8, v4, v5, v3}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$f$b;-><init>(JLkotlin/coroutines/d;)V

    invoke-static {v7, v4, v5, v8}, Lkotlinx/coroutines/selects/OnTimeoutKt;->onTimeout-8Mi8wO0(Lkotlinx/coroutines/selects/SelectBuilder;JLkotlin/jvm/b/l;)V

    iput-object v6, p1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$f;->c:Ljava/lang/Object;

    iput-object v1, p1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$f;->d:Ljava/lang/Object;

    iput-wide v4, p1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$f;->a:J

    iput v2, p1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$f;->b:I

    invoke-virtual {v7, p1}, Lkotlinx/coroutines/selects/SelectImplementation;->l(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_7d

    return-object v0

    :cond_7d
    move-object v10, v0

    move-object v0, p1

    move-object p1, v7

    move-object v7, v6

    move-wide v5, v4

    move-object v4, v1

    move-object v1, v10

    :goto_84
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_8f

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_8f
    move-object p1, v0

    move-object v0, v1

    move-object v1, v4

    move-wide v4, v5

    move-object v6, v7

    goto :goto_51

    :cond_95
    new-instance p1, Lkotlinx/coroutines/f1;

    const-string v0, "Timed out immediately"

    invoke-direct {p1, v0}, Lkotlinx/coroutines/f1;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final k(Lkotlinx/coroutines/s;Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/s;",
            "Lkotlinx/coroutines/flow/j<",
            "-TT;>;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$f;

    iget-wide v1, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$f;->e:J

    iget-object v3, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$f;->f:Lkotlinx/coroutines/flow/i;

    invoke-direct {v0, v1, v2, v3, p3}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$f;-><init>(JLkotlinx/coroutines/flow/i;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$f;->c:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$f;->d:Ljava/lang/Object;

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
