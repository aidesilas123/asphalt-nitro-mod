###### Class com.hyprmx.android.sdk.overlay.d (com.hyprmx.android.sdk.overlay.d)
.class public final Lcom/hyprmx/android/sdk/overlay/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/overlay/e;


# instance fields
.field public final a:Lcom/hyprmx/android/sdk/presentation/h;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/presentation/h;)V
    .registers 3

    const-string v0, "eventPublisher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/overlay/d;->a:Lcom/hyprmx/android/sdk/presentation/h;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/overlay/d;->a:Lcom/hyprmx/android/sdk/presentation/h;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/presentation/k;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/ArrayList;I)V
    .registers 10

    const-string v0, "permissionResults"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "permissionResponse - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/overlay/d;->a:Lcom/hyprmx/android/sdk/presentation/h;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/Pair;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hyprmx/android/sdk/utility/l0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iget-object v5, v3, Lcom/hyprmx/android/sdk/utility/l0;->a:Ljava/lang/String;

    const-string v6, "permission"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    iget-boolean v3, v3, Lcom/hyprmx/android/sdk/utility/l0;->b:Z

    const-string v5, "granted"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "JSONObject().put(\n      \u2026NSE_ARG_GRANTED, granted)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_57
    const-string p1, "permissions"

    invoke-static {p1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "permissionId"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {v1}, Lkotlin/collections/d0;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "permissionResponse"

    invoke-interface {v0, p2, p1}, Lcom/hyprmx/android/sdk/presentation/h;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    return-void
.end method

.method public final b()V
    .registers 4

    iget-object v0, p0, Lcom/hyprmx/android/sdk/overlay/d;->a:Lcom/hyprmx/android/sdk/presentation/h;

    const-string v1, "onBrowserReady"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/hyprmx/android/sdk/presentation/h;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .registers 3

    const-string v0, "nativeObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/overlay/d;->a:Lcom/hyprmx/android/sdk/presentation/h;

    check-cast p1, Lkotlinx/coroutines/s;

    invoke-interface {v0, p1}, Lcom/hyprmx/android/sdk/presentation/h;->a(Lkotlinx/coroutines/s;)V

    return-void
.end method

.method public final destroy()V
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/overlay/d;->a:Lcom/hyprmx/android/sdk/presentation/h;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/presentation/h;->destroy()V

    return-void
.end method

.method public final g()V
    .registers 4

    iget-object v0, p0, Lcom/hyprmx/android/sdk/overlay/d;->a:Lcom/hyprmx/android/sdk/presentation/h;

    const-string v1, "onBackButtonPressed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/hyprmx/android/sdk/presentation/h;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    return-void
.end method

.method public final i()V
    .registers 4

    iget-object v0, p0, Lcom/hyprmx/android/sdk/overlay/d;->a:Lcom/hyprmx/android/sdk/presentation/h;

    const-string v1, "onSharePressed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/hyprmx/android/sdk/presentation/h;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    return-void
.end method

.method public final imageCaptured(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/hyprmx/android/sdk/overlay/d;->a:Lcom/hyprmx/android/sdk/presentation/h;

    if-nez p1, :cond_6

    const-string p1, ""

    :cond_6
    const-string v1, "url"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/d0;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    const-string v1, "imageCaptured"

    invoke-interface {v0, v1, p1}, Lcom/hyprmx/android/sdk/presentation/h;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    return-void
.end method

.method public final j()V
    .registers 4

    iget-object v0, p0, Lcom/hyprmx/android/sdk/overlay/d;->a:Lcom/hyprmx/android/sdk/presentation/h;

    const-string v1, "onNavigateBackPressed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/hyprmx/android/sdk/presentation/h;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    return-void
.end method

.method public final l()V
    .registers 4

    iget-object v0, p0, Lcom/hyprmx/android/sdk/overlay/d;->a:Lcom/hyprmx/android/sdk/presentation/h;

    const-string v1, "onNavigateForwardPressed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/hyprmx/android/sdk/presentation/h;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    return-void
.end method

.method public final m()V
    .registers 4

    iget-object v0, p0, Lcom/hyprmx/android/sdk/overlay/d;->a:Lcom/hyprmx/android/sdk/presentation/h;

    const-string v1, "onClose"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/hyprmx/android/sdk/presentation/h;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    return-void
.end method
