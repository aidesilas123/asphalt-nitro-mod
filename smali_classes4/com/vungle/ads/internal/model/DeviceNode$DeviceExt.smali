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
