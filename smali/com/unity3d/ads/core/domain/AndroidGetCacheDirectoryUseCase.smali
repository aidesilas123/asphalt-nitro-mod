###### Class com.unity3d.ads.core.domain.AndroidGetCacheDirectoryUseCase (com.unity3d.ads.core.domain.AndroidGetCacheDirectoryUseCase)
.class public final Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;
.super Ljava/lang/Object;
.source "AndroidGetCacheDirectoryUseCase.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/GetCacheDirectoryUseCase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u001a\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0014\u001a\u00020\u0005H\u0002J\u0012\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0012H\u0002J\u0011\u0010\u0018\u001a\u00020\u0016H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0019J\u0013\u0010\u001a\u001a\u0004\u0018\u00010\u000bH\u0096B\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0019J#\u0010\u001b\u001a\u00020\u000e2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0012H\u0002\u0082\u0002\u000e\n\u000c\u0008\u0000\u0012\u0002\u0018\u0000\u001a\u0004\u0008\u0003\u0010\u0001R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;",
        "Lcom/unity3d/ads/core/domain/GetCacheDirectoryUseCase;",
        "context",
        "Landroid/content/Context;",
        "cacheDirName",
        "",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "(Landroid/content/Context;Ljava/lang/String;Lkotlinx/coroutines/CoroutineDispatcher;)V",
        "cacheDirectory",
        "Lkotlinx/coroutines/CompletableDeferred;",
        "Lcom/unity3d/ads/core/data/model/CacheDirectory;",
        "isInitialized",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "createCacheDirectory",
        "Ljava/io/File;",
        "baseDir",
        "newDir",
        "createNoMediaFile",
        "",
        "path",
        "initialize",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "invoke",
        "testCacheDirectory",
        "directory",
        "Companion",
        "unity-ads_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$Companion;

.field private static final TEST_FILE_NAME:Ljava/lang/String; = "UnityAdsTest.txt"


# instance fields
.field private final cacheDirName:Ljava/lang/String;

.field private final cacheDirectory:Lkotlinx/coroutines/CompletableDeferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lcom/unity3d/ads/core/data/model/CacheDirectory;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final isInitialized:Lkotlinx/coroutines/flow/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/l<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final scope:Lkotlinx/coroutines/s;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$Companion;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->Companion:Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lkotlinx/coroutines/r;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheDirName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->cacheDirName:Ljava/lang/String;

    invoke-static {p3}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/s;

    move-result-object p1

    new-instance p2, Lkotlinx/coroutines/CoroutineName;

    const-string p3, "AndroidGetCacheDirectoryUseCase"

    invoke-direct {p2, p3}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlinx/coroutines/CoroutineScopeKt;->plus(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/s;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->scope:Lkotlinx/coroutines/s;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/l;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->isInitialized:Lkotlinx/coroutines/flow/l;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {p1, p2, p1}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->cacheDirectory:Lkotlinx/coroutines/CompletableDeferred;

    return-void
.end method

.method public static final synthetic access$createCacheDirectory(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->createCacheDirectory(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createNoMediaFile(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;Ljava/io/File;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->createNoMediaFile(Ljava/io/File;)V

    return-void
.end method

.method public static final synthetic access$getCacheDirName$p(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->cacheDirName:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getCacheDirectory$p(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;)Lkotlinx/coroutines/CompletableDeferred;
    .registers 1

    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->cacheDirectory:Lkotlinx/coroutines/CompletableDeferred;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$initialize(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->initialize(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isInitialized$p(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;)Lkotlinx/coroutines/flow/l;
    .registers 1

    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->isInitialized:Lkotlinx/coroutines/flow/l;

    return-object p0
.end method

.method public static final synthetic access$testCacheDirectory(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;Ljava/io/File;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->testCacheDirectory(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method private final createCacheDirectory(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 4

    if-eqz p1, :cond_1d

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_15

    return-object v0

    :cond_15
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Could not create cache directory"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Base directory is null"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final createNoMediaFile(Ljava/io/File;)V
    .registers 4

    new-instance v0, Ljava/io/File;

    const-string v1, ".nomedia"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_7
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result p1

    if-eqz p1, :cond_13

    const-string p1, "Successfully created .nomedia file"

    invoke-static {p1}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_1f

    :cond_13
    const-string p1, "Using existing .nomedia file"

    invoke-static {p1}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_18} :catch_19

    goto :goto_1f

    :catch_19
    move-exception p1

    const-string v0, "Failed to create .nomedia file"

    invoke-static {v0, p1}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_1f
    return-void
.end method

.method private final initialize(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->scope:Lkotlinx/coroutines/s;

    invoke-interface {v0}, Lkotlinx/coroutines/s;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    new-instance v1, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;-><init>(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;Lkotlin/coroutines/d;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_17

    return-object p1

    :cond_17
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method private final testCacheDirectory(Ljava/io/File;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-ne v2, v0, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    if-nez v2, :cond_10

    return v1

    :cond_10
    :try_start_10
    const-string v2, "test"

    new-instance v3, Ljava/io/File;

    const-string v4, "UnityAdsTest.txt"

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v3, v2, v5, v4, v5}, Lkotlin/io/e;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    invoke-static {v3, v5, v0, v5}, Lkotlin/io/e;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    const-string v0, "Read content mismatch"

    invoke-static {v0}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    return v1

    :cond_2e
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_4d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete test file "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_4c} :catch_4e

    return v1

    :cond_4d
    return v0

    :catch_4e
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unity Ads exception while testing cache directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method public invoke(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/unity3d/ads/core/data/model/CacheDirectory;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$invoke$1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$invoke$1;

    iget v1, v0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$invoke$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$invoke$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$invoke$1;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$invoke$1;-><init>(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p1, v0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$invoke$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$invoke$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3c

    if-eq v2, v4, :cond_34

    if-ne v2, v3, :cond_2c

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_67

    :cond_2c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_34
    iget-object v2, v0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$invoke$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_59

    :cond_3c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->isInitialized:Lkotlinx/coroutines/flow/l;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/l;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_58

    iput-object p0, v0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$invoke$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$invoke$1;->label:I

    invoke-direct {p0, v0}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->initialize(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_58

    return-object v1

    :cond_58
    move-object v2, p0

    :goto_59
    iget-object p1, v2, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->cacheDirectory:Lkotlinx/coroutines/CompletableDeferred;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$invoke$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$invoke$1;->label:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/Deferred;->j(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_67

    return-object v1

    :cond_67
    :goto_67
    return-object p1
.end method

###### Class com.unity3d.ads.core.domain.AndroidGetCacheDirectoryUseCase.Companion (com.unity3d.ads.core.domain.AndroidGetCacheDirectoryUseCase$Companion)
.class public final Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$Companion;
.super Ljava/lang/Object;
.source "AndroidGetCacheDirectoryUseCase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$Companion;",
        "",
        "()V",
        "TEST_FILE_NAME",
        "",
        "unity-ads_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$Companion;-><init>()V

    return-void
.end method

###### Class com.unity3d.ads.core.domain.AndroidGetCacheDirectoryUseCase.AnonymousClass2 (com.unity3d.ads.core.domain.AndroidGetCacheDirectoryUseCase$initialize$2)
.class final Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;
.super Lkotlin/coroutines/jvm/internal/j;
.source "AndroidGetCacheDirectoryUseCase.kt"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->initialize(Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.unity3d.ads.core.domain.AndroidGetCacheDirectoryUseCase$initialize$2"
    f = "AndroidGetCacheDirectoryUseCase.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;

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

    new-instance p1, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;

    invoke-direct {p1, v0, p2}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;-><init>(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;->invoke(Lkotlinx/coroutines/s;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/s;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/s;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;->label:I

    if-nez v0, :cond_d1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;

    invoke-static {p1}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->access$isInitialized$p(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;)Lkotlinx/coroutines/flow/l;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/l;->setValue(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mounted"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_79

    :try_start_25
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;

    invoke-static {p1}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->access$getContext$p(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;

    invoke-static {v2}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->access$getCacheDirName$p(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->access$createCacheDirectory(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_39} :catch_3a

    goto :goto_41

    :catch_3a
    move-exception p1

    const-string v1, "Creating external cache directory failed"

    invoke-static {v1, p1}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object p1, v0

    :goto_41
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;

    invoke-static {v1, p1}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->access$testCacheDirectory(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_79

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;

    invoke-static {v0, p1}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->access$createNoMediaFile(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;Ljava/io/File;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unity Ads is using external cache directory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;

    invoke-static {v0}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->access$getCacheDirectory$p(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    new-instance v1, Lcom/unity3d/ads/core/data/model/CacheDirectory;

    sget-object v2, Lcom/unity3d/ads/core/data/model/CacheDirectoryType;->EXTERNAL:Lcom/unity3d/ads/core/data/model/CacheDirectoryType;

    invoke-direct {v1, p1, v2}, Lcom/unity3d/ads/core/data/model/CacheDirectory;-><init>(Ljava/io/File;Lcom/unity3d/ads/core/data/model/CacheDirectoryType;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableDeferred;->v(Ljava/lang/Object;)Z

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_79
    const-string p1, "External media not mounted"

    invoke-static {p1}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;

    invoke-static {p1}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->access$getContext$p(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;

    invoke-static {v1, p1}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->access$testCacheDirectory(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_c0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unity Ads is using internal cache directory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;

    invoke-static {v0}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->access$getCacheDirectory$p(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    new-instance v1, Lcom/unity3d/ads/core/data/model/CacheDirectory;

    const-string v2, "internalCache"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/unity3d/ads/core/data/model/CacheDirectoryType;->INTERNAL:Lcom/unity3d/ads/core/data/model/CacheDirectoryType;

    invoke-direct {v1, p1, v2}, Lcom/unity3d/ads/core/data/model/CacheDirectory;-><init>(Ljava/io/File;Lcom/unity3d/ads/core/data/model/CacheDirectoryType;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableDeferred;->v(Ljava/lang/Object;)Z

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_c0
    const-string p1, "Unity Ads failed to initialize cache directory"

    invoke-static {p1}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$initialize$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;

    invoke-static {p1}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->access$getCacheDirectory$p(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    invoke-interface {p1, v0}, Lkotlinx/coroutines/CompletableDeferred;->v(Ljava/lang/Object;)Z

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_d1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class com.unity3d.ads.core.domain.AndroidGetCacheDirectoryUseCase.AnonymousClass1 (com.unity3d.ads.core.domain.AndroidGetCacheDirectoryUseCase$invoke$1)
.class final Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$invoke$1;
.super Lkotlin/coroutines/jvm/internal/c;
.source "AndroidGetCacheDirectoryUseCase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->invoke(Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.unity3d.ads.core.domain.AndroidGetCacheDirectoryUseCase"
    f = "AndroidGetCacheDirectoryUseCase.kt"
    i = {
        0x0
    }
    l = {
        0x1a,
        0x1d
    }
    m = "invoke"
    n = {
        "this"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$invoke$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$invoke$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/c;-><init>(Lkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$invoke$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$invoke$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$invoke$1;->label:I

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$invoke$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;

    invoke-virtual {p1, p0}, Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;->invoke(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
