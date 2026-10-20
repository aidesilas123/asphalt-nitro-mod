###### Class com.hyprmx.android.sdk.preload.k (com.hyprmx.android.sdk.preload.k)
.class public final Lcom/hyprmx/android/sdk/preload/k;
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
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.hyprmx.android.sdk.preload.CacheController$retrieveAssetFilePath$2"
    f = "CacheController.kt"
    i = {
        0x0
    }
    l = {
        0x194,
        0x195
    }
    m = "invokeSuspend"
    n = {
        "assetKey"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/hyprmx/android/sdk/preload/c;

.field public final synthetic e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/hyprmx/android/sdk/preload/c;Landroid/content/Context;Lkotlin/coroutines/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hyprmx/android/sdk/preload/c;",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/preload/k;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/preload/k;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/preload/k;->d:Lcom/hyprmx/android/sdk/preload/c;

    iput-object p3, p0, Lcom/hyprmx/android/sdk/preload/k;->e:Landroid/content/Context;

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

    new-instance p1, Lcom/hyprmx/android/sdk/preload/k;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/preload/k;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/preload/k;->d:Lcom/hyprmx/android/sdk/preload/c;

    iget-object v2, p0, Lcom/hyprmx/android/sdk/preload/k;->e:Landroid/content/Context;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/hyprmx/android/sdk/preload/k;-><init>(Ljava/lang/String;Lcom/hyprmx/android/sdk/preload/c;Landroid/content/Context;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/preload/k;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/preload/k;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/preload/k;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/preload/k;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_21

    if-eq v1, v4, :cond_1b

    if-ne v1, v3, :cond_13

    :try_start_f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_55

    goto :goto_52

    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    iget-object v1, p0, Lcom/hyprmx/android/sdk/preload/k;->a:Ljava/lang/String;

    :try_start_1d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_55

    goto :goto_39

    :cond_21
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/k;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/w0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_2a
    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/k;->d:Lcom/hyprmx/android/sdk/preload/c;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/preload/c;->c:Lcom/hyprmx/android/sdk/preload/p;

    iput-object v1, p0, Lcom/hyprmx/android/sdk/preload/k;->a:Ljava/lang/String;

    iput v4, p0, Lcom/hyprmx/android/sdk/preload/k;->b:I

    invoke-interface {p1, v1, p0}, Lcom/hyprmx/android/sdk/preload/p;->c(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_39

    return-object v0

    :cond_39
    :goto_39
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_55

    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/k;->d:Lcom/hyprmx/android/sdk/preload/c;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/preload/c;->c:Lcom/hyprmx/android/sdk/preload/p;

    iget-object v4, p0, Lcom/hyprmx/android/sdk/preload/k;->e:Landroid/content/Context;

    iput-object v2, p0, Lcom/hyprmx/android/sdk/preload/k;->a:Ljava/lang/String;

    iput v3, p0, Lcom/hyprmx/android/sdk/preload/k;->b:I

    invoke-interface {p1, v4, v1, p0}, Lcom/hyprmx/android/sdk/preload/p;->a(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_52

    return-object v0

    :cond_52
    :goto_52
    check-cast p1, Ljava/lang/String;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_54} :catch_55

    move-object v2, p1

    :catch_55
    :cond_55
    return-object v2
.end method
