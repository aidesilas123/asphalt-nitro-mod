###### Class com.hyprmx.android.sdk.banner.g (com.hyprmx.android.sdk.banner.g)
.class public final Lcom/hyprmx/android/sdk/banner/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/banner/e;
.implements Lkotlinx/coroutines/s;
.implements Lcom/hyprmx/android/sdk/mvp/c;
.implements Lcom/hyprmx/android/sdk/banner/b;
.implements Lcom/hyprmx/android/sdk/banner/d;
.implements Lcom/hyprmx/android/sdk/core/v;


# instance fields
.field public a:Lcom/hyprmx/android/sdk/banner/f;

.field public final b:Lcom/hyprmx/android/sdk/banner/d;

.field public final synthetic c:Lkotlinx/coroutines/s;

.field public final synthetic d:Lcom/hyprmx/android/sdk/mvp/c;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/banner/f;Ljava/lang/String;Lcom/hyprmx/android/sdk/core/js/a;Lkotlinx/coroutines/s;Lcom/hyprmx/android/sdk/presentation/h;Lcom/hyprmx/android/sdk/mvp/c;Lcom/hyprmx/android/sdk/banner/d;)V
    .registers 9

    const-string v0, "placementName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "jsEngine"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "coroutineScope"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "eventPublisher"

    invoke-static {p5, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "lifecycleEventAdapter"

    invoke-static {p6, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "sharedInterface"

    invoke-static {p7, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/banner/g;->a:Lcom/hyprmx/android/sdk/banner/f;

    iput-object p7, p0, Lcom/hyprmx/android/sdk/banner/g;->b:Lcom/hyprmx/android/sdk/banner/d;

    iput-object p4, p0, Lcom/hyprmx/android/sdk/banner/g;->c:Lkotlinx/coroutines/s;

    iput-object p6, p0, Lcom/hyprmx/android/sdk/banner/g;->d:Lcom/hyprmx/android/sdk/mvp/c;

    new-instance p1, Lcom/hyprmx/android/sdk/banner/a;

    invoke-direct {p1, p0, p4}, Lcom/hyprmx/android/sdk/banner/a;-><init>(Lcom/hyprmx/android/sdk/banner/b;Lkotlinx/coroutines/s;)V

    invoke-virtual {p0, p1}, Lcom/hyprmx/android/sdk/banner/g;->b(Ljava/lang/Object;)V

    invoke-static {}, Lcom/hyprmx/android/sdk/core/t;->a()Lcom/hyprmx/android/sdk/core/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyprmx/android/sdk/core/q;->a()Lcom/hyprmx/android/sdk/core/j;

    move-result-object p1

    if-eqz p1, :cond_3e

    invoke-virtual {p1, p0}, Lcom/hyprmx/android/sdk/core/j;->a(Lcom/hyprmx/android/sdk/core/v;)V

    :cond_3e
    return-void
.end method


# virtual methods
.method public final G()V
    .registers 2

    const-string v0, "Banner - onSDKReInit"

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/g;->a:Lcom/hyprmx/android/sdk/banner/f;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/banner/f;->removePresenter()V

    :cond_c
    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/g;->a:Lcom/hyprmx/android/sdk/banner/f;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/banner/f;->reloadWebView()V

    :cond_13
    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/banner/g;->L()V

    return-void
.end method

.method public final L()V
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/g;->b:Lcom/hyprmx/android/sdk/banner/d;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/a0;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hyprmx/android/sdk/banner/g;->a:Lcom/hyprmx/android/sdk/banner/f;

    return-void
.end method

.method public final a(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/t0;

    move-result-object v0

    new-instance v1, Lcom/hyprmx/android/sdk/banner/g$h;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/hyprmx/android/sdk/banner/g$h;-><init>(Lcom/hyprmx/android/sdk/banner/g;Ljava/lang/String;Lkotlin/coroutines/d;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_15

    return-object p1

    :cond_15
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/g;->b:Lcom/hyprmx/android/sdk/banner/d;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/a0;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(FF)V
    .registers 4

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/g;->b:Lcom/hyprmx/android/sdk/banner/d;

    invoke-interface {v0, p1, p2}, Lcom/hyprmx/android/sdk/banner/d;->a(FF)V

    return-void
.end method

.method public final a(I)V
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/g;->b:Lcom/hyprmx/android/sdk/banner/d;

    invoke-interface {v0, p1}, Lcom/hyprmx/android/sdk/banner/d;->a(I)V

    return-void
.end method

.method public final a(Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize;FF)V
    .registers 5

    const-string v0, "definedSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/g;->b:Lcom/hyprmx/android/sdk/banner/d;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/a0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string p1, "ViewModel does not exist."

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/banner/g;->a:Lcom/hyprmx/android/sdk/banner/f;

    if-eqz p1, :cond_1f

    sget-object p2, Lcom/hyprmx/android/sdk/core/HyprMXErrors;->NO_FILL:Lcom/hyprmx/android/sdk/core/HyprMXErrors;

    invoke-interface {p1, p2}, Lcom/hyprmx/android/sdk/banner/f;->loadAdFailure(Lcom/hyprmx/android/sdk/core/HyprMXErrors;)V

    :cond_1f
    return-void

    :cond_20
    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/g;->b:Lcom/hyprmx/android/sdk/banner/d;

    invoke-interface {v0, p1, p2, p3}, Lcom/hyprmx/android/sdk/banner/d;->a(Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize;FF)V

    return-void
.end method

.method public final a(Lcom/hyprmx/android/sdk/core/d;)V
    .registers 2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/hyprmx/android/sdk/banner/g;->a:Lcom/hyprmx/android/sdk/banner/f;

    return-void
.end method

.method public final a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/g;->b:Lcom/hyprmx/android/sdk/banner/d;

    invoke-interface {v0, p1}, Lcom/hyprmx/android/sdk/banner/d;->a(Z)V

    return-void
.end method

.method public final b(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p2, p0, Lcom/hyprmx/android/sdk/banner/g;->a:Lcom/hyprmx/android/sdk/banner/f;

    if-eqz p2, :cond_7

    invoke-interface {p2}, Lcom/hyprmx/android/sdk/banner/f;->onAdClicked()V

    :cond_7
    iget-object p2, p0, Lcom/hyprmx/android/sdk/banner/g;->a:Lcom/hyprmx/android/sdk/banner/f;

    if-eqz p2, :cond_e

    invoke-interface {p2, p1}, Lcom/hyprmx/android/sdk/overlay/i;->openOutsideApplication(Ljava/lang/String;)V

    :cond_e
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final b(Lkotlin/coroutines/d;)Ljava/lang/Object;
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

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/t0;

    move-result-object v0

    new-instance v1, Lcom/hyprmx/android/sdk/banner/g$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/hyprmx/android/sdk/banner/g$b;-><init>(Lcom/hyprmx/android/sdk/banner/g;Lkotlin/coroutines/d;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_15

    return-object p1

    :cond_15
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)V
    .registers 3

    const-string v0, "nativeObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/g;->b:Lcom/hyprmx/android/sdk/banner/d;

    invoke-interface {v0, p1}, Lcom/hyprmx/android/sdk/core/a0;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/t0;

    move-result-object v0

    new-instance v1, Lcom/hyprmx/android/sdk/banner/g$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/hyprmx/android/sdk/banner/g$a;-><init>(Lcom/hyprmx/android/sdk/banner/g;Ljava/lang/String;Lkotlin/coroutines/d;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_15

    return-object p1

    :cond_15
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final c(Lkotlin/coroutines/d;)Ljava/lang/Object;
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

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/t0;

    move-result-object v0

    new-instance v1, Lcom/hyprmx/android/sdk/banner/g$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/hyprmx/android/sdk/banner/g$d;-><init>(Lcom/hyprmx/android/sdk/banner/g;Lkotlin/coroutines/d;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_15

    return-object p1

    :cond_15
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final d(Lkotlin/coroutines/d;)Ljava/lang/Object;
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

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/t0;

    move-result-object v0

    new-instance v1, Lcom/hyprmx/android/sdk/banner/g$e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/hyprmx/android/sdk/banner/g$e;-><init>(Lcom/hyprmx/android/sdk/banner/g;Lkotlin/coroutines/d;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_15

    return-object p1

    :cond_15
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final destroy()V
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/g;->b:Lcom/hyprmx/android/sdk/banner/d;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/a0;->destroy()V

    return-void
.end method

.method public final e(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/t0;

    move-result-object v0

    new-instance v1, Lcom/hyprmx/android/sdk/banner/g$g;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/hyprmx/android/sdk/banner/g$g;-><init>(Lcom/hyprmx/android/sdk/banner/g;Ljava/lang/String;Lkotlin/coroutines/d;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_15

    return-object p1

    :cond_15
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final f(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/t0;

    move-result-object v0

    new-instance v1, Lcom/hyprmx/android/sdk/banner/g$f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/hyprmx/android/sdk/banner/g$f;-><init>(Lcom/hyprmx/android/sdk/banner/g;Ljava/lang/String;Lkotlin/coroutines/d;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_15

    return-object p1

    :cond_15
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final g(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/t0;

    move-result-object v0

    new-instance v1, Lcom/hyprmx/android/sdk/banner/g$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/hyprmx/android/sdk/banner/g$c;-><init>(Lcom/hyprmx/android/sdk/banner/g;Ljava/lang/String;Lkotlin/coroutines/d;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_15

    return-object p1

    :cond_15
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/g;->c:Lkotlinx/coroutines/s;

    invoke-interface {v0}, Lkotlinx/coroutines/s;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public final i(Ljava/lang/String;)V
    .registers 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/g;->d:Lcom/hyprmx/android/sdk/mvp/c;

    invoke-interface {v0, p1}, Lcom/hyprmx/android/sdk/mvp/c;->i(Ljava/lang/String;)V

    return-void
.end method

.method public final onVisibleEvent(ZIIIIZZZIIFZ)V
    .registers 27

    move-object v0, p0

    iget-object v1, v0, Lcom/hyprmx/android/sdk/banner/g;->b:Lcom/hyprmx/android/sdk/banner/d;

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-interface/range {v1 .. v13}, Lcom/hyprmx/android/sdk/banner/j;->onVisibleEvent(ZIIIIZZZIIFZ)V

    return-void
.end method

.method public final startVisibilityTracking(JI)V
    .registers 5

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/g;->a:Lcom/hyprmx/android/sdk/banner/f;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2, p3}, Lcom/hyprmx/android/sdk/banner/f;->startVisibilityTracking(JI)V

    :cond_7
    return-void
.end method

.method public final stopVisibilityTracking()V
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/g;->a:Lcom/hyprmx/android/sdk/banner/f;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/banner/f;->stopVisibilityTracking()V

    :cond_7
    return-void
.end method
