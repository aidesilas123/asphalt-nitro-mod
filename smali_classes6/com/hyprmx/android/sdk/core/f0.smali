###### Class com.hyprmx.android.sdk.core.f0 (com.hyprmx.android.sdk.core.f0)
.class public final Lcom/hyprmx/android/sdk/core/f0;
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
    c = "com.hyprmx.android.sdk.core.StorageHelper$readCoreJSFile$2"
    f = "StorageHelper.kt"
    i = {}
    l = {
        0x71,
        0x71
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:Lcom/hyprmx/android/sdk/core/b0;

.field public b:I

.field public final synthetic c:Lcom/hyprmx/android/sdk/core/b0;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/core/b0;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/core/b0;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/core/f0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/core/f0;->c:Lcom/hyprmx/android/sdk/core/b0;

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

    new-instance p1, Lcom/hyprmx/android/sdk/core/f0;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/f0;->c:Lcom/hyprmx/android/sdk/core/b0;

    invoke-direct {p1, v0, p2}, Lcom/hyprmx/android/sdk/core/f0;-><init>(Lcom/hyprmx/android/sdk/core/b0;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/core/f0;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/core/f0;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/core/f0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/core/f0;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_22

    if-eq v1, v3, :cond_1c

    if-ne v1, v2, :cond_14

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_88

    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c
    iget-object v1, p0, Lcom/hyprmx/android/sdk/core/f0;->a:Lcom/hyprmx/android/sdk/core/b0;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_39

    :cond_22
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/hyprmx/android/sdk/core/f0;->c:Lcom/hyprmx/android/sdk/core/b0;

    iput-object v1, p0, Lcom/hyprmx/android/sdk/core/f0;->a:Lcom/hyprmx/android/sdk/core/b0;

    iput v3, p0, Lcom/hyprmx/android/sdk/core/f0;->b:I

    iget-object p1, v1, Lcom/hyprmx/android/sdk/core/b0;->b:Lkotlinx/coroutines/r;

    new-instance v3, Lcom/hyprmx/android/sdk/core/d0;

    invoke-direct {v3, v1, v4}, Lcom/hyprmx/android/sdk/core/d0;-><init>(Lcom/hyprmx/android/sdk/core/b0;Lkotlin/coroutines/d;)V

    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_39

    return-object v0

    :cond_39
    :goto_39
    check-cast p1, Ljava/lang/String;

    iput-object v4, p0, Lcom/hyprmx/android/sdk/core/f0;->a:Lcom/hyprmx/android/sdk/core/b0;

    iput v2, p0, Lcom/hyprmx/android/sdk/core/f0;->b:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_47
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v1, Lkotlin/text/b;->b:Ljava/nio/charset/Charset;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    const/16 v1, 0x2000

    instance-of v2, v3, Ljava/io/BufferedReader;

    if-eqz v2, :cond_5c

    check-cast v3, Ljava/io/BufferedReader;

    goto :goto_62

    :cond_5c
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_61
    .catch Ljava/io/FileNotFoundException; {:try_start_47 .. :try_end_61} :catch_72

    move-object v3, v2

    :goto_62
    :try_start_62
    invoke-static {v3}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1
    :try_end_66
    .catchall {:try_start_62 .. :try_end_66} :catchall_6b

    :try_start_66
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_69
    .catch Ljava/io/FileNotFoundException; {:try_start_66 .. :try_end_69} :catch_72

    move-object p1, v1

    goto :goto_85

    :catchall_6b
    move-exception v1

    :try_start_6c
    throw v1
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6d

    :catchall_6d
    move-exception v2

    :try_start_6e
    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_72
    .catch Ljava/io/FileNotFoundException; {:try_start_6e .. :try_end_72} :catch_72

    :catch_72
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error reading file for path "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v4

    :goto_85
    if-ne p1, v0, :cond_88

    return-object v0

    :cond_88
    :goto_88
    return-object p1
.end method
