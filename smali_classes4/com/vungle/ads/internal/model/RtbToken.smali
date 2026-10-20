###### Class com.vungle.ads.internal.model.RtbToken (com.vungle.ads.internal.model.RtbToken)
.class public final Lcom/vungle/ads/internal/model/RtbToken;
.super Ljava/lang/Object;
.source "RtbToken.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/model/RtbToken$b;,
        Lcom/vungle/ads/internal/model/RtbToken$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 12\u00020\u0001:\u000201BK\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u0003\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0002\u0010\u000fB9\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\u000c\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0010J\t\u0010\u001d\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u000bH\u00c6\u0003J\t\u0010!\u001a\u00020\u0003H\u00c6\u0003JA\u0010\"\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010#\u001a\u00020$2\u0008\u0010%\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010&\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\'\u001a\u00020(H\u00d6\u0001J!\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u00002\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/H\u00c7\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u000c\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u00062"
    }
    d2 = {
        "Lcom/vungle/ads/internal/model/RtbToken;",
        "",
        "seen1",
        "",
        "device",
        "Lcom/vungle/ads/internal/model/DeviceNode;",
        "user",
        "Lcom/vungle/ads/internal/model/CommonRequestBody$User;",
        "ext",
        "Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt;",
        "request",
        "Lcom/vungle/ads/internal/model/RtbRequest;",
        "ordinalView",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILcom/vungle/ads/internal/model/DeviceNode;Lcom/vungle/ads/internal/model/CommonRequestBody$User;Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt;Lcom/vungle/ads/internal/model/RtbRequest;ILkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Lcom/vungle/ads/internal/model/DeviceNode;Lcom/vungle/ads/internal/model/CommonRequestBody$User;Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt;Lcom/vungle/ads/internal/model/RtbRequest;I)V",
        "getDevice",
        "()Lcom/vungle/ads/internal/model/DeviceNode;",
        "getExt",
        "()Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt;",
        "getOrdinalView$annotations",
        "()V",
        "getOrdinalView",
        "()I",
        "getRequest",
        "()Lcom/vungle/ads/internal/model/RtbRequest;",
        "getUser",
        "()Lcom/vungle/ads/internal/model/CommonRequestBody$User;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
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
.field public static final Companion:Lcom/vungle/ads/internal/model/RtbToken$b;


# instance fields
.field private final device:Lcom/vungle/ads/internal/model/DeviceNode;

.field private final ext:Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt;

.field private final ordinalView:I

.field private final request:Lcom/vungle/ads/internal/model/RtbRequest;

.field private final user:Lcom/vungle/ads/internal/model/CommonRequestBody$User;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/vungle/ads/internal/model/RtbToken$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/model/RtbToken$b;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lcom/vungle/ads/internal/model/RtbToken;->Companion:Lcom/vungle/ads/internal/model/RtbToken$b;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/vungle/ads/internal/model/DeviceNode;Lcom/vungle/ads/internal/model/CommonRequestBody$User;Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt;Lcom/vungle/ads/internal/model/RtbRequest;ILkotlinx/serialization/internal/e1;)V
    .registers 9

    and-int/lit8 p7, p1, 0x11

    const/16 v0, 0x11

    if-eq v0, p7, :cond_f

    sget-object p7, Lcom/vungle/ads/internal/model/RtbToken$a;->INSTANCE:Lcom/vungle/ads/internal/model/RtbToken$a;

    invoke-virtual {p7}, Lcom/vungle/ads/internal/model/RtbToken$a;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p7

    invoke-static {p1, v0, p7}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vungle/ads/internal/model/RtbToken;->device:Lcom/vungle/ads/internal/model/DeviceNode;

    and-int/lit8 p2, p1, 0x2

    const/4 p7, 0x0

    if-nez p2, :cond_1c

    iput-object p7, p0, Lcom/vungle/ads/internal/model/RtbToken;->user:Lcom/vungle/ads/internal/model/CommonRequestBody$User;

    goto :goto_1e

    :cond_1c
    iput-object p3, p0, Lcom/vungle/ads/internal/model/RtbToken;->user:Lcom/vungle/ads/internal/model/CommonRequestBody$User;

    :goto_1e
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_25

    iput-object p7, p0, Lcom/vungle/ads/internal/model/RtbToken;->ext:Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt;

    goto :goto_27

    :cond_25
    iput-object p4, p0, Lcom/vungle/ads/internal/model/RtbToken;->ext:Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt;

    :goto_27
    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_2e

    iput-object p7, p0, Lcom/vungle/ads/internal/model/RtbToken;->request:Lcom/vungle/ads/internal/model/RtbRequest;

    goto :goto_30

    :cond_2e
    iput-object p5, p0, Lcom/vungle/ads/internal/model/RtbToken;->request:Lcom/vungle/ads/internal/model/RtbRequest;

    :goto_30
    iput p6, p0, Lcom/vungle/ads/internal/model/RtbToken;->ordinalView:I

    return-void
.end method

.method public constructor <init>(Lcom/vungle/ads/internal/model/DeviceNode;Lcom/vungle/ads/internal/model/CommonRequestBody$User;Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt;Lcom/vungle/ads/internal/model/RtbRequest;I)V
    .registers 7

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/model/RtbToken;->device:Lcom/vungle/ads/internal/model/DeviceNode;

    iput-object p2, p0, Lcom/vungle/ads/internal/model/RtbToken;->user:Lcom/vungle/ads/internal/model/CommonRequestBody$User;

    iput-object p3, p0, Lcom/vungle/ads/internal/model/RtbToken;->ext:Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt;

    iput-object p4, p0, Lcom/vungle/ads/internal/model/RtbToken;->request:Lcom/vungle/ads/internal/model/RtbRequest;

    iput p5, p0, Lcom/vungle/ads/internal/model/RtbToken;->ordinalView:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vungle/ads/internal/model/DeviceNode;Lcom/vungle/ads/internal/model/CommonRequestBody$User;Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt;Lcom/vungle/ads/internal/model/RtbRequest;IILkotlin/jvm/internal/n;)V
    .registers 15

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_7

    move-object v3, v0

    goto :goto_8

    :cond_7
    move-object v3, p2

    :goto_8
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_e

    move-object v4, v0

    goto :goto_f

    :cond_e
    move-object v4, p3

    :goto_f
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_15

    move-object v5, v0

    goto :goto_16

    :cond_15
    move-object v5, p4

    :goto_16
    move-object v1, p0

    move-object v2, p1

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/vungle/ads/internal/model/RtbToken;-><init>(Lcom/vungle/ads/internal/model/DeviceNode;Lcom/vungle/ads/internal/model/CommonRequestBody$User;Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt;Lcom/vungle/ads/internal/model/RtbRequest;I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/vungle/ads/internal/model/RtbToken;Lcom/vungle/ads/internal/model/DeviceNode;Lcom/vungle/ads/internal/model/CommonRequestBody$User;Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt;Lcom/vungle/ads/internal/model/RtbRequest;IILjava/lang/Object;)Lcom/vungle/ads/internal/model/RtbToken;
    .registers 11

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget-object p1, p0, Lcom/vungle/ads/internal/model/RtbToken;->device:Lcom/vungle/ads/internal/model/DeviceNode;

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_c

    iget-object p2, p0, Lcom/vungle/ads/internal/model/RtbToken;->user:Lcom/vungle/ads/internal/model/CommonRequestBody$User;

    :cond_c
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_13

    iget-object p3, p0, Lcom/vungle/ads/internal/model/RtbToken;->ext:Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt;

    :cond_13
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_1a

    iget-object p4, p0, Lcom/vungle/ads/internal/model/RtbToken;->request:Lcom/vungle/ads/internal/model/RtbRequest;

    :cond_1a
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_21

    iget p5, p0, Lcom/vungle/ads/internal/model/RtbToken;->ordinalView:I

    :cond_21
    move v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/vungle/ads/internal/model/RtbToken;->copy(Lcom/vungle/ads/internal/model/DeviceNode;Lcom/vungle/ads/internal/model/CommonRequestBody$User;Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt;Lcom/vungle/ads/internal/model/RtbRequest;I)Lcom/vungle/ads/internal/model/RtbToken;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getOrdinalView$annotations()V
    .registers 0

    return-void
.end method

.method public static final write$Self(Lcom/vungle/ads/internal/model/RtbToken;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .registers 8

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vungle/ads/internal/model/DeviceNode$a;->INSTANCE:Lcom/vungle/ads/internal/model/DeviceNode$a;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/RtbToken;->device:Lcom/vungle/ads/internal/model/DeviceNode;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->C(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/i;Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_20

    :goto_1e
    const/4 v1, 0x1

    goto :goto_26

    :cond_20
    iget-object v1, p0, Lcom/vungle/ads/internal/model/RtbToken;->user:Lcom/vungle/ads/internal/model/CommonRequestBody$User;

    if-eqz v1, :cond_25

    goto :goto_1e

    :cond_25
    const/4 v1, 0x0

    :goto_26
    if-eqz v1, :cond_2f

    sget-object v1, Lcom/vungle/ads/internal/model/CommonRequestBody$User$a;->INSTANCE:Lcom/vungle/ads/internal/model/CommonRequestBody$User$a;

    iget-object v3, p0, Lcom/vungle/ads/internal/model/RtbToken;->user:Lcom/vungle/ads/internal/model/CommonRequestBody$User;

    invoke-interface {p1, p2, v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/i;Ljava/lang/Object;)V

    :cond_2f
    const/4 v1, 0x2

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_38

    :goto_36
    const/4 v3, 0x1

    goto :goto_3e

    :cond_38
    iget-object v3, p0, Lcom/vungle/ads/internal/model/RtbToken;->ext:Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt;

    if-eqz v3, :cond_3d

    goto :goto_36

    :cond_3d
    const/4 v3, 0x0

    :goto_3e
    if-eqz v3, :cond_47

    sget-object v3, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt$a;->INSTANCE:Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt$a;

    iget-object v4, p0, Lcom/vungle/ads/internal/model/RtbToken;->ext:Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt;

    invoke-interface {p1, p2, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/i;Ljava/lang/Object;)V

    :cond_47
    const/4 v1, 0x3

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_50

    :goto_4e
    const/4 v2, 0x1

    goto :goto_55

    :cond_50
    iget-object v3, p0, Lcom/vungle/ads/internal/model/RtbToken;->request:Lcom/vungle/ads/internal/model/RtbRequest;

    if-eqz v3, :cond_55

    goto :goto_4e

    :cond_55
    :goto_55
    if-eqz v2, :cond_5e

    sget-object v0, Lcom/vungle/ads/internal/model/RtbRequest$a;->INSTANCE:Lcom/vungle/ads/internal/model/RtbRequest$a;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/RtbToken;->request:Lcom/vungle/ads/internal/model/RtbRequest;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/i;Ljava/lang/Object;)V

    :cond_5e
    const/4 v0, 0x4

    iget p0, p0, Lcom/vungle/ads/internal/model/RtbToken;->ordinalView:I

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    return-void
.end method


# virtual methods
.method public final component1()Lcom/vungle/ads/internal/model/DeviceNode;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/RtbToken;->device:Lcom/vungle/ads/internal/model/DeviceNode;

    return-object v0
.end method

.method public final component2()Lcom/vungle/ads/internal/model/CommonRequestBody$User;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/RtbToken;->user:Lcom/vungle/ads/internal/model/CommonRequestBody$User;

    return-object v0
.end method

.method public final component3()Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/RtbToken;->ext:Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt;

    return-object v0
.end method

.method public final component4()Lcom/vungle/ads/internal/model/RtbRequest;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/RtbToken;->request:Lcom/vungle/ads/internal/model/RtbRequest;

    return-object v0
.end method

.method public final component5()I
    .registers 2

    iget v0, p0, Lcom/vungle/ads/internal/model/RtbToken;->ordinalView:I

    return v0
.end method

.method public final copy(Lcom/vungle/ads/internal/model/DeviceNode;Lcom/vungle/ads/internal/model/CommonRequestBody$User;Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt;Lcom/vungle/ads/internal/model/RtbRequest;I)Lcom/vungle/ads/internal/model/RtbToken;
    .registers 13

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/vungle/ads/internal/model/RtbToken;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/vungle/ads/internal/model/RtbToken;-><init>(Lcom/vungle/ads/internal/model/DeviceNode;Lcom/vungle/ads/internal/model/CommonRequestBody$User;Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt;Lcom/vungle/ads/internal/model/RtbRequest;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/vungle/ads/internal/model/RtbToken;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/vungle/ads/internal/model/RtbToken;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/RtbToken;->device:Lcom/vungle/ads/internal/model/DeviceNode;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/RtbToken;->device:Lcom/vungle/ads/internal/model/DeviceNode;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/vungle/ads/internal/model/RtbToken;->user:Lcom/vungle/ads/internal/model/CommonRequestBody$User;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/RtbToken;->user:Lcom/vungle/ads/internal/model/CommonRequestBody$User;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/vungle/ads/internal/model/RtbToken;->ext:Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/RtbToken;->ext:Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/vungle/ads/internal/model/RtbToken;->request:Lcom/vungle/ads/internal/model/RtbRequest;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/RtbToken;->request:Lcom/vungle/ads/internal/model/RtbRequest;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget v1, p0, Lcom/vungle/ads/internal/model/RtbToken;->ordinalView:I

    iget p1, p1, Lcom/vungle/ads/internal/model/RtbToken;->ordinalView:I

    if-eq v1, p1, :cond_3f

    return v2

    :cond_3f
    return v0
.end method

.method public final getDevice()Lcom/vungle/ads/internal/model/DeviceNode;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/RtbToken;->device:Lcom/vungle/ads/internal/model/DeviceNode;

    return-object v0
.end method

.method public final getExt()Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/RtbToken;->ext:Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt;

    return-object v0
.end method

.method public final getOrdinalView()I
    .registers 2

    iget v0, p0, Lcom/vungle/ads/internal/model/RtbToken;->ordinalView:I

    return v0
.end method

.method public final getRequest()Lcom/vungle/ads/internal/model/RtbRequest;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/RtbToken;->request:Lcom/vungle/ads/internal/model/RtbRequest;

    return-object v0
.end method

.method public final getUser()Lcom/vungle/ads/internal/model/CommonRequestBody$User;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/RtbToken;->user:Lcom/vungle/ads/internal/model/CommonRequestBody$User;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/vungle/ads/internal/model/RtbToken;->device:Lcom/vungle/ads/internal/model/DeviceNode;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/DeviceNode;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/model/RtbToken;->user:Lcom/vungle/ads/internal/model/CommonRequestBody$User;

    const/4 v2, 0x0

    if-nez v1, :cond_f

    const/4 v1, 0x0

    goto :goto_13

    :cond_f
    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/CommonRequestBody$User;->hashCode()I

    move-result v1

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/model/RtbToken;->ext:Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt;

    if-nez v1, :cond_1c

    const/4 v1, 0x0

    goto :goto_20

    :cond_1c
    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt;->hashCode()I

    move-result v1

    :goto_20
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/model/RtbToken;->request:Lcom/vungle/ads/internal/model/RtbRequest;

    if-nez v1, :cond_28

    goto :goto_2c

    :cond_28
    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/RtbRequest;->hashCode()I

    move-result v2

    :goto_2c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/vungle/ads/internal/model/RtbToken;->ordinalView:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RtbToken(device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/RtbToken;->device:Lcom/vungle/ads/internal/model/DeviceNode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/RtbToken;->user:Lcom/vungle/ads/internal/model/CommonRequestBody$User;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/RtbToken;->ext:Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/RtbToken;->request:Lcom/vungle/ads/internal/model/RtbRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ordinalView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/ads/internal/model/RtbToken;->ordinalView:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
