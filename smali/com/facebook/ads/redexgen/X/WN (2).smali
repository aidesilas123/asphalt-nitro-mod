###### Class com.facebook.ads.redexgen.X.WN (com.facebook.ads.redexgen.X.WN)
.class public final Lcom/facebook/ads/redexgen/X/WN;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Cg;


# static fields
.field public static A0H:[B

.field public static A0I:[Ljava/lang/String;

.field public static final A0J:[B


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:J

.field public A05:J

.field public A06:J

.field public A07:Lcom/facebook/ads/redexgen/X/Bm;

.field public A08:Lcom/facebook/ads/redexgen/X/Bm;

.field public A09:Lcom/facebook/ads/redexgen/X/Bm;

.field public A0A:Ljava/lang/String;

.field public A0B:Z

.field public A0C:Z

.field public final A0D:Lcom/facebook/ads/redexgen/X/Hg;

.field public final A0E:Lcom/facebook/ads/redexgen/X/Hh;

.field public final A0F:Ljava/lang/String;

.field public final A0G:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "aRSbhnMLIcOzj"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ArMoJofeV0W2c5eK3C8YvO0k1qJSW4Bu"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "08qFCQPWLGI3uv5FT5gA6GEjfGrW3Yqx"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "08xirDFjjs8oqtTIfBkr"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "oUVAEbDN9zve"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "EoNb"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "rtTHy9LVM9SlY"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "UaKoPz55Hu2hTR949azFeJYsN1lXPKTw"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/WN;->A0I:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/WN;->A06()V

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_3a

    sput-object v0, Lcom/facebook/ads/redexgen/X/WN;->A0J:[B

    return-void

    :array_3a
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/WN;-><init>(ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    new-array v1, v0, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hg;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hg;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A0D:Lcom/facebook/ads/redexgen/X/Hg;

    sget-object v1, Lcom/facebook/ads/redexgen/X/WN;->A0J:[B

    const/16 v0, 0xa

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hh;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hh;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A0E:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/WN;->A03()V

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/WN;->A0G:Z

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/WN;->A0F:Ljava/lang/String;

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/WN;->A0H:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9d;
        }
    .end annotation

    move-object/from16 v2, p0

    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/WN;->A0D:Lcom/facebook/ads/redexgen/X/Hg;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A07(I)V

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/WN;->A0C:Z

    const/4 v3, 0x4

    const/4 v1, 0x2

    if-nez v0, :cond_c9

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WN;->A0D:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v7

    const/4 v4, 0x1

    add-int/2addr v7, v4

    if-eq v7, v1, :cond_4e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x20

    const/16 v1, 0x1c

    const/16 v0, 0x19

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/WN;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v5, 0x0

    const/16 v1, 0x16

    const/16 v0, 0x39

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/WN;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v5, 0x16

    const/16 v1, 0xa

    const/16 v0, 0x3b

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/WN;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x2

    :cond_4e
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WN;->A0D:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v5

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WN;->A0D:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/WN;->A0D:Lcom/facebook/ads/redexgen/X/Hg;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v0

    invoke-static {v7, v5, v0}, Lcom/facebook/ads/redexgen/X/HM;->A07(III)[B

    move-result-object v7

    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/HM;->A03([B)Landroid/util/Pair;

    move-result-object v6

    iget-object v8, v2, Lcom/facebook/ads/redexgen/X/WN;->A0A:Ljava/lang/String;

    const/16 v5, 0x4b

    const/16 v1, 0xf

    const/16 v0, 0x23

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/WN;->A00(III)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WN;->A0F:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v8 .. v18}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A07(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v7

    iget v0, v7, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0C:I

    int-to-long v5, v0

    const-wide/32 v0, 0x3d090000

    div-long/2addr v0, v5

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/WN;->A05:J

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WN;->A09:Lcom/facebook/ads/redexgen/X/Bm;

    invoke-interface {v0, v7}, Lcom/facebook/ads/redexgen/X/Bm;->A5j(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    iput-boolean v4, v2, Lcom/facebook/ads/redexgen/X/WN;->A0C:Z

    :goto_a7
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WN;->A0D:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/WN;->A0D:Lcom/facebook/ads/redexgen/X/Hg;

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v1

    const/4 v0, 0x2

    sub-int/2addr v1, v0

    add-int/lit8 v5, v1, -0x5

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/WN;->A0B:Z

    if-eqz v0, :cond_be

    add-int/lit8 v5, v5, -0x2

    :cond_be
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/WN;->A09:Lcom/facebook/ads/redexgen/X/Bm;

    iget-wide v2, v2, Lcom/facebook/ads/redexgen/X/WN;->A05:J

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/WN;->A07(Lcom/facebook/ads/redexgen/X/Bm;JII)V

    return-void

    :cond_c9
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/WN;->A0D:Lcom/facebook/ads/redexgen/X/Hg;

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    goto :goto_a7
.end method

.method private A02()V
    .registers 7

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/WN;->A08:Lcom/facebook/ads/redexgen/X/Bm;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WN;->A0E:Lcom/facebook/ads/redexgen/X/Hh;

    const/16 v0, 0xa

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Bm;->AEr(Lcom/facebook/ads/redexgen/X/Hh;I)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WN;->A0E:Lcom/facebook/ads/redexgen/X/Hh;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WN;->A08:Lcom/facebook/ads/redexgen/X/Bm;

    const-wide/16 v2, 0x0

    const/16 v4, 0xa

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A0E:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0D()I

    move-result v0

    add-int/lit8 v5, v0, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/WN;->A07(Lcom/facebook/ads/redexgen/X/Bm;JII)V

    return-void
.end method

.method private A03()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A03:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A00:I

    const/16 v0, 0x100

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A01:I

    return-void
.end method

.method private A04()V
    .registers 2

    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A03:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A00:I

    return-void
.end method

.method private A05()V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A03:I

    sget-object v0, Lcom/facebook/ads/redexgen/X/WN;->A0J:[B

    array-length v0, v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A00:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/WN;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A0E:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    return-void
.end method

.method public static A06()V
    .registers 1

    const/16 v0, 0x5a

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/WN;->A0H:[B

    return-void

    :array_a
    .array-data 1
        -0x1ft
        -0x2bt
        0x17t
        0x2at
        0x29t
        -0x2bt
        0x16t
        0x28t
        0x28t
        0x2at
        0x22t
        0x1et
        0x23t
        0x1ct
        -0x2bt
        -0xat
        -0xat
        -0x8t
        -0x2bt
        0x1t
        -0x8t
        -0x1dt
        -0x8t
        0x1bt
        0x2bt
        0x2at
        0x9t
        0x1ct
        0x18t
        0x1bt
        0x1ct
        0x29t
        -0x27t
        -0x6t
        0x9t
        -0x6t
        -0x8t
        0x9t
        -0x6t
        -0x7t
        -0x4bt
        -0xat
        0xat
        -0x7t
        -0x2t
        0x4t
        -0x4bt
        0x4t
        -0x9t
        -0x1t
        -0x6t
        -0x8t
        0x9t
        -0x4bt
        0x9t
        0xet
        0x5t
        -0x6t
        -0x31t
        -0x4bt
        0x22t
        0x31t
        0x31t
        0x2dt
        0x2at
        0x24t
        0x22t
        0x35t
        0x2at
        0x30t
        0x2ft
        -0x10t
        0x2at
        0x25t
        -0xct
        0x0t
        0x14t
        0x3t
        0x8t
        0xet
        -0x32t
        0xct
        0xft
        -0x2dt
        0x0t
        -0x34t
        0xbt
        0x0t
        0x13t
        0xct
    .end array-data
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/Bm;JII)V
    .registers 7

    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A03:I

    iput p4, p0, Lcom/facebook/ads/redexgen/X/WN;->A00:I

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WN;->A07:Lcom/facebook/ads/redexgen/X/Bm;

    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/WN;->A04:J

    iput p5, p0, Lcom/facebook/ads/redexgen/X/WN;->A02:I

    return-void
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/Hh;)V
    .registers 10

    iget-object v7, p1, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A07()I

    move-result v6

    :goto_a
    if-ge v0, v6, :cond_52

    add-int/lit8 v5, v0, 0x1

    aget-byte v4, v7, v0

    const/16 v3, 0xff

    and-int/2addr v4, v3

    iget v2, p0, Lcom/facebook/ads/redexgen/X/WN;->A01:I

    const/16 v1, 0x200

    if-ne v2, v1, :cond_2f

    const/16 v0, 0xf0

    if-lt v4, v0, :cond_2f

    if-eq v4, v3, :cond_2f

    and-int/lit8 v0, v4, 0x1

    if-nez v0, :cond_2d

    const/4 v0, 0x1

    :goto_24
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A0B:Z

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/WN;->A04()V

    invoke-virtual {p1, v5}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    return-void

    :cond_2d
    const/4 v0, 0x0

    goto :goto_24

    :cond_2f
    or-int v0, v2, v4

    sparse-switch v0, :sswitch_data_56

    const/16 v0, 0x100

    if-eq v2, v0, :cond_49

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A01:I

    add-int/lit8 v0, v5, -0x1

    goto :goto_a

    :sswitch_3d
    const/16 v0, 0x300

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A01:I

    goto :goto_49

    :sswitch_42
    iput v1, p0, Lcom/facebook/ads/redexgen/X/WN;->A01:I

    goto :goto_49

    :sswitch_45
    const/16 v0, 0x400

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A01:I

    :cond_49
    :goto_49
    move v0, v5

    goto :goto_a

    :sswitch_4b
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/WN;->A05()V

    invoke-virtual {p1, v5}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    return-void

    :cond_52
    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    return-void

    :sswitch_data_56
    .sparse-switch
        0x149 -> :sswitch_3d
        0x1ff -> :sswitch_42
        0x344 -> :sswitch_45
        0x433 -> :sswitch_4b
    .end sparse-switch
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/Hh;)V
    .registers 9

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/WN;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A00:I

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A07:Lcom/facebook/ads/redexgen/X/Bm;

    invoke-interface {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Bm;->AEr(Lcom/facebook/ads/redexgen/X/Hh;I)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A00:I

    iget v4, p0, Lcom/facebook/ads/redexgen/X/WN;->A02:I

    if-ne v0, v4, :cond_2f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A07:Lcom/facebook/ads/redexgen/X/Bm;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/WN;->A06:J

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/Bm;->AEs(JIIILcom/facebook/ads/redexgen/X/Bl;)V

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/WN;->A06:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A04:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/WN;->A06:J

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/WN;->A03()V

    :cond_2f
    return-void
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/Hh;[BI)Z
    .registers 6

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A00:I

    sub-int v0, p3, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A00:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/Hh;->A0c([BII)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A00:I

    if-ne v0, p3, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method


# virtual methods
.method public final A4O(Lcom/facebook/ads/redexgen/X/Hh;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9d;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v0

    if-lez v0, :cond_39

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A03:I

    packed-switch v0, :pswitch_data_3a

    goto :goto_0

    :pswitch_c
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/WN;->A08(Lcom/facebook/ads/redexgen/X/Hh;)V

    goto :goto_0

    :pswitch_10
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A0E:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    const/16 v0, 0xa

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/WN;->A0A(Lcom/facebook/ads/redexgen/X/Hh;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/WN;->A02()V

    goto :goto_0

    :pswitch_20
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A0B:Z

    if-eqz v0, :cond_33

    const/4 v1, 0x7

    :goto_25
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A0D:Lcom/facebook/ads/redexgen/X/Hg;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hg;->A00:[B

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/WN;->A0A(Lcom/facebook/ads/redexgen/X/Hh;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/WN;->A01()V

    goto :goto_0

    :cond_33
    const/4 v1, 0x5

    goto :goto_25

    :pswitch_35
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/WN;->A09(Lcom/facebook/ads/redexgen/X/Hh;)V

    goto :goto_0

    :cond_39
    return-void

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_c
        :pswitch_10
        :pswitch_20
        :pswitch_35
    .end packed-switch
.end method

.method public final A4l(Lcom/facebook/ads/redexgen/X/Bc;Lcom/facebook/ads/redexgen/X/Cu;)V
    .registers 8

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Cu;->A05()V

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Cu;->A04()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A0A:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Cu;->A03()I

    move-result v1

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Bc;->AFx(II)Lcom/facebook/ads/redexgen/X/Bm;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A09:Lcom/facebook/ads/redexgen/X/Bm;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A0G:Z

    if-eqz v0, :cond_58

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Cu;->A05()V

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Cu;->A03()I

    move-result v1

    const/4 v0, 0x4

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Bc;->AFx(II)Lcom/facebook/ads/redexgen/X/Bm;

    move-result-object v4

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/WN;->A08:Lcom/facebook/ads/redexgen/X/Bm;

    sget-object v1, Lcom/facebook/ads/redexgen/X/WN;->A0I:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_39

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_39
    sget-object v2, Lcom/facebook/ads/redexgen/X/WN;->A0I:[Ljava/lang/String;

    const-string v1, "GBp"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Cu;->A04()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x3c

    const/16 v1, 0xf

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WN;->A00(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-static {v3, v2, v1, v0, v1}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/facebook/ads/redexgen/X/Bm;->A5j(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    goto :goto_5f

    :cond_58
    new-instance v0, Lcom/facebook/ads/redexgen/X/X2;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/X2;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A08:Lcom/facebook/ads/redexgen/X/Bm;

    :goto_5f
    return-void
.end method

.method public final ADi()V
    .registers 1

    return-void
.end method

.method public final ADj(JZ)V
    .registers 4

    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/WN;->A06:J

    return-void
.end method

.method public final AEv()V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/WN;->A03()V

    return-void
.end method
