###### Class io.didomi.drawable.models.DataProcessingNamespaces (io.didomi.sdk.models.DataProcessingNamespaces)
.class public final Lio/didomi/sdk/models/DataProcessingNamespaces;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lio/didomi/sdk/N3;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u0087\u0008\u0018\u00002\u00020\u00012\u00020\u0002B\u0013\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001c\u0010\t\u001a\u00020\u00002\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010\u000c\u001a\u00020\u000bH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u0003H\u00d6\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001a\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\u0003H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0015\u0010\u000fJ \u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0003H\u00d6\u0001\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR$\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0016@\u0016X\u0097\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u0008\"\u0004\u0008\u001e\u0010\u0006\u00a8\u0006\u001f"
    }
    d2 = {
        "Lio/didomi/sdk/models/DataProcessingNamespaces;",
        "Landroid/os/Parcelable;",
        "Lio/didomi/sdk/N3;",
        "",
        "num",
        "<init>",
        "(Ljava/lang/Integer;)V",
        "component1",
        "()Ljava/lang/Integer;",
        "copy",
        "(Ljava/lang/Integer;)Lio/didomi/sdk/models/DataProcessingNamespaces;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "()I",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "describeContents",
        "Landroid/os/Parcel;",
        "parcel",
        "flags",
        "",
        "writeToParcel",
        "(Landroid/os/Parcel;I)V",
        "Ljava/lang/Integer;",
        "getNum",
        "setNum",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation build Lkotlinx/parcelize/Parcelize;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/didomi/sdk/models/DataProcessingNamespaces;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private num:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/r/c;
        value = "num"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/didomi/sdk/models/DataProcessingNamespaces$a;

    invoke-direct {v0}, Lio/didomi/sdk/models/DataProcessingNamespaces$a;-><init>()V

    sput-object v0, Lio/didomi/sdk/models/DataProcessingNamespaces;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lio/didomi/sdk/models/DataProcessingNamespaces;-><init>(Ljava/lang/Integer;ILkotlin/jvm/internal/n;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/models/DataProcessingNamespaces;->num:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;ILkotlin/jvm/internal/n;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    :cond_5
    invoke-direct {p0, p1}, Lio/didomi/sdk/models/DataProcessingNamespaces;-><init>(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic copy$default(Lio/didomi/sdk/models/DataProcessingNamespaces;Ljava/lang/Integer;ILjava/lang/Object;)Lio/didomi/sdk/models/DataProcessingNamespaces;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lio/didomi/sdk/models/DataProcessingNamespaces;->num:Ljava/lang/Integer;

    :cond_6
    invoke-virtual {p0, p1}, Lio/didomi/sdk/models/DataProcessingNamespaces;->copy(Ljava/lang/Integer;)Lio/didomi/sdk/models/DataProcessingNamespaces;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/DataProcessingNamespaces;->num:Ljava/lang/Integer;

    return-object v0
.end method

.method public final copy(Ljava/lang/Integer;)Lio/didomi/sdk/models/DataProcessingNamespaces;
    .registers 3

    new-instance v0, Lio/didomi/sdk/models/DataProcessingNamespaces;

    invoke-direct {v0, p1}, Lio/didomi/sdk/models/DataProcessingNamespaces;-><init>(Ljava/lang/Integer;)V

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/didomi/sdk/models/DataProcessingNamespaces;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/didomi/sdk/models/DataProcessingNamespaces;

    iget-object v1, p0, Lio/didomi/sdk/models/DataProcessingNamespaces;->num:Ljava/lang/Integer;

    iget-object p1, p1, Lio/didomi/sdk/models/DataProcessingNamespaces;->num:Ljava/lang/Integer;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public getNum()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/DataProcessingNamespaces;->num:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/DataProcessingNamespaces;->num:Ljava/lang/Integer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_a
    return v0
.end method

.method public setNum(Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/models/DataProcessingNamespaces;->num:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataProcessingNamespaces(num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/DataProcessingNamespaces;->num:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    const-string p2, "out"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lio/didomi/sdk/models/DataProcessingNamespaces;->num:Ljava/lang/Integer;

    if-nez p2, :cond_b

    const/4 p2, 0x0

    goto :goto_13

    :cond_b
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
