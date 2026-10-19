###### Class com.unity3d.ads.core.domain.AndroidSendWebViewClientErrorDiagnostics.AnonymousClass2 (com.unity3d.ads.core.domain.AndroidSendWebViewClientErrorDiagnostics$invoke$2)
.class final Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics$invoke$2;
.super Lkotlin/coroutines/jvm/internal/j;
.source "AndroidSendWebViewClientErrorDiagnostics.kt"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics;->invoke(Ljava/util/List;Lkotlin/coroutines/d;)Ljava/lang/Object;
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
    c = "com.unity3d.ads.core.domain.AndroidSendWebViewClientErrorDiagnostics$invoke$2"
    f = "AndroidSendWebViewClientErrorDiagnostics.kt"
    i = {}
    l = {
        0x19
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unity3d/ads/adplayer/WebViewClientError;",
            ">;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics;Lkotlin/coroutines/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unity3d/ads/adplayer/WebViewClientError;",
            ">;",
            "Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics$invoke$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics$invoke$2;->$errors:Ljava/util/List;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics;

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

    new-instance p1, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics$invoke$2;

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics$invoke$2;->$errors:Ljava/util/List;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics;

    invoke-direct {p1, v0, v1, p2}, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics$invoke$2;-><init>(Ljava/util/List;Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics$invoke$2;->invoke(Lkotlinx/coroutines/s;Lkotlin/coroutines/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics$invoke$2;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics$invoke$2;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics$invoke$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics$invoke$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1f

    if-ne v1, v2, :cond_17

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics$invoke$2;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics$invoke$2;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2c

    :cond_17
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics$invoke$2;->$errors:Ljava/util/List;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v3, v1

    move-object v1, p1

    :goto_2c
    move-object p1, p0

    :cond_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/unity3d/ads/adplayer/WebViewClientError;

    invoke-virtual {v4}, Lcom/unity3d/ads/adplayer/WebViewClientError;->getUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_49

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_47

    goto :goto_49

    :cond_47
    const/4 v5, 0x0

    goto :goto_4a

    :cond_49
    :goto_49
    const/4 v5, 0x1

    :goto_4a
    if-nez v5, :cond_5b

    invoke-virtual {v4}, Lcom/unity3d/ads/adplayer/WebViewClientError;->getUrl()Ljava/lang/String;

    move-result-object v5

    const-string v7, "webview_url"

    invoke-static {v7, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/d0;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    goto :goto_5c

    :cond_5b
    const/4 v5, 0x0

    :goto_5c
    move-object v7, v5

    new-array v5, v2, [Lkotlin/Pair;

    invoke-virtual {v4}, Lcom/unity3d/ads/adplayer/WebViewClientError;->getReason()Lcom/unity3d/ads/core/data/model/ErrorReason;

    move-result-object v8

    invoke-virtual {v8}, Lcom/unity3d/ads/core/data/model/ErrorReason;->getCode()I

    move-result v8

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "reason"

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v5}, Lkotlin/collections/d0;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v4}, Lcom/unity3d/ads/adplayer/WebViewClientError;->getStatusCode()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_86

    invoke-virtual {v4}, Lcom/unity3d/ads/adplayer/WebViewClientError;->getStatusCode()Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "webview_error_code"

    invoke-interface {v8, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_86
    invoke-static {v3}, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics;->access$getSendDiagnosticEvent$p(Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics;)Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    iput-object v3, p1, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics$invoke$2;->L$0:Ljava/lang/Object;

    iput-object v1, p1, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics$invoke$2;->L$1:Ljava/lang/Object;

    iput v2, p1, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics$invoke$2;->label:I

    const-string v5, "webview_error"

    move-object v9, p1

    invoke-static/range {v4 .. v11}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Ljava/util/Map;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_2d

    return-object v0

    :cond_9d
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
