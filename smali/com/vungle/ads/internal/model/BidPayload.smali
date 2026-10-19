###### Class com.vungle.ads.internal.model.BidPayload (com.vungle.ads.internal.model.BidPayload)
.class public final Lcom/vungle/ads/internal/model/BidPayload;
.super Ljava/lang/Object;
.source "BidPayload.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/model/BidPayload$c;,
        Lcom/vungle/ads/internal/model/BidPayload$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 22\u00020\u0001:\u000212BG\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0002\u0010\rB/\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\u000eJ\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0018J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u0011\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0008H\u00c6\u0003J8\u0010\u001d\u001a\u00020\u00002\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0008H\u00c6\u0001\u00a2\u0006\u0002\u0010\u001eJ\u0013\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\u0008\u0010\"\u001a\u0004\u0018\u00010\nJ\u0008\u0010#\u001a\u0004\u0018\u00010\u0006J\u0008\u0010$\u001a\u0004\u0018\u00010\u0006J\u0010\u0010%\u001a\u00020\u00062\u0006\u0010&\u001a\u00020\'H\u0002J\t\u0010(\u001a\u00020\u0003H\u00d6\u0001J\t\u0010)\u001a\u00020\u0006H\u00d6\u0001J!\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\u00002\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u000200H\u00c7\u0001R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0019\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0013\u001a\u00020\u00148\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0015\u0010\u0016R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u0019\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u00063"
    }
    d2 = {
        "Lcom/vungle/ads/internal/model/BidPayload;",
        "",
        "seen1",
        "",
        "version",
        "adunit",
        "",
        "impression",
        "",
        "ad",
        "Lcom/vungle/ads/internal/model/AdPayload;",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lcom/vungle/ads/internal/model/AdPayload;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V",
        "getAdunit",
        "()Ljava/lang/String;",
        "getImpression",
        "()Ljava/util/List;",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "getJson$annotations",
        "()V",
        "getVersion",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "component1",
        "component2",
        "component3",
        "copy",
        "(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)Lcom/vungle/ads/internal/model/BidPayload;",
        "equals",
        "",
        "other",
        "getAdPayload",
        "getEventId",
        "getPlacementId",
        "gzipDecode",
        "compressed",
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
.field public static final Companion:Lcom/vungle/ads/internal/model/BidPayload$c;


# instance fields
.field private final ad:Lcom/vungle/ads/internal/model/AdPayload;

.field private final adunit:Ljava/lang/String;

.field private final impression:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final json:Lkotlinx/serialization/json/Json;

.field private final version:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/vungle/ads/internal/model/BidPayload$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/model/BidPayload$c;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lcom/vungle/ads/internal/model/BidPayload;->Companion:Lcom/vungle/ads/internal/model/BidPayload$c;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/vungle/ads/internal/model/BidPayload;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/n;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lcom/vungle/ads/internal/model/AdPayload;Lkotlinx/serialization/internal/e1;)V
    .registers 9

    and-int/lit8 p6, p1, 0x0

    const/4 v0, 0x0

    if-eqz p6, :cond_e

    sget-object p6, Lcom/vungle/ads/internal/model/BidPayload$a;->INSTANCE:Lcom/vungle/ads/internal/model/BidPayload$a;

    invoke-virtual {p6}, Lcom/vungle/ads/internal/model/BidPayload$a;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p6

    invoke-static {p1, v0, p6}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p6, p1, 0x1

    const/4 v1, 0x0

    if-nez p6, :cond_19

    iput-object v1, p0, Lcom/vungle/ads/internal/model/BidPayload;->version:Ljava/lang/Integer;

    goto :goto_1b

    :cond_19
    iput-object p2, p0, Lcom/vungle/ads/internal/model/BidPayload;->version:Ljava/lang/Integer;

    :goto_1b
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_22

    iput-object v1, p0, Lcom/vungle/ads/internal/model/BidPayload;->adunit:Ljava/lang/String;

    goto :goto_24

    :cond_22
    iput-object p3, p0, Lcom/vungle/ads/internal/model/BidPayload;->adunit:Ljava/lang/String;

    :goto_24
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2b

    iput-object v1, p0, Lcom/vungle/ads/internal/model/BidPayload;->impression:Ljava/util/List;

    goto :goto_2d

    :cond_2b
    iput-object p4, p0, Lcom/vungle/ads/internal/model/BidPayload;->impression:Ljava/util/List;

    :goto_2d
    sget-object p2, Lcom/vungle/ads/internal/model/BidPayload$b;->INSTANCE:Lcom/vungle/ads/internal/model/BidPayload$b;

    const/4 p3, 0x1

    invoke-static {v1, p2, p3, v1}, Lkotlinx/serialization/json/JsonKt;->Json$default(Lkotlinx/serialization/json/Json;Lkotlin/jvm/b/l;ILjava/lang/Object;)Lkotlinx/serialization/json/Json;

    move-result-object p2

    iput-object p2, p0, Lcom/vungle/ads/internal/model/BidPayload;->json:Lkotlinx/serialization/json/Json;

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_75

    iget-object p1, p0, Lcom/vungle/ads/internal/model/BidPayload;->adunit:Ljava/lang/String;

    if-eqz p1, :cond_72

    new-instance p3, Lkotlin/jvm/internal/l0;

    invoke-direct {p3}, Lkotlin/jvm/internal/l0;-><init>()V

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    if-eqz p1, :cond_4e

    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/model/BidPayload;->gzipDecode([B)Ljava/lang/String;

    move-result-object p1

    goto :goto_4f

    :cond_4e
    move-object p1, v1

    :goto_4f
    iput-object p1, p3, Lkotlin/jvm/internal/l0;->a:Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_72

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2}, Lkotlinx/serialization/f;->a()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object p3

    const-class p4, Lcom/vungle/ads/internal/model/AdPayload;

    invoke-static {p4}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object p4

    invoke-static {p3, p4}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/c;

    move-result-object p3

    const-string p4, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p3, p1}, Lkotlinx/serialization/j;->b(Lkotlinx/serialization/b;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/ads/internal/model/AdPayload;

    move-object v1, p1

    :cond_72
    iput-object v1, p0, Lcom/vungle/ads/internal/model/BidPayload;->ad:Lcom/vungle/ads/internal/model/AdPayload;

    goto :goto_77

    :cond_75
    iput-object p5, p0, Lcom/vungle/ads/internal/model/BidPayload;->ad:Lcom/vungle/ads/internal/model/AdPayload;

    :goto_77
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/model/BidPayload;->version:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/vungle/ads/internal/model/BidPayload;->adunit:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/ads/internal/model/BidPayload;->impression:Ljava/util/List;

    sget-object p1, Lcom/vungle/ads/internal/model/BidPayload$d;->INSTANCE:Lcom/vungle/ads/internal/model/BidPayload$d;

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-static {p3, p1, v0, p3}, Lkotlinx/serialization/json/JsonKt;->Json$default(Lkotlinx/serialization/json/Json;Lkotlin/jvm/b/l;ILjava/lang/Object;)Lkotlinx/serialization/json/Json;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/ads/internal/model/BidPayload;->json:Lkotlinx/serialization/json/Json;

    if-eqz p2, :cond_4a

    new-instance v0, Lkotlin/jvm/internal/l0;

    invoke-direct {v0}, Lkotlin/jvm/internal/l0;-><init>()V

    const/4 v1, 0x0

    invoke-static {p2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    if-eqz p2, :cond_26

    invoke-direct {p0, p2}, Lcom/vungle/ads/internal/model/BidPayload;->gzipDecode([B)Ljava/lang/String;

    move-result-object p2

    goto :goto_27

    :cond_26
    move-object p2, p3

    :goto_27
    iput-object p2, v0, Lkotlin/jvm/internal/l0;->a:Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4a

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1}, Lkotlinx/serialization/f;->a()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object p3

    const-class v0, Lcom/vungle/ads/internal/model/AdPayload;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/c;

    move-result-object p3

    const-string v0, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p3, p2}, Lkotlinx/serialization/j;->b(Lkotlinx/serialization/b;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/ads/internal/model/AdPayload;

    move-object p3, p1

    :cond_4a
    iput-object p3, p0, Lcom/vungle/ads/internal/model/BidPayload;->ad:Lcom/vungle/ads/internal/model/AdPayload;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/n;)V
    .registers 7

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_b

    move-object p2, v0

    :cond_b
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_10

    move-object p3, v0

    :cond_10
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/ads/internal/model/BidPayload;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/vungle/ads/internal/model/BidPayload;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/vungle/ads/internal/model/BidPayload;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-object p1, p0, Lcom/vungle/ads/internal/model/BidPayload;->version:Ljava/lang/Integer;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget-object p2, p0, Lcom/vungle/ads/internal/model/BidPayload;->adunit:Ljava/lang/String;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lcom/vungle/ads/internal/model/BidPayload;->impression:Ljava/util/List;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/ads/internal/model/BidPayload;->copy(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)Lcom/vungle/ads/internal/model/BidPayload;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic getJson$annotations()V
    .registers 0

    return-void
.end method

.method private final gzipDecode([B)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p1, Ljava/util/zip/GZIPInputStream;

    const/16 v1, 0x20

    invoke-direct {p1, v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v1, [B

    :goto_13
    invoke-virtual {p1, v1}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_26

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v6, Lkotlin/text/b;->b:Ljava/nio/charset/Charset;

    invoke-direct {v4, v1, v5, v3, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    :cond_26
    invoke-virtual {p1}, Ljava/util/zip/GZIPInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "result.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static final write$Self(Lcom/vungle/ads/internal/model/BidPayload;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .registers 11

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
    iget-object v1, p0, Lcom/vungle/ads/internal/model/BidPayload;->version:Ljava/lang/Integer;

    if-eqz v1, :cond_1e

    goto :goto_17

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    if-eqz v1, :cond_28

    sget-object v1, Lkotlinx/serialization/internal/i0;->a:Lkotlinx/serialization/internal/i0;

    iget-object v3, p0, Lcom/vungle/ads/internal/model/BidPayload;->version:Ljava/lang/Integer;

    invoke-interface {p1, p2, v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/i;Ljava/lang/Object;)V

    :cond_28
    invoke-interface {p1, p2, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_30

    :goto_2e
    const/4 v1, 0x1

    goto :goto_36

    :cond_30
    iget-object v1, p0, Lcom/vungle/ads/internal/model/BidPayload;->adunit:Ljava/lang/String;

    if-eqz v1, :cond_35

    goto :goto_2e

    :cond_35
    const/4 v1, 0x0

    :goto_36
    if-eqz v1, :cond_3f

    sget-object v1, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    iget-object v3, p0, Lcom/vungle/ads/internal/model/BidPayload;->adunit:Ljava/lang/String;

    invoke-interface {p1, p2, v2, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/i;Ljava/lang/Object;)V

    :cond_3f
    const/4 v1, 0x2

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_48

    :goto_46
    const/4 v3, 0x1

    goto :goto_4e

    :cond_48
    iget-object v3, p0, Lcom/vungle/ads/internal/model/BidPayload;->impression:Ljava/util/List;

    if-eqz v3, :cond_4d

    goto :goto_46

    :cond_4d
    const/4 v3, 0x0

    :goto_4e
    if-eqz v3, :cond_5c

    new-instance v3, Lkotlinx/serialization/internal/c;

    sget-object v4, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    invoke-direct {v3, v4}, Lkotlinx/serialization/internal/c;-><init>(Lkotlinx/serialization/c;)V

    iget-object v4, p0, Lcom/vungle/ads/internal/model/BidPayload;->impression:Ljava/util/List;

    invoke-interface {p1, p2, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/i;Ljava/lang/Object;)V

    :cond_5c
    const/4 v1, 0x3

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_65

    :goto_63
    const/4 v0, 0x1

    goto :goto_a9

    :cond_65
    iget-object v3, p0, Lcom/vungle/ads/internal/model/BidPayload;->ad:Lcom/vungle/ads/internal/model/AdPayload;

    iget-object v4, p0, Lcom/vungle/ads/internal/model/BidPayload;->adunit:Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v4, :cond_a2

    new-instance v6, Lkotlin/jvm/internal/l0;

    invoke-direct {v6}, Lkotlin/jvm/internal/l0;-><init>()V

    invoke-static {v4, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    if-eqz v4, :cond_7c

    invoke-direct {p0, v4}, Lcom/vungle/ads/internal/model/BidPayload;->gzipDecode([B)Ljava/lang/String;

    move-result-object v4

    goto :goto_7d

    :cond_7c
    move-object v4, v5

    :goto_7d
    iput-object v4, v6, Lkotlin/jvm/internal/l0;->a:Ljava/lang/Object;

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_a2

    iget-object v5, p0, Lcom/vungle/ads/internal/model/BidPayload;->json:Lkotlinx/serialization/json/Json;

    check-cast v4, Ljava/lang/String;

    invoke-interface {v5}, Lkotlinx/serialization/f;->a()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v6

    const-class v7, Lcom/vungle/ads/internal/model/AdPayload;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/c;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v6, v4}, Lkotlinx/serialization/j;->b(Lkotlinx/serialization/b;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vungle/ads/internal/model/AdPayload;

    move-object v5, v4

    :cond_a2
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a9

    goto :goto_63

    :cond_a9
    :goto_a9
    if-eqz v0, :cond_b2

    sget-object v0, Lcom/vungle/ads/internal/model/AdPayload$a;->INSTANCE:Lcom/vungle/ads/internal/model/AdPayload$a;

    iget-object p0, p0, Lcom/vungle/ads/internal/model/BidPayload;->ad:Lcom/vungle/ads/internal/model/AdPayload;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/i;Ljava/lang/Object;)V

    :cond_b2
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/BidPayload;->version:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/BidPayload;->adunit:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vungle/ads/internal/model/BidPayload;->impression:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)Lcom/vungle/ads/internal/model/BidPayload;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/vungle/ads/internal/model/BidPayload;"
        }
    .end annotation

    new-instance v0, Lcom/vungle/ads/internal/model/BidPayload;

    invoke-direct {v0, p1, p2, p3}, Lcom/vungle/ads/internal/model/BidPayload;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/vungle/ads/internal/model/BidPayload;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/vungle/ads/internal/model/BidPayload;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/BidPayload;->version:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/BidPayload;->version:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/vungle/ads/internal/model/BidPayload;->adunit:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/BidPayload;->adunit:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/vungle/ads/internal/model/BidPayload;->impression:Ljava/util/List;

    iget-object p1, p1, Lcom/vungle/ads/internal/model/BidPayload;->impression:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    return v2

    :cond_2d
    return v0
.end method

.method public final getAdPayload()Lcom/vungle/ads/internal/model/AdPayload;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/BidPayload;->ad:Lcom/vungle/ads/internal/model/AdPayload;

    return-object v0
.end method

.method public final getAdunit()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/BidPayload;->adunit:Ljava/lang/String;

    return-object v0
.end method

.method public final getEventId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/BidPayload;->ad:Lcom/vungle/ads/internal/model/AdPayload;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/AdPayload;->eventId()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public final getImpression()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vungle/ads/internal/model/BidPayload;->impression:Ljava/util/List;

    return-object v0
.end method

.method public final getPlacementId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/BidPayload;->ad:Lcom/vungle/ads/internal/model/AdPayload;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/AdPayload;->placementId()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public final getVersion()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/BidPayload;->version:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/vungle/ads/internal/model/BidPayload;->version:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/BidPayload;->adunit:Ljava/lang/String;

    if-nez v2, :cond_13

    const/4 v2, 0x0

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/BidPayload;->impression:Ljava/util/List;

    if-nez v2, :cond_1f

    goto :goto_23

    :cond_1f
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_23
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BidPayload(version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/BidPayload;->version:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adunit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/BidPayload;->adunit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", impression="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/BidPayload;->impression:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.ads.internal.model.BidPayload.a (com.vungle.ads.internal.model.BidPayload$a)
.class public final Lcom/vungle/ads/internal/model/BidPayload$a;
.super Ljava/lang/Object;
.source "BidPayload.kt"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/model/BidPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lcom/vungle/ads/internal/model/BidPayload;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0018\u0010\u0008\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\n0\tH\u00d6\u0001\u00a2\u0006\u0002\u0010\u000bJ\u0011\u0010\u000c\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002H\u00d6\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VX\u00d6\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0014"
    }
    d2 = {
        "com/vungle/ads/internal/model/BidPayload.$serializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "Lcom/vungle/ads/internal/model/BidPayload;",
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
.field public static final INSTANCE:Lcom/vungle/ads/internal/model/BidPayload$a;

.field public static final synthetic descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/vungle/ads/internal/model/BidPayload$a;

    invoke-direct {v0}, Lcom/vungle/ads/internal/model/BidPayload$a;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/model/BidPayload$a;->INSTANCE:Lcom/vungle/ads/internal/model/BidPayload$a;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.vungle.ads.internal.model.BidPayload"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "version"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "adunit"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "impression"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "ad"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    sput-object v1, Lcom/vungle/ads/internal/model/BidPayload$a;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlinx/serialization/c;

    sget-object v1, Lkotlinx/serialization/internal/i0;->a:Lkotlinx/serialization/internal/i0;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-instance v2, Lkotlinx/serialization/internal/c;

    invoke-direct {v2, v1}, Lkotlinx/serialization/internal/c;-><init>(Lkotlinx/serialization/c;)V

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/internal/model/AdPayload$a;->INSTANCE:Lcom/vungle/ads/internal/model/AdPayload$a;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/vungle/ads/internal/model/BidPayload;
    .registers 15

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/BidPayload$a;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Decoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/encoding/CompositeDecoder;->p()Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_38

    sget-object v1, Lkotlinx/serialization/internal/i0;->a:Lkotlinx/serialization/internal/i0;

    invoke-interface {p1, v0, v5, v1, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v5, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    invoke-interface {p1, v0, v6, v5, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    new-instance v7, Lkotlinx/serialization/internal/c;

    invoke-direct {v7, v5}, Lkotlinx/serialization/internal/c;-><init>(Lkotlinx/serialization/c;)V

    invoke-interface {p1, v0, v3, v7, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lcom/vungle/ads/internal/model/AdPayload$a;->INSTANCE:Lcom/vungle/ads/internal/model/AdPayload$a;

    invoke-interface {p1, v0, v2, v5, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/16 v4, 0xf

    const/16 v5, 0xf

    goto :goto_84

    :cond_38
    move-object v1, v4

    move-object v7, v1

    move-object v8, v7

    move-object v9, v8

    const/4 v4, 0x0

    const/4 v10, 0x1

    :goto_3e
    if-eqz v10, :cond_80

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_7e

    if-eqz v11, :cond_75

    if-eq v11, v6, :cond_6c

    if-eq v11, v3, :cond_5e

    if-ne v11, v2, :cond_58

    sget-object v11, Lcom/vungle/ads/internal/model/AdPayload$a;->INSTANCE:Lcom/vungle/ads/internal/model/AdPayload$a;

    invoke-interface {p1, v0, v2, v11, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    or-int/lit8 v4, v4, 0x8

    goto :goto_3e

    :cond_58
    new-instance p1, Lkotlinx/serialization/k;

    invoke-direct {p1, v11}, Lkotlinx/serialization/k;-><init>(I)V

    throw p1

    :cond_5e
    new-instance v11, Lkotlinx/serialization/internal/c;

    sget-object v12, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    invoke-direct {v11, v12}, Lkotlinx/serialization/internal/c;-><init>(Lkotlinx/serialization/c;)V

    invoke-interface {p1, v0, v3, v11, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    or-int/lit8 v4, v4, 0x4

    goto :goto_3e

    :cond_6c
    sget-object v11, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    invoke-interface {p1, v0, v6, v11, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    or-int/lit8 v4, v4, 0x2

    goto :goto_3e

    :cond_75
    sget-object v11, Lkotlinx/serialization/internal/i0;->a:Lkotlinx/serialization/internal/i0;

    invoke-interface {p1, v0, v5, v11, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    or-int/lit8 v4, v4, 0x1

    goto :goto_3e

    :cond_7e
    const/4 v10, 0x0

    goto :goto_3e

    :cond_80
    move v5, v4

    move-object v6, v7

    move-object v3, v8

    move-object v2, v9

    :goto_84
    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance p1, Lcom/vungle/ads/internal/model/BidPayload;

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    move-object v8, v3

    check-cast v8, Ljava/util/List;

    move-object v9, v2

    check-cast v9, Lcom/vungle/ads/internal/model/AdPayload;

    const/4 v10, 0x0

    move-object v4, p1

    move-object v6, v0

    invoke-direct/range {v4 .. v10}, Lcom/vungle/ads/internal/model/BidPayload;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lcom/vungle/ads/internal/model/AdPayload;Lkotlinx/serialization/internal/e1;)V

    return-object p1
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/model/BidPayload$a;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/vungle/ads/internal/model/BidPayload;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .registers 2

    sget-object v0, Lcom/vungle/ads/internal/model/BidPayload$a;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/vungle/ads/internal/model/BidPayload;)V
    .registers 4

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/BidPayload$a;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/vungle/ads/internal/model/BidPayload;->write$Self(Lcom/vungle/ads/internal/model/BidPayload;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/vungle/ads/internal/model/BidPayload;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/internal/model/BidPayload$a;->serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/vungle/ads/internal/model/BidPayload;)V

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

###### Class com.vungle.ads.internal.model.BidPayload.b (com.vungle.ads.internal.model.BidPayload$b)
.class final Lcom/vungle/ads/internal/model/BidPayload$b;
.super Lkotlin/jvm/internal/t;
.source "BidPayload.kt"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/model/BidPayload;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lcom/vungle/ads/internal/model/AdPayload;Lkotlinx/serialization/internal/e1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/l<",
        "Lkotlinx/serialization/json/JsonBuilder;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/vungle/ads/internal/model/BidPayload$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/vungle/ads/internal/model/BidPayload$b;

    invoke-direct {v0}, Lcom/vungle/ads/internal/model/BidPayload$b;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/model/BidPayload$b;->INSTANCE:Lcom/vungle/ads/internal/model/BidPayload$b;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lkotlinx/serialization/json/JsonBuilder;

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/model/BidPayload$b;->invoke(Lkotlinx/serialization/json/JsonBuilder;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lkotlinx/serialization/json/JsonBuilder;)V
    .registers 3

    const-string v0, "$this$Json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lkotlinx/serialization/json/JsonBuilder;->f(Z)V

    invoke-virtual {p1, v0}, Lkotlinx/serialization/json/JsonBuilder;->d(Z)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lkotlinx/serialization/json/JsonBuilder;->e(Z)V

    return-void
.end method

###### Class com.vungle.ads.internal.model.BidPayload.c (com.vungle.ads.internal.model.BidPayload$c)
.class public final Lcom/vungle/ads/internal/model/BidPayload$c;
.super Ljava/lang/Object;
.source "BidPayload.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/model/BidPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u00c6\u0001\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vungle/ads/internal/model/BidPayload$Companion;",
        "",
        "()V",
        "serializer",
        "Lkotlinx/serialization/KSerializer;",
        "Lcom/vungle/ads/internal/model/BidPayload;",
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

    invoke-direct {p0}, Lcom/vungle/ads/internal/model/BidPayload$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/c<",
            "Lcom/vungle/ads/internal/model/BidPayload;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/vungle/ads/internal/model/BidPayload$a;->INSTANCE:Lcom/vungle/ads/internal/model/BidPayload$a;

    return-object v0
.end method

###### Class com.vungle.ads.internal.model.BidPayload.d (com.vungle.ads.internal.model.BidPayload$d)
.class final Lcom/vungle/ads/internal/model/BidPayload$d;
.super Lkotlin/jvm/internal/t;
.source "BidPayload.kt"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/model/BidPayload;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/l<",
        "Lkotlinx/serialization/json/JsonBuilder;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/serialization/json/JsonBuilder;",
        "invoke"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/vungle/ads/internal/model/BidPayload$d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/vungle/ads/internal/model/BidPayload$d;

    invoke-direct {v0}, Lcom/vungle/ads/internal/model/BidPayload$d;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/model/BidPayload$d;->INSTANCE:Lcom/vungle/ads/internal/model/BidPayload$d;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lkotlinx/serialization/json/JsonBuilder;

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/model/BidPayload$d;->invoke(Lkotlinx/serialization/json/JsonBuilder;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lkotlinx/serialization/json/JsonBuilder;)V
    .registers 3

    const-string v0, "$this$Json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lkotlinx/serialization/json/JsonBuilder;->f(Z)V

    invoke-virtual {p1, v0}, Lkotlinx/serialization/json/JsonBuilder;->d(Z)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lkotlinx/serialization/json/JsonBuilder;->e(Z)V

    return-void
.end method
