###### Class gateway.v1.f (gateway.v1.f)
.class public final Lgateway/v1/f;
.super Ljava/lang/Object;
.source "AdRequestKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/f$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0011\u0008\u0007\u0018\u0000 O2\u00020\u0001:\u0001OB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010<\u001a\u00020=H\u0001J\u0006\u0010>\u001a\u00020?J\u0006\u0010@\u001a\u00020?J\u0006\u0010A\u001a\u00020?J\u0006\u0010B\u001a\u00020?J\u0006\u0010C\u001a\u00020?J\u0006\u0010D\u001a\u00020?J\u0006\u0010E\u001a\u00020?J\u0006\u0010F\u001a\u00020?J\u0006\u0010G\u001a\u00020?J\u0006\u0010H\u001a\u00020?J\u0006\u0010I\u001a\u00020\u001eJ\u0006\u0010J\u001a\u00020\u001eJ\u0006\u0010K\u001a\u00020\u001eJ\u0006\u0010L\u001a\u00020\u001eJ\u0006\u0010M\u001a\u00020\u001eJ\u0006\u0010N\u001a\u00020\u001eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR$\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u000c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R$\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R$\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0005\u001a\u00020\u00188G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR$\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0005\u001a\u00020\u001e8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R$\u0010$\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008%\u0010\u0015\"\u0004\u0008&\u0010\u0017R$\u0010(\u001a\u00020\'2\u0006\u0010\u0005\u001a\u00020\'8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R$\u0010.\u001a\u00020-2\u0006\u0010\u0005\u001a\u00020-8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R$\u00103\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00084\u0010\u0015\"\u0004\u00085\u0010\u0017R$\u00107\u001a\u0002062\u0006\u0010\u0005\u001a\u0002068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;\u00a8\u0006P"
    }
    d2 = {
        "Lgateway/v1/AdRequestKt$Dsl;",
        "",
        "_builder",
        "Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;",
        "(Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;)V",
        "value",
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
        "Lcom/google/protobuf/ByteString;",
        "impressionOpportunityId",
        "getImpressionOpportunityId",
        "()Lcom/google/protobuf/ByteString;",
        "setImpressionOpportunityId",
        "(Lcom/google/protobuf/ByteString;)V",
        "",
        "placementId",
        "getPlacementId",
        "()Ljava/lang/String;",
        "setPlacementId",
        "(Ljava/lang/String;)V",
        "",
        "requestImpressionConfiguration",
        "getRequestImpressionConfiguration",
        "()Z",
        "setRequestImpressionConfiguration",
        "(Z)V",
        "scarSignal",
        "getScarSignal",
        "setScarSignal",
        "Lgateway/v1/SessionCountersOuterClass$SessionCounters;",
        "sessionCounters",
        "getSessionCounters",
        "()Lgateway/v1/SessionCountersOuterClass$SessionCounters;",
        "setSessionCounters",
        "(Lgateway/v1/SessionCountersOuterClass$SessionCounters;)V",
        "Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;",
        "staticDeviceInfo",
        "getStaticDeviceInfo",
        "()Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;",
        "setStaticDeviceInfo",
        "(Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V",
        "tcf",
        "getTcf",
        "setTcf",
        "",
        "webviewVersion",
        "getWebviewVersion",
        "()I",
        "setWebviewVersion",
        "(I)V",
        "_build",
        "Lgateway/v1/AdRequestOuterClass$AdRequest;",
        "clearCampaignState",
        "",
        "clearDynamicDeviceInfo",
        "clearImpressionOpportunityId",
        "clearPlacementId",
        "clearRequestImpressionConfiguration",
        "clearScarSignal",
        "clearSessionCounters",
        "clearStaticDeviceInfo",
        "clearTcf",
        "clearWebviewVersion",
        "hasCampaignState",
        "hasDynamicDeviceInfo",
        "hasSessionCounters",
        "hasStaticDeviceInfo",
        "hasTcf",
        "hasWebviewVersion",
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
.field public static final a:Lgateway/v1/f$a;


# instance fields
.field private final b:Lgateway/v1/AdRequestOuterClass$AdRequest$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgateway/v1/f$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lgateway/v1/f;->a:Lgateway/v1/f$a;

    return-void
.end method

.method private constructor <init>(Lgateway/v1/AdRequestOuterClass$AdRequest$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgateway/v1/f;->b:Lgateway/v1/AdRequestOuterClass$AdRequest$a;

    return-void
.end method

.method public synthetic constructor <init>(Lgateway/v1/AdRequestOuterClass$AdRequest$a;Lkotlin/jvm/internal/n;)V
    .registers 3

    invoke-direct {p0, p1}, Lgateway/v1/f;-><init>(Lgateway/v1/AdRequestOuterClass$AdRequest$a;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Lgateway/v1/AdRequestOuterClass$AdRequest;
    .registers 3

    iget-object v0, p0, Lgateway/v1/f;->b:Lgateway/v1/AdRequestOuterClass$AdRequest$a;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    return-object v0
.end method

.method public final b(Lgateway/v1/CampaignStateOuterClass$CampaignState;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/f;->b:Lgateway/v1/AdRequestOuterClass$AdRequest$a;

    invoke-virtual {v0, p1}, Lgateway/v1/AdRequestOuterClass$AdRequest$a;->b(Lgateway/v1/CampaignStateOuterClass$CampaignState;)Lgateway/v1/AdRequestOuterClass$AdRequest$a;

    return-void
.end method

.method public final c(Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/f;->b:Lgateway/v1/AdRequestOuterClass$AdRequest$a;

    invoke-virtual {v0, p1}, Lgateway/v1/AdRequestOuterClass$AdRequest$a;->d(Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)Lgateway/v1/AdRequestOuterClass$AdRequest$a;

    return-void
.end method

.method public final d(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/f;->b:Lgateway/v1/AdRequestOuterClass$AdRequest$a;

    invoke-virtual {v0, p1}, Lgateway/v1/AdRequestOuterClass$AdRequest$a;->e(Lcom/google/protobuf/ByteString;)Lgateway/v1/AdRequestOuterClass$AdRequest$a;

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/f;->b:Lgateway/v1/AdRequestOuterClass$AdRequest$a;

    invoke-virtual {v0, p1}, Lgateway/v1/AdRequestOuterClass$AdRequest$a;->f(Ljava/lang/String;)Lgateway/v1/AdRequestOuterClass$AdRequest$a;

    return-void
.end method

.method public final f(Z)V
    .registers 3

    iget-object v0, p0, Lgateway/v1/f;->b:Lgateway/v1/AdRequestOuterClass$AdRequest$a;

    invoke-virtual {v0, p1}, Lgateway/v1/AdRequestOuterClass$AdRequest$a;->g(Z)Lgateway/v1/AdRequestOuterClass$AdRequest$a;

    return-void
.end method

.method public final g(Lgateway/v1/SessionCountersOuterClass$SessionCounters;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/f;->b:Lgateway/v1/AdRequestOuterClass$AdRequest$a;

    invoke-virtual {v0, p1}, Lgateway/v1/AdRequestOuterClass$AdRequest$a;->h(Lgateway/v1/SessionCountersOuterClass$SessionCounters;)Lgateway/v1/AdRequestOuterClass$AdRequest$a;

    return-void
.end method

.method public final h(Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/f;->b:Lgateway/v1/AdRequestOuterClass$AdRequest$a;

    invoke-virtual {v0, p1}, Lgateway/v1/AdRequestOuterClass$AdRequest$a;->i(Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)Lgateway/v1/AdRequestOuterClass$AdRequest$a;

    return-void
.end method
