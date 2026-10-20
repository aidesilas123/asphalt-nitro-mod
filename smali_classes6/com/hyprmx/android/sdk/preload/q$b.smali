###### Class com.hyprmx.android.sdk.preload.q.b (com.hyprmx.android.sdk.preload.q$b)
.class public final Lcom/hyprmx/android/sdk/preload/q$b;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/preload/q;->d(Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/j;",
        "Lkotlin/jvm/b/p<",
        "Lkotlinx/coroutines/s;",
        "Lkotlin/coroutines/d<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.hyprmx.android.sdk.preload.DiskLruCacheHelperImpl$clearAllCache$2$1"
    f = "DiskLruCacheHelperImpl.kt"
    i = {}
    l = {
        0xe2,
        0xe3,
        0xec,
        0xf3
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/hyprmx/android/sdk/preload/q;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/preload/q;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/preload/q;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/preload/q$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$b;->b:Lcom/hyprmx/android/sdk/preload/q;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 4
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

    new-instance p1, Lcom/hyprmx/android/sdk/preload/q$b;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/preload/q$b;->b:Lcom/hyprmx/android/sdk/preload/q;

    invoke-direct {p1, v0, p2}, Lcom/hyprmx/android/sdk/preload/q$b;-><init>(Lcom/hyprmx/android/sdk/preload/q;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/preload/q$b;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/preload/q$b;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/preload/q$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/preload/q$b;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_32

    if-eq v1, v6, :cond_2e

    if-eq v1, v5, :cond_2a

    if-eq v1, v4, :cond_22

    if-ne v1, v3, :cond_1a

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_e4

    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_22
    :try_start_22
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_27

    goto/16 :goto_cf

    :catch_27
    move-exception p1

    goto/16 :goto_d4

    :cond_2a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_60

    :cond_2e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4d

    :cond_32
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$b;->b:Lcom/hyprmx/android/sdk/preload/q;

    iput v6, p0, Lcom/hyprmx/android/sdk/preload/q$b;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/r;

    move-result-object v1

    new-instance v7, Lcom/hyprmx/android/sdk/preload/t;

    const/4 v8, 0x0

    invoke-direct {v7, p1, v8}, Lcom/hyprmx/android/sdk/preload/t;-><init>(Lcom/hyprmx/android/sdk/preload/q;Lkotlin/coroutines/d;)V

    invoke-static {v1, v7, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4d

    return-object v0

    :cond_4d
    :goto_4d
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_65

    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$b;->b:Lcom/hyprmx/android/sdk/preload/q;

    iput v5, p0, Lcom/hyprmx/android/sdk/preload/q$b;->a:I

    invoke-virtual {p1, p0}, Lcom/hyprmx/android/sdk/preload/q;->a(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_60

    return-object v0

    :cond_60
    :goto_60
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_65
    :try_start_65
    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$b;->b:Lcom/hyprmx/android/sdk/preload/q;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/preload/q;->c:Lcom/hyprmx/android/sdk/utility/l;

    if-eqz p1, :cond_a8

    monitor-enter p1
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_6c} :catch_27

    :try_start_6c
    iget-object v1, p1, Lcom/hyprmx/android/sdk/utility/l;->l:Ljava/io/BufferedWriter;

    if-eqz v1, :cond_9d

    iget-boolean v1, p1, Lcom/hyprmx/android/sdk/utility/l;->i:Z

    if-eqz v1, :cond_96

    :goto_74
    iget-wide v7, p1, Lcom/hyprmx/android/sdk/utility/l;->k:J

    iget-wide v9, p1, Lcom/hyprmx/android/sdk/utility/l;->j:J

    cmp-long v1, v7, v9

    if-lez v1, :cond_96

    iget-object v1, p1, Lcom/hyprmx/android/sdk/utility/l;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/hyprmx/android/sdk/utility/l;->l(Ljava/lang/String;)Z

    goto :goto_74

    :cond_96
    iget-object v1, p1, Lcom/hyprmx/android/sdk/utility/l;->l:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_9b
    .catchall {:try_start_6c .. :try_end_9b} :catchall_a5

    :try_start_9b
    monitor-exit p1
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9c} :catch_27

    goto :goto_a8

    :cond_9d
    :try_start_9d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v4, "cache is closed"

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_a5
    .catchall {:try_start_9d .. :try_end_a5} :catchall_a5

    :catchall_a5
    move-exception v1

    :try_start_a6
    monitor-exit p1

    throw v1

    :cond_a8
    :goto_a8
    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$b;->b:Lcom/hyprmx/android/sdk/preload/q;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/preload/q;->c:Lcom/hyprmx/android/sdk/utility/l;

    if-eqz p1, :cond_b6

    invoke-virtual {p1}, Lcom/hyprmx/android/sdk/utility/l;->close()V

    iget-object p1, p1, Lcom/hyprmx/android/sdk/utility/l;->b:Ljava/io/File;

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/u0;->a(Ljava/io/File;)V

    :cond_b6
    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$b;->b:Lcom/hyprmx/android/sdk/preload/q;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/preload/q;->c:Lcom/hyprmx/android/sdk/utility/l;

    if-eqz p1, :cond_bf

    invoke-virtual {p1}, Lcom/hyprmx/android/sdk/utility/l;->close()V

    :cond_bf
    const-string p1, "DiskLRUCache cleared"

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$b;->b:Lcom/hyprmx/android/sdk/preload/q;

    iput v4, p0, Lcom/hyprmx/android/sdk/preload/q$b;->a:I

    invoke-virtual {p1, p0}, Lcom/hyprmx/android/sdk/preload/q;->a(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_cf

    return-object v0

    :cond_cf
    :goto_cf
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_d3} :catch_27

    return-object p1

    :goto_d4
    const-string v1, "Exception clearing DiskLruCache"

    invoke-static {v1, p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$b;->b:Lcom/hyprmx/android/sdk/preload/q;

    iput v3, p0, Lcom/hyprmx/android/sdk/preload/q$b;->a:I

    invoke-virtual {p1, p0}, Lcom/hyprmx/android/sdk/preload/q;->a(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_e4

    return-object v0

    :cond_e4
    :goto_e4
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
