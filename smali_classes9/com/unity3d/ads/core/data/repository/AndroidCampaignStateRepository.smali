###### Class com.unity3d.ads.core.data.repository.AndroidCampaignStateRepository (com.unity3d.ads.core.data.repository.AndroidCampaignStateRepository)
.class public final Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;
.super Ljava/lang/Object;
.source "AndroidCampaignStateRepository.kt"

# interfaces
.implements Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0011\u0010\t\u001a\u00020\nH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000bJ\u001b\u0010\u000c\u001a\u0004\u0018\u00010\u00082\u0006\u0010\r\u001a\u00020\u0007H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000eJ#\u0010\u000f\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00110\u0010H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000bJ\u0019\u0010\u0012\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u0007H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000eJ\u0019\u0010\u0014\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u0007H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000eJ\u0019\u0010\u0015\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u0007H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000eJ!\u0010\u0016\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0008H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0018R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;",
        "Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;",
        "getSharedDataTimestamps",
        "Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;",
        "(Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;)V",
        "campaignStates",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "Lcom/google/protobuf/ByteString;",
        "Lcom/unity3d/ads/core/data/model/CampaignState;",
        "getCampaignState",
        "Lgateway/v1/CampaignStateOuterClass$CampaignState;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getState",
        "opportunityId",
        "(Lcom/google/protobuf/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getStates",
        "",
        "Lkotlin/Pair;",
        "removeState",
        "",
        "setLoadTimestamp",
        "setShowTimestamp",
        "updateState",
        "campaignState",
        "(Lcom/google/protobuf/ByteString;Lcom/unity3d/ads/core/data/model/CampaignState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final campaignStates:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/google/protobuf/ByteString;",
            "Lcom/unity3d/ads/core/data/model/CampaignState;",
            ">;"
        }
    .end annotation
.end field

.field private final getSharedDataTimestamps:Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;)V
    .registers 3

    const-string v0, "getSharedDataTimestamps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;->getSharedDataTimestamps:Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;->campaignStates:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public getCampaignState(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lgateway/v1/CampaignStateOuterClass$CampaignState;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$getCampaignState$1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$getCampaignState$1;

    iget v1, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$getCampaignState$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$getCampaignState$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$getCampaignState$1;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$getCampaignState$1;-><init>(Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p1, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$getCampaignState$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$getCampaignState$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3d

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput v3, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$getCampaignState$1;->label:I

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;->getStates(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3d

    return-object v1

    :cond_3d
    :goto_3d
    check-cast p1, Ljava/util/List;

    sget-object v0, Lgateway/v1/j;->a:Lgateway/v1/j$a;

    invoke-static {}, Lgateway/v1/CampaignStateOuterClass$CampaignState;->newBuilder()Lgateway/v1/CampaignStateOuterClass$CampaignState$a;

    move-result-object v1

    const-string v2, "newBuilder()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgateway/v1/j$a;->a(Lgateway/v1/CampaignStateOuterClass$CampaignState$a;)Lgateway/v1/j;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_52
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/ByteString;

    invoke-virtual {v1}, Lkotlin/Pair;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/ads/core/data/model/CampaignState;

    sget-object v4, Lgateway/v1/i;->a:Lgateway/v1/i$a;

    invoke-static {}, Lgateway/v1/CampaignStateOuterClass$Campaign;->newBuilder()Lgateway/v1/CampaignStateOuterClass$Campaign$a;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lgateway/v1/i$a;->a(Lgateway/v1/CampaignStateOuterClass$Campaign$a;)Lgateway/v1/i;

    move-result-object v4

    invoke-virtual {v1}, Lcom/unity3d/ads/core/data/model/CampaignState;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgateway/v1/i;->b(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {v1}, Lcom/unity3d/ads/core/data/model/CampaignState;->getDataVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Lgateway/v1/i;->c(I)V

    invoke-virtual {v1}, Lcom/unity3d/ads/core/data/model/CampaignState;->getPlacementId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgateway/v1/i;->f(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lgateway/v1/i;->d(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {v1}, Lcom/unity3d/ads/core/data/model/CampaignState;->getLoadTimestamp()Lgateway/v1/TimestampsOuterClass$Timestamps;

    move-result-object v3

    invoke-virtual {v4, v3}, Lgateway/v1/i;->e(Lgateway/v1/TimestampsOuterClass$Timestamps;)V

    invoke-virtual {v1}, Lcom/unity3d/ads/core/data/model/CampaignState;->getShowTimestamp()Lgateway/v1/TimestampsOuterClass$Timestamps;

    move-result-object v3

    invoke-virtual {v3}, Lgateway/v1/TimestampsOuterClass$Timestamps;->hasTimestamp()Z

    move-result v3

    if-eqz v3, :cond_a7

    invoke-virtual {v1}, Lcom/unity3d/ads/core/data/model/CampaignState;->getShowTimestamp()Lgateway/v1/TimestampsOuterClass$Timestamps;

    move-result-object v3

    invoke-virtual {v4, v3}, Lgateway/v1/i;->g(Lgateway/v1/TimestampsOuterClass$Timestamps;)V

    :cond_a7
    invoke-virtual {v4}, Lgateway/v1/i;->a()Lgateway/v1/CampaignStateOuterClass$Campaign;

    move-result-object v3

    invoke-virtual {v1}, Lcom/unity3d/ads/core/data/model/CampaignState;->getShowTimestamp()Lgateway/v1/TimestampsOuterClass$Timestamps;

    move-result-object v1

    invoke-virtual {v1}, Lgateway/v1/TimestampsOuterClass$Timestamps;->hasTimestamp()Z

    move-result v1

    if-eqz v1, :cond_bd

    invoke-virtual {v0}, Lgateway/v1/j;->e()Lcom/google/protobuf/kotlin/a;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lgateway/v1/j;->c(Lcom/google/protobuf/kotlin/a;Lgateway/v1/CampaignStateOuterClass$Campaign;)V

    goto :goto_52

    :cond_bd
    invoke-virtual {v0}, Lgateway/v1/j;->d()Lcom/google/protobuf/kotlin/a;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lgateway/v1/j;->b(Lcom/google/protobuf/kotlin/a;Lgateway/v1/CampaignStateOuterClass$Campaign;)V

    goto :goto_52

    :cond_c5
    invoke-virtual {v0}, Lgateway/v1/j;->a()Lgateway/v1/CampaignStateOuterClass$CampaignState;

    move-result-object p1

    return-object p1
.end method

.method public getState(Lcom/google/protobuf/ByteString;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/unity3d/ads/core/data/model/CampaignState;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p2, p0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;->campaignStates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getStates(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lkotlin/Pair<",
            "+",
            "Lcom/google/protobuf/ByteString;",
            "Lcom/unity3d/ads/core/data/model/CampaignState;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p1, p0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;->campaignStates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Lkotlin/collections/d0;->toList(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public removeState(Lcom/google/protobuf/ByteString;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p2, p0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;->campaignStates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public setLoadTimestamp(Lcom/google/protobuf/ByteString;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;

    iget v1, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;

    invoke-direct {v0, p0, p2}, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;-><init>(Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_55

    if-eq v2, v5, :cond_49

    if-eq v2, v4, :cond_38

    if-ne v2, v3, :cond_30

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_9d

    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_38
    iget-object p1, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/unity3d/ads/core/data/model/CampaignState;

    iget-object v2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/google/protobuf/ByteString;

    iget-object v4, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, p1

    goto :goto_7f

    :cond_49
    iget-object p1, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/google/protobuf/ByteString;

    iget-object v2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_66

    :cond_55
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput-object p0, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;->label:I

    invoke-virtual {p0, p1, v0}, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;->getState(Lcom/google/protobuf/ByteString;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_65

    return-object v1

    :cond_65
    move-object v2, p0

    :goto_66
    check-cast p2, Lcom/unity3d/ads/core/data/model/CampaignState;

    if-eqz p2, :cond_a0

    iget-object v5, v2, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;->getSharedDataTimestamps:Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;

    iput-object v2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;->label:I

    invoke-interface {v5, v0}, Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;->invoke(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_7b

    return-object v1

    :cond_7b
    move-object v5, p2

    move-object p2, v4

    move-object v4, v2

    move-object v2, p1

    :goto_7f
    move-object v9, p2

    check-cast v9, Lgateway/v1/TimestampsOuterClass$Timestamps;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x17

    const/4 v12, 0x0

    invoke-static/range {v5 .. v12}, Lcom/unity3d/ads/core/data/model/CampaignState;->copy$default(Lcom/unity3d/ads/core/data/model/CampaignState;Lcom/google/protobuf/ByteString;ILjava/lang/String;Lgateway/v1/TimestampsOuterClass$Timestamps;Lgateway/v1/TimestampsOuterClass$Timestamps;ILjava/lang/Object;)Lcom/unity3d/ads/core/data/model/CampaignState;

    move-result-object p1

    const/4 p2, 0x0

    iput-object p2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setLoadTimestamp$1;->label:I

    invoke-virtual {v4, v2, p1, v0}, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;->updateState(Lcom/google/protobuf/ByteString;Lcom/unity3d/ads/core/data/model/CampaignState;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9d

    return-object v1

    :cond_9d
    :goto_9d
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_a0
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public setShowTimestamp(Lcom/google/protobuf/ByteString;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;

    iget v1, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;

    invoke-direct {v0, p0, p2}, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;-><init>(Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_55

    if-eq v2, v5, :cond_49

    if-eq v2, v4, :cond_38

    if-ne v2, v3, :cond_30

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_9d

    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_38
    iget-object p1, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/unity3d/ads/core/data/model/CampaignState;

    iget-object v2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/google/protobuf/ByteString;

    iget-object v4, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, p1

    goto :goto_7f

    :cond_49
    iget-object p1, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/google/protobuf/ByteString;

    iget-object v2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_66

    :cond_55
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput-object p0, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;->label:I

    invoke-virtual {p0, p1, v0}, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;->getState(Lcom/google/protobuf/ByteString;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_65

    return-object v1

    :cond_65
    move-object v2, p0

    :goto_66
    check-cast p2, Lcom/unity3d/ads/core/data/model/CampaignState;

    if-eqz p2, :cond_a0

    iget-object v5, v2, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;->getSharedDataTimestamps:Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;

    iput-object v2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;->label:I

    invoke-interface {v5, v0}, Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;->invoke(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_7b

    return-object v1

    :cond_7b
    move-object v5, p2

    move-object p2, v4

    move-object v4, v2

    move-object v2, p1

    :goto_7f
    move-object v10, p2

    check-cast v10, Lgateway/v1/TimestampsOuterClass$Timestamps;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v11, 0xf

    const/4 v12, 0x0

    invoke-static/range {v5 .. v12}, Lcom/unity3d/ads/core/data/model/CampaignState;->copy$default(Lcom/unity3d/ads/core/data/model/CampaignState;Lcom/google/protobuf/ByteString;ILjava/lang/String;Lgateway/v1/TimestampsOuterClass$Timestamps;Lgateway/v1/TimestampsOuterClass$Timestamps;ILjava/lang/Object;)Lcom/unity3d/ads/core/data/model/CampaignState;

    move-result-object p1

    const/4 p2, 0x0

    iput-object p2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository$setShowTimestamp$1;->label:I

    invoke-virtual {v4, v2, p1, v0}, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;->updateState(Lcom/google/protobuf/ByteString;Lcom/unity3d/ads/core/data/model/CampaignState;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9d

    return-object v1

    :cond_9d
    :goto_9d
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_a0
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public updateState(Lcom/google/protobuf/ByteString;Lcom/unity3d/ads/core/data/model/CampaignState;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            "Lcom/unity3d/ads/core/data/model/CampaignState;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p3, p0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;->campaignStates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
