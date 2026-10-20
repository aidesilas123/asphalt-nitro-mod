###### Class com.vungle.ads.internal.model.AdPayload.TemplateSettings (com.vungle.ads.internal.model.AdPayload$TemplateSettings)
.class public final Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;
.super Ljava/lang/Object;
.source "AdPayload.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/model/AdPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TemplateSettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings$b;,
        Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 #2\u00020\u0001:\u0002\"#BI\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0016\u0008\u0001\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0016\u0008\u0001\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0005\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000bB5\u0012\u0016\u0008\u0002\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0016\u0008\u0002\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u000cJ\u0017\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u00c6\u0003J\u0017\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0005H\u00c6\u0003J9\u0010\u0015\u001a\u00020\u00002\u0016\u0008\u0002\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u0016\u0008\u0002\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u0006H\u00d6\u0001J!\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u00c7\u0001R*\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R*\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0011\u0010\u000e\u001a\u0004\u0008\u0012\u0010\u0010\u00a8\u0006$"
    }
    d2 = {
        "Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;",
        "",
        "seen1",
        "",
        "normalReplacements",
        "",
        "",
        "cacheableReplacements",
        "Lcom/vungle/ads/internal/model/AdPayload$CacheableReplacement;",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/util/Map;Ljava/util/Map;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Ljava/util/Map;Ljava/util/Map;)V",
        "getCacheableReplacements$annotations",
        "()V",
        "getCacheableReplacements",
        "()Ljava/util/Map;",
        "getNormalReplacements$annotations",
        "getNormalReplacements",
        "component1",
        "component2",
        "copy",
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
.field public static final Companion:Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings$b;


# instance fields
.field private final cacheableReplacements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/vungle/ads/internal/model/AdPayload$CacheableReplacement;",
            ">;"
        }
    .end annotation
.end field

.field private final normalReplacements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings$b;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;->Companion:Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;-><init>(Ljava/util/Map;Ljava/util/Map;ILkotlin/jvm/internal/n;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/Map;Ljava/util/Map;Lkotlinx/serialization/internal/e1;)V
    .registers 6

    and-int/lit8 p4, p1, 0x0

    if-eqz p4, :cond_e

    sget-object p4, Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings$a;->INSTANCE:Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings$a;

    invoke-virtual {p4}, Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings$a;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    const/4 v0, 0x0

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p4, p1, 0x1

    const/4 v0, 0x0

    if-nez p4, :cond_19

    iput-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;->normalReplacements:Ljava/util/Map;

    goto :goto_1b

    :cond_19
    iput-object p2, p0, Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;->normalReplacements:Ljava/util/Map;

    :goto_1b
    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_22

    iput-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;->cacheableReplacements:Ljava/util/Map;

    goto :goto_24

    :cond_22
    iput-object p3, p0, Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;->cacheableReplacements:Ljava/util/Map;

    :goto_24
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/vungle/ads/internal/model/AdPayload$CacheableReplacement;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;->normalReplacements:Ljava/util/Map;

    iput-object p2, p0, Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;->cacheableReplacements:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;Ljava/util/Map;ILkotlin/jvm/internal/n;)V
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
    invoke-direct {p0, p1, p2}, Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;Ljava/util/Map;Ljava/util/Map;ILjava/lang/Object;)Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;->normalReplacements:Ljava/util/Map;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;->cacheableReplacements:Ljava/util/Map;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;->copy(Ljava/util/Map;Ljava/util/Map;)Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getCacheableReplacements$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getNormalReplacements$annotations()V
    .registers 0

    return-void
.end method

.method public static final write$Self(Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
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
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;->normalReplacements:Ljava/util/Map;

    if-eqz v1, :cond_1e

    goto :goto_17

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    if-eqz v1, :cond_2d

    new-instance v1, Lkotlinx/serialization/internal/l0;

    sget-object v3, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    invoke-direct {v1, v3, v3}, Lkotlinx/serialization/internal/l0;-><init>(Lkotlinx/serialization/c;Lkotlinx/serialization/c;)V

    iget-object v3, p0, Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;->normalReplacements:Ljava/util/Map;

    invoke-interface {p1, p2, v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/i;Ljava/lang/Object;)V

    :cond_2d
    invoke-interface {p1, p2, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_35

    :goto_33
    const/4 v0, 0x1

    goto :goto_3a

    :cond_35
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;->cacheableReplacements:Ljava/util/Map;

    if-eqz v1, :cond_3a

    goto :goto_33

    :cond_3a
    :goto_3a
    if-eqz v0, :cond_4a

    new-instance v0, Lkotlinx/serialization/internal/l0;

    sget-object v1, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    sget-object v3, Lcom/vungle/ads/internal/model/AdPayload$CacheableReplacement$a;->INSTANCE:Lcom/vungle/ads/internal/model/AdPayload$CacheableReplacement$a;

    invoke-direct {v0, v1, v3}, Lkotlinx/serialization/internal/l0;-><init>(Lkotlinx/serialization/c;Lkotlinx/serialization/c;)V

    iget-object p0, p0, Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;->cacheableReplacements:Ljava/util/Map;

    invoke-interface {p1, p2, v2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/i;Ljava/lang/Object;)V

    :cond_4a
    return-void
.end method


# virtual methods
.method public final component1()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;->normalReplacements:Ljava/util/Map;

    return-object v0
.end method

.method public final component2()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/vungle/ads/internal/model/AdPayload$CacheableReplacement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;->cacheableReplacements:Ljava/util/Map;

    return-object v0
.end method

.method public final copy(Ljava/util/Map;Ljava/util/Map;)Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/vungle/ads/internal/model/AdPayload$CacheableReplacement;",
            ">;)",
            "Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;"
        }
    .end annotation

    new-instance v0, Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;

    invoke-direct {v0, p1, p2}, Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;->normalReplacements:Ljava/util/Map;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;->normalReplacements:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;->cacheableReplacements:Ljava/util/Map;

    iget-object p1, p1, Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;->cacheableReplacements:Ljava/util/Map;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getCacheableReplacements()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/vungle/ads/internal/model/AdPayload$CacheableReplacement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;->cacheableReplacements:Ljava/util/Map;

    return-object v0
.end method

.method public final getNormalReplacements()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;->normalReplacements:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;->normalReplacements:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;->cacheableReplacements:Ljava/util/Map;

    if-nez v2, :cond_12

    goto :goto_16

    :cond_12
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_16
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TemplateSettings(normalReplacements="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;->normalReplacements:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cacheableReplacements="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;->cacheableReplacements:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
