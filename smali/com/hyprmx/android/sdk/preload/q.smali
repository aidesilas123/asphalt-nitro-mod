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

###### Class com.hyprmx.android.sdk.preload.q.a (com.hyprmx.android.sdk.preload.q$a)
.class public final Lcom/hyprmx/android/sdk/preload/q$a;
.super Lkotlin/coroutines/jvm/internal/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/preload/q;->d(Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.hyprmx.android.sdk.preload.DiskLruCacheHelperImpl"
    f = "DiskLruCacheHelperImpl.kt"
    i = {
        0x0,
        0x0,
        0x1
    }
    l = {
        0x118,
        0xe1
    }
    m = "clearAllCache"
    n = {
        "this",
        "$this$withLock_u24default$iv",
        "$this$withLock_u24default$iv"
    }
    s = {
        "L$0",
        "L$1",
        "L$0"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Lkotlinx/coroutines/sync/Mutex;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/hyprmx/android/sdk/preload/q;

.field public e:I


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/preload/q;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/preload/q;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/preload/q$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$a;->d:Lcom/hyprmx/android/sdk/preload/q;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/c;-><init>(Lkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$a;->c:Ljava/lang/Object;

    iget p1, p0, Lcom/hyprmx/android/sdk/preload/q$a;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/hyprmx/android/sdk/preload/q$a;->e:I

    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$a;->d:Lcom/hyprmx/android/sdk/preload/q;

    invoke-virtual {p1, p0}, Lcom/hyprmx/android/sdk/preload/q;->d(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

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

###### Class com.hyprmx.android.sdk.preload.q.c (com.hyprmx.android.sdk.preload.q$c)
.class public final Lcom/hyprmx/android/sdk/preload/q$c;
.super Lkotlin/coroutines/jvm/internal/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/preload/q;->c(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.hyprmx.android.sdk.preload.DiskLruCacheHelperImpl"
    f = "DiskLruCacheHelperImpl.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x1
    }
    l = {
        0x118,
        0x40
    }
    m = "containsKeyDiskCache"
    n = {
        "this",
        "key",
        "$this$withLock_u24default$iv",
        "$this$withLock_u24default$iv"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$0"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/String;

.field public c:Lkotlinx/coroutines/sync/Mutex;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lcom/hyprmx/android/sdk/preload/q;

.field public f:I


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/preload/q;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/preload/q;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/preload/q$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$c;->e:Lcom/hyprmx/android/sdk/preload/q;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/c;-><init>(Lkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$c;->d:Ljava/lang/Object;

    iget p1, p0, Lcom/hyprmx/android/sdk/preload/q$c;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/hyprmx/android/sdk/preload/q$c;->f:I

    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$c;->e:Lcom/hyprmx/android/sdk/preload/q;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/hyprmx/android/sdk/preload/q;->c(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class com.hyprmx.android.sdk.preload.q.d (com.hyprmx.android.sdk.preload.q$d)
.class public final Lcom/hyprmx/android/sdk/preload/q$d;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/preload/q;->c(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;
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
    c = "com.hyprmx.android.sdk.preload.DiskLruCacheHelperImpl$containsKeyDiskCache$2$1"
    f = "DiskLruCacheHelperImpl.kt"
    i = {}
    l = {
        0x41
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/hyprmx/android/sdk/preload/q;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/preload/q;Ljava/lang/String;Lkotlin/coroutines/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/preload/q;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/preload/q$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$d;->b:Lcom/hyprmx/android/sdk/preload/q;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/preload/q$d;->c:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

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

    new-instance p1, Lcom/hyprmx/android/sdk/preload/q$d;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/preload/q$d;->b:Lcom/hyprmx/android/sdk/preload/q;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/preload/q$d;->c:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/hyprmx/android/sdk/preload/q$d;-><init>(Lcom/hyprmx/android/sdk/preload/q;Ljava/lang/String;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/preload/q$d;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/preload/q$d;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/preload/q$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    const-string v0, "Failed to get from DiskLruCache: "

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/hyprmx/android/sdk/preload/q$d;->a:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1a

    if-ne v2, v4, :cond_12

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_34

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$d;->b:Lcom/hyprmx/android/sdk/preload/q;

    iput v4, p0, Lcom/hyprmx/android/sdk/preload/q$d;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/r;

    move-result-object v2

    new-instance v5, Lcom/hyprmx/android/sdk/preload/t;

    invoke-direct {v5, p1, v3}, Lcom/hyprmx/android/sdk/preload/t;-><init>(Lcom/hyprmx/android/sdk/preload/q;Lkotlin/coroutines/d;)V

    invoke-static {v2, v5, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_34

    return-object v1

    :cond_34
    :goto_34
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_42

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_42
    :try_start_42
    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$d;->b:Lcom/hyprmx/android/sdk/preload/q;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/preload/q;->c:Lcom/hyprmx/android/sdk/utility/l;

    if-eqz p1, :cond_4e

    iget-object v2, p0, Lcom/hyprmx/android/sdk/preload/q$d;->c:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/hyprmx/android/sdk/utility/l;->j(Ljava/lang/String;)Lcom/hyprmx/android/sdk/utility/l$e;

    move-result-object v3
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_4e} :catch_5b
    .catchall {:try_start_42 .. :try_end_4e} :catchall_59

    :cond_4e
    if-eqz v3, :cond_51

    goto :goto_52

    :cond_51
    const/4 v4, 0x0

    :goto_52
    if-eqz v3, :cond_57

    invoke-virtual {v3}, Lcom/hyprmx/android/sdk/utility/l$e;->close()V

    :cond_57
    move v1, v4

    goto :goto_6f

    :catchall_59
    move-exception p1

    goto :goto_74

    :catch_5b
    move-exception p1

    :try_start_5c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V
    :try_end_6f
    .catchall {:try_start_5c .. :try_end_6f} :catchall_59

    :goto_6f
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :goto_74
    throw p1
.end method

###### Class com.hyprmx.android.sdk.preload.q.e (com.hyprmx.android.sdk.preload.q$e)
.class public final Lcom/hyprmx/android/sdk/preload/q$e;
.super Lkotlin/coroutines/jvm/internal/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/preload/q;->e(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.hyprmx.android.sdk.preload.DiskLruCacheHelperImpl"
    f = "DiskLruCacheHelperImpl.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x1
    }
    l = {
        0x118,
        0x85
    }
    m = "getLength"
    n = {
        "this",
        "key",
        "$this$withLock_u24default$iv",
        "$this$withLock_u24default$iv"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$0"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/String;

.field public c:Lkotlinx/coroutines/sync/Mutex;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lcom/hyprmx/android/sdk/preload/q;

.field public f:I


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/preload/q;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/preload/q;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/preload/q$e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$e;->e:Lcom/hyprmx/android/sdk/preload/q;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/c;-><init>(Lkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$e;->d:Ljava/lang/Object;

    iget p1, p0, Lcom/hyprmx/android/sdk/preload/q$e;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/hyprmx/android/sdk/preload/q$e;->f:I

    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$e;->e:Lcom/hyprmx/android/sdk/preload/q;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/hyprmx/android/sdk/preload/q;->e(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class com.hyprmx.android.sdk.preload.q.f (com.hyprmx.android.sdk.preload.q$f)
.class public final Lcom/hyprmx/android/sdk/preload/q$f;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/preload/q;->e(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;
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
        "Ljava/lang/Long;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.hyprmx.android.sdk.preload.DiskLruCacheHelperImpl$getLength$2$1"
    f = "DiskLruCacheHelperImpl.kt"
    i = {}
    l = {
        0x86
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/hyprmx/android/sdk/preload/q;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/preload/q;Ljava/lang/String;Lkotlin/coroutines/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/preload/q;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/preload/q$f;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$f;->b:Lcom/hyprmx/android/sdk/preload/q;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/preload/q$f;->c:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

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

    new-instance p1, Lcom/hyprmx/android/sdk/preload/q$f;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/preload/q$f;->b:Lcom/hyprmx/android/sdk/preload/q;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/preload/q$f;->c:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/hyprmx/android/sdk/preload/q$f;-><init>(Lcom/hyprmx/android/sdk/preload/q;Ljava/lang/String;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/preload/q$f;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/preload/q$f;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/preload/q$f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/preload/q$f;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_18

    if-ne v1, v2, :cond_10

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_32

    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$f;->b:Lcom/hyprmx/android/sdk/preload/q;

    iput v2, p0, Lcom/hyprmx/android/sdk/preload/q$f;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/r;

    move-result-object v1

    new-instance v2, Lcom/hyprmx/android/sdk/preload/t;

    invoke-direct {v2, p1, v3}, Lcom/hyprmx/android/sdk/preload/t;-><init>(Lcom/hyprmx/android/sdk/preload/q;Lkotlin/coroutines/d;)V

    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_32

    return-object v0

    :cond_32
    :goto_32
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-wide/16 v0, 0x0

    if-nez p1, :cond_41

    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_41
    :try_start_41
    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$f;->b:Lcom/hyprmx/android/sdk/preload/q;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/preload/q;->c:Lcom/hyprmx/android/sdk/utility/l;

    if-eqz p1, :cond_67

    iget-object v2, p0, Lcom/hyprmx/android/sdk/preload/q$f;->c:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/hyprmx/android/sdk/utility/l;->j(Ljava/lang/String;)Lcom/hyprmx/android/sdk/utility/l$e;

    move-result-object p1
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_4d} :catch_4e

    goto :goto_68

    :catch_4e
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Failed to get key, "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/hyprmx/android/sdk/preload/q$f;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", from DiskLruCache"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_67
    move-object p1, v3

    :goto_68
    if-eqz p1, :cond_7a

    const/4 v0, 0x0

    :try_start_6b
    iget-object v1, p1, Lcom/hyprmx/android/sdk/utility/l$e;->b:[J

    aget-wide v0, v1, v0
    :try_end_6f
    .catchall {:try_start_6b .. :try_end_6f} :catchall_73

    invoke-static {p1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_7a

    :catchall_73
    move-exception v0

    :try_start_74
    throw v0
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_75

    :catchall_75
    move-exception v1

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_7a
    :goto_7a
    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

###### Class com.hyprmx.android.sdk.preload.q.g (com.hyprmx.android.sdk.preload.q$g)
.class public final Lcom/hyprmx/android/sdk/preload/q$g;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/preload/q;->a(Lkotlin/coroutines/d;)Ljava/lang/Object;
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
        "Lkotlin/v;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.hyprmx.android.sdk.preload.DiskLruCacheHelperImpl$initialize$2"
    f = "DiskLruCacheHelperImpl.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public final synthetic a:Lcom/hyprmx/android/sdk/preload/q;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/preload/q;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/preload/q;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/preload/q$g;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$g;->a:Lcom/hyprmx/android/sdk/preload/q;

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

    new-instance p1, Lcom/hyprmx/android/sdk/preload/q$g;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/preload/q$g;->a:Lcom/hyprmx/android/sdk/preload/q;

    invoke-direct {p1, v0, p2}, Lcom/hyprmx/android/sdk/preload/q$g;-><init>(Lcom/hyprmx/android/sdk/preload/q;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/preload/q$g;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/preload/q$g;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/preload/q$g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$g;->a:Lcom/hyprmx/android/sdk/preload/q;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/preload/q;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "hyprmx_cache"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$g;->a:Lcom/hyprmx/android/sdk/preload/q;

    const/4 v1, 0x0

    :try_start_30
    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/l;->a(Ljava/io/File;)Lcom/hyprmx/android/sdk/utility/l;

    move-result-object v0
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_34} :catch_35

    goto :goto_3c

    :catch_35
    move-exception v0

    const-string v2, "Unable to create DiskLruCache"

    invoke-static {v2, v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_3c
    iput-object v0, p1, Lcom/hyprmx/android/sdk/preload/q;->c:Lcom/hyprmx/android/sdk/utility/l;

    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$g;->a:Lcom/hyprmx/android/sdk/preload/q;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/preload/q;->c:Lcom/hyprmx/android/sdk/utility/l;

    if-eqz p1, :cond_4b

    const-string p1, "DiskLRUCache created successfully"

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    :cond_4b
    return-object v1
.end method

###### Class com.hyprmx.android.sdk.preload.q.h (com.hyprmx.android.sdk.preload.q$h)
.class public final Lcom/hyprmx/android/sdk/preload/q$h;
.super Lkotlin/coroutines/jvm/internal/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/preload/q;->a(Ljava/lang/String;Ljava/io/InputStream;Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.hyprmx.android.sdk.preload.DiskLruCacheHelperImpl"
    f = "DiskLruCacheHelperImpl.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x1
    }
    l = {
        0x118,
        0x9f
    }
    m = "putToDiskCache"
    n = {
        "this",
        "key",
        "content",
        "$this$withLock_u24default$iv",
        "$this$withLock_u24default$iv"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$0"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/String;

.field public c:Ljava/io/InputStream;

.field public d:Lkotlinx/coroutines/sync/Mutex;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lcom/hyprmx/android/sdk/preload/q;

.field public g:I


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/preload/q;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/preload/q;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/preload/q$h;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$h;->f:Lcom/hyprmx/android/sdk/preload/q;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/c;-><init>(Lkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$h;->e:Ljava/lang/Object;

    iget p1, p0, Lcom/hyprmx/android/sdk/preload/q$h;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/hyprmx/android/sdk/preload/q$h;->g:I

    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$h;->f:Lcom/hyprmx/android/sdk/preload/q;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lcom/hyprmx/android/sdk/preload/q;->a(Ljava/lang/String;Ljava/io/InputStream;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class com.hyprmx.android.sdk.preload.q.i (com.hyprmx.android.sdk.preload.q$i)
.class public final Lcom/hyprmx/android/sdk/preload/q$i;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/preload/q;->a(Ljava/lang/String;Ljava/io/InputStream;Lkotlin/coroutines/d;)Ljava/lang/Object;
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
    c = "com.hyprmx.android.sdk.preload.DiskLruCacheHelperImpl$putToDiskCache$2$1"
    f = "DiskLruCacheHelperImpl.kt"
    i = {
        0x0
    }
    l = {
        0xa0
    }
    m = "invokeSuspend"
    n = {
        "$this$withContext"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/hyprmx/android/sdk/preload/q;

.field public final synthetic d:Ljava/io/InputStream;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/preload/q;Ljava/io/InputStream;Ljava/lang/String;Lkotlin/coroutines/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/preload/q;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/preload/q$i;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$i;->c:Lcom/hyprmx/android/sdk/preload/q;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/preload/q$i;->d:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/hyprmx/android/sdk/preload/q$i;->e:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 7
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

    new-instance v0, Lcom/hyprmx/android/sdk/preload/q$i;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/preload/q$i;->c:Lcom/hyprmx/android/sdk/preload/q;

    iget-object v2, p0, Lcom/hyprmx/android/sdk/preload/q$i;->d:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/hyprmx/android/sdk/preload/q$i;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/hyprmx/android/sdk/preload/q$i;-><init>(Lcom/hyprmx/android/sdk/preload/q;Ljava/io/InputStream;Ljava/lang/String;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Lcom/hyprmx/android/sdk/preload/q$i;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/preload/q$i;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/preload/q$i;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/preload/q$i;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    const-string v0, "Unable to put to DiskLruCache with exception: "

    const-string v1, "There was an error during writing to the disk. key: "

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    iget v3, p0, Lcom/hyprmx/android/sdk/preload/q$i;->a:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_20

    if-ne v3, v5, :cond_18

    iget-object v2, p0, Lcom/hyprmx/android/sdk/preload/q$i;->b:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/s;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_42

    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_20
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$i;->b:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/s;

    iget-object v3, p0, Lcom/hyprmx/android/sdk/preload/q$i;->c:Lcom/hyprmx/android/sdk/preload/q;

    iput-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$i;->b:Ljava/lang/Object;

    iput v5, p0, Lcom/hyprmx/android/sdk/preload/q$i;->a:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/r;

    move-result-object v6

    new-instance v7, Lcom/hyprmx/android/sdk/preload/t;

    invoke-direct {v7, v3, v4}, Lcom/hyprmx/android/sdk/preload/t;-><init>(Lcom/hyprmx/android/sdk/preload/q;Lkotlin/coroutines/d;)V

    invoke-static {v6, v7, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_40

    return-object v2

    :cond_40
    move-object v2, p1

    move-object p1, v3

    :goto_42
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v3, 0x0

    if-nez p1, :cond_55

    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$i;->d:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_55
    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$i;->d:Ljava/io/InputStream;

    iget-object v6, p0, Lcom/hyprmx/android/sdk/preload/q$i;->c:Lcom/hyprmx/android/sdk/preload/q;

    iget-object v7, p0, Lcom/hyprmx/android/sdk/preload/q$i;->e:Ljava/lang/String;

    :try_start_5b
    iget-object v6, v6, Lcom/hyprmx/android/sdk/preload/q;->c:Lcom/hyprmx/android/sdk/utility/l;

    if-eqz v6, :cond_64

    invoke-virtual {v6, v7}, Lcom/hyprmx/android/sdk/utility/l;->i(Ljava/lang/String;)Lcom/hyprmx/android/sdk/utility/l$c;

    move-result-object v6
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_63} :catch_fc
    .catchall {:try_start_5b .. :try_end_63} :catchall_f8

    goto :goto_65

    :cond_64
    move-object v6, v4

    :goto_65
    if-nez v6, :cond_6f

    :try_start_67
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6b} :catch_f6
    .catchall {:try_start_67 .. :try_end_6b} :catchall_182

    invoke-static {p1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :cond_6f
    :try_start_6f
    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-virtual {v6}, Lcom/hyprmx/android/sdk/utility/l$c;->b()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_78} :catch_f6
    .catchall {:try_start_6f .. :try_end_78} :catchall_182

    :try_start_78
    new-instance v9, Lcom/hyprmx/android/sdk/preload/q$i$a;

    invoke-direct {v9, v2}, Lcom/hyprmx/android/sdk/preload/q$i$a;-><init>(Lkotlinx/coroutines/s;)V

    const/16 v10, 0x2000

    const-string v11, "<this>"

    invoke-static {p1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "out"

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "shouldCancel"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v10, v10, [B

    :goto_90
    invoke-virtual {p1, v10}, Ljava/io/InputStream;->read([B)I

    move-result v11

    if-ltz v11, :cond_a6

    invoke-virtual {v9}, Lcom/hyprmx/android/sdk/preload/q$i$a;->invoke()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_a6

    invoke-virtual {v8, v10, v3, v11}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_90

    :cond_a6
    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/s;)Z

    move-result v2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2
    :try_end_ae
    .catchall {:try_start_78 .. :try_end_ae} :catchall_ef

    :try_start_ae
    invoke-static {v8, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_b1} :catch_f6
    .catchall {:try_start_ae .. :try_end_b1} :catchall_182

    :try_start_b1
    iget-boolean v0, v6, Lcom/hyprmx/android/sdk/utility/l$c;->c:Z

    if-eqz v0, :cond_c4

    iget-object v0, v6, Lcom/hyprmx/android/sdk/utility/l$c;->d:Lcom/hyprmx/android/sdk/utility/l;

    invoke-static {v0, v6, v3}, Lcom/hyprmx/android/sdk/utility/l;->a(Lcom/hyprmx/android/sdk/utility/l;Lcom/hyprmx/android/sdk/utility/l$c;Z)V

    iget-object v0, v6, Lcom/hyprmx/android/sdk/utility/l$c;->d:Lcom/hyprmx/android/sdk/utility/l;

    iget-object v8, v6, Lcom/hyprmx/android/sdk/utility/l$c;->a:Lcom/hyprmx/android/sdk/utility/l$d;

    iget-object v8, v8, Lcom/hyprmx/android/sdk/utility/l$d;->a:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/hyprmx/android/sdk/utility/l;->l(Ljava/lang/String;)Z

    goto :goto_c9

    :cond_c4
    iget-object v0, v6, Lcom/hyprmx/android/sdk/utility/l$c;->d:Lcom/hyprmx/android/sdk/utility/l;

    invoke-static {v0, v6, v5}, Lcom/hyprmx/android/sdk/utility/l;->a(Lcom/hyprmx/android/sdk/utility/l;Lcom/hyprmx/android/sdk/utility/l$c;Z)V

    :goto_c9
    iget-boolean v0, v6, Lcom/hyprmx/android/sdk/utility/l$c;->c:Z

    if-ne v0, v5, :cond_ce

    goto :goto_cf

    :cond_ce
    const/4 v5, 0x0

    :goto_cf
    if-eqz v5, :cond_eb

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_e7
    .catchall {:try_start_b1 .. :try_end_e7} :catchall_19e

    invoke-static {p1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :cond_eb
    invoke-static {p1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    :catchall_ef
    move-exception v2

    :try_start_f0
    throw v2
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_f1

    :catchall_f1
    move-exception v9

    :try_start_f2
    invoke-static {v8, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v9
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_f6} :catch_f6
    .catchall {:try_start_f2 .. :try_end_f6} :catchall_182

    :catch_f6
    move-exception v2

    goto :goto_fe

    :catchall_f8
    move-exception v2

    move-object v6, v4

    goto/16 :goto_183

    :catch_fc
    move-exception v2

    move-object v6, v4

    :goto_fe
    :try_start_fe
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to finish writing to DiskLruCache with exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2
    :try_end_11a
    .catchall {:try_start_fe .. :try_end_11a} :catchall_182

    if-eqz v6, :cond_137

    :try_start_11c
    iget-boolean v8, v6, Lcom/hyprmx/android/sdk/utility/l$c;->c:Z

    if-eqz v8, :cond_12f

    iget-object v8, v6, Lcom/hyprmx/android/sdk/utility/l$c;->d:Lcom/hyprmx/android/sdk/utility/l;

    invoke-static {v8, v6, v3}, Lcom/hyprmx/android/sdk/utility/l;->a(Lcom/hyprmx/android/sdk/utility/l;Lcom/hyprmx/android/sdk/utility/l$c;Z)V

    iget-object v8, v6, Lcom/hyprmx/android/sdk/utility/l$c;->d:Lcom/hyprmx/android/sdk/utility/l;

    iget-object v9, v6, Lcom/hyprmx/android/sdk/utility/l$c;->a:Lcom/hyprmx/android/sdk/utility/l$d;

    iget-object v9, v9, Lcom/hyprmx/android/sdk/utility/l$d;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/hyprmx/android/sdk/utility/l;->l(Ljava/lang/String;)Z

    goto :goto_137

    :cond_12f
    iget-object v8, v6, Lcom/hyprmx/android/sdk/utility/l$c;->d:Lcom/hyprmx/android/sdk/utility/l;

    invoke-static {v8, v6, v5}, Lcom/hyprmx/android/sdk/utility/l;->a(Lcom/hyprmx/android/sdk/utility/l;Lcom/hyprmx/android/sdk/utility/l$c;Z)V

    goto :goto_137

    :catch_135
    move-exception v1

    goto :goto_15b

    :cond_137
    :goto_137
    if-eqz v6, :cond_13e

    iget-boolean v8, v6, Lcom/hyprmx/android/sdk/utility/l$c;->c:Z

    if-ne v8, v5, :cond_13e

    goto :goto_13f

    :cond_13e
    const/4 v5, 0x0

    :goto_13f
    if-eqz v5, :cond_17e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_157} :catch_135
    .catchall {:try_start_11c .. :try_end_157} :catchall_19e

    invoke-static {p1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :goto_15b
    :try_start_15b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V
    :try_end_171
    .catchall {:try_start_15b .. :try_end_171} :catchall_19e

    if-eqz v6, :cond_176

    :try_start_173
    invoke-virtual {v6}, Lcom/hyprmx/android/sdk/utility/l$c;->a()V
    :try_end_176
    .catch Ljava/io/IOException; {:try_start_173 .. :try_end_176} :catch_176
    .catchall {:try_start_173 .. :try_end_176} :catchall_19e

    :catch_176
    :cond_176
    :try_start_176
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_17a
    .catchall {:try_start_176 .. :try_end_17a} :catchall_19e

    invoke-static {p1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :cond_17e
    invoke-static {p1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    :catchall_182
    move-exception v2

    :goto_183
    if-eqz v6, :cond_1a2

    :try_start_185
    iget-boolean v8, v6, Lcom/hyprmx/android/sdk/utility/l$c;->c:Z

    if-eqz v8, :cond_198

    iget-object v8, v6, Lcom/hyprmx/android/sdk/utility/l$c;->d:Lcom/hyprmx/android/sdk/utility/l;

    invoke-static {v8, v6, v3}, Lcom/hyprmx/android/sdk/utility/l;->a(Lcom/hyprmx/android/sdk/utility/l;Lcom/hyprmx/android/sdk/utility/l$c;Z)V

    iget-object v8, v6, Lcom/hyprmx/android/sdk/utility/l$c;->d:Lcom/hyprmx/android/sdk/utility/l;

    iget-object v9, v6, Lcom/hyprmx/android/sdk/utility/l$c;->a:Lcom/hyprmx/android/sdk/utility/l$d;

    iget-object v9, v9, Lcom/hyprmx/android/sdk/utility/l$d;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/hyprmx/android/sdk/utility/l;->l(Ljava/lang/String;)Z

    goto :goto_1a2

    :cond_198
    iget-object v8, v6, Lcom/hyprmx/android/sdk/utility/l$c;->d:Lcom/hyprmx/android/sdk/utility/l;

    invoke-static {v8, v6, v5}, Lcom/hyprmx/android/sdk/utility/l;->a(Lcom/hyprmx/android/sdk/utility/l;Lcom/hyprmx/android/sdk/utility/l$c;Z)V

    goto :goto_1a2

    :catchall_19e
    move-exception v0

    goto :goto_1ea

    :catch_1a0
    move-exception v1

    goto :goto_1c6

    :cond_1a2
    :goto_1a2
    if-eqz v6, :cond_1a9

    iget-boolean v8, v6, Lcom/hyprmx/android/sdk/utility/l$c;->c:Z

    if-ne v8, v5, :cond_1a9

    goto :goto_1aa

    :cond_1a9
    const/4 v5, 0x0

    :goto_1aa
    if-eqz v5, :cond_1e9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_1c2
    .catch Ljava/lang/Exception; {:try_start_185 .. :try_end_1c2} :catch_1a0
    .catchall {:try_start_185 .. :try_end_1c2} :catchall_19e

    invoke-static {p1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :goto_1c6
    :try_start_1c6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V
    :try_end_1dc
    .catchall {:try_start_1c6 .. :try_end_1dc} :catchall_19e

    if-eqz v6, :cond_1e1

    :try_start_1de
    invoke-virtual {v6}, Lcom/hyprmx/android/sdk/utility/l$c;->a()V
    :try_end_1e1
    .catch Ljava/io/IOException; {:try_start_1de .. :try_end_1e1} :catch_1e1
    .catchall {:try_start_1de .. :try_end_1e1} :catchall_19e

    :catch_1e1
    :cond_1e1
    :try_start_1e1
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_1e5
    .catchall {:try_start_1e1 .. :try_end_1e5} :catchall_19e

    invoke-static {p1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :cond_1e9
    :try_start_1e9
    throw v2
    :try_end_1ea
    .catchall {:try_start_1e9 .. :try_end_1ea} :catchall_19e

    :goto_1ea
    :try_start_1ea
    throw v0
    :try_end_1eb
    .catchall {:try_start_1ea .. :try_end_1eb} :catchall_1eb

    :catchall_1eb
    move-exception v1

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

###### Class com.hyprmx.android.sdk.preload.q.i.a (com.hyprmx.android.sdk.preload.q$i$a)
.class public final Lcom/hyprmx/android/sdk/preload/q$i$a;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/preload/q$i;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/s;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/s;)V
    .registers 2

    iput-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$i$a;->a:Lkotlinx/coroutines/s;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/preload/q$i$a;->a:Lkotlinx/coroutines/s;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/s;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class com.hyprmx.android.sdk.preload.q.j (com.hyprmx.android.sdk.preload.q$j)
.class public final Lcom/hyprmx/android/sdk/preload/q$j;
.super Lkotlin/coroutines/jvm/internal/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/preload/q;->b(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.hyprmx.android.sdk.preload.DiskLruCacheHelperImpl"
    f = "DiskLruCacheHelperImpl.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x1
    }
    l = {
        0x118,
        0x5b
    }
    m = "removeFromDiskCache"
    n = {
        "this",
        "key",
        "$this$withLock_u24default$iv",
        "$this$withLock_u24default$iv"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$0"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/String;

.field public c:Lkotlinx/coroutines/sync/Mutex;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lcom/hyprmx/android/sdk/preload/q;

.field public f:I


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/preload/q;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/preload/q;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/preload/q$j;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$j;->e:Lcom/hyprmx/android/sdk/preload/q;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/c;-><init>(Lkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$j;->d:Ljava/lang/Object;

    iget p1, p0, Lcom/hyprmx/android/sdk/preload/q$j;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/hyprmx/android/sdk/preload/q$j;->f:I

    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$j;->e:Lcom/hyprmx/android/sdk/preload/q;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/hyprmx/android/sdk/preload/q;->b(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class com.hyprmx.android.sdk.preload.q.k (com.hyprmx.android.sdk.preload.q$k)
.class public final Lcom/hyprmx/android/sdk/preload/q$k;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/preload/q;->b(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;
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
    c = "com.hyprmx.android.sdk.preload.DiskLruCacheHelperImpl$removeFromDiskCache$2$1"
    f = "DiskLruCacheHelperImpl.kt"
    i = {}
    l = {
        0x5c
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/hyprmx/android/sdk/preload/q;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/preload/q;Ljava/lang/String;Lkotlin/coroutines/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/preload/q;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/preload/q$k;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$k;->b:Lcom/hyprmx/android/sdk/preload/q;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/preload/q$k;->c:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

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

    new-instance p1, Lcom/hyprmx/android/sdk/preload/q$k;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/preload/q$k;->b:Lcom/hyprmx/android/sdk/preload/q;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/preload/q$k;->c:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/hyprmx/android/sdk/preload/q$k;-><init>(Lcom/hyprmx/android/sdk/preload/q;Ljava/lang/String;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/preload/q$k;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/preload/q$k;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/preload/q$k;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/preload/q$k;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_32

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$k;->b:Lcom/hyprmx/android/sdk/preload/q;

    iput v2, p0, Lcom/hyprmx/android/sdk/preload/q$k;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/r;

    move-result-object v1

    new-instance v2, Lcom/hyprmx/android/sdk/preload/t;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/hyprmx/android/sdk/preload/t;-><init>(Lcom/hyprmx/android/sdk/preload/q;Lkotlin/coroutines/d;)V

    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_32

    return-object v0

    :cond_32
    :goto_32
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_40

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_40
    :try_start_40
    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$k;->b:Lcom/hyprmx/android/sdk/preload/q;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/preload/q;->c:Lcom/hyprmx/android/sdk/utility/l;

    if-eqz p1, :cond_66

    iget-object v1, p0, Lcom/hyprmx/android/sdk/preload/q$k;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/hyprmx/android/sdk/utility/l;->l(Ljava/lang/String;)Z

    move-result v0
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_4c} :catch_4d

    goto :goto_66

    :catch_4d
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception removing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hyprmx/android/sdk/preload/q$k;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from disk cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_66
    :goto_66
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
