###### Class com.unity3d.ads.adplayer.CommonWebViewBridge.AnonymousClass2 (com.unity3d.ads.adplayer.CommonWebViewBridge$handleInvocation$2)
.class final Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;
.super Lkotlin/coroutines/jvm/internal/j;
.source "CommonWebViewBridge.kt"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/adplayer/CommonWebViewBridge;->handleInvocation(Ljava/lang/String;)V
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
    c = "com.unity3d.ads.adplayer.CommonWebViewBridge$handleInvocation$2"
    f = "CommonWebViewBridge.kt"
    i = {
        0x0,
        0x1
    }
    l = {
        0x6c,
        0x6e,
        0x6f,
        0x6f,
        0x75
    }
    m = "invokeSuspend"
    n = {
        "invocation",
        "invocation"
    }
    s = {
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $callback:Ljava/lang/String;

.field final synthetic $location:Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

.field final synthetic $parameters:Lorg/json/JSONArray;

.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/adplayer/CommonWebViewBridge;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;Lorg/json/JSONArray;Lcom/unity3d/ads/adplayer/CommonWebViewBridge;Ljava/lang/String;Lkotlin/coroutines/d;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;",
            "Lorg/json/JSONArray;",
            "Lcom/unity3d/ads/adplayer/CommonWebViewBridge;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->$location:Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    iput-object p2, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->$parameters:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->this$0:Lcom/unity3d/ads/adplayer/CommonWebViewBridge;

    iput-object p4, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->$callback:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 9
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

    new-instance p1, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;

    iget-object v1, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->$location:Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    iget-object v2, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->$parameters:Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->this$0:Lcom/unity3d/ads/adplayer/CommonWebViewBridge;

    iget-object v4, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->$callback:Ljava/lang/String;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;-><init>(Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;Lorg/json/JSONArray;Lcom/unity3d/ads/adplayer/CommonWebViewBridge;Ljava/lang/String;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->invoke(Lkotlinx/coroutines/s;Lkotlin/coroutines/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v1, :cond_58

    if-eq v1, v7, :cond_50

    if-eq v1, v6, :cond_48

    if-eq v1, v5, :cond_2e

    if-eq v1, v4, :cond_26

    if-ne v1, v3, :cond_1e

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_104

    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_26
    :try_start_26
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_2b

    goto/16 :goto_104

    :catch_2b
    move-exception p1

    goto/16 :goto_c2

    :cond_2e
    iget v1, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->I$0:I

    iget-object v5, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->L$4:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->L$3:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v9, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->L$2:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v10, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->L$1:Ljava/lang/Object;

    check-cast v10, Lcom/unity3d/ads/adplayer/CommonWebViewBridge;

    iget-object v11, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->L$0:Ljava/lang/Object;

    check-cast v11, [Ljava/lang/Object;

    :try_start_44
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_2b

    goto :goto_ad

    :cond_48
    iget-object v1, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/unity3d/ads/adplayer/Invocation;

    :try_start_4c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_2b

    goto :goto_8c

    :cond_50
    iget-object v1, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/unity3d/ads/adplayer/Invocation;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_7a

    :cond_58
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p1, Lcom/unity3d/ads/adplayer/Invocation;

    iget-object v1, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->$location:Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    iget-object v9, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->$parameters:Lorg/json/JSONArray;

    invoke-static {v9}, Lcom/unity3d/ads/core/extensions/JSONArrayExtensionsKt;->toTypedArray(Lorg/json/JSONArray;)[Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p1, v1, v9}, Lcom/unity3d/ads/adplayer/Invocation;-><init>(Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->this$0:Lcom/unity3d/ads/adplayer/CommonWebViewBridge;

    invoke-static {v1}, Lcom/unity3d/ads/adplayer/CommonWebViewBridge;->access$get_onInvocation$p(Lcom/unity3d/ads/adplayer/CommonWebViewBridge;)Lkotlinx/coroutines/flow/k;

    move-result-object v1

    iput-object p1, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->L$0:Ljava/lang/Object;

    iput v7, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->label:I

    invoke-interface {v1, p1, p0}, Lkotlinx/coroutines/flow/k;->emit(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_79

    return-object v0

    :cond_79
    move-object v1, p1

    :goto_7a
    const-wide/16 v9, 0x1388

    :try_start_7c
    new-instance p1, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2$1;

    invoke-direct {p1, v1, v8}, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2$1;-><init>(Lcom/unity3d/ads/adplayer/Invocation;Lkotlin/coroutines/d;)V

    iput-object v1, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->L$0:Ljava/lang/Object;

    iput v6, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->label:I

    invoke-static {v9, v10, p1, p0}, Lkotlinx/coroutines/TimeoutKt;->withTimeout(JLkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8c

    return-object v0

    :cond_8c
    :goto_8c
    iget-object v10, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->this$0:Lcom/unity3d/ads/adplayer/CommonWebViewBridge;

    iget-object v9, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->$callback:Ljava/lang/String;

    const-string v6, "OK"

    new-array p1, v7, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->L$0:Ljava/lang/Object;

    iput-object v10, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->L$1:Ljava/lang/Object;

    iput-object v9, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->L$2:Ljava/lang/Object;

    iput-object v6, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->L$3:Ljava/lang/Object;

    iput-object p1, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->L$4:Ljava/lang/Object;

    iput v2, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->I$0:I

    iput v5, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->label:I

    invoke-virtual {v1, p0}, Lcom/unity3d/ads/adplayer/Invocation;->getResult(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_a9

    return-object v0

    :cond_a9
    move-object v5, p1

    move-object v11, v5

    move-object p1, v1

    const/4 v1, 0x0

    :goto_ad
    aput-object p1, v5, v1

    iput-object v8, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->L$0:Ljava/lang/Object;

    iput-object v8, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->L$1:Ljava/lang/Object;

    iput-object v8, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->L$2:Ljava/lang/Object;

    iput-object v8, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->L$3:Ljava/lang/Object;

    iput-object v8, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->L$4:Ljava/lang/Object;

    iput v4, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->label:I

    invoke-static {v10, v9, v6, v11, p0}, Lcom/unity3d/ads/adplayer/CommonWebViewBridge;->access$respond(Lcom/unity3d/ads/adplayer/CommonWebViewBridge;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_bf} :catch_2b

    if-ne p1, v0, :cond_104

    return-object v0

    :goto_c2
    instance-of v1, p1, Lkotlinx/coroutines/f1;

    if-eqz v1, :cond_df

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invocation("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->$location:Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") is not handled"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_e7

    :cond_df
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_e7

    const-string p1, "Unknown error"

    :cond_e7
    :goto_e7
    iget-object v1, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->this$0:Lcom/unity3d/ads/adplayer/CommonWebViewBridge;

    iget-object v4, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->$callback:Ljava/lang/String;

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v2

    iput-object v8, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->L$0:Ljava/lang/Object;

    iput-object v8, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->L$1:Ljava/lang/Object;

    iput-object v8, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->L$2:Ljava/lang/Object;

    iput-object v8, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->L$3:Ljava/lang/Object;

    iput-object v8, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->L$4:Ljava/lang/Object;

    iput v3, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$2;->label:I

    const-string p1, "ERROR"

    invoke-static {v1, v4, p1, v5, p0}, Lcom/unity3d/ads/adplayer/CommonWebViewBridge;->access$respond(Lcom/unity3d/ads/adplayer/CommonWebViewBridge;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_104

    return-object v0

    :cond_104
    :goto_104
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
