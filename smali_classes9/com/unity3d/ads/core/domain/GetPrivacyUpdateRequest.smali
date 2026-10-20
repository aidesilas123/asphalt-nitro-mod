###### Class com.unity3d.ads.core.domain.GetPrivacyUpdateRequest (com.unity3d.ads.core.domain.GetPrivacyUpdateRequest)
.class public final Lcom/unity3d/ads/core/domain/GetPrivacyUpdateRequest;
.super Ljava/lang/Object;
.source "GetPrivacyUpdateRequest.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001b\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u0086B\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/GetPrivacyUpdateRequest;",
        "",
        "getUniversalRequestForPayLoad",
        "Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;",
        "(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;)V",
        "invoke",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;",
        "privacyUpdateRequest",
        "Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;",
        "(Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final getUniversalRequestForPayLoad:Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;)V
    .registers 3

    const-string v0, "getUniversalRequestForPayLoad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/GetPrivacyUpdateRequest;->getUniversalRequestForPayLoad:Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;

    return-void
.end method

.method public static synthetic invoke$default(Lcom/unity3d/ads/core/domain/GetPrivacyUpdateRequest;Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_d

    invoke-static {}, Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;->getDefaultInstance()Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;

    move-result-object p1

    const-string p3, "getDefaultInstance()"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_d
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/GetPrivacyUpdateRequest;->invoke(Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final invoke(Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lgateway/v1/s0;->a:Lgateway/v1/s0;

    sget-object v0, Lgateway/v1/t0;->a:Lgateway/v1/t0$a;

    invoke-static {}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->newBuilder()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;

    move-result-object v1

    const-string v2, "newBuilder()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgateway/v1/t0$a;->a(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;)Lgateway/v1/t0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgateway/v1/t0;->h(Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;)V

    invoke-virtual {v0}, Lgateway/v1/t0;->a()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    move-result-object p1

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/GetPrivacyUpdateRequest;->getUniversalRequestForPayLoad:Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;

    invoke-interface {v0, p1, p2}, Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;->invoke(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
