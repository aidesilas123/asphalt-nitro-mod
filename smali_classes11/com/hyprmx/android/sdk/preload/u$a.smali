###### Class com.hyprmx.android.sdk.preload.u.a (com.hyprmx.android.sdk.preload.u$a)
.class public final Lcom/hyprmx/android/sdk/preload/u$a;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/preload/u;->cacheVastAssetForOffer(Ljava/lang/String;Ljava/lang/String;Z)V
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
    c = "com.hyprmx.android.sdk.preload.PreloadController$cacheVastAssetForOffer$1"
    f = "PreloadController.kt"
    i = {}
    l = {
        0x77,
        0x79
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Z

.field public final synthetic c:Lcom/hyprmx/android/sdk/preload/u;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLcom/hyprmx/android/sdk/preload/u;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/d;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/hyprmx/android/sdk/preload/u;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/preload/u$a;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/hyprmx/android/sdk/preload/u$a;->b:Z

    iput-object p2, p0, Lcom/hyprmx/android/sdk/preload/u$a;->c:Lcom/hyprmx/android/sdk/preload/u;

    iput-object p3, p0, Lcom/hyprmx/android/sdk/preload/u$a;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/hyprmx/android/sdk/preload/u$a;->e:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 9
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

    new-instance p1, Lcom/hyprmx/android/sdk/preload/u$a;

    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/preload/u$a;->b:Z

    iget-object v2, p0, Lcom/hyprmx/android/sdk/preload/u$a;->c:Lcom/hyprmx/android/sdk/preload/u;

    iget-object v3, p0, Lcom/hyprmx/android/sdk/preload/u$a;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/hyprmx/android/sdk/preload/u$a;->e:Ljava/lang/String;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/hyprmx/android/sdk/preload/u$a;-><init>(ZLcom/hyprmx/android/sdk/preload/u;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/preload/u$a;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/preload/u$a;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/preload/u$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/preload/u$a;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    if-eq v1, v3, :cond_1a

    if-ne v1, v2, :cond_12

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_45

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_34

    :cond_1e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/hyprmx/android/sdk/preload/u$a;->b:Z

    if-eqz p1, :cond_34

    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/u$a;->c:Lcom/hyprmx/android/sdk/preload/u;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/preload/u;->a:Lcom/hyprmx/android/sdk/preload/n;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/preload/u$a;->d:Ljava/lang/String;

    iput v3, p0, Lcom/hyprmx/android/sdk/preload/u$a;->a:I

    invoke-interface {p1, v1}, Lcom/hyprmx/android/sdk/preload/n;->g(Ljava/lang/String;)Lkotlin/v;

    move-result-object p1

    if-ne p1, v0, :cond_34

    return-object v0

    :cond_34
    :goto_34
    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/u$a;->c:Lcom/hyprmx/android/sdk/preload/u;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/preload/u;->a:Lcom/hyprmx/android/sdk/preload/n;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/preload/u$a;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/hyprmx/android/sdk/preload/u$a;->d:Ljava/lang/String;

    iput v2, p0, Lcom/hyprmx/android/sdk/preload/u$a;->a:I

    invoke-interface {p1, v1, v3, p0}, Lcom/hyprmx/android/sdk/preload/n;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_45

    return-object v0

    :cond_45
    :goto_45
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
