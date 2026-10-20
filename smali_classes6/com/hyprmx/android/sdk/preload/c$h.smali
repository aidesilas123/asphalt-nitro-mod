###### Class com.hyprmx.android.sdk.preload.c.h (com.hyprmx.android.sdk.preload.c$h)
.class public final Lcom/hyprmx/android/sdk/preload/c$h;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/preload/c;->d(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;
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
    c = "com.hyprmx.android.sdk.preload.CacheController$removeAd$2"
    f = "CacheController.kt"
    i = {}
    l = {
        0x1d3,
        0x1d4,
        0x1d5
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:Lcom/hyprmx/android/sdk/preload/c;

.field public b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/hyprmx/android/sdk/preload/c;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/preload/c;Ljava/lang/String;Lkotlin/coroutines/d;)V
    .registers 4

    iput-object p2, p0, Lcom/hyprmx/android/sdk/preload/c$h;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/hyprmx/android/sdk/preload/c$h;->d:Lcom/hyprmx/android/sdk/preload/c;

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

    new-instance p1, Lcom/hyprmx/android/sdk/preload/c$h;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/preload/c$h;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/preload/c$h;->d:Lcom/hyprmx/android/sdk/preload/c;

    invoke-direct {p1, v1, v0, p2}, Lcom/hyprmx/android/sdk/preload/c$h;-><init>(Lcom/hyprmx/android/sdk/preload/c;Ljava/lang/String;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/preload/c$h;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/preload/c$h;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/preload/c$h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/preload/c$h;->b:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_2b

    if-eq v1, v4, :cond_25

    if-eq v1, v3, :cond_1f

    if-ne v1, v2, :cond_17

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_96

    :cond_17
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1f
    iget-object v1, p0, Lcom/hyprmx/android/sdk/preload/c$h;->a:Lcom/hyprmx/android/sdk/preload/c;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_77

    :cond_25
    iget-object v1, p0, Lcom/hyprmx/android/sdk/preload/c$h;->a:Lcom/hyprmx/android/sdk/preload/c;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_6c

    :cond_2b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "remove ad with id "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hyprmx/android/sdk/preload/c$h;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/c$h;->d:Lcom/hyprmx/android/sdk/preload/c;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/preload/c;->m:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/preload/c$h;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lcom/hyprmx/android/sdk/preload/c$h;->d:Lcom/hyprmx/android/sdk/preload/c;

    iget-object v6, p0, Lcom/hyprmx/android/sdk/preload/c$h;->c:Ljava/lang/String;

    check-cast p1, Lcom/hyprmx/android/sdk/api/data/b;

    iget-object p1, v1, Lcom/hyprmx/android/sdk/preload/c;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, p0, Lcom/hyprmx/android/sdk/preload/c$h;->a:Lcom/hyprmx/android/sdk/preload/c;

    iput v4, p0, Lcom/hyprmx/android/sdk/preload/c$h;->b:I

    iget-object p1, v1, Lcom/hyprmx/android/sdk/preload/c;->h:Lkotlinx/coroutines/s;

    invoke-interface {p1}, Lkotlinx/coroutines/s;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    new-instance v4, Lcom/hyprmx/android/sdk/preload/h;

    invoke-direct {v4, v1, v6, v5}, Lcom/hyprmx/android/sdk/preload/h;-><init>(Lcom/hyprmx/android/sdk/preload/c;Ljava/lang/String;Lkotlin/coroutines/d;)V

    invoke-static {p1, v4, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6c

    return-object v0

    :cond_6c
    :goto_6c
    iput-object v1, p0, Lcom/hyprmx/android/sdk/preload/c$h;->a:Lcom/hyprmx/android/sdk/preload/c;

    iput v3, p0, Lcom/hyprmx/android/sdk/preload/c$h;->b:I

    invoke-virtual {v1, p0}, Lcom/hyprmx/android/sdk/preload/c;->e(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_77

    return-object v0

    :cond_77
    :goto_77
    iput-object v5, p0, Lcom/hyprmx/android/sdk/preload/c$h;->a:Lcom/hyprmx/android/sdk/preload/c;

    iput v2, p0, Lcom/hyprmx/android/sdk/preload/c$h;->b:I

    iget-object p1, v1, Lcom/hyprmx/android/sdk/preload/c;->h:Lkotlinx/coroutines/s;

    invoke-interface {p1}, Lkotlinx/coroutines/s;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    new-instance v2, Lcom/hyprmx/android/sdk/preload/m;

    invoke-direct {v2, v1, v5}, Lcom/hyprmx/android/sdk/preload/m;-><init>(Lcom/hyprmx/android/sdk/preload/c;Lkotlin/coroutines/d;)V

    invoke-static {p1, v2, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_91

    goto :goto_93

    :cond_91
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    :goto_93
    if-ne p1, v0, :cond_96

    return-object v0

    :cond_96
    :goto_96
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
