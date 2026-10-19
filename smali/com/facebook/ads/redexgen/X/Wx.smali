###### Class com.facebook.ads.redexgen.X.C1459Wx (com.facebook.ads.redexgen.X.Wx)
.class public final Lcom/facebook/ads/redexgen/X/Wx;
.super Lcom/facebook/ads/redexgen/X/Bo;
.source ""


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;

.field public static final A05:[I


# instance fields
.field public A00:I

.field public A01:Z

.field public A02:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "NGxGYCc4p5LcUzQMJWyw5DiDSRjOQe9F"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "UCFVtk8FFiQwlTHXhlKlMorjx3xQRwUs"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "gTYsvz0mqVjOzoMK"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "3KonftsBU2Jf7i08alR6FL8DBvSTG56H"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "D2cphfoCJeCyY12qt8LourkPjJ4neP20"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "nKjfLlw2BnKut4cvipNa"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Z1RdCfwuszFRU44UcECPMtJ2BxVCI0wR"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Wx;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Wx;->A01()V

    const/16 v3, 0x5622

    const v2, 0xac44

    const/16 v1, 0x1588

    const/16 v0, 0x2b11

    filled-new-array {v1, v0, v3, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Wx;->A05:[I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Bm;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Bo;-><init>(Lcom/facebook/ads/redexgen/X/Bm;)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 7

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wx;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_9
    array-length p1, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wx;->A04:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x66

    if-eq v1, v0, :cond_1e

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1e
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wx;->A04:[Ljava/lang/String;

    const-string v1, "nNsRewLEUEMjLhcIGLcqJY6DWywwxHcp"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "fafmuFk897DEXRggqTinAcDDyPNFBZka"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_37

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7e

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_9

    :cond_37
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .registers 1

    const/16 v0, 0x53

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/Wx;->A03:[B

    return-void

    :array_a
    .array-data 1
        0x27t
        0x5bt
        0x4at
        0x4ft
        0x55t
        0x6t
        0x4ct
        0x55t
        0x58t
        0x53t
        0x47t
        0x5at
        0x6t
        0x54t
        0x55t
        0x5at
        0x6t
        0x59t
        0x5bt
        0x56t
        0x56t
        0x55t
        0x58t
        0x5at
        0x4bt
        0x4at
        0x20t
        0x6t
        0x30t
        0x44t
        0x33t
        0x38t
        0x3et
        -0x2t
        0x36t
        0x6t
        0x0t
        0x0t
        -0x4t
        0x30t
        0x3bt
        0x30t
        0x46t
        -0x21t
        -0xdt
        -0x1et
        -0x19t
        -0x13t
        -0x53t
        -0x1bt
        -0x4bt
        -0x51t
        -0x51t
        -0x55t
        -0x15t
        -0x16t
        -0x21t
        -0xbt
        -0x18t
        -0x4t
        -0x15t
        -0x10t
        -0xat
        -0x4at
        -0xct
        -0x9t
        -0x45t
        -0x18t
        -0x4ct
        -0xdt
        -0x18t
        -0x5t
        -0xct
        0x29t
        0x3dt
        0x2ct
        0x31t
        0x37t
        -0x9t
        0x35t
        0x38t
        0x2dt
        0x2ft
    .end array-data
.end method


# virtual methods
.method public final A0B(Lcom/facebook/ads/redexgen/X/Hh;J)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9d;
        }
    .end annotation

    move-object/from16 v1, p0

    iget v2, v1, Lcom/facebook/ads/redexgen/X/Wx;->A00:I

    const/4 v0, 0x2

    move-object/from16 v5, p1

    move-wide/from16 v7, p2

    if-ne v2, v0, :cond_1d

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v10

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Bo;->A00:Lcom/facebook/ads/redexgen/X/Bm;

    invoke-interface {v0, v5, v10}, Lcom/facebook/ads/redexgen/X/Bm;->AEr(Lcom/facebook/ads/redexgen/X/Hh;I)V

    iget-object v6, v1, Lcom/facebook/ads/redexgen/X/Bo;->A00:Lcom/facebook/ads/redexgen/X/Bm;

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v6 .. v12}, Lcom/facebook/ads/redexgen/X/Bm;->AEs(JIIILcom/facebook/ads/redexgen/X/Bl;)V

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v6

    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wx;->A04:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v0, 0x10

    if-eq v2, v0, :cond_35

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_35
    sget-object v4, Lcom/facebook/ads/redexgen/X/Wx;->A04:[Ljava/lang/String;

    const-string v2, ""

    const/4 v0, 0x7

    aput-object v2, v4, v0

    if-nez v6, :cond_84

    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/Wx;->A01:Z

    if-nez v0, :cond_84

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v0

    new-array v6, v0, [B

    const/4 v2, 0x0

    array-length v0, v6

    invoke-virtual {v5, v6, v2, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0c([BII)V

    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/HM;->A03([B)Landroid/util/Pair;

    move-result-object v5

    const/4 v7, 0x0

    const/16 v4, 0x3a

    const/16 v2, 0xf

    const/16 v0, 0x9

    invoke-static {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/Wx;->A00(III)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v7 .. v17}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A07(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v2

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Bo;->A00:Lcom/facebook/ads/redexgen/X/Bm;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Bm;->A5j(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    iput-boolean v3, v1, Lcom/facebook/ads/redexgen/X/Wx;->A01:Z

    goto :goto_1c

    :cond_84
    iget v2, v1, Lcom/facebook/ads/redexgen/X/Wx;->A00:I

    const/16 v0, 0xa

    if-ne v2, v0, :cond_8c

    if-ne v6, v3, :cond_1c

    :cond_8c
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v10

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Bo;->A00:Lcom/facebook/ads/redexgen/X/Bm;

    invoke-interface {v0, v5, v10}, Lcom/facebook/ads/redexgen/X/Bm;->AEr(Lcom/facebook/ads/redexgen/X/Hh;I)V

    iget-object v6, v1, Lcom/facebook/ads/redexgen/X/Bo;->A00:Lcom/facebook/ads/redexgen/X/Bm;

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v6 .. v12}, Lcom/facebook/ads/redexgen/X/Bm;->AEs(JIIILcom/facebook/ads/redexgen/X/Bl;)V

    goto/16 :goto_1c
.end method

.method public final A0C(Lcom/facebook/ads/redexgen/X/Hh;)Z
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Wt;
        }
    .end annotation

    move-object/from16 v1, p0

    iget-boolean v2, v1, Lcom/facebook/ads/redexgen/X/Wx;->A02:Z

    const/4 v0, 0x1

    move-object/from16 v4, p1

    if-nez v2, :cond_20

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v6

    sget-object v3, Lcom/facebook/ads/redexgen/X/Wx;->A04:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v2, 0x10

    if-eq v3, v2, :cond_3a

    :cond_1a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_20
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wx;->A04:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v2, v2, v1

    const/16 v1, 0x1c

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v1, 0x47

    if-eq v2, v1, :cond_1a

    sget-object v3, Lcom/facebook/ads/redexgen/X/Wx;->A04:[Ljava/lang/String;

    const-string v2, "XJizbdJnEvbAe8rCZCbZRYx6n8uD67e5"

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0Z(I)V

    goto :goto_72

    :cond_3a
    sget-object v4, Lcom/facebook/ads/redexgen/X/Wx;->A04:[Ljava/lang/String;

    const-string v3, "dXuDB62giJCeOUzZyzuh"

    const/4 v2, 0x5

    aput-object v3, v4, v2

    shr-int/lit8 v2, v6, 0x4

    and-int/lit8 v5, v2, 0xf

    iput v5, v1, Lcom/facebook/ads/redexgen/X/Wx;->A00:I

    const/4 v4, 0x3

    const/4 v2, 0x2

    if-ne v5, v2, :cond_73

    shr-int/lit8 v3, v6, 0x2

    and-int/2addr v3, v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wx;->A05:[I

    aget v11, v2, v3

    const/4 v5, 0x0

    const/16 v4, 0x49

    const/16 v3, 0xa

    const/16 v2, 0x4a

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Wx;->A00(III)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v5 .. v15}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A07(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v3

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/Bo;->A00:Lcom/facebook/ads/redexgen/X/Bm;

    invoke-interface {v2, v3}, Lcom/facebook/ads/redexgen/X/Bm;->A5j(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/Wx;->A01:Z

    :goto_70
    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/Wx;->A02:Z

    :goto_72
    return v0

    :cond_73
    const/4 v3, 0x7

    if-eq v5, v3, :cond_7a

    const/16 v2, 0x8

    if-ne v5, v2, :cond_c9

    :cond_7a
    if-ne v5, v3, :cond_bf

    const/16 v4, 0x1c

    const/16 v3, 0xf

    const/16 v2, 0x51

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Wx;->A00(III)Ljava/lang/String;

    move-result-object v7

    :goto_86
    and-int/lit8 v5, v6, 0x1

    sget-object v3, Lcom/facebook/ads/redexgen/X/Wx;->A04:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v3, v3, v2

    const/16 v2, 0x9

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x38

    if-eq v3, v2, :cond_ba

    sget-object v4, Lcom/facebook/ads/redexgen/X/Wx;->A04:[Ljava/lang/String;

    const-string v3, "aabLL8EV5C3yGzSa"

    const/4 v2, 0x2

    aput-object v3, v4, v2

    if-ne v5, v0, :cond_bd

    :goto_a0
    const/4 v13, 0x2

    :goto_a1
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, 0x1

    const/16 v12, 0x1f40

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v6 .. v17}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A06(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v3

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/Bo;->A00:Lcom/facebook/ads/redexgen/X/Bm;

    invoke-interface {v2, v3}, Lcom/facebook/ads/redexgen/X/Bm;->A5j(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/Wx;->A01:Z

    goto :goto_70

    :cond_ba
    if-ne v5, v0, :cond_bd

    goto :goto_a0

    :cond_bd
    const/4 v13, 0x3

    goto :goto_a1

    :cond_bf
    const/16 v4, 0x2b

    const/16 v3, 0xf

    const/4 v2, 0x0

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Wx;->A00(III)Ljava/lang/String;

    move-result-object v7

    goto :goto_86

    :cond_c9
    const/16 v2, 0xa

    if-ne v5, v2, :cond_ce

    goto :goto_70

    :cond_ce
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/16 v2, 0x1c

    const/16 v0, 0x68

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Wx;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Wx;->A00:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Wt;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Wt;-><init>(Ljava/lang/String;)V

    throw v0
.end method
