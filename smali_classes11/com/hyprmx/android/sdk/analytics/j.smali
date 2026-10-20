###### Class com.hyprmx.android.sdk.analytics.j (com.hyprmx.android.sdk.analytics.j)
.class public final Lcom/hyprmx/android/sdk/analytics/j;
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
    c = "com.hyprmx.android.sdk.analytics.ParameterControllerImpl$initGaid$2"
    f = "ParameterController.kt"
    i = {}
    l = {
        0x65
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/hyprmx/android/sdk/analytics/k;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/analytics/k;Landroid/content/Context;Lkotlin/coroutines/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/analytics/k;",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/analytics/j;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/analytics/j;->b:Lcom/hyprmx/android/sdk/analytics/k;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/analytics/j;->c:Landroid/content/Context;

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

    new-instance p1, Lcom/hyprmx/android/sdk/analytics/j;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/analytics/j;->b:Lcom/hyprmx/android/sdk/analytics/k;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/analytics/j;->c:Landroid/content/Context;

    invoke-direct {p1, v0, v1, p2}, Lcom/hyprmx/android/sdk/analytics/j;-><init>(Lcom/hyprmx/android/sdk/analytics/k;Landroid/content/Context;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/analytics/j;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/analytics/j;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/analytics/j;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/analytics/j;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_29

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/analytics/j;->b:Lcom/hyprmx/android/sdk/analytics/k;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/analytics/k;->f:Lcom/hyprmx/android/sdk/utility/o;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/analytics/j;->c:Landroid/content/Context;

    iput v2, p0, Lcom/hyprmx/android/sdk/analytics/j;->a:I

    invoke-interface {p1, v1, p0}, Lcom/hyprmx/android/sdk/utility/o;->a(Landroid/content/Context;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_29

    return-object v0

    :cond_29
    :goto_29
    check-cast p1, Lcom/hyprmx/android/sdk/utility/p;

    instance-of v0, p1, Lcom/hyprmx/android/sdk/utility/p$b;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/hyprmx/android/sdk/analytics/j;->b:Lcom/hyprmx/android/sdk/analytics/k;

    check-cast p1, Lcom/hyprmx/android/sdk/utility/p$b;

    iget-object v1, p1, Lcom/hyprmx/android/sdk/utility/p$b;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/hyprmx/android/sdk/analytics/k;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/analytics/j;->b:Lcom/hyprmx/android/sdk/analytics/k;

    iget-boolean p1, p1, Lcom/hyprmx/android/sdk/utility/p$b;->b:Z

    iput-boolean p1, v0, Lcom/hyprmx/android/sdk/analytics/k;->h:Z

    goto :goto_47

    :cond_3e
    instance-of p1, p1, Lcom/hyprmx/android/sdk/utility/p$a;

    if-eqz p1, :cond_47

    const-string p1, "gaid fetched failed"

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    :cond_47
    :goto_47
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
