###### Class com.hyprmx.android.sdk.om.a (com.hyprmx.android.sdk.om.a)
.class public final Lcom/hyprmx/android/sdk/om/a;
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
    c = "com.hyprmx.android.sdk.om.DefaultOpenMeasurementController$fetchOmSdkJSLibrary$2"
    f = "OpenMeasurementController.kt"
    i = {
        0x0,
        0x1,
        0x2
    }
    l = {
        0x65,
        0x6b,
        0x6f
    }
    m = "invokeSuspend"
    n = {
        "filename",
        "filename",
        "js"
    }
    s = {
        "L$0",
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/hyprmx/android/sdk/om/b;

.field public final synthetic e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hyprmx/android/sdk/om/b;Ljava/lang/String;Lkotlin/coroutines/d;)V
    .registers 5

    iput-object p3, p0, Lcom/hyprmx/android/sdk/om/a;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/om/a;->d:Lcom/hyprmx/android/sdk/om/b;

    iput-object p1, p0, Lcom/hyprmx/android/sdk/om/a;->e:Landroid/content/Context;

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

    new-instance p1, Lcom/hyprmx/android/sdk/om/a;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/om/a;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/om/a;->d:Lcom/hyprmx/android/sdk/om/b;

    iget-object v2, p0, Lcom/hyprmx/android/sdk/om/a;->e:Landroid/content/Context;

    invoke-direct {p1, v2, v1, v0, p2}, Lcom/hyprmx/android/sdk/om/a;-><init>(Landroid/content/Context;Lcom/hyprmx/android/sdk/om/b;Ljava/lang/String;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/om/a;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/om/a;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/om/a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/om/a;->b:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_2d

    if-eq v1, v4, :cond_27

    if-eq v1, v3, :cond_21

    if-ne v1, v2, :cond_19

    iget-object v5, p0, Lcom/hyprmx/android/sdk/om/a;->a:Ljava/lang/String;

    :try_start_14
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_a5

    goto/16 :goto_bb

    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    iget-object v1, p0, Lcom/hyprmx/android/sdk/om/a;->a:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_77

    :cond_27
    iget-object v1, p0, Lcom/hyprmx/android/sdk/om/a;->a:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_51

    :cond_2d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/om/a;->c:Ljava/lang/String;

    const-string v1, "/"

    invoke-static {p1, v1, v5, v3, v5}, Lkotlin/text/g;->substringAfterLast$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/hyprmx/android/sdk/om/a;->d:Lcom/hyprmx/android/sdk/om/b;

    iget-object v6, p0, Lcom/hyprmx/android/sdk/om/a;->e:Landroid/content/Context;

    iput-object p1, p0, Lcom/hyprmx/android/sdk/om/a;->a:Ljava/lang/String;

    iput v4, p0, Lcom/hyprmx/android/sdk/om/a;->b:I

    iget-object v1, v1, Lcom/hyprmx/android/sdk/om/b;->g:Lkotlinx/coroutines/r;

    new-instance v7, Lcom/hyprmx/android/sdk/om/d;

    invoke-direct {v7, v6, p1, v5}, Lcom/hyprmx/android/sdk/om/d;-><init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/d;)V

    invoke-static {v1, v7, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4e

    return-object v0

    :cond_4e
    move-object v8, v1

    move-object v1, p1

    move-object p1, v8

    :goto_51
    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5e

    invoke-static {p1, v5, v4, v5}, Lkotlin/io/e;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_bb

    :cond_5e
    iget-object p1, p0, Lcom/hyprmx/android/sdk/om/a;->d:Lcom/hyprmx/android/sdk/om/b;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/om/b;->b:Lcom/hyprmx/android/sdk/network/k;

    iget-object v4, p0, Lcom/hyprmx/android/sdk/om/a;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/hyprmx/android/sdk/om/a;->a:Ljava/lang/String;

    iput v3, p0, Lcom/hyprmx/android/sdk/om/a;->b:I

    new-instance v3, Lcom/hyprmx/android/sdk/network/a;

    const/4 v6, 0x0

    const/16 v7, 0xf

    invoke-direct {v3, v6, v5, v7}, Lcom/hyprmx/android/sdk/network/a;-><init>(ILjava/util/Map;I)V

    invoke-interface {p1, v4, v3, p0}, Lcom/hyprmx/android/sdk/network/k;->a(Ljava/lang/String;Lcom/hyprmx/android/sdk/network/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_77

    return-object v0

    :cond_77
    :goto_77
    check-cast p1, Lcom/hyprmx/android/sdk/network/m;

    instance-of v3, p1, Lcom/hyprmx/android/sdk/network/m$b;

    if-eqz v3, :cond_a8

    check-cast p1, Lcom/hyprmx/android/sdk/network/m$b;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/network/m$b;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    :try_start_83
    iget-object v3, p0, Lcom/hyprmx/android/sdk/om/a;->d:Lcom/hyprmx/android/sdk/om/b;

    iget-object v4, p0, Lcom/hyprmx/android/sdk/om/a;->e:Landroid/content/Context;

    iput-object p1, p0, Lcom/hyprmx/android/sdk/om/a;->a:Ljava/lang/String;

    iput v2, p0, Lcom/hyprmx/android/sdk/om/a;->b:I

    iget-object v2, v3, Lcom/hyprmx/android/sdk/om/b;->g:Lkotlinx/coroutines/r;

    new-instance v3, Lcom/hyprmx/android/sdk/om/e;

    invoke-direct {v3, v4, v1, p1, v5}, Lcom/hyprmx/android/sdk/om/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/d;)V

    invoke-static {v2, v3, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_9d

    goto :goto_9f

    :cond_9d
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_9f} :catch_a4

    :goto_9f
    if-ne v1, v0, :cond_a2

    return-object v0

    :cond_a2
    move-object v5, p1

    goto :goto_bb

    :catch_a4
    move-object v5, p1

    :catch_a5
    const-string p1, "Unable to store Open Measurement JS"

    goto :goto_b8

    :cond_a8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error with network call to fetch OM SDK js library. "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/om/a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_b8
    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    :goto_bb
    return-object v5
.end method
