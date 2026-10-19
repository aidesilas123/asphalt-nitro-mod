###### Class com.facebook.ads.redexgen.X.C1058Hd (com.facebook.ads.redexgen.X.Hd)
.class public final Lcom/facebook/ads/redexgen/X/Hd;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Hb;,
        Lcom/facebook/ads/redexgen/X/Hc;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[I

.field public static A02:[Ljava/lang/String;

.field public static final A03:[B

.field public static final A04:[F

.field public static final A05:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "NtIRWyZV8H4fZGcEpCmcKf3IqD05aRmR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "GeJrrdqpTOChTmOZ0a7zD9rW5xWuwwPC"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "fB9woPX"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "60Ey3AJYIgulbHGVt5ok32wwr6OtRAhs"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ywmal8sml3QBlriqnsJwUXbJL0wOA6tO"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "h15JbuXclRunjao1u8Y3u6XMQgnEqNxE"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "VnL2Csv3rCYD2ISe0PbhclEmcnjJ2Dil"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "pqWxkCx1Owc6AlIW11IRV9LZfrwFezHs"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Hd;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Hd;->A08()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_50

    sput-object v0, Lcom/facebook/ads/redexgen/X/Hd;->A03:[B

    const/16 v0, 0x11

    new-array v0, v0, [F

    fill-array-data v0, :array_56

    sput-object v0, Lcom/facebook/ads/redexgen/X/Hd;->A04:[F

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Hd;->A05:Ljava/lang/Object;

    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/ads/redexgen/X/Hd;->A01:[I

    return-void

    :array_50
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_56
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00([BI)I
    .registers 3

    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7e

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static A01([BI)I
    .registers 3

    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public static A02([BI)I
    .registers 10

    sget-object v7, Lcom/facebook/ads/redexgen/X/Hd;->A05:Ljava/lang/Object;

    monitor-enter v7

    const/4 v2, 0x0

    const/4 v6, 0x0

    :cond_5
    :goto_5
    if-ge v2, p1, :cond_25

    :try_start_7
    invoke-static {p0, v2, p1}, Lcom/facebook/ads/redexgen/X/Hd;->A03([BII)I

    move-result v2

    if-ge v2, p1, :cond_5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Hd;->A01:[I

    array-length v0, v1

    if-gt v0, v6, :cond_1b

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Hd;->A01:[I

    :cond_1b
    sget-object v1, Lcom/facebook/ads/redexgen/X/Hd;->A01:[I

    add-int/lit8 v0, v6, 0x1

    aput v2, v1, v6

    add-int/lit8 v2, v2, 0x3

    move v6, v0

    goto :goto_5

    :cond_25
    sub-int/2addr p1, v6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_29
    if-ge v3, v6, :cond_43

    sget-object v0, Lcom/facebook/ads/redexgen/X/Hd;->A01:[I

    aget v2, v0, v3

    sub-int/2addr v2, v5

    invoke-static {p0, v5, p0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v2

    add-int/lit8 v1, v4, 0x1

    const/4 v0, 0x0

    aput-byte v0, p0, v4

    add-int/lit8 v4, v1, 0x1

    aput-byte v0, p0, v1

    add-int/lit8 v0, v2, 0x3

    add-int/2addr v5, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :cond_43
    sub-int v0, p1, v4

    invoke-static {p0, v5, p0, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    monitor-exit v7

    return p1
    :try_end_4a
    .catchall {:try_start_7 .. :try_end_4a} :catchall_4a

    :catchall_4a
    move-exception v0

    :try_start_4b
    monitor-exit v7
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v0
.end method

.method public static A03([BII)I
    .registers 5

    :goto_0
    add-int/lit8 v0, p2, -0x2

    if-ge p1, v0, :cond_19

    aget-byte v0, p0, p1

    if-nez v0, :cond_16

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_16

    add-int/lit8 v0, p1, 0x2

    aget-byte v1, p0, v0

    const/4 v0, 0x3

    if-ne v1, v0, :cond_16

    return p1

    :cond_16
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_19
    return p2
.end method

.method public static A04([BII[Z)I
    .registers 12

    sub-int v5, p2, p1

    const/4 v7, 0x0

    const/4 v3, 0x1

    if-ltz v5, :cond_d

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    if-nez v5, :cond_f

    return p2

    :cond_d
    const/4 v0, 0x0

    goto :goto_7

    :cond_f
    const/4 v1, 0x2

    if-eqz p3, :cond_42

    aget-boolean v0, p3, v7

    if-eqz v0, :cond_1c

    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/Hd;->A0B([Z)V

    add-int/lit8 v0, p1, -0x3

    return v0

    :cond_1c
    if-le v5, v3, :cond_2c

    aget-boolean v0, p3, v3

    if-eqz v0, :cond_2c

    aget-byte v0, p0, p1

    if-ne v0, v3, :cond_2c

    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/Hd;->A0B([Z)V

    add-int/lit8 v0, p1, -0x2

    return v0

    :cond_2c
    if-le v5, v1, :cond_42

    aget-boolean v0, p3, v1

    if-eqz v0, :cond_42

    aget-byte v0, p0, p1

    if-nez v0, :cond_42

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    if-ne v0, v3, :cond_42

    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/Hd;->A0B([Z)V

    add-int/lit8 v0, p1, -0x1

    return v0

    :cond_42
    add-int/lit8 v4, p2, -0x1

    add-int/lit8 v2, p1, 0x2

    :goto_46
    if-ge v2, v4, :cond_85

    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xfe

    if-eqz v0, :cond_51

    :goto_4e
    add-int/lit8 v2, v2, 0x3

    goto :goto_46

    :cond_51
    add-int/lit8 v0, v2, -0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_82

    add-int/lit8 v0, v2, -0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_82

    aget-byte v0, p0, v2

    if-ne v0, v3, :cond_82

    if-eqz p3, :cond_66

    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/Hd;->A0B([Z)V

    :cond_66
    add-int/lit8 v3, v2, -0x2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Hd;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_a7

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hd;->A02:[Ljava/lang/String;

    const-string v1, "cwZIqZ1AW63JkQ3pIqo9DKAUVDIU8B2n"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "C4ULzJ2O8tT1dK0koFoE4t7X4OAunQC5"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3

    :cond_82
    add-int/lit8 v2, v2, -0x2

    goto :goto_4e

    :cond_85
    if-eqz p3, :cond_11a

    if-le v5, v1, :cond_eb

    add-int/lit8 v0, p2, -0x3

    aget-byte v0, p0, v0

    if-nez v0, :cond_e9

    add-int/lit8 v0, p2, -0x2

    aget-byte v6, p0, v0

    sget-object v4, Lcom/facebook/ads/redexgen/X/Hd;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v2, v4, v0

    const/4 v0, 0x1

    aget-object v4, v4, v0

    const/16 v0, 0x10

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v2, v0, :cond_ad

    :cond_a7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_ad
    sget-object v4, Lcom/facebook/ads/redexgen/X/Hd;->A02:[Ljava/lang/String;

    const-string v2, "3nijOMlfzKgjywxgx1aIEuQEOVvcrnGF"

    const/4 v0, 0x5

    aput-object v2, v4, v0

    const-string v2, "mhxYTAHU7iRAJ8bI14cg8xnokscJO5gc"

    const/4 v0, 0x0

    aput-object v2, v4, v0

    if-nez v6, :cond_e9

    add-int/lit8 v0, p2, -0x1

    aget-byte v6, p0, v0

    sget-object v4, Lcom/facebook/ads/redexgen/X/Hd;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v2, v4, v0

    const/4 v0, 0x0

    aget-object v4, v4, v0

    const/16 v0, 0x15

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v2, v0, :cond_e3

    sget-object v4, Lcom/facebook/ads/redexgen/X/Hd;->A02:[Ljava/lang/String;

    const-string v2, "9ZCFGjZIw1dXFFVp2oTHQfikOa97hWgs"

    const/4 v0, 0x3

    aput-object v2, v4, v0

    const-string v2, "4W5bkIHCCYZDsaIH6FljQxOPKIhpSySs"

    const/4 v0, 0x7

    aput-object v2, v4, v0

    if-ne v6, v3, :cond_e9

    const/4 v0, 0x1

    goto :goto_fe

    :cond_e3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_e9
    const/4 v0, 0x0

    goto :goto_fe

    :cond_eb
    if-ne v5, v1, :cond_12d

    aget-boolean v0, p3, v1

    if-eqz v0, :cond_12b

    add-int/lit8 v0, p2, -0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_12b

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-ne v0, v3, :cond_12b

    const/4 v0, 0x1

    :goto_fe
    aput-boolean v0, p3, v7

    if-le v5, v3, :cond_11d

    add-int/lit8 v0, p2, -0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_11b

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_11b

    const/4 v0, 0x1

    :goto_10f
    aput-boolean v0, p3, v3

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_118

    const/4 v7, 0x1

    :cond_118
    aput-boolean v7, p3, v1

    :cond_11a
    return p2

    :cond_11b
    const/4 v0, 0x0

    goto :goto_10f

    :cond_11d
    aget-boolean v0, p3, v1

    if-eqz v0, :cond_129

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_129

    const/4 v0, 0x1

    goto :goto_10f

    :cond_129
    const/4 v0, 0x0

    goto :goto_10f

    :cond_12b
    const/4 v0, 0x0

    goto :goto_fe

    :cond_12d
    aget-boolean v0, p3, v3

    if-eqz v0, :cond_139

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-ne v0, v3, :cond_139

    const/4 v0, 0x1

    goto :goto_fe

    :cond_139
    const/4 v0, 0x0

    goto :goto_fe
.end method

.method public static A05([BII)Lcom/facebook/ads/redexgen/X/Hb;
    .registers 5

    new-instance v1, Lcom/facebook/ads/redexgen/X/Hi;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Hi;-><init>([BII)V

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hi;->A07(I)V

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Hi;->A04()I

    move-result p1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Hi;->A04()I

    move-result p0

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Hi;->A06()V

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Hi;->A0A()Z

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hb;

    invoke-direct {v0, p1, p0, v1}, Lcom/facebook/ads/redexgen/X/Hb;-><init>(IIZ)V

    return-object v0
.end method

.method public static A06([BII)Lcom/facebook/ads/redexgen/X/Hc;
    .registers 22

    new-instance v6, Lcom/facebook/ads/redexgen/X/Hi;

    move-object/from16 v2, p0

    move/from16 v1, p1

    move/from16 v0, p2

    invoke-direct {v6, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hi;-><init>([BII)V

    const/16 v5, 0x8

    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/Hi;->A07(I)V

    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/Hi;->A05(I)I

    move-result v7

    const/16 v0, 0x10

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/Hi;->A07(I)V

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hi;->A04()I

    move-result v12

    const/4 v3, 0x1

    const/16 v16, 0x0

    const/16 v0, 0x64

    const/4 v4, 0x3

    if-eq v7, v0, :cond_84

    const/16 v8, 0x6e

    sget-object v1, Lcom/facebook/ads/redexgen/X/Hd;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x73

    if-eq v1, v0, :cond_3b

    :cond_35
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3b
    sget-object v2, Lcom/facebook/ads/redexgen/X/Hd;->A02:[Ljava/lang/String;

    const-string v1, "yVhhMtRnqXgY1Kb3O7KmUsZDbX87nSR0"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "CScaMkkS4ynj4HoVSfcs8Df7mB4vIw2E"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eq v7, v8, :cond_84

    const/16 v0, 0x7a

    if-eq v7, v0, :cond_84

    const/16 v0, 0xf4

    if-eq v7, v0, :cond_84

    const/16 v0, 0x2c

    if-eq v7, v0, :cond_84

    const/16 v0, 0x53

    if-eq v7, v0, :cond_84

    const/16 v0, 0x56

    if-eq v7, v0, :cond_84

    const/16 v8, 0x76

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hd;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_bb

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hd;->A02:[Ljava/lang/String;

    const-string v1, "JhuiEkWh4gR2K7eJg"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eq v7, v8, :cond_84

    :goto_7c
    const/16 v0, 0x80

    if-eq v7, v0, :cond_84

    const/16 v0, 0x8a

    if-ne v7, v0, :cond_be

    :cond_84
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hi;->A04()I

    move-result v3

    if-ne v3, v4, :cond_8e

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hi;->A0A()Z

    move-result v16

    :cond_8e
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hi;->A04()I

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hi;->A04()I

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hi;->A06()V

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hi;->A0A()Z

    move-result v0

    if-eqz v0, :cond_be

    if-eq v3, v4, :cond_b8

    const/16 v2, 0x8

    :goto_a1
    const/4 v1, 0x0

    :goto_a2
    if-ge v1, v2, :cond_be

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hi;->A0A()Z

    move-result v0

    if-eqz v0, :cond_b2

    const/4 v0, 0x6

    if-ge v1, v0, :cond_b5

    const/16 v0, 0x10

    :goto_af
    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A09(Lcom/facebook/ads/redexgen/X/Hi;I)V

    :cond_b2
    add-int/lit8 v1, v1, 0x1

    goto :goto_a2

    :cond_b5
    const/16 v0, 0x40

    goto :goto_af

    :cond_b8
    const/16 v2, 0xc

    goto :goto_a1

    :cond_bb
    if-eq v7, v8, :cond_84

    goto :goto_7c

    :cond_be
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hi;->A04()I

    move-result v0

    add-int/lit8 v18, v0, 0x4

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hi;->A04()I

    move-result v9

    const/16 p1, 0x0

    const/16 p2, 0x0

    const/4 v2, 0x1

    if-nez v9, :cond_1ec

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hi;->A04()I

    move-result v0

    add-int/lit8 p1, v0, 0x4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Hd;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x73

    if-eq v1, v0, :cond_1de

    :cond_e3
    :goto_e3
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hi;->A04()I

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hi;->A06()V

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hi;->A04()I

    move-result v0

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hi;->A04()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hi;->A0A()Z

    move-result v17

    rsub-int/lit8 v0, v17, 0x2

    mul-int/2addr v0, v1

    if-nez v17, :cond_101

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hi;->A06()V

    :cond_101
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hi;->A06()V

    mul-int/lit8 v13, v7, 0x10

    mul-int/lit8 v14, v0, 0x10

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hi;->A0A()Z

    move-result v0

    if-eqz v0, :cond_1ae

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hi;->A04()I

    move-result v11

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hi;->A04()I

    move-result v10

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hi;->A04()I

    move-result v8

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hi;->A04()I

    move-result v7

    if-nez v3, :cond_1a1

    const/4 v1, 0x1

    rsub-int/lit8 v0, v17, 0x2

    :goto_123
    add-int/2addr v11, v10

    mul-int/2addr v11, v1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hd;->A02:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v1, 0x1e

    if-eq v2, v1, :cond_35

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hd;->A02:[Ljava/lang/String;

    const-string v2, "K9ZSRxGlh7Ws8i4c0lKuIdr8XNNG4vGX"

    const/4 v1, 0x6

    aput-object v2, v3, v1

    const-string v2, "z3Vhx6GLQ83q5V050JhbnsU4vD8C98vT"

    const/4 v1, 0x1

    aput-object v2, v3, v1

    sub-int/2addr v13, v11

    add-int/2addr v8, v7

    mul-int/2addr v8, v0

    sub-int/2addr v14, v8

    :goto_142
    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hi;->A0A()Z

    move-result v0

    if-eqz v0, :cond_169

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hi;->A0A()Z

    move-result v0

    if-eqz v0, :cond_169

    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/Hi;->A05(I)I

    move-result v2

    const/16 v0, 0xff

    if-ne v2, v0, :cond_171

    const/16 v0, 0x10

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/Hi;->A05(I)I

    move-result v1

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/Hi;->A05(I)I

    move-result v0

    if-eqz v1, :cond_169

    if-eqz v0, :cond_169

    int-to-float v15, v1

    int-to-float v0, v0

    div-float/2addr v15, v0

    :cond_169
    :goto_169
    new-instance v11, Lcom/facebook/ads/redexgen/X/Hc;

    move/from16 p0, v9

    invoke-direct/range {v11 .. v21}, Lcom/facebook/ads/redexgen/X/Hc;-><init>(IIIFZZIIIZ)V

    return-object v11

    :cond_171
    sget-object v1, Lcom/facebook/ads/redexgen/X/Hd;->A04:[F

    array-length v0, v1

    if-ge v2, v0, :cond_179

    aget v15, v1, v2

    goto :goto_169

    :cond_179
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xb

    const/16 v1, 0x23

    const/16 v0, 0x59

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_169

    :cond_1a1
    if-ne v3, v4, :cond_1ac

    const/4 v1, 0x1

    :goto_1a4
    if-ne v3, v2, :cond_1a7

    const/4 v2, 0x2

    :cond_1a7
    rsub-int/lit8 v0, v17, 0x2

    mul-int/2addr v0, v2

    goto/16 :goto_123

    :cond_1ac
    const/4 v1, 0x2

    goto :goto_1a4

    :cond_1ae
    sget-object v2, Lcom/facebook/ads/redexgen/X/Hd;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1d0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hd;->A02:[Ljava/lang/String;

    const-string v1, "rEmuJ6sFB5gWWdCI0T7L47ZB03FBkEHD"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "kUZJy2qQtWdVgeJj0t3oDkGmETEmhFuj"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    goto/16 :goto_142

    :cond_1d0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Hd;->A02:[Ljava/lang/String;

    const-string v1, "DSl3hQKuabn38CmnzrECcwmRq5HwdYpG"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "fA6X51zRtxq1lySt2ARPPLPLlCaXaXco"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    goto/16 :goto_142

    :cond_1de
    sget-object v7, Lcom/facebook/ads/redexgen/X/Hd;->A02:[Ljava/lang/String;

    const-string v1, "0FcrA39w8cpWUUBY0PhZdDl2WVIzmr3H"

    const/4 v0, 0x6

    aput-object v1, v7, v0

    const-string v1, "bEwoHyJue3o3gWd30VLAmFgh8fIWiG5R"

    const/4 v0, 0x1

    aput-object v1, v7, v0

    goto/16 :goto_e3

    :cond_1ec
    if-ne v9, v2, :cond_e3

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hi;->A0A()Z

    move-result p2

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hi;->A03()I

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hi;->A03()I

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hi;->A04()I

    move-result v0

    int-to-long v7, v0

    const/4 v10, 0x0

    :goto_1fe
    int-to-long v0, v10

    cmp-long v11, v0, v7

    if-gez v11, :cond_e3

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hi;->A04()I

    add-int/lit8 v10, v10, 0x1

    goto :goto_1fe
.end method

.method public static A07(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Hd;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x1d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A08()V
    .registers 1

    const/16 v0, 0x41

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/Hd;->A00:[B

    return-void

    :array_a
    .array-data 1
        0x75t
        0x5at
        0x57t
        0x6et
        0x55t
        0x52t
        0x4ft
        0x6et
        0x4ft
        0x52t
        0x57t
        0x11t
        0x2at
        0x21t
        0x3ct
        0x34t
        0x21t
        0x27t
        0x30t
        0x21t
        0x20t
        0x64t
        0x25t
        0x37t
        0x34t
        0x21t
        0x27t
        0x30t
        0x1bt
        0x36t
        0x25t
        0x30t
        0x2dt
        0x2bt
        0x1bt
        0x2dt
        0x20t
        0x27t
        0x64t
        0x32t
        0x25t
        0x28t
        0x31t
        0x21t
        0x7et
        0x64t
        0x1et
        0x1t
        0xct
        0xdt
        0x7t
        0x47t
        0x9t
        0x1et
        0xbt
        0x55t
        0x4at
        0x47t
        0x46t
        0x4ct
        0xct
        0x4bt
        0x46t
        0x55t
        0x40t
    .end array-data
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/Hi;I)V
    .registers 8

    const/16 v5, 0x8

    const/16 v3, 0x8

    const/4 v4, 0x0

    :goto_5
    if-ge v4, p1, :cond_3f

    if-eqz v3, :cond_12

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hi;->A03()I

    move-result v0

    add-int/2addr v0, v5

    add-int/lit16 v0, v0, 0x100

    rem-int/lit16 v3, v0, 0x100

    :cond_12
    if-nez v3, :cond_3d

    :goto_14
    sget-object v2, Lcom/facebook/ads/redexgen/X/Hd;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2e

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2e
    sget-object v2, Lcom/facebook/ads/redexgen/X/Hd;->A02:[Ljava/lang/String;

    const-string v1, "KXMRoqtdhshm8G74asFo5uqDFob0Iegs"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "VTZDrARlCd8p2vM8k7YrNOP12vylJmks"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_3d
    move v5, v3

    goto :goto_14

    :cond_3f
    return-void
.end method

.method public static A0A(Ljava/nio/ByteBuffer;)V
    .registers 9

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    const/4 v6, 0x0

    const/4 v5, 0x0

    :goto_6
    add-int/lit8 v0, v5, 0x1

    if-ge v0, v4, :cond_81

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v3, v0, 0xff

    const/4 v0, 0x3

    if-ne v6, v0, :cond_6a

    const/4 v7, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Hd;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x73

    if-eq v1, v0, :cond_28

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_28
    sget-object v2, Lcom/facebook/ads/redexgen/X/Hd;->A02:[Ljava/lang/String;

    const-string v1, "cLm552F16buuPP9xMufxVHaN"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ne v3, v7, :cond_6e

    add-int/lit8 v0, v5, 0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v1, v0, 0x1f

    const/4 v0, 0x7

    if-ne v1, v0, :cond_6e

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    add-int/lit8 v0, v5, -0x3

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Hd;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x73

    if-eq v1, v0, :cond_74

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hd;->A02:[Ljava/lang/String;

    const-string v1, "6nmXEFQWU8IXvuDOHtOk9CPNFswxHRRs"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "sRzFReGlCKeKmBP91kaLZyOllIcQLpOs"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-void

    :cond_6a
    if-nez v3, :cond_6e

    add-int/lit8 v6, v6, 0x1

    :cond_6e
    if-eqz v3, :cond_71

    const/4 v6, 0x0

    :cond_71
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_74
    sget-object v2, Lcom/facebook/ads/redexgen/X/Hd;->A02:[Ljava/lang/String;

    const-string v1, "MM5ABksrrLy98KCtfJajpuklss5i1OmF"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "sCLzk23Fd4ag3qXWex39LdUh6FJSiknG"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-void

    :cond_81
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method

.method public static A0B([Z)V
    .registers 3

    const/4 v1, 0x0

    aput-boolean v1, p0, v1

    const/4 v0, 0x1

    aput-boolean v1, p0, v0

    const/4 v0, 0x2

    aput-boolean v1, p0, v0

    return-void
.end method

.method public static A0C(Ljava/lang/String;B)Z
    .registers 6

    const/16 v2, 0x2e

    const/16 v1, 0x9

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_16

    and-int/lit8 v1, p1, 0x1f

    const/4 v0, 0x6

    if-eq v1, v0, :cond_2d

    :cond_16
    const/16 v2, 0x37

    const/16 v1, 0xa

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    and-int/lit8 v1, p1, 0x7e

    shr-int/2addr v1, v3

    const/16 v0, 0x27

    if-ne v1, v0, :cond_2e

    :cond_2d
    :goto_2d
    return v3

    :cond_2e
    const/4 v3, 0x0

    goto :goto_2d
.end method
