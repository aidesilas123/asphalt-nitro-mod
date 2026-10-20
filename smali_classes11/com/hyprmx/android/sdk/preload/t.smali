###### Class com.hyprmx.android.sdk.preload.t (com.hyprmx.android.sdk.preload.t)
.class public final Lcom/hyprmx/android/sdk/preload/t;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.hyprmx.android.sdk.preload.DiskLruCacheHelperImpl$isInitialized$2"
    f = "DiskLruCacheHelperImpl.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public final synthetic a:Lcom/hyprmx/android/sdk/preload/q;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/preload/q;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/preload/q;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/preload/t;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/preload/t;->a:Lcom/hyprmx/android/sdk/preload/q;

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

    new-instance p1, Lcom/hyprmx/android/sdk/preload/t;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/preload/t;->a:Lcom/hyprmx/android/sdk/preload/q;

    invoke-direct {p1, v0, p2}, Lcom/hyprmx/android/sdk/preload/t;-><init>(Lcom/hyprmx/android/sdk/preload/q;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/preload/t;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/preload/t;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/preload/t;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/t;->a:Lcom/hyprmx/android/sdk/preload/q;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/preload/q;->c:Lcom/hyprmx/android/sdk/utility/l;

    const/4 v0, 0x1

    if-eqz p1, :cond_1a

    monitor-enter p1

    :try_start_e
    iget-object v1, p1, Lcom/hyprmx/android/sdk/utility/l;->l:Ljava/io/BufferedWriter;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_17

    if-nez v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    monitor-exit p1

    goto :goto_1b

    :catchall_17
    move-exception v0

    monitor-exit p1

    throw v0

    :cond_1a
    const/4 v1, 0x1

    :goto_1b
    xor-int/lit8 p1, v1, 0x1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
