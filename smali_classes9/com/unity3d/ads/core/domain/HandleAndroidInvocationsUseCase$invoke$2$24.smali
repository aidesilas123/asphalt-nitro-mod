###### Class com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase.AnonymousClass2.AnonymousClass24 (com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$24)
.class final Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$24;
.super Lkotlin/coroutines/jvm/internal/j;
.source "HandleAndroidInvocationsUseCase.kt"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0000\u0010\u0000\u001a\u00020\u0001H\u008a@"
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
    c = "com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$24"
    f = "HandleAndroidInvocationsUseCase.kt"
    i = {}
    l = {
        0xbc
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $adObject:Lcom/unity3d/ads/core/data/model/AdObject;

.field final synthetic $it:Lcom/unity3d/ads/adplayer/Invocation;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/adplayer/Invocation;Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/adplayer/Invocation;",
            "Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$24;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$24;->$it:Lcom/unity3d/ads/adplayer/Invocation;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$24;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    iput-object p3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$24;->$adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 6
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

    new-instance v0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$24;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$24;->$it:Lcom/unity3d/ads/adplayer/Invocation;

    iget-object v2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$24;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$24;->$adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$24;-><init>(Lcom/unity3d/ads/adplayer/Invocation;Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/d;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$24;->invoke(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$24;->create(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$24;

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$24;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$24;->label:I

    const-string v2, "adDataRefreshToken"

    const/4 v3, 0x1

    if-eqz v1, :cond_19

    if-ne v1, v3, :cond_11

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_64

    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_19
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$24;->$it:Lcom/unity3d/ads/adplayer/Invocation;

    invoke-virtual {p1}, Lcom/unity3d/ads/adplayer/Invocation;->getParameters()[Ljava/lang/Object;

    move-result-object p1

    array-length p1, p1

    const/4 v1, 0x0

    if-nez p1, :cond_28

    const/4 p1, 0x1

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    :goto_29
    if-eqz p1, :cond_2e

    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    goto :goto_4a

    :cond_2e
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$24;->$it:Lcom/unity3d/ads/adplayer/Invocation;

    invoke-virtual {p1}, Lcom/unity3d/ads/adplayer/Invocation;->getParameters()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v1

    const-string v1, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "refreshToken"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/unity3d/ads/core/extensions/ProtobufExtensionsKt;->fromBase64(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    :goto_4a
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$24;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    invoke-static {v1}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;->access$getRefresh$p(Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;)Lcom/unity3d/ads/core/domain/Refresh;

    move-result-object v1

    const-string v4, "refreshTokenByteString"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$24;->$adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-virtual {v4}, Lcom/unity3d/ads/core/data/model/AdObject;->getOpportunityId()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$24;->label:I

    invoke-interface {v1, p1, v4, p0}, Lcom/unity3d/ads/core/domain/Refresh;->invoke(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_64

    return-object v0

    :cond_64
    :goto_64
    check-cast p1, Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;

    invoke-virtual {p1}, Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;->hasError()Z

    move-result v0

    if-nez v0, :cond_a9

    invoke-static {}, Lkotlin/collections/d0;->createMapBuilder()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;->getAdData()Lcom/google/protobuf/ByteString;

    move-result-object v1

    const-string v3, "adRefreshResponse.adData"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/unity3d/ads/core/extensions/ProtobufExtensionsKt;->toBase64(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "adData"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;->getAdDataRefreshToken()Lcom/google/protobuf/ByteString;

    move-result-object v1

    const-string v3, "adRefreshResponse.adDataRefreshToken"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/unity3d/ads/core/extensions/ProtobufExtensionsKt;->toBase64(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;->getTrackingToken()Lcom/google/protobuf/ByteString;

    move-result-object p1

    const-string v1, "adRefreshResponse.trackingToken"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/unity3d/ads/core/extensions/ProtobufExtensionsKt;->toBase64(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "trackingToken"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/collections/d0;->build(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_a9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Refresh failed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
