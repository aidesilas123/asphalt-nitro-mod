###### Class com.unity3d.ads.gatewayclient.CommonGatewayClient (com.unity3d.ads.gatewayclient.CommonGatewayClient)
.class public final Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;
.super Ljava/lang/Object;
.source "CommonGatewayClient.kt"

# interfaces
.implements Lcom/unity3d/ads/gatewayclient/GatewayClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u0000 ,2\u00020\u0001:\u0001,B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0018\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0018\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J1\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0019\u001a\u00020\u001c2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001fJ1\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010$\u001a\u00020\nH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010%J1\u0010&\u001a\u00020!2\u0006\u0010\'\u001a\u00020\u00182\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010$\u001a\u00020\nH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010(J\u0010\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u000eH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006-"
    }
    d2 = {
        "Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;",
        "Lcom/unity3d/ads/gatewayclient/GatewayClient;",
        "httpClient",
        "Lcom/unity3d/services/core/network/core/HttpClient;",
        "handleGatewayUniversalResponse",
        "Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;",
        "sendDiagnosticEvent",
        "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;",
        "(Lcom/unity3d/services/core/network/core/HttpClient;Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)V",
        "calculateDelayTime",
        "",
        "requestPolicy",
        "Lcom/unity3d/ads/gatewayclient/RequestPolicy;",
        "retryCount",
        "",
        "calculateExponentialBackoff",
        "retryWaitBase",
        "calculateJitter",
        "retryWaitTime",
        "retryJitterPct",
        "",
        "getUniversalResponse",
        "Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;",
        "response",
        "Lcom/unity3d/services/core/network/model/HttpResponse;",
        "request",
        "url",
        "",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;",
        "operationType",
        "Lcom/unity3d/ads/core/data/model/OperationType;",
        "(Ljava/lang/String;Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;Lcom/unity3d/ads/gatewayclient/RequestPolicy;Lcom/unity3d/ads/core/data/model/OperationType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "sendNetworkErrorDiagnosticEvent",
        "",
        "e",
        "Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException;",
        "duration",
        "(Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException;ILcom/unity3d/ads/core/data/model/OperationType;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "sendNetworkSuccessDiagnosticEvent",
        "httpResponse",
        "(Lcom/unity3d/services/core/network/model/HttpResponse;ILcom/unity3d/ads/core/data/model/OperationType;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "shouldRetry",
        "",
        "responseCode",
        "Companion",
        "unity-ads_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CODE_400:I = 0x190

.field public static final CODE_599:I = 0x257

.field public static final Companion:Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$Companion;

.field public static final RETRY_ATTEMPT_HEADER:Ljava/lang/String; = "X-RETRY-ATTEMPT"


# instance fields
.field private final handleGatewayUniversalResponse:Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;

.field private final httpClient:Lcom/unity3d/services/core/network/core/HttpClient;

.field private final sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$Companion;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->Companion:Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/unity3d/services/core/network/core/HttpClient;Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)V
    .registers 5

    const-string v0, "httpClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handleGatewayUniversalResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendDiagnosticEvent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->httpClient:Lcom/unity3d/services/core/network/core/HttpClient;

    iput-object p2, p0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->handleGatewayUniversalResponse:Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;

    iput-object p3, p0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    return-void
.end method

.method public static final synthetic access$sendNetworkErrorDiagnosticEvent(Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException;ILcom/unity3d/ads/core/data/model/OperationType;JLkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->sendNetworkErrorDiagnosticEvent(Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException;ILcom/unity3d/ads/core/data/model/OperationType;JLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$sendNetworkSuccessDiagnosticEvent(Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;Lcom/unity3d/services/core/network/model/HttpResponse;ILcom/unity3d/ads/core/data/model/OperationType;JLkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->sendNetworkSuccessDiagnosticEvent(Lcom/unity3d/services/core/network/model/HttpResponse;ILcom/unity3d/ads/core/data/model/OperationType;JLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final calculateDelayTime(Lcom/unity3d/ads/gatewayclient/RequestPolicy;I)J
    .registers 5

    invoke-virtual {p1}, Lcom/unity3d/ads/gatewayclient/RequestPolicy;->getRetryWaitBase()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->calculateExponentialBackoff(II)J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/unity3d/ads/gatewayclient/RequestPolicy;->getRetryJitterPct()F

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->calculateJitter(JF)J

    move-result-wide p1

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private final calculateExponentialBackoff(II)J
    .registers 7

    int-to-long v0, p1

    int-to-double p1, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    double-to-long p1, p1

    mul-long v0, v0, p1

    return-wide v0
.end method

.method private final calculateJitter(JF)J
    .registers 8

    long-to-float p1, p1

    mul-float p1, p1, p3

    float-to-long p1, p1

    sget-object p3, Lkotlin/random/Random;->a:Lkotlin/random/Random$a;

    neg-long v0, p1

    const-wide/16 v2, 0x1

    add-long/2addr p1, v2

    invoke-virtual {p3, v0, v1, p1, p2}, Lkotlin/random/Random$a;->n(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private final getUniversalResponse(Lcom/unity3d/services/core/network/model/HttpResponse;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;
    .registers 5

    :try_start_0
    invoke-virtual {p1}, Lcom/unity3d/services/core/network/model/HttpResponse;->getBody()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, [B

    if-eqz v1, :cond_14

    check-cast v0, [B

    invoke-static {v0}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->parseFrom([B)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    move-result-object p1

    const-string v0, "parseFrom(responseBody)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_14
    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_2e

    invoke-virtual {p1}, Lcom/unity3d/services/core/network/model/HttpResponse;->getBody()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    move-result-object p1

    const-string v0, "parseFrom(\n             \u2026ring())\n                )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_2e
    new-instance p1, Lcom/google/protobuf/d0;

    const-string v0, "Could not parse response from gateway service"

    invoke-direct {p1, v0}, Lcom/google/protobuf/d0;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_36
    .catch Lcom/google/protobuf/d0; {:try_start_0 .. :try_end_36} :catch_36

    :catch_36
    move-exception p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Failed to parse response from gateway service with exception: %s"

    invoke-static {p1, v0}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, Lgateway/v1/v0;->a:Lgateway/v1/v0$a;

    invoke-static {}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->newBuilder()Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$a;

    move-result-object v0

    const-string v1, "newBuilder()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lgateway/v1/v0$a;->a(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$a;)Lgateway/v1/v0;

    move-result-object p1

    sget-object v0, Lgateway/v1/u;->a:Lgateway/v1/u$a;

    invoke-static {}, Lgateway/v1/ErrorOuterClass$Error;->newBuilder()Lgateway/v1/ErrorOuterClass$Error$a;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lgateway/v1/u$a;->a(Lgateway/v1/ErrorOuterClass$Error$a;)Lgateway/v1/u;

    move-result-object v0

    const-string v1, "ERROR: Could not parse response from gateway service"

    invoke-virtual {v0, v1}, Lgateway/v1/u;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgateway/v1/u;->a()Lgateway/v1/ErrorOuterClass$Error;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgateway/v1/v0;->b(Lgateway/v1/ErrorOuterClass$Error;)V

    invoke-virtual {p1}, Lgateway/v1/v0;->a()Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    move-result-object p1

    return-object p1
.end method

.method private final sendNetworkErrorDiagnosticEvent(Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException;ILcom/unity3d/ads/core/data/model/OperationType;JLkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException;",
            "I",
            "Lcom/unity3d/ads/core/data/model/OperationType;",
            "J",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lcom/unity3d/ads/core/data/model/OperationType;->UNIVERSAL_EVENT:Lcom/unity3d/ads/core/data/model/OperationType;

    if-ne p3, v0, :cond_7

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_7
    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/Pair;

    const/4 v1, 0x0

    invoke-virtual {p3}, Lcom/unity3d/ads/core/data/model/OperationType;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "operation"

    invoke-static {v2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    aput-object p3, v0, v1

    const/4 p3, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "retries"

    invoke-static {v1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, v0, p3

    const/4 p2, 0x2

    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException;->getProtocol()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "protocol"

    invoke-static {v1, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    aput-object p3, v0, p2

    const/4 p2, 0x3

    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException;->getClient()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "network_client"

    invoke-static {p3, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v0, p2

    invoke-static {v0}, Lkotlin/collections/d0;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    iget-object v1, p0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    invoke-static {p4, p5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    const-string v2, "native_network_failure_time"

    move-object v6, p6

    invoke-static/range {v1 .. v8}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Ljava/util/Map;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_62

    return-object p1

    :cond_62
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method private final sendNetworkSuccessDiagnosticEvent(Lcom/unity3d/services/core/network/model/HttpResponse;ILcom/unity3d/ads/core/data/model/OperationType;JLkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/services/core/network/model/HttpResponse;",
            "I",
            "Lcom/unity3d/ads/core/data/model/OperationType;",
            "J",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lcom/unity3d/ads/core/data/model/OperationType;->UNIVERSAL_EVENT:Lcom/unity3d/ads/core/data/model/OperationType;

    if-ne p3, v0, :cond_7

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_7
    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/Pair;

    const/4 v1, 0x0

    invoke-virtual {p3}, Lcom/unity3d/ads/core/data/model/OperationType;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "operation"

    invoke-static {v2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    aput-object p3, v0, v1

    const/4 p3, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "retries"

    invoke-static {v1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, v0, p3

    const/4 p2, 0x2

    invoke-virtual {p1}, Lcom/unity3d/services/core/network/model/HttpResponse;->getProtocol()Ljava/lang/String;

    move-result-object p3

    const-string v1, "protocol"

    invoke-static {v1, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    aput-object p3, v0, p2

    const/4 p2, 0x3

    invoke-virtual {p1}, Lcom/unity3d/services/core/network/model/HttpResponse;->getClient()Ljava/lang/String;

    move-result-object p1

    const-string p3, "network_client"

    invoke-static {p3, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v0, p2

    invoke-static {v0}, Lkotlin/collections/d0;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    iget-object v1, p0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    invoke-static {p4, p5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    const-string v2, "native_network_success_time"

    move-object v6, p6

    invoke-static/range {v1 .. v8}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Ljava/util/Map;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_5a

    return-object p1

    :cond_5a
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method private final shouldRetry(I)Z
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x190

    if-gt v1, p1, :cond_a

    const/16 v1, 0x258

    if-ge p1, v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method


# virtual methods
.method public request(Ljava/lang/String;Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;Lcom/unity3d/ads/gatewayclient/RequestPolicy;Lcom/unity3d/ads/core/data/model/OperationType;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 46
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;",
            "Lcom/unity3d/ads/gatewayclient/RequestPolicy;",
            "Lcom/unity3d/ads/core/data/model/OperationType;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p5

    instance-of v1, v0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;

    if-eqz v1, :cond_17

    move-object v1, v0

    check-cast v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;

    iget v2, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_17

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->label:I

    move-object/from16 v2, p0

    goto :goto_1e

    :cond_17
    new-instance v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;-><init>(Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;Lkotlin/coroutines/d;)V

    :goto_1e
    iget-object v0, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    iget v4, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->label:I

    const-string v5, "ms"

    const-string v6, " retries and duration: "

    const-string v7, "Gateway request failed after "

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v4, :cond_124

    if-eq v4, v12, :cond_e5

    if-eq v4, v11, :cond_aa

    if-eq v4, v10, :cond_7e

    if-eq v4, v9, :cond_75

    if-ne v4, v8, :cond_6d

    iget-wide v13, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->J$0:J

    iget-object v4, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$5:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/j0;

    iget-object v15, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$4:Ljava/lang/Object;

    check-cast v15, Lcom/unity3d/ads/core/data/model/OperationType;

    iget-object v8, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$3:Ljava/lang/Object;

    check-cast v8, Lcom/unity3d/ads/gatewayclient/RequestPolicy;

    iget-object v9, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$2:Ljava/lang/Object;

    check-cast v9, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    iget-object v10, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$1:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, v4

    move-object v2, v9

    move-object v4, v15

    const/4 v9, 0x5

    move-object/from16 v37, v5

    move-object v5, v1

    move-object v1, v10

    move-object v10, v3

    move-object v3, v8

    move-object/from16 v8, v37

    move-wide/from16 v38, v13

    move-object v13, v11

    move-wide/from16 v11, v38

    goto/16 :goto_30a

    :cond_6d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_75
    iget-object v1, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2a5

    :cond_7e
    iget-wide v8, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->J$0:J

    iget-object v4, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$6:Ljava/lang/Object;

    check-cast v4, Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException;

    iget-object v10, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$5:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/j0;

    iget-object v11, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$4:Ljava/lang/Object;

    check-cast v11, Lcom/unity3d/ads/core/data/model/OperationType;

    iget-object v13, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$3:Ljava/lang/Object;

    check-cast v13, Lcom/unity3d/ads/gatewayclient/RequestPolicy;

    iget-object v14, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$2:Ljava/lang/Object;

    check-cast v14, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    iget-object v15, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$1:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    iget-object v12, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v19, v5

    move-object v2, v12

    move-object v5, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v11

    move-wide v11, v8

    const/4 v8, 0x3

    goto/16 :goto_26f

    :cond_aa
    iget-wide v8, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->J$1:J

    iget-wide v10, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->J$0:J

    iget-object v4, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$6:Ljava/lang/Object;

    check-cast v4, Lcom/unity3d/services/core/network/model/HttpResponse;

    iget-object v12, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$5:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/internal/j0;

    iget-object v13, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$4:Ljava/lang/Object;

    check-cast v13, Lcom/unity3d/ads/core/data/model/OperationType;

    iget-object v14, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$3:Ljava/lang/Object;

    check-cast v14, Lcom/unity3d/ads/gatewayclient/RequestPolicy;

    iget-object v15, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$2:Ljava/lang/Object;

    check-cast v15, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    iget-object v2, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 p1, v2

    iget-object v2, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;

    :try_start_cc
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_cf
    .catch Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException; {:try_start_cc .. :try_end_cf} :catch_d8

    move-object/from16 v22, p1

    move-object v0, v4

    move-object/from16 v19, v5

    move-object v4, v3

    const/4 v3, 0x2

    goto/16 :goto_1ff

    :catch_d8
    move-exception v0

    move-object v4, v3

    move-object/from16 v19, v5

    move-object/from16 v5, p1

    move-wide/from16 v37, v10

    move-object v10, v12

    move-wide/from16 v11, v37

    goto/16 :goto_243

    :cond_e5
    iget-wide v8, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->J$1:J

    iget-wide v10, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->J$0:J

    iget-object v2, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$5:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/j0;

    iget-object v4, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lcom/unity3d/ads/core/data/model/OperationType;

    iget-object v12, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$3:Ljava/lang/Object;

    check-cast v12, Lcom/unity3d/ads/gatewayclient/RequestPolicy;

    iget-object v13, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$2:Ljava/lang/Object;

    check-cast v13, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    iget-object v14, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$1:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    iget-object v15, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$0:Ljava/lang/Object;

    check-cast v15, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;

    :try_start_101
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_104
    .catch Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException; {:try_start_101 .. :try_end_104} :catch_117

    move-object/from16 v19, v5

    move-object v5, v2

    move-object v2, v15

    move-object/from16 v37, v4

    move-object v4, v3

    move-object v3, v14

    move-wide v14, v8

    move-object v9, v13

    move-wide/from16 v38, v10

    move-object/from16 v11, v37

    move-object v10, v12

    move-wide/from16 v12, v38

    goto/16 :goto_1bd

    :catch_117
    move-exception v0

    move-object/from16 v19, v5

    move-object v5, v14

    move-object v14, v12

    move-wide v11, v10

    move-object v10, v2

    move-object v2, v15

    move-object v15, v13

    move-object v13, v4

    move-object v4, v3

    goto/16 :goto_243

    :cond_124
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance v0, Lkotlin/jvm/internal/j0;

    invoke-direct {v0}, Lkotlin/jvm/internal/j0;-><init>()V

    const-wide/16 v8, 0x0

    move-object/from16 v13, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move-object v10, v3

    move-wide v11, v8

    move-object/from16 v3, p3

    move-object v8, v0

    move-object v9, v1

    move-object/from16 v1, p1

    :goto_13c
    invoke-static {}, Lkotlin/collections/d0;->createMapBuilder()Ljava/util/Map;

    move-result-object v0

    const-string v14, "application/x-protobuf"

    invoke-static {v14}, Lkotlin/collections/p;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const-string v15, "Content-Type"

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v14, v8, Lkotlin/jvm/internal/j0;->a:I

    if-lez v14, :cond_15c

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lkotlin/collections/p;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const-string v15, "X-RETRY-ATTEMPT"

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15c
    invoke-static {v0}, Lkotlin/collections/d0;->build(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v24

    new-instance v0, Lcom/unity3d/services/core/network/model/HttpRequest;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    sget-object v22, Lcom/unity3d/services/core/network/model/RequestType;->POST:Lcom/unity3d/services/core/network/model/RequestType;

    invoke-virtual {v2}, Lcom/google/protobuf/a;->toByteArray()[B

    move-result-object v23

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual {v3}, Lcom/unity3d/ads/gatewayclient/RequestPolicy;->getConnectTimeout()I

    move-result v29

    invoke-virtual {v3}, Lcom/unity3d/ads/gatewayclient/RequestPolicy;->getReadTimeout()I

    move-result v30

    invoke-virtual {v3}, Lcom/unity3d/ads/gatewayclient/RequestPolicy;->getWriteTimeout()I

    move-result v31

    const/16 v32, 0x0

    const/16 v33, 0x1

    const/16 v34, 0x0

    const/16 v35, 0x51e2

    const/16 v36, 0x0

    move-object/from16 v20, v1

    invoke-direct/range {v19 .. v36}, Lcom/unity3d/services/core/network/model/HttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/core/network/model/RequestType;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/services/core/network/model/BodyType;Ljava/lang/String;Ljava/lang/Integer;IIIIZLcom/unity3d/ads/core/data/model/OperationType;ILkotlin/jvm/internal/n;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    move-object/from16 v19, v5

    :try_start_195
    iget-object v5, v13, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->httpClient:Lcom/unity3d/services/core/network/core/HttpClient;

    iput-object v13, v9, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$0:Ljava/lang/Object;

    iput-object v1, v9, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$1:Ljava/lang/Object;

    iput-object v2, v9, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$2:Ljava/lang/Object;

    iput-object v3, v9, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$3:Ljava/lang/Object;

    iput-object v4, v9, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$4:Ljava/lang/Object;

    iput-object v8, v9, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$5:Ljava/lang/Object;

    iput-wide v11, v9, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->J$0:J

    iput-wide v14, v9, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->J$1:J
    :try_end_1a7
    .catch Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException; {:try_start_195 .. :try_end_1a7} :catch_232

    move-object/from16 p1, v1

    const/4 v1, 0x1

    :try_start_1aa
    iput v1, v9, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->label:I

    invoke-interface {v5, v0, v9}, Lcom/unity3d/services/core/network/core/HttpClient;->execute(Lcom/unity3d/services/core/network/model/HttpRequest;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1b0
    .catch Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException; {:try_start_1aa .. :try_end_1b0} :catch_230

    if-ne v0, v10, :cond_1b3

    return-object v10

    :cond_1b3
    move-object v5, v8

    move-object v1, v9

    move-object v9, v2

    move-object v2, v13

    move-wide v12, v11

    move-object v11, v4

    move-object v4, v10

    move-object v10, v3

    move-object/from16 v3, p1

    :goto_1bd
    :try_start_1bd
    check-cast v0, Lcom/unity3d/services/core/network/model/HttpResponse;

    iget v8, v5, Lkotlin/jvm/internal/j0;->a:I

    invoke-static {v14, v15}, Lcom/unity3d/ads/core/extensions/TimestampExtensionsKt;->duration(J)J

    move-result-wide v20

    iput-object v2, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$0:Ljava/lang/Object;

    iput-object v3, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$1:Ljava/lang/Object;

    iput-object v9, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$2:Ljava/lang/Object;

    iput-object v10, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$3:Ljava/lang/Object;

    iput-object v11, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$4:Ljava/lang/Object;

    iput-object v5, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$5:Ljava/lang/Object;

    iput-object v0, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$6:Ljava/lang/Object;

    iput-wide v12, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->J$0:J

    iput-wide v14, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->J$1:J
    :try_end_1d7
    .catch Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException; {:try_start_1bd .. :try_end_1d7} :catch_214

    move-object/from16 v22, v3

    const/4 v3, 0x2

    :try_start_1da
    iput v3, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->label:I
    :try_end_1dc
    .catch Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException; {:try_start_1da .. :try_end_1dc} :catch_208

    move/from16 v17, v8

    move-object v8, v2

    move-object/from16 v23, v9

    move-object v9, v0

    move-object/from16 v24, v10

    move/from16 v10, v17

    move-object/from16 v17, v11

    move-wide/from16 v25, v12

    move-wide/from16 v12, v20

    move-wide/from16 v20, v14

    move-object v14, v1

    :try_start_1ef
    invoke-direct/range {v8 .. v14}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->sendNetworkSuccessDiagnosticEvent(Lcom/unity3d/services/core/network/model/HttpResponse;ILcom/unity3d/ads/core/data/model/OperationType;JLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v8
    :try_end_1f3
    .catch Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException; {:try_start_1ef .. :try_end_1f3} :catch_206

    if-ne v8, v4, :cond_1f6

    return-object v4

    :cond_1f6
    move-object v12, v5

    move-object/from16 v13, v17

    move-object/from16 v15, v23

    move-object/from16 v14, v24

    move-wide/from16 v10, v25

    :goto_1ff
    move-object v3, v4

    move-object v4, v12

    move-object/from16 v5, v22

    const/4 v8, 0x3

    goto/16 :goto_275

    :catch_206
    move-exception v0

    goto :goto_222

    :catch_208
    move-exception v0

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v17, v11

    move-wide/from16 v25, v12

    move-wide/from16 v20, v14

    goto :goto_222

    :catch_214
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v17, v11

    move-wide/from16 v25, v12

    move-wide/from16 v20, v14

    const/4 v3, 0x2

    :goto_222
    move-object v10, v5

    move-object/from16 v13, v17

    move-wide/from16 v8, v20

    move-object/from16 v5, v22

    move-object/from16 v15, v23

    move-object/from16 v14, v24

    move-wide/from16 v11, v25

    goto :goto_243

    :catch_230
    move-exception v0

    goto :goto_235

    :catch_232
    move-exception v0

    move-object/from16 p1, v1

    :goto_235
    move-object v1, v3

    move-object/from16 v5, p1

    move-wide/from16 v37, v14

    move-object v14, v1

    move-object v15, v2

    move-object v1, v9

    move-object v2, v13

    move-object v13, v4

    move-object v4, v10

    move-object v10, v8

    move-wide/from16 v8, v37

    :goto_243
    iget v3, v10, Lkotlin/jvm/internal/j0;->a:I

    invoke-static {v8, v9}, Lcom/unity3d/ads/core/extensions/TimestampExtensionsKt;->duration(J)J

    move-result-wide v24

    iput-object v2, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$0:Ljava/lang/Object;

    iput-object v5, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$1:Ljava/lang/Object;

    iput-object v15, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$2:Ljava/lang/Object;

    iput-object v14, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$3:Ljava/lang/Object;

    iput-object v13, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$4:Ljava/lang/Object;

    iput-object v10, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$5:Ljava/lang/Object;

    iput-object v0, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$6:Ljava/lang/Object;

    iput-wide v11, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->J$0:J

    const/4 v8, 0x3

    iput v8, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->label:I

    move-object/from16 v20, v2

    move-object/from16 v21, v0

    move/from16 v22, v3

    move-object/from16 v23, v13

    move-object/from16 v26, v1

    invoke-direct/range {v20 .. v26}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->sendNetworkErrorDiagnosticEvent(Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException;ILcom/unity3d/ads/core/data/model/OperationType;JLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_26d

    return-object v4

    :cond_26d
    move-object v3, v4

    move-object v4, v0

    :goto_26f
    invoke-static {v4}, Lcom/unity3d/services/core/network/model/HttpResponseKt;->toHttpResponse(Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException;)Lcom/unity3d/services/core/network/model/HttpResponse;

    move-result-object v0

    move-object v4, v10

    move-wide v10, v11

    :goto_275
    invoke-virtual {v0}, Lcom/unity3d/services/core/network/model/HttpResponse;->getStatusCode()I

    move-result v9

    invoke-direct {v2, v9}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->shouldRetry(I)Z

    move-result v9

    const/4 v12, 0x0

    if-nez v9, :cond_2d2

    invoke-static {v0}, Lcom/unity3d/services/core/network/model/HttpResponseKt;->isSuccessful(Lcom/unity3d/services/core/network/model/HttpResponse;)Z

    move-result v5

    if-eqz v5, :cond_2a6

    invoke-direct {v2, v0}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->getUniversalResponse(Lcom/unity3d/services/core/network/model/HttpResponse;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    move-result-object v0

    iget-object v2, v2, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->handleGatewayUniversalResponse:Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;

    iput-object v0, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$0:Ljava/lang/Object;

    iput-object v12, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$1:Ljava/lang/Object;

    iput-object v12, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$2:Ljava/lang/Object;

    iput-object v12, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$3:Ljava/lang/Object;

    iput-object v12, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$4:Ljava/lang/Object;

    iput-object v12, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$5:Ljava/lang/Object;

    iput-object v12, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$6:Ljava/lang/Object;

    const/4 v9, 0x4

    iput v9, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->label:I

    invoke-interface {v2, v0, v1}, Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;->invoke(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_2a4

    return-object v3

    :cond_2a4
    move-object v1, v0

    :goto_2a5
    return-object v1

    :cond_2a6
    new-instance v0, Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v4, Lkotlin/jvm/internal/j0;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v2, v19

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x7e

    const/4 v11, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException;-><init>(Ljava/lang/String;Lcom/unity3d/ads/core/data/model/OperationType;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/n;)V

    throw v0

    :cond_2d2
    move-object/from16 v8, v19

    const/4 v9, 0x4

    iget v0, v4, Lkotlin/jvm/internal/j0;->a:I

    move-object/from16 v16, v13

    invoke-direct {v2, v14, v0}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->calculateDelayTime(Lcom/unity3d/ads/gatewayclient/RequestPolicy;I)J

    move-result-wide v12

    add-long/2addr v10, v12

    iput-object v2, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$0:Ljava/lang/Object;

    iput-object v5, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$1:Ljava/lang/Object;

    iput-object v15, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$2:Ljava/lang/Object;

    iput-object v14, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$3:Ljava/lang/Object;

    move-object/from16 v0, v16

    iput-object v0, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$4:Ljava/lang/Object;

    iput-object v4, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$5:Ljava/lang/Object;

    const/4 v9, 0x0

    iput-object v9, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$6:Ljava/lang/Object;

    iput-wide v10, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->J$0:J

    const/4 v9, 0x5

    iput v9, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->label:I

    invoke-static {v12, v13, v1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v3, :cond_2fb

    return-object v3

    :cond_2fb
    move-object v13, v2

    move-wide v11, v10

    move-object v2, v15

    move-object v10, v3

    move-object v3, v14

    move-object/from16 v37, v4

    move-object v4, v0

    move-object/from16 v0, v37

    move-object/from16 v38, v5

    move-object v5, v1

    move-object/from16 v1, v38

    :goto_30a
    iget v14, v0, Lkotlin/jvm/internal/j0;->a:I

    const/4 v15, 0x1

    add-int/2addr v14, v15

    iput v14, v0, Lkotlin/jvm/internal/j0;->a:I

    invoke-virtual {v3}, Lcom/unity3d/ads/gatewayclient/RequestPolicy;->getMaxDuration()I

    move-result v14

    move-object/from16 p1, v10

    int-to-long v9, v14

    cmp-long v14, v11, v9

    if-gtz v14, :cond_322

    move-object/from16 v10, p1

    move-object v9, v5

    move-object v5, v8

    move-object v8, v0

    goto/16 :goto_13c

    :cond_322
    new-instance v1, Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lkotlin/jvm/internal/j0;->a:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x7e

    const/16 v27, 0x0

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v27}, Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException;-><init>(Ljava/lang/String;Lcom/unity3d/ads/core/data/model/OperationType;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/n;)V

    throw v1
.end method
