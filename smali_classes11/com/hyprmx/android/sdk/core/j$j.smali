###### Class com.hyprmx.android.sdk.core.j.C0284j (com.hyprmx.android.sdk.core.j$j)
.class public final Lcom/hyprmx/android/sdk/core/j$j;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/core/j;->c(Ljava/lang/String;)V
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
    c = "com.hyprmx.android.sdk.core.HyprMXController$showAd$1"
    f = "HyprMXController.kt"
    i = {}
    l = {
        0x11a
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/hyprmx/android/sdk/core/j;

.field public final synthetic c:Lcom/hyprmx/android/sdk/placement/c;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/core/j;Lcom/hyprmx/android/sdk/placement/c;Lkotlin/coroutines/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/core/j;",
            "Lcom/hyprmx/android/sdk/placement/c;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/core/j$j;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/core/j$j;->b:Lcom/hyprmx/android/sdk/core/j;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/core/j$j;->c:Lcom/hyprmx/android/sdk/placement/c;

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

    new-instance p1, Lcom/hyprmx/android/sdk/core/j$j;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/j$j;->b:Lcom/hyprmx/android/sdk/core/j;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/core/j$j;->c:Lcom/hyprmx/android/sdk/placement/c;

    invoke-direct {p1, v0, v1, p2}, Lcom/hyprmx/android/sdk/core/j$j;-><init>(Lcom/hyprmx/android/sdk/core/j;Lcom/hyprmx/android/sdk/placement/c;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/core/j$j;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/core/j$j;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/core/j$j;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/core/j$j;->a:I

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

    iget-object p1, p0, Lcom/hyprmx/android/sdk/core/j$j;->b:Lcom/hyprmx/android/sdk/core/j;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/core/j;->d:Lcom/hyprmx/android/sdk/presentation/f;

    if-eqz p1, :cond_21

    goto :goto_27

    :cond_21
    const-string p1, "presentationController"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_27
    iget-object v1, p0, Lcom/hyprmx/android/sdk/core/j$j;->c:Lcom/hyprmx/android/sdk/placement/c;

    iput v2, p0, Lcom/hyprmx/android/sdk/core/j$j;->a:I

    invoke-interface {p1, v1}, Lcom/hyprmx/android/sdk/presentation/f;->a(Lcom/hyprmx/android/sdk/placement/c;)Lkotlin/v;

    move-result-object p1

    if-ne p1, v0, :cond_32

    return-object v0

    :cond_32
    :goto_32
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
