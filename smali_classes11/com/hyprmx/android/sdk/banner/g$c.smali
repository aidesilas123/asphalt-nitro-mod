###### Class com.hyprmx.android.sdk.banner.g.c (com.hyprmx.android.sdk.banner.g$c)
.class public final Lcom/hyprmx/android/sdk/banner/g$c;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/banner/g;->g(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;
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
    c = "com.hyprmx.android.sdk.banner.HyprMXBannerPresenter$loadAdFailed$2"
    f = "HyprMXBannerPresenter.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/hyprmx/android/sdk/banner/g;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/banner/g;Ljava/lang/String;Lkotlin/coroutines/d;)V
    .registers 4

    iput-object p2, p0, Lcom/hyprmx/android/sdk/banner/g$c;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/hyprmx/android/sdk/banner/g$c;->b:Lcom/hyprmx/android/sdk/banner/g;

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

    new-instance p1, Lcom/hyprmx/android/sdk/banner/g$c;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/g$c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/banner/g$c;->b:Lcom/hyprmx/android/sdk/banner/g;

    invoke-direct {p1, v1, v0, p2}, Lcom/hyprmx/android/sdk/banner/g$c;-><init>(Lcom/hyprmx/android/sdk/banner/g;Ljava/lang/String;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/banner/g$c;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/banner/g$c;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/banner/g$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_6
    iget-object p1, p0, Lcom/hyprmx/android/sdk/banner/g$c;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/hyprmx/android/sdk/core/HyprMXErrors;->valueOf(Ljava/lang/String;)Lcom/hyprmx/android/sdk/core/HyprMXErrors;

    move-result-object p1
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_c} :catch_d

    goto :goto_f

    :catch_d
    sget-object p1, Lcom/hyprmx/android/sdk/core/HyprMXErrors;->UNKNOWN:Lcom/hyprmx/android/sdk/core/HyprMXErrors;

    :goto_f
    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/g$c;->b:Lcom/hyprmx/android/sdk/banner/g;

    iget-object v0, v0, Lcom/hyprmx/android/sdk/banner/g;->a:Lcom/hyprmx/android/sdk/banner/f;

    if-eqz v0, :cond_18

    invoke-interface {v0, p1}, Lcom/hyprmx/android/sdk/banner/f;->loadAdFailure(Lcom/hyprmx/android/sdk/core/HyprMXErrors;)V

    :cond_18
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
