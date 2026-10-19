###### Class kotlinx.coroutines.flow.internal.CombineKt.a (kotlinx.coroutines.flow.internal.CombineKt$a)
.class final Lkotlinx/coroutines/flow/internal/CombineKt$a;
.super Lkotlin/coroutines/jvm/internal/j;
.source "Combine.kt"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/internal/CombineKt;->combineInternal(Lkotlinx/coroutines/flow/j;[Lkotlinx/coroutines/flow/i;Lkotlin/jvm/b/a;Lkotlin/jvm/b/q;Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/j;",
        "Lkotlin/jvm/b/p<",
        "Lkotlinx/coroutines/s;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003*\u00020\u0004H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "T",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2"
    f = "Combine.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2
    }
    l = {
        0x33,
        0x49,
        0x4c
    }
    m = "invokeSuspend"
    n = {
        "latestValues",
        "resultChannel",
        "lastReceivedEpoch",
        "remainingAbsentValues",
        "currentEpoch",
        "latestValues",
        "resultChannel",
        "lastReceivedEpoch",
        "remainingAbsentValues",
        "currentEpoch",
        "latestValues",
        "resultChannel",
        "lastReceivedEpoch",
        "remainingAbsentValues",
        "currentEpoch"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "I$1",
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "I$1",
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "I$1"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:I

.field d:I

.field e:I

.field private synthetic f:Ljava/lang/Object;

.field final synthetic g:[Lkotlinx/coroutines/flow/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/coroutines/flow/i<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic h:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "[TT;>;"
        }
    .end annotation
.end field

.field final synthetic i:Lkotlin/jvm/b/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/q<",
            "Lkotlinx/coroutines/flow/j<",
            "-TR;>;[TT;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic j:Lkotlinx/coroutines/flow/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/j<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Lkotlinx/coroutines/flow/i;Lkotlin/jvm/b/a;Lkotlin/jvm/b/q;Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/d;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlinx/coroutines/flow/i<",
            "+TT;>;",
            "Lkotlin/jvm/b/a<",
            "[TT;>;",
            "Lkotlin/jvm/b/q<",
            "-",
            "Lkotlinx/coroutines/flow/j<",
            "-TR;>;-[TT;-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlinx/coroutines/flow/j<",
            "-TR;>;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlinx/coroutines/flow/internal/CombineKt$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->g:[Lkotlinx/coroutines/flow/i;

    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->h:Lkotlin/jvm/b/a;

    iput-object p3, p0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->i:Lkotlin/jvm/b/q;

    iput-object p4, p0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->j:Lkotlinx/coroutines/flow/j;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 10
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

    new-instance v6, Lkotlinx/coroutines/flow/internal/CombineKt$a;

    iget-object v1, p0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->g:[Lkotlinx/coroutines/flow/i;

    iget-object v2, p0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->h:Lkotlin/jvm/b/a;

    iget-object v3, p0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->i:Lkotlin/jvm/b/q;

    iget-object v4, p0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->j:Lkotlinx/coroutines/flow/j;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/flow/internal/CombineKt$a;-><init>([Lkotlinx/coroutines/flow/i;Lkotlin/jvm/b/a;Lkotlin/jvm/b/q;Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/d;)V

    iput-object p1, v6, Lkotlinx/coroutines/flow/internal/CombineKt$a;->f:Ljava/lang/Object;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt$a;->invoke(Lkotlinx/coroutines/s;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/s;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/s;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt$a;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/internal/CombineKt$a;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 25

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_76

    if-eq v2, v6, :cond_52

    if-eq v2, v5, :cond_37

    if-ne v2, v4, :cond_2f

    iget v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->d:I

    iget v3, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->c:I

    iget-object v7, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->b:Ljava/lang/Object;

    check-cast v7, [B

    iget-object v8, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->a:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/Channel;

    iget-object v9, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->f:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v13, v3

    move-object v14, v9

    move v3, v2

    move-object v2, v7

    move-object v7, v8

    move-object v8, v0

    goto/16 :goto_165

    :cond_2f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_37
    iget v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->d:I

    iget v3, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->c:I

    iget-object v7, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->b:Ljava/lang/Object;

    check-cast v7, [B

    iget-object v8, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->a:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/Channel;

    iget-object v9, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->f:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v13, v3

    move-object v14, v9

    move v3, v2

    move-object v2, v7

    move-object v7, v8

    move-object v8, v0

    goto/16 :goto_c7

    :cond_52
    iget v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->d:I

    iget v3, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->c:I

    iget-object v7, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->b:Ljava/lang/Object;

    check-cast v7, [B

    iget-object v8, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->a:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/Channel;

    iget-object v9, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->f:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v10, p1

    check-cast v10, Lkotlinx/coroutines/channels/ChannelResult;

    invoke-virtual {v10}, Lkotlinx/coroutines/channels/ChannelResult;->a()Ljava/lang/Object;

    move-result-object v10

    move-object v15, v9

    move-object v9, v0

    move-object/from16 v22, v7

    move v7, v2

    move-object/from16 v2, v22

    goto/16 :goto_e1

    :cond_76
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->f:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/s;

    iget-object v7, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->g:[Lkotlinx/coroutines/flow/i;

    array-length v13, v7

    if-nez v13, :cond_85

    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    return-object v1

    :cond_85
    new-array v14, v13, [Ljava/lang/Object;

    sget-object v8, Lkotlinx/coroutines/flow/internal/m;->b:Lkotlinx/coroutines/internal/s;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    move-object v7, v14

    invoke-static/range {v7 .. v12}, Lkotlin/collections/k;->fill$default([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static {v13, v8, v8, v7, v8}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/b/l;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v21

    new-instance v12, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v12, v13}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    const/4 v11, 0x0

    :goto_9d
    if-ge v11, v13, :cond_c2

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Lkotlinx/coroutines/flow/internal/CombineKt$a$a;

    iget-object v7, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->g:[Lkotlinx/coroutines/flow/i;

    const/16 v20, 0x0

    move-object v15, v10

    move-object/from16 v16, v7

    move/from16 v17, v11

    move-object/from16 v18, v12

    move-object/from16 v19, v21

    invoke-direct/range {v15 .. v20}, Lkotlinx/coroutines/flow/internal/CombineKt$a$a;-><init>([Lkotlinx/coroutines/flow/i;ILjava/util/concurrent/atomic/AtomicInteger;Lkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/d;)V

    const/4 v15, 0x3

    const/16 v16, 0x0

    move-object v7, v2

    move v11, v15

    move-object v15, v12

    move-object/from16 v12, v16

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    add-int/lit8 v11, v17, 0x1

    move-object v12, v15

    goto :goto_9d

    :cond_c2
    new-array v2, v13, [B

    move-object v8, v0

    move-object/from16 v7, v21

    :goto_c7
    add-int/2addr v3, v6

    int-to-byte v3, v3

    iput-object v14, v8, Lkotlinx/coroutines/flow/internal/CombineKt$a;->f:Ljava/lang/Object;

    iput-object v7, v8, Lkotlinx/coroutines/flow/internal/CombineKt$a;->a:Ljava/lang/Object;

    iput-object v2, v8, Lkotlinx/coroutines/flow/internal/CombineKt$a;->b:Ljava/lang/Object;

    iput v13, v8, Lkotlinx/coroutines/flow/internal/CombineKt$a;->c:I

    iput v3, v8, Lkotlinx/coroutines/flow/internal/CombineKt$a;->d:I

    iput v6, v8, Lkotlinx/coroutines/flow/internal/CombineKt$a;->e:I

    invoke-interface {v7, v8}, Lkotlinx/coroutines/channels/ReceiveChannel;->E(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_dc

    return-object v1

    :cond_dc
    move-object v9, v8

    move-object v15, v14

    move-object v8, v7

    move v7, v3

    move v3, v13

    :goto_e1
    invoke-static {v10}, Lkotlinx/coroutines/channels/ChannelResult;->getOrNull-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/collections/IndexedValue;

    if-nez v10, :cond_ec

    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    return-object v1

    :cond_ec
    invoke-virtual {v10}, Lkotlin/collections/IndexedValue;->d()I

    move-result v11

    aget-object v12, v15, v11

    invoke-virtual {v10}, Lkotlin/collections/IndexedValue;->e()Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v15, v11

    sget-object v10, Lkotlinx/coroutines/flow/internal/m;->b:Lkotlinx/coroutines/internal/s;

    if-ne v12, v10, :cond_fe

    add-int/lit8 v3, v3, -0x1

    :cond_fe
    aget-byte v10, v2, v11

    if-eq v10, v7, :cond_111

    int-to-byte v10, v7

    aput-byte v10, v2, v11

    invoke-interface {v8}, Lkotlinx/coroutines/channels/ReceiveChannel;->C()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lkotlinx/coroutines/channels/ChannelResult;->getOrNull-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/collections/IndexedValue;

    if-nez v10, :cond_ec

    :cond_111
    if-nez v3, :cond_168

    iget-object v10, v9, Lkotlinx/coroutines/flow/internal/CombineKt$a;->h:Lkotlin/jvm/b/a;

    invoke-interface {v10}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    if-nez v10, :cond_13a

    iget-object v10, v9, Lkotlinx/coroutines/flow/internal/CombineKt$a;->i:Lkotlin/jvm/b/q;

    iget-object v11, v9, Lkotlinx/coroutines/flow/internal/CombineKt$a;->j:Lkotlinx/coroutines/flow/j;

    iput-object v15, v9, Lkotlinx/coroutines/flow/internal/CombineKt$a;->f:Ljava/lang/Object;

    iput-object v8, v9, Lkotlinx/coroutines/flow/internal/CombineKt$a;->a:Ljava/lang/Object;

    iput-object v2, v9, Lkotlinx/coroutines/flow/internal/CombineKt$a;->b:Ljava/lang/Object;

    iput v3, v9, Lkotlinx/coroutines/flow/internal/CombineKt$a;->c:I

    iput v7, v9, Lkotlinx/coroutines/flow/internal/CombineKt$a;->d:I

    iput v5, v9, Lkotlinx/coroutines/flow/internal/CombineKt$a;->e:I

    invoke-interface {v10, v11, v15, v9}, Lkotlin/jvm/b/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_134

    return-object v1

    :cond_134
    move v13, v3

    move v3, v7

    move-object v7, v8

    move-object v8, v9

    move-object v14, v15

    goto :goto_c7

    :cond_13a
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xe

    const/16 v18, 0x0

    move-object v11, v15

    move-object v12, v10

    move-object v5, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v18

    invoke-static/range {v11 .. v17}, Lkotlin/collections/k;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    iget-object v11, v9, Lkotlinx/coroutines/flow/internal/CombineKt$a;->i:Lkotlin/jvm/b/q;

    iget-object v12, v9, Lkotlinx/coroutines/flow/internal/CombineKt$a;->j:Lkotlinx/coroutines/flow/j;

    iput-object v5, v9, Lkotlinx/coroutines/flow/internal/CombineKt$a;->f:Ljava/lang/Object;

    iput-object v8, v9, Lkotlinx/coroutines/flow/internal/CombineKt$a;->a:Ljava/lang/Object;

    iput-object v2, v9, Lkotlinx/coroutines/flow/internal/CombineKt$a;->b:Ljava/lang/Object;

    iput v3, v9, Lkotlinx/coroutines/flow/internal/CombineKt$a;->c:I

    iput v7, v9, Lkotlinx/coroutines/flow/internal/CombineKt$a;->d:I

    iput v4, v9, Lkotlinx/coroutines/flow/internal/CombineKt$a;->e:I

    invoke-interface {v11, v12, v10, v9}, Lkotlin/jvm/b/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_169

    return-object v1

    :goto_165
    const/4 v5, 0x2

    goto/16 :goto_c7

    :cond_168
    move-object v5, v15

    :cond_169
    move v13, v3

    move-object v14, v5

    move v3, v7

    move-object v7, v8

    move-object v8, v9

    goto :goto_165
.end method
