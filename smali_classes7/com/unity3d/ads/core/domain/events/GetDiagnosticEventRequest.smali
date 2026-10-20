###### Class com.unity3d.ads.core.domain.events.GetDiagnosticEventRequest (com.unity3d.ads.core.domain.events.GetDiagnosticEventRequest)
.class public final Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest;
.super Ljava/lang/Object;
.source "GetDiagnosticEventRequest.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004JO\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0014\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0008\u0018\u00010\n2\u0014\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u000c\u0018\u00010\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0086B\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest;",
        "",
        "getSharedDataTimestamps",
        "Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;",
        "(Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;)V",
        "invoke",
        "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent;",
        "eventName",
        "",
        "tags",
        "",
        "intTags",
        "",
        "value",
        "",
        "(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Double;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final getSharedDataTimestamps:Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;)V
    .registers 3

    const-string v0, "getSharedDataTimestamps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest;->getSharedDataTimestamps:Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Double;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Double;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;

    if-eqz v0, :cond_13

    move-object v0, p5

    check-cast v0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;

    iget v1, v0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;

    invoke-direct {v0, p0, p5}, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;-><init>(Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p5, v0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_51

    if-ne v2, v3, :cond_49

    iget-object p1, v0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;->L$6:Ljava/lang/Object;

    check-cast p1, Lgateway/v1/n;

    iget-object p2, v0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;->L$5:Ljava/lang/Object;

    check-cast p2, Lgateway/v1/n;

    iget-object p3, v0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;->L$4:Ljava/lang/Object;

    check-cast p3, Lgateway/v1/n;

    iget-object p4, v0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;->L$3:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Double;

    iget-object v1, v0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iget-object v2, v0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    iget-object v0, v0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, p5

    move-object p5, p3

    move-object p3, v1

    move-object v1, v5

    goto :goto_86

    :cond_49
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_51
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p5, Lgateway/v1/n;->a:Lgateway/v1/n$a;

    invoke-static {}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent;->newBuilder()Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$a;

    move-result-object v2

    const-string v4, "newBuilder()"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p5, v2}, Lgateway/v1/n$a;->a(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$a;)Lgateway/v1/n;

    move-result-object p5

    sget-object v2, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->b:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    invoke-virtual {p5, v2}, Lgateway/v1/n;->g(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;)V

    iget-object v2, p0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest;->getSharedDataTimestamps:Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;

    iput-object p1, v0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;->L$2:Ljava/lang/Object;

    iput-object p4, v0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;->L$3:Ljava/lang/Object;

    iput-object p5, v0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;->L$4:Ljava/lang/Object;

    iput-object p5, v0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;->L$5:Ljava/lang/Object;

    iput-object p5, v0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;->L$6:Ljava/lang/Object;

    iput v3, v0, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest$invoke$1;->label:I

    invoke-interface {v2, v0}, Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;->invoke(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_81

    return-object v1

    :cond_81
    move-object v2, p2

    move-object p2, p5

    move-object v1, v0

    move-object v0, p1

    move-object p1, p2

    :goto_86
    check-cast v1, Lgateway/v1/TimestampsOuterClass$Timestamps;

    invoke-virtual {p1, v1}, Lgateway/v1/n;->i(Lgateway/v1/TimestampsOuterClass$Timestamps;)V

    invoke-virtual {p2, v0}, Lgateway/v1/n;->f(Ljava/lang/String;)V

    if-eqz v2, :cond_97

    invoke-virtual {p2}, Lgateway/v1/n;->c()Lcom/google/protobuf/kotlin/b;

    move-result-object p1

    invoke-virtual {p2, p1, v2}, Lgateway/v1/n;->e(Lcom/google/protobuf/kotlin/b;Ljava/util/Map;)V

    :cond_97
    if-eqz p3, :cond_a0

    invoke-virtual {p2}, Lgateway/v1/n;->b()Lcom/google/protobuf/kotlin/b;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lgateway/v1/n;->d(Lcom/google/protobuf/kotlin/b;Ljava/util/Map;)V

    :cond_a0
    if-eqz p4, :cond_a9

    invoke-virtual {p4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Lgateway/v1/n;->h(D)V

    :cond_a9
    invoke-virtual {p5}, Lgateway/v1/n;->a()Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent;

    move-result-object p1

    return-object p1
.end method
