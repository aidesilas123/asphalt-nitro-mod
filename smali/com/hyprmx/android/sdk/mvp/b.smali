###### Class com.hyprmx.android.sdk.mvp.b (com.hyprmx.android.sdk.mvp.b)
.class public final Lcom/hyprmx/android/sdk/mvp/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/mvp/c;
.implements Lcom/hyprmx/android/sdk/presentation/h;
.implements Lkotlinx/coroutines/s;


# instance fields
.field public final synthetic a:Lcom/hyprmx/android/sdk/presentation/h;

.field public final synthetic b:Lkotlinx/coroutines/s;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/presentation/h;Lkotlinx/coroutines/s;)V
    .registers 4

    const-string v0, "publisher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/mvp/b;->a:Lcom/hyprmx/android/sdk/presentation/h;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/mvp/b;->b:Lkotlinx/coroutines/s;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    const-string v0, "unknownErrorOccurred"

    const-string v1, "method"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/mvp/b;->a:Lcom/hyprmx/android/sdk/presentation/h;

    invoke-interface {v0, p1}, Lcom/hyprmx/android/sdk/presentation/h;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/mvp/b;->a:Lcom/hyprmx/android/sdk/presentation/h;

    invoke-interface {v0, p1, p2}, Lcom/hyprmx/android/sdk/presentation/h;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/mvp/b;->a:Lcom/hyprmx/android/sdk/presentation/h;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/presentation/k;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 3

    const-string v0, "nativeObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/mvp/b;->a:Lcom/hyprmx/android/sdk/presentation/h;

    invoke-interface {v0, p1}, Lcom/hyprmx/android/sdk/presentation/h;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lkotlinx/coroutines/s;)V
    .registers 3

    const-string v0, "nativeObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/mvp/b;->a:Lcom/hyprmx/android/sdk/presentation/h;

    invoke-interface {v0, p1}, Lcom/hyprmx/android/sdk/presentation/h;->a(Lkotlinx/coroutines/s;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/mvp/b;->a:Lcom/hyprmx/android/sdk/presentation/h;

    invoke-interface {v0, p1}, Lcom/hyprmx/android/sdk/presentation/k;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final destroy()V
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/mvp/b;->a:Lcom/hyprmx/android/sdk/presentation/h;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/presentation/h;->destroy()V

    return-void
.end method

.method public final getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/mvp/b;->b:Lkotlinx/coroutines/s;

    invoke-interface {v0}, Lkotlinx/coroutines/s;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public final getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/mvp/b;->a:Lcom/hyprmx/android/sdk/presentation/h;

    invoke-interface {v0, p1}, Lcom/hyprmx/android/sdk/presentation/h;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final i(Ljava/lang/String;)V
    .registers 4

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/d0;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "onLifecycleEvent"

    const-string v1, "eventName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hyprmx/android/sdk/mvp/b;->a:Lcom/hyprmx/android/sdk/presentation/h;

    invoke-interface {v1, v0, p1}, Lcom/hyprmx/android/sdk/presentation/h;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    return-void
.end method
