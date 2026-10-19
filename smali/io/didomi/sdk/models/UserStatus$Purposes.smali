###### Class io.didomi.drawable.models.UserStatus.Purposes (io.didomi.sdk.models.UserStatus$Purposes)
.class public final Lio/didomi/sdk/models/UserStatus$Purposes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/models/UserStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Purposes"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B3\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u00c6\u0003J7\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u0008H\u00d6\u0001R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000bR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000b\u00a8\u0006\u001b"
    }
    d2 = {
        "Lio/didomi/sdk/models/UserStatus$Purposes;",
        "",
        "global",
        "Lio/didomi/sdk/models/UserStatus$Ids;",
        "consent",
        "legitimateInterest",
        "essential",
        "",
        "",
        "(Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Ljava/util/Set;)V",
        "getConsent",
        "()Lio/didomi/sdk/models/UserStatus$Ids;",
        "getEssential",
        "()Ljava/util/Set;",
        "getGlobal",
        "getLegitimateInterest",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final consent:Lio/didomi/sdk/models/UserStatus$Ids;
    .annotation runtime Lcom/google/gson/r/c;
        value = "consent"
    .end annotation
.end field

.field private final essential:Ljava/util/Set;
    .annotation runtime Lcom/google/gson/r/c;
        value = "essential"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final global:Lio/didomi/sdk/models/UserStatus$Ids;
    .annotation runtime Lcom/google/gson/r/c;
        value = "global"
    .end annotation
.end field

.field private final legitimateInterest:Lio/didomi/sdk/models/UserStatus$Ids;
    .annotation runtime Lcom/google/gson/r/c;
        value = "legitimate_interest"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lio/didomi/sdk/models/UserStatus$Purposes;-><init>(Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Ljava/util/Set;ILkotlin/jvm/internal/n;)V

    return-void
.end method

.method public constructor <init>(Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/models/UserStatus$Ids;",
            "Lio/didomi/sdk/models/UserStatus$Ids;",
            "Lio/didomi/sdk/models/UserStatus$Ids;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "global"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "legitimateInterest"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "essential"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->global:Lio/didomi/sdk/models/UserStatus$Ids;

    iput-object p2, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->consent:Lio/didomi/sdk/models/UserStatus$Ids;

    iput-object p3, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->legitimateInterest:Lio/didomi/sdk/models/UserStatus$Ids;

    iput-object p4, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->essential:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Ljava/util/Set;ILkotlin/jvm/internal/n;)V
    .registers 9

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p6, :cond_f

    new-instance p1, Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object p6

    invoke-direct {p1, p6, v1, v0, v1}, Lio/didomi/sdk/models/UserStatus$Ids;-><init>(Ljava/util/Set;Ljava/util/Set;ILkotlin/jvm/internal/n;)V

    :cond_f
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1c

    new-instance p2, Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object p6

    invoke-direct {p2, p6, v1, v0, v1}, Lio/didomi/sdk/models/UserStatus$Ids;-><init>(Ljava/util/Set;Ljava/util/Set;ILkotlin/jvm/internal/n;)V

    :cond_1c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_29

    new-instance p3, Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object p6

    invoke-direct {p3, p6, v1, v0, v1}, Lio/didomi/sdk/models/UserStatus$Ids;-><init>(Ljava/util/Set;Ljava/util/Set;ILkotlin/jvm/internal/n;)V

    :cond_29
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_31

    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object p4

    :cond_31
    invoke-direct {p0, p1, p2, p3, p4}, Lio/didomi/sdk/models/UserStatus$Purposes;-><init>(Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic copy$default(Lio/didomi/sdk/models/UserStatus$Purposes;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Ljava/util/Set;ILjava/lang/Object;)Lio/didomi/sdk/models/UserStatus$Purposes;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-object p1, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->global:Lio/didomi/sdk/models/UserStatus$Ids;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->consent:Lio/didomi/sdk/models/UserStatus$Ids;

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-object p3, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->legitimateInterest:Lio/didomi/sdk/models/UserStatus$Ids;

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-object p4, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->essential:Ljava/util/Set;

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/didomi/sdk/models/UserStatus$Purposes;->copy(Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Ljava/util/Set;)Lio/didomi/sdk/models/UserStatus$Purposes;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lio/didomi/sdk/models/UserStatus$Ids;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->global:Lio/didomi/sdk/models/UserStatus$Ids;

    return-object v0
.end method

.method public final component2()Lio/didomi/sdk/models/UserStatus$Ids;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->consent:Lio/didomi/sdk/models/UserStatus$Ids;

    return-object v0
.end method

.method public final component3()Lio/didomi/sdk/models/UserStatus$Ids;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->legitimateInterest:Lio/didomi/sdk/models/UserStatus$Ids;

    return-object v0
.end method

.method public final component4()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->essential:Ljava/util/Set;

    return-object v0
.end method

.method public final copy(Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Ljava/util/Set;)Lio/didomi/sdk/models/UserStatus$Purposes;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/models/UserStatus$Ids;",
            "Lio/didomi/sdk/models/UserStatus$Ids;",
            "Lio/didomi/sdk/models/UserStatus$Ids;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/didomi/sdk/models/UserStatus$Purposes;"
        }
    .end annotation

    const-string v0, "global"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "legitimateInterest"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "essential"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/didomi/sdk/models/UserStatus$Purposes;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/didomi/sdk/models/UserStatus$Purposes;-><init>(Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Ljava/util/Set;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/didomi/sdk/models/UserStatus$Purposes;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/didomi/sdk/models/UserStatus$Purposes;

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->global:Lio/didomi/sdk/models/UserStatus$Ids;

    iget-object v3, p1, Lio/didomi/sdk/models/UserStatus$Purposes;->global:Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->consent:Lio/didomi/sdk/models/UserStatus$Ids;

    iget-object v3, p1, Lio/didomi/sdk/models/UserStatus$Purposes;->consent:Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->legitimateInterest:Lio/didomi/sdk/models/UserStatus$Ids;

    iget-object v3, p1, Lio/didomi/sdk/models/UserStatus$Purposes;->legitimateInterest:Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->essential:Ljava/util/Set;

    iget-object p1, p1, Lio/didomi/sdk/models/UserStatus$Purposes;->essential:Ljava/util/Set;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    return v2

    :cond_38
    return v0
.end method

.method public final getConsent()Lio/didomi/sdk/models/UserStatus$Ids;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->consent:Lio/didomi/sdk/models/UserStatus$Ids;

    return-object v0
.end method

.method public final getEssential()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->essential:Ljava/util/Set;

    return-object v0
.end method

.method public final getGlobal()Lio/didomi/sdk/models/UserStatus$Ids;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->global:Lio/didomi/sdk/models/UserStatus$Ids;

    return-object v0
.end method

.method public final getLegitimateInterest()Lio/didomi/sdk/models/UserStatus$Ids;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->legitimateInterest:Lio/didomi/sdk/models/UserStatus$Ids;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->global:Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-virtual {v0}, Lio/didomi/sdk/models/UserStatus$Ids;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->consent:Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-virtual {v1}, Lio/didomi/sdk/models/UserStatus$Ids;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->legitimateInterest:Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-virtual {v1}, Lio/didomi/sdk/models/UserStatus$Ids;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->essential:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Purposes(global="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->global:Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", consent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->consent:Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", legitimateInterest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->legitimateInterest:Lio/didomi/sdk/models/UserStatus$Ids;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", essential="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/UserStatus$Purposes;->essential:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
