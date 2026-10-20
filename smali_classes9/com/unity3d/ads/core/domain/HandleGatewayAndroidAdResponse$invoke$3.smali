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
