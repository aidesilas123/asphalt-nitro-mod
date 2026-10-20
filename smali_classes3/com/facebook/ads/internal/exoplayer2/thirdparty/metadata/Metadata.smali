###### Class com.facebook.ads.internal.exoplayer2.thirdparty.metadata.Metadata (com.facebook.ads.internal.exoplayer2.thirdparty.metadata.Metadata)
.class public final Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata$Entry;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata$Entry;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/ads/redexgen/X/DB;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/DB;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata$Entry;

    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;->A00:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata$Entry;

    const/4 v2, 0x0

    :goto_c
    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;->A00:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata$Entry;

    array-length v0, v1

    if-ge v2, v0, :cond_22

    const-class v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata$Entry;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata$Entry;

    aput-object v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_22
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata$Entry;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_11

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata$Entry;

    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;->A00:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata$Entry;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :goto_10
    return-void

    :cond_11
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata$Entry;

    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;->A00:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata$Entry;

    goto :goto_10
.end method

.method public varargs constructor <init>([Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata$Entry;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_8

    const/4 v0, 0x0

    new-array p1, v0, [Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata$Entry;

    :cond_8
    iput-object p1, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;->A00:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata$Entry;

    return-void
.end method


# virtual methods
.method public final A00()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;->A00:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata$Entry;

    array-length v0, v0

    return v0
.end method

.method public final A01(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata$Entry;
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;->A00:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata$Entry;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    if-eqz p1, :cond_10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_12

    :cond_10
    const/4 v0, 0x0

    return v0

    :cond_12
    check-cast p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;

    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;->A00:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata$Entry;

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;->A00:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata$Entry;

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;->A00:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata$Entry;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;->A00:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata$Entry;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;->A00:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata$Entry;

    array-length v3, v4

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v3, :cond_15

    aget-object v0, v4, v1

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_15
    return-void
.end method
