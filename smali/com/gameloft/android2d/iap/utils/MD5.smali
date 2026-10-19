###### Class com.gameloft.android2d.iap.utils.MD5 (com.gameloft.android2d.iap.utils.MD5)
.class public Lcom/gameloft/android2d/iap/utils/MD5;
.super Ljava/lang/Object;
.source "MD5.java"


# static fields
.field static a:[I

.field static b:[I

.field static c:[J

.field static d:[J

.field static e:[B

.field static f:[B

.field static g:[B

.field private static final h:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_14

    sput-object v0, Lcom/gameloft/android2d/iap/utils/MD5;->g:[B

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_38

    sput-object v0, Lcom/gameloft/android2d/iap/utils/MD5;->h:[C

    return-void

    nop

    :array_14
    .array-data 1
        -0x80t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_38
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MD5_AsHex()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/MD5;->MD5_Final()[B

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/MD5;->MD5_AsHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static MD5_AsHex([B)Ljava/lang/String;
    .registers 7

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    array-length v3, p0

    if-ge v1, v3, :cond_25

    add-int/lit8 v3, v2, 0x1

    sget-object v4, Lcom/gameloft/android2d/iap/utils/MD5;->h:[C

    aget-byte v5, p0, v1

    ushr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v4, v5

    aput-char v5, v0, v2

    add-int/lit8 v2, v3, 0x1

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_25
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private static MD5_CopyToFinal()V
    .registers 5

    const/16 v0, 0x40

    new-array v0, v0, [B

    sput-object v0, Lcom/gameloft/android2d/iap/utils/MD5;->f:[B

    const/4 v1, 0x1

    new-array v1, v1, [J

    sput-object v1, Lcom/gameloft/android2d/iap/utils/MD5;->d:[J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    const/4 v1, 0x4

    new-array v1, v1, [I

    sput-object v1, Lcom/gameloft/android2d/iap/utils/MD5;->b:[I

    sget-object v1, Lcom/gameloft/android2d/iap/utils/MD5;->e:[B

    array-length v2, v0

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v0, Lcom/gameloft/android2d/iap/utils/MD5;->a:[I

    sget-object v1, Lcom/gameloft/android2d/iap/utils/MD5;->b:[I

    array-length v2, v1

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v0, Lcom/gameloft/android2d/iap/utils/MD5;->c:[J

    sput-object v0, Lcom/gameloft/android2d/iap/utils/MD5;->d:[J

    return-void
.end method

.method private static MD5_Decode([BI[I)V
    .registers 6

    add-int/lit8 v0, p1, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x8

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    const/4 v1, 0x0

    aput v0, p2, v1

    add-int/lit8 v0, p1, 0x4

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x5

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x6

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x7

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    const/4 v1, 0x1

    aput v0, p2, v1

    add-int/lit8 v0, p1, 0x8

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x9

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0xa

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0xb

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aput v0, p2, v1

    add-int/lit8 v0, p1, 0xc

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0xd

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0xe

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0xf

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aput v0, p2, v1

    add-int/lit8 v0, p1, 0x10

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x11

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x12

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x13

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    const/4 v1, 0x4

    aput v0, p2, v1

    add-int/lit8 v0, p1, 0x14

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x15

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x16

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x17

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    const/4 v1, 0x5

    aput v0, p2, v1

    add-int/lit8 v0, p1, 0x18

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x19

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1a

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1b

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    const/4 v1, 0x6

    aput v0, p2, v1

    add-int/lit8 v0, p1, 0x1c

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1d

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1e

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1f

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    const/4 v1, 0x7

    aput v0, p2, v1

    add-int/lit8 v0, p1, 0x20

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x21

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x22

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x23

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    aput v0, p2, v2

    add-int/lit8 v0, p1, 0x24

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x25

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x26

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x27

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    const/16 v1, 0x9

    aput v0, p2, v1

    add-int/lit8 v0, p1, 0x28

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x29

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2a

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2b

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    const/16 v1, 0xa

    aput v0, p2, v1

    add-int/lit8 v0, p1, 0x2c

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x2d

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2e

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2f

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    const/16 v1, 0xb

    aput v0, p2, v1

    add-int/lit8 v0, p1, 0x30

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x31

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x32

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x33

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    const/16 v1, 0xc

    aput v0, p2, v1

    add-int/lit8 v0, p1, 0x34

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x35

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x36

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x37

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    const/16 v1, 0xd

    aput v0, p2, v1

    add-int/lit8 v0, p1, 0x38

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x39

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3a

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3b

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    const/16 v1, 0xe

    aput v0, p2, v1

    add-int/lit8 v0, p1, 0x3c

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x3d

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3e

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3f

    aget-byte p0, p0, p1

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    const/16 p1, 0xf

    aput p0, p2, p1

    return-void
.end method

.method private static MD5_Encode([II)[B
    .registers 7

    new-array v0, p1, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v1, p1, :cond_35

    add-int/lit8 v3, v1, 0x0

    aget v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v1, 0x1

    aget v4, p0, v2

    ushr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v1, 0x2

    aget v4, p0, v2

    ushr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v1, 0x3

    aget v4, p0, v2

    ushr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x4

    goto :goto_4

    :cond_35
    return-object v0
.end method

.method private static MD5_Final()[B
    .registers 13

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/MD5;->MD5_CopyToFinal()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    sget-object v1, Lcom/gameloft/android2d/iap/utils/MD5;->d:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    const/4 v5, 0x3

    shl-long/2addr v3, v5

    long-to-int v4, v3

    aput v4, v0, v2

    aget-wide v3, v1, v2

    const/16 v1, 0x1d

    shr-long/2addr v3, v1

    long-to-int v1, v3

    const/4 v3, 0x1

    aput v1, v0, v3

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/gameloft/android2d/iap/utils/MD5;->MD5_Encode([II)[B

    move-result-object v6

    sget-object v9, Lcom/gameloft/android2d/iap/utils/MD5;->d:[J

    aget-wide v0, v9, v2

    const-wide/16 v2, 0x3f

    and-long/2addr v0, v2

    long-to-int v1, v0

    const/16 v0, 0x38

    if-ge v1, v0, :cond_2d

    sub-int/2addr v0, v1

    goto :goto_2f

    :cond_2d
    rsub-int/lit8 v0, v1, 0x78

    :goto_2f
    move v12, v0

    sget-object v7, Lcom/gameloft/android2d/iap/utils/MD5;->f:[B

    sget-object v8, Lcom/gameloft/android2d/iap/utils/MD5;->b:[I

    sget-object v10, Lcom/gameloft/android2d/iap/utils/MD5;->g:[B

    const/4 v11, 0x0

    invoke-static/range {v7 .. v12}, Lcom/gameloft/android2d/iap/utils/MD5;->MD5_Update([B[I[J[BII)V

    sget-object v3, Lcom/gameloft/android2d/iap/utils/MD5;->f:[B

    sget-object v4, Lcom/gameloft/android2d/iap/utils/MD5;->b:[I

    sget-object v5, Lcom/gameloft/android2d/iap/utils/MD5;->d:[J

    const/4 v7, 0x0

    const/16 v8, 0x8

    invoke-static/range {v3 .. v8}, Lcom/gameloft/android2d/iap/utils/MD5;->MD5_Update([B[I[J[BII)V

    sget-object v0, Lcom/gameloft/android2d/iap/utils/MD5;->b:[I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/gameloft/android2d/iap/utils/MD5;->MD5_Encode([II)[B

    move-result-object v0

    return-object v0
.end method

.method public static MD5_HashesEqual([B[B)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_9

    if-nez p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0

    :cond_9
    if-nez p1, :cond_c

    return v1

    :cond_c
    array-length v2, p0

    const/16 v3, 0x10

    if-ge v2, v3, :cond_18

    array-length v2, p1

    array-length v3, p0

    if-eq v2, v3, :cond_16

    return v1

    :cond_16
    array-length v3, p0

    goto :goto_1c

    :cond_18
    array-length v2, p1

    if-ge v2, v3, :cond_1c

    return v1

    :cond_1c
    :goto_1c
    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v3, :cond_29

    aget-byte v4, p0, v2

    aget-byte v5, p1, v2

    if-eq v4, v5, :cond_26

    return v1

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_29
    return v0
.end method

.method public static MD5_Init()V
    .registers 5

    const/16 v0, 0x40

    new-array v0, v0, [B

    sput-object v0, Lcom/gameloft/android2d/iap/utils/MD5;->e:[B

    const/4 v0, 0x1

    new-array v1, v0, [J

    sput-object v1, Lcom/gameloft/android2d/iap/utils/MD5;->c:[J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    const/4 v1, 0x4

    new-array v1, v1, [I

    sput-object v1, Lcom/gameloft/android2d/iap/utils/MD5;->a:[I

    const v2, 0x67452301

    aput v2, v1, v4

    const v2, -0x10325477

    aput v2, v1, v0

    const/4 v0, 0x2

    const v2, -0x67452302

    aput v2, v1, v0

    const/4 v0, 0x3

    const v2, 0x10325476

    aput v2, v1, v0

    return-void
.end method

.method private static MD5_Transform([I[BI[I)V
    .registers 25

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    const/4 v4, 0x2

    aget v5, p0, v4

    const/4 v6, 0x3

    aget v7, p0, v6

    invoke-static/range {p1 .. p3}, Lcom/gameloft/android2d/iap/utils/MD5;->MD5_Decode([BI[I)V

    and-int v8, v3, v5

    not-int v9, v3

    and-int/2addr v9, v7

    or-int/2addr v8, v9

    aget v9, p3, v0

    add-int/2addr v8, v9

    const v9, -0x28955b88

    add-int/2addr v8, v9

    add-int/2addr v1, v8

    shl-int/lit8 v8, v1, 0x7

    ushr-int/lit8 v1, v1, 0x19

    or-int/2addr v1, v8

    add-int/2addr v1, v3

    and-int v8, v1, v3

    not-int v9, v1

    and-int/2addr v9, v5

    or-int/2addr v8, v9

    aget v9, p3, v2

    add-int/2addr v8, v9

    const v9, -0x173848aa

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    shl-int/lit8 v8, v7, 0xc

    ushr-int/lit8 v7, v7, 0x14

    or-int/2addr v7, v8

    add-int/2addr v7, v1

    and-int v8, v7, v1

    not-int v9, v7

    and-int/2addr v9, v3

    or-int/2addr v8, v9

    aget v9, p3, v4

    add-int/2addr v8, v9

    const v9, 0x242070db

    add-int/2addr v8, v9

    add-int/2addr v5, v8

    shl-int/lit8 v8, v5, 0x11

    const/16 v9, 0xf

    ushr-int/2addr v5, v9

    or-int/2addr v5, v8

    add-int/2addr v5, v7

    and-int v8, v5, v7

    not-int v10, v5

    and-int/2addr v10, v1

    or-int/2addr v8, v10

    aget v10, p3, v6

    add-int/2addr v8, v10

    const v10, -0x3e423112

    add-int/2addr v8, v10

    add-int/2addr v3, v8

    shl-int/lit8 v8, v3, 0x16

    const/16 v10, 0xa

    ushr-int/2addr v3, v10

    or-int/2addr v3, v8

    add-int/2addr v3, v5

    and-int v8, v3, v5

    not-int v11, v3

    and-int/2addr v11, v7

    or-int/2addr v8, v11

    const/4 v11, 0x4

    aget v12, p3, v11

    add-int/2addr v8, v12

    const v12, -0xa83f051

    add-int/2addr v8, v12

    add-int/2addr v1, v8

    shl-int/lit8 v8, v1, 0x7

    ushr-int/lit8 v1, v1, 0x19

    or-int/2addr v1, v8

    add-int/2addr v1, v3

    and-int v8, v1, v3

    not-int v12, v1

    and-int/2addr v12, v5

    or-int/2addr v8, v12

    const/4 v12, 0x5

    aget v13, p3, v12

    add-int/2addr v8, v13

    const v13, 0x4787c62a

    add-int/2addr v8, v13

    add-int/2addr v7, v8

    shl-int/lit8 v8, v7, 0xc

    ushr-int/lit8 v7, v7, 0x14

    or-int/2addr v7, v8

    add-int/2addr v7, v1

    and-int v8, v7, v1

    not-int v13, v7

    and-int/2addr v13, v3

    or-int/2addr v8, v13

    const/4 v13, 0x6

    aget v14, p3, v13

    add-int/2addr v8, v14

    const v14, -0x57cfb9ed

    add-int/2addr v8, v14

    add-int/2addr v5, v8

    shl-int/lit8 v8, v5, 0x11

    ushr-int/2addr v5, v9

    or-int/2addr v5, v8

    add-int/2addr v5, v7

    and-int v8, v5, v7

    not-int v14, v5

    and-int/2addr v14, v1

    or-int/2addr v8, v14

    const/4 v14, 0x7

    aget v15, p3, v14

    add-int/2addr v8, v15

    const v15, -0x2b96aff

    add-int/2addr v8, v15

    add-int/2addr v3, v8

    shl-int/lit8 v8, v3, 0x16

    ushr-int/2addr v3, v10

    or-int/2addr v3, v8

    add-int/2addr v3, v5

    and-int v8, v3, v5

    not-int v15, v3

    and-int/2addr v15, v7

    or-int/2addr v8, v15

    const/16 v15, 0x8

    aget v16, p3, v15

    add-int v8, v8, v16

    const v16, 0x698098d8

    add-int v8, v8, v16

    add-int/2addr v1, v8

    shl-int/lit8 v8, v1, 0x7

    ushr-int/lit8 v1, v1, 0x19

    or-int/2addr v1, v8

    add-int/2addr v1, v3

    and-int v8, v1, v3

    not-int v14, v1

    and-int/2addr v14, v5

    or-int/2addr v8, v14

    const/16 v14, 0x9

    aget v16, p3, v14

    add-int v8, v8, v16

    const v16, -0x74bb0851

    add-int v8, v8, v16

    add-int/2addr v7, v8

    shl-int/lit8 v8, v7, 0xc

    ushr-int/lit8 v7, v7, 0x14

    or-int/2addr v7, v8

    add-int/2addr v7, v1

    and-int v8, v7, v1

    not-int v4, v7

    and-int/2addr v4, v3

    or-int/2addr v4, v8

    aget v8, p3, v10

    add-int/2addr v4, v8

    const v8, -0xa44f

    add-int/2addr v4, v8

    add-int/2addr v5, v4

    shl-int/lit8 v4, v5, 0x11

    ushr-int/2addr v5, v9

    or-int/2addr v4, v5

    add-int/2addr v4, v7

    and-int v5, v4, v7

    not-int v8, v4

    and-int/2addr v8, v1

    or-int/2addr v5, v8

    const/16 v8, 0xb

    aget v17, p3, v8

    add-int v5, v5, v17

    const v17, -0x76a32842

    add-int v5, v5, v17

    add-int/2addr v3, v5

    shl-int/lit8 v5, v3, 0x16

    ushr-int/2addr v3, v10

    or-int/2addr v3, v5

    add-int/2addr v3, v4

    and-int v5, v3, v4

    not-int v15, v3

    and-int/2addr v15, v7

    or-int/2addr v5, v15

    const/16 v15, 0xc

    aget v17, p3, v15

    add-int v5, v5, v17

    const v17, 0x6b901122

    add-int v5, v5, v17

    add-int/2addr v1, v5

    shl-int/lit8 v5, v1, 0x7

    ushr-int/lit8 v1, v1, 0x19

    or-int/2addr v1, v5

    add-int/2addr v1, v3

    and-int v5, v1, v3

    not-int v6, v1

    and-int/2addr v6, v4

    or-int/2addr v5, v6

    const/16 v6, 0xd

    aget v6, p3, v6

    add-int/2addr v5, v6

    const v6, -0x2678e6d

    add-int/2addr v5, v6

    add-int/2addr v7, v5

    shl-int/lit8 v5, v7, 0xc

    ushr-int/lit8 v6, v7, 0x14

    or-int/2addr v5, v6

    add-int/2addr v5, v1

    and-int v6, v5, v1

    not-int v7, v5

    and-int v18, v7, v3

    or-int v6, v6, v18

    const/16 v18, 0xe

    aget v19, p3, v18

    add-int v6, v6, v19

    const v19, -0x5986bc72

    add-int v6, v6, v19

    add-int/2addr v4, v6

    shl-int/lit8 v6, v4, 0x11

    ushr-int/2addr v4, v9

    or-int/2addr v4, v6

    add-int/2addr v4, v5

    and-int v6, v4, v5

    not-int v14, v4

    and-int v20, v14, v1

    or-int v6, v6, v20

    aget v20, p3, v9

    add-int v6, v6, v20

    const v20, 0x49b40821

    add-int v6, v6, v20

    add-int/2addr v3, v6

    shl-int/lit8 v6, v3, 0x16

    ushr-int/2addr v3, v10

    or-int/2addr v3, v6

    add-int/2addr v3, v4

    and-int v6, v3, v5

    and-int/2addr v7, v4

    or-int/2addr v6, v7

    aget v7, p3, v2

    add-int/2addr v6, v7

    const v7, -0x9e1da9e

    add-int/2addr v6, v7

    add-int/2addr v1, v6

    shl-int/lit8 v6, v1, 0x5

    ushr-int/lit8 v1, v1, 0x1b

    or-int/2addr v1, v6

    add-int/2addr v1, v3

    and-int v6, v1, v4

    and-int v7, v3, v14

    or-int/2addr v6, v7

    aget v7, p3, v13

    add-int/2addr v6, v7

    const v7, -0x3fbf4cc0

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    shl-int/lit8 v6, v5, 0x9

    ushr-int/lit8 v5, v5, 0x17

    or-int/2addr v5, v6

    add-int/2addr v5, v1

    and-int v6, v5, v3

    not-int v7, v3

    and-int/2addr v7, v1

    or-int/2addr v6, v7

    aget v7, p3, v8

    add-int/2addr v6, v7

    const v7, 0x265e5a51

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    shl-int/lit8 v6, v4, 0xe

    ushr-int/lit8 v4, v4, 0x12

    or-int/2addr v4, v6

    add-int/2addr v4, v5

    and-int v6, v4, v1

    not-int v7, v1

    and-int/2addr v7, v5

    or-int/2addr v6, v7

    aget v7, p3, v0

    add-int/2addr v6, v7

    const v7, -0x16493856

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    shl-int/lit8 v6, v3, 0x14

    ushr-int/2addr v3, v15

    or-int/2addr v3, v6

    add-int/2addr v3, v4

    and-int v6, v3, v5

    not-int v7, v5

    and-int/2addr v7, v4

    or-int/2addr v6, v7

    aget v7, p3, v12

    add-int/2addr v6, v7

    const v7, -0x29d0efa3

    add-int/2addr v6, v7

    add-int/2addr v1, v6

    shl-int/lit8 v6, v1, 0x5

    ushr-int/lit8 v1, v1, 0x1b

    or-int/2addr v1, v6

    add-int/2addr v1, v3

    and-int v6, v1, v4

    not-int v7, v4

    and-int/2addr v7, v3

    or-int/2addr v6, v7

    aget v7, p3, v10

    add-int/2addr v6, v7

    const v7, 0x2441453

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    shl-int/lit8 v6, v5, 0x9

    ushr-int/lit8 v5, v5, 0x17

    or-int/2addr v5, v6

    add-int/2addr v5, v1

    and-int v6, v5, v3

    not-int v7, v3

    and-int/2addr v7, v1

    or-int/2addr v6, v7

    aget v7, p3, v9

    add-int/2addr v6, v7

    const v7, -0x275e197f

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    shl-int/lit8 v6, v4, 0xe

    ushr-int/lit8 v4, v4, 0x12

    or-int/2addr v4, v6

    add-int/2addr v4, v5

    and-int v6, v4, v1

    not-int v7, v1

    and-int/2addr v7, v5

    or-int/2addr v6, v7

    aget v7, p3, v11

    add-int/2addr v6, v7

    const v7, -0x182c0438

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    shl-int/lit8 v6, v3, 0x14

    ushr-int/2addr v3, v15

    or-int/2addr v3, v6

    add-int/2addr v3, v4

    and-int v6, v3, v5

    not-int v7, v5

    and-int/2addr v7, v4

    or-int/2addr v6, v7

    const/16 v7, 0x9

    aget v14, p3, v7

    add-int/2addr v6, v14

    const v7, 0x21e1cde6

    add-int/2addr v6, v7

    add-int/2addr v1, v6

    shl-int/lit8 v6, v1, 0x5

    ushr-int/lit8 v1, v1, 0x1b

    or-int/2addr v1, v6

    add-int/2addr v1, v3

    and-int v6, v1, v4

    not-int v7, v4

    and-int/2addr v7, v3

    or-int/2addr v6, v7

    aget v7, p3, v18

    add-int/2addr v6, v7

    const v7, -0x3cc8f82a

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    shl-int/lit8 v6, v5, 0x9

    ushr-int/lit8 v5, v5, 0x17

    or-int/2addr v5, v6

    add-int/2addr v5, v1

    and-int v6, v5, v3

    not-int v7, v3

    and-int/2addr v7, v1

    or-int/2addr v6, v7

    const/4 v7, 0x3

    aget v14, p3, v7

    add-int/2addr v6, v14

    const v7, -0xb2af279

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    shl-int/lit8 v6, v4, 0xe

    ushr-int/lit8 v4, v4, 0x12

    or-int/2addr v4, v6

    add-int/2addr v4, v5

    and-int v6, v4, v1

    not-int v7, v1

    and-int/2addr v7, v5

    or-int/2addr v6, v7

    const/16 v7, 0x8

    aget v14, p3, v7

    add-int/2addr v6, v14

    const v7, 0x455a14ed

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    shl-int/lit8 v6, v3, 0x14

    ushr-int/2addr v3, v15

    or-int/2addr v3, v6

    add-int/2addr v3, v4

    and-int v6, v3, v5

    not-int v7, v5

    and-int/2addr v7, v4

    or-int/2addr v6, v7

    const/16 v7, 0xd

    aget v7, p3, v7

    add-int/2addr v6, v7

    const v7, -0x561c16fb

    add-int/2addr v6, v7

    add-int/2addr v1, v6

    shl-int/lit8 v6, v1, 0x5

    ushr-int/lit8 v1, v1, 0x1b

    or-int/2addr v1, v6

    add-int/2addr v1, v3

    and-int v6, v1, v4

    not-int v7, v4

    and-int/2addr v7, v3

    or-int/2addr v6, v7

    const/4 v7, 0x2

    aget v14, p3, v7

    add-int/2addr v6, v14

    const v7, -0x3105c08

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    shl-int/lit8 v6, v5, 0x9

    ushr-int/lit8 v5, v5, 0x17

    or-int/2addr v5, v6

    add-int/2addr v5, v1

    and-int v6, v5, v3

    not-int v7, v3

    and-int/2addr v7, v1

    or-int/2addr v6, v7

    const/4 v7, 0x7

    aget v14, p3, v7

    add-int/2addr v6, v14

    const v7, 0x676f02d9

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    shl-int/lit8 v6, v4, 0xe

    ushr-int/lit8 v4, v4, 0x12

    or-int/2addr v4, v6

    add-int/2addr v4, v5

    and-int v6, v4, v1

    not-int v7, v1

    and-int/2addr v7, v5

    or-int/2addr v6, v7

    aget v7, p3, v15

    add-int/2addr v6, v7

    const v7, -0x72d5b376

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    shl-int/lit8 v6, v3, 0x14

    ushr-int/2addr v3, v15

    or-int/2addr v3, v6

    add-int/2addr v3, v4

    xor-int v6, v3, v4

    xor-int/2addr v6, v5

    aget v7, p3, v12

    add-int/2addr v6, v7

    const v7, -0x5c6be

    add-int/2addr v6, v7

    add-int/2addr v1, v6

    shl-int/lit8 v6, v1, 0x4

    ushr-int/lit8 v1, v1, 0x1c

    or-int/2addr v1, v6

    add-int/2addr v1, v3

    xor-int v6, v1, v3

    xor-int/2addr v6, v4

    const/16 v7, 0x8

    aget v14, p3, v7

    add-int/2addr v6, v14

    const v7, -0x788e097f

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    shl-int/lit8 v6, v5, 0xb

    ushr-int/lit8 v5, v5, 0x15

    or-int/2addr v5, v6

    add-int/2addr v5, v1

    xor-int v6, v5, v1

    xor-int/2addr v6, v3

    aget v7, p3, v8

    add-int/2addr v6, v7

    const v7, 0x6d9d6122

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    shl-int/lit8 v6, v4, 0x10

    ushr-int/lit8 v4, v4, 0x10

    or-int/2addr v4, v6

    add-int/2addr v4, v5

    xor-int v6, v4, v5

    xor-int/2addr v6, v1

    aget v7, p3, v18

    add-int/2addr v6, v7

    const v7, -0x21ac7f4

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    shl-int/lit8 v6, v3, 0x17

    const/16 v7, 0x9

    ushr-int/2addr v3, v7

    or-int/2addr v3, v6

    add-int/2addr v3, v4

    xor-int v6, v3, v4

    xor-int/2addr v6, v5

    aget v7, p3, v2

    add-int/2addr v6, v7

    const v7, -0x5b4115bc

    add-int/2addr v6, v7

    add-int/2addr v1, v6

    shl-int/lit8 v6, v1, 0x4

    ushr-int/lit8 v1, v1, 0x1c

    or-int/2addr v1, v6

    add-int/2addr v1, v3

    xor-int v6, v1, v3

    xor-int/2addr v6, v4

    aget v7, p3, v11

    add-int/2addr v6, v7

    const v7, 0x4bdecfa9    # 2.9204306E7f

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    shl-int/lit8 v6, v5, 0xb

    ushr-int/lit8 v5, v5, 0x15

    or-int/2addr v5, v6

    add-int/2addr v5, v1

    xor-int v6, v5, v1

    xor-int/2addr v6, v3

    const/4 v7, 0x7

    aget v14, p3, v7

    add-int/2addr v6, v14

    const v7, -0x944b4a0

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    shl-int/lit8 v6, v4, 0x10

    ushr-int/lit8 v4, v4, 0x10

    or-int/2addr v4, v6

    add-int/2addr v4, v5

    xor-int v6, v4, v5

    xor-int/2addr v6, v1

    aget v7, p3, v10

    add-int/2addr v6, v7

    const v7, -0x41404390

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    shl-int/lit8 v6, v3, 0x17

    const/16 v7, 0x9

    ushr-int/2addr v3, v7

    or-int/2addr v3, v6

    add-int/2addr v3, v4

    xor-int v6, v3, v4

    xor-int/2addr v6, v5

    const/16 v7, 0xd

    aget v7, p3, v7

    add-int/2addr v6, v7

    const v7, 0x289b7ec6

    add-int/2addr v6, v7

    add-int/2addr v1, v6

    shl-int/lit8 v6, v1, 0x4

    ushr-int/lit8 v1, v1, 0x1c

    or-int/2addr v1, v6

    add-int/2addr v1, v3

    xor-int v6, v1, v3

    xor-int/2addr v6, v4

    aget v7, p3, v0

    add-int/2addr v6, v7

    const v7, -0x155ed806

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    shl-int/lit8 v6, v5, 0xb

    ushr-int/lit8 v5, v5, 0x15

    or-int/2addr v5, v6

    add-int/2addr v5, v1

    xor-int v6, v5, v1

    xor-int/2addr v6, v3

    const/4 v7, 0x3

    aget v14, p3, v7

    add-int/2addr v6, v14

    const v7, -0x2b10cf7b

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    shl-int/lit8 v6, v4, 0x10

    ushr-int/lit8 v4, v4, 0x10

    or-int/2addr v4, v6

    add-int/2addr v4, v5

    xor-int v6, v4, v5

    xor-int/2addr v6, v1

    aget v7, p3, v13

    add-int/2addr v6, v7

    const v7, 0x4881d05    # 3.2000097E-36f

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    shl-int/lit8 v6, v3, 0x17

    const/16 v7, 0x9

    ushr-int/2addr v3, v7

    or-int/2addr v3, v6

    add-int/2addr v3, v4

    xor-int v6, v3, v4

    xor-int/2addr v6, v5

    aget v14, p3, v7

    add-int/2addr v6, v14

    const v7, -0x262b2fc7

    add-int/2addr v6, v7

    add-int/2addr v1, v6

    shl-int/lit8 v6, v1, 0x4

    ushr-int/lit8 v1, v1, 0x1c

    or-int/2addr v1, v6

    add-int/2addr v1, v3

    xor-int v6, v1, v3

    xor-int/2addr v6, v4

    aget v7, p3, v15

    add-int/2addr v6, v7

    const v7, -0x1924661b

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    shl-int/lit8 v6, v5, 0xb

    ushr-int/lit8 v5, v5, 0x15

    or-int/2addr v5, v6

    add-int/2addr v5, v1

    xor-int v6, v5, v1

    xor-int/2addr v6, v3

    aget v7, p3, v9

    add-int/2addr v6, v7

    const v7, 0x1fa27cf8

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    shl-int/lit8 v6, v4, 0x10

    ushr-int/lit8 v4, v4, 0x10

    or-int/2addr v4, v6

    add-int/2addr v4, v5

    xor-int v6, v4, v5

    xor-int/2addr v6, v1

    const/4 v7, 0x2

    aget v14, p3, v7

    add-int/2addr v6, v14

    const v7, -0x3b53a99b

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    shl-int/lit8 v6, v3, 0x17

    const/16 v7, 0x9

    ushr-int/2addr v3, v7

    or-int/2addr v3, v6

    add-int/2addr v3, v4

    not-int v6, v5

    or-int/2addr v6, v3

    xor-int/2addr v6, v4

    aget v7, p3, v0

    add-int/2addr v6, v7

    const v7, -0xbd6ddbc

    add-int/2addr v6, v7

    add-int/2addr v1, v6

    shl-int/lit8 v6, v1, 0x6

    ushr-int/lit8 v1, v1, 0x1a

    or-int/2addr v1, v6

    add-int/2addr v1, v3

    not-int v6, v4

    or-int/2addr v6, v1

    xor-int/2addr v6, v3

    const/4 v7, 0x7

    aget v7, p3, v7

    add-int/2addr v6, v7

    const v7, 0x432aff97

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    shl-int/lit8 v6, v5, 0xa

    ushr-int/lit8 v5, v5, 0x16

    or-int/2addr v5, v6

    add-int/2addr v5, v1

    not-int v6, v3

    or-int/2addr v6, v5

    xor-int/2addr v6, v1

    aget v7, p3, v18

    add-int/2addr v6, v7

    const v7, -0x546bdc59

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    shl-int/lit8 v6, v4, 0xf

    ushr-int/lit8 v4, v4, 0x11

    or-int/2addr v4, v6

    add-int/2addr v4, v5

    not-int v6, v1

    or-int/2addr v6, v4

    xor-int/2addr v6, v5

    aget v7, p3, v12

    add-int/2addr v6, v7

    const v7, -0x36c5fc7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    shl-int/lit8 v6, v3, 0x15

    ushr-int/2addr v3, v8

    or-int/2addr v3, v6

    add-int/2addr v3, v4

    not-int v6, v5

    or-int/2addr v6, v3

    xor-int/2addr v6, v4

    aget v7, p3, v15

    add-int/2addr v6, v7

    const v7, 0x655b59c3

    add-int/2addr v6, v7

    add-int/2addr v1, v6

    shl-int/lit8 v6, v1, 0x6

    ushr-int/lit8 v1, v1, 0x1a

    or-int/2addr v1, v6

    add-int/2addr v1, v3

    not-int v6, v4

    or-int/2addr v6, v1

    xor-int/2addr v6, v3

    const/4 v7, 0x3

    aget v12, p3, v7

    add-int/2addr v6, v12

    const v7, -0x70f3336e

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    shl-int/lit8 v6, v5, 0xa

    ushr-int/lit8 v5, v5, 0x16

    or-int/2addr v5, v6

    add-int/2addr v5, v1

    not-int v6, v3

    or-int/2addr v6, v5

    xor-int/2addr v6, v1

    aget v7, p3, v10

    add-int/2addr v6, v7

    const v7, -0x100b83

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    shl-int/lit8 v6, v4, 0xf

    ushr-int/lit8 v4, v4, 0x11

    or-int/2addr v4, v6

    add-int/2addr v4, v5

    not-int v6, v1

    or-int/2addr v6, v4

    xor-int/2addr v6, v5

    aget v7, p3, v2

    add-int/2addr v6, v7

    const v7, -0x7a7ba22f

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    shl-int/lit8 v6, v3, 0x15

    ushr-int/2addr v3, v8

    or-int/2addr v3, v6

    add-int/2addr v3, v4

    not-int v6, v5

    or-int/2addr v6, v3

    xor-int/2addr v6, v4

    const/16 v7, 0x8

    aget v7, p3, v7

    add-int/2addr v6, v7

    const v7, 0x6fa87e4f

    add-int/2addr v6, v7

    add-int/2addr v1, v6

    shl-int/lit8 v6, v1, 0x6

    ushr-int/lit8 v1, v1, 0x1a

    or-int/2addr v1, v6

    add-int/2addr v1, v3

    not-int v6, v4

    or-int/2addr v6, v1

    xor-int/2addr v6, v3

    aget v7, p3, v9

    add-int/2addr v6, v7

    const v7, -0x1d31920

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    shl-int/lit8 v6, v5, 0xa

    ushr-int/lit8 v5, v5, 0x16

    or-int/2addr v5, v6

    add-int/2addr v5, v1

    not-int v6, v3

    or-int/2addr v6, v5

    xor-int/2addr v6, v1

    aget v7, p3, v13

    add-int/2addr v6, v7

    const v7, -0x5cfebcec

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    shl-int/lit8 v6, v4, 0xf

    ushr-int/lit8 v4, v4, 0x11

    or-int/2addr v4, v6

    add-int/2addr v4, v5

    not-int v6, v1

    or-int/2addr v6, v4

    xor-int/2addr v6, v5

    const/16 v7, 0xd

    aget v7, p3, v7

    add-int/2addr v6, v7

    const v7, 0x4e0811a1    # 5.707142E8f

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    shl-int/lit8 v6, v3, 0x15

    ushr-int/2addr v3, v8

    or-int/2addr v3, v6

    add-int/2addr v3, v4

    not-int v6, v5

    or-int/2addr v6, v3

    xor-int/2addr v6, v4

    aget v7, p3, v11

    add-int/2addr v6, v7

    const v7, -0x8ac817e

    add-int/2addr v6, v7

    add-int/2addr v1, v6

    shl-int/lit8 v6, v1, 0x6

    ushr-int/lit8 v1, v1, 0x1a

    or-int/2addr v1, v6

    add-int/2addr v1, v3

    not-int v6, v4

    or-int/2addr v6, v1

    xor-int/2addr v6, v3

    aget v7, p3, v8

    add-int/2addr v6, v7

    const v7, -0x42c50dcb

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    shl-int/lit8 v6, v5, 0xa

    ushr-int/lit8 v5, v5, 0x16

    or-int/2addr v5, v6

    add-int/2addr v5, v1

    not-int v6, v3

    or-int/2addr v6, v5

    xor-int/2addr v6, v1

    const/4 v7, 0x2

    aget v9, p3, v7

    add-int/2addr v6, v9

    const v7, 0x2ad7d2bb

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    shl-int/lit8 v6, v4, 0xf

    ushr-int/lit8 v4, v4, 0x11

    or-int/2addr v4, v6

    add-int/2addr v4, v5

    not-int v6, v1

    or-int/2addr v6, v4

    xor-int/2addr v6, v5

    const/16 v7, 0x9

    aget v7, p3, v7

    add-int/2addr v6, v7

    const v7, -0x14792c6f

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    shl-int/lit8 v6, v3, 0x15

    ushr-int/2addr v3, v8

    or-int/2addr v3, v6

    add-int/2addr v3, v4

    aget v6, p0, v0

    add-int/2addr v6, v1

    aput v6, p0, v0

    aget v0, p0, v2

    add-int/2addr v0, v3

    aput v0, p0, v2

    const/4 v0, 0x2

    aget v1, p0, v0

    add-int/2addr v1, v4

    aput v1, p0, v0

    const/4 v0, 0x3

    aget v1, p0, v0

    add-int/2addr v1, v5

    aput v1, p0, v0

    return-void
.end method

.method public static MD5_Update(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-nez p1, :cond_4

    const-string p1, "ISO8859_1"

    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    sget-object v0, Lcom/gameloft/android2d/iap/utils/MD5;->e:[B

    sget-object v1, Lcom/gameloft/android2d/iap/utils/MD5;->a:[I

    sget-object v2, Lcom/gameloft/android2d/iap/utils/MD5;->c:[J

    const/4 v4, 0x0

    array-length v5, v3

    invoke-static/range {v0 .. v5}, Lcom/gameloft/android2d/iap/utils/MD5;->MD5_Update([B[I[J[BII)V

    return-void
.end method

.method private static MD5_Update([B[I[J[BII)V
    .registers 13

    sub-int v0, p5, p4

    array-length v1, p3

    if-le v0, v1, :cond_7

    array-length p5, p3

    sub-int/2addr p5, p4

    :cond_7
    const/4 v0, 0x0

    aget-wide v1, p2, v0

    const-wide/16 v3, 0x3f

    and-long/2addr v1, v3

    long-to-int v2, v1

    aget-wide v3, p2, v0

    int-to-long v5, p5

    add-long/2addr v3, v5

    aput-wide v3, p2, v0

    rsub-int/lit8 p2, v2, 0x40

    if-lt p5, p2, :cond_41

    const/16 v1, 0x10

    new-array v1, v1, [I

    const/16 v3, 0x40

    if-ne p2, v3, :cond_22

    const/4 p2, 0x0

    goto :goto_33

    :cond_22
    const/4 v3, 0x0

    :goto_23
    if-ge v3, p2, :cond_30

    add-int v4, v3, v2

    add-int v5, v3, p4

    aget-byte v5, p3, v5

    aput-byte v5, p0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_30
    invoke-static {p1, p0, v0, v1}, Lcom/gameloft/android2d/iap/utils/MD5;->MD5_Transform([I[BI[I)V

    :goto_33
    add-int/lit8 v2, p2, 0x3f

    if-ge v2, p5, :cond_3f

    add-int v2, p2, p4

    invoke-static {p1, p3, v2, v1}, Lcom/gameloft/android2d/iap/utils/MD5;->MD5_Transform([I[BI[I)V

    add-int/lit8 p2, p2, 0x40

    goto :goto_33

    :cond_3f
    move v0, p2

    const/4 v2, 0x0

    :cond_41
    if-ge v0, p5, :cond_52

    move p1, v0

    :goto_44
    if-ge p1, p5, :cond_52

    add-int p2, v2, p1

    sub-int/2addr p2, v0

    add-int v1, p1, p4

    aget-byte v1, p3, v1

    aput-byte v1, p0, p2

    add-int/lit8 p1, p1, 0x1

    goto :goto_44

    :cond_52
    return-void
.end method
