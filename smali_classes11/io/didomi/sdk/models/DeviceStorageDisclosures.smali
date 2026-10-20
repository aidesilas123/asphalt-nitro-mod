###### Class io.didomi.drawable.models.DeviceStorageDisclosures (io.didomi.sdk.models.DeviceStorageDisclosures)
.class public final Lio/didomi/sdk/models/DeviceStorageDisclosures;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0010\u0010\u0002\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0005J\u0013\u0010\t\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003H\u00c2\u0003J\u001d\u0010\n\u001a\u00020\u00002\u0012\u0008\u0002\u0010\u0002\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0013\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u000e\u001a\u00020\u000fH\u00d6\u0001J\u0006\u0010\u0010\u001a\u00020\u000cJ\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001R\u0019\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\u0002\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u00038\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lio/didomi/sdk/models/DeviceStorageDisclosures;",
        "",
        "internalDisclosures",
        "",
        "Lio/didomi/sdk/models/DeviceStorageDisclosure;",
        "(Ljava/util/List;)V",
        "disclosuresList",
        "getDisclosuresList",
        "()Ljava/util/List;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "isValid",
        "toString",
        "",
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
.field private final internalDisclosures:Ljava/util/List;
    .annotation runtime Lcom/google/gson/r/c;
        value = "disclosures"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/didomi/sdk/models/DeviceStorageDisclosure;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/didomi/sdk/models/DeviceStorageDisclosure;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/models/DeviceStorageDisclosures;->internalDisclosures:Ljava/util/List;

    return-void
.end method

.method private final component1()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/sdk/models/DeviceStorageDisclosure;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/models/DeviceStorageDisclosures;->internalDisclosures:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic copy$default(Lio/didomi/sdk/models/DeviceStorageDisclosures;Ljava/util/List;ILjava/lang/Object;)Lio/didomi/sdk/models/DeviceStorageDisclosures;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lio/didomi/sdk/models/DeviceStorageDisclosures;->internalDisclosures:Ljava/util/List;

    :cond_6
    invoke-virtual {p0, p1}, Lio/didomi/sdk/models/DeviceStorageDisclosures;->copy(Ljava/util/List;)Lio/didomi/sdk/models/DeviceStorageDisclosures;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/util/List;)Lio/didomi/sdk/models/DeviceStorageDisclosures;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/didomi/sdk/models/DeviceStorageDisclosure;",
            ">;)",
            "Lio/didomi/sdk/models/DeviceStorageDisclosures;"
        }
    .end annotation

    new-instance v0, Lio/didomi/sdk/models/DeviceStorageDisclosures;

    invoke-direct {v0, p1}, Lio/didomi/sdk/models/DeviceStorageDisclosures;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/didomi/sdk/models/DeviceStorageDisclosures;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/didomi/sdk/models/DeviceStorageDisclosures;

    iget-object v1, p0, Lio/didomi/sdk/models/DeviceStorageDisclosures;->internalDisclosures:Ljava/util/List;

    iget-object p1, p1, Lio/didomi/sdk/models/DeviceStorageDisclosures;->internalDisclosures:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getDisclosuresList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/sdk/models/DeviceStorageDisclosure;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/models/DeviceStorageDisclosures;->internalDisclosures:Ljava/util/List;

    if-eqz v0, :cond_20

    invoke-static {v0}, Lkotlin/collections/p;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_20

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/jvm/b/l;

    sget-object v2, Lio/didomi/sdk/models/DeviceStorageDisclosures$a;->a:Lio/didomi/sdk/models/DeviceStorageDisclosures$a;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lio/didomi/sdk/models/DeviceStorageDisclosures$b;->a:Lio/didomi/sdk/models/DeviceStorageDisclosures$b;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Lkotlin/comparisons/f;->compareBy([Lkotlin/jvm/b/l;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/p;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/DeviceStorageDisclosures;->internalDisclosures:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_a
    return v0
.end method

.method public final isValid()Z
    .registers 3

    invoke-virtual {p0}, Lio/didomi/sdk/models/DeviceStorageDisclosures;->getDisclosuresList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_25

    :cond_d
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/models/DeviceStorageDisclosure;

    invoke-virtual {v1}, Lio/didomi/sdk/models/DeviceStorageDisclosure;->isValid()Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v0, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 v0, 0x1

    :goto_26
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceStorageDisclosures(internalDisclosures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/DeviceStorageDisclosures;->internalDisclosures:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
