###### Class kotlinx.coroutines.flow.FlowKt__DelayKt.c (kotlinx.coroutines.flow.FlowKt__DelayKt$c)
.class final Lkotlinx/coroutines/flow/FlowKt__DelayKt$c;
.super Lkotlin/coroutines/jvm/internal/j;
.source "Delay.kt"

# interfaces
.implements Lkotlin/jvm/b/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__DelayKt;->a(Lkotlinx/coroutines/flow/i;Lkotlin/jvm/b/l;)Lkotlinx/coroutines/flow/i;
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
        "downstream",
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
    c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1"
    f = "Delay.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1
    }
    l = {
        0xd7,
        0x1a2
    }
    m = "invokeSuspend"
    n = {
        "downstream",
        "values",
        "lastValue",
        "timeoutMillis",
        "downstream",
        "values",
        "lastValue"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
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

.field synthetic e:Ljava/lang/Object;

.field final synthetic f:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "TT;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic g:Lkotlinx/coroutines/flow/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/i<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/b/l;Lkotlinx/coroutines/flow/i;Lkotlin/coroutines/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-TT;",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlinx/coroutines/flow/i<",
            "+TT;>;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlinx/coroutines/flow/FlowKt__DelayKt$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$c;->f:Lkotlin/jvm/b/l;

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$c;->g:Lkotlinx/coroutines/flow/i;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlinx/coroutines/flow/j;

    check-cast p3, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$c;->k(Lkotlinx/coroutines/s;Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 20

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$c;->c:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_47

    if-eq v2, v7, :cond_30

    if-ne v2, v4, :cond_28

    iget-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$c;->a:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/l0;

    iget-object v9, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$c;->e:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v10, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$c;->d:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/flow/j;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v10

    move-object v10, v9

    move-object v9, v2

    move-object v2, v0

    goto :goto_6e

    :cond_28
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_30
    iget-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$c;->b:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/k0;

    iget-object v9, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$c;->a:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/l0;

    iget-object v10, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$c;->e:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v11, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$c;->d:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/flow/j;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v2

    move-object v2, v0

    goto/16 :goto_b5

    :cond_47
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$c;->d:Ljava/lang/Object;

    move-object v9, v2

    check-cast v9, Lkotlinx/coroutines/s;

    iget-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$c;->e:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/j;

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-instance v12, Lkotlinx/coroutines/flow/FlowKt__DelayKt$c$c;

    iget-object v13, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$c;->g:Lkotlinx/coroutines/flow/i;

    invoke-direct {v12, v13, v8}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$c$c;-><init>(Lkotlinx/coroutines/flow/i;Lkotlin/coroutines/d;)V

    const/4 v13, 0x3

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lkotlinx/coroutines/channels/ProduceKt;->produce$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v9

    new-instance v10, Lkotlin/jvm/internal/l0;

    invoke-direct {v10}, Lkotlin/jvm/internal/l0;-><init>()V

    move-object v11, v2

    move-object v2, v0

    move-object/from16 v17, v10

    move-object v10, v9

    move-object/from16 v9, v17

    :goto_6e
    iget-object v12, v9, Lkotlin/jvm/internal/l0;->a:Ljava/lang/Object;

    sget-object v13, Lkotlinx/coroutines/flow/internal/m;->c:Lkotlinx/coroutines/internal/s;

    if-eq v12, v13, :cond_121

    new-instance v12, Lkotlin/jvm/internal/k0;

    invoke-direct {v12}, Lkotlin/jvm/internal/k0;-><init>()V

    iget-object v13, v9, Lkotlin/jvm/internal/l0;->a:Ljava/lang/Object;

    if-eqz v13, :cond_b7

    iget-object v14, v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$c;->f:Lkotlin/jvm/b/l;

    sget-object v15, Lkotlinx/coroutines/flow/internal/m;->a:Lkotlinx/coroutines/internal/s;

    if-ne v13, v15, :cond_84

    move-object v13, v8

    :cond_84
    invoke-interface {v14, v13}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->longValue()J

    move-result-wide v13

    iput-wide v13, v12, Lkotlin/jvm/internal/k0;->a:J

    cmp-long v16, v13, v5

    if-ltz v16, :cond_97

    const/16 v16, 0x1

    goto :goto_99

    :cond_97
    const/16 v16, 0x0

    :goto_99
    if-eqz v16, :cond_bd

    cmp-long v16, v13, v5

    if-nez v16, :cond_b7

    iget-object v13, v9, Lkotlin/jvm/internal/l0;->a:Ljava/lang/Object;

    if-ne v13, v15, :cond_a4

    move-object v13, v8

    :cond_a4
    iput-object v11, v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$c;->d:Ljava/lang/Object;

    iput-object v10, v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$c;->e:Ljava/lang/Object;

    iput-object v9, v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$c;->a:Ljava/lang/Object;

    iput-object v12, v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$c;->b:Ljava/lang/Object;

    iput v7, v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$c;->c:I

    invoke-interface {v11, v13, v2}, Lkotlinx/coroutines/flow/j;->emit(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v1, :cond_b5

    return-object v1

    :cond_b5
    :goto_b5
    iput-object v8, v9, Lkotlin/jvm/internal/l0;->a:Ljava/lang/Object;

    :cond_b7
    move-object/from16 v17, v9

    move-object v9, v2

    move-object/from16 v2, v17

    goto :goto_c9

    :cond_bd
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Debounce timeout should not be negative"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_c9
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v13

    if-eqz v13, :cond_e6

    iget-object v13, v2, Lkotlin/jvm/internal/l0;->a:Ljava/lang/Object;

    if-eqz v13, :cond_dc

    iget-wide v13, v12, Lkotlin/jvm/internal/k0;->a:J

    cmp-long v15, v13, v5

    if-lez v15, :cond_da

    goto :goto_dc

    :cond_da
    const/4 v13, 0x0

    goto :goto_dd

    :cond_dc
    :goto_dc
    const/4 v13, 0x1

    :goto_dd
    if-eqz v13, :cond_e0

    goto :goto_e6

    :cond_e0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_e6
    :goto_e6
    new-instance v13, Lkotlinx/coroutines/selects/SelectImplementation;

    invoke-interface {v9}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v14

    invoke-direct {v13, v14}, Lkotlinx/coroutines/selects/SelectImplementation;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    iget-object v14, v2, Lkotlin/jvm/internal/l0;->a:Ljava/lang/Object;

    if-eqz v14, :cond_fd

    iget-wide v14, v12, Lkotlin/jvm/internal/k0;->a:J

    new-instance v12, Lkotlinx/coroutines/flow/FlowKt__DelayKt$c$a;

    invoke-direct {v12, v11, v2, v8}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$c$a;-><init>(Lkotlinx/coroutines/flow/j;Lkotlin/jvm/internal/l0;Lkotlin/coroutines/d;)V

    invoke-static {v13, v14, v15, v12}, Lkotlinx/coroutines/selects/OnTimeoutKt;->onTimeout(Lkotlinx/coroutines/selects/SelectBuilder;JLkotlin/jvm/b/l;)V

    :cond_fd
    invoke-interface {v10}, Lkotlinx/coroutines/channels/ReceiveChannel;->A()Lkotlinx/coroutines/selects/c;

    move-result-object v12

    new-instance v14, Lkotlinx/coroutines/flow/FlowKt__DelayKt$c$b;

    invoke-direct {v14, v2, v11, v8}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$c$b;-><init>(Lkotlin/jvm/internal/l0;Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/d;)V

    invoke-interface {v13, v12, v14}, Lkotlinx/coroutines/selects/SelectBuilder;->h(Lkotlinx/coroutines/selects/c;Lkotlin/jvm/b/p;)V

    iput-object v11, v9, Lkotlinx/coroutines/flow/FlowKt__DelayKt$c;->d:Ljava/lang/Object;

    iput-object v10, v9, Lkotlinx/coroutines/flow/FlowKt__DelayKt$c;->e:Ljava/lang/Object;

    iput-object v2, v9, Lkotlinx/coroutines/flow/FlowKt__DelayKt$c;->a:Ljava/lang/Object;

    iput-object v8, v9, Lkotlinx/coroutines/flow/FlowKt__DelayKt$c;->b:Ljava/lang/Object;

    iput v4, v9, Lkotlinx/coroutines/flow/FlowKt__DelayKt$c;->c:I

    invoke-virtual {v13, v9}, Lkotlinx/coroutines/selects/SelectImplementation;->l(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v1, :cond_11a

    return-object v1

    :cond_11a
    move-object/from16 v17, v9

    move-object v9, v2

    move-object/from16 v2, v17

    goto/16 :goto_6e

    :cond_121
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    return-object v1
.end method

.method public final k(Lkotlinx/coroutines/s;Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 7
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

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$c;

    iget-object v1, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$c;->f:Lkotlin/jvm/b/l;

    iget-object v2, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$c;->g:Lkotlinx/coroutines/flow/i;

    invoke-direct {v0, v1, v2, p3}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$c;-><init>(Lkotlin/jvm/b/l;Lkotlinx/coroutines/flow/i;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$c;->d:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$c;->e:Ljava/lang/Object;

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
