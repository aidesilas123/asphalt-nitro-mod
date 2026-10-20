###### Class com.hyprmx.android.sdk.preload.c.k (com.hyprmx.android.sdk.preload.c$k)
.class public final Lcom/hyprmx/android/sdk/preload/c$k;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/preload/c;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;
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
    c = "com.hyprmx.android.sdk.preload.CacheController$startVideoCacheJob$2"
    f = "CacheController.kt"
    i = {
        0x0,
        0x1
    }
    l = {
        0x222,
        0xdb
    }
    m = "invokeSuspend"
    n = {
        "$this$withLock_u24default$iv",
        "$this$withLock_u24default$iv"
    }
    s = {
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field public a:Lkotlinx/coroutines/sync/Mutex;

.field public b:Lcom/hyprmx/android/sdk/preload/c;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public final synthetic f:Lcom/hyprmx/android/sdk/preload/c;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/preload/c;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/preload/c;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/preload/c$k;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/preload/c$k;->f:Lcom/hyprmx/android/sdk/preload/c;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/preload/c$k;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/hyprmx/android/sdk/preload/c$k;->h:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

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

    new-instance p1, Lcom/hyprmx/android/sdk/preload/c$k;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/preload/c$k;->f:Lcom/hyprmx/android/sdk/preload/c;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/preload/c$k;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/hyprmx/android/sdk/preload/c$k;->h:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/hyprmx/android/sdk/preload/c$k;-><init>(Lcom/hyprmx/android/sdk/preload/c;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/preload/c$k;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/preload/c$k;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/preload/c$k;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/preload/c$k;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2b

    if-eq v1, v3, :cond_1f

    if-ne v1, v2, :cond_17

    iget-object v0, p0, Lcom/hyprmx/android/sdk/preload/c$k;->a:Lkotlinx/coroutines/sync/Mutex;

    :try_start_11
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_63

    :catchall_15
    move-exception p1

    goto :goto_69

    :cond_17
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1f
    iget-object v1, p0, Lcom/hyprmx/android/sdk/preload/c$k;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/hyprmx/android/sdk/preload/c$k;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/hyprmx/android/sdk/preload/c$k;->b:Lcom/hyprmx/android/sdk/preload/c;

    iget-object v6, p0, Lcom/hyprmx/android/sdk/preload/c$k;->a:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_48

    :cond_2b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/hyprmx/android/sdk/preload/c$k;->f:Lcom/hyprmx/android/sdk/preload/c;

    iget-object v6, v5, Lcom/hyprmx/android/sdk/preload/c;->k:Lkotlinx/coroutines/sync/Mutex;

    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/c$k;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/preload/c$k;->h:Ljava/lang/String;

    iput-object v6, p0, Lcom/hyprmx/android/sdk/preload/c$k;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object v5, p0, Lcom/hyprmx/android/sdk/preload/c$k;->b:Lcom/hyprmx/android/sdk/preload/c;

    iput-object p1, p0, Lcom/hyprmx/android/sdk/preload/c$k;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/hyprmx/android/sdk/preload/c$k;->d:Ljava/lang/String;

    iput v3, p0, Lcom/hyprmx/android/sdk/preload/c$k;->e:I

    invoke-interface {v6, v4, p0}, Lkotlinx/coroutines/sync/Mutex;->c(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_47

    return-object v0

    :cond_47
    move-object v3, p1

    :goto_48
    :try_start_48
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/r;

    move-result-object p1

    new-instance v7, Lcom/hyprmx/android/sdk/preload/c$k$a;

    invoke-direct {v7, v5, v3, v1, v4}, Lcom/hyprmx/android/sdk/preload/c$k$a;-><init>(Lcom/hyprmx/android/sdk/preload/c;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/d;)V

    iput-object v6, p0, Lcom/hyprmx/android/sdk/preload/c$k;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object v4, p0, Lcom/hyprmx/android/sdk/preload/c$k;->b:Lcom/hyprmx/android/sdk/preload/c;

    iput-object v4, p0, Lcom/hyprmx/android/sdk/preload/c$k;->c:Ljava/lang/String;

    iput-object v4, p0, Lcom/hyprmx/android/sdk/preload/c$k;->d:Ljava/lang/String;

    iput v2, p0, Lcom/hyprmx/android/sdk/preload/c$k;->e:I

    invoke-static {p1, v7, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5f
    .catchall {:try_start_48 .. :try_end_5f} :catchall_6b

    if-ne p1, v0, :cond_62

    return-object v0

    :cond_62
    move-object v0, v6

    :goto_63
    :try_start_63
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_65
    .catchall {:try_start_63 .. :try_end_65} :catchall_15

    invoke-interface {v0, v4}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    return-object p1

    :goto_69
    move-object v6, v0

    goto :goto_6c

    :catchall_6b
    move-exception p1

    :goto_6c
    invoke-interface {v6, v4}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw p1
.end method
