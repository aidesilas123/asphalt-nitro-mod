###### Class io.didomi.drawable.user.sync.model.RequestToken (io.didomi.sdk.user.sync.model.RequestToken)
.class public final Lio/didomi/sdk/user/sync/model/RequestToken;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0006H\u00c6\u0003JE\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001J\t\u0010\u001f\u001a\u00020\u0003H\u00d6\u0001R\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u0008\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000cR\u0016\u0010\t\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000cR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000f\u00a8\u0006 "
    }
    d2 = {
        "Lio/didomi/sdk/user/sync/model/RequestToken;",
        "",
        "created",
        "",
        "updated",
        "consentPurposes",
        "Lio/didomi/sdk/consent/model/ConsentChoices;",
        "liPurposes",
        "consentVendors",
        "liVendors",
        "(Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/consent/model/ConsentChoices;Lio/didomi/sdk/consent/model/ConsentChoices;Lio/didomi/sdk/consent/model/ConsentChoices;Lio/didomi/sdk/consent/model/ConsentChoices;)V",
        "getConsentPurposes",
        "()Lio/didomi/sdk/consent/model/ConsentChoices;",
        "getConsentVendors",
        "getCreated",
        "()Ljava/lang/String;",
        "getLiPurposes",
        "getLiVendors",
        "getUpdated",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
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
.field private final consentPurposes:Lio/didomi/sdk/consent/model/ConsentChoices;
    .annotation runtime Lcom/google/gson/r/c;
        value = "purposes"
    .end annotation
.end field

.field private final consentVendors:Lio/didomi/sdk/consent/model/ConsentChoices;
    .annotation runtime Lcom/google/gson/r/c;
        value = "vendors"
    .end annotation
.end field

.field private final created:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/r/c;
        value = "created"
    .end annotation
.end field

.field private final liPurposes:Lio/didomi/sdk/consent/model/ConsentChoices;
    .annotation runtime Lcom/google/gson/r/c;
        value = "purposes_li"
    .end annotation
.end field

.field private final liVendors:Lio/didomi/sdk/consent/model/ConsentChoices;
    .annotation runtime Lcom/google/gson/r/c;
        value = "vendors_li"
    .end annotation
.end field

.field private final updated:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/r/c;
        value = "updated"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/consent/model/ConsentChoices;Lio/didomi/sdk/consent/model/ConsentChoices;Lio/didomi/sdk/consent/model/ConsentChoices;Lio/didomi/sdk/consent/model/ConsentChoices;)V
    .registers 8

    const-string v0, "created"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updated"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentPurposes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "liPurposes"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentVendors"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "liVendors"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/user/sync/model/RequestToken;->created:Ljava/lang/String;

    iput-object p2, p0, Lio/didomi/sdk/user/sync/model/RequestToken;->updated:Ljava/lang/String;

    iput-object p3, p0, Lio/didomi/sdk/user/sync/model/RequestToken;->consentPurposes:Lio/didomi/sdk/consent/model/ConsentChoices;

    iput-object p4, p0, Lio/didomi/sdk/user/sync/model/RequestToken;->liPurposes:Lio/didomi/sdk/consent/model/ConsentChoices;

    iput-object p5, p0, Lio/didomi/sdk/user/sync/model/RequestToken;->consentVendors:Lio/didomi/sdk/consent/model/ConsentChoices;

    iput-object p6, p0, Lio/didomi/sdk/user/sync/model/RequestToken;->liVendors:Lio/didomi/sdk/consent/model/ConsentChoices;

    return-void
.end method

.method public static synthetic copy$default(Lio/didomi/sdk/user/sync/model/RequestToken;Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/consent/model/ConsentChoices;Lio/didomi/sdk/consent/model/ConsentChoices;Lio/didomi/sdk/consent/model/ConsentChoices;Lio/didomi/sdk/consent/model/ConsentChoices;ILjava/lang/Object;)Lio/didomi/sdk/user/sync/model/RequestToken;
    .registers 13

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_6

    iget-object p1, p0, Lio/didomi/sdk/user/sync/model/RequestToken;->created:Ljava/lang/String;

    :cond_6
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_c

    iget-object p2, p0, Lio/didomi/sdk/user/sync/model/RequestToken;->updated:Ljava/lang/String;

    :cond_c
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_13

    iget-object p3, p0, Lio/didomi/sdk/user/sync/model/RequestToken;->consentPurposes:Lio/didomi/sdk/consent/model/ConsentChoices;

    :cond_13
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_1a

    iget-object p4, p0, Lio/didomi/sdk/user/sync/model/RequestToken;->liPurposes:Lio/didomi/sdk/consent/model/ConsentChoices;

    :cond_1a
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_21

    iget-object p5, p0, Lio/didomi/sdk/user/sync/model/RequestToken;->consentVendors:Lio/didomi/sdk/consent/model/ConsentChoices;

    :cond_21
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_28

    iget-object p6, p0, Lio/didomi/sdk/user/sync/model/RequestToken;->liVendors:Lio/didomi/sdk/consent/model/ConsentChoices;

    :cond_28
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lio/didomi/sdk/user/sync/model/RequestToken;->copy(Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/consent/model/ConsentChoices;Lio/didomi/sdk/consent/model/ConsentChoices;Lio/didomi/sdk/consent/model/ConsentChoices;Lio/didomi/sdk/consent/model/ConsentChoices;)Lio/didomi/sdk/user/sync/model/RequestToken;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/user/sync/model/RequestToken;->created:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/user/sync/model/RequestToken;->updated:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lio/didomi/sdk/consent/model/ConsentChoices;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/user/sync/model/RequestToken;->consentPurposes:Lio/didomi/sdk/consent/model/ConsentChoices;

    return-object v0
.end method

.method public final component4()Lio/didomi/sdk/consent/model/ConsentChoices;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/user/sync/model/RequestToken;->liPurposes:Lio/didomi/sdk/consent/model/ConsentChoices;

    return-object v0
.end method

.method public final component5()Lio/didomi/sdk/consent/model/ConsentChoices;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/user/sync/model/RequestToken;->consentVendors:Lio/didomi/sdk/consent/model/ConsentChoices;

    return-object v0
.end method

.method public final component6()Lio/didomi/sdk/consent/model/ConsentChoices;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/user/sync/model/RequestToken;->liVendors:Lio/didomi/sdk/consent/model/ConsentChoices;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/consent/model/ConsentChoices;Lio/didomi/sdk/consent/model/ConsentChoices;Lio/didomi/sdk/consent/model/ConsentChoices;Lio/didomi/sdk/consent/model/ConsentChoices;)Lio/didomi/sdk/user/sync/model/RequestToken;
    .registers 15

    const-string v0, "created"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updated"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentPurposes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "liPurposes"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentVendors"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "liVendors"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/didomi/sdk/user/sync/model/RequestToken;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lio/didomi/sdk/user/sync/model/RequestToken;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/consent/model/ConsentChoices;Lio/didomi/sdk/consent/model/ConsentChoices;Lio/didomi/sdk/consent/model/ConsentChoices;Lio/didomi/sdk/consent/model/ConsentChoices;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/didomi/sdk/user/sync/model/RequestToken;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/didomi/sdk/user/sync/model/RequestToken;

    iget-object v1, p0, Lio/didomi/sdk/user/sync/model/RequestToken;->created:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/user/sync/model/RequestToken;->created:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lio/didomi/sdk/user/sync/model/RequestToken;->updated:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/user/sync/model/RequestToken;->updated:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lio/didomi/sdk/user/sync/model/RequestToken;->consentPurposes:Lio/didomi/sdk/consent/model/ConsentChoices;

    iget-object v3, p1, Lio/didomi/sdk/user/sync/model/RequestToken;->consentPurposes:Lio/didomi/sdk/consent/model/ConsentChoices;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lio/didomi/sdk/user/sync/model/RequestToken;->liPurposes:Lio/didomi/sdk/consent/model/ConsentChoices;

    iget-object v3, p1, Lio/didomi/sdk/user/sync/model/RequestToken;->liPurposes:Lio/didomi/sdk/consent/model/ConsentChoices;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lio/didomi/sdk/user/sync/model/RequestToken;->consentVendors:Lio/didomi/sdk/consent/model/ConsentChoices;

    iget-object v3, p1, Lio/didomi/sdk/user/sync/model/RequestToken;->consentVendors:Lio/didomi/sdk/consent/model/ConsentChoices;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Lio/didomi/sdk/user/sync/model/RequestToken;->liVendors:Lio/didomi/sdk/consent/model/ConsentChoices;

    iget-object p1, p1, Lio/didomi/sdk/user/sync/model/RequestToken;->liVendors:Lio/didomi/sdk/consent/model/ConsentChoices;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4e

    return v2

    :cond_4e
    return v0
.end method

.method public final getConsentPurposes()Lio/didomi/sdk/consent/model/ConsentChoices;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/user/sync/model/RequestToken;->consentPurposes:Lio/didomi/sdk/consent/model/ConsentChoices;

    return-object v0
.end method

.method public final getConsentVendors()Lio/didomi/sdk/consent/model/ConsentChoices;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/user/sync/model/RequestToken;->consentVendors:Lio/didomi/sdk/consent/model/ConsentChoices;

    return-object v0
.end method

.method public final getCreated()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/user/sync/model/RequestToken;->created:Ljava/lang/String;

    return-object v0
.end method

.method public final getLiPurposes()Lio/didomi/sdk/consent/model/ConsentChoices;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/user/sync/model/RequestToken;->liPurposes:Lio/didomi/sdk/consent/model/ConsentChoices;

    return-object v0
.end method

.method public final getLiVendors()Lio/didomi/sdk/consent/model/ConsentChoices;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/user/sync/model/RequestToken;->liVendors:Lio/didomi/sdk/consent/model/ConsentChoices;

    return-object v0
.end method

.method public final getUpdated()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/user/sync/model/RequestToken;->updated:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/user/sync/model/RequestToken;->created:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/user/sync/model/RequestToken;->updated:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/user/sync/model/RequestToken;->consentPurposes:Lio/didomi/sdk/consent/model/ConsentChoices;

    invoke-virtual {v1}, Lio/didomi/sdk/consent/model/ConsentChoices;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/user/sync/model/RequestToken;->liPurposes:Lio/didomi/sdk/consent/model/ConsentChoices;

    invoke-virtual {v1}, Lio/didomi/sdk/consent/model/ConsentChoices;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/user/sync/model/RequestToken;->consentVendors:Lio/didomi/sdk/consent/model/ConsentChoices;

    invoke-virtual {v1}, Lio/didomi/sdk/consent/model/ConsentChoices;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/user/sync/model/RequestToken;->liVendors:Lio/didomi/sdk/consent/model/ConsentChoices;

    invoke-virtual {v1}, Lio/didomi/sdk/consent/model/ConsentChoices;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestToken(created="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/user/sync/model/RequestToken;->created:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", updated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/user/sync/model/RequestToken;->updated:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", consentPurposes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/user/sync/model/RequestToken;->consentPurposes:Lio/didomi/sdk/consent/model/ConsentChoices;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", liPurposes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/user/sync/model/RequestToken;->liPurposes:Lio/didomi/sdk/consent/model/ConsentChoices;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", consentVendors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/user/sync/model/RequestToken;->consentVendors:Lio/didomi/sdk/consent/model/ConsentChoices;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", liVendors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/user/sync/model/RequestToken;->liVendors:Lio/didomi/sdk/consent/model/ConsentChoices;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
