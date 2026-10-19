###### Class com.json.adqualitysdk.sdk.i.ia (com.ironsource.adqualitysdk.sdk.i.ia)
.class public Lcom/ironsource/adqualitysdk/sdk/i/ia;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:[B

.field private static final b:[B

.field private static synthetic c:Z = false

.field private static d:[C = null

.field private static e:C = '\u0000'

.field private static f:I = 0x0

.field private static g:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ia;->e()V

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ia;->f:I

    add-int/lit8 v1, v0, 0x1b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ia;->g:I

    rem-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ia;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ironsource/adqualitysdk/sdk/i/ia;->c:Z

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ia;->a:[B

    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_50

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ia;->b:[B

    return-void

    nop

    :array_2c
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_50
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([BI)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ironsource/adqualitysdk/sdk/i/hy;
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ia;->f:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ia;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ia;->b:[B

    invoke-static {p0, v0, p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ia;->g([BII[B)[B

    move-result-object p0

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ia;->g:I

    add-int/lit8 p1, p1, 0x7d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ia;->f:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0
.end method

.method private static b([BII[B)[B
    .registers 16

    add-int/lit8 p1, p2, 0x2

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x2

    const v0, 0x7fffffff

    div-int v1, p1, v0

    add-int/2addr p1, v1

    new-array v7, p1, [B

    add-int/lit8 v1, p2, -0x2

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ia;->g:I

    add-int/lit8 v2, v2, 0x6f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ia;->f:I

    rem-int/lit8 v2, v2, 0x2

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1e
    const/16 v11, 0xa

    if-ge v2, v1, :cond_7e

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/ia;->f:I

    add-int/lit8 v3, v3, 0x51

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/ia;->g:I

    rem-int/lit8 v3, v3, 0x2

    aget-byte v3, p0, v2

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p0, v4

    shl-int/lit8 v4, v4, 0x18

    ushr-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, p0, v4

    shl-int/lit8 v4, v4, 0x18

    ushr-int/lit8 v4, v4, 0x18

    or-int/2addr v3, v4

    ushr-int/lit8 v4, v3, 0x12

    aget-byte v4, p3, v4

    aput-byte v4, v7, v9

    add-int/lit8 v4, v9, 0x1

    ushr-int/lit8 v5, v3, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, p3, v5

    aput-byte v5, v7, v4

    add-int/lit8 v5, v9, 0x2

    ushr-int/lit8 v6, v3, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-byte v6, p3, v6

    aput-byte v6, v7, v5

    add-int/lit8 v5, v9, 0x3

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, p3, v3

    aput-byte v3, v7, v5

    add-int/lit8 v10, v10, 0x4

    const/16 v3, 0xc

    if-ne v10, v0, :cond_6f

    const/16 v5, 0x40

    goto :goto_71

    :cond_6f
    const/16 v5, 0xc

    :goto_71
    if-eq v5, v3, :cond_79

    add-int/lit8 v9, v9, 0x4

    aput-byte v11, v7, v9

    move v9, v4

    const/4 v10, 0x0

    :cond_79
    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v9, v9, 0x4

    goto :goto_1e

    :cond_7e
    if-ge v2, p2, :cond_9a

    sub-int v3, p2, v2

    move-object v1, p0

    move-object v4, v7

    move v5, v9

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/ironsource/adqualitysdk/sdk/i/ia;->h([BII[BI[B)[B

    add-int/lit8 v10, v10, 0x4

    const/4 p0, 0x1

    if-ne v10, v0, :cond_8f

    goto :goto_90

    :cond_8f
    const/4 v8, 0x1

    :goto_90
    if-eq v8, p0, :cond_98

    add-int/lit8 p0, v9, 0x4

    aput-byte v11, v7, p0

    add-int/lit8 v9, v9, 0x1

    :cond_98
    add-int/lit8 v9, v9, 0x4

    :cond_9a
    sget-boolean p0, Lcom/ironsource/adqualitysdk/sdk/i/ia;->c:Z

    if-nez p0, :cond_a7

    if-ne v9, p1, :cond_a1

    goto :goto_a7

    :cond_a1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_a7
    :goto_a7
    return-object v7
.end method

.method private static c(BLjava/lang/String;I)Ljava/lang/String;
    .registers 11

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_6
    check-cast p1, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﺙ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ia;->d:[C

    sget-char v2, Lcom/ironsource/adqualitysdk/sdk/i/ia;->e:C

    new-array v3, p2, [C

    rem-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_1d

    add-int/lit8 p2, p2, -0x1

    aget-char v4, p1, p2

    sub-int/2addr v4, p0

    int-to-char v4, v4

    aput-char v4, v3, p2

    :cond_1d
    const/4 v4, 0x1

    if-le p2, v4, :cond_df

    const/4 v5, 0x0

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    :goto_23
    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    if-ge v5, p2, :cond_df

    aget-char v5, p1, v5

    sput-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻐ:C

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    add-int/2addr v5, v4

    aget-char v5, p1, v5

    sput-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾒ:C

    sget-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻐ:C

    sget-char v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾒ:C

    if-ne v5, v6, :cond_4b

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    sget-char v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻐ:C

    sub-int/2addr v6, p0

    int-to-char v6, v6

    aput-char v6, v3, v5

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    add-int/2addr v5, v4

    sget-char v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾒ:C

    sub-int/2addr v6, p0

    int-to-char v6, v6

    aput-char v6, v3, v5

    goto/16 :goto_d7

    :cond_4b
    sget-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻐ:C

    div-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    sget-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻐ:C

    rem-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    sget-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾒ:C

    div-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    sget-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾒ:C

    rem-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    if-ne v5, v6, :cond_8e

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    mul-int v5, v5, v2

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    add-int/2addr v5, v6

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    mul-int v6, v6, v2

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    add-int/2addr v6, v7

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    add-int/lit8 v7, v7, 0x1

    aget-char v5, v1, v6

    aput-char v5, v3, v7

    goto :goto_d7

    :cond_8e
    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    if-ne v5, v6, :cond_bd

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    mul-int v5, v5, v2

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    add-int/2addr v5, v6

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    mul-int v6, v6, v2

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    add-int/2addr v6, v7

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    add-int/lit8 v7, v7, 0x1

    aget-char v5, v1, v6

    aput-char v5, v3, v7

    goto :goto_d7

    :cond_bd
    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    mul-int v5, v5, v2

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    add-int/2addr v5, v6

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    mul-int v6, v6, v2

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    add-int/2addr v6, v7

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    add-int/lit8 v7, v7, 0x1

    aget-char v5, v1, v6

    aput-char v5, v3, v7

    :goto_d7
    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    add-int/lit8 v5, v5, 0x2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    goto/16 :goto_23

    :cond_df
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_e5
    .catchall {:try_start_b .. :try_end_e5} :catchall_e6

    return-object p0

    :catchall_e6
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static d([BI[B)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ia;->b([BII[B)[B

    move-result-object p0

    array-length p1, p0

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p0, v0, p1}, Ljava/lang/String;-><init>([BII)V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ia;->f:I

    add-int/lit8 p0, p0, 0x7d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/ia;->g:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_18

    const/4 v0, 0x1

    :cond_18
    if-nez v0, :cond_1b

    return-object p2

    :cond_1b
    const/4 p0, 0x0

    :try_start_1c
    throw p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1d

    :catchall_1d
    move-exception p0

    throw p0
.end method

.method static e()V
    .registers 1

    const/4 v0, 0x6

    sput-char v0, Lcom/ironsource/adqualitysdk/sdk/i/ia;->e:C

    const/16 v0, 0x24

    new-array v0, v0, [C

    fill-array-data v0, :array_e

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ia;->d:[C

    return-void

    nop

    :array_e
    .array-data 2
        0x69s
        0x6es
        0x76s
        0x61s
        0x6cs
        0x64s
        0x20s
        0x70s
        0x67s
        0x62s
        0x79s
        0x74s
        0x65s
        0x27s
        0x3ds
        0x6fs
        0x66s
        0x73s
        0x63s
        0x75s
        0x68s
        0x72s
        0x42s
        0x36s
        0x34s
        0x3as
        0x28s
        0x6ds
        0x29s
        0x6as
        0x6bs
        0x71s
        0x77s
        0x78s
        0x7as
        0x7bs
    .end array-data
.end method

.method private static f([B[BI[B)I
    .registers 10

    const/4 v0, 0x2

    aget-byte v1, p0, v0

    const/16 v2, 0x3d

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    if-eqz v1, :cond_35

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ia;->g:I

    add-int/lit8 v2, v1, 0x45

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/ia;->f:I

    rem-int/2addr v2, v0

    aget-byte v2, p0, v3

    aget-byte v2, p3, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x6

    aget-byte p0, p0, v4

    aget-byte p0, p3, p0

    shl-int/lit8 p0, p0, 0x18

    ushr-int/lit8 p0, p0, 0xc

    or-int/2addr p0, v2

    ushr-int/lit8 p0, p0, 0x10

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    add-int/lit8 v1, v1, 0x33

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lcom/ironsource/adqualitysdk/sdk/i/ia;->f:I

    rem-int/2addr v1, v0

    return v4

    :cond_35
    const/4 v1, 0x3

    aget-byte v5, p0, v1

    if-ne v5, v2, :cond_3c

    const/4 v2, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v2, 0x0

    :goto_3d
    if-eqz v2, :cond_65

    aget-byte v1, p0, v3

    aget-byte v1, p3, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x6

    aget-byte v2, p0, v4

    aget-byte v2, p3, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0xc

    or-int/2addr v1, v2

    aget-byte p0, p0, v0

    aget-byte p0, p3, p0

    shl-int/lit8 p0, p0, 0x18

    ushr-int/lit8 p0, p0, 0x12

    or-int/2addr p0, v1

    ushr-int/lit8 p3, p0, 0x10

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    add-int/2addr p2, v4

    ushr-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return v0

    :cond_65
    aget-byte v2, p0, v3

    aget-byte v2, p3, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x6

    aget-byte v3, p0, v4

    aget-byte v3, p3, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    aget-byte v3, p0, v0

    aget-byte v3, p3, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x12

    or-int/2addr v2, v3

    aget-byte p0, p0, v1

    aget-byte p0, p3, p0

    shl-int/lit8 p0, p0, 0x18

    ushr-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v2

    shr-int/lit8 p3, p0, 0x10

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    add-int/lit8 p3, p2, 0x1

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, p3

    add-int/2addr p2, v0

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return v1
.end method

.method private static g([BII[B)[B
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ironsource/adqualitysdk/sdk/i/hy;
        }
    .end annotation

    move/from16 v0, p2

    move-object/from16 v1, p3

    mul-int/lit8 v2, v0, 0x3

    const/4 v3, 0x4

    div-int/2addr v2, v3

    const/4 v4, 0x2

    add-int/2addr v2, v4

    new-array v2, v2, [B

    new-array v5, v3, [B

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_11
    const/16 v10, 0x3d

    const/4 v12, 0x1

    if-ge v7, v0, :cond_17d

    aget-byte v13, p0, v7

    and-int/lit8 v13, v13, 0x7f

    int-to-byte v13, v13

    aget-byte v14, v1, v13

    const/4 v15, -0x5

    const-wide/16 v16, 0x0

    if-lt v14, v15, :cond_112

    sget v15, Lcom/ironsource/adqualitysdk/sdk/i/ia;->g:I

    add-int/lit8 v15, v15, 0x37

    rem-int/lit16 v11, v15, 0x80

    sput v11, Lcom/ironsource/adqualitysdk/sdk/i/ia;->f:I

    rem-int/2addr v15, v4

    const/4 v15, -0x1

    const/16 v6, 0x12

    if-lt v14, v15, :cond_33

    const/16 v14, 0x15

    goto :goto_35

    :cond_33
    const/16 v14, 0x12

    :goto_35
    if-eq v14, v6, :cond_10e

    add-int/lit8 v6, v11, 0x1d

    rem-int/lit16 v14, v6, 0x80

    sput v14, Lcom/ironsource/adqualitysdk/sdk/i/ia;->g:I

    rem-int/2addr v6, v4

    if-ne v13, v10, :cond_f0

    add-int/lit8 v11, v11, 0x73

    rem-int/lit16 v6, v11, 0x80

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/ia;->g:I

    rem-int/2addr v11, v4

    sub-int v6, v0, v7

    add-int/lit8 v11, v0, -0x1

    aget-byte v11, p0, v11

    and-int/lit8 v11, v11, 0x7f

    int-to-byte v11, v11

    if-eqz v8, :cond_be

    if-eq v8, v12, :cond_be

    const/4 v13, 0x3

    if-ne v8, v13, :cond_59

    if-gt v6, v4, :cond_5e

    :cond_59
    if-ne v8, v3, :cond_8d

    if-gt v6, v12, :cond_5e

    goto :goto_8d

    :cond_5e
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/hy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x40

    const-string v4, "\t\u0001tt\u0001\u0002\t\u0007\n\u000b\u0006\u0011\u0007\u000c\u000f\u000e\n\u000c\u0004\u0005\u000c\r\n\u0010\u000b\u000c\u0002\u0006\u0002\u0004\u0005\u0010\u000c\u0012\u0002\u0000\t\u000c\u000c\n\r\u0000\u0015\u000c\u0000\u0011\u0000\u000b\u0003\u0004\u0001\u0016\u0012\u000c\u0005\t\t\u000cvv\u000c\r\u0006\u0007"

    invoke-static {v2, v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ia;->c(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/hy;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8d
    :goto_8d
    if-eq v11, v10, :cond_91

    const/4 v3, 0x0

    goto :goto_92

    :cond_91
    const/4 v3, 0x1

    :goto_92
    if-eqz v3, :cond_96

    goto/16 :goto_17d

    :cond_96
    const/16 v3, 0xa

    if-ne v11, v3, :cond_9c

    goto/16 :goto_17d

    :cond_9c
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/hy;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    shr-int/lit8 v1, v1, 0x16

    add-int/lit8 v1, v1, 0x6

    int-to-byte v1, v1

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v2

    const-string v4, "\r\u0000\u0015\u000c\u0000\u0011\u0000\u000b\u0003\u0004\u0001\u0016\u0012\u000c\u0015\u0002\u000c\u000b\u0001\u0002\u0003\u0004\u0005\u0001\u0000\u000b\t\u0017\u0004\u0001\u0005\u0001\u0002\u0007\u0007\n\u000b\u0006k"

    cmp-long v5, v2, v16

    rsub-int/lit8 v2, v5, 0x26

    invoke-static {v1, v4, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ia;->c(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/hy;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_be
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/hy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v2

    const-string v3, "\u0001\u0002\u0003\u0004\u0005\u0001\u0000\u000b\t\u0001\u00c1\u00c1\u0001\u0002\t\u0007\n\u000b\u0006\u0011\u0007\u000c\u000f\u000e\t\u0000\u0006\u0007\n\u000b\u0006\u0011\t\u000c\u00c3\u00c3\u000c\r\u0006\u0007"

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    add-int/lit8 v2, v2, 0x5d

    int-to-byte v2, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    add-int/lit8 v4, v4, 0x28

    invoke-static {v2, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ia;->c(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/hy;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f0
    add-int/lit8 v6, v8, 0x1

    aput-byte v13, v5, v8

    if-ne v6, v3, :cond_10d

    add-int/lit8 v11, v11, 0x49

    rem-int/lit16 v6, v11, 0x80

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/ia;->g:I

    rem-int/2addr v11, v4

    if-nez v11, :cond_106

    invoke-static {v5, v2, v9, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ia;->f([B[BI[B)I

    move-result v6

    div-int/2addr v9, v6

    const/4 v8, 0x1

    goto :goto_10e

    :cond_106
    invoke-static {v5, v2, v9, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ia;->f([B[BI[B)I

    move-result v6

    add-int/2addr v9, v6

    const/4 v8, 0x0

    goto :goto_10e

    :cond_10d
    move v8, v6

    :cond_10e
    :goto_10e
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_11

    :cond_112
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/hy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x65

    int-to-byte v2, v2

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x1e

    const-string v6, "\u0015\u0004\u0000\u000b\u0015\u0004\u000c\r\u0012\u001d\u000c\u0006\u0007\r\u0017\u0007\u000c\u0018\u0015\u0002\u001b\t\u0017\u0006\u000f\u0012\t\u0000\u0006\u0007"

    invoke-static {v2, v6, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ia;->c(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x45

    int-to-byte v2, v2

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    add-int/2addr v5, v4

    const-string v4, "\u0018\u0007"

    invoke-static {v2, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ia;->c(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, p0, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v3, v3}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v2

    const-string v4, "\u001d\u0002\u0012\u0018\u0003\u0018\u0004\u0005p"

    cmp-long v5, v2, v16

    rsub-int/lit8 v2, v5, 0x46

    int-to-byte v2, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, 0x9

    invoke-static {v2, v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ia;->c(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/hy;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17d
    :goto_17d
    if-eqz v8, :cond_1be

    if-eq v8, v12, :cond_189

    aput-byte v10, v5, v8

    invoke-static {v5, v2, v9, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ia;->f([B[BI[B)I

    move-result v0

    add-int/2addr v9, v0

    goto :goto_1be

    :cond_189
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/hy;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    const-string v7, "\u000c\u0005\u0002\u0007\u0000\u0010\u0007\u0006\u001b\t\u0001\u0005\u0001\u0002\t\u0007\u0013\u0015\t\u001b\u0000\u0015\u0006\u0011\u0012\t\u0005\t\t\u000c\u00de\u00de\u000c\r\u0006\u0007"

    cmp-long v8, v3, v5

    add-int/lit8 v8, v8, 0x77

    int-to-byte v3, v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5, v4, v4}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v5

    cmpl-float v4, v5, v4

    rsub-int/lit8 v4, v4, 0x24

    invoke-static {v3, v7, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ia;->c(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v0, v12

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/hy;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1be
    :goto_1be
    new-array v0, v9, [B

    const/4 v1, 0x0

    invoke-static {v2, v1, v0, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static h([BII[BI[B)[B
    .registers 12

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ia;->g:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ia;->f:I

    const/4 v2, 0x2

    rem-int/2addr v0, v2

    const/4 v0, 0x0

    const/4 v3, 0x1

    if-lez p2, :cond_10

    const/4 v4, 0x1

    goto :goto_11

    :cond_10
    const/4 v4, 0x0

    :goto_11
    if-eq v4, v3, :cond_1c

    add-int/lit8 v4, v1, 0x4f

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/ia;->g:I

    rem-int/2addr v4, v2

    const/4 v4, 0x0

    goto :goto_22

    :cond_1c
    aget-byte v4, p0, p1

    shl-int/lit8 v4, v4, 0x18

    ushr-int/lit8 v4, v4, 0x8

    :goto_22
    if-le p2, v3, :cond_26

    const/4 v5, 0x0

    goto :goto_27

    :cond_26
    const/4 v5, 0x1

    :goto_27
    if-eq v5, v3, :cond_3b

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ia;->g:I

    add-int/lit8 v1, v1, 0x33

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/ia;->f:I

    rem-int/2addr v1, v2

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x10

    goto :goto_43

    :cond_3b
    add-int/lit8 v1, v1, 0x43

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/ia;->g:I

    rem-int/2addr v1, v2

    const/4 v1, 0x0

    :goto_43
    or-int/2addr v1, v4

    if-le p2, v2, :cond_4d

    add-int/2addr p1, v2

    aget-byte p0, p0, p1

    shl-int/lit8 p0, p0, 0x18

    ushr-int/lit8 v0, p0, 0x18

    :cond_4d
    or-int p0, v1, v0

    const/16 p1, 0x3d

    const/4 v0, 0x3

    if-eq p2, v3, :cond_99

    if-eq p2, v2, :cond_7b

    if-eq p2, v0, :cond_59

    return-object p3

    :cond_59
    ushr-int/lit8 p1, p0, 0x12

    aget-byte p1, p5, p1

    aput-byte p1, p3, p4

    add-int/lit8 p1, p4, 0x1

    ushr-int/lit8 p2, p0, 0xc

    and-int/lit8 p2, p2, 0x3f

    aget-byte p2, p5, p2

    aput-byte p2, p3, p1

    add-int/lit8 p1, p4, 0x2

    ushr-int/lit8 p2, p0, 0x6

    and-int/lit8 p2, p2, 0x3f

    aget-byte p2, p5, p2

    aput-byte p2, p3, p1

    add-int/2addr p4, v0

    and-int/lit8 p0, p0, 0x3f

    aget-byte p0, p5, p0

    aput-byte p0, p3, p4

    return-object p3

    :cond_7b
    ushr-int/lit8 p2, p0, 0x12

    aget-byte p2, p5, p2

    aput-byte p2, p3, p4

    add-int/lit8 p2, p4, 0x1

    ushr-int/lit8 v1, p0, 0xc

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, p5, v1

    aput-byte v1, p3, p2

    add-int/lit8 p2, p4, 0x2

    ushr-int/lit8 p0, p0, 0x6

    and-int/lit8 p0, p0, 0x3f

    aget-byte p0, p5, p0

    aput-byte p0, p3, p2

    add-int/2addr p4, v0

    aput-byte p1, p3, p4

    return-object p3

    :cond_99
    ushr-int/lit8 p2, p0, 0x12

    aget-byte p2, p5, p2

    aput-byte p2, p3, p4

    add-int/lit8 p2, p4, 0x1

    ushr-int/lit8 p0, p0, 0xc

    and-int/lit8 p0, p0, 0x3f

    aget-byte p0, p5, p0

    aput-byte p0, p3, p2

    add-int/lit8 p0, p4, 0x2

    aput-byte p1, p3, p0

    add-int/2addr p4, v0

    aput-byte p1, p3, p4

    return-object p3
.end method

.method public static ｋ([B)Ljava/lang/String;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ia;->f:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ia;->g:I

    rem-int/lit8 v0, v0, 0x2

    array-length v0, p0

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ia;->a:[B

    invoke-static {p0, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ia;->d([BI[B)Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ia;->f:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ia;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x10

    if-nez v0, :cond_22

    const/16 v0, 0x22

    goto :goto_24

    :cond_22
    const/16 v0, 0x10

    :goto_24
    if-ne v0, v1, :cond_27

    return-object p0

    :cond_27
    const/4 p0, 0x0

    :try_start_28
    throw p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception p0

    throw p0
.end method

.method public static ﾒ(Ljava/lang/String;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ironsource/adqualitysdk/sdk/i/hy;
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ia;->f:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ia;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x43

    if-nez v0, :cond_11

    const/16 v0, 0x43

    goto :goto_13

    :cond_11
    const/16 v0, 0xa

    :goto_13
    if-eq v0, v1, :cond_1f

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length v0, p0

    invoke-static {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ia;->a([BI)[B

    move-result-object p0

    return-object p0

    :cond_1f
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length v0, p0

    invoke-static {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ia;->a([BI)[B

    const/4 p0, 0x0

    :try_start_28
    throw p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception p0

    throw p0
.end method
