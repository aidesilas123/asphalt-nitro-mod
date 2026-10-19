###### Class com.facebook.ads.redexgen.X.VO (com.facebook.ads.redexgen.X.VO)
.class public abstract Lcom/facebook/ads/redexgen/X/VO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/GO;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/GC;
    }
.end annotation


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public final A01:[J

.field public final A02:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

.field public final A03:I

.field public final A04:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;

.field public final A05:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "EBmdqLWecJMvF32HHOtKZq3CgXIvE452"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "BdAZUE9bv2aYbX"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "p2jaFpqqtq7wiSmM9WukcsLyXw4b4dtx"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "1X"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "vopxokSVw1ySmQXekO1RjBQd7v2xLqd9"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "VPvZphdKETm07yfZNyzcurZ6EUXJ9z1S"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "4goZxeGj3kqt5M"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/VO;->A06:[Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;[I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    if-lez v0, :cond_2a

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/HI;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VO;->A04:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;

    array-length v0, p2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/VO;->A03:I

    new-array v0, v0, [Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VO;->A02:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    const/4 v2, 0x0

    :goto_1a
    array-length v0, p2

    if-ge v2, v0, :cond_2c

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VO;->A02:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    aget v0, p2, v2

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;->A01(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    aput-object v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_2a
    const/4 v0, 0x0

    goto :goto_7

    :cond_2c
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/VO;->A02:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/GC;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/GC;-><init>(Lcom/facebook/ads/redexgen/X/GB;)V

    invoke-static {v2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/VO;->A03:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VO;->A05:[I

    const/4 v2, 0x0

    :goto_3e
    iget v0, p0, Lcom/facebook/ads/redexgen/X/VO;->A03:I

    if-ge v2, v0, :cond_51

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VO;->A05:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VO;->A02:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;->A00(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)I

    move-result v0

    aput v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    :cond_51
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VO;->A01:[J

    return-void
.end method


# virtual methods
.method public final A00(IJ)Z
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VO;->A01:[J

    aget-wide v1, v0, p1

    cmp-long v0, v1, p2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public A5P()V
    .registers 1

    return-void
.end method

.method public final A6z(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VO;->A02:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final A75(I)I
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VO;->A05:[I

    aget v0, v0, p1

    return v0
.end method

.method public final A7m()Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    .registers 3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VO;->A02:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/GO;->A7n()I

    move-result v0

    aget-object v0, v1, v0

    return-object v0
.end method

.method public final A81()Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VO;->A04:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;

    return-object v0
.end method

.method public ACP(F)V
    .registers 2

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v6, 0x1

    if-ne p0, p1, :cond_4

    return v6

    :cond_4
    const/4 v5, 0x0

    if-eqz p1, :cond_26

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/VO;->A06:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x36

    if-eq v1, v0, :cond_3c

    sget-object v2, Lcom/facebook/ads/redexgen/X/VO;->A06:[Ljava/lang/String;

    const-string v1, "DltTTItYFp9j4gBSYKna0NySMwUM0opE"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eq v4, v3, :cond_27

    :cond_26
    return v5

    :cond_27
    check-cast p1, Lcom/facebook/ads/redexgen/X/VO;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VO;->A04:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/VO;->A04:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;

    if-ne v1, v0, :cond_3a

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VO;->A05:[I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/VO;->A05:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_3a

    :goto_39
    return v6

    :cond_3a
    const/4 v6, 0x0

    goto :goto_39

    :cond_3c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .registers 5

    iget v0, p0, Lcom/facebook/ads/redexgen/X/VO;->A00:I

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VO;->A04:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VO;->A05:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/VO;->A00:I

    :cond_15
    iget v3, p0, Lcom/facebook/ads/redexgen/X/VO;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/VO;->A06:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_2b

    sget-object v2, Lcom/facebook/ads/redexgen/X/VO;->A06:[Ljava/lang/String;

    const-string v1, "bVwK8O26HvXVwTm7sFYRRd9zYTspDJxL"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return v3

    :cond_2b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final length()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VO;->A05:[I

    array-length v0, v0

    return v0
.end method
