###### Class io.didomi.drawable.apiEvents.ConsentGivenApiEventParameters.ConsentStatus (io.didomi.sdk.apiEvents.ConsentGivenApiEventParameters$ConsentStatus)
.class public final Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConsentStatus"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u001e\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B%\u0012\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0006J\u000f\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\u000f\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J)\u0010\u000c\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0001J\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001J\t\u0010\u0012\u001a\u00020\u0004H\u00d6\u0001R\u001c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008\u00a8\u0006\u0013"
    }
    d2 = {
        "Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;",
        "",
        "disabled",
        "",
        "",
        "enabled",
        "(Ljava/util/Collection;Ljava/util/Collection;)V",
        "getDisabled",
        "()Ljava/util/Collection;",
        "getEnabled",
        "component1",
        "component2",
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
.field private final disabled:Ljava/util/Collection;
    .annotation runtime Lcom/google/gson/r/c;
        value = "disabled"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final enabled:Ljava/util/Collection;
    .annotation runtime Lcom/google/gson/r/c;
        value = "enabled"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;-><init>(Ljava/util/Collection;Ljava/util/Collection;ILkotlin/jvm/internal/n;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "disabled"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enabled"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;->disabled:Ljava/util/Collection;

    iput-object p2, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;->enabled:Ljava/util/Collection;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Collection;Ljava/util/Collection;ILkotlin/jvm/internal/n;)V
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_8

    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_8
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_10

    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_10
    invoke-direct {p0, p1, p2}, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method

.method public static synthetic copy$default(Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Ljava/util/Collection;Ljava/util/Collection;ILjava/lang/Object;)Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;->disabled:Ljava/util/Collection;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;->enabled:Ljava/util/Collection;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;->copy(Ljava/util/Collection;Ljava/util/Collection;)Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;->disabled:Ljava/util/Collection;

    return-object v0
.end method

.method public final component2()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;->enabled:Ljava/util/Collection;

    return-object v0
.end method

.method public final copy(Ljava/util/Collection;Ljava/util/Collection;)Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;"
        }
    .end annotation

    const-string v0, "disabled"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enabled"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    invoke-direct {v0, p1, p2}, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;->disabled:Ljava/util/Collection;

    iget-object v3, p1, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;->disabled:Ljava/util/Collection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;->enabled:Ljava/util/Collection;

    iget-object p1, p1, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;->enabled:Ljava/util/Collection;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getDisabled()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;->disabled:Ljava/util/Collection;

    return-object v0
.end method

.method public final getEnabled()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;->enabled:Ljava/util/Collection;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;->disabled:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;->enabled:Ljava/util/Collection;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConsentStatus(disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;->disabled:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;->enabled:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
