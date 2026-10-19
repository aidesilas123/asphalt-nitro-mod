###### Class com.facebook.ads.redexgen.X.A8 (com.facebook.ads.redexgen.X.A8)
.class public final Lcom/facebook/ads/redexgen/X/A8;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/A7;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:[I

.field public static final A03:[I

.field public static final A04:[I

.field public static final A05:[I

.field public static final A06:[I

.field public static final A07:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "sCxx5L5gWudXPe4xp1ThsNryHSmynjHF"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "9Nf9uybzHO2S6jQpjiGasa9ZwcLHyUhN"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "2aneS77IEDbgq"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "fX6HyBPcmxgssJA51nXZ3qA"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "AlikR2RGcjs8IOnjMv6bsO9qZZebDHqD"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "DHEXyDlkH8L0aTNQHdBgfWGXbAOYtdTx"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "PJLs5pK7Ccf4tt9LWMwQ38VoV6l96kFD"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/A8;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/A8;->A0B()V

    const/4 v3, 0x3

    const/4 v2, 0x6

    const/4 v1, 0x1

    const/4 v0, 0x2

    filled-new-array {v1, v0, v3, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/A8;->A03:[I

    const v2, 0xac44

    const/16 v1, 0x7d00

    const v0, 0xbb80

    filled-new-array {v0, v2, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/A8;->A05:[I

    const/16 v2, 0x5622

    const/16 v1, 0x3e80

    const/16 v0, 0x5dc0

    filled-new-array {v0, v2, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/A8;->A06:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_70

    sput-object v0, Lcom/facebook/ads/redexgen/X/A8;->A04:[I

    const/16 v1, 0x13

    new-array v0, v1, [I

    fill-array-data v0, :array_84

    sput-object v0, Lcom/facebook/ads/redexgen/X/A8;->A02:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_ae

    sput-object v0, Lcom/facebook/ads/redexgen/X/A8;->A07:[I

    return-void

    nop

    :array_70
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
    .end array-data

    :array_84
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
        0x1c0
        0x200
        0x240
        0x280
    .end array-data

    :array_ae
    .array-data 4
        0x45
        0x57
        0x68
        0x79
        0x8b
        0xae
        0xd0
        0xf3
        0x116
        0x15c
        0x1a1
        0x1e7
        0x22d
        0x2b8
        0x343
        0x3cf
        0x45a
        0x4e5
        0x571
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()I
    .registers 1

    const/16 v0, 0x600

    return v0
.end method

.method public static A01(II)I
    .registers 6

    div-int/lit8 v3, p1, 0x2

    if-ltz p0, :cond_10

    sget-object v2, Lcom/facebook/ads/redexgen/X/A8;->A05:[I

    array-length v0, v2

    if-ge p0, v0, :cond_10

    if-ltz p1, :cond_10

    sget-object v1, Lcom/facebook/ads/redexgen/X/A8;->A07:[I

    array-length v0, v1

    if-lt v3, v0, :cond_12

    :cond_10
    const/4 v0, -0x1

    return v0

    :cond_12
    aget v2, v2, p0

    const v0, 0xac44

    if-ne v2, v0, :cond_21

    aget v1, v1, v3

    rem-int/lit8 v0, p1, 0x2

    add-int/2addr v1, v0

    mul-int/lit8 v0, v1, 0x2

    return v0

    :cond_21
    sget-object v0, Lcom/facebook/ads/redexgen/X/A8;->A02:[I

    aget v1, v0, v3

    const/16 v0, 0x7d00

    if-ne v2, v0, :cond_4d

    mul-int/lit8 v3, v1, 0x6

    sget-object v1, Lcom/facebook/ads/redexgen/X/A8;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x51

    if-eq v1, v0, :cond_47

    sget-object v2, Lcom/facebook/ads/redexgen/X/A8;->A01:[Ljava/lang/String;

    const-string v1, "qimZQilZsB2lt3Dt1pYE9Xl"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return v3

    :cond_47
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4d
    mul-int/lit8 v0, v1, 0x4

    return v0
.end method

.method public static A02(Ljava/nio/ByteBuffer;)I
    .registers 6

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int/lit8 v3, v0, -0xa

    move v2, v4

    :goto_b
    if-gt v2, v3, :cond_21

    add-int/lit8 v0, v2, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    const v0, -0x1000001

    and-int/2addr v1, v0

    const v0, -0x45908d08

    if-ne v1, v0, :cond_1e

    sub-int/2addr v2, v4

    return v2

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_21
    const/4 v3, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/A8;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3e

    sget-object v2, Lcom/facebook/ads/redexgen/X/A8;->A01:[Ljava/lang/String;

    const-string v1, "FkGXqBuH9rf"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return v3

    :cond_3e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A03(Ljava/nio/ByteBuffer;)I
    .registers 4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v2, v0, 0xc0

    const/4 v1, 0x6

    shr-int/2addr v2, v1

    const/4 v0, 0x3

    if-ne v2, v0, :cond_14

    :goto_11
    mul-int/lit16 v0, v1, 0x100

    return v0

    :cond_14
    sget-object v1, Lcom/facebook/ads/redexgen/X/A8;->A03:[I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x30

    shr-int/lit8 v0, v0, 0x4

    aget v1, v1, v0

    goto :goto_11
.end method

.method public static A04(Ljava/nio/ByteBuffer;I)I
    .registers 4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v1, v0, 0xff

    const/16 v0, 0xbb

    if-ne v1, v0, :cond_2b

    const/4 v0, 0x1

    :goto_12
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    if-eqz v0, :cond_28

    const/16 v0, 0x9

    :goto_1b
    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v1, v0, 0x7

    const/16 v0, 0x28

    shl-int/2addr v0, v1

    return v0

    :cond_28
    const/16 v0, 0x8

    goto :goto_1b

    :cond_2b
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static A05([B)I
    .registers 4

    array-length v1, p0

    const/4 v0, 0x5

    if-ge v1, v0, :cond_6

    const/4 v0, -0x1

    return v0

    :cond_6
    const/4 v2, 0x4

    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v1, v0, 0x6

    aget-byte v0, p0, v2

    and-int/lit8 v0, v0, 0x3f

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/A8;->A01(II)I

    move-result v0

    return v0
.end method

.method public static A06([B)I
    .registers 6

    const/4 v0, 0x4

    aget-byte v1, p0, v0

    const/4 v0, -0x8

    const/4 v2, 0x0

    if-ne v1, v0, :cond_1e

    const/4 v0, 0x5

    aget-byte v1, p0, v0

    const/16 v0, 0x72

    if-ne v1, v0, :cond_1e

    const/4 v0, 0x6

    aget-byte v1, p0, v0

    const/16 v0, 0x6f

    if-ne v1, v0, :cond_1e

    const/4 v4, 0x7

    aget-byte v0, p0, v4

    and-int/lit16 v1, v0, 0xfe

    const/16 v0, 0xba

    if-eq v1, v0, :cond_1f

    :cond_1e
    return v2

    :cond_1f
    aget-byte v0, p0, v4

    and-int/lit16 v1, v0, 0xff

    const/16 v0, 0xbb

    if-ne v1, v0, :cond_28

    const/4 v2, 0x1

    :cond_28
    if-eqz v2, :cond_53

    const/16 v0, 0x9

    :goto_2c
    aget-byte v3, p0, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/A8;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_56

    sget-object v2, Lcom/facebook/ads/redexgen/X/A8;->A01:[Ljava/lang/String;

    const-string v1, "Qkic1459317rghhXW1uTsPZAwlwTKIiV"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "TPYz26W0Cq4ZALktt0QhsmVlkvC9xybr"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    shr-int/lit8 v1, v3, 0x4

    and-int/2addr v1, v4

    const/16 v0, 0x28

    shl-int/2addr v0, v1

    return v0

    :cond_53
    const/16 v0, 0x8

    goto :goto_2c

    :cond_56
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/Hh;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    .registers 13

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v1, v0, 0x6

    sget-object v0, Lcom/facebook/ads/redexgen/X/A8;->A05:[I

    aget v6, v0, v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/A8;->A04:[I

    and-int/lit8 v0, v2, 0x38

    shr-int/lit8 v0, v0, 0x3

    aget v5, v1, v0

    and-int/lit8 v0, v2, 0x4

    if-eqz v0, :cond_1e

    add-int/lit8 v5, v5, 0x1

    :cond_1e
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/A8;->A0A(III)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v7, 0x0

    const/4 p0, 0x0

    move-object v0, p1

    move-object p1, p2

    move-object v8, p3

    invoke-static/range {v0 .. v10}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A07(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    return-object v0
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/Hh;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    .registers 13

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0Z(I)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v1, v0, 0x6

    sget-object v0, Lcom/facebook/ads/redexgen/X/A8;->A05:[I

    aget v6, v0, v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/A8;->A04:[I

    and-int/lit8 v0, v2, 0xe

    shr-int/lit8 v0, v0, 0x1

    aget v5, v1, v0

    and-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_22

    add-int/lit8 v5, v5, 0x1

    :cond_22
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v0

    and-int/lit8 v0, v0, 0x1e

    shr-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_36

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_36

    add-int/lit8 v5, v5, 0x2

    :cond_36
    const/16 v2, 0x9

    const/16 v1, 0xa

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/A8;->A0A(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v0

    if-lez v0, :cond_58

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_58

    const/16 v2, 0x13

    const/16 v1, 0xe

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/A8;->A0A(III)Ljava/lang/String;

    move-result-object v1

    :cond_58
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v7, 0x0

    const/4 p0, 0x0

    move-object v0, p1

    move-object p1, p2

    move-object v8, p3

    invoke-static/range {v0 .. v10}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A07(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    return-object v0
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/Hg;)Lcom/facebook/ads/redexgen/X/A7;
    .registers 19

    move-object/from16 v2, p0

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hg;->A03()I

    move-result v1

    const/16 v0, 0x28

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    const/4 v8, 0x5

    invoke-virtual {v2, v8}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v0

    const/4 v7, 0x1

    const/16 v6, 0x10

    if-ne v0, v6, :cond_36a

    const/4 v0, 0x1

    :goto_16
    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/Hg;->A07(I)V

    const/4 v13, -0x1

    const/4 v9, 0x3

    const/16 v5, 0x8

    const/4 v10, 0x2

    if-eqz v0, :cond_304

    invoke-virtual {v2, v6}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    invoke-virtual {v2, v10}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v0

    packed-switch v0, :pswitch_data_37a

    const/4 v13, -0x1

    :goto_2b
    invoke-virtual {v2, v9}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v0

    add-int/2addr v0, v7

    mul-int/lit8 v16, v0, 0x2

    invoke-virtual {v2, v10}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v4

    if-ne v4, v9, :cond_2c5

    const/4 v1, 0x3

    sget-object v3, Lcom/facebook/ads/redexgen/X/A8;->A06:[I

    invoke-virtual {v2, v10}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v0

    aget v15, v3, v0

    const/4 v10, 0x6

    :goto_47
    mul-int/lit16 v3, v10, 0x100

    invoke-virtual {v2, v9}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v9

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v12

    sget-object v0, Lcom/facebook/ads/redexgen/X/A8;->A04:[I

    aget v14, v0, v9

    add-int/2addr v14, v12

    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-virtual {v2, v5}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    :cond_64
    if-nez v9, :cond_72

    invoke-virtual {v2, v8}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-virtual {v2, v5}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    :cond_72
    if-ne v13, v7, :cond_7d

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-virtual {v2, v6}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    :cond_7d
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v0

    const/4 v11, 0x4

    if-eqz v0, :cond_f4

    const/4 v5, 0x2

    if-le v9, v5, :cond_8a

    invoke-virtual {v2, v5}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    :cond_8a
    and-int/lit8 v0, v9, 0x1

    if-eqz v0, :cond_2c2

    if-le v9, v5, :cond_2c2

    const/4 v5, 0x6

    invoke-virtual {v2, v5}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    :goto_94
    and-int/lit8 v0, v9, 0x4

    if-eqz v0, :cond_9b

    invoke-virtual {v2, v5}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    :cond_9b
    if-eqz v12, :cond_a6

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v0

    if-eqz v0, :cond_a6

    invoke-virtual {v2, v8}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    :cond_a6
    if-nez v13, :cond_f4

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v0

    if-eqz v0, :cond_2bf

    const/4 v5, 0x6

    invoke-virtual {v2, v5}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    :goto_b2
    if-nez v9, :cond_bd

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v0

    if-eqz v0, :cond_bd

    invoke-virtual {v2, v5}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    :cond_bd
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v0

    if-eqz v0, :cond_c6

    invoke-virtual {v2, v5}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    :cond_c6
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v5

    if-ne v5, v7, :cond_1bb

    invoke-virtual {v2, v8}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    :cond_d0
    :goto_d0
    const/4 v0, 0x2

    if-ge v9, v0, :cond_e9

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v0

    const/16 v5, 0xe

    if-eqz v0, :cond_de

    invoke-virtual {v2, v5}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    :cond_de
    if-nez v9, :cond_e9

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v0

    if-eqz v0, :cond_e9

    invoke-virtual {v2, v5}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    :cond_e9
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v0

    if-eqz v0, :cond_f4

    if-nez v1, :cond_1ac

    invoke-virtual {v2, v8}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    :cond_f4
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v0

    if-eqz v0, :cond_1aa

    invoke-virtual {v2, v8}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    const/4 v5, 0x2

    if-ne v9, v5, :cond_104

    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    :cond_104
    const/4 v0, 0x6

    if-lt v9, v0, :cond_10a

    invoke-virtual {v2, v5}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    :cond_10a
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v7

    sget-object v5, Lcom/facebook/ads/redexgen/X/A8;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v5, v5, v0

    const/16 v0, 0x1f

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v0, 0x51

    if-eq v5, v0, :cond_373

    sget-object v6, Lcom/facebook/ads/redexgen/X/A8;->A01:[Ljava/lang/String;

    const-string v5, "dl0wWt6J8L8AikPCmNhR7kaZE8RAZ0S5"

    const/4 v0, 0x6

    aput-object v5, v6, v0

    if-eqz v7, :cond_1a7

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    :goto_12b
    if-nez v9, :cond_136

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v0

    if-eqz v0, :cond_136

    invoke-virtual {v2, v5}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    :cond_136
    const/4 v5, 0x3

    if-ge v4, v5, :cond_13c

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hg;->A06()V

    :cond_13c
    :goto_13c
    if-nez v13, :cond_143

    if-eq v1, v5, :cond_143

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hg;->A06()V

    :cond_143
    const/4 v0, 0x2

    if-ne v13, v0, :cond_1a5

    if-eq v1, v5, :cond_14e

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v0

    if-eqz v0, :cond_1a3

    :cond_14e
    const/4 v5, 0x6

    invoke-virtual {v2, v5}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    :goto_152
    const/16 v4, 0x9

    const/16 v1, 0xa

    const/16 v0, 0x30

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/A8;->A0A(III)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v0

    if-eqz v0, :cond_199

    invoke-virtual {v2, v5}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v6

    const/4 v5, 0x1

    sget-object v4, Lcom/facebook/ads/redexgen/X/A8;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v4, v0

    const/4 v0, 0x4

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_36d

    sget-object v4, Lcom/facebook/ads/redexgen/X/A8;->A01:[Ljava/lang/String;

    const-string v1, "3ApKKtyzWMiiSaP5bzYqsGtpnyYQD1rl"

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const-string v1, "8bIrpLiP8D9Hp4mjJ2yCsEloJ1XyNCEo"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    if-ne v6, v5, :cond_199

    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v0

    if-ne v0, v5, :cond_199

    const/16 v2, 0x13

    const/16 v1, 0xe

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/A8;->A0A(III)Ljava/lang/String;

    move-result-object v12

    :cond_199
    :goto_199
    new-instance v11, Lcom/facebook/ads/redexgen/X/A7;

    const/16 p0, 0x0

    move/from16 v17, v3

    invoke-direct/range {v11 .. v18}, Lcom/facebook/ads/redexgen/X/A7;-><init>(Ljava/lang/String;IIIIILcom/facebook/ads/redexgen/X/A5;)V

    return-object v11

    :cond_1a3
    const/4 v5, 0x6

    goto :goto_152

    :cond_1a5
    const/4 v5, 0x6

    goto :goto_152

    :cond_1a7
    const/16 v5, 0x8

    goto :goto_12b

    :cond_1aa
    const/4 v5, 0x3

    goto :goto_13c

    :cond_1ac
    const/4 v5, 0x0

    :goto_1ad
    if-ge v5, v10, :cond_f4

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v0

    if-eqz v0, :cond_1b8

    invoke-virtual {v2, v8}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    :cond_1b8
    add-int/lit8 v5, v5, 0x1

    goto :goto_1ad

    :cond_1bb
    if-ne v5, v0, :cond_1c4

    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    goto/16 :goto_d0

    :cond_1c4
    const/4 v0, 0x3

    if-ne v5, v0, :cond_d0

    invoke-virtual {v2, v8}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v12

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v0

    if-eqz v0, :cond_246

    invoke-virtual {v2, v8}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v0

    if-eqz v0, :cond_1dd

    invoke-virtual {v2, v11}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    :cond_1dd
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v0

    if-eqz v0, :cond_1e6

    invoke-virtual {v2, v11}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    :cond_1e6
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v7

    sget-object v6, Lcom/facebook/ads/redexgen/X/A8;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v5, v6, v0

    const/4 v0, 0x0

    aget-object v6, v6, v0

    const/16 v0, 0x14

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v5, v0, :cond_2b4

    sget-object v6, Lcom/facebook/ads/redexgen/X/A8;->A01:[Ljava/lang/String;

    const-string v5, "kC"

    const/4 v0, 0x2

    aput-object v5, v6, v0

    if-eqz v7, :cond_20a

    :goto_207
    invoke-virtual {v2, v11}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    :cond_20a
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v0

    if-eqz v0, :cond_213

    invoke-virtual {v2, v11}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    :cond_213
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v0

    if-eqz v0, :cond_21c

    invoke-virtual {v2, v11}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    :cond_21c
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v0

    if-eqz v0, :cond_225

    invoke-virtual {v2, v11}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    :cond_225
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v0

    if-eqz v0, :cond_22e

    invoke-virtual {v2, v11}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    :cond_22e
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v0

    if-eqz v0, :cond_246

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v0

    if-eqz v0, :cond_23d

    invoke-virtual {v2, v11}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    :cond_23d
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v0

    if-eqz v0, :cond_246

    invoke-virtual {v2, v11}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    :cond_246
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v0

    if-eqz v0, :cond_29d

    invoke-virtual {v2, v8}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    sget-object v6, Lcom/facebook/ads/redexgen/X/A8;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v5, v6, v0

    const/4 v0, 0x4

    aget-object v0, v6, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v5, v0, :cond_2ad

    sget-object v6, Lcom/facebook/ads/redexgen/X/A8;->A01:[Ljava/lang/String;

    const-string v5, "LWpchFhzl4zZLaolhYStszHUjMzJpa2W"

    const/4 v0, 0x1

    aput-object v5, v6, v0

    const-string v5, "6uYdOttcy9rqBmgvIK07scrDJCGtgIZT"

    const/4 v0, 0x0

    aput-object v5, v6, v0

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v0

    if-eqz v0, :cond_29d

    :goto_273
    const/4 v0, 0x7

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v0

    if-eqz v0, :cond_29d

    const/16 v6, 0x8

    sget-object v5, Lcom/facebook/ads/redexgen/X/A8;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v5, v5, v0

    const/16 v0, 0x1f

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v0, 0x51

    if-eq v5, v0, :cond_2a9

    sget-object v7, Lcom/facebook/ads/redexgen/X/A8;->A01:[Ljava/lang/String;

    const-string v5, "efqTs5tkRdGBLzL99Y2zBy0"

    const/4 v0, 0x3

    aput-object v5, v7, v0

    const-string v5, ""

    const/4 v0, 0x4

    aput-object v5, v7, v0

    invoke-virtual {v2, v6}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    :cond_29d
    :goto_29d
    add-int/lit8 v0, v12, 0x2

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hg;->A05()V

    goto/16 :goto_d0

    :cond_2a9
    invoke-virtual {v2, v6}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    goto :goto_29d

    :cond_2ad
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v0

    if-eqz v0, :cond_29d

    goto :goto_273

    :cond_2b4
    sget-object v6, Lcom/facebook/ads/redexgen/X/A8;->A01:[Ljava/lang/String;

    const-string v5, "vcp8LN0Hh9uJKmo"

    const/4 v0, 0x2

    aput-object v5, v6, v0

    if-eqz v7, :cond_20a

    goto/16 :goto_207

    :cond_2bf
    const/4 v5, 0x6

    goto/16 :goto_b2

    :cond_2c2
    const/4 v5, 0x6

    goto/16 :goto_94

    :cond_2c5
    invoke-virtual {v2, v10}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v1

    sget-object v10, Lcom/facebook/ads/redexgen/X/A8;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v3, v10, v0

    const/4 v0, 0x4

    aget-object v0, v10, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v3, v0, :cond_2f1

    sget-object v10, Lcom/facebook/ads/redexgen/X/A8;->A01:[Ljava/lang/String;

    const-string v3, "8hYjpgfNHnAwS9QM7NBT3rLslQs0BeQi"

    const/4 v0, 0x7

    aput-object v3, v10, v0

    const-string v3, "JdPcmmaJKVXmYa4gXJhhMISDBvQK9V8e"

    const/4 v0, 0x5

    aput-object v3, v10, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/A8;->A03:[I

    aget v10, v0, v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/A8;->A05:[I

    aget v15, v0, v4

    goto/16 :goto_47

    :cond_2f1
    sget-object v0, Lcom/facebook/ads/redexgen/X/A8;->A03:[I

    aget v10, v0, v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/A8;->A05:[I

    aget v15, v0, v4

    goto/16 :goto_47

    :pswitch_2fb
    const/4 v13, 0x0

    goto/16 :goto_2b

    :pswitch_2fe
    const/4 v13, 0x1

    goto/16 :goto_2b

    :pswitch_301
    const/4 v13, 0x2

    goto/16 :goto_2b

    :cond_304
    const/4 v3, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x1a

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/A8;->A0A(III)Ljava/lang/String;

    move-result-object v12

    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v3

    const/4 v0, 0x6

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/A8;->A01(II)I

    move-result v16

    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v5

    and-int/lit8 v0, v5, 0x1

    if-eqz v0, :cond_368

    const/4 v0, 0x1

    if-eq v5, v0, :cond_368

    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    :goto_335
    and-int/lit8 v0, v5, 0x4

    if-eqz v0, :cond_33c

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    :cond_33c
    if-ne v5, v1, :cond_341

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    :cond_341
    sget-object v0, Lcom/facebook/ads/redexgen/X/A8;->A05:[I

    aget v15, v0, v3

    const/16 v3, 0x600

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v6

    sget-object v4, Lcom/facebook/ads/redexgen/X/A8;->A04:[I

    sget-object v1, Lcom/facebook/ads/redexgen/X/A8;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x51

    if-eq v1, v0, :cond_373

    sget-object v2, Lcom/facebook/ads/redexgen/X/A8;->A01:[Ljava/lang/String;

    const-string v1, "4KahRN"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    aget v14, v4, v5

    add-int/2addr v14, v6

    goto/16 :goto_199

    :cond_368
    const/4 v1, 0x2

    goto :goto_335

    :cond_36a
    const/4 v0, 0x0

    goto/16 :goto_16

    :cond_36d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_373
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :pswitch_data_37a
    .packed-switch 0x0
        :pswitch_2fb
        :pswitch_2fe
        :pswitch_301
    .end packed-switch
.end method

.method public static A0A(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/A8;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x40

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0B()V
    .registers 1

    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/A8;->A00:[B

    return-void

    :array_a
    .array-data 1
        -0x45t
        -0x31t
        -0x42t
        -0x3dt
        -0x37t
        -0x77t
        -0x45t
        -0x43t
        -0x73t
        -0x2ft
        -0x1bt
        -0x2ct
        -0x27t
        -0x21t
        -0x61t
        -0x2bt
        -0x2ft
        -0x2dt
        -0x5dt
        0x1dt
        0x31t
        0x20t
        0x25t
        0x2bt
        -0x15t
        0x21t
        0x1dt
        0x1ft
        -0x11t
        -0x17t
        0x26t
        0x2bt
        0x1ft
    .end array-data
.end method
