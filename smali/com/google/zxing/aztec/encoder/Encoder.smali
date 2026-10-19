###### Class com.google.zxing.aztec.encoder.Encoder (com.google.zxing.aztec.encoder.Encoder)
.class public final Lcom/google/zxing/aztec/encoder/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x21

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/zxing/aztec/encoder/Encoder;->a:[I

    return-void

    :array_a
    .array-data 4
        0x4
        0x6
        0x6
        0x8
        0x8
        0x8
        0x8
        0x8
        0x8
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/zxing/common/a;II)[I
    .registers 10

    new-array p2, p2, [I

    invoke-virtual {p0}, Lcom/google/zxing/common/a;->i()I

    move-result v0

    div-int/2addr v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_29

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_d
    if-ge v3, p1, :cond_24

    mul-int v5, v2, p1

    add-int/2addr v5, v3

    invoke-virtual {p0, v5}, Lcom/google/zxing/common/a;->h(I)Z

    move-result v5

    if-eqz v5, :cond_1f

    sub-int v5, p1, v3

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    shl-int v5, v6, v5

    goto :goto_20

    :cond_1f
    const/4 v5, 0x0

    :goto_20
    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_24
    aput v4, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_29
    return-object p2
.end method

.method private static b(Lcom/google/zxing/common/BitMatrix;II)V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_1c

    sub-int v1, p1, v0

    move v2, v1

    :goto_6
    add-int v3, p1, v0

    if-gt v2, v3, :cond_19

    invoke-virtual {p0, v2, v1}, Lcom/google/zxing/common/BitMatrix;->i(II)V

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->i(II)V

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->i(II)V

    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->i(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_19
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1c
    sub-int v0, p1, p2

    invoke-virtual {p0, v0, v0}, Lcom/google/zxing/common/BitMatrix;->i(II)V

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/zxing/common/BitMatrix;->i(II)V

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->i(II)V

    add-int/2addr p1, p2

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/common/BitMatrix;->i(II)V

    invoke-virtual {p0, p1, v1}, Lcom/google/zxing/common/BitMatrix;->i(II)V

    add-int/lit8 p2, p1, -0x1

    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/common/BitMatrix;->i(II)V

    return-void
.end method

.method private static c(Lcom/google/zxing/common/BitMatrix;ZILcom/google/zxing/common/a;)V
    .registers 6

    div-int/lit8 p2, p2, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_40

    :goto_5
    const/4 p1, 0x7

    if-ge v0, p1, :cond_7f

    add-int/lit8 p1, p2, -0x3

    add-int/2addr p1, v0

    invoke-virtual {p3, v0}, Lcom/google/zxing/common/a;->h(I)Z

    move-result v1

    if-eqz v1, :cond_16

    add-int/lit8 v1, p2, -0x5

    invoke-virtual {p0, p1, v1}, Lcom/google/zxing/common/BitMatrix;->i(II)V

    :cond_16
    add-int/lit8 v1, v0, 0x7

    invoke-virtual {p3, v1}, Lcom/google/zxing/common/a;->h(I)Z

    move-result v1

    if-eqz v1, :cond_23

    add-int/lit8 v1, p2, 0x5

    invoke-virtual {p0, v1, p1}, Lcom/google/zxing/common/BitMatrix;->i(II)V

    :cond_23
    rsub-int/lit8 v1, v0, 0x14

    invoke-virtual {p3, v1}, Lcom/google/zxing/common/a;->h(I)Z

    move-result v1

    if-eqz v1, :cond_30

    add-int/lit8 v1, p2, 0x5

    invoke-virtual {p0, p1, v1}, Lcom/google/zxing/common/BitMatrix;->i(II)V

    :cond_30
    rsub-int/lit8 v1, v0, 0x1b

    invoke-virtual {p3, v1}, Lcom/google/zxing/common/a;->h(I)Z

    move-result v1

    if-eqz v1, :cond_3d

    add-int/lit8 v1, p2, -0x5

    invoke-virtual {p0, v1, p1}, Lcom/google/zxing/common/BitMatrix;->i(II)V

    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_40
    :goto_40
    const/16 p1, 0xa

    if-ge v0, p1, :cond_7f

    add-int/lit8 p1, p2, -0x5

    add-int/2addr p1, v0

    div-int/lit8 v1, v0, 0x5

    add-int/2addr p1, v1

    invoke-virtual {p3, v0}, Lcom/google/zxing/common/a;->h(I)Z

    move-result v1

    if-eqz v1, :cond_55

    add-int/lit8 v1, p2, -0x7

    invoke-virtual {p0, p1, v1}, Lcom/google/zxing/common/BitMatrix;->i(II)V

    :cond_55
    add-int/lit8 v1, v0, 0xa

    invoke-virtual {p3, v1}, Lcom/google/zxing/common/a;->h(I)Z

    move-result v1

    if-eqz v1, :cond_62

    add-int/lit8 v1, p2, 0x7

    invoke-virtual {p0, v1, p1}, Lcom/google/zxing/common/BitMatrix;->i(II)V

    :cond_62
    rsub-int/lit8 v1, v0, 0x1d

    invoke-virtual {p3, v1}, Lcom/google/zxing/common/a;->h(I)Z

    move-result v1

    if-eqz v1, :cond_6f

    add-int/lit8 v1, p2, 0x7

    invoke-virtual {p0, p1, v1}, Lcom/google/zxing/common/BitMatrix;->i(II)V

    :cond_6f
    rsub-int/lit8 v1, v0, 0x27

    invoke-virtual {p3, v1}, Lcom/google/zxing/common/a;->h(I)Z

    move-result v1

    if-eqz v1, :cond_7c

    add-int/lit8 v1, p2, -0x7

    invoke-virtual {p0, v1, p1}, Lcom/google/zxing/common/BitMatrix;->i(II)V

    :cond_7c
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_7f
    return-void
.end method

.method private static d(Lcom/google/zxing/common/a;II)Lcom/google/zxing/common/a;
    .registers 6

    invoke-virtual {p0}, Lcom/google/zxing/common/a;->i()I

    move-result v0

    div-int/2addr v0, p2

    new-instance v1, Lcom/google/zxing/common/h/c;

    invoke-static {p2}, Lcom/google/zxing/aztec/encoder/Encoder;->f(I)Lcom/google/zxing/common/h/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/zxing/common/h/c;-><init>(Lcom/google/zxing/common/h/a;)V

    div-int v2, p1, p2

    invoke-static {p0, p2, v2}, Lcom/google/zxing/aztec/encoder/Encoder;->a(Lcom/google/zxing/common/a;II)[I

    move-result-object p0

    sub-int/2addr v2, v0

    invoke-virtual {v1, p0, v2}, Lcom/google/zxing/common/h/c;->b([II)V

    rem-int/2addr p1, p2

    new-instance v0, Lcom/google/zxing/common/a;

    invoke-direct {v0}, Lcom/google/zxing/common/a;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/zxing/common/a;->e(II)V

    array-length p1, p0

    :goto_23
    if-ge v1, p1, :cond_2d

    aget v2, p0, v1

    invoke-virtual {v0, v2, p2}, Lcom/google/zxing/common/a;->e(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_2d
    return-object v0
.end method

.method static e(ZII)Lcom/google/zxing/common/a;
    .registers 5

    new-instance v0, Lcom/google/zxing/common/a;

    invoke-direct {v0}, Lcom/google/zxing/common/a;-><init>()V

    const/4 v1, 0x4

    if-eqz p0, :cond_1b

    add-int/lit8 p1, p1, -0x1

    const/4 p0, 0x2

    invoke-virtual {v0, p1, p0}, Lcom/google/zxing/common/a;->e(II)V

    add-int/lit8 p2, p2, -0x1

    const/4 p0, 0x6

    invoke-virtual {v0, p2, p0}, Lcom/google/zxing/common/a;->e(II)V

    const/16 p0, 0x1c

    invoke-static {v0, p0, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->d(Lcom/google/zxing/common/a;II)Lcom/google/zxing/common/a;

    move-result-object p0

    goto :goto_2e

    :cond_1b
    add-int/lit8 p1, p1, -0x1

    const/4 p0, 0x5

    invoke-virtual {v0, p1, p0}, Lcom/google/zxing/common/a;->e(II)V

    add-int/lit8 p2, p2, -0x1

    const/16 p0, 0xb

    invoke-virtual {v0, p2, p0}, Lcom/google/zxing/common/a;->e(II)V

    const/16 p0, 0x28

    invoke-static {v0, p0, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->d(Lcom/google/zxing/common/a;II)Lcom/google/zxing/common/a;

    move-result-object p0

    :goto_2e
    return-object p0
.end method

.method public static encode(Ljava/lang/String;)Lcom/google/zxing/aztec/encoder/a;
    .registers 2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/zxing/aztec/encoder/Encoder;->encode([B)Lcom/google/zxing/aztec/encoder/a;

    move-result-object p0

    return-object p0
.end method

.method public static encode(Ljava/lang/String;II)Lcom/google/zxing/aztec/encoder/a;
    .registers 4

    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->encode([BIILjava/nio/charset/Charset;)Lcom/google/zxing/aztec/encoder/a;

    move-result-object p0

    return-object p0
.end method

.method public static encode(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/google/zxing/aztec/encoder/a;
    .registers 5

    if-eqz p3, :cond_4

    move-object v0, p3

    goto :goto_6

    :cond_4
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    :goto_6
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/google/zxing/aztec/encoder/Encoder;->encode([BIILjava/nio/charset/Charset;)Lcom/google/zxing/aztec/encoder/a;

    move-result-object p0

    return-object p0
.end method

.method public static encode([B)Lcom/google/zxing/aztec/encoder/a;
    .registers 4

    const/16 v0, 0x21

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/google/zxing/aztec/encoder/Encoder;->encode([BIILjava/nio/charset/Charset;)Lcom/google/zxing/aztec/encoder/a;

    move-result-object p0

    return-object p0
.end method

.method public static encode([BII)Lcom/google/zxing/aztec/encoder/a;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->encode([BIILjava/nio/charset/Charset;)Lcom/google/zxing/aztec/encoder/a;

    move-result-object p0

    return-object p0
.end method

.method public static encode([BIILjava/nio/charset/Charset;)Lcom/google/zxing/aztec/encoder/a;
    .registers 23

    new-instance v0, Lcom/google/zxing/aztec/encoder/c;

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/aztec/encoder/c;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0}, Lcom/google/zxing/aztec/encoder/c;->a()Lcom/google/zxing/common/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/common/a;->i()I

    move-result v1

    mul-int v1, v1, p1

    div-int/lit8 v1, v1, 0x64

    const/16 v2, 0xb

    add-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/google/zxing/common/a;->i()I

    move-result v3

    add-int/2addr v3, v1

    const/16 v4, 0x20

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz p2, :cond_77

    if-gez p2, :cond_28

    const/4 v3, 0x1

    goto :goto_29

    :cond_28
    const/4 v3, 0x0

    :goto_29
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eqz v3, :cond_30

    const/4 v4, 0x4

    :cond_30
    if-gt v8, v4, :cond_63

    invoke-static {v8, v3}, Lcom/google/zxing/aztec/encoder/Encoder;->h(IZ)I

    move-result v4

    sget-object v9, Lcom/google/zxing/aztec/encoder/Encoder;->a:[I

    aget v9, v9, v8

    rem-int v10, v4, v9

    sub-int v10, v4, v10

    invoke-static {v0, v9}, Lcom/google/zxing/aztec/encoder/Encoder;->g(Lcom/google/zxing/common/a;I)Lcom/google/zxing/common/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/common/a;->i()I

    move-result v11

    add-int/2addr v11, v1

    const-string v1, "Data to large for user specified layer"

    if-gt v11, v10, :cond_5d

    if-eqz v3, :cond_c1

    invoke-virtual {v0}, Lcom/google/zxing/common/a;->i()I

    move-result v10

    mul-int/lit8 v11, v9, 0x40

    if-gt v10, v11, :cond_57

    goto/16 :goto_c1

    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "Illegal value %s for layers"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_77
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_7a
    if-gt v9, v4, :cond_1fd

    const/4 v11, 0x3

    if-gt v9, v11, :cond_81

    const/4 v11, 0x1

    goto :goto_82

    :cond_81
    const/4 v11, 0x0

    :goto_82
    if-eqz v11, :cond_87

    add-int/lit8 v12, v9, 0x1

    goto :goto_88

    :cond_87
    move v12, v9

    :goto_88
    invoke-static {v12, v11}, Lcom/google/zxing/aztec/encoder/Encoder;->h(IZ)I

    move-result v13

    if-le v3, v13, :cond_91

    :cond_8e
    :goto_8e
    const/4 v13, 0x1

    goto/16 :goto_1f4

    :cond_91
    if-eqz v8, :cond_99

    sget-object v14, Lcom/google/zxing/aztec/encoder/Encoder;->a:[I

    aget v14, v14, v12

    if-eq v10, v14, :cond_a6

    :cond_99
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->a:[I

    aget v8, v8, v12

    invoke-static {v0, v8}, Lcom/google/zxing/aztec/encoder/Encoder;->g(Lcom/google/zxing/common/a;I)Lcom/google/zxing/common/a;

    move-result-object v10

    move-object/from16 v18, v10

    move v10, v8

    move-object/from16 v8, v18

    :cond_a6
    rem-int v14, v13, v10

    sub-int v14, v13, v14

    if-eqz v11, :cond_b5

    invoke-virtual {v8}, Lcom/google/zxing/common/a;->i()I

    move-result v15

    mul-int/lit8 v2, v10, 0x40

    if-le v15, v2, :cond_b5

    goto :goto_8e

    :cond_b5
    invoke-virtual {v8}, Lcom/google/zxing/common/a;->i()I

    move-result v2

    add-int/2addr v2, v1

    if-gt v2, v14, :cond_8e

    move-object v0, v8

    move v9, v10

    move v3, v11

    move v8, v12

    move v4, v13

    :cond_c1
    :goto_c1
    invoke-static {v0, v4, v9}, Lcom/google/zxing/aztec/encoder/Encoder;->d(Lcom/google/zxing/common/a;II)Lcom/google/zxing/common/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/zxing/common/a;->i()I

    move-result v0

    div-int/2addr v0, v9

    invoke-static {v3, v8, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->e(ZII)Lcom/google/zxing/common/a;

    move-result-object v2

    if-eqz v3, :cond_d3

    const/16 v4, 0xb

    goto :goto_d5

    :cond_d3
    const/16 v4, 0xe

    :goto_d5
    mul-int/lit8 v9, v8, 0x4

    add-int/2addr v4, v9

    new-array v9, v4, [I

    const/4 v10, 0x2

    if-eqz v3, :cond_e7

    const/4 v11, 0x0

    :goto_de
    if-ge v11, v4, :cond_e5

    aput v11, v9, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_de

    :cond_e5
    move v11, v4

    goto :goto_10d

    :cond_e7
    add-int/lit8 v11, v4, 0x1

    div-int/lit8 v12, v4, 0x2

    add-int/lit8 v13, v12, -0x1

    div-int/lit8 v13, v13, 0xf

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v11, v13

    div-int/lit8 v13, v11, 0x2

    const/4 v14, 0x0

    :goto_f5
    if-ge v14, v12, :cond_10d

    div-int/lit8 v15, v14, 0xf

    add-int/2addr v15, v14

    sub-int v16, v12, v14

    add-int/lit8 v16, v16, -0x1

    sub-int v17, v13, v15

    add-int/lit8 v17, v17, -0x1

    aput v17, v9, v16

    add-int v16, v12, v14

    add-int/2addr v15, v13

    add-int/2addr v15, v7

    aput v15, v9, v16

    add-int/lit8 v14, v14, 0x1

    goto :goto_f5

    :cond_10d
    :goto_10d
    new-instance v12, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v12, v11}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_114
    if-ge v13, v8, :cond_1a8

    sub-int v15, v8, v13

    mul-int/lit8 v15, v15, 0x4

    if-eqz v3, :cond_11f

    const/16 v16, 0x9

    goto :goto_121

    :cond_11f
    const/16 v16, 0xc

    :goto_121
    add-int v15, v15, v16

    const/4 v5, 0x0

    :goto_124
    if-ge v5, v15, :cond_19d

    mul-int/lit8 v16, v5, 0x2

    :goto_128
    if-ge v6, v10, :cond_197

    add-int v17, v14, v16

    add-int v7, v17, v6

    invoke-virtual {v1, v7}, Lcom/google/zxing/common/a;->h(I)Z

    move-result v7

    if-eqz v7, :cond_140

    mul-int/lit8 v7, v13, 0x2

    add-int v17, v7, v6

    aget v10, v9, v17

    add-int/2addr v7, v5

    aget v7, v9, v7

    invoke-virtual {v12, v10, v7}, Lcom/google/zxing/common/BitMatrix;->i(II)V

    :cond_140
    mul-int/lit8 v7, v15, 0x2

    add-int/2addr v7, v14

    add-int v7, v7, v16

    add-int/2addr v7, v6

    invoke-virtual {v1, v7}, Lcom/google/zxing/common/a;->h(I)Z

    move-result v7

    if-eqz v7, :cond_15d

    mul-int/lit8 v7, v13, 0x2

    add-int v10, v7, v5

    aget v10, v9, v10

    add-int/lit8 v17, v4, -0x1

    sub-int v17, v17, v7

    sub-int v17, v17, v6

    aget v7, v9, v17

    invoke-virtual {v12, v10, v7}, Lcom/google/zxing/common/BitMatrix;->i(II)V

    :cond_15d
    mul-int/lit8 v7, v15, 0x4

    add-int/2addr v7, v14

    add-int v7, v7, v16

    add-int/2addr v7, v6

    invoke-virtual {v1, v7}, Lcom/google/zxing/common/a;->h(I)Z

    move-result v7

    if-eqz v7, :cond_178

    add-int/lit8 v7, v4, -0x1

    mul-int/lit8 v10, v13, 0x2

    sub-int/2addr v7, v10

    sub-int v10, v7, v6

    aget v10, v9, v10

    sub-int/2addr v7, v5

    aget v7, v9, v7

    invoke-virtual {v12, v10, v7}, Lcom/google/zxing/common/BitMatrix;->i(II)V

    :cond_178
    mul-int/lit8 v7, v15, 0x6

    add-int/2addr v7, v14

    add-int v7, v7, v16

    add-int/2addr v7, v6

    invoke-virtual {v1, v7}, Lcom/google/zxing/common/a;->h(I)Z

    move-result v7

    if-eqz v7, :cond_192

    add-int/lit8 v7, v4, -0x1

    mul-int/lit8 v10, v13, 0x2

    sub-int/2addr v7, v10

    sub-int/2addr v7, v5

    aget v7, v9, v7

    add-int/2addr v10, v6

    aget v10, v9, v10

    invoke-virtual {v12, v7, v10}, Lcom/google/zxing/common/BitMatrix;->i(II)V

    :cond_192
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    const/4 v10, 0x2

    goto :goto_128

    :cond_197
    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x2

    goto :goto_124

    :cond_19d
    mul-int/lit8 v15, v15, 0x8

    add-int/2addr v14, v15

    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x2

    goto/16 :goto_114

    :cond_1a8
    invoke-static {v12, v3, v11, v2}, Lcom/google/zxing/aztec/encoder/Encoder;->c(Lcom/google/zxing/common/BitMatrix;ZILcom/google/zxing/common/a;)V

    if-eqz v3, :cond_1b4

    div-int/lit8 v1, v11, 0x2

    const/4 v2, 0x5

    invoke-static {v12, v1, v2}, Lcom/google/zxing/aztec/encoder/Encoder;->b(Lcom/google/zxing/common/BitMatrix;II)V

    goto :goto_1df

    :cond_1b4
    div-int/lit8 v1, v11, 0x2

    const/4 v2, 0x7

    invoke-static {v12, v1, v2}, Lcom/google/zxing/aztec/encoder/Encoder;->b(Lcom/google/zxing/common/BitMatrix;II)V

    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    :goto_1bd
    div-int/lit8 v7, v4, 0x2

    const/4 v13, 0x1

    sub-int/2addr v7, v13

    if-ge v6, v7, :cond_1df

    and-int/lit8 v7, v1, 0x1

    :goto_1c5
    if-ge v7, v11, :cond_1da

    sub-int v9, v1, v2

    invoke-virtual {v12, v9, v7}, Lcom/google/zxing/common/BitMatrix;->i(II)V

    add-int v10, v1, v2

    invoke-virtual {v12, v10, v7}, Lcom/google/zxing/common/BitMatrix;->i(II)V

    invoke-virtual {v12, v7, v9}, Lcom/google/zxing/common/BitMatrix;->i(II)V

    invoke-virtual {v12, v7, v10}, Lcom/google/zxing/common/BitMatrix;->i(II)V

    add-int/lit8 v7, v7, 0x2

    goto :goto_1c5

    :cond_1da
    add-int/lit8 v6, v6, 0xf

    add-int/lit8 v2, v2, 0x10

    goto :goto_1bd

    :cond_1df
    :goto_1df
    new-instance v1, Lcom/google/zxing/aztec/encoder/a;

    invoke-direct {v1}, Lcom/google/zxing/aztec/encoder/a;-><init>()V

    invoke-virtual {v1, v3}, Lcom/google/zxing/aztec/encoder/a;->c(Z)V

    invoke-virtual {v1, v11}, Lcom/google/zxing/aztec/encoder/a;->f(I)V

    invoke-virtual {v1, v8}, Lcom/google/zxing/aztec/encoder/a;->d(I)V

    invoke-virtual {v1, v0}, Lcom/google/zxing/aztec/encoder/a;->b(I)V

    invoke-virtual {v1, v12}, Lcom/google/zxing/aztec/encoder/a;->e(Lcom/google/zxing/common/BitMatrix;)V

    return-object v1

    :goto_1f4
    add-int/lit8 v9, v9, 0x1

    const/16 v2, 0xb

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_7a

    :cond_1fd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Data too large for an Aztec code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static f(I)Lcom/google/zxing/common/h/a;
    .registers 4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_35

    const/4 v0, 0x6

    if-eq p0, v0, :cond_32

    const/16 v0, 0x8

    if-eq p0, v0, :cond_2f

    const/16 v0, 0xa

    if-eq p0, v0, :cond_2c

    const/16 v0, 0xc

    if-ne p0, v0, :cond_15

    sget-object p0, Lcom/google/zxing/common/h/a;->a:Lcom/google/zxing/common/h/a;

    return-object p0

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported word size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    sget-object p0, Lcom/google/zxing/common/h/a;->b:Lcom/google/zxing/common/h/a;

    return-object p0

    :cond_2f
    sget-object p0, Lcom/google/zxing/common/h/a;->g:Lcom/google/zxing/common/h/a;

    return-object p0

    :cond_32
    sget-object p0, Lcom/google/zxing/common/h/a;->c:Lcom/google/zxing/common/h/a;

    return-object p0

    :cond_35
    sget-object p0, Lcom/google/zxing/common/h/a;->d:Lcom/google/zxing/common/h/a;

    return-object p0
.end method

.method static g(Lcom/google/zxing/common/a;I)Lcom/google/zxing/common/a;
    .registers 11

    new-instance v0, Lcom/google/zxing/common/a;

    invoke-direct {v0}, Lcom/google/zxing/common/a;-><init>()V

    invoke-virtual {p0}, Lcom/google/zxing/common/a;->i()I

    move-result v1

    const/4 v2, 0x1

    shl-int v3, v2, p1

    add-int/lit8 v3, v3, -0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v1, :cond_40

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_14
    if-ge v6, p1, :cond_29

    add-int v8, v5, v6

    if-ge v8, v1, :cond_20

    invoke-virtual {p0, v8}, Lcom/google/zxing/common/a;->h(I)Z

    move-result v8

    if-eqz v8, :cond_26

    :cond_20
    add-int/lit8 v8, p1, -0x1

    sub-int/2addr v8, v6

    shl-int v8, v2, v8

    or-int/2addr v7, v8

    :cond_26
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    :cond_29
    and-int v6, v7, v3

    if-ne v6, v3, :cond_33

    invoke-virtual {v0, v6, p1}, Lcom/google/zxing/common/a;->e(II)V

    :goto_30
    add-int/lit8 v5, v5, -0x1

    goto :goto_3e

    :cond_33
    if-nez v6, :cond_3b

    or-int/lit8 v6, v7, 0x1

    invoke-virtual {v0, v6, p1}, Lcom/google/zxing/common/a;->e(II)V

    goto :goto_30

    :cond_3b
    invoke-virtual {v0, v7, p1}, Lcom/google/zxing/common/a;->e(II)V

    :goto_3e
    add-int/2addr v5, p1

    goto :goto_10

    :cond_40
    return-object v0
.end method

.method private static h(IZ)I
    .registers 3

    if-eqz p1, :cond_5

    const/16 p1, 0x58

    goto :goto_7

    :cond_5
    const/16 p1, 0x70

    :goto_7
    mul-int/lit8 v0, p0, 0x10

    add-int/2addr p1, v0

    mul-int p1, p1, p0

    return p1
.end method
