###### Class com.vungle.ads.internal.model.CommonRequestBody.RequestParam (com.vungle.ads.internal.model.CommonRequestBody$RequestParam)
.class public final Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;
.super Ljava/lang/Object;
.source "CommonRequestBody.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/model/CommonRequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestParam"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam$b;,
        Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008#\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 ;2\u00020\u0001:\u0002:;Bm\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0001\u0010\u000c\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0002\u0010\u0011B_\u0012\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0012J\u0011\u0010&\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u00c6\u0003J\u0010\u0010\'\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0002\u0010\u001fJ\u000b\u0010(\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u0010\u0010)\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0002\u0010\u001aJ\u000b\u0010*\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003Jh\u0010-\u001a\u00020\u00002\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001\u00a2\u0006\u0002\u0010.J\u0013\u0010/\u001a\u00020\u00082\u0008\u00100\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00101\u001a\u00020\u0003H\u00d6\u0001J\t\u00102\u001a\u00020\u0006H\u00d6\u0001J!\u00103\u001a\u0002042\u0006\u00105\u001a\u00020\u00002\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u000209H\u00c7\u0001R&\u0010\t\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u0015\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\n\n\u0002\u0010\u001b\u001a\u0004\u0008\u0019\u0010\u001aR\u001e\u0010\u000c\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001c\u0010\u0014\u001a\u0004\u0008\u001d\u0010\u0016R \u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010 \u0012\u0004\u0008\u001e\u0010\u0014\u001a\u0004\u0008\u0007\u0010\u001fR\u001e\u0010\r\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008!\u0010\u0014\u001a\u0004\u0008\"\u0010\u0016R\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u0016\u00a8\u0006<"
    }
    d2 = {
        "Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;",
        "",
        "seen1",
        "",
        "placements",
        "",
        "",
        "isHeaderBidding",
        "",
        "adSize",
        "adStartTime",
        "",
        "appId",
        "placementReferenceId",
        "user",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getAdSize$annotations",
        "()V",
        "getAdSize",
        "()Ljava/lang/String;",
        "setAdSize",
        "(Ljava/lang/String;)V",
        "getAdStartTime",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getAppId$annotations",
        "getAppId",
        "isHeaderBidding$annotations",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getPlacementReferenceId$annotations",
        "getPlacementReferenceId",
        "getPlacements",
        "()Ljava/util/List;",
        "getUser",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "(Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;",
        "equals",
        "other",
        "hashCode",
        "toString",
        "write$Self",
        "",
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
.field public static final Companion:Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam$b;


# instance fields
.field private adSize:Ljava/lang/String;

.field private final adStartTime:Ljava/lang/Long;

.field private final appId:Ljava/lang/String;

.field private final isHeaderBidding:Ljava/lang/Boolean;

.field private final placementReferenceId:Ljava/lang/String;

.field private final placements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final user:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam$b;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->Companion:Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 11

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7f

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;-><init>(Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/n;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/e1;)V
    .registers 11

    and-int/lit8 p9, p1, 0x0

    if-eqz p9, :cond_e

    sget-object p9, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam$a;->INSTANCE:Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam$a;

    invoke-virtual {p9}, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam$a;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p9

    const/4 v0, 0x0

    invoke-static {p1, v0, p9}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p9, p1, 0x1

    const/4 v0, 0x0

    if-nez p9, :cond_19

    iput-object v0, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->placements:Ljava/util/List;

    goto :goto_1b

    :cond_19
    iput-object p2, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->placements:Ljava/util/List;

    :goto_1b
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_22

    iput-object v0, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->isHeaderBidding:Ljava/lang/Boolean;

    goto :goto_24

    :cond_22
    iput-object p3, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->isHeaderBidding:Ljava/lang/Boolean;

    :goto_24
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2b

    iput-object v0, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->adSize:Ljava/lang/String;

    goto :goto_2d

    :cond_2b
    iput-object p4, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->adSize:Ljava/lang/String;

    :goto_2d
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_34

    iput-object v0, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->adStartTime:Ljava/lang/Long;

    goto :goto_36

    :cond_34
    iput-object p5, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->adStartTime:Ljava/lang/Long;

    :goto_36
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_3d

    iput-object v0, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->appId:Ljava/lang/String;

    goto :goto_3f

    :cond_3d
    iput-object p6, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->appId:Ljava/lang/String;

    :goto_3f
    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_46

    iput-object v0, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->placementReferenceId:Ljava/lang/String;

    goto :goto_48

    :cond_46
    iput-object p7, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->placementReferenceId:Ljava/lang/String;

    :goto_48
    and-int/lit8 p1, p1, 0x40

    if-nez p1, :cond_4f

    iput-object v0, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->user:Ljava/lang/String;

    goto :goto_51

    :cond_4f
    iput-object p8, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->user:Ljava/lang/String;

    :goto_51
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->placements:Ljava/util/List;

    iput-object p2, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->isHeaderBidding:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->adSize:Ljava/lang/String;

    iput-object p4, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->adStartTime:Ljava/lang/Long;

    iput-object p5, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->appId:Ljava/lang/String;

    iput-object p6, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->placementReferenceId:Ljava/lang/String;

    iput-object p7, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->user:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/n;)V
    .registers 16

    and-int/lit8 p9, p8, 0x1

    const/4 v0, 0x0

    if-eqz p9, :cond_7

    move-object p9, v0

    goto :goto_8

    :cond_7
    move-object p9, p1

    :goto_8
    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_e

    move-object v1, v0

    goto :goto_f

    :cond_e
    move-object v1, p2

    :goto_f
    and-int/lit8 p1, p8, 0x4

    if-eqz p1, :cond_15

    move-object v2, v0

    goto :goto_16

    :cond_15
    move-object v2, p3

    :goto_16
    and-int/lit8 p1, p8, 0x8

    if-eqz p1, :cond_1c

    move-object v3, v0

    goto :goto_1d

    :cond_1c
    move-object v3, p4

    :goto_1d
    and-int/lit8 p1, p8, 0x10

    if-eqz p1, :cond_23

    move-object v4, v0

    goto :goto_24

    :cond_23
    move-object v4, p5

    :goto_24
    and-int/lit8 p1, p8, 0x20

    if-eqz p1, :cond_2a

    move-object v5, v0

    goto :goto_2b

    :cond_2a
    move-object v5, p6

    :goto_2b
    and-int/lit8 p1, p8, 0x40

    if-eqz p1, :cond_31

    move-object p8, v0

    goto :goto_32

    :cond_31
    move-object p8, p7

    :goto_32
    move-object p1, p0

    move-object p2, p9

    move-object p3, v1

    move-object p4, v2

    move-object p5, v3

    move-object p6, v4

    move-object p7, v5

    invoke-direct/range {p1 .. p8}, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;-><init>(Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;
    .registers 15

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_6

    iget-object p1, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->placements:Ljava/util/List;

    :cond_6
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_c

    iget-object p2, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->isHeaderBidding:Ljava/lang/Boolean;

    :cond_c
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_13

    iget-object p3, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->adSize:Ljava/lang/String;

    :cond_13
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_1a

    iget-object p4, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->adStartTime:Ljava/lang/Long;

    :cond_1a
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_21

    iget-object p5, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->appId:Ljava/lang/String;

    :cond_21
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_28

    iget-object p6, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->placementReferenceId:Ljava/lang/String;

    :cond_28
    move-object v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_2f

    iget-object p7, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->user:Ljava/lang/String;

    :cond_2f
    move-object v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->copy(Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getAdSize$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getAppId$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getPlacementReferenceId$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic isHeaderBidding$annotations()V
    .registers 0

    return-void
.end method

.method public static final write$Self(Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .registers 8

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    :goto_17
    const/4 v1, 0x1

    goto :goto_1f

    :cond_19
    iget-object v1, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->placements:Ljava/util/List;

    if-eqz v1, :cond_1e

    goto :goto_17

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    if-eqz v1, :cond_2d

    new-instance v1, Lkotlinx/serialization/internal/c;

    sget-object v3, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    invoke-direct {v1, v3}, Lkotlinx/serialization/internal/c;-><init>(Lkotlinx/serialization/c;)V

    iget-object v3, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->placements:Ljava/util/List;

    invoke-interface {p1, p2, v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/i;Ljava/lang/Object;)V

    :cond_2d
    invoke-interface {p1, p2, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_35

    :goto_33
    const/4 v1, 0x1

    goto :goto_3b

    :cond_35
    iget-object v1, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->isHeaderBidding:Ljava/lang/Boolean;

    if-eqz v1, :cond_3a

    goto :goto_33

    :cond_3a
    const/4 v1, 0x0

    :goto_3b
    if-eqz v1, :cond_44

    sget-object v1, Lkotlinx/serialization/internal/f;->a:Lkotlinx/serialization/internal/f;

    iget-object v3, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->isHeaderBidding:Ljava/lang/Boolean;

    invoke-interface {p1, p2, v2, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/i;Ljava/lang/Object;)V

    :cond_44
    const/4 v1, 0x2

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_4d

    :goto_4b
    const/4 v3, 0x1

    goto :goto_53

    :cond_4d
    iget-object v3, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->adSize:Ljava/lang/String;

    if-eqz v3, :cond_52

    goto :goto_4b

    :cond_52
    const/4 v3, 0x0

    :goto_53
    if-eqz v3, :cond_5c

    sget-object v3, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    iget-object v4, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->adSize:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/i;Ljava/lang/Object;)V

    :cond_5c
    const/4 v1, 0x3

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_65

    :goto_63
    const/4 v3, 0x1

    goto :goto_6b

    :cond_65
    iget-object v3, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->adStartTime:Ljava/lang/Long;

    if-eqz v3, :cond_6a

    goto :goto_63

    :cond_6a
    const/4 v3, 0x0

    :goto_6b
    if-eqz v3, :cond_74

    sget-object v3, Lkotlinx/serialization/internal/r0;->a:Lkotlinx/serialization/internal/r0;

    iget-object v4, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->adStartTime:Ljava/lang/Long;

    invoke-interface {p1, p2, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/i;Ljava/lang/Object;)V

    :cond_74
    const/4 v1, 0x4

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_7d

    :goto_7b
    const/4 v3, 0x1

    goto :goto_83

    :cond_7d
    iget-object v3, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->appId:Ljava/lang/String;

    if-eqz v3, :cond_82

    goto :goto_7b

    :cond_82
    const/4 v3, 0x0

    :goto_83
    if-eqz v3, :cond_8c

    sget-object v3, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    iget-object v4, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->appId:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/i;Ljava/lang/Object;)V

    :cond_8c
    const/4 v1, 0x5

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_95

    :goto_93
    const/4 v3, 0x1

    goto :goto_9b

    :cond_95
    iget-object v3, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->placementReferenceId:Ljava/lang/String;

    if-eqz v3, :cond_9a

    goto :goto_93

    :cond_9a
    const/4 v3, 0x0

    :goto_9b
    if-eqz v3, :cond_a4

    sget-object v3, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    iget-object v4, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->placementReferenceId:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/i;Ljava/lang/Object;)V

    :cond_a4
    const/4 v1, 0x6

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_ad

    :goto_ab
    const/4 v0, 0x1

    goto :goto_b2

    :cond_ad
    iget-object v3, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->user:Ljava/lang/String;

    if-eqz v3, :cond_b2

    goto :goto_ab

    :cond_b2
    :goto_b2
    if-eqz v0, :cond_bb

    sget-object v0, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    iget-object p0, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->user:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/i;Ljava/lang/Object;)V

    :cond_bb
    return-void
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->placements:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->isHeaderBidding:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->adSize:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->adStartTime:Ljava/lang/Long;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->placementReferenceId:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->user:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;"
        }
    .end annotation

    new-instance v8, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;-><init>(Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->placements:Ljava/util/List;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->placements:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->isHeaderBidding:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->isHeaderBidding:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->adSize:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->adSize:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->adStartTime:Ljava/lang/Long;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->adStartTime:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->appId:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->appId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->placementReferenceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->placementReferenceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v2

    :cond_4e
    iget-object v1, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->user:Ljava/lang/String;

    iget-object p1, p1, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->user:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_59

    return v2

    :cond_59
    return v0
.end method

.method public final getAdSize()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->adSize:Ljava/lang/String;

    return-object v0
.end method

.method public final getAdStartTime()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->adStartTime:Ljava/lang/Long;

    return-object v0
.end method

.method public final getAppId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlacementReferenceId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->placementReferenceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlacements()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->placements:Ljava/util/List;

    return-object v0
.end method

.method public final getUser()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->user:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->placements:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->isHeaderBidding:Ljava/lang/Boolean;

    if-nez v2, :cond_13

    const/4 v2, 0x0

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->adSize:Ljava/lang/String;

    if-nez v2, :cond_20

    const/4 v2, 0x0

    goto :goto_24

    :cond_20
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->adStartTime:Ljava/lang/Long;

    if-nez v2, :cond_2d

    const/4 v2, 0x0

    goto :goto_31

    :cond_2d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->appId:Ljava/lang/String;

    if-nez v2, :cond_3a

    const/4 v2, 0x0

    goto :goto_3e

    :cond_3a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->placementReferenceId:Ljava/lang/String;

    if-nez v2, :cond_47

    const/4 v2, 0x0

    goto :goto_4b

    :cond_47
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->user:Ljava/lang/String;

    if-nez v2, :cond_53

    goto :goto_57

    :cond_53
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_57
    add-int/2addr v0, v1

    return v0
.end method

.method public final isHeaderBidding()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->isHeaderBidding:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final setAdSize(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->adSize:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestParam(placements="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->placements:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isHeaderBidding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->isHeaderBidding:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->adSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->adStartTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", appId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", placementReferenceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->placementReferenceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
