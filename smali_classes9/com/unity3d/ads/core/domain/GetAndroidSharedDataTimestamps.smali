###### Class com.unity3d.ads.core.domain.GetAndroidSharedDataTimestamps (com.unity3d.ads.core.domain.GetAndroidSharedDataTimestamps)
.class public final Lcom/unity3d/ads/core/domain/GetAndroidSharedDataTimestamps;
.super Ljava/lang/Object;
.source "GetAndroidSharedDataTimestamps.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0011\u0010\u0003\u001a\u00020\u0004H\u0096B\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/GetAndroidSharedDataTimestamps;",
        "Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;",
        "()V",
        "invoke",
        "Lgateway/v1/TimestampsOuterClass$Timestamps;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.method public invoke(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lgateway/v1/TimestampsOuterClass$Timestamps;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p1, Lgateway/v1/r0;->a:Lgateway/v1/r0$a;

    invoke-static {}, Lgateway/v1/TimestampsOuterClass$Timestamps;->newBuilder()Lgateway/v1/TimestampsOuterClass$Timestamps$a;

    move-result-object v0

    const-string v1, "newBuilder()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lgateway/v1/r0$a;->a(Lgateway/v1/TimestampsOuterClass$Timestamps$a;)Lgateway/v1/r0;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/unity3d/ads/core/extensions/TimestampExtensionsKt;->fromMillis(J)Lcom/google/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgateway/v1/r0;->c(Lcom/google/protobuf/Timestamp;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getInitializationTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lgateway/v1/r0;->b(J)V

    invoke-virtual {p1}, Lgateway/v1/r0;->a()Lgateway/v1/TimestampsOuterClass$Timestamps;

    move-result-object p1

    return-object p1
.end method
