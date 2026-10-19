###### Class com.unity3d.ads.core.domain.HandleGatewayAndroidAdResponse (com.unity3d.ads.core.domain.HandleGatewayAndroidAdResponse)
.class public final Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;
.super Ljava/lang/Object;
.source "HandleGatewayAndroidAdResponse.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B]\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\u0006\u0010\u0016\u001a\u00020\u0017\u00a2\u0006\u0002\u0010\u0018J3\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010#J1\u0010$\u001a\u00020%2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)H\u0096B\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010*R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006+"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;",
        "Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;",
        "adRepository",
        "Lcom/unity3d/ads/core/data/repository/AdRepository;",
        "getWebViewContainerUseCase",
        "Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;",
        "getWebViewBridge",
        "Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;",
        "defaultDispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "deviceInfoRepository",
        "Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;",
        "getHandleAndroidInvocationsUseCase",
        "Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;",
        "sessionRepository",
        "Lcom/unity3d/ads/core/data/repository/SessionRepository;",
        "campaignStateRepository",
        "Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;",
        "executeAdViewerRequest",
        "Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;",
        "sendDiagnosticEvent",
        "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;",
        "getOperativeEventApi",
        "Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;",
        "(Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;)V",
        "cleanup",
        "",
        "t",
        "",
        "opportunityId",
        "Lcom/google/protobuf/ByteString;",
        "response",
        "Lgateway/v1/AdResponseOuterClass$AdResponse;",
        "adPlayer",
        "Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;",
        "(Ljava/lang/Throwable;Lcom/google/protobuf/ByteString;Lgateway/v1/AdResponseOuterClass$AdResponse;Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "invoke",
        "Lcom/unity3d/ads/core/data/model/LoadResult;",
        "context",
        "Landroid/content/Context;",
        "placementId",
        "",
        "(Lcom/google/protobuf/ByteString;Lgateway/v1/AdResponseOuterClass$AdResponse;Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "unity-ads_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final adRepository:Lcom/unity3d/ads/core/data/repository/AdRepository;

.field private final campaignStateRepository:Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;

.field private final defaultDispatcher:Lkotlinx/coroutines/r;

.field private final deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

.field private final executeAdViewerRequest:Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;

.field private final getHandleAndroidInvocationsUseCase:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

.field private final getOperativeEventApi:Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;

.field private final getWebViewBridge:Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;

.field private final getWebViewContainerUseCase:Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;

.field private final sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

.field private final sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;Lkotlinx/coroutines/r;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;)V
    .registers 13

    const-string v0, "adRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getWebViewContainerUseCase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getWebViewBridge"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultDispatcher"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoRepository"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getHandleAndroidInvocationsUseCase"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionRepository"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "campaignStateRepository"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executeAdViewerRequest"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendDiagnosticEvent"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getOperativeEventApi"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;->adRepository:Lcom/unity3d/ads/core/data/repository/AdRepository;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;->getWebViewContainerUseCase:Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;

    iput-object p3, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;->getWebViewBridge:Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;

    iput-object p4, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;->defaultDispatcher:Lkotlinx/coroutines/r;

    iput-object p5, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    iput-object p6, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;->getHandleAndroidInvocationsUseCase:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    iput-object p7, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    iput-object p8, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;->campaignStateRepository:Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;

    iput-object p9, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;->executeAdViewerRequest:Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;

    iput-object p10, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    iput-object p11, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;->getOperativeEventApi:Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;

    return-void
.end method

.method public static final synthetic access$cleanup(Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;Ljava/lang/Throwable;Lcom/google/protobuf/ByteString;Lgateway/v1/AdResponseOuterClass$AdResponse;Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;->cleanup(Ljava/lang/Throwable;Lcom/google/protobuf/ByteString;Lgateway/v1/AdResponseOuterClass$AdResponse;Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCampaignStateRepository$p(Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;)Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;
    .registers 1

    iget-object p0, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;->campaignStateRepository:Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;

    return-object p0
.end method

.method private final cleanup(Ljava/lang/Throwable;Lcom/google/protobuf/ByteString;Lgateway/v1/AdResponseOuterClass$AdResponse;Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lcom/google/protobuf/ByteString;",
            "Lgateway/v1/AdResponseOuterClass$AdResponse;",
            "Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p5

    instance-of v2, v1, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$cleanup$1;

    if-eqz v2, :cond_16

    move-object v2, v1

    check-cast v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$cleanup$1;

    iget v3, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$cleanup$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_16

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$cleanup$1;->label:I

    goto :goto_1b

    :cond_16
    new-instance v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$cleanup$1;

    invoke-direct {v2, p0, v1}, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$cleanup$1;-><init>(Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;Lkotlin/coroutines/d;)V

    :goto_1b
    iget-object v1, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$cleanup$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v12

    iget v3, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$cleanup$1;->label:I

    const/4 v13, 0x2

    const/4 v4, 0x1

    if-eqz v3, :cond_41

    if-eq v3, v4, :cond_38

    if-ne v3, v13, :cond_30

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a0

    :cond_30
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_38
    iget-object v3, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$cleanup$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v3

    goto :goto_92

    :cond_41
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object v1, Lgateway/v1/d0;->a:Lgateway/v1/d0$a;

    invoke-static {}, Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->newBuilder()Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventErrorData$a;

    move-result-object v3

    const-string v5, "newBuilder()"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lgateway/v1/d0$a;->a(Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventErrorData$a;)Lgateway/v1/d0;

    move-result-object v1

    sget-object v3, Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventErrorType;->a:Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventErrorType;

    invoke-virtual {v1, v3}, Lgateway/v1/d0;->b(Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventErrorType;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_60

    const-string v3, ""

    :cond_60
    invoke-virtual {v1, v3}, Lgateway/v1/d0;->c(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgateway/v1/d0;->a()Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;

    move-result-object v1

    iget-object v3, v0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;->getOperativeEventApi:Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;

    sget-object v5, Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventType;->c:Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventType;

    invoke-virtual/range {p3 .. p3}, Lgateway/v1/AdResponseOuterClass$AdResponse;->getTrackingToken()Lcom/google/protobuf/ByteString;

    move-result-object v6

    const-string v7, "response.trackingToken"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/protobuf/a;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v7

    const-string v1, "operativeEventErrorData.toByteString()"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/16 v10, 0x10

    const/4 v11, 0x0

    move-object/from16 v1, p4

    iput-object v1, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$cleanup$1;->L$0:Ljava/lang/Object;

    iput v4, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$cleanup$1;->label:I

    move-object v4, v5

    move-object/from16 v5, p2

    move-object v9, v2

    invoke-static/range {v3 .. v11}, Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;->invoke$default(Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventType;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Ljava/lang/String;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v12, :cond_92

    return-object v12

    :cond_92
    :goto_92
    if-eqz v1, :cond_a3

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$cleanup$1;->L$0:Ljava/lang/Object;

    iput v13, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$cleanup$1;->label:I

    invoke-virtual {v1, v2}, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;->destroy(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v12, :cond_a0

    return-object v12

    :cond_a0
    :goto_a0
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    return-object v1

    :cond_a3
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    return-object v1
.end method


# virtual methods
.method public invoke(Lcom/google/protobuf/ByteString;Lgateway/v1/AdResponseOuterClass$AdResponse;Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            "Lgateway/v1/AdResponseOuterClass$AdResponse;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/unity3d/ads/core/data/model/LoadResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p5

    instance-of v2, v0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;

    if-eqz v2, :cond_17

    move-object v2, v0

    check-cast v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;

    iget v3, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->label:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;

    invoke-direct {v2, v1, v0}, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;-><init>(Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;Lkotlin/coroutines/d;)V

    :goto_1c
    iget-object v0, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    iget v4, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->label:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    packed-switch v4, :pswitch_data_37c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_31
    iget-object v2, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/CancellationException;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_37a

    :pswitch_3a
    iget-object v4, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lcom/unity3d/ads/core/data/model/AdObject;

    iget-object v5, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/l0;

    iget-object v6, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lgateway/v1/AdResponseOuterClass$AdResponse;

    iget-object v8, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lcom/google/protobuf/ByteString;

    iget-object v9, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;

    :try_start_4e
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_51
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4e .. :try_end_51} :catch_6c

    goto/16 :goto_2b4

    :pswitch_53
    iget-object v4, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    iget-object v5, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/l0;

    iget-object v6, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lgateway/v1/AdResponseOuterClass$AdResponse;

    iget-object v8, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lcom/google/protobuf/ByteString;

    iget-object v9, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;

    :try_start_67
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_6a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_67 .. :try_end_6a} :catch_6c

    goto/16 :goto_335

    :catch_6c
    move-exception v0

    move-object v10, v5

    move-object/from16 v25, v9

    move-object v9, v6

    move-object/from16 v6, v25

    goto/16 :goto_356

    :pswitch_75
    iget-object v4, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lcom/unity3d/ads/core/data/model/AdObject;

    iget-object v5, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/l0;

    iget-object v8, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$2:Ljava/lang/Object;

    check-cast v8, Lgateway/v1/AdResponseOuterClass$AdResponse;

    iget-object v9, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$1:Ljava/lang/Object;

    check-cast v9, Lcom/google/protobuf/ByteString;

    iget-object v10, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;

    :try_start_89
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_a7

    goto/16 :goto_29b

    :pswitch_8e
    iget-object v4, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lcom/unity3d/ads/core/data/model/AdObject;

    iget-object v5, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/l0;

    iget-object v8, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$2:Ljava/lang/Object;

    check-cast v8, Lgateway/v1/AdResponseOuterClass$AdResponse;

    iget-object v9, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$1:Ljava/lang/Object;

    check-cast v9, Lcom/google/protobuf/ByteString;

    iget-object v10, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;

    :try_start_a2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_a7

    goto/16 :goto_285

    :catchall_a7
    move-exception v0

    move-object v12, v0

    move-object v4, v9

    move-object v9, v10

    goto/16 :goto_2c8

    :pswitch_ad
    iget-object v4, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$6:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v8, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$5:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v9, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$4:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/l0;

    iget-object v10, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$3:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lgateway/v1/AdResponseOuterClass$AdResponse;

    iget-object v12, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$1:Ljava/lang/Object;

    check-cast v12, Lcom/google/protobuf/ByteString;

    iget-object v13, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;

    :try_start_c9
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_cc
    .catch Ljava/util/concurrent/CancellationException; {:try_start_c9 .. :try_end_cc} :catch_d4

    move-object v14, v8

    move-object v15, v9

    move-object v8, v11

    move-object v9, v4

    move-object v4, v12

    move-object v12, v10

    goto/16 :goto_19a

    :catch_d4
    move-exception v0

    move-object v10, v9

    move-object v9, v11

    move-object v8, v12

    move-object v6, v13

    goto/16 :goto_356

    :pswitch_db
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance v4, Lkotlin/jvm/internal/l0;

    invoke-direct {v4}, Lkotlin/jvm/internal/l0;-><init>()V

    :try_start_e3
    invoke-virtual/range {p2 .. p2}, Lgateway/v1/AdResponseOuterClass$AdResponse;->hasError()Z

    move-result v0
    :try_end_e7
    .catch Ljava/util/concurrent/CancellationException; {:try_start_e3 .. :try_end_e7} :catch_34c

    if-eqz v0, :cond_ff

    :try_start_e9
    new-instance v0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    sget-object v9, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->INTERNAL_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;

    const-string v10, "[UnityAds] Internal communication failure"

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;-><init>(Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/n;)V
    :try_end_f6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_e9 .. :try_end_f6} :catch_f7

    return-object v0

    :catch_f7
    move-exception v0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object v6, v1

    goto/16 :goto_355

    :cond_ff
    :try_start_ff
    invoke-virtual/range {p2 .. p2}, Lgateway/v1/AdResponseOuterClass$AdResponse;->getAdData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0
    :try_end_107
    .catch Ljava/util/concurrent/CancellationException; {:try_start_ff .. :try_end_107} :catch_34c

    if-eqz v0, :cond_117

    :try_start_109
    new-instance v0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    sget-object v9, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->NO_FILL:Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;

    const-string v10, "[UnityAds] No fill"

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;-><init>(Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/n;)V
    :try_end_116
    .catch Ljava/util/concurrent/CancellationException; {:try_start_109 .. :try_end_116} :catch_f7

    return-object v0

    :cond_117
    :try_start_117
    invoke-virtual/range {p2 .. p2}, Lgateway/v1/AdResponseOuterClass$AdResponse;->hasWebviewConfiguration()Z

    move-result v0
    :try_end_11b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_117 .. :try_end_11b} :catch_34c

    if-nez v0, :cond_12b

    :try_start_11d
    new-instance v0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    sget-object v9, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->INTERNAL_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;

    const-string v10, "[UnityAds] Internal communication failure"

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;-><init>(Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/n;)V
    :try_end_12a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_11d .. :try_end_12a} :catch_f7

    return-object v0

    :cond_12b
    :try_start_12b
    new-instance v0, Ljava/net/URI;

    invoke-virtual/range {p2 .. p2}, Lgateway/v1/AdResponseOuterClass$AdResponse;->getWebviewConfiguration()Lgateway/v1/WebviewConfiguration$WebViewConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Lgateway/v1/WebviewConfiguration$WebViewConfiguration;->getEntryPoint()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v10, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v11, v12, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?platform=android&"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lgateway/v1/AdResponseOuterClass$AdResponse;->getImpressionConfiguration()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v0, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iget-object v9, v1, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;->getWebViewContainerUseCase:Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;

    iput-object v1, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$0:Ljava/lang/Object;
    :try_end_175
    .catch Ljava/util/concurrent/CancellationException; {:try_start_12b .. :try_end_175} :catch_34c

    move-object/from16 v10, p1

    :try_start_177
    iput-object v10, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$1:Ljava/lang/Object;
    :try_end_179
    .catch Ljava/util/concurrent/CancellationException; {:try_start_177 .. :try_end_179} :catch_34a

    move-object/from16 v11, p2

    :try_start_17b
    iput-object v11, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$2:Ljava/lang/Object;

    move-object/from16 v12, p4

    iput-object v12, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$3:Ljava/lang/Object;

    iput-object v4, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$4:Ljava/lang/Object;

    iput-object v8, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$5:Ljava/lang/Object;

    iput-object v0, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$6:Ljava/lang/Object;

    iput v6, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->label:I

    invoke-virtual {v9, v2}, Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;->invoke(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v9
    :try_end_18d
    .catch Ljava/util/concurrent/CancellationException; {:try_start_17b .. :try_end_18d} :catch_348

    if-ne v9, v3, :cond_190

    return-object v3

    :cond_190
    move-object v13, v1

    move-object v15, v4

    move-object v14, v8

    move-object v4, v10

    move-object v8, v11

    move-object/from16 v25, v9

    move-object v9, v0

    move-object/from16 v0, v25

    :goto_19a
    :try_start_19a
    check-cast v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    iget-object v10, v13, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;->getWebViewBridge:Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;

    invoke-interface {v10, v0}, Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;->invoke(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;)Lcom/unity3d/ads/adplayer/WebViewBridge;

    move-result-object v23

    new-instance v11, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;

    iget-object v10, v13, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    iget-object v6, v13, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    iget-object v5, v13, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;->executeAdViewerRequest:Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;

    iget-object v7, v13, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;->defaultDispatcher:Lkotlinx/coroutines/r;

    iget-object v1, v13, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    move-object/from16 v16, v11

    move-object/from16 v17, v23

    move-object/from16 v18, v10

    move-object/from16 v19, v6

    move-object/from16 v20, v5

    move-object/from16 v21, v7

    move-object/from16 v22, v1

    invoke-direct/range {v16 .. v22}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;-><init>(Lcom/unity3d/ads/adplayer/WebViewBridge;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;Lkotlinx/coroutines/r;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)V

    invoke-static {v4}, Lcom/unity3d/ads/core/extensions/ProtobufExtensionsKt;->toISO8859String(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v18

    iget-object v1, v13, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    iget-object v5, v13, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    new-instance v6, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;

    move-object/from16 v16, v6

    move-object/from16 v17, v11

    move-object/from16 v19, v0

    move-object/from16 v20, v1

    move-object/from16 v21, v5

    invoke-direct/range {v16 .. v21}, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;-><init>(Lcom/unity3d/ads/adplayer/WebViewAdPlayer;Ljava/lang/String;Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/SessionRepository;)V

    iput-object v6, v15, Lkotlin/jvm/internal/l0;->a:Ljava/lang/Object;

    iget-object v1, v13, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    invoke-interface {v1}, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;->getAllowedPii()Lkotlinx/coroutines/flow/l;

    move-result-object v1

    new-instance v5, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$2;

    invoke-direct {v5, v11}, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$2;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v5}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/i;Lkotlin/jvm/b/p;)Lkotlinx/coroutines/flow/i;

    move-result-object v1

    invoke-virtual {v11}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->getScope()Lkotlinx/coroutines/s;

    move-result-object v5

    invoke-static {v1, v5}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/i;Lkotlinx/coroutines/s;)Lkotlinx/coroutines/Job;

    invoke-virtual {v11}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->getUpdateCampaignState()Lkotlinx/coroutines/flow/i;

    move-result-object v1

    new-instance v5, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$3;

    const/4 v6, 0x0

    invoke-direct {v5, v13, v4, v12, v6}, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$3;-><init>(Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;Lcom/google/protobuf/ByteString;Ljava/lang/String;Lkotlin/coroutines/d;)V

    invoke-static {v1, v5}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/i;Lkotlin/jvm/b/p;)Lkotlinx/coroutines/flow/i;

    move-result-object v1

    invoke-virtual {v11}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->getScope()Lkotlinx/coroutines/s;

    move-result-object v5

    invoke-static {v1, v5}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/i;Lkotlinx/coroutines/s;)Lkotlinx/coroutines/Job;

    new-instance v1, Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-virtual {v8}, Lgateway/v1/AdResponseOuterClass$AdResponse;->getTrackingToken()Lcom/google/protobuf/ByteString;

    move-result-object v5

    const-string v6, "response.trackingToken"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v15, Lkotlin/jvm/internal/l0;->a:Ljava/lang/Object;

    check-cast v6, Lcom/unity3d/ads/adplayer/FullscreenAdPlayer;
    :try_end_212
    .catch Ljava/util/concurrent/CancellationException; {:try_start_19a .. :try_end_212} :catch_340

    const/4 v7, 0x0

    const/16 v16, 0x10

    const/16 v17, 0x0

    move-object v10, v1

    move-object/from16 v18, v11

    move-object v11, v4

    move-object/from16 v24, v13

    move-object v13, v5

    move-object v5, v14

    move-object v14, v6

    move-object v6, v15

    move-object v15, v7

    :try_start_222
    invoke-direct/range {v10 .. v17}, Lcom/unity3d/ads/core/data/model/AdObject;-><init>(Lcom/google/protobuf/ByteString;Ljava/lang/String;Lcom/google/protobuf/ByteString;Lcom/unity3d/ads/adplayer/FullscreenAdPlayer;Ljava/lang/String;ILkotlin/jvm/internal/n;)V
    :try_end_225
    .catch Ljava/util/concurrent/CancellationException; {:try_start_222 .. :try_end_225} :catch_33c

    move-object/from16 v7, v24

    :try_start_227
    iget-object v10, v7, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;->getHandleAndroidInvocationsUseCase:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    invoke-interface/range {v23 .. v23}, Lcom/unity3d/ads/adplayer/WebViewBridge;->getOnInvocation()Lkotlinx/coroutines/flow/p;

    move-result-object v11

    invoke-virtual {v8}, Lgateway/v1/AdResponseOuterClass$AdResponse;->getAdData()Lcom/google/protobuf/ByteString;

    move-result-object v12

    const-string v13, "response.adData"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12}, Lcom/unity3d/ads/core/extensions/ProtobufExtensionsKt;->toBase64(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8}, Lgateway/v1/AdResponseOuterClass$AdResponse;->getAdDataRefreshToken()Lcom/google/protobuf/ByteString;

    move-result-object v13

    const-string v14, "response.adDataRefreshToken"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13}, Lcom/unity3d/ads/core/extensions/ProtobufExtensionsKt;->toBase64(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "base64ImpressionConfiguration"

    invoke-static {v9, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v15, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$4;

    const/4 v14, 0x0

    invoke-direct {v15, v0, v5, v14}, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$4;-><init>(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Ljava/lang/String;Lkotlin/coroutines/d;)V

    move-object v0, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v0

    move-object v14, v1

    invoke-virtual/range {v9 .. v15}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;->invoke(Lkotlinx/coroutines/flow/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/jvm/b/l;)Lkotlinx/coroutines/flow/i;

    move-result-object v0

    invoke-virtual/range {v18 .. v18}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->getScope()Lkotlinx/coroutines/s;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/i;Lkotlinx/coroutines/s;)Lkotlinx/coroutines/Job;
    :try_end_264
    .catch Ljava/util/concurrent/CancellationException; {:try_start_227 .. :try_end_264} :catch_33a

    :try_start_264
    invoke-virtual/range {v18 .. v18}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->getLoadEvent()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    iput-object v7, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$0:Ljava/lang/Object;

    iput-object v4, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$1:Ljava/lang/Object;

    iput-object v8, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$2:Ljava/lang/Object;

    iput-object v6, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$3:Ljava/lang/Object;

    iput-object v1, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$4:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$5:Ljava/lang/Object;

    iput-object v5, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$6:Ljava/lang/Object;

    const/4 v5, 0x2

    iput v5, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->label:I

    invoke-interface {v0, v2}, Lkotlinx/coroutines/Deferred;->j(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_27e
    .catchall {:try_start_264 .. :try_end_27e} :catchall_2c4

    if-ne v0, v3, :cond_281

    return-object v3

    :cond_281
    move-object v9, v4

    move-object v5, v6

    move-object v10, v7

    move-object v4, v1

    :goto_285
    :try_start_285
    iget-object v0, v10, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;->campaignStateRepository:Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;

    iput-object v10, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$0:Ljava/lang/Object;

    iput-object v9, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$1:Ljava/lang/Object;

    iput-object v8, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$2:Ljava/lang/Object;

    iput-object v5, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$3:Ljava/lang/Object;

    iput-object v4, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$4:Ljava/lang/Object;

    const/4 v1, 0x3

    iput v1, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->label:I

    invoke-interface {v0, v9, v2}, Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;->setLoadTimestamp(Lcom/google/protobuf/ByteString;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_298
    .catchall {:try_start_285 .. :try_end_298} :catchall_a7

    if-ne v0, v3, :cond_29b

    return-object v3

    :cond_29b
    :goto_29b
    :try_start_29b
    iget-object v0, v10, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;->adRepository:Lcom/unity3d/ads/core/data/repository/AdRepository;

    iput-object v10, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$0:Ljava/lang/Object;

    iput-object v9, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$1:Ljava/lang/Object;

    iput-object v8, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$2:Ljava/lang/Object;

    iput-object v5, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$3:Ljava/lang/Object;

    iput-object v4, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$4:Ljava/lang/Object;

    const/4 v1, 0x5

    iput v1, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->label:I

    invoke-interface {v0, v9, v4, v2}, Lcom/unity3d/ads/core/data/repository/AdRepository;->addAd(Lcom/google/protobuf/ByteString;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2ae
    .catch Ljava/util/concurrent/CancellationException; {:try_start_29b .. :try_end_2ae} :catch_2ba

    if-ne v0, v3, :cond_2b1

    return-object v3

    :cond_2b1
    move-object v6, v8

    move-object v8, v9

    move-object v9, v10

    :goto_2b4
    :try_start_2b4
    new-instance v0, Lcom/unity3d/ads/core/data/model/LoadResult$Success;

    invoke-direct {v0, v4}, Lcom/unity3d/ads/core/data/model/LoadResult$Success;-><init>(Lcom/unity3d/ads/core/data/model/AdObject;)V
    :try_end_2b9
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2b4 .. :try_end_2b9} :catch_6c

    return-object v0

    :catch_2ba
    move-exception v0

    move-object v6, v10

    move-object v10, v5

    move-object/from16 v25, v9

    move-object v9, v8

    move-object/from16 v8, v25

    goto/16 :goto_356

    :catchall_2c4
    move-exception v0

    move-object v12, v0

    move-object v5, v6

    move-object v9, v7

    :goto_2c8
    :try_start_2c8
    new-instance v0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    sget-object v1, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->INTERNAL_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;

    const-string v6, "[UnityAds] Internal communication failure"

    invoke-direct {v0, v1, v6, v12}, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;-><init>(Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;Ljava/lang/Throwable;)V

    instance-of v1, v12, Ljava/util/concurrent/CancellationException;

    if-eqz v1, :cond_30d

    invoke-virtual {v12}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/unity3d/ads/adplayer/AdPlayerError;

    if-eqz v1, :cond_30c

    const/4 v14, 0x0

    const-string v1, "[UnityAds] Internal communication failure: %s"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v12}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    if-eqz v10, :cond_2ef

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    goto :goto_2f0

    :cond_2ef
    const/4 v10, 0x0

    :goto_2f0
    aput-object v10, v7, v6

    const/4 v6, 0x1

    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const-string v1, "format(this, *args)"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v16, 0x0

    const/16 v17, 0x5

    const/16 v18, 0x0

    move-object v13, v0

    invoke-static/range {v13 .. v18}, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->copy$default(Lcom/unity3d/ads/core/data/model/LoadResult$Failure;Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    move-result-object v0

    return-object v0

    :cond_30c
    throw v12

    :cond_30d
    sget-object v1, Lkotlinx/coroutines/NonCancellable;->a:Lkotlinx/coroutines/NonCancellable;

    new-instance v6, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$5;

    const/16 v16, 0x0

    move-object v10, v6

    move-object v11, v9

    move-object v13, v4

    move-object v14, v8

    move-object v15, v5

    invoke-direct/range {v10 .. v16}, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$5;-><init>(Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;Ljava/lang/Throwable;Lcom/google/protobuf/ByteString;Lgateway/v1/AdResponseOuterClass$AdResponse;Lkotlin/jvm/internal/l0;Lkotlin/coroutines/d;)V

    iput-object v9, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$0:Ljava/lang/Object;

    iput-object v4, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$1:Ljava/lang/Object;

    iput-object v8, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$2:Ljava/lang/Object;

    iput-object v5, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$3:Ljava/lang/Object;

    iput-object v0, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$4:Ljava/lang/Object;

    const/4 v7, 0x0

    iput-object v7, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$5:Ljava/lang/Object;

    iput-object v7, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$6:Ljava/lang/Object;

    const/4 v7, 0x4

    iput v7, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->label:I

    invoke-static {v1, v6, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v1
    :try_end_331
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2c8 .. :try_end_331} :catch_336

    if-ne v1, v3, :cond_334

    return-object v3

    :cond_334
    move-object v4, v0

    :goto_335
    return-object v4

    :catch_336
    move-exception v0

    move-object v10, v5

    move-object v6, v9

    goto :goto_345

    :catch_33a
    move-exception v0

    goto :goto_343

    :catch_33c
    move-exception v0

    move-object/from16 v7, v24

    goto :goto_343

    :catch_340
    move-exception v0

    move-object v7, v13

    move-object v6, v15

    :goto_343
    move-object v10, v6

    move-object v6, v7

    :goto_345
    move-object v9, v8

    move-object v8, v4

    goto :goto_356

    :catch_348
    move-exception v0

    goto :goto_351

    :catch_34a
    move-exception v0

    goto :goto_34f

    :catch_34c
    move-exception v0

    move-object/from16 v10, p1

    :goto_34f
    move-object/from16 v11, p2

    :goto_351
    move-object/from16 v6, p0

    move-object v8, v10

    move-object v9, v11

    :goto_355
    move-object v10, v4

    :goto_356
    sget-object v1, Lkotlinx/coroutines/NonCancellable;->a:Lkotlinx/coroutines/NonCancellable;

    new-instance v4, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$6;

    const/4 v11, 0x0

    move-object v5, v4

    move-object v7, v0

    invoke-direct/range {v5 .. v11}, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$6;-><init>(Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;Ljava/util/concurrent/CancellationException;Lcom/google/protobuf/ByteString;Lgateway/v1/AdResponseOuterClass$AdResponse;Lkotlin/jvm/internal/l0;Lkotlin/coroutines/d;)V

    iput-object v0, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$0:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$1:Ljava/lang/Object;

    iput-object v5, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$2:Ljava/lang/Object;

    iput-object v5, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$3:Ljava/lang/Object;

    iput-object v5, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$4:Ljava/lang/Object;

    iput-object v5, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$5:Ljava/lang/Object;

    iput-object v5, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->L$6:Ljava/lang/Object;

    const/4 v5, 0x6

    iput v5, v2, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->label:I

    invoke-static {v1, v4, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_379

    return-object v3

    :cond_379
    move-object v2, v0

    :goto_37a
    throw v2

    nop

    :pswitch_data_37c
    .packed-switch 0x0
        :pswitch_db
        :pswitch_ad
        :pswitch_8e
        :pswitch_75
        :pswitch_53
        :pswitch_3a
        :pswitch_31
    .end packed-switch
.end method

###### Class com.unity3d.ads.core.domain.HandleGatewayAndroidAdResponse.AnonymousClass1 (com.unity3d.ads.core.domain.HandleGatewayAndroidAdResponse$cleanup$1)
.class final Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$cleanup$1;
.super Lkotlin/coroutines/jvm/internal/c;
.source "HandleGatewayAndroidAdResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;->cleanup(Ljava/lang/Throwable;Lcom/google/protobuf/ByteString;Lgateway/v1/AdResponseOuterClass$AdResponse;Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;Lkotlin/coroutines/d;)Ljava/lang/Object;
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
    c = "com.unity3d.ads.core.domain.HandleGatewayAndroidAdResponse"
    f = "HandleGatewayAndroidAdResponse.kt"
    i = {
        0x0
    }
    l = {
        0xb5,
        0xbb
    }
    m = "cleanup"
    n = {
        "adPlayer"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$cleanup$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$cleanup$1;->this$0:Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/c;-><init>(Lkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$cleanup$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$cleanup$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$cleanup$1;->label:I

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$cleanup$1;->this$0:Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;->access$cleanup(Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;Ljava/lang/Throwable;Lcom/google/protobuf/ByteString;Lgateway/v1/AdResponseOuterClass$AdResponse;Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class com.unity3d.ads.core.domain.HandleGatewayAndroidAdResponse.C16801 (com.unity3d.ads.core.domain.HandleGatewayAndroidAdResponse$invoke$1)
.class final Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;
.super Lkotlin/coroutines/jvm/internal/c;
.source "HandleGatewayAndroidAdResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;->invoke(Lcom/google/protobuf/ByteString;Lgateway/v1/AdResponseOuterClass$AdResponse;Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;
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
    c = "com.unity3d.ads.core.domain.HandleGatewayAndroidAdResponse"
    f = "HandleGatewayAndroidAdResponse.kt"
    i = {
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
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x4,
        0x4,
        0x4,
        0x4,
        0x4,
        0x5
    }
    l = {
        0x59,
        0x89,
        0x8a,
        0x9a,
        0xa0,
        0xa4
    }
    m = "invoke"
    n = {
        "this",
        "opportunityId",
        "response",
        "placementId",
        "adPlayer",
        "webViewUrl",
        "base64ImpressionConfiguration",
        "this",
        "opportunityId",
        "response",
        "adPlayer",
        "adObject",
        "this",
        "opportunityId",
        "response",
        "adPlayer",
        "adObject",
        "this",
        "opportunityId",
        "response",
        "adPlayer",
        "loadFailure",
        "this",
        "opportunityId",
        "response",
        "adPlayer",
        "adObject",
        "t"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->this$0:Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/c;-><init>(Lkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->label:I

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$1;->this$0:Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;->invoke(Lcom/google/protobuf/ByteString;Lgateway/v1/AdResponseOuterClass$AdResponse;Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class com.unity3d.ads.core.domain.HandleGatewayAndroidAdResponse.AnonymousClass2 (com.unity3d.ads.core.domain.HandleGatewayAndroidAdResponse$invoke$2)
.class final synthetic Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$2;
.super Lkotlin/jvm/internal/r;
.source "HandleGatewayAndroidAdResponse.kt"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;->invoke(Lcom/google/protobuf/ByteString;Lgateway/v1/AdResponseOuterClass$AdResponse;Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/b/p<",
        "Lgateway/v1/AllowedPiiOuterClass$AllowedPii;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lkotlin/v;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 9

    const-class v3, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;

    const/4 v1, 0x2

    const-string v4, "onAllowedPiiChange"

    const-string v5, "onAllowedPiiChange(Lgateway/v1/AllowedPiiOuterClass$AllowedPii;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/r;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lgateway/v1/AllowedPiiOuterClass$AllowedPii;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgateway/v1/AllowedPiiOuterClass$AllowedPii;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/jvm/internal/l;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->onAllowedPiiChange(Lgateway/v1/AllowedPiiOuterClass$AllowedPii;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$2;->invoke(Lgateway/v1/AllowedPiiOuterClass$AllowedPii;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class com.unity3d.ads.core.domain.HandleGatewayAndroidAdResponse.AnonymousClass3 (com.unity3d.ads.core.domain.HandleGatewayAndroidAdResponse$invoke$3)
.class final Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$3;
.super Lkotlin/coroutines/jvm/internal/j;
.source "HandleGatewayAndroidAdResponse.kt"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;->invoke(Lcom/google/protobuf/ByteString;Lgateway/v1/AdResponseOuterClass$AdResponse;Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/j;",
        "Lkotlin/jvm/b/p<",
        "Lkotlin/Pair<",
        "+",
        "Lcom/google/protobuf/ByteString;",
        "+",
        "Ljava/lang/Integer;",
        ">;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\u0010\u0000\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "<name for destructuring parameter 0>",
        "Lkotlin/Pair;",
        "Lcom/google/protobuf/ByteString;",
        ""
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.unity3d.ads.core.domain.HandleGatewayAndroidAdResponse$invoke$3"
    f = "HandleGatewayAndroidAdResponse.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x71,
        0x75
    }
    m = "invokeSuspend"
    n = {
        "data",
        "dataVersion"
    }
    s = {
        "L$0",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $opportunityId:Lcom/google/protobuf/ByteString;

.field final synthetic $placementId:Ljava/lang/String;

.field I$0:I

.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;Lcom/google/protobuf/ByteString;Ljava/lang/String;Lkotlin/coroutines/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;",
            "Lcom/google/protobuf/ByteString;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$3;->this$0:Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$3;->$opportunityId:Lcom/google/protobuf/ByteString;

    iput-object p3, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$3;->$placementId:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 7
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

    new-instance v0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$3;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$3;->this$0:Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;

    iget-object v2, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$3;->$opportunityId:Lcom/google/protobuf/ByteString;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$3;->$placementId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$3;-><init>(Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;Lcom/google/protobuf/ByteString;Ljava/lang/String;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$3;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlin/Pair;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$3;->invoke(Lkotlin/Pair;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/Pair;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Lcom/google/protobuf/ByteString;",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$3;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$3;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$3;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_26

    if-eq v1, v3, :cond_1b

    if-ne v1, v2, :cond_13

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_ab

    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    iget v1, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$3;->I$0:I

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$3;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/google/protobuf/ByteString;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v3

    goto :goto_55

    :cond_26
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$3;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/ByteString;

    invoke-virtual {p1}, Lkotlin/Pair;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v4, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$3;->this$0:Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;

    invoke-static {v4}, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;->access$getCampaignStateRepository$p(Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;)Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;

    move-result-object v4

    iget-object v5, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$3;->$opportunityId:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$3;->L$0:Ljava/lang/Object;

    iput p1, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$3;->I$0:I

    iput v3, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$3;->label:I

    invoke-interface {v4, v5, p0}, Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;->getState(Lcom/google/protobuf/ByteString;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_52

    return-object v0

    :cond_52
    move-object v11, v1

    move v1, p1

    move-object p1, v3

    :goto_55
    move-object v3, p1

    check-cast v3, Lcom/unity3d/ads/core/data/model/CampaignState;

    if-eqz v3, :cond_69

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1c

    const/4 v10, 0x0

    move-object v4, v11

    move v5, v1

    invoke-static/range {v3 .. v10}, Lcom/unity3d/ads/core/data/model/CampaignState;->copy$default(Lcom/unity3d/ads/core/data/model/CampaignState;Lcom/google/protobuf/ByteString;ILjava/lang/String;Lgateway/v1/TimestampsOuterClass$Timestamps;Lgateway/v1/TimestampsOuterClass$Timestamps;ILjava/lang/Object;)Lcom/unity3d/ads/core/data/model/CampaignState;

    move-result-object p1

    if-eqz p1, :cond_69

    goto :goto_97

    :cond_69
    iget-object v6, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$3;->$placementId:Ljava/lang/String;

    sget-object p1, Lgateway/v1/r0;->a:Lgateway/v1/r0$a;

    invoke-static {}, Lgateway/v1/TimestampsOuterClass$Timestamps;->newBuilder()Lgateway/v1/TimestampsOuterClass$Timestamps$a;

    move-result-object v3

    const-string v4, "newBuilder()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lgateway/v1/r0$a;->a(Lgateway/v1/TimestampsOuterClass$Timestamps$a;)Lgateway/v1/r0;

    move-result-object v3

    sget-object v5, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {v3}, Lgateway/v1/r0;->a()Lgateway/v1/TimestampsOuterClass$Timestamps;

    move-result-object v7

    invoke-static {}, Lgateway/v1/TimestampsOuterClass$Timestamps;->newBuilder()Lgateway/v1/TimestampsOuterClass$Timestamps$a;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lgateway/v1/r0$a;->a(Lgateway/v1/TimestampsOuterClass$Timestamps$a;)Lgateway/v1/r0;

    move-result-object p1

    invoke-virtual {p1}, Lgateway/v1/r0;->a()Lgateway/v1/TimestampsOuterClass$Timestamps;

    move-result-object v8

    new-instance p1, Lcom/unity3d/ads/core/data/model/CampaignState;

    move-object v3, p1

    move-object v4, v11

    move v5, v1

    invoke-direct/range {v3 .. v8}, Lcom/unity3d/ads/core/data/model/CampaignState;-><init>(Lcom/google/protobuf/ByteString;ILjava/lang/String;Lgateway/v1/TimestampsOuterClass$Timestamps;Lgateway/v1/TimestampsOuterClass$Timestamps;)V

    :goto_97
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$3;->this$0:Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;

    invoke-static {v1}, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;->access$getCampaignStateRepository$p(Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;)Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;

    move-result-object v1

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$3;->$opportunityId:Lcom/google/protobuf/ByteString;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$3;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$3;->label:I

    invoke-interface {v1, v3, p1, p0}, Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;->updateState(Lcom/google/protobuf/ByteString;Lcom/unity3d/ads/core/data/model/CampaignState;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_ab

    return-object v0

    :cond_ab
    :goto_ab
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

###### Class com.unity3d.ads.core.domain.HandleGatewayAndroidAdResponse.AnonymousClass4 (com.unity3d.ads.core.domain.HandleGatewayAndroidAdResponse$invoke$4)
.class final Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$4;
.super Lkotlin/coroutines/jvm/internal/j;
.source "HandleGatewayAndroidAdResponse.kt"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;->invoke(Lcom/google/protobuf/ByteString;Lgateway/v1/AdResponseOuterClass$AdResponse;Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/j;",
        "Lkotlin/jvm/b/l<",
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
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"
    }
    d2 = {
        "<anonymous>",
        ""
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.unity3d.ads.core.domain.HandleGatewayAndroidAdResponse$invoke$4"
    f = "HandleGatewayAndroidAdResponse.kt"
    i = {}
    l = {
        0x85
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $webViewUrl:Ljava/lang/String;

.field final synthetic $webviewContainer:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

.field label:I


# direct methods
.method constructor <init>(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Ljava/lang/String;Lkotlin/coroutines/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$4;->$webviewContainer:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$4;->$webViewUrl:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "*>;)",
            "Lkotlin/coroutines/d<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$4;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$4;->$webviewContainer:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    iget-object v2, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$4;->$webViewUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$4;-><init>(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Ljava/lang/String;Lkotlin/coroutines/d;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1}, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$4;->invoke(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 3
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

    invoke-virtual {p0, p1}, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$4;->create(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$4;

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$4;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_27

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$4;->$webviewContainer:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$4;->$webViewUrl:Ljava/lang/String;

    iput v2, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$4;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;->loadUrl(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_27

    return-object v0

    :cond_27
    :goto_27
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

###### Class com.unity3d.ads.core.domain.HandleGatewayAndroidAdResponse.AnonymousClass5 (com.unity3d.ads.core.domain.HandleGatewayAndroidAdResponse$invoke$5)
.class final Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$5;
.super Lkotlin/coroutines/jvm/internal/j;
.source "HandleGatewayAndroidAdResponse.kt"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;->invoke(Lcom/google/protobuf/ByteString;Lgateway/v1/AdResponseOuterClass$AdResponse;Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;
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
    c = "com.unity3d.ads.core.domain.HandleGatewayAndroidAdResponse$invoke$5"
    f = "HandleGatewayAndroidAdResponse.kt"
    i = {}
    l = {
        0x9b
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $adPlayer:Lkotlin/jvm/internal/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/l0<",
            "Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $opportunityId:Lcom/google/protobuf/ByteString;

.field final synthetic $response:Lgateway/v1/AdResponseOuterClass$AdResponse;

.field final synthetic $t:Ljava/lang/Throwable;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;Ljava/lang/Throwable;Lcom/google/protobuf/ByteString;Lgateway/v1/AdResponseOuterClass$AdResponse;Lkotlin/jvm/internal/l0;Lkotlin/coroutines/d;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;",
            "Ljava/lang/Throwable;",
            "Lcom/google/protobuf/ByteString;",
            "Lgateway/v1/AdResponseOuterClass$AdResponse;",
            "Lkotlin/jvm/internal/l0<",
            "Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$5;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$5;->this$0:Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$5;->$t:Ljava/lang/Throwable;

    iput-object p3, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$5;->$opportunityId:Lcom/google/protobuf/ByteString;

    iput-object p4, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$5;->$response:Lgateway/v1/AdResponseOuterClass$AdResponse;

    iput-object p5, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$5;->$adPlayer:Lkotlin/jvm/internal/l0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 10
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

    new-instance p1, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$5;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$5;->this$0:Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;

    iget-object v2, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$5;->$t:Ljava/lang/Throwable;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$5;->$opportunityId:Lcom/google/protobuf/ByteString;

    iget-object v4, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$5;->$response:Lgateway/v1/AdResponseOuterClass$AdResponse;

    iget-object v5, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$5;->$adPlayer:Lkotlin/jvm/internal/l0;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$5;-><init>(Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;Ljava/lang/Throwable;Lcom/google/protobuf/ByteString;Lgateway/v1/AdResponseOuterClass$AdResponse;Lkotlin/jvm/internal/l0;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$5;->invoke(Lkotlinx/coroutines/s;Lkotlin/coroutines/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$5;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$5;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$5;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_33

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$5;->this$0:Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$5;->$t:Ljava/lang/Throwable;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$5;->$opportunityId:Lcom/google/protobuf/ByteString;

    iget-object v4, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$5;->$response:Lgateway/v1/AdResponseOuterClass$AdResponse;

    iget-object v5, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$5;->$adPlayer:Lkotlin/jvm/internal/l0;

    iget-object v5, v5, Lkotlin/jvm/internal/l0;->a:Ljava/lang/Object;

    check-cast v5, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;

    iput v2, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$5;->label:I

    move-object v2, p1

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;->access$cleanup(Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;Ljava/lang/Throwable;Lcom/google/protobuf/ByteString;Lgateway/v1/AdResponseOuterClass$AdResponse;Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_33

    return-object v0

    :cond_33
    :goto_33
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

###### Class com.unity3d.ads.core.domain.HandleGatewayAndroidAdResponse.AnonymousClass6 (com.unity3d.ads.core.domain.HandleGatewayAndroidAdResponse$invoke$6)
.class final Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$6;
.super Lkotlin/coroutines/jvm/internal/j;
.source "HandleGatewayAndroidAdResponse.kt"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;->invoke(Lcom/google/protobuf/ByteString;Lgateway/v1/AdResponseOuterClass$AdResponse;Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;
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
    c = "com.unity3d.ads.core.domain.HandleGatewayAndroidAdResponse$invoke$6"
    f = "HandleGatewayAndroidAdResponse.kt"
    i = {}
    l = {
        0xa5
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $adPlayer:Lkotlin/jvm/internal/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/l0<",
            "Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $opportunityId:Lcom/google/protobuf/ByteString;

.field final synthetic $response:Lgateway/v1/AdResponseOuterClass$AdResponse;

.field final synthetic $t:Ljava/util/concurrent/CancellationException;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;Ljava/util/concurrent/CancellationException;Lcom/google/protobuf/ByteString;Lgateway/v1/AdResponseOuterClass$AdResponse;Lkotlin/jvm/internal/l0;Lkotlin/coroutines/d;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;",
            "Ljava/util/concurrent/CancellationException;",
            "Lcom/google/protobuf/ByteString;",
            "Lgateway/v1/AdResponseOuterClass$AdResponse;",
            "Lkotlin/jvm/internal/l0<",
            "Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$6;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$6;->this$0:Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$6;->$t:Ljava/util/concurrent/CancellationException;

    iput-object p3, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$6;->$opportunityId:Lcom/google/protobuf/ByteString;

    iput-object p4, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$6;->$response:Lgateway/v1/AdResponseOuterClass$AdResponse;

    iput-object p5, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$6;->$adPlayer:Lkotlin/jvm/internal/l0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 10
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

    new-instance p1, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$6;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$6;->this$0:Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;

    iget-object v2, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$6;->$t:Ljava/util/concurrent/CancellationException;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$6;->$opportunityId:Lcom/google/protobuf/ByteString;

    iget-object v4, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$6;->$response:Lgateway/v1/AdResponseOuterClass$AdResponse;

    iget-object v5, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$6;->$adPlayer:Lkotlin/jvm/internal/l0;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$6;-><init>(Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;Ljava/util/concurrent/CancellationException;Lcom/google/protobuf/ByteString;Lgateway/v1/AdResponseOuterClass$AdResponse;Lkotlin/jvm/internal/l0;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$6;->invoke(Lkotlinx/coroutines/s;Lkotlin/coroutines/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$6;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$6;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$6;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$6;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_33

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$6;->this$0:Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$6;->$t:Ljava/util/concurrent/CancellationException;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$6;->$opportunityId:Lcom/google/protobuf/ByteString;

    iget-object v4, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$6;->$response:Lgateway/v1/AdResponseOuterClass$AdResponse;

    iget-object v5, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$6;->$adPlayer:Lkotlin/jvm/internal/l0;

    iget-object v5, v5, Lkotlin/jvm/internal/l0;->a:Ljava/lang/Object;

    check-cast v5, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;

    iput v2, p0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse$invoke$6;->label:I

    move-object v2, p1

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;->access$cleanup(Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;Ljava/lang/Throwable;Lcom/google/protobuf/ByteString;Lgateway/v1/AdResponseOuterClass$AdResponse;Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_33

    return-object v0

    :cond_33
    :goto_33
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
