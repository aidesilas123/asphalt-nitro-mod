###### Class gateway.v1.e0 (gateway.v1.e0)
.class public final Lgateway/v1/e0;
.super Ljava/lang/Object;
.source "OperativeEventRequestKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/e0$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 K2\u00020\u0001:\u0001KB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u00109\u001a\u00020:H\u0001J\u0006\u0010;\u001a\u00020<J\u0006\u0010=\u001a\u00020<J\u0006\u0010>\u001a\u00020<J\u0006\u0010?\u001a\u00020<J\u0006\u0010@\u001a\u00020<J\u0006\u0010A\u001a\u00020<J\u0006\u0010B\u001a\u00020<J\u0006\u0010C\u001a\u00020<J\u0006\u0010D\u001a\u00020<J\u0006\u0010E\u001a\u00020<J\u0006\u0010F\u001a\u00020GJ\u0006\u0010H\u001a\u00020GJ\u0006\u0010I\u001a\u00020GJ\u0006\u0010J\u001a\u00020GR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR$\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u000c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R$\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R$\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0019\u0010\t\"\u0004\u0008\u001a\u0010\u000bR$\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0005\u001a\u00020\u001b8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R$\u0010!\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\"\u0010\t\"\u0004\u0008#\u0010\u000bR$\u0010%\u001a\u00020$2\u0006\u0010\u0005\u001a\u00020$8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R$\u0010+\u001a\u00020*2\u0006\u0010\u0005\u001a\u00020*8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R$\u00101\u001a\u0002002\u0006\u0010\u0005\u001a\u0002008G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R$\u00106\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00087\u0010\t\"\u0004\u00088\u0010\u000b\u00a8\u0006L"
    }
    d2 = {
        "Lgateway/v1/OperativeEventRequestKt$Dsl;",
        "",
        "_builder",
        "Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;",
        "(Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;)V",
        "value",
        "Lcom/google/protobuf/ByteString;",
        "additionalData",
        "getAdditionalData",
        "()Lcom/google/protobuf/ByteString;",
        "setAdditionalData",
        "(Lcom/google/protobuf/ByteString;)V",
        "Lgateway/v1/CampaignStateOuterClass$CampaignState;",
        "campaignState",
        "getCampaignState",
        "()Lgateway/v1/CampaignStateOuterClass$CampaignState;",
        "setCampaignState",
        "(Lgateway/v1/CampaignStateOuterClass$CampaignState;)V",
        "Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;",
        "dynamicDeviceInfo",
        "getDynamicDeviceInfo",
        "()Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;",
        "setDynamicDeviceInfo",
        "(Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V",
        "eventId",
        "getEventId",
        "setEventId",
        "Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventType;",
        "eventType",
        "getEventType",
        "()Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventType;",
        "setEventType",
        "(Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventType;)V",
        "impressionOpportunityId",
        "getImpressionOpportunityId",
        "setImpressionOpportunityId",
        "Lgateway/v1/SessionCountersOuterClass$SessionCounters;",
        "sessionCounters",
        "getSessionCounters",
        "()Lgateway/v1/SessionCountersOuterClass$SessionCounters;",
        "setSessionCounters",
        "(Lgateway/v1/SessionCountersOuterClass$SessionCounters;)V",
        "",
        "sid",
        "getSid",
        "()Ljava/lang/String;",
        "setSid",
        "(Ljava/lang/String;)V",
        "Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;",
        "staticDeviceInfo",
        "getStaticDeviceInfo",
        "()Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;",
        "setStaticDeviceInfo",
        "(Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V",
        "trackingToken",
        "getTrackingToken",
        "setTrackingToken",
        "_build",
        "Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;",
        "clearAdditionalData",
        "",
        "clearCampaignState",
        "clearDynamicDeviceInfo",
        "clearEventId",
        "clearEventType",
        "clearImpressionOpportunityId",
        "clearSessionCounters",
        "clearSid",
        "clearStaticDeviceInfo",
        "clearTrackingToken",
        "hasCampaignState",
        "",
        "hasDynamicDeviceInfo",
        "hasSessionCounters",
        "hasStaticDeviceInfo",
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
.field public static final a:Lgateway/v1/e0$a;


# instance fields
.field private final b:Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/e0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgateway/v1/e0$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lgateway/v1/e0;->a:Lgateway/v1/e0$a;

    return-void
.end method

.method private constructor <init>(Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgateway/v1/e0;->b:Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$a;

    return-void
.end method

.method public synthetic constructor <init>(Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$a;Lkotlin/jvm/internal/n;)V
    .registers 3

    invoke-direct {p0, p1}, Lgateway/v1/e0;-><init>(Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$a;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;
    .registers 3

    iget-object v0, p0, Lgateway/v1/e0;->b:Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$a;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;

    return-object v0
.end method

.method public final b(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/e0;->b:Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$a;

    invoke-virtual {v0, p1}, Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$a;->b(Lcom/google/protobuf/ByteString;)Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$a;

    return-void
.end method

.method public final c(Lgateway/v1/CampaignStateOuterClass$CampaignState;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/e0;->b:Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$a;

    invoke-virtual {v0, p1}, Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$a;->d(Lgateway/v1/CampaignStateOuterClass$CampaignState;)Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$a;

    return-void
.end method

.method public final d(Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/e0;->b:Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$a;

    invoke-virtual {v0, p1}, Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$a;->e(Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$a;

    return-void
.end method

.method public final e(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/e0;->b:Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$a;

    invoke-virtual {v0, p1}, Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$a;->f(Lcom/google/protobuf/ByteString;)Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$a;

    return-void
.end method

.method public final f(Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventType;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/e0;->b:Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$a;

    invoke-virtual {v0, p1}, Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$a;->g(Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventType;)Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$a;

    return-void
.end method

.method public final g(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/e0;->b:Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$a;

    invoke-virtual {v0, p1}, Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$a;->h(Lcom/google/protobuf/ByteString;)Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$a;

    return-void
.end method

.method public final h(Lgateway/v1/SessionCountersOuterClass$SessionCounters;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/e0;->b:Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$a;

    invoke-virtual {v0, p1}, Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$a;->i(Lgateway/v1/SessionCountersOuterClass$SessionCounters;)Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$a;

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/e0;->b:Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$a;

    invoke-virtual {v0, p1}, Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$a;->j(Ljava/lang/String;)Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$a;

    return-void
.end method

.method public final j(Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/e0;->b:Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$a;

    invoke-virtual {v0, p1}, Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$a;->k(Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$a;

    return-void
.end method

.method public final k(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/e0;->b:Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$a;

    invoke-virtual {v0, p1}, Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$a;->l(Lcom/google/protobuf/ByteString;)Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$a;

    return-void
.end method
