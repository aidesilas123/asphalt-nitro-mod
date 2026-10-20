###### Class com.unity3d.ads.core.domain.InitializeAndroidBoldSDK.AnonymousClass2.AnonymousClass1 (com.unity3d.ads.core.domain.InitializeAndroidBoldSDK$invoke$2$1)
.class final Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK$invoke$2$1;
.super Lkotlin/coroutines/jvm/internal/j;
.source "InitializeAndroidBoldSDK.kt"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK$invoke$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.unity3d.ads.core.domain.InitializeAndroidBoldSDK$invoke$2$1"
    f = "InitializeAndroidBoldSDK.kt"
    i = {}
    l = {
        0x34,
        0x36,
        0x38,
        0x39
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK$invoke$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK$invoke$2$1;->this$0:Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK;

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

    new-instance p1, Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK$invoke$2$1;

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK$invoke$2$1;->this$0:Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK;

    invoke-direct {p1, v0, p2}, Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK$invoke$2$1;-><init>(Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK$invoke$2$1;->invoke(Lkotlinx/coroutines/s;Lkotlin/coroutines/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK$invoke$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK$invoke$2$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK$invoke$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK$invoke$2$1;->label:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_2d

    if-eq v1, v5, :cond_29

    if-eq v1, v4, :cond_25

    if-eq v1, v3, :cond_21

    if-ne v1, v2, :cond_19

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8f

    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_71

    :cond_25
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4f

    :cond_29
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3b

    :cond_2d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK$invoke$2$1;->this$0:Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK;

    iput v5, p0, Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK$invoke$2$1;->label:I

    invoke-static {p1, p0}, Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK;->access$initializationStart(Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3b

    return-object v0

    :cond_3b
    :goto_3b
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK$invoke$2$1;->this$0:Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK;

    invoke-static {p1}, Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK;->access$checkCanInitialize(Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK;)V

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK$invoke$2$1;->this$0:Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK;

    invoke-static {p1}, Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK;->access$getGetInitializeRequest$p(Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK;)Lcom/unity3d/ads/core/domain/GetInitializationRequest;

    move-result-object p1

    iput v4, p0, Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK$invoke$2$1;->label:I

    invoke-interface {p1, p0}, Lcom/unity3d/ads/core/domain/GetInitializationRequest;->invoke(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4f

    return-object v0

    :cond_4f
    :goto_4f
    move-object v6, p1

    check-cast v6, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK$invoke$2$1;->this$0:Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK;

    invoke-static {p1}, Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK;->access$getGetRequestPolicy$p(Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK;)Lcom/unity3d/ads/core/domain/GetRequestPolicy;

    move-result-object p1

    invoke-interface {p1}, Lcom/unity3d/ads/core/domain/GetRequestPolicy;->invoke()Lcom/unity3d/ads/gatewayclient/RequestPolicy;

    move-result-object v7

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK$invoke$2$1;->this$0:Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK;

    invoke-static {p1}, Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK;->access$getGatewayClient$p(Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK;)Lcom/unity3d/ads/gatewayclient/GatewayClient;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v8, Lcom/unity3d/ads/core/data/model/OperationType;->INITIALIZATION:Lcom/unity3d/ads/core/data/model/OperationType;

    const/4 v10, 0x1

    const/4 v11, 0x0

    iput v3, p0, Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK$invoke$2$1;->label:I

    move-object v9, p0

    invoke-static/range {v4 .. v11}, Lcom/unity3d/ads/gatewayclient/GatewayClient$DefaultImpls;->request$default(Lcom/unity3d/ads/gatewayclient/GatewayClient;Ljava/lang/String;Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;Lcom/unity3d/ads/gatewayclient/RequestPolicy;Lcom/unity3d/ads/core/data/model/OperationType;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_71

    return-object v0

    :cond_71
    :goto_71
    check-cast p1, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK$invoke$2$1;->this$0:Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK;

    invoke-static {v1}, Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK;->access$getHandleGatewayInitializationResponse$p(Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK;)Lcom/unity3d/ads/core/domain/HandleGatewayInitializationResponse;

    move-result-object v1

    invoke-virtual {p1}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->getPayload()Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    move-result-object p1

    invoke-virtual {p1}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->getInitializationResponse()Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    move-result-object p1

    const-string v3, "response.payload.initializationResponse"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput v2, p0, Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK$invoke$2$1;->label:I

    invoke-interface {v1, p1, p0}, Lcom/unity3d/ads/core/domain/HandleGatewayInitializationResponse;->invoke(Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8f

    return-object v0

    :cond_8f
    :goto_8f
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
