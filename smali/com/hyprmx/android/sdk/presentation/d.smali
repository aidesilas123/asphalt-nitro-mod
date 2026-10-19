###### Class com.hyprmx.android.sdk.presentation.d (com.hyprmx.android.sdk.presentation.d)
.class public final Lcom/hyprmx/android/sdk/presentation/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/presentation/j;


# instance fields
.field public final a:Lcom/hyprmx/android/sdk/core/js/a;

.field public final b:Lkotlinx/coroutines/s;

.field public final c:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/core/js/a;Lkotlinx/coroutines/s;)V
    .registers 4

    const-string v0, "jsEngine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/presentation/d;->a:Lcom/hyprmx/android/sdk/core/js/a;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/presentation/d;->b:Lkotlinx/coroutines/s;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/presentation/d;->c:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final a(Lcom/hyprmx/android/sdk/banner/f;Ljava/lang/String;)Lcom/hyprmx/android/sdk/banner/g;
    .registers 12

    const-string v0, "placementName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/hyprmx/android/sdk/banner/g;

    iget-object v4, p0, Lcom/hyprmx/android/sdk/presentation/d;->a:Lcom/hyprmx/android/sdk/core/js/a;

    iget-object v5, p0, Lcom/hyprmx/android/sdk/presentation/d;->b:Lkotlinx/coroutines/s;

    invoke-static {v4, p2}, Lcom/hyprmx/android/sdk/presentation/i;->a(Lcom/hyprmx/android/sdk/core/js/a;Ljava/lang/String;)Lcom/hyprmx/android/sdk/presentation/e;

    move-result-object v6

    new-instance v7, Lcom/hyprmx/android/sdk/mvp/b;

    invoke-direct {v7, v6, v5}, Lcom/hyprmx/android/sdk/mvp/b;-><init>(Lcom/hyprmx/android/sdk/presentation/h;Lkotlinx/coroutines/s;)V

    new-instance v8, Lcom/hyprmx/android/sdk/banner/c;

    invoke-direct {v8, v6}, Lcom/hyprmx/android/sdk/banner/c;-><init>(Lcom/hyprmx/android/sdk/presentation/h;)V

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/hyprmx/android/sdk/banner/g;-><init>(Lcom/hyprmx/android/sdk/banner/f;Ljava/lang/String;Lcom/hyprmx/android/sdk/core/js/a;Lkotlinx/coroutines/s;Lcom/hyprmx/android/sdk/presentation/h;Lcom/hyprmx/android/sdk/mvp/c;Lcom/hyprmx/android/sdk/banner/d;)V

    return-object v0
.end method

.method public final a(Lcom/hyprmx/android/sdk/overlay/g;Ljava/lang/String;)Lcom/hyprmx/android/sdk/overlay/f;
    .registers 12

    const-string v0, "viewModelIdentifier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/presentation/d;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hyprmx/android/sdk/overlay/f;

    if-eqz v0, :cond_15

    iget-object p1, p0, Lcom/hyprmx/android/sdk/presentation/d;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    :cond_15
    new-instance v0, Lcom/hyprmx/android/sdk/overlay/h;

    iget-object v4, p0, Lcom/hyprmx/android/sdk/presentation/d;->a:Lcom/hyprmx/android/sdk/core/js/a;

    iget-object v5, p0, Lcom/hyprmx/android/sdk/presentation/d;->b:Lkotlinx/coroutines/s;

    invoke-static {v4, p2}, Lcom/hyprmx/android/sdk/presentation/i;->b(Lcom/hyprmx/android/sdk/core/js/a;Ljava/lang/String;)Lcom/hyprmx/android/sdk/presentation/e;

    move-result-object v6

    new-instance v7, Lcom/hyprmx/android/sdk/mvp/b;

    invoke-direct {v7, v6, v5}, Lcom/hyprmx/android/sdk/mvp/b;-><init>(Lcom/hyprmx/android/sdk/presentation/h;Lkotlinx/coroutines/s;)V

    new-instance v8, Lcom/hyprmx/android/sdk/overlay/d;

    invoke-direct {v8, v6}, Lcom/hyprmx/android/sdk/overlay/d;-><init>(Lcom/hyprmx/android/sdk/presentation/h;)V

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/hyprmx/android/sdk/overlay/h;-><init>(Lcom/hyprmx/android/sdk/overlay/g;Ljava/lang/String;Lcom/hyprmx/android/sdk/core/js/a;Lkotlinx/coroutines/s;Lcom/hyprmx/android/sdk/presentation/h;Lcom/hyprmx/android/sdk/mvp/c;Lcom/hyprmx/android/sdk/overlay/e;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/presentation/d;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_34
    return-object v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)Lcom/hyprmx/android/sdk/webview/f;
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModelIdentifier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/hyprmx/android/sdk/webview/f;

    const/4 v1, 0x0

    const/16 v2, 0x1e

    invoke-direct {v0, p1, v1, v1, v2}, Lcom/hyprmx/android/sdk/webview/f;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebView;I)V

    invoke-virtual {v0, p2, v1}, Lcom/hyprmx/android/sdk/webview/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Lcom/hyprmx/android/sdk/webview/l;Ljava/lang/String;)Lcom/hyprmx/android/sdk/webview/n;
    .registers 13

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModelIdentifier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/presentation/d;->a:Lcom/hyprmx/android/sdk/core/js/a;

    invoke-static {v0, p2}, Lcom/hyprmx/android/sdk/presentation/i;->c(Lcom/hyprmx/android/sdk/core/js/a;Ljava/lang/String;)Lcom/hyprmx/android/sdk/presentation/e;

    move-result-object v6

    iget-object v4, p0, Lcom/hyprmx/android/sdk/presentation/d;->a:Lcom/hyprmx/android/sdk/core/js/a;

    iget-object v5, p0, Lcom/hyprmx/android/sdk/presentation/d;->b:Lkotlinx/coroutines/s;

    new-instance v0, Lcom/hyprmx/android/sdk/webview/n;

    new-instance v7, Lcom/hyprmx/android/sdk/utility/i;

    invoke-direct {v7, v6, v5}, Lcom/hyprmx/android/sdk/utility/i;-><init>(Lcom/hyprmx/android/sdk/presentation/h;Lkotlinx/coroutines/s;)V

    new-instance v8, Lcom/hyprmx/android/sdk/mvp/b;

    invoke-direct {v8, v6, v5}, Lcom/hyprmx/android/sdk/mvp/b;-><init>(Lcom/hyprmx/android/sdk/presentation/h;Lkotlinx/coroutines/s;)V

    new-instance v9, Lcom/hyprmx/android/sdk/webview/u;

    invoke-direct {v9, v6}, Lcom/hyprmx/android/sdk/webview/u;-><init>(Lcom/hyprmx/android/sdk/presentation/h;)V

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v9}, Lcom/hyprmx/android/sdk/webview/n;-><init>(Lcom/hyprmx/android/sdk/webview/l;Ljava/lang/String;Lcom/hyprmx/android/sdk/core/js/a;Lkotlinx/coroutines/s;Lcom/hyprmx/android/sdk/presentation/h;Lcom/hyprmx/android/sdk/utility/r0;Lcom/hyprmx/android/sdk/mvp/c;Lcom/hyprmx/android/sdk/webview/v;)V

    return-object v0
.end method
