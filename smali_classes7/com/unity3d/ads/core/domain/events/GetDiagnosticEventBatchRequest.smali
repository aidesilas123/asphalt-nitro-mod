###### Class com.unity3d.ads.core.domain.events.GetDiagnosticEventBatchRequest (com.unity3d.ads.core.domain.events.GetDiagnosticEventBatchRequest)
.class public final Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventBatchRequest;
.super Ljava/lang/Object;
.source "GetDiagnosticEventBatchRequest.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0017\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0086\u0002\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventBatchRequest;",
        "",
        "()V",
        "invoke",
        "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;",
        "diagnosticEvents",
        "",
        "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent;",
        "unity-ads_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/util/List;)Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent;",
            ">;)",
            "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;"
        }
    .end annotation

    const-string v0, "diagnosticEvents"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lgateway/v1/o;->a:Lgateway/v1/o$a;

    invoke-static {}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;->newBuilder()Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest$a;

    move-result-object v1

    const-string v2, "newBuilder()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgateway/v1/o$a;->a(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest$a;)Lgateway/v1/o;

    move-result-object v0

    invoke-virtual {v0}, Lgateway/v1/o;->c()Lcom/google/protobuf/kotlin/a;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lgateway/v1/o;->b(Lcom/google/protobuf/kotlin/a;Ljava/lang/Iterable;)V

    invoke-virtual {v0}, Lgateway/v1/o;->a()Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;

    move-result-object p1

    return-object p1
.end method
