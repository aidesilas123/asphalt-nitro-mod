###### Class com.hyprmx.android.sdk.utility.x (com.hyprmx.android.sdk.utility.x)
.class public final Lcom/hyprmx/android/sdk/utility/x;
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
        "Lcom/hyprmx/android/sdk/utility/m0<",
        "+",
        "Landroid/graphics/Bitmap;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.hyprmx.android.sdk.utility.ImageCacheManager$downloadAndCacheBitmap$2"
    f = "ImageCacheManager.kt"
    i = {
        0x1
    }
    l = {
        0x5c,
        0x5d
    }
    m = "invokeSuspend"
    n = {
        "bitmap"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field public a:Landroid/graphics/Bitmap;

.field public b:I

.field public final synthetic c:Lcom/hyprmx/android/sdk/utility/y;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/utility/y;Ljava/lang/String;Lkotlin/coroutines/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/utility/y;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/utility/x;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/utility/x;->c:Lcom/hyprmx/android/sdk/utility/y;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/utility/x;->d:Ljava/lang/String;

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

    new-instance p1, Lcom/hyprmx/android/sdk/utility/x;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/utility/x;->c:Lcom/hyprmx/android/sdk/utility/y;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/utility/x;->d:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/hyprmx/android/sdk/utility/x;-><init>(Lcom/hyprmx/android/sdk/utility/y;Ljava/lang/String;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/utility/x;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/utility/x;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/utility/x;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/utility/x;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_21

    if-eq v1, v3, :cond_1d

    if-ne v1, v2, :cond_15

    iget-object v0, p0, Lcom/hyprmx/android/sdk/utility/x;->a:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_6f

    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_46

    :cond_21
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/utility/x;->c:Lcom/hyprmx/android/sdk/utility/y;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/utility/y;->e:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/utility/x;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/hyprmx/android/sdk/utility/x;->c:Lcom/hyprmx/android/sdk/utility/y;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/utility/x;->d:Ljava/lang/String;

    iput v3, p0, Lcom/hyprmx/android/sdk/utility/x;->b:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/r;

    move-result-object v3

    new-instance v5, Lcom/hyprmx/android/sdk/utility/z;

    invoke-direct {v5, p1, v1, v4}, Lcom/hyprmx/android/sdk/utility/z;-><init>(Lcom/hyprmx/android/sdk/utility/y;Ljava/lang/String;Lkotlin/coroutines/d;)V

    invoke-static {v3, v5, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_46

    return-object v0

    :cond_46
    :goto_46
    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_6e

    iget-object v1, p0, Lcom/hyprmx/android/sdk/utility/x;->c:Lcom/hyprmx/android/sdk/utility/y;

    iget-object v3, p0, Lcom/hyprmx/android/sdk/utility/x;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/hyprmx/android/sdk/utility/x;->a:Landroid/graphics/Bitmap;

    iput v2, p0, Lcom/hyprmx/android/sdk/utility/x;->b:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/r;

    move-result-object v2

    new-instance v5, Lcom/hyprmx/android/sdk/utility/e0;

    invoke-direct {v5, p1, v1, v3, v4}, Lcom/hyprmx/android/sdk/utility/e0;-><init>(Landroid/graphics/Bitmap;Lcom/hyprmx/android/sdk/utility/y;Ljava/lang/String;Lkotlin/coroutines/d;)V

    invoke-static {v2, v5, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_69

    goto :goto_6b

    :cond_69
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    :goto_6b
    if-ne v1, v0, :cond_6e

    return-object v0

    :cond_6e
    move-object v0, p1

    :goto_6f
    iget-object p1, p0, Lcom/hyprmx/android/sdk/utility/x;->c:Lcom/hyprmx/android/sdk/utility/y;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/utility/y;->e:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/utility/x;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-eqz v0, :cond_80

    new-instance p1, Lcom/hyprmx/android/sdk/utility/m0$b;

    invoke-direct {p1, v0}, Lcom/hyprmx/android/sdk/utility/m0$b;-><init>(Ljava/lang/Object;)V

    goto :goto_88

    :cond_80
    new-instance p1, Lcom/hyprmx/android/sdk/utility/m0$a;

    const/4 v0, 0x0

    const-string v1, "Failed to download and cache image"

    invoke-direct {p1, v1, v0, v4}, Lcom/hyprmx/android/sdk/utility/m0$a;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    :goto_88
    return-object p1
.end method
