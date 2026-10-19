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
