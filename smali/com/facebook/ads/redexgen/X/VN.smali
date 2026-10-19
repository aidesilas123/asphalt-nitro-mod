###### Class com.facebook.ads.redexgen.X.VN (com.facebook.ads.redexgen.X.VN)
.class public abstract Lcom/facebook/ads/redexgen/X/VN;
.super Lcom/facebook/ads/redexgen/X/GR;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/GM;
    }
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/GM;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "JXADnguvwbjBsYgslHoSHgr2xxMnawNn"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "jNEAQ3UZ70aM1hHDYV2CS20ieNSkmYbb"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "bnkACY5tQbsoiCdyBJgaOjSRI0w0kmrQ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "gVGuKveDeddXJzh5PaouiQlIwgfOoZnh"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "qzMEUGGJ0FpDLYRljtzJ24rj8XT6rBKz"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "LijUR"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ZVB7ZDT4TSe2rtQPBLBW6RwhtV59NTLq"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/VN;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/GR;-><init>()V

    return-void
.end method

.method public static A0Q([Lcom/facebook/ads/redexgen/X/9s;Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    array-length v5, p0

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_3
    array-length v0, p0

    if-ge v3, v0, :cond_25

    aget-object v2, p0, v3

    const/4 v1, 0x0

    :goto_9
    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;->A01:I

    if-ge v1, v0, :cond_22

    invoke-virtual {p1, v1}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;->A01(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/9s;->AFt(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    if-le v0, v4, :cond_1f

    move v5, v3

    move v4, v0

    const/4 v0, 0x4

    if-ne v4, v0, :cond_1f

    return v5

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_25
    return v5
.end method

.method public static A0R(Lcom/facebook/ads/redexgen/X/9s;Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;)[I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;->A01:I

    new-array v2, v0, [I

    const/4 v1, 0x0

    :goto_5
    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;->A01:I

    if-ge v1, v0, :cond_16

    invoke-virtual {p1, v1}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;->A01(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/facebook/ads/redexgen/X/9s;->AFt(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)I

    move-result v0

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_16
    return-object v2
.end method

.method public static A0S([Lcom/facebook/ads/redexgen/X/9s;)[I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    array-length v0, p0

    new-array v2, v0, [I

    const/4 v1, 0x0

    :goto_4
    array-length v0, v2

    if-ge v1, v0, :cond_12

    aget-object v0, p0, v1

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9s;->AFv()I

    move-result v0

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_12
    return-object v2
.end method


# virtual methods
.method public final A0T([Lcom/facebook/ads/redexgen/X/9s;Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;)Lcom/facebook/ads/redexgen/X/GS;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v4, v0, [I

    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v2, v0, [[Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;

    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v10, v0, [[[I

    const/4 v5, 0x0

    :goto_10
    array-length v0, v2

    if-ge v5, v0, :cond_3e

    iget v0, p2, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;->A01:I

    new-array v0, v0, [Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;

    aput-object v0, v2, v5

    iget v0, p2, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;->A01:I

    new-array v0, v0, [[I

    aput-object v0, v10, v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/VN;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x56

    if-eq v1, v0, :cond_34

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_34
    sget-object v3, Lcom/facebook/ads/redexgen/X/VN;->A01:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x1

    aput-object v1, v3, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_3e
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/VN;->A0S([Lcom/facebook/ads/redexgen/X/9s;)[I

    move-result-object v9

    const/4 v8, 0x0

    :goto_43
    iget v0, p2, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;->A01:I

    if-ge v8, v0, :cond_ae

    invoke-virtual {p2, v8}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;->A01(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/facebook/ads/redexgen/X/VN;->A0Q([Lcom/facebook/ads/redexgen/X/9s;Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;)I

    move-result v6

    array-length v5, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/VN;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x75

    if-eq v1, v0, :cond_7e

    sget-object v3, Lcom/facebook/ads/redexgen/X/VN;->A01:[Ljava/lang/String;

    const-string v1, "flHuZy9qfiSfYNp536tqdaojA4"

    const/4 v0, 0x6

    aput-object v1, v3, v0

    if-ne v6, v5, :cond_8d

    :goto_67
    iget v0, v7, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;->A01:I

    new-array v3, v0, [I

    :goto_6b
    aget v1, v4, v6

    aget-object v0, v2, v6

    aput-object v7, v0, v1

    aget-object v0, v10, v6

    aput-object v3, v0, v1

    aget v0, v4, v6

    add-int/lit8 v0, v0, 0x1

    aput v0, v4, v6

    add-int/lit8 v8, v8, 0x1

    goto :goto_43

    :cond_7e
    sget-object v3, Lcom/facebook/ads/redexgen/X/VN;->A01:[Ljava/lang/String;

    const-string v1, "D4rc1OneeydPNAn3BWDV4yQ6n9XdhHzA"

    const/4 v0, 0x7

    aput-object v1, v3, v0

    const-string v1, "1lNTPVAxZlA71NpHB66K3LVNnVnwQcNq"

    const/4 v0, 0x3

    aput-object v1, v3, v0

    if-ne v6, v5, :cond_8d

    goto :goto_67

    :cond_8d
    aget-object v5, p1, v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/VN;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x75

    if-eq v1, v0, :cond_a2

    invoke-static {v5, v7}, Lcom/facebook/ads/redexgen/X/VN;->A0R(Lcom/facebook/ads/redexgen/X/9s;Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;)[I

    move-result-object v3

    goto :goto_6b

    :cond_a2
    sget-object v3, Lcom/facebook/ads/redexgen/X/VN;->A01:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v5, v7}, Lcom/facebook/ads/redexgen/X/VN;->A0R(Lcom/facebook/ads/redexgen/X/9s;Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;)[I

    move-result-object v3

    goto :goto_6b

    :cond_ae
    array-length v0, p1

    new-array v8, v0, [Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    array-length v0, p1

    new-array v7, v0, [I

    const/4 v5, 0x0

    :goto_b5
    array-length v0, p1

    if-ge v5, v0, :cond_de

    aget v3, v4, v5

    aget-object v0, v2, v5

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Hx;->A0k([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;

    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;-><init>([Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;)V

    aput-object v0, v8, v5

    aget-object v0, v10, v5

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Hx;->A0k([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    aput-object v0, v10, v5

    aget-object v0, p1, v5

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9s;->A83()I

    move-result v0

    aput v0, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_b5

    :cond_de
    array-length v0, p1

    aget v1, v4, v0

    array-length v0, p1

    aget-object v0, v2, v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Hx;->A0k([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;

    new-instance v11, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    invoke-direct {v11, v0}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;-><init>([Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;)V

    new-instance v6, Lcom/facebook/ads/redexgen/X/GM;

    invoke-direct/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/GM;-><init>([I[Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;[I[[[ILcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;)V

    move-object v0, p0

    invoke-virtual {v0, v6, v10, v9}, Lcom/facebook/ads/redexgen/X/VN;->A0V(Lcom/facebook/ads/redexgen/X/GM;[[[I[I)Landroid/util/Pair;

    move-result-object v0

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [Lcom/facebook/ads/redexgen/X/9t;

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Lcom/facebook/ads/redexgen/X/GO;

    new-instance v0, Lcom/facebook/ads/redexgen/X/GS;

    invoke-direct {v0, v2, v1, v6}, Lcom/facebook/ads/redexgen/X/GS;-><init>([Lcom/facebook/ads/redexgen/X/9t;[Lcom/facebook/ads/redexgen/X/GO;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final A0U(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/redexgen/X/GM;

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VN;->A00:Lcom/facebook/ads/redexgen/X/GM;

    return-void
.end method

.method public abstract A0V(Lcom/facebook/ads/redexgen/X/GM;[[[I[I)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/GM;",
            "[[[I[I)",
            "Landroid/util/Pair<",
            "[",
            "Lcom/facebook/ads/redexgen/X/9t;",
            "[",
            "Lcom/facebook/ads/redexgen/X/GO;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation
.end method
