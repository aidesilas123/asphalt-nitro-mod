###### Class com.vungle.ads.internal.model.Placement (com.vungle.ads.internal.model.Placement)
.class public final Lcom/vungle/ads/internal/model/Placement;
.super Ljava/lang/Object;
.source "ConfigPayload.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/model/Placement$b;,
        Lcom/vungle/ads/internal/model/Placement$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0010\t\n\u0002\u0008\u001b\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 S2\u00020\u0001:\u0002RSB\u0093\u0001\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0010\u0008\u0001\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\n\u0012\u0010\u0008\u0001\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\n\u0012\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\r\u001a\u00020\u0008\u0012\n\u0008\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u000f\u001a\u00020\u0008\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0002\u0010\u0013Ba\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u000e\u0008\u0002\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\n\u0012\u000e\u0008\u0002\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\n\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0014J\t\u00104\u001a\u00020\u0005H\u00c6\u0003J\t\u00105\u001a\u00020\u0005H\u00c6\u0003J\u0010\u00106\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0002\u0010#J\u000f\u00107\u001a\u0008\u0012\u0004\u0012\u00020\u00050\nH\u00c6\u0003J\u000f\u00108\u001a\u0008\u0012\u0004\u0012\u00020\u00050\nH\u00c6\u0003J\t\u00109\u001a\u00020\u0003H\u00c6\u0003J\t\u0010:\u001a\u00020\u0008H\u00c6\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003Jn\u0010<\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u000e\u0008\u0002\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\n2\u000e\u0008\u0002\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\n2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00032\u0008\u0008\u0002\u0010\r\u001a\u00020\u00082\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001\u00a2\u0006\u0002\u0010=J\u0013\u0010>\u001a\u00020\u00082\u0008\u0010?\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010@\u001a\u00020\u0003H\u00d6\u0001J\u0006\u0010A\u001a\u00020\u0008J\u0006\u0010B\u001a\u00020\u0008J\u0006\u0010C\u001a\u00020\u0008J\u0006\u0010D\u001a\u00020\u0008J\u0006\u0010E\u001a\u00020\u0008J\u0006\u0010F\u001a\u00020\u0008J\u0006\u0010G\u001a\u00020\u0008J\u000e\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020-J\t\u0010K\u001a\u00020\u0005H\u00d6\u0001J!\u0010L\u001a\u00020I2\u0006\u0010M\u001a\u00020\u00002\u0006\u0010N\u001a\u00020O2\u0006\u0010P\u001a\u00020QH\u00c7\u0001R\u001c\u0010\u000c\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0019\u0010\u0016\u001a\u0004\u0008\u001a\u0010\u001bR\u001c\u0010\r\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001c\u0010\u0016\u001a\u0004\u0008\u001d\u0010\u001eR\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001f\u0010\u0016\u001a\u0004\u0008 \u0010\u001bR \u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010$\u0012\u0004\u0008!\u0010\u0016\u001a\u0004\u0008\"\u0010#R\u0011\u0010\u000f\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u001eR\u000e\u0010\u0010\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008%\u0010\u0016\u001a\u0004\u0008&\u0010\u001bR\"\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\n8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\'\u0010\u0016\u001a\u0004\u0008(\u0010)R\"\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\n8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008*\u0010\u0016\u001a\u0004\u0008+\u0010)R(\u0010,\u001a\u0004\u0018\u00010-8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0002\u00103\u0012\u0004\u0008.\u0010\u0016\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102\u00a8\u0006T"
    }
    d2 = {
        "Lcom/vungle/ads/internal/model/Placement;",
        "",
        "seen1",
        "",
        "identifier",
        "",
        "referenceId",
        "incentivized",
        "",
        "supportedTemplateTypes",
        "",
        "supportedAdFormats",
        "adRefreshDuration",
        "headerBidding",
        "adSize",
        "isIncentivized",
        "placementAdType",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;IZLjava/lang/String;ZLjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;IZLjava/lang/String;)V",
        "getAdRefreshDuration$annotations",
        "()V",
        "getAdRefreshDuration",
        "()I",
        "getAdSize$annotations",
        "getAdSize",
        "()Ljava/lang/String;",
        "getHeaderBidding$annotations",
        "getHeaderBidding",
        "()Z",
        "getIdentifier$annotations",
        "getIdentifier",
        "getIncentivized$annotations",
        "getIncentivized",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getReferenceId$annotations",
        "getReferenceId",
        "getSupportedAdFormats$annotations",
        "getSupportedAdFormats",
        "()Ljava/util/List;",
        "getSupportedTemplateTypes$annotations",
        "getSupportedTemplateTypes",
        "wakeupTime",
        "",
        "getWakeupTime$annotations",
        "getWakeupTime",
        "()Ljava/lang/Long;",
        "setWakeupTime",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;IZLjava/lang/String;)Lcom/vungle/ads/internal/model/Placement;",
        "equals",
        "other",
        "hashCode",
        "isBanner",
        "isBannerNonMREC",
        "isDefault",
        "isInterstitial",
        "isMREC",
        "isNative",
        "isRewardedVideo",
        "snooze",
        "",
        "sleepTime",
        "toString",
        "write$Self",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "$serializer",
        "Companion",
        "vungle-ads_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/g;
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/model/Placement$b;


# instance fields
.field private final adRefreshDuration:I

.field private final adSize:Ljava/lang/String;

.field private final headerBidding:Z

.field private final identifier:Ljava/lang/String;

.field private final incentivized:Ljava/lang/Boolean;

.field private final isIncentivized:Z

.field private final placementAdType:Ljava/lang/String;

.field private final referenceId:Ljava/lang/String;

.field private final supportedAdFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final supportedTemplateTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private wakeupTime:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/vungle/ads/internal/model/Placement$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/model/Placement$b;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lcom/vungle/ads/internal/model/Placement;->Companion:Lcom/vungle/ads/internal/model/Placement$b;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;IZLjava/lang/String;ZLjava/lang/String;Lkotlinx/serialization/internal/e1;)V
    .registers 14

    and-int/lit8 p12, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p12, :cond_e

    sget-object p12, Lcom/vungle/ads/internal/model/Placement$a;->INSTANCE:Lcom/vungle/ads/internal/model/Placement$a;

    invoke-virtual {p12}, Lcom/vungle/ads/internal/model/Placement$a;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p12

    invoke-static {p1, v0, p12}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vungle/ads/internal/model/Placement;->identifier:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/ads/internal/model/Placement;->referenceId:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_1e

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/vungle/ads/internal/model/Placement;->incentivized:Ljava/lang/Boolean;

    goto :goto_20

    :cond_1e
    iput-object p4, p0, Lcom/vungle/ads/internal/model/Placement;->incentivized:Ljava/lang/Boolean;

    :goto_20
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_2b

    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/vungle/ads/internal/model/Placement;->supportedTemplateTypes:Ljava/util/List;

    goto :goto_2d

    :cond_2b
    iput-object p5, p0, Lcom/vungle/ads/internal/model/Placement;->supportedTemplateTypes:Ljava/util/List;

    :goto_2d
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_38

    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/vungle/ads/internal/model/Placement;->supportedAdFormats:Ljava/util/List;

    goto :goto_3a

    :cond_38
    iput-object p6, p0, Lcom/vungle/ads/internal/model/Placement;->supportedAdFormats:Ljava/util/List;

    :goto_3a
    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_43

    const/high16 p2, -0x80000000

    iput p2, p0, Lcom/vungle/ads/internal/model/Placement;->adRefreshDuration:I

    goto :goto_45

    :cond_43
    iput p7, p0, Lcom/vungle/ads/internal/model/Placement;->adRefreshDuration:I

    :goto_45
    and-int/lit8 p2, p1, 0x40

    const/4 p3, 0x0

    if-nez p2, :cond_4d

    iput-boolean p3, p0, Lcom/vungle/ads/internal/model/Placement;->headerBidding:Z

    goto :goto_4f

    :cond_4d
    iput-boolean p8, p0, Lcom/vungle/ads/internal/model/Placement;->headerBidding:Z

    :goto_4f
    and-int/lit16 p2, p1, 0x80

    const/4 p4, 0x0

    if-nez p2, :cond_57

    iput-object p4, p0, Lcom/vungle/ads/internal/model/Placement;->adSize:Ljava/lang/String;

    goto :goto_59

    :cond_57
    iput-object p9, p0, Lcom/vungle/ads/internal/model/Placement;->adSize:Ljava/lang/String;

    :goto_59
    and-int/lit16 p2, p1, 0x100

    if-nez p2, :cond_68

    iget-object p2, p0, Lcom/vungle/ads/internal/model/Placement;->incentivized:Ljava/lang/Boolean;

    if-eqz p2, :cond_65

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    :cond_65
    iput-boolean p3, p0, Lcom/vungle/ads/internal/model/Placement;->isIncentivized:Z

    goto :goto_6a

    :cond_68
    iput-boolean p10, p0, Lcom/vungle/ads/internal/model/Placement;->isIncentivized:Z

    :goto_6a
    iput-object p4, p0, Lcom/vungle/ads/internal/model/Placement;->wakeupTime:Ljava/lang/Long;

    and-int/lit16 p1, p1, 0x200

    if-nez p1, :cond_98

    iget-object p1, p0, Lcom/vungle/ads/internal/model/Placement;->supportedTemplateTypes:Ljava/util/List;

    const-string p2, "banner"

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7d

    const-string p1, "TYPE_BANNER"

    goto :goto_95

    :cond_7d
    const-string p2, "mrec"

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_88

    const-string p1, "TYPE_MREC"

    goto :goto_95

    :cond_88
    const-string p2, "native"

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_93

    const-string p1, "TYPE_NATIVE"

    goto :goto_95

    :cond_93
    const-string p1, "TYPE_DEFAULT"

    :goto_95
    iput-object p1, p0, Lcom/vungle/ads/internal/model/Placement;->placementAdType:Ljava/lang/String;

    goto :goto_9a

    :cond_98
    iput-object p11, p0, Lcom/vungle/ads/internal/model/Placement;->placementAdType:Ljava/lang/String;

    :goto_9a
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;IZLjava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referenceId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "supportedTemplateTypes"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "supportedAdFormats"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/model/Placement;->identifier:Ljava/lang/String;

    iput-object p2, p0, Lcom/vungle/ads/internal/model/Placement;->referenceId:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/ads/internal/model/Placement;->incentivized:Ljava/lang/Boolean;

    iput-object p4, p0, Lcom/vungle/ads/internal/model/Placement;->supportedTemplateTypes:Ljava/util/List;

    iput-object p5, p0, Lcom/vungle/ads/internal/model/Placement;->supportedAdFormats:Ljava/util/List;

    iput p6, p0, Lcom/vungle/ads/internal/model/Placement;->adRefreshDuration:I

    iput-boolean p7, p0, Lcom/vungle/ads/internal/model/Placement;->headerBidding:Z

    iput-object p8, p0, Lcom/vungle/ads/internal/model/Placement;->adSize:Ljava/lang/String;

    if-eqz p3, :cond_2e

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x0

    :goto_2f
    iput-boolean p1, p0, Lcom/vungle/ads/internal/model/Placement;->isIncentivized:Z

    const-string p1, "banner"

    invoke-interface {p4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    const-string p1, "TYPE_BANNER"

    goto :goto_54

    :cond_3c
    const-string p1, "mrec"

    invoke-interface {p4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_47

    const-string p1, "TYPE_MREC"

    goto :goto_54

    :cond_47
    const-string p1, "native"

    invoke-interface {p4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_52

    const-string p1, "TYPE_NATIVE"

    goto :goto_54

    :cond_52
    const-string p1, "TYPE_DEFAULT"

    :goto_54
    iput-object p1, p0, Lcom/vungle/ads/internal/model/Placement;->placementAdType:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;IZLjava/lang/String;ILkotlin/jvm/internal/n;)V
    .registers 22

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_a

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v5, v1

    goto :goto_b

    :cond_a
    move-object v5, p3

    :goto_b
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_15

    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v6, v1

    goto :goto_16

    :cond_15
    move-object v6, p4

    :goto_16
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_20

    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v7, v1

    goto :goto_22

    :cond_20
    move-object/from16 v7, p5

    :goto_22
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2b

    const/high16 v1, -0x80000000

    const/high16 v8, -0x80000000

    goto :goto_2d

    :cond_2b
    move/from16 v8, p6

    :goto_2d
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_34

    const/4 v1, 0x0

    const/4 v9, 0x0

    goto :goto_36

    :cond_34
    move/from16 v9, p7

    :goto_36
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3d

    const/4 v0, 0x0

    move-object v10, v0

    goto :goto_3f

    :cond_3d
    move-object/from16 v10, p8

    :goto_3f
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v10}, Lcom/vungle/ads/internal/model/Placement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;IZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/vungle/ads/internal/model/Placement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;IZLjava/lang/String;ILjava/lang/Object;)Lcom/vungle/ads/internal/model/Placement;
    .registers 20

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/vungle/ads/internal/model/Placement;->identifier:Ljava/lang/String;

    goto :goto_b

    :cond_a
    move-object v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget-object v3, v0, Lcom/vungle/ads/internal/model/Placement;->referenceId:Ljava/lang/String;

    goto :goto_13

    :cond_12
    move-object v3, p2

    :goto_13
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lcom/vungle/ads/internal/model/Placement;->incentivized:Ljava/lang/Boolean;

    goto :goto_1b

    :cond_1a
    move-object v4, p3

    :goto_1b
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_22

    iget-object v5, v0, Lcom/vungle/ads/internal/model/Placement;->supportedTemplateTypes:Ljava/util/List;

    goto :goto_23

    :cond_22
    move-object v5, p4

    :goto_23
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2a

    iget-object v6, v0, Lcom/vungle/ads/internal/model/Placement;->supportedAdFormats:Ljava/util/List;

    goto :goto_2b

    :cond_2a
    move-object v6, p5

    :goto_2b
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_32

    iget v7, v0, Lcom/vungle/ads/internal/model/Placement;->adRefreshDuration:I

    goto :goto_33

    :cond_32
    move v7, p6

    :goto_33
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_3a

    iget-boolean v8, v0, Lcom/vungle/ads/internal/model/Placement;->headerBidding:Z

    goto :goto_3c

    :cond_3a
    move/from16 v8, p7

    :goto_3c
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_43

    iget-object v1, v0, Lcom/vungle/ads/internal/model/Placement;->adSize:Ljava/lang/String;

    goto :goto_45

    :cond_43
    move-object/from16 v1, p8

    :goto_45
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move p6, v7

    move/from16 p7, v8

    move-object/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Lcom/vungle/ads/internal/model/Placement;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;IZLjava/lang/String;)Lcom/vungle/ads/internal/model/Placement;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getAdRefreshDuration$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getAdSize$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getHeaderBidding$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getIdentifier$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getIncentivized$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getReferenceId$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getSupportedAdFormats$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getSupportedTemplateTypes$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getWakeupTime$annotations()V
    .registers 0

    return-void
.end method

.method public static final write$Self(Lcom/vungle/ads/internal/model/Placement;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .registers 9

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vungle/ads/internal/model/Placement;->identifier:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/vungle/ads/internal/model/Placement;->referenceId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_24

    :goto_22
    const/4 v3, 0x1

    goto :goto_30

    :cond_24
    iget-object v3, p0, Lcom/vungle/ads/internal/model/Placement;->incentivized:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    goto :goto_22

    :cond_2f
    const/4 v3, 0x0

    :goto_30
    if-eqz v3, :cond_39

    sget-object v3, Lkotlinx/serialization/internal/f;->a:Lkotlinx/serialization/internal/f;

    iget-object v4, p0, Lcom/vungle/ads/internal/model/Placement;->incentivized:Ljava/lang/Boolean;

    invoke-interface {p1, p2, v0, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/i;Ljava/lang/Object;)V

    :cond_39
    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_42

    :goto_40
    const/4 v3, 0x1

    goto :goto_50

    :cond_42
    iget-object v3, p0, Lcom/vungle/ads/internal/model/Placement;->supportedTemplateTypes:Ljava/util/List;

    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

    goto :goto_40

    :cond_4f
    const/4 v3, 0x0

    :goto_50
    if-eqz v3, :cond_5e

    new-instance v3, Lkotlinx/serialization/internal/c;

    sget-object v4, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    invoke-direct {v3, v4}, Lkotlinx/serialization/internal/c;-><init>(Lkotlinx/serialization/c;)V

    iget-object v4, p0, Lcom/vungle/ads/internal/model/Placement;->supportedTemplateTypes:Ljava/util/List;

    invoke-interface {p1, p2, v0, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->C(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/i;Ljava/lang/Object;)V

    :cond_5e
    const/4 v0, 0x4

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_67

    :goto_65
    const/4 v3, 0x1

    goto :goto_75

    :cond_67
    iget-object v3, p0, Lcom/vungle/ads/internal/model/Placement;->supportedAdFormats:Ljava/util/List;

    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_74

    goto :goto_65

    :cond_74
    const/4 v3, 0x0

    :goto_75
    if-eqz v3, :cond_83

    new-instance v3, Lkotlinx/serialization/internal/c;

    sget-object v4, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    invoke-direct {v3, v4}, Lkotlinx/serialization/internal/c;-><init>(Lkotlinx/serialization/c;)V

    iget-object v4, p0, Lcom/vungle/ads/internal/model/Placement;->supportedAdFormats:Ljava/util/List;

    invoke-interface {p1, p2, v0, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->C(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/i;Ljava/lang/Object;)V

    :cond_83
    const/4 v0, 0x5

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_8c

    :goto_8a
    const/4 v3, 0x1

    goto :goto_94

    :cond_8c
    iget v3, p0, Lcom/vungle/ads/internal/model/Placement;->adRefreshDuration:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_93

    goto :goto_8a

    :cond_93
    const/4 v3, 0x0

    :goto_94
    if-eqz v3, :cond_9b

    iget v3, p0, Lcom/vungle/ads/internal/model/Placement;->adRefreshDuration:I

    invoke-interface {p1, p2, v0, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_9b
    const/4 v0, 0x6

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_a4

    :goto_a2
    const/4 v3, 0x1

    goto :goto_aa

    :cond_a4
    iget-boolean v3, p0, Lcom/vungle/ads/internal/model/Placement;->headerBidding:Z

    if-eqz v3, :cond_a9

    goto :goto_a2

    :cond_a9
    const/4 v3, 0x0

    :goto_aa
    if-eqz v3, :cond_b1

    iget-boolean v3, p0, Lcom/vungle/ads/internal/model/Placement;->headerBidding:Z

    invoke-interface {p1, p2, v0, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_b1
    const/4 v0, 0x7

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_ba

    :goto_b8
    const/4 v3, 0x1

    goto :goto_c0

    :cond_ba
    iget-object v3, p0, Lcom/vungle/ads/internal/model/Placement;->adSize:Ljava/lang/String;

    if-eqz v3, :cond_bf

    goto :goto_b8

    :cond_bf
    const/4 v3, 0x0

    :goto_c0
    if-eqz v3, :cond_c9

    sget-object v3, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    iget-object v4, p0, Lcom/vungle/ads/internal/model/Placement;->adSize:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/i;Ljava/lang/Object;)V

    :cond_c9
    const/16 v0, 0x8

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_d3

    :goto_d1
    const/4 v3, 0x1

    goto :goto_e3

    :cond_d3
    iget-boolean v3, p0, Lcom/vungle/ads/internal/model/Placement;->isIncentivized:Z

    iget-object v4, p0, Lcom/vungle/ads/internal/model/Placement;->incentivized:Ljava/lang/Boolean;

    if-eqz v4, :cond_de

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_df

    :cond_de
    const/4 v4, 0x0

    :goto_df
    if-eq v3, v4, :cond_e2

    goto :goto_d1

    :cond_e2
    const/4 v3, 0x0

    :goto_e3
    if-eqz v3, :cond_ea

    iget-boolean v3, p0, Lcom/vungle/ads/internal/model/Placement;->isIncentivized:Z

    invoke-interface {p1, p2, v0, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_ea
    const/16 v0, 0x9

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_f4

    :goto_f2
    const/4 v1, 0x1

    goto :goto_122

    :cond_f4
    iget-object v3, p0, Lcom/vungle/ads/internal/model/Placement;->placementAdType:Ljava/lang/String;

    iget-object v4, p0, Lcom/vungle/ads/internal/model/Placement;->supportedTemplateTypes:Ljava/util/List;

    const-string v5, "banner"

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_103

    const-string v4, "TYPE_BANNER"

    goto :goto_11b

    :cond_103
    const-string v5, "mrec"

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10e

    const-string v4, "TYPE_MREC"

    goto :goto_11b

    :cond_10e
    const-string v5, "native"

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_119

    const-string v4, "TYPE_NATIVE"

    goto :goto_11b

    :cond_119
    const-string v4, "TYPE_DEFAULT"

    :goto_11b
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_122

    goto :goto_f2

    :cond_122
    :goto_122
    if-eqz v1, :cond_129

    iget-object p0, p0, Lcom/vungle/ads/internal/model/Placement;->placementAdType:Ljava/lang/String;

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    :cond_129
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/Placement;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/Placement;->referenceId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/Placement;->incentivized:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vungle/ads/internal/model/Placement;->supportedTemplateTypes:Ljava/util/List;

    return-object v0
.end method

.method public final component5()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vungle/ads/internal/model/Placement;->supportedAdFormats:Ljava/util/List;

    return-object v0
.end method

.method public final component6()I
    .registers 2

    iget v0, p0, Lcom/vungle/ads/internal/model/Placement;->adRefreshDuration:I

    return v0
.end method

.method public final component7()Z
    .registers 2

    iget-boolean v0, p0, Lcom/vungle/ads/internal/model/Placement;->headerBidding:Z

    return v0
.end method

.method public final component8()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/Placement;->adSize:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;IZLjava/lang/String;)Lcom/vungle/ads/internal/model/Placement;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IZ",
            "Ljava/lang/String;",
            ")",
            "Lcom/vungle/ads/internal/model/Placement;"
        }
    .end annotation

    const-string v0, "identifier"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referenceId"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "supportedTemplateTypes"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "supportedAdFormats"

    move-object v6, p5

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/vungle/ads/internal/model/Placement;

    move-object v1, v0

    move-object v4, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/vungle/ads/internal/model/Placement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;IZLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/vungle/ads/internal/model/Placement;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/vungle/ads/internal/model/Placement;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/Placement;->identifier:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/Placement;->identifier:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/vungle/ads/internal/model/Placement;->referenceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/Placement;->referenceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/vungle/ads/internal/model/Placement;->incentivized:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/Placement;->incentivized:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/vungle/ads/internal/model/Placement;->supportedTemplateTypes:Ljava/util/List;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/Placement;->supportedTemplateTypes:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/vungle/ads/internal/model/Placement;->supportedAdFormats:Ljava/util/List;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/Placement;->supportedAdFormats:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget v1, p0, Lcom/vungle/ads/internal/model/Placement;->adRefreshDuration:I

    iget v3, p1, Lcom/vungle/ads/internal/model/Placement;->adRefreshDuration:I

    if-eq v1, v3, :cond_4a

    return v2

    :cond_4a
    iget-boolean v1, p0, Lcom/vungle/ads/internal/model/Placement;->headerBidding:Z

    iget-boolean v3, p1, Lcom/vungle/ads/internal/model/Placement;->headerBidding:Z

    if-eq v1, v3, :cond_51

    return v2

    :cond_51
    iget-object v1, p0, Lcom/vungle/ads/internal/model/Placement;->adSize:Ljava/lang/String;

    iget-object p1, p1, Lcom/vungle/ads/internal/model/Placement;->adSize:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5c

    return v2

    :cond_5c
    return v0
.end method

.method public final getAdRefreshDuration()I
    .registers 2

    iget v0, p0, Lcom/vungle/ads/internal/model/Placement;->adRefreshDuration:I

    return v0
.end method

.method public final getAdSize()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/Placement;->adSize:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeaderBidding()Z
    .registers 2

    iget-boolean v0, p0, Lcom/vungle/ads/internal/model/Placement;->headerBidding:Z

    return v0
.end method

.method public final getIdentifier()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/Placement;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public final getIncentivized()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/Placement;->incentivized:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getReferenceId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/Placement;->referenceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSupportedAdFormats()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vungle/ads/internal/model/Placement;->supportedAdFormats:Ljava/util/List;

    return-object v0
.end method

.method public final getSupportedTemplateTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vungle/ads/internal/model/Placement;->supportedTemplateTypes:Ljava/util/List;

    return-object v0
.end method

.method public final getWakeupTime()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/Placement;->wakeupTime:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/vungle/ads/internal/model/Placement;->identifier:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/model/Placement;->referenceId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/model/Placement;->incentivized:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-nez v1, :cond_18

    const/4 v1, 0x0

    goto :goto_1c

    :cond_18
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/model/Placement;->supportedTemplateTypes:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/model/Placement;->supportedAdFormats:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/vungle/ads/internal/model/Placement;->adRefreshDuration:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/vungle/ads/internal/model/Placement;->headerBidding:Z

    if-eqz v1, :cond_3b

    const/4 v1, 0x1

    :cond_3b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/model/Placement;->adSize:Ljava/lang/String;

    if-nez v1, :cond_43

    goto :goto_47

    :cond_43
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_47
    add-int/2addr v0, v2

    return v0
.end method

.method public final isBanner()Z
    .registers 3

    iget-object v0, p0, Lcom/vungle/ads/internal/model/Placement;->placementAdType:Ljava/lang/String;

    const-string v1, "TYPE_BANNER"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/Placement;->isMREC()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public final isBannerNonMREC()Z
    .registers 3

    iget-object v0, p0, Lcom/vungle/ads/internal/model/Placement;->placementAdType:Ljava/lang/String;

    const-string v1, "TYPE_BANNER"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isDefault()Z
    .registers 3

    iget-object v0, p0, Lcom/vungle/ads/internal/model/Placement;->placementAdType:Ljava/lang/String;

    const-string v1, "TYPE_DEFAULT"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isIncentivized()Z
    .registers 2

    iget-boolean v0, p0, Lcom/vungle/ads/internal/model/Placement;->isIncentivized:Z

    return v0
.end method

.method public final isInterstitial()Z
    .registers 2

    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/Placement;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/vungle/ads/internal/model/Placement;->isIncentivized:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public final isMREC()Z
    .registers 3

    iget-object v0, p0, Lcom/vungle/ads/internal/model/Placement;->placementAdType:Ljava/lang/String;

    const-string v1, "TYPE_MREC"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isNative()Z
    .registers 3

    iget-object v0, p0, Lcom/vungle/ads/internal/model/Placement;->placementAdType:Ljava/lang/String;

    const-string v1, "TYPE_NATIVE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isRewardedVideo()Z
    .registers 2

    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/Placement;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/vungle/ads/internal/model/Placement;->isIncentivized:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public final setWakeupTime(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/model/Placement;->wakeupTime:Ljava/lang/Long;

    return-void
.end method

.method public final snooze(J)V
    .registers 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v2, 0x3e8

    int-to-long v2, v2

    mul-long p1, p1, v2

    add-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/ads/internal/model/Placement;->wakeupTime:Ljava/lang/Long;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Placement(identifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/Placement;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", referenceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/Placement;->referenceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", incentivized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/Placement;->incentivized:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", supportedTemplateTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/Placement;->supportedTemplateTypes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", supportedAdFormats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/Placement;->supportedAdFormats:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adRefreshDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/ads/internal/model/Placement;->adRefreshDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", headerBidding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vungle/ads/internal/model/Placement;->headerBidding:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", adSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/Placement;->adSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
