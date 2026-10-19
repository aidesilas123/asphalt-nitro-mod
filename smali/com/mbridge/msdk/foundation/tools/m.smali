###### Class com.mbridge.msdk.foundation.tools.m (com.mbridge.msdk.foundation.tools.m)
.class public final Lcom/mbridge/msdk/foundation/tools/m;
.super Ljava/lang/Object;
.source "FastBuffer.java"


# instance fields
.field public a:[B

.field public b:I

.field private c:[C


# direct methods
.method public constructor <init>(I)V
    .registers 3

    new-array p1, p1, [B

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mbridge/msdk/foundation/tools/m;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mbridge/msdk/foundation/tools/m;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/tools/m;->c:[C

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/tools/m;->a:[B

    iput p2, p0, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    return-void
.end method

.method public static b(Ljava/lang/String;)I
    .registers 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v1, v0, :cond_30

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x80

    if-ge v1, v4, :cond_16

    add-int/lit8 v2, v2, 0x1

    :goto_14
    move v1, v3

    goto :goto_6

    :cond_16
    const/16 v4, 0x800

    if-ge v1, v4, :cond_1d

    add-int/lit8 v2, v2, 0x2

    goto :goto_14

    :cond_1d
    const v4, 0xd800

    if-lt v1, v4, :cond_2d

    const v4, 0xdfff

    if-le v1, v4, :cond_28

    goto :goto_2d

    :cond_28
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x4

    goto :goto_14

    :cond_2d
    :goto_2d
    add-int/lit8 v2, v2, 0x3

    goto :goto_14

    :cond_30
    return v2
.end method

.method private c(I)J
    .registers 10

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/tools/m;->a:[B

    add-int/lit8 v1, p1, 0x1

    aget-byte p1, v0, p1

    int-to-long v2, p1

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    add-int/lit8 p1, v1, 0x1

    aget-byte v1, v0, v1

    int-to-long v6, v1

    and-long/2addr v6, v4

    const/16 v1, 0x8

    shl-long/2addr v6, v1

    or-long v1, v2, v6

    add-int/lit8 v3, p1, 0x1

    aget-byte p1, v0, p1

    int-to-long v6, p1

    and-long/2addr v6, v4

    const/16 p1, 0x10

    shl-long/2addr v6, p1

    or-long/2addr v1, v6

    add-int/lit8 p1, v3, 0x1

    aget-byte v3, v0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    const/16 v3, 0x18

    shl-long/2addr v6, v3

    or-long/2addr v1, v6

    add-int/lit8 v3, p1, 0x1

    aget-byte p1, v0, p1

    int-to-long v6, p1

    and-long/2addr v6, v4

    const/16 p1, 0x20

    shl-long/2addr v6, p1

    or-long/2addr v1, v6

    add-int/lit8 p1, v3, 0x1

    aget-byte v3, v0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    const/16 v3, 0x28

    shl-long/2addr v6, v3

    or-long/2addr v1, v6

    add-int/lit8 v3, p1, 0x1

    aget-byte p1, v0, p1

    int-to-long v6, p1

    and-long/2addr v4, v6

    const/16 p1, 0x30

    shl-long/2addr v4, p1

    or-long/2addr v1, v4

    aget-byte p1, v0, v3

    int-to-long v3, p1

    const/16 p1, 0x38

    shl-long/2addr v3, p1

    or-long v0, v1, v3

    return-wide v0
.end method


# virtual methods
.method public final a()B
    .registers 4

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/tools/m;->a:[B

    iget v1, p0, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public final a(B)V
    .registers 5

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/tools/m;->a:[B

    iget v1, p0, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public final a(I)V
    .registers 6

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/tools/m;->a:[B

    iget v1, p0, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    int-to-byte v3, p1

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    return-void
.end method

.method public final a(II)V
    .registers 6

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/tools/m;->a:[B

    add-int/lit8 v1, p1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, p1

    add-int/lit8 p1, v1, 0x1

    shr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, p1, 0x1

    shr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, p1

    shr-int/lit8 p1, p2, 0x18

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method public final a(IJ)V
    .registers 8

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/tools/m;->a:[B

    add-int/lit8 v1, p1, 0x1

    long-to-int v2, p2

    int-to-byte v2, v2

    aput-byte v2, v0, p1

    add-int/lit8 p1, v1, 0x1

    const/16 v2, 0x8

    shr-long v2, p2, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x10

    shr-long v2, p2, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, p1

    add-int/lit8 p1, v1, 0x1

    const/16 v2, 0x18

    shr-long v2, p2, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x20

    shr-long v2, p2, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, p1

    add-int/lit8 p1, v1, 0x1

    const/16 v2, 0x28

    shr-long v2, p2, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x30

    shr-long v2, p2, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, p1

    const/16 p1, 0x38

    shr-long p1, p2, p1

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v0, v1

    return-void
.end method

.method public final a(J)V
    .registers 4

    iget v0, p0, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/mbridge/msdk/foundation/tools/m;->a(IJ)V

    iget p1, p0, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 10

    if-eqz p1, :cond_9c

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9c

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/tools/m;->a:[B

    iget v1, p0, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    :goto_11
    if-ge v2, v3, :cond_9a

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x80

    if-ge v2, v5, :cond_25

    add-int/lit8 v5, v1, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    move v2, v4

    move v1, v5

    goto :goto_11

    :cond_25
    const/16 v6, 0x800

    if-ge v2, v6, :cond_3c

    add-int/lit8 v6, v1, 0x1

    ushr-int/lit8 v7, v2, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v0, v1

    add-int/lit8 v1, v6, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v0, v6

    move v2, v4

    goto :goto_11

    :cond_3c
    const v6, 0xd800

    if-lt v2, v6, :cond_7b

    const v6, 0xdfff

    if-le v2, v6, :cond_47

    goto :goto_7b

    :cond_47
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    shl-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v4

    const v4, -0x35fdc00

    add-int/2addr v2, v4

    add-int/lit8 v4, v1, 0x1

    ushr-int/lit8 v7, v2, 0x12

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    aput-byte v7, v0, v1

    add-int/lit8 v1, v4, 0x1

    ushr-int/lit8 v7, v2, 0xc

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v5

    int-to-byte v7, v7

    aput-byte v7, v0, v4

    add-int/lit8 v4, v1, 0x1

    ushr-int/lit8 v7, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v5

    int-to-byte v7, v7

    aput-byte v7, v0, v1

    add-int/lit8 v1, v4, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    move v2, v6

    goto :goto_11

    :cond_7b
    :goto_7b
    add-int/lit8 v6, v1, 0x1

    ushr-int/lit8 v7, v2, 0xc

    or-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    aput-byte v7, v0, v1

    add-int/lit8 v1, v6, 0x1

    ushr-int/lit8 v7, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v5

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    add-int/lit8 v6, v1, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    move v2, v4

    move v1, v6

    goto/16 :goto_11

    :cond_9a
    iput v1, p0, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    :cond_9c
    return-void
.end method

.method public final a(S)V
    .registers 6

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/tools/m;->a:[B

    iget v1, p0, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    int-to-byte v3, p1

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    shr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    return-void
.end method

.method public final a([B)V
    .registers 6

    array-length v0, p1

    if-lez v0, :cond_10

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/tools/m;->a:[B

    iget v3, p0, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    :cond_10
    return-void
.end method

.method final b(II)J
    .registers 12

    const-wide/16 v0, 0x0

    if-gtz p2, :cond_5

    return-wide v0

    :cond_5
    shr-int/lit8 v2, p2, 0x3

    and-int/lit8 p2, p2, 0x7

    const/4 v3, 0x0

    move v5, p1

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v2, :cond_18

    invoke-direct {p0, v5}, Lcom/mbridge/msdk/foundation/tools/m;->c(I)J

    move-result-wide v6

    xor-long/2addr v0, v6

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_18
    shl-int/lit8 p2, p2, 0x3

    :goto_1a
    if-ge v3, p2, :cond_2c

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/tools/m;->a:[B

    add-int/lit8 v4, v5, 0x1

    aget-byte v2, v2, v5

    int-to-long v5, v2

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    shl-long/2addr v5, v3

    xor-long/2addr v0, v5

    add-int/lit8 v3, v3, 0x8

    move v5, v4

    goto :goto_1a

    :cond_2c
    and-int/lit8 p1, p1, 0x7

    shl-int/lit8 p1, p1, 0x3

    shl-long v2, v0, p1

    rsub-int/lit8 p1, p1, 0x40

    ushr-long p1, v0, p1

    or-long/2addr p1, v2

    return-wide p1
.end method

.method public final b(I)Ljava/lang/String;
    .registers 12

    if-gez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    if-nez p1, :cond_9

    const-string p1, ""

    return-object p1

    :cond_9
    const/16 v0, 0x800

    if-le p1, v0, :cond_2b

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_20

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/tools/m;->a:[B

    iget v2, p0, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto/16 :goto_d2

    :cond_20
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/tools/m;->a:[B

    iget v2, p0, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([BII)V

    goto/16 :goto_d2

    :cond_2b
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/tools/m;->c:[C

    if-nez v1, :cond_3d

    const/16 v1, 0x100

    if-gt p1, v1, :cond_38

    new-array v0, v1, [C

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/tools/m;->c:[C

    goto :goto_44

    :cond_38
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/tools/m;->c:[C

    goto :goto_44

    :cond_3d
    array-length v1, v1

    if-ge v1, p1, :cond_44

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/tools/m;->c:[C

    :cond_44
    :goto_44
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/tools/m;->c:[C

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/tools/m;->a:[B

    iget v2, p0, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    add-int v3, v2, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_4e
    if-ge v2, v3, :cond_ca

    add-int/lit8 v6, v2, 0x1

    aget-byte v2, v1, v2

    if-lez v2, :cond_5e

    add-int/lit8 v7, v5, 0x1

    int-to-char v2, v2

    aput-char v2, v0, v5

    move v2, v6

    move v5, v7

    goto :goto_4e

    :cond_5e
    const/16 v7, -0x20

    if-ge v2, v7, :cond_75

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, v1, v6

    add-int/lit8 v8, v5, 0x1

    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v2, v6

    int-to-char v2, v2

    aput-char v2, v0, v5

    move v2, v7

    move v5, v8

    goto :goto_4e

    :cond_75
    const/16 v7, -0x10

    if-ge v2, v7, :cond_95

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, v1, v6

    add-int/lit8 v8, v7, 0x1

    aget-byte v7, v1, v7

    add-int/lit8 v9, v5, 0x1

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0xc

    and-int/lit8 v6, v6, 0x3f

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v2, v6

    and-int/lit8 v6, v7, 0x3f

    or-int/2addr v2, v6

    int-to-char v2, v2

    aput-char v2, v0, v5

    move v2, v8

    move v5, v9

    goto :goto_4e

    :cond_95
    add-int/lit8 v7, v6, 0x1

    aget-byte v6, v1, v6

    add-int/lit8 v8, v7, 0x1

    aget-byte v7, v1, v7

    add-int/lit8 v9, v8, 0x1

    aget-byte v8, v1, v8

    and-int/lit8 v2, v2, 0x7

    shl-int/lit8 v2, v2, 0x12

    and-int/lit8 v6, v6, 0x3f

    shl-int/lit8 v6, v6, 0xc

    or-int/2addr v2, v6

    and-int/lit8 v6, v7, 0x3f

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v2, v6

    and-int/lit8 v6, v8, 0x3f

    or-int/2addr v2, v6

    add-int/lit8 v6, v5, 0x1

    const v7, 0xd7c0

    ushr-int/lit8 v8, v2, 0xa

    add-int/2addr v8, v7

    int-to-char v7, v8

    aput-char v7, v0, v5

    add-int/lit8 v5, v6, 0x1

    const v7, 0xdc00

    and-int/lit16 v2, v2, 0x3ff

    add-int/2addr v2, v7

    int-to-char v2, v2

    aput-char v2, v0, v6

    move v2, v9

    goto :goto_4e

    :cond_ca
    if-gt v2, v3, :cond_d8

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v4, v5}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v1

    :goto_d2
    iget v1, p0, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    return-object v0

    :cond_d8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid String"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()S
    .registers 5

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/tools/m;->a:[B

    iget v1, p0, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    aget-byte v0, v0, v2

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public final c()I
    .registers 5

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/tools/m;->a:[B

    iget v1, p0, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    aget-byte v0, v0, v2

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public final d()J
    .registers 4

    iget v0, p0, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/foundation/tools/m;->c(I)J

    move-result-wide v0

    iget v2, p0, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    return-wide v0
.end method
