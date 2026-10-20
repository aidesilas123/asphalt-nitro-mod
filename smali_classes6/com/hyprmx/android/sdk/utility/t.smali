###### Class com.hyprmx.android.sdk.utility.t (com.hyprmx.android.sdk.utility.t)
.class public final Lcom/hyprmx/android/sdk/utility/t;
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
    c = "com.hyprmx.android.sdk.utility.HyprMXNativeTimer$createTimer$1"
    f = "HyprMXNativeTimer.kt"
    i = {}
    l = {
        0x29
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:J

.field public final synthetic c:Lcom/hyprmx/android/sdk/utility/u;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLcom/hyprmx/android/sdk/utility/u;Ljava/lang/String;Lkotlin/coroutines/d;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/hyprmx/android/sdk/utility/u;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/utility/t;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/hyprmx/android/sdk/utility/t;->b:J

    iput-object p3, p0, Lcom/hyprmx/android/sdk/utility/t;->c:Lcom/hyprmx/android/sdk/utility/u;

    iput-object p4, p0, Lcom/hyprmx/android/sdk/utility/t;->d:Ljava/lang/String;

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

    new-instance p1, Lcom/hyprmx/android/sdk/utility/t;

    iget-wide v1, p0, Lcom/hyprmx/android/sdk/utility/t;->b:J

    iget-object v3, p0, Lcom/hyprmx/android/sdk/utility/t;->c:Lcom/hyprmx/android/sdk/utility/u;

    iget-object v4, p0, Lcom/hyprmx/android/sdk/utility/t;->d:Ljava/lang/String;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/hyprmx/android/sdk/utility/t;-><init>(JLcom/hyprmx/android/sdk/utility/u;Ljava/lang/String;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/utility/t;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/utility/t;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/utility/t;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/utility/t;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_25

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-wide v3, p0, Lcom/hyprmx/android/sdk/utility/t;->b:J

    iput v2, p0, Lcom/hyprmx/android/sdk/utility/t;->a:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_25

    return-object v0

    :cond_25
    :goto_25
    iget-object p1, p0, Lcom/hyprmx/android/sdk/utility/t;->c:Lcom/hyprmx/android/sdk/utility/u;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/utility/u;->d:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/utility/t;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_3a

    iget-object v0, p0, Lcom/hyprmx/android/sdk/utility/t;->c:Lcom/hyprmx/android/sdk/utility/u;

    iget-object v0, v0, Lcom/hyprmx/android/sdk/utility/u;->a:Lcom/hyprmx/android/sdk/core/js/a;

    invoke-interface {v0, p1}, Lcom/hyprmx/android/sdk/core/js/a;->c(Ljava/lang/String;)V

    :cond_3a
    iget-object p1, p0, Lcom/hyprmx/android/sdk/utility/t;->c:Lcom/hyprmx/android/sdk/utility/u;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/utility/u;->c:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/utility/t;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/hyprmx/android/sdk/utility/t;->c:Lcom/hyprmx/android/sdk/utility/u;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/utility/u;->d:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/utility/t;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
