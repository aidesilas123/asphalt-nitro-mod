###### Class com.vungle.ads.internal.model.DeviceNode (com.vungle.ads.internal.model.DeviceNode)
.class public final Lcom/vungle/ads/internal/model/DeviceNode;
.super Ljava/lang/Object;
.source "DeviceNode.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;,
        Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;,
        Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;,
        Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;,
        Lcom/vungle/ads/internal/model/DeviceNode$b;,
        Lcom/vungle/ads/internal/model/DeviceNode$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\'\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0087\u0008\u0018\u0000 H2\u00020\u0001:\u0006EFGHIJB\u0083\u0001\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0002\u0010\u0013Bq\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0002\u0010\u0014J\t\u0010,\u001a\u00020\u0005H\u00c6\u0003J\u0010\u0010-\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010!J\u000b\u0010.\u001a\u0004\u0018\u00010\u0010H\u00c6\u0003J\t\u0010/\u001a\u00020\u0005H\u00c6\u0003J\t\u00100\u001a\u00020\u0005H\u00c6\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u00102\u001a\u00020\u0005H\u00c6\u0003J\t\u00103\u001a\u00020\u0003H\u00c6\u0003J\t\u00104\u001a\u00020\u0003H\u00c6\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u0086\u0001\u00107\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\u00052\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00032\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u00c6\u0001\u00a2\u0006\u0002\u00108J\u0013\u00109\u001a\u00020:2\u0008\u0010;\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010<\u001a\u00020\u0003H\u00d6\u0001J\t\u0010=\u001a\u00020\u0005H\u00d6\u0001J!\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020\u00002\u0006\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020DH\u00c7\u0001R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u001c\u0010\r\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0016\"\u0004\u0008\u001e\u0010\u001fR\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010$\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u0016R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\u0016R\u0011\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010\u0016R\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\u0016R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010\u0016\"\u0004\u0008*\u0010\u001fR\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010\u001c\u00a8\u0006K"
    }
    d2 = {
        "Lcom/vungle/ads/internal/model/DeviceNode;",
        "",
        "seen1",
        "",
        "make",
        "",
        "model",
        "osv",
        "carrier",
        "os",
        "w",
        "h",
        "ua",
        "ifa",
        "lmt",
        "ext",
        "Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;)V",
        "getCarrier",
        "()Ljava/lang/String;",
        "getExt",
        "()Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;",
        "setExt",
        "(Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;)V",
        "getH",
        "()I",
        "getIfa",
        "setIfa",
        "(Ljava/lang/String;)V",
        "getLmt",
        "()Ljava/lang/Integer;",
        "setLmt",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getMake",
        "getModel",
        "getOs",
        "getOsv",
        "getUa",
        "setUa",
        "getW",
        "component1",
        "component10",
        "component11",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;)Lcom/vungle/ads/internal/model/DeviceNode;",
        "equals",
        "",
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
        "AndroidAmazonExt",
        "CommonVungleExt",
        "Companion",
        "DeviceExt",
        "VungleExt",
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
.field public static final Companion:Lcom/vungle/ads/internal/model/DeviceNode$b;


# instance fields
.field private final carrier:Ljava/lang/String;

.field private ext:Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;

.field private final h:I

.field private ifa:Ljava/lang/String;

.field private lmt:Ljava/lang/Integer;

.field private final make:Ljava/lang/String;

.field private final model:Ljava/lang/String;

.field private final os:Ljava/lang/String;

.field private final osv:Ljava/lang/String;

.field private ua:Ljava/lang/String;

.field private final w:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/vungle/ads/internal/model/DeviceNode$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/model/DeviceNode$b;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lcom/vungle/ads/internal/model/DeviceNode;->Companion:Lcom/vungle/ads/internal/model/DeviceNode$b;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;Lkotlinx/serialization/internal/e1;)V
    .registers 15

    and-int/lit8 p13, p1, 0x77

    const/16 v0, 0x77

    if-eq v0, p13, :cond_f

    sget-object p13, Lcom/vungle/ads/internal/model/DeviceNode$a;->INSTANCE:Lcom/vungle/ads/internal/model/DeviceNode$a;

    invoke-virtual {p13}, Lcom/vungle/ads/internal/model/DeviceNode$a;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p13

    invoke-static {p1, v0, p13}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vungle/ads/internal/model/DeviceNode;->make:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/ads/internal/model/DeviceNode;->model:Ljava/lang/String;

    iput-object p4, p0, Lcom/vungle/ads/internal/model/DeviceNode;->osv:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x8

    const/4 p3, 0x0

    if-nez p2, :cond_20

    iput-object p3, p0, Lcom/vungle/ads/internal/model/DeviceNode;->carrier:Ljava/lang/String;

    goto :goto_22

    :cond_20
    iput-object p5, p0, Lcom/vungle/ads/internal/model/DeviceNode;->carrier:Ljava/lang/String;

    :goto_22
    iput-object p6, p0, Lcom/vungle/ads/internal/model/DeviceNode;->os:Ljava/lang/String;

    iput p7, p0, Lcom/vungle/ads/internal/model/DeviceNode;->w:I

    iput p8, p0, Lcom/vungle/ads/internal/model/DeviceNode;->h:I

    and-int/lit16 p2, p1, 0x80

    if-nez p2, :cond_2f

    iput-object p3, p0, Lcom/vungle/ads/internal/model/DeviceNode;->ua:Ljava/lang/String;

    goto :goto_31

    :cond_2f
    iput-object p9, p0, Lcom/vungle/ads/internal/model/DeviceNode;->ua:Ljava/lang/String;

    :goto_31
    and-int/lit16 p2, p1, 0x100

    if-nez p2, :cond_38

    iput-object p3, p0, Lcom/vungle/ads/internal/model/DeviceNode;->ifa:Ljava/lang/String;

    goto :goto_3a

    :cond_38
    iput-object p10, p0, Lcom/vungle/ads/internal/model/DeviceNode;->ifa:Ljava/lang/String;

    :goto_3a
    and-int/lit16 p2, p1, 0x200

    if-nez p2, :cond_41

    iput-object p3, p0, Lcom/vungle/ads/internal/model/DeviceNode;->lmt:Ljava/lang/Integer;

    goto :goto_43

    :cond_41
    iput-object p11, p0, Lcom/vungle/ads/internal/model/DeviceNode;->lmt:Ljava/lang/Integer;

    :goto_43
    and-int/lit16 p1, p1, 0x400

    if-nez p1, :cond_4a

    iput-object p3, p0, Lcom/vungle/ads/internal/model/DeviceNode;->ext:Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;

    goto :goto_4c

    :cond_4a
    iput-object p12, p0, Lcom/vungle/ads/internal/model/DeviceNode;->ext:Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;

    :goto_4c
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;)V
    .registers 13

    const-string v0, "make"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "osv"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "os"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/model/DeviceNode;->make:Ljava/lang/String;

    iput-object p2, p0, Lcom/vungle/ads/internal/model/DeviceNode;->model:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/ads/internal/model/DeviceNode;->osv:Ljava/lang/String;

    iput-object p4, p0, Lcom/vungle/ads/internal/model/DeviceNode;->carrier:Ljava/lang/String;

    iput-object p5, p0, Lcom/vungle/ads/internal/model/DeviceNode;->os:Ljava/lang/String;

    iput p6, p0, Lcom/vungle/ads/internal/model/DeviceNode;->w:I

    iput p7, p0, Lcom/vungle/ads/internal/model/DeviceNode;->h:I

    iput-object p8, p0, Lcom/vungle/ads/internal/model/DeviceNode;->ua:Ljava/lang/String;

    iput-object p9, p0, Lcom/vungle/ads/internal/model/DeviceNode;->ifa:Ljava/lang/String;

    iput-object p10, p0, Lcom/vungle/ads/internal/model/DeviceNode;->lmt:Ljava/lang/Integer;

    iput-object p11, p0, Lcom/vungle/ads/internal/model/DeviceNode;->ext:Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;ILkotlin/jvm/internal/n;)V
    .registers 29

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move-object v7, v2

    goto :goto_b

    :cond_9
    move-object/from16 v7, p4

    :goto_b
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_11

    move-object v11, v2

    goto :goto_13

    :cond_11
    move-object/from16 v11, p8

    :goto_13
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_19

    move-object v12, v2

    goto :goto_1b

    :cond_19
    move-object/from16 v12, p9

    :goto_1b
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_21

    move-object v13, v2

    goto :goto_23

    :cond_21
    move-object/from16 v13, p10

    :goto_23
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_29

    move-object v14, v2

    goto :goto_2b

    :cond_29
    move-object/from16 v14, p11

    :goto_2b
    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v3 .. v14}, Lcom/vungle/ads/internal/model/DeviceNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/vungle/ads/internal/model/DeviceNode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;ILjava/lang/Object;)Lcom/vungle/ads/internal/model/DeviceNode;
    .registers 26

    move-object v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/vungle/ads/internal/model/DeviceNode;->make:Ljava/lang/String;

    goto :goto_b

    :cond_a
    move-object v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget-object v3, v0, Lcom/vungle/ads/internal/model/DeviceNode;->model:Ljava/lang/String;

    goto :goto_13

    :cond_12
    move-object v3, p2

    :goto_13
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lcom/vungle/ads/internal/model/DeviceNode;->osv:Ljava/lang/String;

    goto :goto_1b

    :cond_1a
    move-object v4, p3

    :goto_1b
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_22

    iget-object v5, v0, Lcom/vungle/ads/internal/model/DeviceNode;->carrier:Ljava/lang/String;

    goto :goto_24

    :cond_22
    move-object/from16 v5, p4

    :goto_24
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2b

    iget-object v6, v0, Lcom/vungle/ads/internal/model/DeviceNode;->os:Ljava/lang/String;

    goto :goto_2d

    :cond_2b
    move-object/from16 v6, p5

    :goto_2d
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_34

    iget v7, v0, Lcom/vungle/ads/internal/model/DeviceNode;->w:I

    goto :goto_36

    :cond_34
    move/from16 v7, p6

    :goto_36
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_3d

    iget v8, v0, Lcom/vungle/ads/internal/model/DeviceNode;->h:I

    goto :goto_3f

    :cond_3d
    move/from16 v8, p7

    :goto_3f
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_46

    iget-object v9, v0, Lcom/vungle/ads/internal/model/DeviceNode;->ua:Ljava/lang/String;

    goto :goto_48

    :cond_46
    move-object/from16 v9, p8

    :goto_48
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_4f

    iget-object v10, v0, Lcom/vungle/ads/internal/model/DeviceNode;->ifa:Ljava/lang/String;

    goto :goto_51

    :cond_4f
    move-object/from16 v10, p9

    :goto_51
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_58

    iget-object v11, v0, Lcom/vungle/ads/internal/model/DeviceNode;->lmt:Ljava/lang/Integer;

    goto :goto_5a

    :cond_58
    move-object/from16 v11, p10

    :goto_5a
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_61

    iget-object v1, v0, Lcom/vungle/ads/internal/model/DeviceNode;->ext:Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;

    goto :goto_63

    :cond_61
    move-object/from16 v1, p11

    :goto_63
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v1

    invoke-virtual/range {p0 .. p11}, Lcom/vungle/ads/internal/model/DeviceNode;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;)Lcom/vungle/ads/internal/model/DeviceNode;

    move-result-object v0

    return-object v0
.end method

.method public static final write$Self(Lcom/vungle/ads/internal/model/DeviceNode;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .registers 8

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode;->make:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode;->model:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode;->osv:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-interface {p1, p2, v3, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_2a

    :goto_28
    const/4 v3, 0x1

    goto :goto_30

    :cond_2a
    iget-object v3, p0, Lcom/vungle/ads/internal/model/DeviceNode;->carrier:Ljava/lang/String;

    if-eqz v3, :cond_2f

    goto :goto_28

    :cond_2f
    const/4 v3, 0x0

    :goto_30
    if-eqz v3, :cond_39

    sget-object v3, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    iget-object v4, p0, Lcom/vungle/ads/internal/model/DeviceNode;->carrier:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/i;Ljava/lang/Object;)V

    :cond_39
    const/4 v0, 0x4

    iget-object v3, p0, Lcom/vungle/ads/internal/model/DeviceNode;->os:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v0, 0x5

    iget v3, p0, Lcom/vungle/ads/internal/model/DeviceNode;->w:I

    invoke-interface {p1, p2, v0, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    const/4 v0, 0x6

    iget v3, p0, Lcom/vungle/ads/internal/model/DeviceNode;->h:I

    invoke-interface {p1, p2, v0, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    const/4 v0, 0x7

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_54

    :goto_52
    const/4 v3, 0x1

    goto :goto_5a

    :cond_54
    iget-object v3, p0, Lcom/vungle/ads/internal/model/DeviceNode;->ua:Ljava/lang/String;

    if-eqz v3, :cond_59

    goto :goto_52

    :cond_59
    const/4 v3, 0x0

    :goto_5a
    if-eqz v3, :cond_63

    sget-object v3, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    iget-object v4, p0, Lcom/vungle/ads/internal/model/DeviceNode;->ua:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/i;Ljava/lang/Object;)V

    :cond_63
    const/16 v0, 0x8

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_6d

    :goto_6b
    const/4 v3, 0x1

    goto :goto_73

    :cond_6d
    iget-object v3, p0, Lcom/vungle/ads/internal/model/DeviceNode;->ifa:Ljava/lang/String;

    if-eqz v3, :cond_72

    goto :goto_6b

    :cond_72
    const/4 v3, 0x0

    :goto_73
    if-eqz v3, :cond_7c

    sget-object v3, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    iget-object v4, p0, Lcom/vungle/ads/internal/model/DeviceNode;->ifa:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/i;Ljava/lang/Object;)V

    :cond_7c
    const/16 v0, 0x9

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_86

    :goto_84
    const/4 v3, 0x1

    goto :goto_8c

    :cond_86
    iget-object v3, p0, Lcom/vungle/ads/internal/model/DeviceNode;->lmt:Ljava/lang/Integer;

    if-eqz v3, :cond_8b

    goto :goto_84

    :cond_8b
    const/4 v3, 0x0

    :goto_8c
    if-eqz v3, :cond_95

    sget-object v3, Lkotlinx/serialization/internal/i0;->a:Lkotlinx/serialization/internal/i0;

    iget-object v4, p0, Lcom/vungle/ads/internal/model/DeviceNode;->lmt:Ljava/lang/Integer;

    invoke-interface {p1, p2, v0, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/i;Ljava/lang/Object;)V

    :cond_95
    const/16 v0, 0xa

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_9f

    :goto_9d
    const/4 v1, 0x1

    goto :goto_a4

    :cond_9f
    iget-object v3, p0, Lcom/vungle/ads/internal/model/DeviceNode;->ext:Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;

    if-eqz v3, :cond_a4

    goto :goto_9d

    :cond_a4
    :goto_a4
    if-eqz v1, :cond_ad

    sget-object v1, Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt$a;->INSTANCE:Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt$a;

    iget-object p0, p0, Lcom/vungle/ads/internal/model/DeviceNode;->ext:Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;

    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/i;Ljava/lang/Object;)V

    :cond_ad
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode;->make:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode;->lmt:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component11()Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode;->ext:Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode;->model:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode;->osv:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode;->carrier:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode;->os:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()I
    .registers 2

    iget v0, p0, Lcom/vungle/ads/internal/model/DeviceNode;->w:I

    return v0
.end method

.method public final component7()I
    .registers 2

    iget v0, p0, Lcom/vungle/ads/internal/model/DeviceNode;->h:I

    return v0
.end method

.method public final component8()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode;->ua:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode;->ifa:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;)Lcom/vungle/ads/internal/model/DeviceNode;
    .registers 25

    const-string v0, "make"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "osv"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "os"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/vungle/ads/internal/model/DeviceNode;

    move-object v1, v0

    move-object/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v1 .. v12}, Lcom/vungle/ads/internal/model/DeviceNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/vungle/ads/internal/model/DeviceNode;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/vungle/ads/internal/model/DeviceNode;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/DeviceNode;->make:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/DeviceNode;->make:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/vungle/ads/internal/model/DeviceNode;->model:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/DeviceNode;->model:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/vungle/ads/internal/model/DeviceNode;->osv:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/DeviceNode;->osv:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/vungle/ads/internal/model/DeviceNode;->carrier:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/DeviceNode;->carrier:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/vungle/ads/internal/model/DeviceNode;->os:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/DeviceNode;->os:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget v1, p0, Lcom/vungle/ads/internal/model/DeviceNode;->w:I

    iget v3, p1, Lcom/vungle/ads/internal/model/DeviceNode;->w:I

    if-eq v1, v3, :cond_4a

    return v2

    :cond_4a
    iget v1, p0, Lcom/vungle/ads/internal/model/DeviceNode;->h:I

    iget v3, p1, Lcom/vungle/ads/internal/model/DeviceNode;->h:I

    if-eq v1, v3, :cond_51

    return v2

    :cond_51
    iget-object v1, p0, Lcom/vungle/ads/internal/model/DeviceNode;->ua:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/DeviceNode;->ua:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    return v2

    :cond_5c
    iget-object v1, p0, Lcom/vungle/ads/internal/model/DeviceNode;->ifa:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/DeviceNode;->ifa:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_67

    return v2

    :cond_67
    iget-object v1, p0, Lcom/vungle/ads/internal/model/DeviceNode;->lmt:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/DeviceNode;->lmt:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_72

    return v2

    :cond_72
    iget-object v1, p0, Lcom/vungle/ads/internal/model/DeviceNode;->ext:Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;

    iget-object p1, p1, Lcom/vungle/ads/internal/model/DeviceNode;->ext:Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7d

    return v2

    :cond_7d
    return v0
.end method

.method public final getCarrier()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode;->carrier:Ljava/lang/String;

    return-object v0
.end method

.method public final getExt()Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode;->ext:Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;

    return-object v0
.end method

.method public final getH()I
    .registers 2

    iget v0, p0, Lcom/vungle/ads/internal/model/DeviceNode;->h:I

    return v0
.end method

.method public final getIfa()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode;->ifa:Ljava/lang/String;

    return-object v0
.end method

.method public final getLmt()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode;->lmt:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMake()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode;->make:Ljava/lang/String;

    return-object v0
.end method

.method public final getModel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode;->model:Ljava/lang/String;

    return-object v0
.end method

.method public final getOs()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode;->os:Ljava/lang/String;

    return-object v0
.end method

.method public final getOsv()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode;->osv:Ljava/lang/String;

    return-object v0
.end method

.method public final getUa()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode;->ua:Ljava/lang/String;

    return-object v0
.end method

.method public final getW()I
    .registers 2

    iget v0, p0, Lcom/vungle/ads/internal/model/DeviceNode;->w:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode;->make:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/model/DeviceNode;->model:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/model/DeviceNode;->osv:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/model/DeviceNode;->carrier:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_21

    const/4 v1, 0x0

    goto :goto_25

    :cond_21
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_25
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/model/DeviceNode;->os:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/vungle/ads/internal/model/DeviceNode;->w:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/vungle/ads/internal/model/DeviceNode;->h:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/model/DeviceNode;->ua:Ljava/lang/String;

    if-nez v1, :cond_41

    const/4 v1, 0x0

    goto :goto_45

    :cond_41
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_45
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/model/DeviceNode;->ifa:Ljava/lang/String;

    if-nez v1, :cond_4e

    const/4 v1, 0x0

    goto :goto_52

    :cond_4e
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_52
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/model/DeviceNode;->lmt:Ljava/lang/Integer;

    if-nez v1, :cond_5b

    const/4 v1, 0x0

    goto :goto_5f

    :cond_5b
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_5f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/model/DeviceNode;->ext:Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;

    if-nez v1, :cond_67

    goto :goto_6b

    :cond_67
    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;->hashCode()I

    move-result v2

    :goto_6b
    add-int/2addr v0, v2

    return v0
.end method

.method public final setExt(Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/model/DeviceNode;->ext:Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;

    return-void
.end method

.method public final setIfa(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/model/DeviceNode;->ifa:Ljava/lang/String;

    return-void
.end method

.method public final setLmt(Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/model/DeviceNode;->lmt:Ljava/lang/Integer;

    return-void
.end method

.method public final setUa(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/model/DeviceNode;->ua:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceNode(make="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/DeviceNode;->make:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/DeviceNode;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", osv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/DeviceNode;->osv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", carrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/DeviceNode;->carrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", os="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/DeviceNode;->os:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/ads/internal/model/DeviceNode;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/ads/internal/model/DeviceNode;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ua="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/DeviceNode;->ua:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ifa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/DeviceNode;->ifa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lmt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/DeviceNode;->lmt:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/DeviceNode;->ext:Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.ads.internal.model.DeviceNode.AndroidAmazonExt (com.vungle.ads.internal.model.DeviceNode$AndroidAmazonExt)
.class public final Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;
.super Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;
.source "DeviceNode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/model/DeviceNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AndroidAmazonExt"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt$b;,
        Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 42\u00020\u0001:\u000234B\u00e5\u0001\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007\u0012\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0001\u0010\t\u001a\u00020\n\u0012\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u0003\u0012\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0001\u0010\u0012\u001a\u00020\n\u0012\u0008\u0008\u0001\u0010\u0013\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0014\u001a\u00020\u0007\u0012\u0008\u0008\u0001\u0010\u0015\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0016\u001a\u00020\u0007\u0012\n\u0008\u0001\u0010\u0017\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001b\u00a2\u0006\u0002\u0010\u001cB\u001d\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u001dJ\u000b\u0010$\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J!\u0010&\u001a\u00020\u00002\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\'\u001a\u00020\u00072\u0008\u0010(\u001a\u0004\u0018\u00010)H\u00d6\u0003J\t\u0010*\u001a\u00020\u0003H\u00d6\u0001J\t\u0010+\u001a\u00020\u0005H\u00d6\u0001J!\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\u00002\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u000202H\u00c7\u0001R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u001f\"\u0004\u0008#\u0010!\u00a8\u00065"
    }
    d2 = {
        "Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;",
        "Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;",
        "seen1",
        "",
        "androidId",
        "",
        "isGooglePlayServicesAvailable",
        "",
        "appSetId",
        "batteryLevel",
        "",
        "batteryState",
        "batterySaverEnabled",
        "connectionType",
        "connectionTypeDetail",
        "locale",
        "language",
        "timeZone",
        "volumeLevel",
        "soundEnabled",
        "isTv",
        "sdCardAvailable",
        "isSideloadEnabled",
        "osName",
        "gaid",
        "amazonAdvertisingId",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;ZLjava/lang/String;FLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FIZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "getAmazonAdvertisingId",
        "()Ljava/lang/String;",
        "setAmazonAdvertisingId",
        "(Ljava/lang/String;)V",
        "getGaid",
        "setGaid",
        "component1",
        "component2",
        "copy",
        "equals",
        "other",
        "",
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
.field public static final Companion:Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt$b;


# instance fields
.field private amazonAdvertisingId:Ljava/lang/String;

.field private gaid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt$b;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;->Companion:Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/n;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ZLjava/lang/String;FLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FIZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/e1;)V
    .registers 42

    move-object/from16 v15, p0

    move/from16 v14, p1

    and-int/lit8 v0, v14, 0x0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt$a;->INSTANCE:Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt$a;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt$a;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v14, v1, v0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_12
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p21

    invoke-direct/range {v0 .. v19}, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;-><init>(ILjava/lang/String;ZLjava/lang/String;FLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FIZIZLjava/lang/String;Lkotlinx/serialization/internal/e1;)V

    const/high16 v0, 0x20000

    and-int v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_49

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;->gaid:Ljava/lang/String;

    goto :goto_4f

    :cond_49
    move-object/from16 v0, p0

    move-object/from16 v2, p19

    iput-object v2, v0, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;->gaid:Ljava/lang/String;

    :goto_4f
    const/high16 v2, 0x40000

    and-int v2, p1, v2

    if-nez v2, :cond_56

    goto :goto_58

    :cond_56
    move-object/from16 v1, p20

    :goto_58
    iput-object v1, v0, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;->amazonAdvertisingId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;->gaid:Ljava/lang/String;

    iput-object p2, p0, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;->amazonAdvertisingId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/n;)V
    .registers 6

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_b

    move-object p2, v0

    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;->gaid:Ljava/lang/String;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;->amazonAdvertisingId:Ljava/lang/String;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;->copy(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;

    move-result-object p0

    return-object p0
.end method

.method public static final write$Self(Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .registers 8

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->write$Self(Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/16 v0, 0x11

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    :goto_1c
    const/4 v1, 0x1

    goto :goto_24

    :cond_1e
    iget-object v1, p0, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;->gaid:Ljava/lang/String;

    if-eqz v1, :cond_23

    goto :goto_1c

    :cond_23
    const/4 v1, 0x0

    :goto_24
    if-eqz v1, :cond_2d

    sget-object v1, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    iget-object v4, p0, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;->gaid:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/i;Ljava/lang/Object;)V

    :cond_2d
    const/16 v0, 0x12

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_37

    :goto_35
    const/4 v2, 0x1

    goto :goto_3c

    :cond_37
    iget-object v1, p0, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;->amazonAdvertisingId:Ljava/lang/String;

    if-eqz v1, :cond_3c

    goto :goto_35

    :cond_3c
    :goto_3c
    if-eqz v2, :cond_45

    sget-object v1, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    iget-object p0, p0, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;->amazonAdvertisingId:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/i;Ljava/lang/Object;)V

    :cond_45
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;->gaid:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;->amazonAdvertisingId:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;
    .registers 4

    new-instance v0, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;

    invoke-direct {v0, p1, p2}, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;->gaid:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;->gaid:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;->amazonAdvertisingId:Ljava/lang/String;

    iget-object p1, p1, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;->amazonAdvertisingId:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getAmazonAdvertisingId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;->amazonAdvertisingId:Ljava/lang/String;

    return-object v0
.end method

.method public final getGaid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;->gaid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;->gaid:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;->amazonAdvertisingId:Ljava/lang/String;

    if-nez v2, :cond_12

    goto :goto_16

    :cond_12
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_16
    add-int/2addr v0, v1

    return v0
.end method

.method public final setAmazonAdvertisingId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;->amazonAdvertisingId:Ljava/lang/String;

    return-void
.end method

.method public final setGaid(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;->gaid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidAmazonExt(gaid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;->gaid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", amazonAdvertisingId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;->amazonAdvertisingId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.ads.internal.model.DeviceNode.AndroidAmazonExt.a (com.vungle.ads.internal.model.DeviceNode$AndroidAmazonExt$a)
.class public final Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt$a;
.super Ljava/lang/Object;
.source "DeviceNode.kt"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0018\u0010\u0008\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\n0\tH\u00d6\u0001\u00a2\u0006\u0002\u0010\u000bJ\u0011\u0010\u000c\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002H\u00d6\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VX\u00d6\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0014"
    }
    d2 = {
        "com/vungle/ads/internal/model/DeviceNode.AndroidAmazonExt.$serializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;",
        "()V",
        "descriptor",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "getDescriptor",
        "()Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "childSerializers",
        "",
        "Lkotlinx/serialization/KSerializer;",
        "()[Lkotlinx/serialization/KSerializer;",
        "deserialize",
        "decoder",
        "Lkotlinx/serialization/encoding/Decoder;",
        "serialize",
        "",
        "encoder",
        "Lkotlinx/serialization/encoding/Encoder;",
        "value",
        "vungle-ads_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt$a;

.field public static final synthetic descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt$a;

    invoke-direct {v0}, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt$a;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt$a;->INSTANCE:Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt$a;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.vungle.ads.internal.model.DeviceNode.AndroidAmazonExt"

    const/16 v3, 0x13

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "android_id"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "is_google_play_services_available"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "app_set_id"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "battery_level"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "battery_state"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "battery_saver_enabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "connection_type"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "connection_type_detail"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "locale"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "language"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "time_zone"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "volume_level"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "sound_enabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "is_tv"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "sd_card_available"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "is_sideload_enabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "os_name"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "gaid"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "amazonAdvertisingId"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    sput-object v1, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt$a;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public childSerializers()[Lkotlinx/serialization/c;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/c<",
            "*>;"
        }
    .end annotation

    const/16 v0, 0x13

    new-array v0, v0, [Lkotlinx/serialization/c;

    sget-object v1, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    sget-object v2, Lkotlinx/serialization/internal/f;->a:Lkotlinx/serialization/internal/f;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v0, v4

    sget-object v3, Lkotlinx/serialization/internal/a0;->a:Lkotlinx/serialization/internal/a0;

    const/4 v4, 0x3

    aput-object v3, v0, v4

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v0, v5

    sget-object v4, Lkotlinx/serialization/internal/i0;->a:Lkotlinx/serialization/internal/i0;

    const/4 v5, 0x5

    aput-object v4, v0, v5

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v5

    const/4 v6, 0x6

    aput-object v5, v0, v6

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v5

    const/4 v6, 0x7

    aput-object v5, v0, v6

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v5

    const/16 v6, 0x8

    aput-object v5, v0, v6

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v5

    const/16 v6, 0x9

    aput-object v5, v0, v6

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v5

    const/16 v6, 0xa

    aput-object v5, v0, v6

    const/16 v5, 0xb

    aput-object v3, v0, v5

    const/16 v3, 0xc

    aput-object v4, v0, v3

    const/16 v3, 0xd

    aput-object v2, v0, v3

    const/16 v3, 0xe

    aput-object v4, v0, v3

    const/16 v3, 0xf

    aput-object v2, v0, v3

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v2

    const/16 v3, 0x10

    aput-object v2, v0, v3

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v2

    const/16 v3, 0x11

    aput-object v2, v0, v3

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    return-object v0
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;
    .registers 35

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt$a;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->p()Z

    move-result v2

    const/16 v9, 0xb

    const/16 v10, 0xa

    const/16 v11, 0x9

    const/4 v12, 0x7

    const/4 v13, 0x6

    const/4 v14, 0x5

    const/4 v15, 0x3

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v2, :cond_b8

    sget-object v2, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    invoke-interface {v0, v1, v7, v2, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v1, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->C(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v6

    invoke-interface {v0, v1, v5, v2, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v1, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->u(Lkotlinx/serialization/descriptors/SerialDescriptor;I)F

    move-result v15

    invoke-interface {v0, v1, v3, v2, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v1, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v14

    invoke-interface {v0, v1, v13, v2, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v0, v1, v12, v2, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v0, v1, v4, v2, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v1, v11, v2, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v0, v1, v10, v2, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v0, v1, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->u(Lkotlinx/serialization/descriptors/SerialDescriptor;I)F

    move-result v9

    const/16 v8, 0xc

    invoke-interface {v0, v1, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v8

    move-object/from16 v21, v3

    const/16 v3, 0xd

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->C(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    move/from16 v20, v3

    const/16 v3, 0xe

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v3

    move/from16 v19, v3

    const/16 v3, 0xf

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->C(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    move/from16 v18, v3

    move-object/from16 v17, v7

    const/16 v3, 0x10

    const/4 v7, 0x0

    invoke-interface {v0, v1, v3, v2, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v22, v3

    const/16 v3, 0x11

    invoke-interface {v0, v1, v3, v2, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move/from16 v16, v6

    const/16 v6, 0x12

    invoke-interface {v0, v1, v6, v2, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const v6, 0x7ffff

    move-object v7, v5

    move/from16 v28, v9

    move/from16 v29, v14

    move/from16 v30, v15

    move/from16 v9, v16

    move/from16 v26, v18

    const v5, 0x7ffff

    move-object v14, v4

    move/from16 v18, v8

    move-object/from16 v16, v10

    move-object v15, v11

    move-object v11, v3

    move-object/from16 v3, v21

    move/from16 v21, v19

    move/from16 v19, v20

    move-object/from16 v20, v22

    move-object/from16 v32, v13

    move-object v13, v12

    move-object/from16 v12, v32

    goto/16 :goto_248

    :cond_b8
    move-object v7, v8

    const/4 v2, 0x1

    const/16 v6, 0x12

    const/4 v8, 0x0

    const/16 v22, 0x0

    move-object v2, v7

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v10, v5

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v25, v15

    const/4 v7, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x1

    :goto_dc
    if-eqz v31, :cond_22f

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v9

    packed-switch v9, :pswitch_data_280

    new-instance v0, Lkotlinx/serialization/k;

    invoke-direct {v0, v9}, Lkotlinx/serialization/k;-><init>(I)V

    throw v0

    :pswitch_eb
    sget-object v9, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    invoke-interface {v0, v1, v6, v9, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const/high16 v9, 0x40000

    or-int/2addr v8, v9

    goto/16 :goto_21c

    :pswitch_f6
    sget-object v9, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    const/16 v6, 0x11

    invoke-interface {v0, v1, v6, v9, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    const/high16 v9, 0x20000

    goto :goto_10d

    :pswitch_101
    const/16 v6, 0x11

    sget-object v9, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    const/16 v6, 0x10

    invoke-interface {v0, v1, v6, v9, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/high16 v9, 0x10000

    :goto_10d
    or-int/2addr v8, v9

    goto/16 :goto_21a

    :pswitch_110
    const/16 v6, 0x10

    const/16 v9, 0xf

    invoke-interface {v0, v1, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->C(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v23

    const v17, 0x8000

    or-int v8, v8, v17

    goto/16 :goto_21a

    :pswitch_11f
    const/16 v6, 0xe

    const/16 v9, 0xf

    invoke-interface {v0, v1, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v22

    or-int/lit16 v8, v8, 0x4000

    goto/16 :goto_21a

    :pswitch_12b
    const/16 v6, 0xe

    const/16 v7, 0xd

    const/16 v9, 0xf

    invoke-interface {v0, v1, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->C(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v18

    or-int/lit16 v8, v8, 0x2000

    move/from16 v7, v18

    goto/16 :goto_21a

    :pswitch_13b
    const/16 v6, 0xc

    const/16 v9, 0xf

    const/16 v18, 0xd

    invoke-interface {v0, v1, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v27

    or-int/lit16 v8, v8, 0x1000

    goto/16 :goto_21a

    :pswitch_149
    const/16 v6, 0xb

    const/16 v9, 0xf

    const/16 v18, 0xd

    invoke-interface {v0, v1, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->u(Lkotlinx/serialization/descriptors/SerialDescriptor;I)F

    move-result v28

    or-int/lit16 v8, v8, 0x800

    goto/16 :goto_21a

    :pswitch_157
    const/16 v9, 0xf

    const/16 v18, 0xd

    sget-object v6, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    move-object/from16 v20, v4

    const/16 v4, 0xa

    invoke-interface {v0, v1, v4, v6, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    or-int/lit16 v8, v8, 0x400

    goto/16 :goto_218

    :pswitch_169
    move-object/from16 v20, v4

    const/16 v4, 0xa

    const/16 v9, 0xf

    const/16 v18, 0xd

    sget-object v6, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    const/16 v4, 0x9

    invoke-interface {v0, v1, v4, v6, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    or-int/lit16 v8, v8, 0x200

    goto/16 :goto_218

    :pswitch_17d
    move-object/from16 v20, v4

    const/16 v4, 0x9

    const/16 v9, 0xf

    const/16 v18, 0xd

    sget-object v6, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    const/16 v4, 0x8

    invoke-interface {v0, v1, v4, v6, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    or-int/lit16 v8, v8, 0x100

    goto/16 :goto_218

    :pswitch_191
    move-object/from16 v20, v4

    const/16 v4, 0x8

    const/16 v9, 0xf

    const/16 v18, 0xd

    sget-object v6, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    const/4 v4, 0x7

    invoke-interface {v0, v1, v4, v6, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    or-int/lit16 v8, v8, 0x80

    goto/16 :goto_218

    :pswitch_1a4
    move-object/from16 v20, v4

    const/4 v4, 0x7

    const/16 v9, 0xf

    const/16 v18, 0xd

    sget-object v6, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    const/4 v4, 0x6

    invoke-interface {v0, v1, v4, v6, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    or-int/lit8 v8, v8, 0x40

    goto :goto_218

    :pswitch_1b5
    move-object/from16 v20, v4

    const/4 v4, 0x6

    const/4 v6, 0x5

    const/16 v9, 0xf

    const/16 v18, 0xd

    invoke-interface {v0, v1, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v29

    or-int/lit8 v8, v8, 0x20

    goto :goto_218

    :pswitch_1c4
    move-object/from16 v20, v4

    const/4 v6, 0x5

    const/16 v9, 0xf

    const/16 v18, 0xd

    sget-object v4, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    const/4 v6, 0x4

    invoke-interface {v0, v1, v6, v4, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    or-int/lit8 v8, v8, 0x10

    goto :goto_218

    :pswitch_1d5
    move-object/from16 v20, v4

    const/4 v4, 0x3

    const/4 v6, 0x4

    const/16 v9, 0xf

    const/16 v18, 0xd

    invoke-interface {v0, v1, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->u(Lkotlinx/serialization/descriptors/SerialDescriptor;I)F

    move-result v30

    or-int/lit8 v8, v8, 0x8

    goto :goto_218

    :pswitch_1e4
    move-object/from16 v20, v4

    const/4 v6, 0x4

    const/16 v9, 0xf

    const/16 v18, 0xd

    sget-object v4, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    const/4 v6, 0x2

    invoke-interface {v0, v1, v6, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    or-int/lit8 v8, v8, 0x4

    goto :goto_218

    :pswitch_1f5
    move-object/from16 v20, v4

    const/4 v4, 0x1

    const/4 v6, 0x2

    const/16 v9, 0xf

    const/16 v18, 0xd

    invoke-interface {v0, v1, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->C(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v24

    or-int/lit8 v8, v8, 0x2

    goto :goto_218

    :pswitch_204
    move-object/from16 v20, v4

    const/4 v6, 0x2

    const/16 v9, 0xf

    const/16 v18, 0xd

    sget-object v4, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    move-object/from16 v6, v25

    const/4 v9, 0x0

    invoke-interface {v0, v1, v9, v4, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    or-int/lit8 v8, v8, 0x1

    move-object/from16 v25, v4

    :goto_218
    move-object/from16 v4, v20

    :goto_21a
    const/16 v6, 0x12

    :goto_21c
    const/16 v9, 0xb

    goto/16 :goto_dc

    :pswitch_220
    move-object/from16 v20, v4

    move-object/from16 v6, v25

    const/4 v9, 0x0

    const/16 v18, 0xd

    const/16 v6, 0x12

    const/16 v9, 0xb

    const/16 v31, 0x0

    goto/16 :goto_dc

    :cond_22f
    move-object/from16 v20, v4

    move-object/from16 v6, v25

    move-object/from16 v17, v6

    move/from16 v19, v7

    move-object/from16 v16, v12

    move-object v12, v15

    move/from16 v21, v22

    move/from16 v26, v23

    move/from16 v9, v24

    move/from16 v18, v27

    move-object v7, v2

    move-object v2, v10

    move-object v15, v13

    move-object v13, v3

    move-object v3, v5

    move v5, v8

    :goto_248
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v0, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;

    move-object v4, v0

    move-object/from16 v6, v17

    check-cast v6, Ljava/lang/String;

    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    move-object v10, v3

    check-cast v10, Ljava/lang/String;

    check-cast v12, Ljava/lang/String;

    check-cast v13, Ljava/lang/String;

    check-cast v14, Ljava/lang/String;

    check-cast v15, Ljava/lang/String;

    check-cast v16, Ljava/lang/String;

    move-object/from16 v22, v20

    check-cast v22, Ljava/lang/String;

    move-object/from16 v23, v11

    check-cast v23, Ljava/lang/String;

    move-object/from16 v24, v2

    check-cast v24, Ljava/lang/String;

    const/16 v25, 0x0

    move v7, v9

    move/from16 v9, v30

    move/from16 v11, v29

    move/from16 v17, v28

    move/from16 v20, v21

    move/from16 v21, v26

    invoke-direct/range {v4 .. v25}, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;-><init>(ILjava/lang/String;ZLjava/lang/String;FLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FIZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/e1;)V

    return-object v0

    nop

    :pswitch_data_280
    .packed-switch -0x1
        :pswitch_220
        :pswitch_204
        :pswitch_1f5
        :pswitch_1e4
        :pswitch_1d5
        :pswitch_1c4
        :pswitch_1b5
        :pswitch_1a4
        :pswitch_191
        :pswitch_17d
        :pswitch_169
        :pswitch_157
        :pswitch_149
        :pswitch_13b
        :pswitch_12b
        :pswitch_11f
        :pswitch_110
        :pswitch_101
        :pswitch_f6
        :pswitch_eb
    .end packed-switch
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt$a;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .registers 2

    sget-object v0, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt$a;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;)V
    .registers 4

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt$a;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;->write$Self(Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt$a;->serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;)V

    return-void
.end method

.method public typeParametersSerializers()[Lkotlinx/serialization/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/c<",
            "*>;"
        }
    .end annotation

    invoke-static {p0}, Lkotlinx/serialization/internal/GeneratedSerializer$DefaultImpls;->typeParametersSerializers(Lkotlinx/serialization/internal/GeneratedSerializer;)[Lkotlinx/serialization/c;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.ads.internal.model.DeviceNode.AndroidAmazonExt.Companion (com.vungle.ads.internal.model.DeviceNode$AndroidAmazonExt$b)
.class public final Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt$b;
.super Ljava/lang/Object;
.source "DeviceNode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u00c6\u0001\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt$Companion;",
        "",
        "()V",
        "serializer",
        "Lkotlinx/serialization/KSerializer;",
        "Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;",
        "vungle-ads_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/c<",
            "Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt$a;->INSTANCE:Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt$a;

    return-object v0
.end method

###### Class com.vungle.ads.internal.model.DeviceNode.CommonVungleExt (com.vungle.ads.internal.model.DeviceNode$CommonVungleExt)
.class public Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;
.super Ljava/lang/Object;
.source "DeviceNode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/model/DeviceNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommonVungleExt"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt$b;,
        Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u00089\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0017\u0018\u0000 Z2\u00020\u0001:\u0002YZB\u00d1\u0001\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007\u0012\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0001\u0010\t\u001a\u00020\n\u0012\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u0003\u0012\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0001\u0010\u0012\u001a\u00020\n\u0012\u0008\u0008\u0001\u0010\u0013\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0014\u001a\u00020\u0007\u0012\u0008\u0008\u0001\u0010\u0015\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0016\u001a\u00020\u0007\u0012\n\u0008\u0001\u0010\u0017\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u00a2\u0006\u0002\u0010\u001aB\u0005\u00a2\u0006\u0002\u0010\u001bJ!\u0010R\u001a\u00020S2\u0006\u0010T\u001a\u00020\u00002\u0006\u0010U\u001a\u00020V2\u0006\u0010W\u001a\u00020XH\u00c7\u0001R&\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u001c\u0010\u001b\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R&\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008!\u0010\u001b\u001a\u0004\u0008\"\u0010\u001e\"\u0004\u0008#\u0010 R$\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008$\u0010\u001b\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R$\u0010\u000c\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008)\u0010\u001b\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R&\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008.\u0010\u001b\u001a\u0004\u0008/\u0010\u001e\"\u0004\u00080\u0010 R&\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u00081\u0010\u001b\u001a\u0004\u00082\u0010\u001e\"\u0004\u00083\u0010 R&\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u00084\u0010\u001b\u001a\u0004\u00085\u0010\u001e\"\u0004\u00086\u0010 R$\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u00087\u0010\u001b\u001a\u0004\u0008\u0006\u00108\"\u0004\u00089\u0010:R$\u0010\u0016\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008;\u0010\u001b\u001a\u0004\u0008\u0016\u00108\"\u0004\u0008<\u0010:R$\u0010\u0014\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008=\u0010\u001b\u001a\u0004\u0008\u0014\u00108\"\u0004\u0008>\u0010:R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010\u001e\"\u0004\u0008@\u0010 R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u0010\u001e\"\u0004\u0008B\u0010 R&\u0010\u0017\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008C\u0010\u001b\u001a\u0004\u0008D\u0010\u001e\"\u0004\u0008E\u0010 R$\u0010\u0015\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008F\u0010\u001b\u001a\u0004\u0008G\u0010+\"\u0004\u0008H\u0010-R$\u0010\u0013\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008I\u0010\u001b\u001a\u0004\u0008J\u0010+\"\u0004\u0008K\u0010-R&\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008L\u0010\u001b\u001a\u0004\u0008M\u0010\u001e\"\u0004\u0008N\u0010 R$\u0010\u0012\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008O\u0010\u001b\u001a\u0004\u0008P\u0010&\"\u0004\u0008Q\u0010(\u00a8\u0006[\u0080\u00e5\u0008\u0004\u0080\u00e5\u0008\u0006\u0080\u00e5\u0008\u0008\u0080\u00e5\u0008\t\u0080\u00e5\u0008\u000b\u0080\u00e5\u0008\u000c\u0080\u00e5\u0008\r\u0080\u00e5\u0008\u000e\u0080\u00e5\u0008\u000f\u0080\u00e5\u0008\u0010\u0080\u00e5\u0008\u0011\u0080\u00e5\u0008\u0012\u0080\u00e5\u0008\u0013\u0080\u00e5\u0008\u0014\u0080\u00e5\u0008\u0015\u0080\u00e5\u0008\u0016\u0080\u00e5\u0008\u0017"
    }
    d2 = {
        "Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;",
        "",
        "seen1",
        "",
        "androidId",
        "",
        "isGooglePlayServicesAvailable",
        "",
        "appSetId",
        "batteryLevel",
        "",
        "batteryState",
        "batterySaverEnabled",
        "connectionType",
        "connectionTypeDetail",
        "locale",
        "language",
        "timeZone",
        "volumeLevel",
        "soundEnabled",
        "isTv",
        "sdCardAvailable",
        "isSideloadEnabled",
        "osName",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;ZLjava/lang/String;FLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FIZIZLjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "()V",
        "getAndroidId$annotations",
        "getAndroidId",
        "()Ljava/lang/String;",
        "setAndroidId",
        "(Ljava/lang/String;)V",
        "getAppSetId$annotations",
        "getAppSetId",
        "setAppSetId",
        "getBatteryLevel$annotations",
        "getBatteryLevel",
        "()F",
        "setBatteryLevel",
        "(F)V",
        "getBatterySaverEnabled$annotations",
        "getBatterySaverEnabled",
        "()I",
        "setBatterySaverEnabled",
        "(I)V",
        "getBatteryState$annotations",
        "getBatteryState",
        "setBatteryState",
        "getConnectionType$annotations",
        "getConnectionType",
        "setConnectionType",
        "getConnectionTypeDetail$annotations",
        "getConnectionTypeDetail",
        "setConnectionTypeDetail",
        "isGooglePlayServicesAvailable$annotations",
        "()Z",
        "setGooglePlayServicesAvailable",
        "(Z)V",
        "isSideloadEnabled$annotations",
        "setSideloadEnabled",
        "isTv$annotations",
        "setTv",
        "getLanguage",
        "setLanguage",
        "getLocale",
        "setLocale",
        "getOsName$annotations",
        "getOsName",
        "setOsName",
        "getSdCardAvailable$annotations",
        "getSdCardAvailable",
        "setSdCardAvailable",
        "getSoundEnabled$annotations",
        "getSoundEnabled",
        "setSoundEnabled",
        "getTimeZone$annotations",
        "getTimeZone",
        "setTimeZone",
        "getVolumeLevel$annotations",
        "getVolumeLevel",
        "setVolumeLevel",
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
.field public static final Companion:Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt$b;


# instance fields
.field private androidId:Ljava/lang/String;

.field private appSetId:Ljava/lang/String;

.field private batteryLevel:F

.field private batterySaverEnabled:I

.field private batteryState:Ljava/lang/String;

.field private connectionType:Ljava/lang/String;

.field private connectionTypeDetail:Ljava/lang/String;

.field private isGooglePlayServicesAvailable:Z

.field private isSideloadEnabled:Z

.field private isTv:Z

.field private language:Ljava/lang/String;

.field private locale:Ljava/lang/String;

.field private osName:Ljava/lang/String;

.field private sdCardAvailable:I

.field private soundEnabled:I

.field private timeZone:Ljava/lang/String;

.field private volumeLevel:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt$b;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->Companion:Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->soundEnabled:I

    iput v0, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->sdCardAvailable:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ZLjava/lang/String;FLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FIZIZLjava/lang/String;Lkotlinx/serialization/internal/e1;)V
    .registers 26

    move-object v0, p0

    move v1, p1

    and-int/lit8 v2, v1, 0x0

    const/4 v3, 0x0

    if-eqz v2, :cond_10

    sget-object v2, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt$a;->INSTANCE:Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt$a;

    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt$a;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    invoke-static {p1, v3, v2}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v2, v1, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1b

    iput-object v4, v0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->androidId:Ljava/lang/String;

    goto :goto_1e

    :cond_1b
    move-object v2, p2

    iput-object v2, v0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->androidId:Ljava/lang/String;

    :goto_1e
    and-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_25

    iput-boolean v3, v0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->isGooglePlayServicesAvailable:Z

    goto :goto_28

    :cond_25
    move v2, p3

    iput-boolean v2, v0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->isGooglePlayServicesAvailable:Z

    :goto_28
    and-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_2f

    iput-object v4, v0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->appSetId:Ljava/lang/String;

    goto :goto_32

    :cond_2f
    move-object v2, p4

    iput-object v2, v0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->appSetId:Ljava/lang/String;

    :goto_32
    and-int/lit8 v2, v1, 0x8

    const/4 v5, 0x0

    if-nez v2, :cond_3a

    iput v5, v0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->batteryLevel:F

    goto :goto_3d

    :cond_3a
    move v2, p5

    iput v2, v0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->batteryLevel:F

    :goto_3d
    and-int/lit8 v2, v1, 0x10

    if-nez v2, :cond_44

    iput-object v4, v0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->batteryState:Ljava/lang/String;

    goto :goto_47

    :cond_44
    move-object v2, p6

    iput-object v2, v0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->batteryState:Ljava/lang/String;

    :goto_47
    and-int/lit8 v2, v1, 0x20

    if-nez v2, :cond_4e

    iput v3, v0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->batterySaverEnabled:I

    goto :goto_51

    :cond_4e
    move v2, p7

    iput v2, v0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->batterySaverEnabled:I

    :goto_51
    and-int/lit8 v2, v1, 0x40

    if-nez v2, :cond_58

    iput-object v4, v0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->connectionType:Ljava/lang/String;

    goto :goto_5b

    :cond_58
    move-object v2, p8

    iput-object v2, v0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->connectionType:Ljava/lang/String;

    :goto_5b
    and-int/lit16 v2, v1, 0x80

    if-nez v2, :cond_62

    iput-object v4, v0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->connectionTypeDetail:Ljava/lang/String;

    goto :goto_65

    :cond_62
    move-object v2, p9

    iput-object v2, v0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->connectionTypeDetail:Ljava/lang/String;

    :goto_65
    and-int/lit16 v2, v1, 0x100

    if-nez v2, :cond_6c

    iput-object v4, v0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->locale:Ljava/lang/String;

    goto :goto_70

    :cond_6c
    move-object/from16 v2, p10

    iput-object v2, v0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->locale:Ljava/lang/String;

    :goto_70
    and-int/lit16 v2, v1, 0x200

    if-nez v2, :cond_77

    iput-object v4, v0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->language:Ljava/lang/String;

    goto :goto_7b

    :cond_77
    move-object/from16 v2, p11

    iput-object v2, v0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->language:Ljava/lang/String;

    :goto_7b
    and-int/lit16 v2, v1, 0x400

    if-nez v2, :cond_82

    iput-object v4, v0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->timeZone:Ljava/lang/String;

    goto :goto_86

    :cond_82
    move-object/from16 v2, p12

    iput-object v2, v0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->timeZone:Ljava/lang/String;

    :goto_86
    and-int/lit16 v2, v1, 0x800

    if-nez v2, :cond_8d

    iput v5, v0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->volumeLevel:F

    goto :goto_91

    :cond_8d
    move/from16 v2, p13

    iput v2, v0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->volumeLevel:F

    :goto_91
    and-int/lit16 v2, v1, 0x1000

    const/4 v5, 0x1

    if-nez v2, :cond_99

    iput v5, v0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->soundEnabled:I

    goto :goto_9d

    :cond_99
    move/from16 v2, p14

    iput v2, v0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->soundEnabled:I

    :goto_9d
    and-int/lit16 v2, v1, 0x2000

    if-nez v2, :cond_a4

    iput-boolean v3, v0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->isTv:Z

    goto :goto_a8

    :cond_a4
    move/from16 v2, p15

    iput-boolean v2, v0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->isTv:Z

    :goto_a8
    and-int/lit16 v2, v1, 0x4000

    if-nez v2, :cond_af

    iput v5, v0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->sdCardAvailable:I

    goto :goto_b3

    :cond_af
    move/from16 v2, p16

    iput v2, v0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->sdCardAvailable:I

    :goto_b3
    const v2, 0x8000

    and-int/2addr v2, v1

    if-nez v2, :cond_bc

    iput-boolean v3, v0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->isSideloadEnabled:Z

    goto :goto_c0

    :cond_bc
    move/from16 v2, p17

    iput-boolean v2, v0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->isSideloadEnabled:Z

    :goto_c0
    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-nez v1, :cond_c8

    iput-object v4, v0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->osName:Ljava/lang/String;

    goto :goto_cc

    :cond_c8
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->osName:Ljava/lang/String;

    :goto_cc
    return-void
.end method

.method public static synthetic getAndroidId$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getAppSetId$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getBatteryLevel$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getBatterySaverEnabled$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getBatteryState$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getConnectionType$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getConnectionTypeDetail$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getOsName$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getSdCardAvailable$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getSoundEnabled$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getTimeZone$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getVolumeLevel$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic isGooglePlayServicesAvailable$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic isSideloadEnabled$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic isTv$annotations()V
    .registers 0

    return-void
.end method

.method public static final write$Self(Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .registers 9

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
    iget-object v1, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->androidId:Ljava/lang/String;

    if-eqz v1, :cond_1e

    goto :goto_17

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    if-eqz v1, :cond_28

    sget-object v1, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    iget-object v3, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->androidId:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/i;Ljava/lang/Object;)V

    :cond_28
    invoke-interface {p1, p2, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_30

    :goto_2e
    const/4 v1, 0x1

    goto :goto_36

    :cond_30
    iget-boolean v1, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->isGooglePlayServicesAvailable:Z

    if-eqz v1, :cond_35

    goto :goto_2e

    :cond_35
    const/4 v1, 0x0

    :goto_36
    if-eqz v1, :cond_3d

    iget-boolean v1, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->isGooglePlayServicesAvailable:Z

    invoke-interface {p1, p2, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_3d
    const/4 v1, 0x2

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_46

    :goto_44
    const/4 v3, 0x1

    goto :goto_4c

    :cond_46
    iget-object v3, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->appSetId:Ljava/lang/String;

    if-eqz v3, :cond_4b

    goto :goto_44

    :cond_4b
    const/4 v3, 0x0

    :goto_4c
    if-eqz v3, :cond_55

    sget-object v3, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    iget-object v4, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->appSetId:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/i;Ljava/lang/Object;)V

    :cond_55
    const/4 v1, 0x3

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5f

    :goto_5d
    const/4 v3, 0x1

    goto :goto_71

    :cond_5f
    iget v3, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->batteryLevel:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_70

    goto :goto_5d

    :cond_70
    const/4 v3, 0x0

    :goto_71
    if-eqz v3, :cond_78

    iget v3, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->batteryLevel:F

    invoke-interface {p1, p2, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->s(Lkotlinx/serialization/descriptors/SerialDescriptor;IF)V

    :cond_78
    const/4 v1, 0x4

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_81

    :goto_7f
    const/4 v3, 0x1

    goto :goto_87

    :cond_81
    iget-object v3, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->batteryState:Ljava/lang/String;

    if-eqz v3, :cond_86

    goto :goto_7f

    :cond_86
    const/4 v3, 0x0

    :goto_87
    if-eqz v3, :cond_90

    sget-object v3, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    iget-object v5, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->batteryState:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v3, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/i;Ljava/lang/Object;)V

    :cond_90
    const/4 v1, 0x5

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_99

    :goto_97
    const/4 v3, 0x1

    goto :goto_9f

    :cond_99
    iget v3, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->batterySaverEnabled:I

    if-eqz v3, :cond_9e

    goto :goto_97

    :cond_9e
    const/4 v3, 0x0

    :goto_9f
    if-eqz v3, :cond_a6

    iget v3, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->batterySaverEnabled:I

    invoke-interface {p1, p2, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_a6
    const/4 v1, 0x6

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_af

    :goto_ad
    const/4 v3, 0x1

    goto :goto_b5

    :cond_af
    iget-object v3, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->connectionType:Ljava/lang/String;

    if-eqz v3, :cond_b4

    goto :goto_ad

    :cond_b4
    const/4 v3, 0x0

    :goto_b5
    if-eqz v3, :cond_be

    sget-object v3, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    iget-object v5, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->connectionType:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v3, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/i;Ljava/lang/Object;)V

    :cond_be
    const/4 v1, 0x7

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_c7

    :goto_c5
    const/4 v3, 0x1

    goto :goto_cd

    :cond_c7
    iget-object v3, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->connectionTypeDetail:Ljava/lang/String;

    if-eqz v3, :cond_cc

    goto :goto_c5

    :cond_cc
    const/4 v3, 0x0

    :goto_cd
    if-eqz v3, :cond_d6

    sget-object v3, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    iget-object v5, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->connectionTypeDetail:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v3, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/i;Ljava/lang/Object;)V

    :cond_d6
    const/16 v1, 0x8

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_e0

    :goto_de
    const/4 v3, 0x1

    goto :goto_e6

    :cond_e0
    iget-object v3, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->locale:Ljava/lang/String;

    if-eqz v3, :cond_e5

    goto :goto_de

    :cond_e5
    const/4 v3, 0x0

    :goto_e6
    if-eqz v3, :cond_ef

    sget-object v3, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    iget-object v5, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->locale:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v3, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/i;Ljava/lang/Object;)V

    :cond_ef
    const/16 v1, 0x9

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_f9

    :goto_f7
    const/4 v3, 0x1

    goto :goto_ff

    :cond_f9
    iget-object v3, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->language:Ljava/lang/String;

    if-eqz v3, :cond_fe

    goto :goto_f7

    :cond_fe
    const/4 v3, 0x0

    :goto_ff
    if-eqz v3, :cond_108

    sget-object v3, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    iget-object v5, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->language:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v3, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/i;Ljava/lang/Object;)V

    :cond_108
    const/16 v1, 0xa

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_112

    :goto_110
    const/4 v3, 0x1

    goto :goto_118

    :cond_112
    iget-object v3, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->timeZone:Ljava/lang/String;

    if-eqz v3, :cond_117

    goto :goto_110

    :cond_117
    const/4 v3, 0x0

    :goto_118
    if-eqz v3, :cond_121

    sget-object v3, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    iget-object v5, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->timeZone:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v3, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/i;Ljava/lang/Object;)V

    :cond_121
    const/16 v1, 0xb

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_12b

    :goto_129
    const/4 v3, 0x1

    goto :goto_13d

    :cond_12b
    iget v3, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->volumeLevel:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13c

    goto :goto_129

    :cond_13c
    const/4 v3, 0x0

    :goto_13d
    if-eqz v3, :cond_144

    iget v3, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->volumeLevel:F

    invoke-interface {p1, p2, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->s(Lkotlinx/serialization/descriptors/SerialDescriptor;IF)V

    :cond_144
    const/16 v1, 0xc

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_14e

    :goto_14c
    const/4 v3, 0x1

    goto :goto_154

    :cond_14e
    iget v3, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->soundEnabled:I

    if-eq v3, v2, :cond_153

    goto :goto_14c

    :cond_153
    const/4 v3, 0x0

    :goto_154
    if-eqz v3, :cond_15b

    iget v3, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->soundEnabled:I

    invoke-interface {p1, p2, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_15b
    const/16 v1, 0xd

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_165

    :goto_163
    const/4 v3, 0x1

    goto :goto_16b

    :cond_165
    iget-boolean v3, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->isTv:Z

    if-eqz v3, :cond_16a

    goto :goto_163

    :cond_16a
    const/4 v3, 0x0

    :goto_16b
    if-eqz v3, :cond_172

    iget-boolean v3, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->isTv:Z

    invoke-interface {p1, p2, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_172
    const/16 v1, 0xe

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_17c

    :goto_17a
    const/4 v3, 0x1

    goto :goto_182

    :cond_17c
    iget v3, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->sdCardAvailable:I

    if-eq v3, v2, :cond_181

    goto :goto_17a

    :cond_181
    const/4 v3, 0x0

    :goto_182
    if-eqz v3, :cond_189

    iget v3, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->sdCardAvailable:I

    invoke-interface {p1, p2, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_189
    const/16 v1, 0xf

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_193

    :goto_191
    const/4 v3, 0x1

    goto :goto_199

    :cond_193
    iget-boolean v3, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->isSideloadEnabled:Z

    if-eqz v3, :cond_198

    goto :goto_191

    :cond_198
    const/4 v3, 0x0

    :goto_199
    if-eqz v3, :cond_1a0

    iget-boolean v3, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->isSideloadEnabled:Z

    invoke-interface {p1, p2, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_1a0
    const/16 v1, 0x10

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_1aa

    :goto_1a8
    const/4 v0, 0x1

    goto :goto_1af

    :cond_1aa
    iget-object v3, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->osName:Ljava/lang/String;

    if-eqz v3, :cond_1af

    goto :goto_1a8

    :cond_1af
    :goto_1af
    if-eqz v0, :cond_1b8

    sget-object v0, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    iget-object p0, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->osName:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/i;Ljava/lang/Object;)V

    :cond_1b8
    return-void
.end method


# virtual methods
.method public final getAndroidId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->androidId:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppSetId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->appSetId:Ljava/lang/String;

    return-object v0
.end method

.method public final getBatteryLevel()F
    .registers 2

    iget v0, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->batteryLevel:F

    return v0
.end method

.method public final getBatterySaverEnabled()I
    .registers 2

    iget v0, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->batterySaverEnabled:I

    return v0
.end method

.method public final getBatteryState()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->batteryState:Ljava/lang/String;

    return-object v0
.end method

.method public final getConnectionType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->connectionType:Ljava/lang/String;

    return-object v0
.end method

.method public final getConnectionTypeDetail()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->connectionTypeDetail:Ljava/lang/String;

    return-object v0
.end method

.method public final getLanguage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->language:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocale()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public final getOsName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->osName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSdCardAvailable()I
    .registers 2

    iget v0, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->sdCardAvailable:I

    return v0
.end method

.method public final getSoundEnabled()I
    .registers 2

    iget v0, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->soundEnabled:I

    return v0
.end method

.method public final getTimeZone()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->timeZone:Ljava/lang/String;

    return-object v0
.end method

.method public final getVolumeLevel()F
    .registers 2

    iget v0, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->volumeLevel:F

    return v0
.end method

.method public final isGooglePlayServicesAvailable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->isGooglePlayServicesAvailable:Z

    return v0
.end method

.method public final isSideloadEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->isSideloadEnabled:Z

    return v0
.end method

.method public final isTv()Z
    .registers 2

    iget-boolean v0, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->isTv:Z

    return v0
.end method

.method public final setAndroidId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->androidId:Ljava/lang/String;

    return-void
.end method

.method public final setAppSetId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->appSetId:Ljava/lang/String;

    return-void
.end method

.method public final setBatteryLevel(F)V
    .registers 2

    iput p1, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->batteryLevel:F

    return-void
.end method

.method public final setBatterySaverEnabled(I)V
    .registers 2

    iput p1, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->batterySaverEnabled:I

    return-void
.end method

.method public final setBatteryState(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->batteryState:Ljava/lang/String;

    return-void
.end method

.method public final setConnectionType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->connectionType:Ljava/lang/String;

    return-void
.end method

.method public final setConnectionTypeDetail(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->connectionTypeDetail:Ljava/lang/String;

    return-void
.end method

.method public final setGooglePlayServicesAvailable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->isGooglePlayServicesAvailable:Z

    return-void
.end method

.method public final setLanguage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->language:Ljava/lang/String;

    return-void
.end method

.method public final setLocale(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->locale:Ljava/lang/String;

    return-void
.end method

.method public final setOsName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->osName:Ljava/lang/String;

    return-void
.end method

.method public final setSdCardAvailable(I)V
    .registers 2

    iput p1, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->sdCardAvailable:I

    return-void
.end method

.method public final setSideloadEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->isSideloadEnabled:Z

    return-void
.end method

.method public final setSoundEnabled(I)V
    .registers 2

    iput p1, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->soundEnabled:I

    return-void
.end method

.method public final setTimeZone(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->timeZone:Ljava/lang/String;

    return-void
.end method

.method public final setTv(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->isTv:Z

    return-void
.end method

.method public final setVolumeLevel(F)V
    .registers 2

    iput p1, p0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->volumeLevel:F

    return-void
.end method

###### Class com.vungle.ads.internal.model.DeviceNode.CommonVungleExt.a (com.vungle.ads.internal.model.DeviceNode$CommonVungleExt$a)
.class public final Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt$a;
.super Ljava/lang/Object;
.source "DeviceNode.kt"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0018\u0010\u0008\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\n0\tH\u00d6\u0001\u00a2\u0006\u0002\u0010\u000bJ\u0011\u0010\u000c\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002H\u00d6\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VX\u00d6\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0014"
    }
    d2 = {
        "com/vungle/ads/internal/model/DeviceNode.CommonVungleExt.$serializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;",
        "()V",
        "descriptor",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "getDescriptor",
        "()Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "childSerializers",
        "",
        "Lkotlinx/serialization/KSerializer;",
        "()[Lkotlinx/serialization/KSerializer;",
        "deserialize",
        "decoder",
        "Lkotlinx/serialization/encoding/Decoder;",
        "serialize",
        "",
        "encoder",
        "Lkotlinx/serialization/encoding/Encoder;",
        "value",
        "vungle-ads_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt$a;

.field public static final synthetic descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt$a;

    invoke-direct {v0}, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt$a;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt$a;->INSTANCE:Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt$a;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.vungle.ads.internal.model.DeviceNode.CommonVungleExt"

    const/16 v3, 0x11

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "android_id"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "is_google_play_services_available"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "app_set_id"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "battery_level"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "battery_state"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "battery_saver_enabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "connection_type"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "connection_type_detail"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "locale"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "language"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "time_zone"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "volume_level"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "sound_enabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "is_tv"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "sd_card_available"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "is_sideload_enabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "os_name"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    sput-object v1, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt$a;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public childSerializers()[Lkotlinx/serialization/c;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/c<",
            "*>;"
        }
    .end annotation

    const/16 v0, 0x11

    new-array v0, v0, [Lkotlinx/serialization/c;

    sget-object v1, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    sget-object v2, Lkotlinx/serialization/internal/f;->a:Lkotlinx/serialization/internal/f;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v0, v4

    sget-object v3, Lkotlinx/serialization/internal/a0;->a:Lkotlinx/serialization/internal/a0;

    const/4 v4, 0x3

    aput-object v3, v0, v4

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v0, v5

    sget-object v4, Lkotlinx/serialization/internal/i0;->a:Lkotlinx/serialization/internal/i0;

    const/4 v5, 0x5

    aput-object v4, v0, v5

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v5

    const/4 v6, 0x6

    aput-object v5, v0, v6

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v5

    const/4 v6, 0x7

    aput-object v5, v0, v6

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v5

    const/16 v6, 0x8

    aput-object v5, v0, v6

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v5

    const/16 v6, 0x9

    aput-object v5, v0, v6

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v5

    const/16 v6, 0xa

    aput-object v5, v0, v6

    const/16 v5, 0xb

    aput-object v3, v0, v5

    const/16 v3, 0xc

    aput-object v4, v0, v3

    const/16 v3, 0xd

    aput-object v2, v0, v3

    const/16 v3, 0xe

    aput-object v4, v0, v3

    const/16 v3, 0xf

    aput-object v2, v0, v3

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    return-object v0
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;
    .registers 32

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt$a;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->p()Z

    move-result v2

    const/16 v7, 0xb

    const/16 v8, 0xa

    const/16 v9, 0x9

    const/4 v10, 0x7

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x3

    const/16 v15, 0x8

    const/4 v14, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v2, :cond_a5

    sget-object v2, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    invoke-interface {v0, v1, v6, v2, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v1, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->C(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    invoke-interface {v0, v1, v3, v2, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v1, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->u(Lkotlinx/serialization/descriptors/SerialDescriptor;I)F

    move-result v13

    invoke-interface {v0, v1, v14, v2, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v0, v1, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v12

    invoke-interface {v0, v1, v11, v2, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v0, v1, v10, v2, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v0, v1, v15, v2, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v0, v1, v9, v2, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v0, v1, v8, v2, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v0, v1, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->u(Lkotlinx/serialization/descriptors/SerialDescriptor;I)F

    move-result v7

    const/16 v5, 0xc

    invoke-interface {v0, v1, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v5

    move-object/from16 v19, v3

    const/16 v3, 0xd

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->C(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    move/from16 v18, v3

    const/16 v3, 0xe

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v3

    move/from16 v17, v3

    const/16 v3, 0xf

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->C(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    move/from16 p1, v4

    move-object/from16 v16, v6

    const/4 v4, 0x0

    const/16 v6, 0x10

    invoke-interface {v0, v1, v6, v2, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const v4, 0x1ffff

    move/from16 v21, v3

    move/from16 v26, v12

    move/from16 v27, v13

    move-object/from16 v6, v16

    move/from16 v20, v17

    move-object/from16 v3, v19

    move/from16 v17, v7

    move-object v13, v11

    move/from16 v19, v18

    move/from16 v7, p1

    move/from16 v18, v5

    move-object v11, v9

    const v5, 0x1ffff

    move-object v9, v8

    move-object/from16 v29, v14

    move-object v14, v10

    move-object/from16 v10, v29

    goto/16 :goto_1f6

    :cond_a5
    move-object v4, v5

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/16 v20, 0x0

    move-object v2, v4

    move-object v3, v2

    move-object v10, v3

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v23, v15

    const/4 v4, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x1

    :goto_c7
    if-eqz v28, :cond_1e6

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v9

    packed-switch v9, :pswitch_data_222

    new-instance v0, Lkotlinx/serialization/k;

    invoke-direct {v0, v9}, Lkotlinx/serialization/k;-><init>(I)V

    throw v0

    :pswitch_d6
    sget-object v9, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    invoke-interface {v0, v1, v6, v9, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    const/high16 v9, 0x10000

    or-int/2addr v5, v9

    goto/16 :goto_1d1

    :pswitch_e1
    const/16 v9, 0xf

    invoke-interface {v0, v1, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->C(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v21

    const v16, 0x8000

    or-int v5, v5, v16

    goto/16 :goto_1d1

    :pswitch_ee
    const/16 v6, 0xe

    const/16 v9, 0xf

    invoke-interface {v0, v1, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v20

    or-int/lit16 v5, v5, 0x4000

    goto :goto_12e

    :pswitch_f9
    const/16 v4, 0xd

    const/16 v6, 0xe

    const/16 v9, 0xf

    invoke-interface {v0, v1, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->C(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v17

    or-int/lit16 v5, v5, 0x2000

    move/from16 v4, v17

    goto :goto_12e

    :pswitch_108
    const/16 v6, 0xc

    const/16 v9, 0xf

    const/16 v17, 0xd

    invoke-interface {v0, v1, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v24

    or-int/lit16 v5, v5, 0x1000

    goto :goto_12e

    :pswitch_115
    const/16 v6, 0xc

    const/16 v9, 0xf

    const/16 v17, 0xd

    invoke-interface {v0, v1, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->u(Lkotlinx/serialization/descriptors/SerialDescriptor;I)F

    move-result v25

    or-int/lit16 v5, v5, 0x800

    goto :goto_12e

    :pswitch_122
    const/16 v9, 0xf

    const/16 v17, 0xd

    sget-object v6, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    invoke-interface {v0, v1, v8, v6, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    or-int/lit16 v5, v5, 0x400

    :goto_12e
    const/16 v6, 0x10

    goto/16 :goto_1d1

    :pswitch_132
    const/16 v9, 0xf

    const/16 v17, 0xd

    sget-object v6, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    const/16 v7, 0x9

    invoke-interface {v0, v1, v7, v6, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    or-int/lit16 v5, v5, 0x200

    goto/16 :goto_1b6

    :pswitch_142
    const/16 v7, 0x9

    const/16 v9, 0xf

    const/16 v17, 0xd

    sget-object v6, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    const/16 v7, 0x8

    invoke-interface {v0, v1, v7, v6, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    or-int/lit16 v5, v5, 0x100

    goto :goto_1b6

    :pswitch_153
    const/16 v7, 0x8

    const/16 v9, 0xf

    const/16 v17, 0xd

    sget-object v6, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    const/4 v7, 0x7

    invoke-interface {v0, v1, v7, v6, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    or-int/lit16 v5, v5, 0x80

    goto :goto_1b6

    :pswitch_163
    const/4 v7, 0x7

    const/16 v9, 0xf

    const/16 v17, 0xd

    sget-object v6, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    const/4 v7, 0x6

    invoke-interface {v0, v1, v7, v6, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    or-int/lit8 v5, v5, 0x40

    goto :goto_1b6

    :pswitch_172
    const/4 v6, 0x5

    const/4 v7, 0x6

    const/16 v9, 0xf

    const/16 v17, 0xd

    invoke-interface {v0, v1, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v26

    or-int/lit8 v5, v5, 0x20

    goto :goto_1b6

    :pswitch_17f
    const/4 v7, 0x6

    const/16 v9, 0xf

    const/16 v17, 0xd

    sget-object v6, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    const/4 v7, 0x4

    invoke-interface {v0, v1, v7, v6, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    or-int/lit8 v5, v5, 0x10

    goto :goto_1b6

    :pswitch_18e
    const/4 v6, 0x3

    const/4 v7, 0x4

    const/16 v9, 0xf

    const/16 v17, 0xd

    invoke-interface {v0, v1, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->u(Lkotlinx/serialization/descriptors/SerialDescriptor;I)F

    move-result v27

    or-int/lit8 v5, v5, 0x8

    goto :goto_1b6

    :pswitch_19b
    const/4 v7, 0x4

    const/16 v9, 0xf

    const/16 v17, 0xd

    sget-object v6, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    const/4 v7, 0x2

    invoke-interface {v0, v1, v7, v6, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    or-int/lit8 v5, v5, 0x4

    goto :goto_1b6

    :pswitch_1aa
    const/4 v6, 0x1

    const/4 v7, 0x2

    const/16 v9, 0xf

    const/16 v17, 0xd

    invoke-interface {v0, v1, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->C(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v22

    or-int/lit8 v5, v5, 0x2

    :goto_1b6
    const/16 v6, 0x10

    const/16 v7, 0xb

    goto :goto_1d1

    :pswitch_1bb
    const/4 v7, 0x2

    const/16 v9, 0xf

    const/16 v17, 0xd

    sget-object v6, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    move-object/from16 v7, v23

    const/4 v8, 0x0

    invoke-interface {v0, v1, v8, v6, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    or-int/lit8 v5, v5, 0x1

    const/16 v6, 0x10

    const/16 v7, 0xb

    const/16 v8, 0xa

    :goto_1d1
    const/16 v9, 0x9

    goto/16 :goto_c7

    :pswitch_1d5
    move-object/from16 v7, v23

    const/4 v8, 0x0

    const/16 v9, 0xf

    const/16 v17, 0xd

    const/16 v7, 0xb

    const/16 v8, 0xa

    const/16 v9, 0x9

    const/16 v28, 0x0

    goto/16 :goto_c7

    :cond_1e6
    move-object/from16 v7, v23

    move/from16 v19, v4

    move-object v6, v7

    move-object v9, v10

    move/from16 v7, v22

    move/from16 v18, v24

    move/from16 v17, v25

    move-object v10, v3

    move-object v3, v2

    move-object v2, v15

    move-object v15, v12

    :goto_1f6
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;

    move-object v4, v0

    check-cast v6, Ljava/lang/String;

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    check-cast v10, Ljava/lang/String;

    move-object v12, v13

    check-cast v12, Ljava/lang/String;

    move-object v13, v14

    check-cast v13, Ljava/lang/String;

    move-object v14, v15

    check-cast v14, Ljava/lang/String;

    move-object v15, v11

    check-cast v15, Ljava/lang/String;

    move-object/from16 v16, v9

    check-cast v16, Ljava/lang/String;

    move-object/from16 v22, v2

    check-cast v22, Ljava/lang/String;

    const/16 v23, 0x0

    move/from16 v9, v27

    move/from16 v11, v26

    invoke-direct/range {v4 .. v23}, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;-><init>(ILjava/lang/String;ZLjava/lang/String;FLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FIZIZLjava/lang/String;Lkotlinx/serialization/internal/e1;)V

    return-object v0

    nop

    :pswitch_data_222
    .packed-switch -0x1
        :pswitch_1d5
        :pswitch_1bb
        :pswitch_1aa
        :pswitch_19b
        :pswitch_18e
        :pswitch_17f
        :pswitch_172
        :pswitch_163
        :pswitch_153
        :pswitch_142
        :pswitch_132
        :pswitch_122
        :pswitch_115
        :pswitch_108
        :pswitch_f9
        :pswitch_ee
        :pswitch_e1
        :pswitch_d6
    .end packed-switch
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt$a;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .registers 2

    sget-object v0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt$a;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;)V
    .registers 4

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt$a;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;->write$Self(Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt$a;->serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;)V

    return-void
.end method

.method public typeParametersSerializers()[Lkotlinx/serialization/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/c<",
            "*>;"
        }
    .end annotation

    invoke-static {p0}, Lkotlinx/serialization/internal/GeneratedSerializer$DefaultImpls;->typeParametersSerializers(Lkotlinx/serialization/internal/GeneratedSerializer;)[Lkotlinx/serialization/c;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.ads.internal.model.DeviceNode.CommonVungleExt.Companion (com.vungle.ads.internal.model.DeviceNode$CommonVungleExt$b)
.class public final Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt$b;
.super Ljava/lang/Object;
.source "DeviceNode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u00c6\u0001\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt$Companion;",
        "",
        "()V",
        "serializer",
        "Lkotlinx/serialization/KSerializer;",
        "Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;",
        "vungle-ads_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/c<",
            "Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt$a;->INSTANCE:Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt$a;

    return-object v0
.end method

###### Class com.vungle.ads.internal.model.DeviceNode.DeviceExt (com.vungle.ads.internal.model.DeviceNode$DeviceExt)
.class public final Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;
.super Ljava/lang/Object;
.source "DeviceNode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/model/DeviceNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceExt"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt$b;,
        Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 \u001c2\u00020\u0001:\u0002\u001b\u001cB#\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\tJ\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u0013\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J!\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u00c7\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;",
        "",
        "seen1",
        "",
        "vungle",
        "Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILcom/vungle/ads/internal/model/DeviceNode$VungleExt;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;)V",
        "getVungle",
        "()Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
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
.field public static final Companion:Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt$b;


# instance fields
.field private final vungle:Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt$b;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;->Companion:Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt$b;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/vungle/ads/internal/model/DeviceNode$VungleExt;Lkotlinx/serialization/internal/e1;)V
    .registers 5

    and-int/lit8 p3, p1, 0x1

    const/4 v0, 0x1

    if-eq v0, p3, :cond_e

    sget-object p3, Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt$a;->INSTANCE:Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt$a;

    invoke-virtual {p3}, Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt$a;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p3

    invoke-static {p1, v0, p3}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;->vungle:Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;

    return-void
.end method

.method public constructor <init>(Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;)V
    .registers 3

    const-string v0, "vungle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;->vungle:Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;

    return-void
.end method

.method public static synthetic copy$default(Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;ILjava/lang/Object;)Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;->vungle:Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;->copy(Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;)Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;

    move-result-object p0

    return-object p0
.end method

.method public static final write$Self(Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .registers 5

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$a;->INSTANCE:Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$a;

    iget-object p0, p0, Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;->vungle:Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->C(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/i;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final component1()Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;->vungle:Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;

    return-object v0
.end method

.method public final copy(Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;)Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;
    .registers 3

    const-string v0, "vungle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;

    invoke-direct {v0, p1}, Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;-><init>(Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;->vungle:Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;

    iget-object p1, p1, Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;->vungle:Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getVungle()Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;->vungle:Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;->vungle:Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceExt(vungle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;->vungle:Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.ads.internal.model.DeviceNode.DeviceExt.a (com.vungle.ads.internal.model.DeviceNode$DeviceExt$a)
.class public final Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt$a;
.super Ljava/lang/Object;
.source "DeviceNode.kt"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0018\u0010\u0008\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\n0\tH\u00d6\u0001\u00a2\u0006\u0002\u0010\u000bJ\u0011\u0010\u000c\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002H\u00d6\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VX\u00d6\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0014"
    }
    d2 = {
        "com/vungle/ads/internal/model/DeviceNode.DeviceExt.$serializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;",
        "()V",
        "descriptor",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "getDescriptor",
        "()Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "childSerializers",
        "",
        "Lkotlinx/serialization/KSerializer;",
        "()[Lkotlinx/serialization/KSerializer;",
        "deserialize",
        "decoder",
        "Lkotlinx/serialization/encoding/Decoder;",
        "serialize",
        "",
        "encoder",
        "Lkotlinx/serialization/encoding/Encoder;",
        "value",
        "vungle-ads_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt$a;

.field public static final synthetic descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt$a;

    invoke-direct {v0}, Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt$a;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt$a;->INSTANCE:Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt$a;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.vungle.ads.internal.model.DeviceNode.DeviceExt"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "vungle"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    sput-object v1, Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt$a;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public childSerializers()[Lkotlinx/serialization/c;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/c<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlinx/serialization/c;

    sget-object v1, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$a;->INSTANCE:Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;
    .registers 10

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt$a;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Decoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/encoding/CompositeDecoder;->p()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1d

    sget-object v1, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$a;->INSTANCE:Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$a;

    invoke-interface {p1, v0, v4, v1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_3c

    :cond_1d
    move-object v1, v2

    const/4 v5, 0x0

    :goto_1f
    if-eqz v3, :cond_3b

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_39

    if-nez v6, :cond_33

    sget-object v6, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$a;->INSTANCE:Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$a;

    invoke-interface {p1, v0, v4, v6, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    or-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_33
    new-instance p1, Lkotlinx/serialization/k;

    invoke-direct {p1, v6}, Lkotlinx/serialization/k;-><init>(I)V

    throw p1

    :cond_39
    const/4 v3, 0x0

    goto :goto_1f

    :cond_3b
    move v3, v5

    :goto_3c
    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance p1, Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;

    check-cast v1, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;

    invoke-direct {p1, v3, v1, v2}, Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;-><init>(ILcom/vungle/ads/internal/model/DeviceNode$VungleExt;Lkotlinx/serialization/internal/e1;)V

    return-object p1
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt$a;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .registers 2

    sget-object v0, Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt$a;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;)V
    .registers 4

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt$a;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;->write$Self(Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt$a;->serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;)V

    return-void
.end method

.method public typeParametersSerializers()[Lkotlinx/serialization/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/c<",
            "*>;"
        }
    .end annotation

    invoke-static {p0}, Lkotlinx/serialization/internal/GeneratedSerializer$DefaultImpls;->typeParametersSerializers(Lkotlinx/serialization/internal/GeneratedSerializer;)[Lkotlinx/serialization/c;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.ads.internal.model.DeviceNode.DeviceExt.Companion (com.vungle.ads.internal.model.DeviceNode$DeviceExt$b)
.class public final Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt$b;
.super Ljava/lang/Object;
.source "DeviceNode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u00c6\u0001\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt$Companion;",
        "",
        "()V",
        "serializer",
        "Lkotlinx/serialization/KSerializer;",
        "Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;",
        "vungle-ads_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/c<",
            "Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt$a;->INSTANCE:Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt$a;

    return-object v0
.end method

###### Class com.vungle.ads.internal.model.DeviceNode.VungleExt (com.vungle.ads.internal.model.DeviceNode$VungleExt)
.class public final Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;
.super Ljava/lang/Object;
.source "DeviceNode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/model/DeviceNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VungleExt"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$b;,
        Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 \u001f2\u00020\u0001:\u0002\u001e\u001fB-\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tB\u001d\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\nJ\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J!\u0010\u0010\u001a\u00020\u00002\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J!\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u00c7\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000c\u00a8\u0006 "
    }
    d2 = {
        "Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;",
        "",
        "seen1",
        "",
        "android",
        "Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;",
        "amazon",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;)V",
        "getAmazon",
        "()Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;",
        "getAndroid",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
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
.field public static final Companion:Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$b;


# instance fields
.field private final amazon:Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;

.field private final android:Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$b;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;->Companion:Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;-><init>(Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;ILkotlin/jvm/internal/n;)V

    return-void
.end method

.method public synthetic constructor <init>(ILcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;Lkotlinx/serialization/internal/e1;)V
    .registers 6

    and-int/lit8 p4, p1, 0x0

    if-eqz p4, :cond_e

    sget-object p4, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$a;->INSTANCE:Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$a;

    invoke-virtual {p4}, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$a;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    const/4 v0, 0x0

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p4, p1, 0x1

    const/4 v0, 0x0

    if-nez p4, :cond_19

    iput-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;->android:Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;

    goto :goto_1b

    :cond_19
    iput-object p2, p0, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;->android:Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;

    :goto_1b
    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_22

    iput-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;->amazon:Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;

    goto :goto_24

    :cond_22
    iput-object p3, p0, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;->amazon:Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;

    :goto_24
    return-void
.end method

.method public constructor <init>(Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;->android:Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;

    iput-object p2, p0, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;->amazon:Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;ILkotlin/jvm/internal/n;)V
    .registers 6

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_b

    move-object p2, v0

    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;-><init>(Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;ILjava/lang/Object;)Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;->android:Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;->amazon:Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;->copy(Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;)Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;

    move-result-object p0

    return-object p0
.end method

.method public static final write$Self(Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .registers 7

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
    iget-object v1, p0, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;->android:Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;

    if-eqz v1, :cond_1e

    goto :goto_17

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    if-eqz v1, :cond_28

    sget-object v1, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt$a;->INSTANCE:Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt$a;

    iget-object v3, p0, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;->android:Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;

    invoke-interface {p1, p2, v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/i;Ljava/lang/Object;)V

    :cond_28
    invoke-interface {p1, p2, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_30

    :goto_2e
    const/4 v0, 0x1

    goto :goto_35

    :cond_30
    iget-object v1, p0, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;->amazon:Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;

    if-eqz v1, :cond_35

    goto :goto_2e

    :cond_35
    :goto_35
    if-eqz v0, :cond_3e

    sget-object v0, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt$a;->INSTANCE:Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt$a;

    iget-object p0, p0, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;->amazon:Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;

    invoke-interface {p1, p2, v2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/i;Ljava/lang/Object;)V

    :cond_3e
    return-void
.end method


# virtual methods
.method public final component1()Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;->android:Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;

    return-object v0
.end method

.method public final component2()Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;->amazon:Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;

    return-object v0
.end method

.method public final copy(Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;)Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;
    .registers 4

    new-instance v0, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;

    invoke-direct {v0, p1, p2}, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;-><init>(Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;->android:Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;->android:Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;->amazon:Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;

    iget-object p1, p1, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;->amazon:Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getAmazon()Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;->amazon:Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;

    return-object v0
.end method

.method public final getAndroid()Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;->android:Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;->android:Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;->amazon:Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;

    if-nez v2, :cond_12

    goto :goto_16

    :cond_12
    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;->hashCode()I

    move-result v1

    :goto_16
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VungleExt(android="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;->android:Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", amazon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;->amazon:Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.ads.internal.model.DeviceNode.VungleExt.a (com.vungle.ads.internal.model.DeviceNode$VungleExt$a)
.class public final Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$a;
.super Ljava/lang/Object;
.source "DeviceNode.kt"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0018\u0010\u0008\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\n0\tH\u00d6\u0001\u00a2\u0006\u0002\u0010\u000bJ\u0011\u0010\u000c\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002H\u00d6\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VX\u00d6\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0014"
    }
    d2 = {
        "com/vungle/ads/internal/model/DeviceNode.VungleExt.$serializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;",
        "()V",
        "descriptor",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "getDescriptor",
        "()Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "childSerializers",
        "",
        "Lkotlinx/serialization/KSerializer;",
        "()[Lkotlinx/serialization/KSerializer;",
        "deserialize",
        "decoder",
        "Lkotlinx/serialization/encoding/Decoder;",
        "serialize",
        "",
        "encoder",
        "Lkotlinx/serialization/encoding/Encoder;",
        "value",
        "vungle-ads_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$a;

.field public static final synthetic descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$a;

    invoke-direct {v0}, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$a;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$a;->INSTANCE:Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$a;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.vungle.ads.internal.model.DeviceNode.VungleExt"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "android"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "amazon"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    sput-object v1, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$a;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public childSerializers()[Lkotlinx/serialization/c;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/c<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlinx/serialization/c;

    sget-object v1, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt$a;->INSTANCE:Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt$a;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;
    .registers 12

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$a;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Decoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/encoding/CompositeDecoder;->p()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_22

    sget-object v1, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt$a;->INSTANCE:Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt$a;

    invoke-interface {p1, v0, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v0, v4, v1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v4, 0x3

    goto :goto_4f

    :cond_22
    move-object v1, v2

    move-object v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_26
    if-eqz v7, :cond_4d

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_4b

    if-eqz v8, :cond_42

    if-ne v8, v4, :cond_3c

    sget-object v8, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt$a;->INSTANCE:Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt$a;

    invoke-interface {p1, v0, v4, v8, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    or-int/lit8 v6, v6, 0x2

    goto :goto_26

    :cond_3c
    new-instance p1, Lkotlinx/serialization/k;

    invoke-direct {p1, v8}, Lkotlinx/serialization/k;-><init>(I)V

    throw p1

    :cond_42
    sget-object v8, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt$a;->INSTANCE:Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt$a;

    invoke-interface {p1, v0, v3, v8, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    or-int/lit8 v6, v6, 0x1

    goto :goto_26

    :cond_4b
    const/4 v7, 0x0

    goto :goto_26

    :cond_4d
    move-object v3, v5

    move v4, v6

    :goto_4f
    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance p1, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;

    check-cast v3, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;

    check-cast v1, Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;

    invoke-direct {p1, v4, v3, v1, v2}, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;-><init>(ILcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;Lkotlinx/serialization/internal/e1;)V

    return-object p1
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$a;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .registers 2

    sget-object v0, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$a;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;)V
    .registers 4

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$a;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;->write$Self(Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$a;->serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;)V

    return-void
.end method

.method public typeParametersSerializers()[Lkotlinx/serialization/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/c<",
            "*>;"
        }
    .end annotation

    invoke-static {p0}, Lkotlinx/serialization/internal/GeneratedSerializer$DefaultImpls;->typeParametersSerializers(Lkotlinx/serialization/internal/GeneratedSerializer;)[Lkotlinx/serialization/c;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.ads.internal.model.DeviceNode.VungleExt.Companion (com.vungle.ads.internal.model.DeviceNode$VungleExt$b)
.class public final Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$b;
.super Ljava/lang/Object;
.source "DeviceNode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u00c6\u0001\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$Companion;",
        "",
        "()V",
        "serializer",
        "Lkotlinx/serialization/KSerializer;",
        "Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;",
        "vungle-ads_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/c<",
            "Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$a;->INSTANCE:Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$a;

    return-object v0
.end method

###### Class com.vungle.ads.internal.model.DeviceNode.a (com.vungle.ads.internal.model.DeviceNode$a)
.class public final Lcom/vungle/ads/internal/model/DeviceNode$a;
.super Ljava/lang/Object;
.source "DeviceNode.kt"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/model/DeviceNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lcom/vungle/ads/internal/model/DeviceNode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0018\u0010\u0008\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\n0\tH\u00d6\u0001\u00a2\u0006\u0002\u0010\u000bJ\u0011\u0010\u000c\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002H\u00d6\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VX\u00d6\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0014"
    }
    d2 = {
        "com/vungle/ads/internal/model/DeviceNode.$serializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "Lcom/vungle/ads/internal/model/DeviceNode;",
        "()V",
        "descriptor",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "getDescriptor",
        "()Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "childSerializers",
        "",
        "Lkotlinx/serialization/KSerializer;",
        "()[Lkotlinx/serialization/KSerializer;",
        "deserialize",
        "decoder",
        "Lkotlinx/serialization/encoding/Decoder;",
        "serialize",
        "",
        "encoder",
        "Lkotlinx/serialization/encoding/Encoder;",
        "value",
        "vungle-ads_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/vungle/ads/internal/model/DeviceNode$a;

.field public static final synthetic descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/vungle/ads/internal/model/DeviceNode$a;

    invoke-direct {v0}, Lcom/vungle/ads/internal/model/DeviceNode$a;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/model/DeviceNode$a;->INSTANCE:Lcom/vungle/ads/internal/model/DeviceNode$a;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.vungle.ads.internal.model.DeviceNode"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "make"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "model"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "osv"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "carrier"

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "os"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "w"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "h"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "ua"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "ifa"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "lmt"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "ext"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    sput-object v1, Lcom/vungle/ads/internal/model/DeviceNode$a;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public childSerializers()[Lkotlinx/serialization/c;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/c<",
            "*>;"
        }
    .end annotation

    const/16 v0, 0xb

    new-array v0, v0, [Lkotlinx/serialization/c;

    sget-object v1, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v2, Lkotlinx/serialization/internal/i0;->a:Lkotlinx/serialization/internal/i0;

    const/4 v3, 0x5

    aput-object v2, v0, v3

    const/4 v3, 0x6

    aput-object v2, v0, v3

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v0, v4

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v1

    const/16 v3, 0x8

    aput-object v1, v0, v3

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt$a;->INSTANCE:Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt$a;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    return-object v0
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/vungle/ads/internal/model/DeviceNode;
    .registers 25

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/vungle/ads/internal/model/DeviceNode$a;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->p()Z

    move-result v2

    const/16 v3, 0xa

    const/16 v4, 0x9

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x3

    const/16 v9, 0x8

    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-eqz v2, :cond_65

    invoke-interface {v0, v1, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v1, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v11

    sget-object v13, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    invoke-interface {v0, v1, v8, v13, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v0, v1, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v1, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v7

    invoke-interface {v0, v1, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v6

    invoke-interface {v0, v1, v5, v13, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v1, v9, v13, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    sget-object v13, Lkotlinx/serialization/internal/i0;->a:Lkotlinx/serialization/internal/i0;

    invoke-interface {v0, v1, v4, v13, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v13, Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt$a;->INSTANCE:Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt$a;

    invoke-interface {v0, v1, v3, v13, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v13, 0x7ff

    move/from16 v16, v6

    move v15, v7

    move-object v14, v10

    move-object/from16 v17, v12

    move-object v10, v2

    move-object v12, v11

    move-object v11, v9

    const/16 v9, 0x7ff

    goto/16 :goto_108

    :cond_65
    move-object v8, v14

    move-object v10, v8

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object/from16 v16, v13

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    const/4 v2, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v22, 0x1

    :goto_77
    if-eqz v22, :cond_fa

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v7

    packed-switch v7, :pswitch_data_12a

    new-instance v0, Lkotlinx/serialization/k;

    invoke-direct {v0, v7}, Lkotlinx/serialization/k;-><init>(I)V

    throw v0

    :pswitch_86
    sget-object v7, Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt$a;->INSTANCE:Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt$a;

    invoke-interface {v0, v1, v3, v7, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    or-int/lit16 v15, v15, 0x400

    goto :goto_b0

    :pswitch_8f
    sget-object v7, Lkotlinx/serialization/internal/i0;->a:Lkotlinx/serialization/internal/i0;

    invoke-interface {v0, v1, v4, v7, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    or-int/lit16 v15, v15, 0x200

    goto :goto_b0

    :pswitch_98
    sget-object v7, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    invoke-interface {v0, v1, v9, v7, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    or-int/lit16 v15, v15, 0x100

    goto :goto_b0

    :pswitch_a1
    sget-object v7, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    invoke-interface {v0, v1, v5, v7, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    or-int/lit16 v15, v15, 0x80

    goto :goto_b0

    :pswitch_aa
    invoke-interface {v0, v1, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v2

    or-int/lit8 v15, v15, 0x40

    :goto_b0
    const/4 v7, 0x5

    goto :goto_77

    :pswitch_b2
    const/4 v7, 0x5

    invoke-interface {v0, v1, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v14

    or-int/lit8 v15, v15, 0x20

    goto :goto_77

    :pswitch_ba
    const/4 v3, 0x4

    const/4 v7, 0x5

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v19

    or-int/lit8 v15, v15, 0x10

    const/16 v3, 0xa

    goto :goto_77

    :pswitch_c5
    const/4 v7, 0x5

    sget-object v3, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    const/4 v4, 0x3

    invoke-interface {v0, v1, v4, v3, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    or-int/lit8 v15, v15, 0x8

    goto :goto_ed

    :pswitch_d0
    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v7, 0x5

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v18

    or-int/lit8 v15, v15, 0x4

    goto :goto_ed

    :pswitch_da
    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v7, 0x5

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v17

    or-int/lit8 v15, v15, 0x2

    goto :goto_ed

    :pswitch_e4
    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v7, 0x5

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v16

    or-int/lit8 v15, v15, 0x1

    :goto_ed
    const/16 v3, 0xa

    const/16 v4, 0x9

    goto :goto_77

    :pswitch_f2
    const/4 v3, 0x0

    const/4 v7, 0x5

    const/16 v3, 0xa

    const/16 v22, 0x0

    goto/16 :goto_77

    :cond_fa
    move-object v4, v8

    move-object v3, v10

    move-object v5, v12

    move-object v8, v13

    move v9, v15

    move-object/from16 v10, v16

    move-object/from16 v12, v18

    move/from16 v16, v2

    move v15, v14

    move-object/from16 v14, v19

    :goto_108
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v0, Lcom/vungle/ads/internal/model/DeviceNode;

    move-object v13, v8

    check-cast v13, Ljava/lang/String;

    move-object v1, v5

    check-cast v1, Ljava/lang/String;

    move-object/from16 v18, v11

    check-cast v18, Ljava/lang/String;

    move-object/from16 v19, v4

    check-cast v19, Ljava/lang/Integer;

    move-object/from16 v20, v3

    check-cast v20, Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;

    const/16 v21, 0x0

    move-object v8, v0

    move-object/from16 v11, v17

    move-object/from16 v17, v1

    invoke-direct/range {v8 .. v21}, Lcom/vungle/ads/internal/model/DeviceNode;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;Lkotlinx/serialization/internal/e1;)V

    return-object v0

    :pswitch_data_12a
    .packed-switch -0x1
        :pswitch_f2
        :pswitch_e4
        :pswitch_da
        :pswitch_d0
        :pswitch_c5
        :pswitch_ba
        :pswitch_b2
        :pswitch_aa
        :pswitch_a1
        :pswitch_98
        :pswitch_8f
        :pswitch_86
    .end packed-switch
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/model/DeviceNode$a;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/vungle/ads/internal/model/DeviceNode;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .registers 2

    sget-object v0, Lcom/vungle/ads/internal/model/DeviceNode$a;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/vungle/ads/internal/model/DeviceNode;)V
    .registers 4

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/DeviceNode$a;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/vungle/ads/internal/model/DeviceNode;->write$Self(Lcom/vungle/ads/internal/model/DeviceNode;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/vungle/ads/internal/model/DeviceNode;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/internal/model/DeviceNode$a;->serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/vungle/ads/internal/model/DeviceNode;)V

    return-void
.end method

.method public typeParametersSerializers()[Lkotlinx/serialization/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/c<",
            "*>;"
        }
    .end annotation

    invoke-static {p0}, Lkotlinx/serialization/internal/GeneratedSerializer$DefaultImpls;->typeParametersSerializers(Lkotlinx/serialization/internal/GeneratedSerializer;)[Lkotlinx/serialization/c;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.ads.internal.model.DeviceNode.Companion (com.vungle.ads.internal.model.DeviceNode$b)
.class public final Lcom/vungle/ads/internal/model/DeviceNode$b;
.super Ljava/lang/Object;
.source "DeviceNode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/model/DeviceNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u00c6\u0001\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vungle/ads/internal/model/DeviceNode$Companion;",
        "",
        "()V",
        "serializer",
        "Lkotlinx/serialization/KSerializer;",
        "Lcom/vungle/ads/internal/model/DeviceNode;",
        "vungle-ads_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lcom/vungle/ads/internal/model/DeviceNode$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/c<",
            "Lcom/vungle/ads/internal/model/DeviceNode;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/vungle/ads/internal/model/DeviceNode$a;->INSTANCE:Lcom/vungle/ads/internal/model/DeviceNode$a;

    return-object v0
.end method
