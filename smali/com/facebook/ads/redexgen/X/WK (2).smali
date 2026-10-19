###### Class com.facebook.ads.redexgen.X.WK (com.facebook.ads.redexgen.X.WK)
.class public final Lcom/facebook/ads/redexgen/X/WK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Cg;


# static fields
.field public static A06:[B

.field public static A07:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:Z

.field public final A04:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Cr;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:[Lcom/facebook/ads/redexgen/X/Bm;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "c0KpkRjZorNQD76"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "v"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "0d4inMg3wDkuo1aYYl0ssqqGC"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "DDXERfdvXnPt4luj6e7N9DVUtx6ZaQcR"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "MB0SdpAzdDPGS5LRihVQgeZ9YJgSZ4OW"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "1ftUnjVA0zWQWzcI2VyXZGsvfHTse3XE"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "DWX3euW52jSmR8J8g1ui9PfHl"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "CNcDYli8yhj93EfpNTcuq0KbKbZRyRug"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/WK;->A07:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/WK;->A01()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Cr;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WK;->A04:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/Bm;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WK;->A05:[Lcom/facebook/ads/redexgen/X/Bm;

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/WK;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x55

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .registers 1

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/WK;->A06:[B

    return-void

    :array_a
    .array-data 1
        0x34t
        0x43t
        0x43t
        0x3ft
        0x3ct
        0x36t
        0x34t
        0x47t
        0x3ct
        0x42t
        0x41t
        0x2t
        0x37t
        0x49t
        0x35t
        0x46t
        0x48t
        0x35t
        0x46t
    .end array-data
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/Hh;I)Z
    .registers 5

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v0

    if-eq v0, p2, :cond_10

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/WK;->A03:Z

    :cond_10
    iget v0, p0, Lcom/facebook/ads/redexgen/X/WK;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WK;->A00:I

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WK;->A03:Z

    return v0
.end method


# virtual methods
.method public final A4O(Lcom/facebook/ads/redexgen/X/Hh;)V
    .registers 8

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WK;->A03:Z

    if-eqz v0, :cond_5c

    iget v1, p0, Lcom/facebook/ads/redexgen/X/WK;->A00:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_12

    const/16 v0, 0x20

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A02(Lcom/facebook/ads/redexgen/X/Hh;I)Z

    move-result v0

    if-nez v0, :cond_12

    return-void

    :cond_12
    iget v1, p0, Lcom/facebook/ads/redexgen/X/WK;->A00:I

    const/4 v5, 0x0

    const/4 v0, 0x1

    if-ne v1, v0, :cond_1f

    invoke-direct {p0, p1, v5}, Lcom/facebook/ads/redexgen/X/WK;->A02(Lcom/facebook/ads/redexgen/X/Hh;I)Z

    move-result v0

    if-nez v0, :cond_1f

    return-void

    :cond_1f
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/WK;->A07:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x56

    if-eq v1, v0, :cond_37

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_37
    sget-object v2, Lcom/facebook/ads/redexgen/X/WK;->A07:[Ljava/lang/String;

    const-string v1, "JHIe8W9CfwFDjJjaFpf1hCiFr"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "vBjglJY7hKXluELD1o7ad0wQv"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v3

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/WK;->A05:[Lcom/facebook/ads/redexgen/X/Bm;

    array-length v1, v2

    :goto_4a
    if-ge v5, v1, :cond_57

    aget-object v0, v2, v5

    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    invoke-interface {v0, p1, v3}, Lcom/facebook/ads/redexgen/X/Bm;->AEr(Lcom/facebook/ads/redexgen/X/Hh;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4a

    :cond_57
    iget v0, p0, Lcom/facebook/ads/redexgen/X/WK;->A01:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WK;->A01:I

    :cond_5c
    return-void
.end method

.method public final A4l(Lcom/facebook/ads/redexgen/X/Bc;Lcom/facebook/ads/redexgen/X/Cu;)V
    .registers 17

    const/4 v2, 0x0

    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WK;->A05:[Lcom/facebook/ads/redexgen/X/Bm;

    array-length v0, v0

    if-ge v2, v0, :cond_41

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WK;->A04:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/Cr;

    invoke-virtual/range {p2 .. p2}, Lcom/facebook/ads/redexgen/X/Cu;->A05()V

    invoke-virtual/range {p2 .. p2}, Lcom/facebook/ads/redexgen/X/Cu;->A03()I

    move-result v1

    const/4 v0, 0x3

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Bc;->AFx(II)Lcom/facebook/ads/redexgen/X/Bm;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/facebook/ads/redexgen/X/Cu;->A04()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    const/16 v3, 0x13

    const/16 v0, 0x7e

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/WK;->A00(III)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Cr;->A02:[B

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    iget-object v12, v5, Lcom/facebook/ads/redexgen/X/Cr;->A01:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static/range {v6 .. v13}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Bm;->A5j(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WK;->A05:[Lcom/facebook/ads/redexgen/X/Bm;

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_41
    return-void
.end method

.method public final ADi()V
    .registers 12

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WK;->A03:Z

    if-eqz v0, :cond_1c

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/WK;->A05:[Lcom/facebook/ads/redexgen/X/Bm;

    array-length v2, v3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v2, :cond_1a

    aget-object v4, v3, v0

    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/WK;->A02:J

    const/4 v7, 0x1

    iget v8, p0, Lcom/facebook/ads/redexgen/X/WK;->A01:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/Bm;->AEs(JIIILcom/facebook/ads/redexgen/X/Bl;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1a
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/WK;->A03:Z

    :cond_1c
    return-void
.end method

.method public final ADj(JZ)V
    .registers 5

    if-nez p3, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WK;->A03:Z

    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/WK;->A02:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WK;->A01:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WK;->A00:I

    return-void
.end method

.method public final AEv()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WK;->A03:Z

    return-void
.end method
