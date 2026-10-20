###### Class com.hyprmx.android.sdk.webview.n.b (com.hyprmx.android.sdk.webview.n$b)
.class public final Lcom/hyprmx/android/sdk/webview/n$b;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/webview/n;->imageCaptured(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.hyprmx.android.sdk.webview.HyprMXWebViewPresenter$imageCaptured$1"
    f = "HyprMXWebViewPresenter.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/hyprmx/android/sdk/webview/n;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/webview/n;Ljava/lang/String;Lkotlin/coroutines/d;)V
    .registers 4

    iput-object p2, p0, Lcom/hyprmx/android/sdk/webview/n$b;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/hyprmx/android/sdk/webview/n$b;->b:Lcom/hyprmx/android/sdk/webview/n;

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

    new-instance p1, Lcom/hyprmx/android/sdk/webview/n$b;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/webview/n$b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/webview/n$b;->b:Lcom/hyprmx/android/sdk/webview/n;

    invoke-direct {p1, v1, v0, p2}, Lcom/hyprmx/android/sdk/webview/n$b;-><init>(Lcom/hyprmx/android/sdk/webview/n;Ljava/lang/String;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/webview/n$b;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/webview/n$b;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/webview/n$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/webview/n$b;->a:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    const-string p1, "Image capture returned with empty path."

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/webview/n$b;->b:Lcom/hyprmx/android/sdk/webview/n;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/webview/n;->h:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_38

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_38

    :cond_1e
    iget-object p1, p0, Lcom/hyprmx/android/sdk/webview/n$b;->b:Lcom/hyprmx/android/sdk/webview/n;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/webview/n;->h:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_38

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    iget-object v2, p0, Lcom/hyprmx/android/sdk/webview/n$b;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "parse(this)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-interface {p1, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_38
    :goto_38
    iget-object p1, p0, Lcom/hyprmx/android/sdk/webview/n$b;->b:Lcom/hyprmx/android/sdk/webview/n;

    iput-object v0, p1, Lcom/hyprmx/android/sdk/webview/n;->h:Landroid/webkit/ValueCallback;

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
