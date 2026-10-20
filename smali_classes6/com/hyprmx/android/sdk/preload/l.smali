###### Class com.hyprmx.android.sdk.preload.l (com.hyprmx.android.sdk.preload.l)
.class public final Lcom/hyprmx/android/sdk/preload/l;
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
        "Lkotlin/v;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.hyprmx.android.sdk.preload.CacheController$startVideoDownload$2"
    f = "CacheController.kt"
    i = {}
    l = {
        0xea,
        0xeb
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/hyprmx/android/sdk/api/data/c;

.field public final synthetic c:Lcom/hyprmx/android/sdk/preload/c;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/api/data/c;Lcom/hyprmx/android/sdk/preload/c;Lkotlin/coroutines/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/api/data/c;",
            "Lcom/hyprmx/android/sdk/preload/c;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/preload/l;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/preload/l;->b:Lcom/hyprmx/android/sdk/api/data/c;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/preload/l;->c:Lcom/hyprmx/android/sdk/preload/c;

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

    new-instance p1, Lcom/hyprmx/android/sdk/preload/l;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/preload/l;->b:Lcom/hyprmx/android/sdk/api/data/c;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/preload/l;->c:Lcom/hyprmx/android/sdk/preload/c;

    invoke-direct {p1, v0, v1, p2}, Lcom/hyprmx/android/sdk/preload/l;-><init>(Lcom/hyprmx/android/sdk/api/data/c;Lcom/hyprmx/android/sdk/preload/c;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/preload/l;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/preload/l;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/preload/l;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/preload/l;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1f

    if-eq v1, v4, :cond_1b

    if-ne v1, v2, :cond_13

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5d

    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_43

    :cond_1f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/l;->b:Lcom/hyprmx/android/sdk/api/data/c;

    iget-boolean v1, p1, Lcom/hyprmx/android/sdk/api/data/c;->e:Z

    if-nez v1, :cond_5d

    iget-object v1, p0, Lcom/hyprmx/android/sdk/preload/l;->c:Lcom/hyprmx/android/sdk/preload/c;

    iget-object v1, v1, Lcom/hyprmx/android/sdk/preload/c;->i:Lcom/hyprmx/android/sdk/utility/e1;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/api/data/c;->a:Ljava/lang/String;

    iput v4, p0, Lcom/hyprmx/android/sdk/preload/l;->a:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/r;

    move-result-object v4

    new-instance v5, Lcom/hyprmx/android/sdk/utility/c1;

    invoke-direct {v5, v1, p1, v3}, Lcom/hyprmx/android/sdk/utility/c1;-><init>(Lcom/hyprmx/android/sdk/utility/e1;Ljava/lang/String;Lkotlin/coroutines/d;)V

    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_43

    return-object v0

    :cond_43
    :goto_43
    check-cast p1, Lcom/hyprmx/android/sdk/utility/b1;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/preload/l;->c:Lcom/hyprmx/android/sdk/preload/c;

    iget-object v4, p0, Lcom/hyprmx/android/sdk/preload/l;->b:Lcom/hyprmx/android/sdk/api/data/c;

    iput v2, p0, Lcom/hyprmx/android/sdk/preload/l;->a:I

    iget-object v2, v1, Lcom/hyprmx/android/sdk/preload/c;->h:Lkotlinx/coroutines/s;

    invoke-interface {v2}, Lkotlinx/coroutines/s;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    new-instance v5, Lcom/hyprmx/android/sdk/preload/g;

    invoke-direct {v5, p1, v4, v1, v3}, Lcom/hyprmx/android/sdk/preload/g;-><init>(Lcom/hyprmx/android/sdk/utility/b1;Lcom/hyprmx/android/sdk/api/data/c;Lcom/hyprmx/android/sdk/preload/c;Lkotlin/coroutines/d;)V

    invoke-static {v2, v5, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5d

    return-object v0

    :cond_5d
    :goto_5d
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
