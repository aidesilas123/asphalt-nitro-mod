###### Class com.hyprmx.android.sdk.preload.q (com.hyprmx.android.sdk.preload.q)
.class public final Lcom/hyprmx/android/sdk/preload/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/preload/p;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lkotlinx/coroutines/sync/Mutex;

.field public c:Lcom/hyprmx/android/sdk/utility/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/preload/q;->a:Landroid/content/Context;

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lcom/hyprmx/android/sdk/preload/q;->b:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 11

    instance-of v0, p3, Lcom/hyprmx/android/sdk/preload/r;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lcom/hyprmx/android/sdk/preload/r;

    iget v1, v0, Lcom/hyprmx/android/sdk/preload/r;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/preload/r;->g:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/preload/r;

    invoke-direct {v0, p0, p3}, Lcom/hyprmx/android/sdk/preload/r;-><init>(Lcom/hyprmx/android/sdk/preload/q;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p3, v0, Lcom/hyprmx/android/sdk/preload/r;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/preload/r;->g:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_47

    if-eq v2, v4, :cond_39

    if-ne v2, v3, :cond_31

    iget-object p1, v0, Lcom/hyprmx/android/sdk/preload/r;->a:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    :try_start_2d
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_81

    goto :goto_7b

    :cond_31
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_39
    iget-object p1, v0, Lcom/hyprmx/android/sdk/preload/r;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object p2, v0, Lcom/hyprmx/android/sdk/preload/r;->c:Landroid/content/Context;

    iget-object v2, v0, Lcom/hyprmx/android/sdk/preload/r;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/hyprmx/android/sdk/preload/r;->a:Ljava/lang/Object;

    check-cast v4, Lcom/hyprmx/android/sdk/preload/q;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_61

    :cond_47
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/hyprmx/android/sdk/preload/q;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-object p0, v0, Lcom/hyprmx/android/sdk/preload/r;->a:Ljava/lang/Object;

    iput-object p2, v0, Lcom/hyprmx/android/sdk/preload/r;->b:Ljava/lang/String;

    iput-object p1, v0, Lcom/hyprmx/android/sdk/preload/r;->c:Landroid/content/Context;

    iput-object p3, v0, Lcom/hyprmx/android/sdk/preload/r;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lcom/hyprmx/android/sdk/preload/r;->g:I

    invoke-interface {p3, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->c(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5d

    return-object v1

    :cond_5d
    move-object v4, p0

    move-object v2, p2

    move-object p2, p1

    move-object p1, p3

    :goto_61
    :try_start_61
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/r;

    move-result-object p3

    new-instance v6, Lcom/hyprmx/android/sdk/preload/s;

    invoke-direct {v6, v4, p2, v2, v5}, Lcom/hyprmx/android/sdk/preload/s;-><init>(Lcom/hyprmx/android/sdk/preload/q;Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Lcom/hyprmx/android/sdk/preload/r;->a:Ljava/lang/Object;

    iput-object v5, v0, Lcom/hyprmx/android/sdk/preload/r;->b:Ljava/lang/String;

    iput-object v5, v0, Lcom/hyprmx/android/sdk/preload/r;->c:Landroid/content/Context;

    iput-object v5, v0, Lcom/hyprmx/android/sdk/preload/r;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lcom/hyprmx/android/sdk/preload/r;->g:I

    invoke-static {p3, v6, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_7b

    return-object v1

    :cond_7b
    :goto_7b
    check-cast p3, Ljava/lang/String;
    :try_end_7d
    .catchall {:try_start_61 .. :try_end_7d} :catchall_81

    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    return-object p3

    :catchall_81
    move-exception p2

    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw p2
.end method

.method public final a(Ljava/lang/String;Ljava/io/InputStream;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/hyprmx/android/sdk/preload/q$h;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lcom/hyprmx/android/sdk/preload/q$h;

    iget v1, v0, Lcom/hyprmx/android/sdk/preload/q$h;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/preload/q$h;->g:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/preload/q$h;

    invoke-direct {v0, p0, p3}, Lcom/hyprmx/android/sdk/preload/q$h;-><init>(Lcom/hyprmx/android/sdk/preload/q;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p3, v0, Lcom/hyprmx/android/sdk/preload/q$h;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/preload/q$h;->g:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_47

    if-eq v2, v4, :cond_39

    if-ne v2, v3, :cond_31

    iget-object p1, v0, Lcom/hyprmx/android/sdk/preload/q$h;->a:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    :try_start_2d
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_88

    goto :goto_7a

    :cond_31
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_39
    iget-object p1, v0, Lcom/hyprmx/android/sdk/preload/q$h;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object p2, v0, Lcom/hyprmx/android/sdk/preload/q$h;->c:Ljava/io/InputStream;

    iget-object v2, v0, Lcom/hyprmx/android/sdk/preload/q$h;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/hyprmx/android/sdk/preload/q$h;->a:Ljava/lang/Object;

    check-cast v4, Lcom/hyprmx/android/sdk/preload/q;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_60

    :cond_47
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/hyprmx/android/sdk/preload/q;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-object p0, v0, Lcom/hyprmx/android/sdk/preload/q$h;->a:Ljava/lang/Object;

    iput-object p1, v0, Lcom/hyprmx/android/sdk/preload/q$h;->b:Ljava/lang/String;

    iput-object p2, v0, Lcom/hyprmx/android/sdk/preload/q$h;->c:Ljava/io/InputStream;

    iput-object p3, v0, Lcom/hyprmx/android/sdk/preload/q$h;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lcom/hyprmx/android/sdk/preload/q$h;->g:I

    invoke-interface {p3, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->c(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5d

    return-object v1

    :cond_5d
    move-object v4, p0

    move-object v2, p1

    move-object p1, p3

    :goto_60
    :try_start_60
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/r;

    move-result-object p3

    new-instance v6, Lcom/hyprmx/android/sdk/preload/q$i;

    invoke-direct {v6, v4, p2, v2, v5}, Lcom/hyprmx/android/sdk/preload/q$i;-><init>(Lcom/hyprmx/android/sdk/preload/q;Ljava/io/InputStream;Ljava/lang/String;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Lcom/hyprmx/android/sdk/preload/q$h;->a:Ljava/lang/Object;

    iput-object v5, v0, Lcom/hyprmx/android/sdk/preload/q$h;->b:Ljava/lang/String;

    iput-object v5, v0, Lcom/hyprmx/android/sdk/preload/q$h;->c:Ljava/io/InputStream;

    iput-object v5, v0, Lcom/hyprmx/android/sdk/preload/q$h;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lcom/hyprmx/android/sdk/preload/q$h;->g:I

    invoke-static {p3, v6, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_7a

    return-object v1

    :cond_7a
    :goto_7a
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p2
    :try_end_84
    .catchall {:try_start_60 .. :try_end_84} :catchall_88

    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    return-object p2

    :catchall_88
    move-exception p2

    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw p2
.end method

.method public final a(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 5
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

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/r;

    move-result-object v0

    new-instance v1, Lcom/hyprmx/android/sdk/preload/q$g;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/hyprmx/android/sdk/preload/q$g;-><init>(Lcom/hyprmx/android/sdk/preload/q;Lkotlin/coroutines/d;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b()J
    .registers 4

    iget-object v0, p0, Lcom/hyprmx/android/sdk/preload/q;->c:Lcom/hyprmx/android/sdk/utility/l;

    if-eqz v0, :cond_c

    monitor-enter v0

    :try_start_5
    iget-wide v1, v0, Lcom/hyprmx/android/sdk/utility/l;->k:J
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_9

    monitor-exit v0

    goto :goto_e

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_c
    const-wide/16 v1, 0x0

    :goto_e
    return-wide v1
.end method

.method public final b(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/hyprmx/android/sdk/preload/q$j;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lcom/hyprmx/android/sdk/preload/q$j;

    iget v1, v0, Lcom/hyprmx/android/sdk/preload/q$j;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/preload/q$j;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/preload/q$j;

    invoke-direct {v0, p0, p2}, Lcom/hyprmx/android/sdk/preload/q$j;-><init>(Lcom/hyprmx/android/sdk/preload/q;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p2, v0, Lcom/hyprmx/android/sdk/preload/q$j;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/preload/q$j;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_45

    if-eq v2, v4, :cond_39

    if-ne v2, v3, :cond_31

    iget-object p1, v0, Lcom/hyprmx/android/sdk/preload/q$j;->a:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    :try_start_2d
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_82

    goto :goto_74

    :cond_31
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_39
    iget-object p1, v0, Lcom/hyprmx/android/sdk/preload/q$j;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lcom/hyprmx/android/sdk/preload/q$j;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/hyprmx/android/sdk/preload/q$j;->a:Ljava/lang/Object;

    check-cast v4, Lcom/hyprmx/android/sdk/preload/q;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5c

    :cond_45
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/hyprmx/android/sdk/preload/q;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-object p0, v0, Lcom/hyprmx/android/sdk/preload/q$j;->a:Ljava/lang/Object;

    iput-object p1, v0, Lcom/hyprmx/android/sdk/preload/q$j;->b:Ljava/lang/String;

    iput-object p2, v0, Lcom/hyprmx/android/sdk/preload/q$j;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lcom/hyprmx/android/sdk/preload/q$j;->f:I

    invoke-interface {p2, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->c(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_59

    return-object v1

    :cond_59
    move-object v4, p0

    move-object v2, p1

    move-object p1, p2

    :goto_5c
    :try_start_5c
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/r;

    move-result-object p2

    new-instance v6, Lcom/hyprmx/android/sdk/preload/q$k;

    invoke-direct {v6, v4, v2, v5}, Lcom/hyprmx/android/sdk/preload/q$k;-><init>(Lcom/hyprmx/android/sdk/preload/q;Ljava/lang/String;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Lcom/hyprmx/android/sdk/preload/q$j;->a:Ljava/lang/Object;

    iput-object v5, v0, Lcom/hyprmx/android/sdk/preload/q$j;->b:Ljava/lang/String;

    iput-object v5, v0, Lcom/hyprmx/android/sdk/preload/q$j;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lcom/hyprmx/android/sdk/preload/q$j;->f:I

    invoke-static {p2, v6, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_74

    return-object v1

    :cond_74
    :goto_74
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p2
    :try_end_7e
    .catchall {:try_start_5c .. :try_end_7e} :catchall_82

    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    return-object p2

    :catchall_82
    move-exception p2

    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw p2
.end method

.method public final c(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/hyprmx/android/sdk/preload/q$c;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lcom/hyprmx/android/sdk/preload/q$c;

    iget v1, v0, Lcom/hyprmx/android/sdk/preload/q$c;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/preload/q$c;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/preload/q$c;

    invoke-direct {v0, p0, p2}, Lcom/hyprmx/android/sdk/preload/q$c;-><init>(Lcom/hyprmx/android/sdk/preload/q;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p2, v0, Lcom/hyprmx/android/sdk/preload/q$c;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/preload/q$c;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_45

    if-eq v2, v4, :cond_39

    if-ne v2, v3, :cond_31

    iget-object p1, v0, Lcom/hyprmx/android/sdk/preload/q$c;->a:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    :try_start_2d
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_82

    goto :goto_74

    :cond_31
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_39
    iget-object p1, v0, Lcom/hyprmx/android/sdk/preload/q$c;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lcom/hyprmx/android/sdk/preload/q$c;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/hyprmx/android/sdk/preload/q$c;->a:Ljava/lang/Object;

    check-cast v4, Lcom/hyprmx/android/sdk/preload/q;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5c

    :cond_45
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/hyprmx/android/sdk/preload/q;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-object p0, v0, Lcom/hyprmx/android/sdk/preload/q$c;->a:Ljava/lang/Object;

    iput-object p1, v0, Lcom/hyprmx/android/sdk/preload/q$c;->b:Ljava/lang/String;

    iput-object p2, v0, Lcom/hyprmx/android/sdk/preload/q$c;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lcom/hyprmx/android/sdk/preload/q$c;->f:I

    invoke-interface {p2, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->c(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_59

    return-object v1

    :cond_59
    move-object v4, p0

    move-object v2, p1

    move-object p1, p2

    :goto_5c
    :try_start_5c
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/r;

    move-result-object p2

    new-instance v6, Lcom/hyprmx/android/sdk/preload/q$d;

    invoke-direct {v6, v4, v2, v5}, Lcom/hyprmx/android/sdk/preload/q$d;-><init>(Lcom/hyprmx/android/sdk/preload/q;Ljava/lang/String;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Lcom/hyprmx/android/sdk/preload/q$c;->a:Ljava/lang/Object;

    iput-object v5, v0, Lcom/hyprmx/android/sdk/preload/q$c;->b:Ljava/lang/String;

    iput-object v5, v0, Lcom/hyprmx/android/sdk/preload/q$c;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lcom/hyprmx/android/sdk/preload/q$c;->f:I

    invoke-static {p2, v6, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_74

    return-object v1

    :cond_74
    :goto_74
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p2
    :try_end_7e
    .catchall {:try_start_5c .. :try_end_7e} :catchall_82

    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    return-object p2

    :catchall_82
    move-exception p2

    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw p2
.end method

.method public final close()V
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/preload/q;->c:Lcom/hyprmx/android/sdk/utility/l;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/hyprmx/android/sdk/utility/l;->close()V

    :cond_7
    return-void
.end method

.method public final d(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/hyprmx/android/sdk/preload/q$a;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/hyprmx/android/sdk/preload/q$a;

    iget v1, v0, Lcom/hyprmx/android/sdk/preload/q$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/preload/q$a;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/preload/q$a;

    invoke-direct {v0, p0, p1}, Lcom/hyprmx/android/sdk/preload/q$a;-><init>(Lcom/hyprmx/android/sdk/preload/q;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p1, v0, Lcom/hyprmx/android/sdk/preload/q$a;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/preload/q$a;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_46

    if-eq v2, v4, :cond_3b

    if-ne v2, v3, :cond_33

    iget-object v0, v0, Lcom/hyprmx/android/sdk/preload/q$a;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    :try_start_2d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_72

    :catchall_31
    move-exception p1

    goto :goto_84

    :cond_33
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3b
    iget-object v2, v0, Lcom/hyprmx/android/sdk/preload/q$a;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v0, Lcom/hyprmx/android/sdk/preload/q$a;->a:Ljava/lang/Object;

    check-cast v4, Lcom/hyprmx/android/sdk/preload/q;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v2

    goto :goto_59

    :cond_46
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/q;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-object p0, v0, Lcom/hyprmx/android/sdk/preload/q$a;->a:Ljava/lang/Object;

    iput-object p1, v0, Lcom/hyprmx/android/sdk/preload/q$a;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lcom/hyprmx/android/sdk/preload/q$a;->e:I

    invoke-interface {p1, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->c(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_58

    return-object v1

    :cond_58
    move-object v4, p0

    :goto_59
    :try_start_59
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/r;

    move-result-object v2

    new-instance v6, Lcom/hyprmx/android/sdk/preload/q$b;

    invoke-direct {v6, v4, v5}, Lcom/hyprmx/android/sdk/preload/q$b;-><init>(Lcom/hyprmx/android/sdk/preload/q;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Lcom/hyprmx/android/sdk/preload/q$a;->a:Ljava/lang/Object;

    iput-object v5, v0, Lcom/hyprmx/android/sdk/preload/q$a;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lcom/hyprmx/android/sdk/preload/q$a;->e:I

    invoke-static {v2, v6, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6c
    .catchall {:try_start_59 .. :try_end_6c} :catchall_80

    if-ne v0, v1, :cond_6f

    return-object v1

    :cond_6f
    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    :goto_72
    :try_start_72
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_7c
    .catchall {:try_start_72 .. :try_end_7c} :catchall_31

    invoke-interface {v0, v5}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    return-object p1

    :catchall_80
    move-exception v0

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    :goto_84
    invoke-interface {v0, v5}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw p1
.end method

.method public final e(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/hyprmx/android/sdk/preload/q$e;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lcom/hyprmx/android/sdk/preload/q$e;

    iget v1, v0, Lcom/hyprmx/android/sdk/preload/q$e;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/preload/q$e;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/preload/q$e;

    invoke-direct {v0, p0, p2}, Lcom/hyprmx/android/sdk/preload/q$e;-><init>(Lcom/hyprmx/android/sdk/preload/q;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p2, v0, Lcom/hyprmx/android/sdk/preload/q$e;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/preload/q$e;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_45

    if-eq v2, v4, :cond_39

    if-ne v2, v3, :cond_31

    iget-object p1, v0, Lcom/hyprmx/android/sdk/preload/q$e;->a:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    :try_start_2d
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_82

    goto :goto_74

    :cond_31
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_39
    iget-object p1, v0, Lcom/hyprmx/android/sdk/preload/q$e;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lcom/hyprmx/android/sdk/preload/q$e;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/hyprmx/android/sdk/preload/q$e;->a:Ljava/lang/Object;

    check-cast v4, Lcom/hyprmx/android/sdk/preload/q;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5c

    :cond_45
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/hyprmx/android/sdk/preload/q;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-object p0, v0, Lcom/hyprmx/android/sdk/preload/q$e;->a:Ljava/lang/Object;

    iput-object p1, v0, Lcom/hyprmx/android/sdk/preload/q$e;->b:Ljava/lang/String;

    iput-object p2, v0, Lcom/hyprmx/android/sdk/preload/q$e;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lcom/hyprmx/android/sdk/preload/q$e;->f:I

    invoke-interface {p2, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->c(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_59

    return-object v1

    :cond_59
    move-object v4, p0

    move-object v2, p1

    move-object p1, p2

    :goto_5c
    :try_start_5c
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/r;

    move-result-object p2

    new-instance v6, Lcom/hyprmx/android/sdk/preload/q$f;

    invoke-direct {v6, v4, v2, v5}, Lcom/hyprmx/android/sdk/preload/q$f;-><init>(Lcom/hyprmx/android/sdk/preload/q;Ljava/lang/String;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Lcom/hyprmx/android/sdk/preload/q$e;->a:Ljava/lang/Object;

    iput-object v5, v0, Lcom/hyprmx/android/sdk/preload/q$e;->b:Ljava/lang/String;

    iput-object v5, v0, Lcom/hyprmx/android/sdk/preload/q$e;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lcom/hyprmx/android/sdk/preload/q$e;->f:I

    invoke-static {p2, v6, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_74

    return-object v1

    :cond_74
    :goto_74
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p2
    :try_end_7e
    .catchall {:try_start_5c .. :try_end_7e} :catchall_82

    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    return-object p2

    :catchall_82
    move-exception p2

    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw p2
.end method
