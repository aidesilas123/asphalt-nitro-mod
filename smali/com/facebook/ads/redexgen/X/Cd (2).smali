###### Class com.facebook.ads.redexgen.X.C0940Cd (com.facebook.ads.redexgen.X.Cd)
.class public final Lcom/facebook/ads/redexgen/X/Cd;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Cb;,
        Lcom/facebook/ads/redexgen/X/Cc;,
        Lcom/facebook/ads/redexgen/X/Ca;,
        Lcom/facebook/ads/redexgen/X/CZ;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "7VlHbmI4sHauhoCWaFlUZM9mZRV70mzp"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "LqGkn09UNvdqUAgssIpSCyoRJ1iI6QKK"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ZmFU8Mfu7g0bs6JKYNiQ5l9NQyV6"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "IM1BduvbFOrOx4pkelis2wS2axXVXfJJ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "7P5Q"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "68Q2Pgf"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "FTYWHoYlDOl1N68V4e618z2hAoSaWMYg"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "QxGNaBvq4MkZwy6AnQRq9NbnhINTK41p"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Cd;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Cd;->A06()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(I)I
    .registers 2

    const/4 v0, 0x0

    :goto_1
    if-lez p0, :cond_8

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_8
    return v0
.end method

.method public static A01(JJ)J
    .registers 10

    long-to-double v4, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    long-to-double v0, p2

    div-double/2addr v2, v0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v0, v2

    return-wide v0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/CX;)Lcom/facebook/ads/redexgen/X/CZ;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9d;
        }
    .end annotation

    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/CX;->A02(I)I

    move-result v1

    const v0, 0x564342

    if-ne v1, v0, :cond_117

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/CX;->A02(I)I

    move-result v9

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/CX;->A02(I)I

    move-result v10

    new-array v11, v10, [J

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/CX;->A04()Z

    move-result v13

    const/4 v5, 0x5

    const/4 v2, 0x1

    if-nez v13, :cond_43

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/CX;->A04()Z

    move-result v8

    const/4 v4, 0x0

    :goto_24
    array-length v0, v11

    if-ge v4, v0, :cond_a0

    if-eqz v8, :cond_3a

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/CX;->A04()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/CX;->A02(I)I

    move-result v0

    add-int/2addr v0, v2

    int-to-long v0, v0

    aput-wide v0, v11, v4

    :goto_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_3a
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/CX;->A02(I)I

    move-result v0

    add-int/2addr v0, v2

    int-to-long v0, v0

    aput-wide v0, v11, v4

    goto :goto_37

    :cond_43
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/CX;->A02(I)I

    move-result v6

    add-int/2addr v6, v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cd;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_75

    goto :goto_65

    :cond_56
    const-wide/16 v6, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cd;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_6b

    :goto_65
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6b
    sget-object v3, Lcom/facebook/ads/redexgen/X/Cd;->A01:[Ljava/lang/String;

    const-string v1, "ecSAxFMYmzVL"

    const/4 v0, 0x4

    aput-object v1, v3, v0

    aput-wide v6, v11, v4

    goto :goto_37

    :cond_75
    sget-object v3, Lcom/facebook/ads/redexgen/X/Cd;->A01:[Ljava/lang/String;

    const-string v1, "1cSOg3h3ybf5GdNSDQ1j15ANMpdZWzzr"

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const-string v1, "jhd3qNXlvMIll0ru3ldJW8SSybUsx7s0"

    const/4 v0, 0x7

    aput-object v1, v3, v0

    const/4 v5, 0x0

    :goto_82
    array-length v0, v11

    if-ge v5, v0, :cond_a0

    sub-int v0, v10, v5

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Cd;->A00(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/CX;->A02(I)I

    move-result v4

    const/4 v3, 0x0

    :goto_90
    if-ge v3, v4, :cond_9d

    array-length v0, v11

    if-ge v5, v0, :cond_9d

    int-to-long v0, v6

    aput-wide v0, v11, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_90

    :cond_9d
    add-int/lit8 v6, v6, 0x1

    goto :goto_82

    :cond_a0
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/CX;->A02(I)I

    move-result v12

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cd;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_f2

    sget-object v3, Lcom/facebook/ads/redexgen/X/Cd;->A01:[Ljava/lang/String;

    const-string v1, "KIsHkHKvV7xwjCpzTZWlwmB6O9ozk4U5"

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const-string v1, "gTkrsBAD0STtBzLAHVDmD3NWQB3XU8zx"

    const/4 v0, 0x7

    aput-object v1, v3, v0

    const/4 v0, 0x2

    if-gt v12, v0, :cond_f6

    :goto_c1
    if-eq v12, v2, :cond_c5

    if-ne v12, v0, :cond_e5

    :cond_c5
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/CX;->A03(I)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/CX;->A03(I)V

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/CX;->A02(I)I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/CX;->A03(I)V

    if-ne v12, v2, :cond_ee

    if-eqz v9, :cond_eb

    int-to-long v2, v10

    int-to-long v0, v9

    invoke-static {v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/Cd;->A01(JJ)J

    move-result-wide v0

    :goto_df
    int-to-long v2, v4

    mul-long/2addr v2, v0

    long-to-int v0, v2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/CX;->A03(I)V

    :cond_e5
    new-instance v8, Lcom/facebook/ads/redexgen/X/CZ;

    invoke-direct/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/CZ;-><init>(II[JIZ)V

    return-object v8

    :cond_eb
    const-wide/16 v0, 0x0

    goto :goto_df

    :cond_ee
    int-to-long v0, v10

    int-to-long v2, v9

    mul-long/2addr v0, v2

    goto :goto_df

    :cond_f2
    const/4 v0, 0x2

    if-gt v12, v0, :cond_f6

    goto :goto_c1

    :cond_f6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xe4

    const/16 v1, 0x2a

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9d;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x26

    const/16 v1, 0x37

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/CX;->A01()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9d;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/Hh;)Lcom/facebook/ads/redexgen/X/Ca;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9d;
        }
    .end annotation

    const/4 v1, 0x3

    const/4 v0, 0x0

    invoke-static {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/Cd;->A0A(ILcom/facebook/ads/redexgen/X/Hh;Z)Z

    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0K()J

    move-result-wide v1

    long-to-int v0, v1

    add-int/lit8 v1, v3, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0S(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0K()J

    move-result-wide v2

    long-to-int v0, v2

    new-array v6, v0, [Ljava/lang/String;

    add-int/lit8 v1, v1, 0x4

    const/4 v8, 0x0

    :goto_20
    int-to-long v4, v8

    sget-object v9, Lcom/facebook/ads/redexgen/X/Cd;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v9, v9, v0

    const/16 v0, 0x12

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v0, 0x69

    if-eq v9, v0, :cond_36

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_36
    sget-object v10, Lcom/facebook/ads/redexgen/X/Cd;->A01:[Ljava/lang/String;

    const-string v9, "ziwCMa4"

    const/4 v0, 0x5

    aput-object v9, v10, v0

    cmp-long v0, v4, v2

    if-gez v0, :cond_58

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0K()J

    move-result-wide v4

    long-to-int v0, v4

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0S(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v8

    aget-object v0, v6, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    add-int/lit8 v8, v8, 0x1

    goto :goto_20

    :cond_58
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_68

    add-int/lit8 v1, v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ca;

    invoke-direct {v0, v7, v6, v1}, Lcom/facebook/ads/redexgen/X/Ca;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    return-object v0

    :cond_68
    const/16 v2, 0xc6

    const/16 v1, 0x1e

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cd;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9d;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/Hh;)Lcom/facebook/ads/redexgen/X/Cc;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9d;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v0, 0x0

    move-object/from16 v6, p0

    invoke-static {v5, v6, v0}, Lcom/facebook/ads/redexgen/X/Cd;->A0A(ILcom/facebook/ads/redexgen/X/Hh;Z)Z

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hh;->A0K()J

    move-result-wide v7

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v9

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hh;->A0K()J

    move-result-wide v10

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hh;->A0A()I

    move-result v12

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hh;->A0A()I

    move-result v13

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hh;->A0A()I

    move-result v14

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v4

    and-int/lit8 v0, v4, 0xf

    int-to-double v2, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v15, v2

    and-int/lit16 v2, v4, 0xf0

    shr-int/lit8 v2, v2, 0x4

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v2, v0

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v0

    and-int/2addr v0, v5

    if-lez v0, :cond_52

    const/16 v17, 0x1

    :goto_40
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hh;->A07()I

    move-result v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    new-instance v6, Lcom/facebook/ads/redexgen/X/Cc;

    move/from16 v16, v2

    invoke-direct/range {v6 .. v18}, Lcom/facebook/ads/redexgen/X/Cc;-><init>(JIJIIIIIZ[B)V

    return-object v6

    :cond_52
    const/16 v17, 0x0

    goto :goto_40
.end method

.method public static A05(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cd;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A06()V
    .registers 3

    const/16 v0, 0x1e2

    new-array v0, v0, [B

    fill-array-data v0, :array_2a

    sput-object v0, Lcom/facebook/ads/redexgen/X/Cd;->A00:[B

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cd;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_1c

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1c
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cd;->A01:[Ljava/lang/String;

    const-string v1, "mgdhOJqoKNbrHZTmAlzuBC741swozh2A"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "We2DdWBOrlseFOiGq0myNglhwb5nF2sN"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-void

    nop

    :array_2a
    .array-data 1
        0x74t
        0x4dt
        0x50t
        0x40t
        0x4bt
        0x51t
        0x77t
        0x56t
        0x4bt
        0x4et
        0x1ct
        0x1t
        0x9t
        0x1ct
        0x1at
        0xdt
        0x1ct
        0x1dt
        0x59t
        0x1at
        0x11t
        0x18t
        0xbt
        0x18t
        0x1at
        0xdt
        0x1ct
        0xbt
        0xat
        0x59t
        0x5et
        0xft
        0x16t
        0xbt
        0x1bt
        0x10t
        0xat
        0x5et
        0x57t
        0x4at
        0x42t
        0x57t
        0x51t
        0x46t
        0x57t
        0x56t
        0x12t
        0x51t
        0x5dt
        0x56t
        0x57t
        0x12t
        0x50t
        0x5dt
        0x5dt
        0x59t
        0x12t
        0x46t
        0x5dt
        0x12t
        0x41t
        0x46t
        0x53t
        0x40t
        0x46t
        0x12t
        0x45t
        0x5bt
        0x46t
        0x5at
        0x12t
        0x69t
        0x2t
        0x4at
        0x7t
        0x4t
        0x1et
        0x12t
        0x2t
        0x4at
        0x6t
        0x1t
        0x1et
        0x12t
        0x2t
        0x4at
        0x6t
        0x0t
        0x6ft
        0x12t
        0x53t
        0x46t
        0x12t
        0x4et
        0x53t
        0x5bt
        0x4et
        0x48t
        0x5ft
        0x4et
        0x4ft
        0xbt
        0x43t
        0x4et
        0x4at
        0x4ft
        0x4et
        0x59t
        0xbt
        0x5ft
        0x52t
        0x5bt
        0x4et
        0xbt
        0x46t
        0x4ct
        0x4ft
        0x4ft
        0x52t
        0x0t
        0x54t
        0x59t
        0x50t
        0x45t
        0x0t
        0x47t
        0x52t
        0x45t
        0x41t
        0x54t
        0x45t
        0x52t
        0x0t
        0x54t
        0x48t
        0x41t
        0x4et
        0x0t
        0x11t
        0x0t
        0x4et
        0x4ft
        0x54t
        0x0t
        0x44t
        0x45t
        0x43t
        0x4ft
        0x44t
        0x41t
        0x42t
        0x4ct
        0x45t
        0x1at
        0x0t
        0x31t
        0x25t
        0x36t
        0x3at
        0x3et
        0x39t
        0x30t
        0x77t
        0x35t
        0x3et
        0x23t
        0x77t
        0x36t
        0x31t
        0x23t
        0x32t
        0x25t
        0x77t
        0x3at
        0x38t
        0x33t
        0x32t
        0x24t
        0x77t
        0x39t
        0x38t
        0x23t
        0x77t
        0x24t
        0x32t
        0x23t
        0x77t
        0x36t
        0x24t
        0x77t
        0x32t
        0x2ft
        0x27t
        0x32t
        0x34t
        0x23t
        0x32t
        0x33t
        0x30t
        0x24t
        0x37t
        0x3bt
        0x3ft
        0x38t
        0x31t
        0x76t
        0x34t
        0x3ft
        0x22t
        0x76t
        0x33t
        0x2et
        0x26t
        0x33t
        0x35t
        0x22t
        0x33t
        0x32t
        0x76t
        0x22t
        0x39t
        0x76t
        0x34t
        0x33t
        0x76t
        0x25t
        0x33t
        0x22t
        0x10t
        0x13t
        0x13t
        0x17t
        0x9t
        0xct
        0x5ct
        0x8t
        0x5t
        0xct
        0x19t
        0x5ct
        0x1bt
        0xet
        0x19t
        0x1dt
        0x8t
        0x19t
        0xet
        0x5ct
        0x8t
        0x14t
        0x1dt
        0x12t
        0x5ct
        0x4et
        0x5ct
        0x12t
        0x13t
        0x8t
        0x5ct
        0x18t
        0x19t
        0x1ft
        0x13t
        0x18t
        0x1dt
        0x1et
        0x10t
        0x19t
        0x46t
        0x5ct
        0x68t
        0x64t
        0x75t
        0x75t
        0x6ct
        0x6bt
        0x62t
        0x25t
        0x71t
        0x7ct
        0x75t
        0x60t
        0x25t
        0x6at
        0x71t
        0x6dt
        0x60t
        0x77t
        0x25t
        0x71t
        0x6dt
        0x64t
        0x6bt
        0x25t
        0x35t
        0x25t
        0x6bt
        0x6at
        0x71t
        0x25t
        0x76t
        0x70t
        0x75t
        0x75t
        0x6at
        0x77t
        0x71t
        0x60t
        0x61t
        0x3ft
        0x25t
        0x5dt
        0x41t
        0x4ct
        0x4et
        0x48t
        0x45t
        0x42t
        0x41t
        0x49t
        0x48t
        0x5ft
        0xdt
        0x42t
        0x4bt
        0xdt
        0x59t
        0x44t
        0x40t
        0x48t
        0xdt
        0x49t
        0x42t
        0x40t
        0x4ct
        0x44t
        0x43t
        0xdt
        0x59t
        0x5ft
        0x4ct
        0x43t
        0x5et
        0x4bt
        0x42t
        0x5ft
        0x40t
        0x5et
        0xdt
        0x43t
        0x42t
        0x59t
        0xdt
        0x57t
        0x48t
        0x5ft
        0x42t
        0x48t
        0x49t
        0xdt
        0x42t
        0x58t
        0x59t
        0x72t
        0x65t
        0x73t
        0x69t
        0x64t
        0x75t
        0x65t
        0x54t
        0x79t
        0x70t
        0x65t
        0x20t
        0x67t
        0x72t
        0x65t
        0x61t
        0x74t
        0x65t
        0x72t
        0x20t
        0x74t
        0x68t
        0x61t
        0x6et
        0x20t
        0x32t
        0x20t
        0x69t
        0x73t
        0x20t
        0x6et
        0x6ft
        0x74t
        0x20t
        0x64t
        0x65t
        0x63t
        0x6ft
        0x64t
        0x61t
        0x62t
        0x6ct
        0x65t
        0x6bt
        0x70t
        0x3ft
        0x6dt
        0x7at
        0x6ct
        0x7at
        0x6dt
        0x69t
        0x7at
        0x7bt
        0x3ft
        0x7dt
        0x76t
        0x6bt
        0x6ct
        0x3ft
        0x72t
        0x6at
        0x6ct
        0x6bt
        0x3ft
        0x7dt
        0x7at
        0x3ft
        0x65t
        0x7at
        0x6dt
        0x70t
        0x3ft
        0x7et
        0x79t
        0x6bt
        0x7at
        0x6dt
        0x3ft
        0x72t
        0x7et
        0x6ft
        0x6ft
        0x76t
        0x71t
        0x78t
        0x3ft
        0x7ct
        0x70t
        0x6at
        0x6ft
        0x73t
        0x76t
        0x71t
        0x78t
        0x3ft
        0x6ct
        0x6bt
        0x7at
        0x6ft
        0x6ct
        0x52t
        0x49t
        0x49t
        0x6t
        0x55t
        0x4et
        0x49t
        0x54t
        0x52t
        0x6t
        0x4et
        0x43t
        0x47t
        0x42t
        0x43t
        0x54t
        0x1ct
        0x6t
    .end array-data
.end method

.method public static A07(ILcom/facebook/ads/redexgen/X/CX;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9d;
        }
    .end annotation

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/CX;->A02(I)I

    move-result v8

    const/4 v7, 0x1

    add-int/2addr v8, v7

    const/4 v6, 0x0

    :goto_8
    if-ge v6, v8, :cond_c6

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/CX;->A02(I)I

    move-result v4

    packed-switch v4, :pswitch_data_c8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x10e

    const/16 v1, 0x29

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :pswitch_3c
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/CX;->A04()Z

    move-result v0

    const/4 v9, 0x4

    if-eqz v0, :cond_6d

    invoke-virtual {p1, v9}, Lcom/facebook/ads/redexgen/X/CX;->A02(I)I

    move-result v5

    add-int/2addr v5, v7

    :goto_48
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/CX;->A04()Z

    move-result v0

    const/16 v4, 0x8

    if-eqz v0, :cond_6f

    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/CX;->A02(I)I

    move-result v2

    add-int/2addr v2, v7

    const/4 v1, 0x0

    :goto_56
    if-ge v1, v2, :cond_6f

    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Cd;->A00(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/CX;->A03(I)V

    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Cd;->A00(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/CX;->A03(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    :cond_6d
    const/4 v5, 0x1

    goto :goto_48

    :cond_6f
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/CX;->A02(I)I

    move-result v0

    if-nez v0, :cond_b6

    if-le v5, v7, :cond_a1

    const/4 v3, 0x0

    :goto_79
    if-ge v3, p0, :cond_a1

    invoke-virtual {p1, v9}, Lcom/facebook/ads/redexgen/X/CX;->A03(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cd;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_b0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cd;->A01:[Ljava/lang/String;

    const-string v1, "Wlyx46da0LhUJCMQF7d9pJYsMbXYpIdM"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "HglI0wxUFDuveiNJ2qiTiY5BYhneBiG1"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_79

    :cond_a1
    const/4 v0, 0x0

    :goto_a2
    if-ge v0, v5, :cond_39

    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/CX;->A03(I)V

    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/CX;->A03(I)V

    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/CX;->A03(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a2

    :cond_b0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_b6
    const/16 v2, 0x196

    const/16 v1, 0x3a

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cd;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9d;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c6
    return-void

    nop

    :pswitch_data_c8
    .packed-switch 0x0
        :pswitch_3c
    .end packed-switch
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/CX;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9d;
        }
    .end annotation

    const/4 v10, 0x6

    invoke-virtual {p0, v10}, Lcom/facebook/ads/redexgen/X/CX;->A02(I)I

    move-result v9

    const/4 v12, 0x1

    add-int/2addr v9, v12

    const/4 v8, 0x0

    :goto_8
    if-ge v8, v9, :cond_b6

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/CX;->A02(I)I

    move-result v5

    const/4 v11, 0x4

    const/16 v4, 0x8

    packed-switch v5, :pswitch_data_b8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x72

    const/16 v1, 0x29

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9d;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9d;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_37
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/CX;->A03(I)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/CX;->A03(I)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/CX;->A03(I)V

    invoke-virtual {p0, v10}, Lcom/facebook/ads/redexgen/X/CX;->A03(I)V

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/CX;->A03(I)V

    invoke-virtual {p0, v11}, Lcom/facebook/ads/redexgen/X/CX;->A02(I)I

    move-result v1

    add-int/2addr v1, v12

    const/4 v0, 0x0

    :goto_4c
    if-ge v0, v1, :cond_b2

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/CX;->A03(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    :pswitch_54
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/CX;->A02(I)I

    move-result v7

    const/4 v2, -0x1

    new-array v6, v7, [I

    const/4 v1, 0x0

    :goto_5d
    if-ge v1, v7, :cond_6e

    invoke-virtual {p0, v11}, Lcom/facebook/ads/redexgen/X/CX;->A02(I)I

    move-result v0

    aput v0, v6, v1

    aget v0, v6, v1

    if-le v0, v2, :cond_6b

    aget v2, v6, v1

    :cond_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    :cond_6e
    add-int/lit8 v0, v2, 0x1

    new-array v5, v0, [I

    const/4 v3, 0x0

    :goto_73
    array-length v0, v5

    const/4 v1, 0x2

    if-ge v3, v0, :cond_96

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/CX;->A02(I)I

    move-result v0

    add-int/2addr v0, v12

    aput v0, v5, v3

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/CX;->A02(I)I

    move-result v2

    if-lez v2, :cond_88

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/CX;->A03(I)V

    :cond_88
    const/4 v1, 0x0

    :goto_89
    shl-int v0, v12, v2

    if-ge v1, v0, :cond_93

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/CX;->A03(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_89

    :cond_93
    add-int/lit8 v3, v3, 0x1

    goto :goto_73

    :cond_96
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/CX;->A03(I)V

    invoke-virtual {p0, v11}, Lcom/facebook/ads/redexgen/X/CX;->A02(I)I

    move-result v4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_a0
    if-ge v2, v7, :cond_b2

    aget v0, v6, v2

    aget v0, v5, v0

    add-int/2addr v3, v0

    :goto_a7
    if-ge v1, v3, :cond_af

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/CX;->A03(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a7

    :cond_af
    add-int/lit8 v2, v2, 0x1

    goto :goto_a0

    :cond_b2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_8

    :cond_b6
    return-void

    nop

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_37
        :pswitch_54
    .end packed-switch
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/CX;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9d;
        }
    .end annotation

    const/4 v9, 0x6

    invoke-virtual {p0, v9}, Lcom/facebook/ads/redexgen/X/CX;->A02(I)I

    move-result v8

    const/4 v10, 0x1

    add-int/2addr v8, v10

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v8, :cond_6e

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/CX;->A02(I)I

    move-result v1

    const/4 v0, 0x2

    if-gt v1, v0, :cond_5f

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/CX;->A03(I)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/CX;->A03(I)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/CX;->A03(I)V

    invoke-virtual {p0, v9}, Lcom/facebook/ads/redexgen/X/CX;->A02(I)I

    move-result v6

    add-int/2addr v6, v10

    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/CX;->A03(I)V

    new-array v4, v6, [I

    const/4 v3, 0x0

    :goto_2b
    if-ge v3, v6, :cond_46

    const/4 v2, 0x0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/CX;->A02(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/CX;->A04()Z

    move-result v0

    if-eqz v0, :cond_3e

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/CX;->A02(I)I

    move-result v2

    :cond_3e
    mul-int/lit8 v0, v2, 0x8

    add-int/2addr v0, v1

    aput v0, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :cond_46
    const/4 v3, 0x0

    :goto_47
    if-ge v3, v6, :cond_5c

    const/4 v2, 0x0

    :goto_4a
    if-ge v2, v5, :cond_59

    aget v1, v4, v3

    shl-int v0, v10, v2

    and-int/2addr v1, v0

    if-eqz v1, :cond_56

    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/CX;->A03(I)V

    :cond_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    :cond_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    :cond_5c
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_5f
    const/16 v2, 0x16b

    const/16 v1, 0x2b

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cd;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9d;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6e
    return-void
.end method

.method public static A0A(ILcom/facebook/ads/redexgen/X/Hh;Z)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9d;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v1

    const/4 v0, 0x7

    const/4 v2, 0x0

    if-ge v1, v0, :cond_30

    if-eqz p2, :cond_b

    return v2

    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1d0

    const/16 v1, 0x12

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9d;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v0

    if-eq v0, p0, :cond_5e

    if-eqz p2, :cond_39

    return v2

    :cond_39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5d

    const/16 v1, 0x15

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9d;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5e
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v1

    const/16 v0, 0x76

    if-ne v1, v0, :cond_8e

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v1

    const/16 v0, 0x6f

    if-ne v1, v0, :cond_8e

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v1

    const/16 v0, 0x72

    if-ne v1, v0, :cond_8e

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v1

    const/16 v0, 0x62

    if-ne v1, v0, :cond_8e

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v1

    const/16 v0, 0x69

    if-ne v1, v0, :cond_8e

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v1

    const/16 v0, 0x73

    if-eq v1, v0, :cond_a1

    :cond_8e
    if-eqz p2, :cond_91

    return v2

    :cond_91
    const/16 v2, 0xa

    const/16 v1, 0x1c

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cd;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9d;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a1
    const/4 v0, 0x1

    return v0
.end method

.method public static A0B(Lcom/facebook/ads/redexgen/X/CX;)[Lcom/facebook/ads/redexgen/X/Cb;
    .registers 9

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/CX;->A02(I)I

    move-result v0

    add-int/lit8 v7, v0, 0x1

    new-array v6, v7, [Lcom/facebook/ads/redexgen/X/Cb;

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v7, :cond_2a

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/CX;->A04()Z

    move-result v4

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/CX;->A02(I)I

    move-result v3

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/CX;->A02(I)I

    move-result v2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/CX;->A02(I)I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Cb;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Cb;-><init>(ZIII)V

    aput-object v0, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_2a
    return-object v6
.end method

.method public static A0C(Lcom/facebook/ads/redexgen/X/Hh;I)[Lcom/facebook/ads/redexgen/X/Cb;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9d;
        }
    .end annotation

    const/4 v1, 0x5

    const/4 v0, 0x0

    invoke-static {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/Cd;->A0A(ILcom/facebook/ads/redexgen/X/Hh;Z)Z

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    new-instance v3, Lcom/facebook/ads/redexgen/X/CX;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/CX;-><init>([B)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/CX;->A03(I)V

    const/4 v0, 0x0

    :goto_1c
    if-ge v0, v1, :cond_24

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Cd;->A02(Lcom/facebook/ads/redexgen/X/CX;)Lcom/facebook/ads/redexgen/X/CZ;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_24
    const/4 v0, 0x6

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/CX;->A02(I)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    const/4 v1, 0x0

    :goto_2c
    if-ge v1, v2, :cond_49

    const/16 v0, 0x10

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/CX;->A02(I)I

    move-result v0

    if-nez v0, :cond_39

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_39
    const/16 v2, 0x137

    const/16 v1, 0x34

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cd;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9d;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Cd;->A08(Lcom/facebook/ads/redexgen/X/CX;)V

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Cd;->A09(Lcom/facebook/ads/redexgen/X/CX;)V

    invoke-static {p1, v3}, Lcom/facebook/ads/redexgen/X/Cd;->A07(ILcom/facebook/ads/redexgen/X/CX;)V

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Cd;->A0B(Lcom/facebook/ads/redexgen/X/CX;)[Lcom/facebook/ads/redexgen/X/Cb;

    move-result-object v1

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/CX;->A04()Z

    move-result v0

    if-eqz v0, :cond_5d

    return-object v1

    :cond_5d
    const/16 v2, 0x9b

    const/16 v1, 0x2b

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cd;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9d;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9d;-><init>(Ljava/lang/String;)V

    throw v0
.end method
