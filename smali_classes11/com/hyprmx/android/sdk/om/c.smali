###### Class com.hyprmx.android.sdk.om.c (com.hyprmx.android.sdk.om.c)
.class public final Lcom/hyprmx/android/sdk/om/c;
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
    c = "com.hyprmx.android.sdk.om.DefaultOpenMeasurementController$initialize$1"
    f = "OpenMeasurementController.kt"
    i = {}
    l = {
        0x5f
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:Lcom/hyprmx/android/sdk/om/b;

.field public b:I

.field public final synthetic c:Lcom/hyprmx/android/sdk/om/b;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/om/b;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/om/b;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/om/c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/om/c;->c:Lcom/hyprmx/android/sdk/om/b;

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

    new-instance p1, Lcom/hyprmx/android/sdk/om/c;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/om/c;->c:Lcom/hyprmx/android/sdk/om/b;

    invoke-direct {p1, v0, p2}, Lcom/hyprmx/android/sdk/om/c;-><init>(Lcom/hyprmx/android/sdk/om/b;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/om/c;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/om/c;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/om/c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/om/c;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    if-ne v1, v2, :cond_11

    iget-object v0, p0, Lcom/hyprmx/android/sdk/om/c;->a:Lcom/hyprmx/android/sdk/om/b;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_37

    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_19
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/om/c;->c:Lcom/hyprmx/android/sdk/om/b;

    iget-object v1, p1, Lcom/hyprmx/android/sdk/om/b;->e:Landroid/content/Context;

    iget-object v3, p1, Lcom/hyprmx/android/sdk/om/b;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/hyprmx/android/sdk/om/c;->a:Lcom/hyprmx/android/sdk/om/b;

    iput v2, p0, Lcom/hyprmx/android/sdk/om/c;->b:I

    iget-object v2, p1, Lcom/hyprmx/android/sdk/om/b;->g:Lkotlinx/coroutines/r;

    new-instance v4, Lcom/hyprmx/android/sdk/om/a;

    const/4 v5, 0x0

    invoke-direct {v4, v1, p1, v3, v5}, Lcom/hyprmx/android/sdk/om/a;-><init>(Landroid/content/Context;Lcom/hyprmx/android/sdk/om/b;Ljava/lang/String;Lkotlin/coroutines/d;)V

    invoke-static {v2, v4, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_35

    return-object v0

    :cond_35
    move-object v0, p1

    move-object p1, v1

    :goto_37
    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/hyprmx/android/sdk/om/b;->i:Ljava/lang/String;

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
