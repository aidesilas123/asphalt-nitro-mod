###### Class com.hyprmx.android.sdk.utility.c1 (com.hyprmx.android.sdk.utility.c1)
.class public final Lcom/hyprmx/android/sdk/utility/c1;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/j;",
        "Lkotlin/jvm/b/p<",
        "Lkotlinx/coroutines/s;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lcom/hyprmx/android/sdk/utility/b1;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.hyprmx.android.sdk.utility.VideoCacheManagerImpl$downloadVideo$2"
    f = "VideoCacheManagerImpl.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x3,
        0x3,
        0x3
    }
    l = {
        0x22,
        0x24,
        0x39,
        0x3a
    }
    m = "invokeSuspend"
    n = {
        "$this$withContext",
        "key",
        "$this$withContext",
        "key",
        "$this$withContext",
        "key",
        "response",
        "$this$withContext",
        "response",
        "cachedVideoLength"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "J$0"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Lcom/hyprmx/android/sdk/network/m;

.field public c:J

.field public d:I

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lcom/hyprmx/android/sdk/utility/e1;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/utility/e1;Ljava/lang/String;Lkotlin/coroutines/d;)V
    .registers 4

    iput-object p2, p0, Lcom/hyprmx/android/sdk/utility/c1;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/hyprmx/android/sdk/utility/c1;->g:Lcom/hyprmx/android/sdk/utility/e1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 6
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

    new-instance v0, Lcom/hyprmx/android/sdk/utility/c1;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/utility/c1;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/hyprmx/android/sdk/utility/c1;->g:Lcom/hyprmx/android/sdk/utility/e1;

    invoke-direct {v0, v2, v1, p2}, Lcom/hyprmx/android/sdk/utility/c1;-><init>(Lcom/hyprmx/android/sdk/utility/e1;Ljava/lang/String;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Lcom/hyprmx/android/sdk/utility/c1;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/utility/c1;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/utility/c1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/utility/c1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 22

    move-object/from16 v8, p0

    const-string v0, "Failed to cache vast video. Insufficient storage. Free space left: "

    const-string v9, "Incomplete Download.Downloaded: "

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v10

    iget v1, v8, Lcom/hyprmx/android/sdk/utility/c1;->d:I

    const/4 v11, 0x3

    const/4 v2, 0x2

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v1, :cond_68

    if-eq v1, v14, :cond_5a

    if-eq v1, v2, :cond_49

    if-eq v1, v11, :cond_36

    if-ne v1, v12, :cond_2e

    iget-wide v0, v8, Lcom/hyprmx/android/sdk/utility/c1;->c:J

    iget-object v2, v8, Lcom/hyprmx/android/sdk/utility/c1;->a:Ljava/lang/Object;

    check-cast v2, Lcom/hyprmx/android/sdk/network/m;

    iget-object v3, v8, Lcom/hyprmx/android/sdk/utility/c1;->e:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/s;

    :try_start_26
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_1cb

    move-wide v4, v0

    move-object/from16 v0, p1

    goto/16 :goto_17a

    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    iget-object v0, v8, Lcom/hyprmx/android/sdk/utility/c1;->b:Lcom/hyprmx/android/sdk/network/m;

    iget-object v1, v8, Lcom/hyprmx/android/sdk/utility/c1;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v8, Lcom/hyprmx/android/sdk/utility/c1;->e:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/s;

    :try_start_41
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_1cb

    move-object v2, v0

    move-object/from16 v0, p1

    goto/16 :goto_155

    :cond_49
    iget-object v1, v8, Lcom/hyprmx/android/sdk/utility/c1;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v8, Lcom/hyprmx/android/sdk/utility/c1;->e:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/s;

    :try_start_52
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_1cb

    move-object v2, v1

    move-object/from16 v1, p1

    goto/16 :goto_c7

    :cond_5a
    iget-object v1, v8, Lcom/hyprmx/android/sdk/utility/c1;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v3, v8, Lcom/hyprmx/android/sdk/utility/c1;->e:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/s;

    :try_start_62
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_1cb

    :cond_65
    move-object v7, v1

    move-object v6, v3

    goto :goto_8c

    :cond_68
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, v8, Lcom/hyprmx/android/sdk/utility/c1;->e:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Lkotlinx/coroutines/s;

    const-string v1, "Starting video download."

    invoke-static {v1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    :try_start_75
    iget-object v1, v8, Lcom/hyprmx/android/sdk/utility/c1;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/hyprmx/android/sdk/utility/w0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, v8, Lcom/hyprmx/android/sdk/utility/c1;->g:Lcom/hyprmx/android/sdk/utility/e1;

    iget-object v4, v4, Lcom/hyprmx/android/sdk/utility/e1;->d:Lcom/hyprmx/android/sdk/preload/p;

    iput-object v3, v8, Lcom/hyprmx/android/sdk/utility/c1;->e:Ljava/lang/Object;

    iput-object v1, v8, Lcom/hyprmx/android/sdk/utility/c1;->a:Ljava/lang/Object;

    iput v14, v8, Lcom/hyprmx/android/sdk/utility/c1;->d:I

    invoke-interface {v4, v1, v8}, Lcom/hyprmx/android/sdk/preload/p;->b(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v4
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_89} :catch_1cb

    if-ne v4, v10, :cond_65

    return-object v10

    :goto_8c
    :try_start_8c
    iget-object v1, v8, Lcom/hyprmx/android/sdk/utility/c1;->g:Lcom/hyprmx/android/sdk/utility/e1;

    iget-object v3, v1, Lcom/hyprmx/android/sdk/utility/e1;->c:Lcom/hyprmx/android/sdk/network/k;

    iget-object v4, v8, Lcom/hyprmx/android/sdk/utility/c1;->f:Ljava/lang/String;

    new-instance v5, Lcom/hyprmx/android/sdk/utility/c1$a;

    invoke-direct {v5, v1, v7, v15}, Lcom/hyprmx/android/sdk/utility/c1$a;-><init>(Lcom/hyprmx/android/sdk/utility/e1;Ljava/lang/String;Lkotlin/coroutines/d;)V

    iput-object v6, v8, Lcom/hyprmx/android/sdk/utility/c1;->e:Ljava/lang/Object;

    iput-object v7, v8, Lcom/hyprmx/android/sdk/utility/c1;->a:Ljava/lang/Object;

    iput v2, v8, Lcom/hyprmx/android/sdk/utility/c1;->d:I

    const/16 v16, 0x0

    const-string v17, "GET"

    new-instance v2, Lcom/hyprmx/android/sdk/network/a;

    const/16 v1, 0xf

    invoke-direct {v2, v13, v15, v1}, Lcom/hyprmx/android/sdk/network/a;-><init>(ILjava/util/Map;I)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_a8} :catch_1c5

    move-object v1, v3

    move-object/from16 v18, v2

    move-object v2, v4

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v16, v5

    move-object/from16 v5, v18

    move-object/from16 v17, v6

    move-object/from16 v6, v16

    move-object/from16 v16, v7

    move-object/from16 v7, p0

    :try_start_bc
    invoke-interface/range {v1 .. v7}, Lcom/hyprmx/android/sdk/network/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyprmx/android/sdk/network/a;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v1
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_c0} :catch_1c3

    if-ne v1, v10, :cond_c3

    return-object v10

    :cond_c3
    move-object/from16 v2, v16

    move-object/from16 v3, v17

    :goto_c7
    :try_start_c7
    check-cast v1, Lcom/hyprmx/android/sdk/network/m;

    instance-of v4, v1, Lcom/hyprmx/android/sdk/network/m$b;

    if-eqz v4, :cond_1bd

    invoke-virtual {v1}, Lcom/hyprmx/android/sdk/network/m;->a()I

    move-result v4

    const/16 v5, 0xc8

    if-gt v5, v4, :cond_db

    const/16 v5, 0x12c

    if-ge v4, v5, :cond_db

    const/4 v4, 0x1

    goto :goto_dc

    :cond_db
    const/4 v4, 0x0

    :goto_dc
    if-eqz v4, :cond_1bd

    move-object v4, v1

    check-cast v4, Lcom/hyprmx/android/sdk/network/m$b;

    iget-object v4, v4, Lcom/hyprmx/android/sdk/network/m$b;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_f6

    const-string v0, "Download not put to disk."

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/hyprmx/android/sdk/utility/b1$a;

    invoke-direct {v0, v14}, Lcom/hyprmx/android/sdk/utility/b1$a;-><init>(Z)V

    return-object v0

    :cond_f6
    iget-object v4, v8, Lcom/hyprmx/android/sdk/utility/c1;->g:Lcom/hyprmx/android/sdk/utility/e1;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/hyprmx/android/sdk/utility/w0;->a()J

    move-result-wide v4

    move-object v6, v1

    check-cast v6, Lcom/hyprmx/android/sdk/network/m$b;

    iget-wide v6, v6, Lcom/hyprmx/android/sdk/network/m$b;->d:J

    cmp-long v16, v6, v4

    if-ltz v16, :cond_13d

    iget-object v2, v8, Lcom/hyprmx/android/sdk/utility/c1;->g:Lcom/hyprmx/android/sdk/utility/e1;

    iget-object v2, v2, Lcom/hyprmx/android/sdk/utility/e1;->b:Lcom/hyprmx/android/sdk/analytics/b;

    sget-object v6, Lcom/hyprmx/android/sdk/utility/s;->c:Lcom/hyprmx/android/sdk/utility/s;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", video length: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v1, Lcom/hyprmx/android/sdk/network/m$b;

    iget-wide v0, v1, Lcom/hyprmx/android/sdk/network/m$b;->d:J

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", video url: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v8, Lcom/hyprmx/android/sdk/utility/c1;->f:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v15, v14, v15}, Lkotlin/text/g;->trimMargin$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v6, v0, v12}, Lcom/hyprmx/android/sdk/analytics/b;->a(Lcom/hyprmx/android/sdk/utility/s;Ljava/lang/String;I)V

    new-instance v0, Lcom/hyprmx/android/sdk/utility/b1$a;

    invoke-direct {v0, v13}, Lcom/hyprmx/android/sdk/utility/b1$a;-><init>(Z)V

    return-object v0

    :cond_13d
    iget-object v0, v8, Lcom/hyprmx/android/sdk/utility/c1;->g:Lcom/hyprmx/android/sdk/utility/e1;

    iget-object v0, v0, Lcom/hyprmx/android/sdk/utility/e1;->d:Lcom/hyprmx/android/sdk/preload/p;

    iput-object v3, v8, Lcom/hyprmx/android/sdk/utility/c1;->e:Ljava/lang/Object;

    iput-object v2, v8, Lcom/hyprmx/android/sdk/utility/c1;->a:Ljava/lang/Object;

    iput-object v1, v8, Lcom/hyprmx/android/sdk/utility/c1;->b:Lcom/hyprmx/android/sdk/network/m;

    iput v11, v8, Lcom/hyprmx/android/sdk/utility/c1;->d:I

    invoke-interface {v0, v2, v8}, Lcom/hyprmx/android/sdk/preload/p;->e(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_150

    return-object v10

    :cond_150
    move-object/from16 v19, v2

    move-object v2, v1

    move-object/from16 v1, v19

    :goto_155
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    iget-object v0, v8, Lcom/hyprmx/android/sdk/utility/c1;->g:Lcom/hyprmx/android/sdk/utility/e1;

    iput-object v3, v8, Lcom/hyprmx/android/sdk/utility/c1;->e:Ljava/lang/Object;

    iput-object v2, v8, Lcom/hyprmx/android/sdk/utility/c1;->a:Ljava/lang/Object;

    iput-object v15, v8, Lcom/hyprmx/android/sdk/utility/c1;->b:Lcom/hyprmx/android/sdk/network/m;

    iput-wide v4, v8, Lcom/hyprmx/android/sdk/utility/c1;->c:J

    iput v12, v8, Lcom/hyprmx/android/sdk/utility/c1;->d:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/r;

    move-result-object v6

    new-instance v7, Lcom/hyprmx/android/sdk/utility/d1;

    invoke-direct {v7, v0, v1, v15}, Lcom/hyprmx/android/sdk/utility/d1;-><init>(Lcom/hyprmx/android/sdk/utility/e1;Ljava/lang/String;Lkotlin/coroutines/d;)V

    invoke-static {v6, v7, v8}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_17a

    return-object v10

    :cond_17a
    :goto_17a
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move-object v1, v2

    check-cast v1, Lcom/hyprmx/android/sdk/network/m$b;

    iget-wide v6, v1, Lcom/hyprmx/android/sdk/network/m$b;->d:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1b3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".Expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v2, Lcom/hyprmx/android/sdk/network/m$b;

    iget-wide v1, v2, Lcom/hyprmx/android/sdk/network/m$b;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v15, v14, v15}, Lkotlin/text/g;->trimMargin$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/hyprmx/android/sdk/utility/b1$a;

    invoke-direct {v0, v14}, Lcom/hyprmx/android/sdk/utility/b1$a;-><init>(Z)V

    return-object v0

    :cond_1b3
    check-cast v2, Lcom/hyprmx/android/sdk/network/m$b;

    iget-wide v1, v2, Lcom/hyprmx/android/sdk/network/m$b;->d:J

    new-instance v4, Lcom/hyprmx/android/sdk/utility/b1$b;

    invoke-direct {v4, v0, v1, v2}, Lcom/hyprmx/android/sdk/utility/b1$b;-><init>(ZJ)V

    return-object v4

    :cond_1bd
    new-instance v0, Lcom/hyprmx/android/sdk/utility/b1$a;

    invoke-direct {v0, v13}, Lcom/hyprmx/android/sdk/utility/b1$a;-><init>(Z)V
    :try_end_1c2
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_1c2} :catch_1cb

    return-object v0

    :catch_1c3
    move-exception v0

    goto :goto_1c8

    :catch_1c5
    move-exception v0

    move-object/from16 v17, v6

    :goto_1c8
    move-object/from16 v3, v17

    goto :goto_1cc

    :catch_1cb
    move-exception v0

    :goto_1cc
    invoke-static {v3}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/s;)Z

    move-result v1

    if-eqz v1, :cond_1d8

    const-string v1, "Exception downloading video"

    invoke-static {v1, v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1eb

    :cond_1d8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Download cancelled for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/hyprmx/android/sdk/utility/c1;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    :goto_1eb
    new-instance v0, Lcom/hyprmx/android/sdk/utility/b1$a;

    invoke-direct {v0, v13}, Lcom/hyprmx/android/sdk/utility/b1$a;-><init>(Z)V

    return-object v0
.end method

###### Class com.hyprmx.android.sdk.utility.c1.a (com.hyprmx.android.sdk.utility.c1$a)
.class public final Lcom/hyprmx/android/sdk/utility/c1$a;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/utility/c1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/j;",
        "Lkotlin/jvm/b/p<",
        "Ljava/io/InputStream;",
        "Lkotlin/coroutines/d<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.hyprmx.android.sdk.utility.VideoCacheManagerImpl$downloadVideo$2$response$1"
    f = "VideoCacheManagerImpl.kt"
    i = {}
    l = {
        0x25
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/hyprmx/android/sdk/utility/e1;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/utility/e1;Ljava/lang/String;Lkotlin/coroutines/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/utility/e1;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/utility/c1$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/utility/c1$a;->c:Lcom/hyprmx/android/sdk/utility/e1;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/utility/c1$a;->d:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 6
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

    new-instance v0, Lcom/hyprmx/android/sdk/utility/c1$a;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/utility/c1$a;->c:Lcom/hyprmx/android/sdk/utility/e1;

    iget-object v2, p0, Lcom/hyprmx/android/sdk/utility/c1$a;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcom/hyprmx/android/sdk/utility/c1$a;-><init>(Lcom/hyprmx/android/sdk/utility/e1;Ljava/lang/String;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Lcom/hyprmx/android/sdk/utility/c1$a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ljava/io/InputStream;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/utility/c1$a;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/utility/c1$a;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/utility/c1$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/utility/c1$a;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2d

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/utility/c1$a;->b:Ljava/lang/Object;

    check-cast p1, Ljava/io/InputStream;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/utility/c1$a;->c:Lcom/hyprmx/android/sdk/utility/e1;

    iget-object v1, v1, Lcom/hyprmx/android/sdk/utility/e1;->d:Lcom/hyprmx/android/sdk/preload/p;

    iget-object v3, p0, Lcom/hyprmx/android/sdk/utility/c1$a;->d:Ljava/lang/String;

    iput v2, p0, Lcom/hyprmx/android/sdk/utility/c1$a;->a:I

    invoke-interface {v1, v3, p1, p0}, Lcom/hyprmx/android/sdk/preload/p;->a(Ljava/lang/String;Ljava/io/InputStream;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2d

    return-object v0

    :cond_2d
    :goto_2d
    return-object p1
.end method
