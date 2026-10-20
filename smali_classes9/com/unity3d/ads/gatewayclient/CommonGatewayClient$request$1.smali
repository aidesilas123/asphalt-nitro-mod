###### Class com.unity3d.ads.gatewayclient.CommonGatewayClient.AnonymousClass1 (com.unity3d.ads.gatewayclient.CommonGatewayClient$request$1)
.class final Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;
.super Lkotlin/coroutines/jvm/internal/c;
.source "CommonGatewayClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->request(Ljava/lang/String;Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;Lcom/unity3d/ads/gatewayclient/RequestPolicy;Lcom/unity3d/ads/core/data/model/OperationType;Lkotlin/coroutines/d;)Ljava/lang/Object;
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
    c = "com.unity3d.ads.gatewayclient.CommonGatewayClient"
    f = "CommonGatewayClient.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x4,
        0x4,
        0x4,
        0x4,
        0x4,
        0x4,
        0x4
    }
    l = {
        0x4b,
        0x4c,
        0x4e,
        0x55,
        0x5c
    }
    m = "request"
    n = {
        "this",
        "url",
        "request",
        "requestPolicy",
        "operationType",
        "retryCount",
        "retryDuration",
        "startTime",
        "this",
        "url",
        "request",
        "requestPolicy",
        "operationType",
        "retryCount",
        "httpResponse",
        "retryDuration",
        "startTime",
        "this",
        "url",
        "request",
        "requestPolicy",
        "operationType",
        "retryCount",
        "e",
        "retryDuration",
        "this",
        "url",
        "request",
        "requestPolicy",
        "operationType",
        "retryCount",
        "retryDuration"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "J$0",
        "J$1",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "J$0",
        "J$1",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "J$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "J$0"
    }
.end annotation


# instance fields
.field J$0:J

.field J$1:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->this$0:Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/c;-><init>(Lkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    iput-object p1, p0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->label:I

    iget-object v0, p0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->this$0:Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->request(Ljava/lang/String;Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;Lcom/unity3d/ads/gatewayclient/RequestPolicy;Lcom/unity3d/ads/core/data/model/OperationType;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
