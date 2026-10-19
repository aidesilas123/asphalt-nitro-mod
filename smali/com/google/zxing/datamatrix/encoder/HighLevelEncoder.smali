###### Class com.google.zxing.datamatrix.encoder.HighLevelEncoder (com.google.zxing.datamatrix.encoder.HighLevelEncoder)
.class public final Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;
.super Ljava/lang/Object;
.source "HighLevelEncoder.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([F[II[B)I
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x6

    if-ge v1, v2, :cond_21

    aget v2, p0, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    aput v2, p1, v1

    if-le p2, v2, :cond_15

    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([BB)V

    move p2, v2

    :cond_15
    if-ne p2, v2, :cond_1e

    aget-byte v2, p3, v1

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_21
    return p2
.end method

.method private static b([B)I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x6

    if-ge v0, v2, :cond_b

    aget-byte v2, p0, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_b
    return v1
.end method

.method static c(C)V
    .registers 6

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x4

    const-string v3, "0000"

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal character: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, " (0x"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static d(C)Z
    .registers 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static determineConsecutiveDigitCount(Ljava/lang/CharSequence;I)I
    .registers 5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move v1, p1

    :goto_5
    if-ge v1, v0, :cond_14

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->d(C)Z

    move-result v2

    if-eqz v2, :cond_14

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_14
    sub-int/2addr v1, p1

    return v1
.end method

.method static e(C)Z
    .registers 2

    const/16 v0, 0x80

    if-lt p0, v0, :cond_a

    const/16 v0, 0xff

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static encodeHighLevel(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->a:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v1, v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/b;Lcom/google/zxing/b;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/b;Lcom/google/zxing/b;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/b;Lcom/google/zxing/b;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/b;Lcom/google/zxing/b;Z)Ljava/lang/String;
    .registers 13

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/c;

    invoke-direct {v0}, Lcom/google/zxing/datamatrix/encoder/c;-><init>()V

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/google/zxing/datamatrix/encoder/g;

    new-instance v2, Lcom/google/zxing/datamatrix/encoder/a;

    invoke-direct {v2}, Lcom/google/zxing/datamatrix/encoder/a;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    new-instance v4, Lcom/google/zxing/datamatrix/encoder/i;

    invoke-direct {v4}, Lcom/google/zxing/datamatrix/encoder/i;-><init>()V

    const/4 v5, 0x2

    aput-object v4, v1, v5

    new-instance v4, Lcom/google/zxing/datamatrix/encoder/j;

    invoke-direct {v4}, Lcom/google/zxing/datamatrix/encoder/j;-><init>()V

    const/4 v6, 0x3

    aput-object v4, v1, v6

    new-instance v4, Lcom/google/zxing/datamatrix/encoder/f;

    invoke-direct {v4}, Lcom/google/zxing/datamatrix/encoder/f;-><init>()V

    const/4 v6, 0x4

    aput-object v4, v1, v6

    new-instance v4, Lcom/google/zxing/datamatrix/encoder/b;

    invoke-direct {v4}, Lcom/google/zxing/datamatrix/encoder/b;-><init>()V

    const/4 v7, 0x5

    aput-object v4, v1, v7

    new-instance v4, Lcom/google/zxing/datamatrix/encoder/h;

    invoke-direct {v4, p0}, Lcom/google/zxing/datamatrix/encoder/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Lcom/google/zxing/datamatrix/encoder/h;->n(Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;)V

    invoke-virtual {v4, p2, p3}, Lcom/google/zxing/datamatrix/encoder/h;->l(Lcom/google/zxing/b;Lcom/google/zxing/b;)V

    const-string p1, "[)>\u001e05\u001d"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const-string p2, "\u001e\u0004"

    if-eqz p1, :cond_5d

    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5d

    const/16 p0, 0xec

    invoke-virtual {v4, p0}, Lcom/google/zxing/datamatrix/encoder/h;->r(C)V

    invoke-virtual {v4, v5}, Lcom/google/zxing/datamatrix/encoder/h;->m(I)V

    iget p0, v4, Lcom/google/zxing/datamatrix/encoder/h;->f:I

    add-int/lit8 p0, p0, 0x7

    iput p0, v4, Lcom/google/zxing/datamatrix/encoder/h;->f:I

    goto :goto_79

    :cond_5d
    const-string p1, "[)>\u001e06\u001d"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_79

    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_79

    const/16 p0, 0xed

    invoke-virtual {v4, p0}, Lcom/google/zxing/datamatrix/encoder/h;->r(C)V

    invoke-virtual {v4, v5}, Lcom/google/zxing/datamatrix/encoder/h;->m(I)V

    iget p0, v4, Lcom/google/zxing/datamatrix/encoder/h;->f:I

    add-int/lit8 p0, p0, 0x7

    iput p0, v4, Lcom/google/zxing/datamatrix/encoder/h;->f:I

    :cond_79
    :goto_79
    if-eqz p4, :cond_85

    invoke-virtual {v0, v4}, Lcom/google/zxing/datamatrix/encoder/c;->d(Lcom/google/zxing/datamatrix/encoder/h;)V

    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/h;->e()I

    move-result v3

    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/h;->j()V

    :cond_85
    :goto_85
    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/h;->i()Z

    move-result p0

    if-eqz p0, :cond_9e

    aget-object p0, v1, v3

    invoke-interface {p0, v4}, Lcom/google/zxing/datamatrix/encoder/g;->a(Lcom/google/zxing/datamatrix/encoder/h;)V

    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/h;->e()I

    move-result p0

    if-ltz p0, :cond_85

    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/h;->e()I

    move-result v3

    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/h;->j()V

    goto :goto_85

    :cond_9e
    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/h;->a()I

    move-result p0

    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/h;->p()V

    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/h;->g()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->a()I

    move-result p1

    if-ge p0, p1, :cond_ba

    if-eqz v3, :cond_ba

    if-eq v3, v7, :cond_ba

    if-eq v3, v6, :cond_ba

    const/16 p0, 0xfe

    invoke-virtual {v4, p0}, Lcom/google/zxing/datamatrix/encoder/h;->r(C)V

    :cond_ba
    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/h;->b()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-ge p2, p1, :cond_c9

    const/16 p2, 0x81

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_c9
    :goto_c9
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-ge p2, p1, :cond_dc

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    add-int/2addr p2, v2

    invoke-static {p2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->p(I)C

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_c9

    :cond_dc
    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/h;->b()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static f(C)Z
    .registers 2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_17

    const/16 v0, 0x30

    if-lt p0, v0, :cond_c

    const/16 v0, 0x39

    if-le p0, v0, :cond_17

    :cond_c
    const/16 v0, 0x41

    if-lt p0, v0, :cond_15

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method static g(C)Z
    .registers 2

    const/16 v0, 0x20

    if-lt p0, v0, :cond_a

    const/16 v0, 0x5e

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method static h(C)Z
    .registers 2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_17

    const/16 v0, 0x30

    if-lt p0, v0, :cond_c

    const/16 v0, 0x39

    if-le p0, v0, :cond_17

    :cond_c
    const/16 v0, 0x61

    if-lt p0, v0, :cond_15

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method static i(C)Z
    .registers 2

    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->k(C)Z

    move-result v0

    if-nez v0, :cond_1d

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1d

    const/16 v0, 0x30

    if-lt p0, v0, :cond_12

    const/16 v0, 0x39

    if-le p0, v0, :cond_1d

    :cond_12
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1b

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 p0, 0x1

    :goto_1e
    return p0
.end method

.method private static j(C)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method private static k(C)Z
    .registers 2

    const/16 v0, 0xd

    if-eq p0, v0, :cond_f

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_f

    const/16 v0, 0x3e

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method static l(Ljava/lang/CharSequence;II)I
    .registers 6

    invoke-static {p0, p1, p2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->m(Ljava/lang/CharSequence;II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p2, v2, :cond_24

    if-ne v0, v2, :cond_24

    add-int/lit8 p2, p1, 0x3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_14
    if-ge p1, p2, :cond_43

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->i(C)Z

    move-result v2

    if-nez v2, :cond_21

    return v1

    :cond_21
    add-int/lit8 p1, p1, 0x1

    goto :goto_14

    :cond_24
    const/4 v2, 0x4

    if-ne p2, v2, :cond_43

    if-ne v0, v2, :cond_43

    add-int/lit8 p2, p1, 0x4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_33
    if-ge p1, p2, :cond_43

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->g(C)Z

    move-result v2

    if-nez v2, :cond_40

    return v1

    :cond_40
    add-int/lit8 p1, p1, 0x1

    goto :goto_33

    :cond_43
    return v0
.end method

.method static m(Ljava/lang/CharSequence;II)I
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v1, v2, :cond_b

    return p2

    :cond_b
    const/4 v2, 0x6

    if-nez p2, :cond_14

    new-array v3, v2, [F

    fill-array-data v3, :array_1fc

    goto :goto_1c

    :cond_14
    new-array v3, v2, [F

    fill-array-data v3, :array_20c

    const/4 v4, 0x0

    aput v4, v3, p2

    :goto_1c
    new-array v4, v2, [B

    new-array v2, v2, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_22
    add-int v7, v1, v6

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const v9, 0x7fffffff

    const/4 v10, 0x2

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x1

    if-ne v7, v8, :cond_5c

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([BB)V

    invoke-static {v2, v5}, Ljava/util/Arrays;->fill([II)V

    invoke-static {v3, v2, v9, v4}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->a([F[II[B)I

    move-result v0

    invoke-static {v4}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->b([B)I

    move-result v1

    aget v2, v2, v5

    if-ne v2, v0, :cond_45

    return v5

    :cond_45
    if-ne v1, v14, :cond_5b

    aget-byte v0, v4, v11

    if-lez v0, :cond_4c

    return v11

    :cond_4c
    aget-byte v0, v4, v12

    if-lez v0, :cond_51

    return v12

    :cond_51
    aget-byte v0, v4, v10

    if-lez v0, :cond_56

    return v10

    :cond_56
    aget-byte v0, v4, v13

    if-lez v0, :cond_5b

    return v13

    :cond_5b
    return v14

    :cond_5c
    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    add-int/lit8 v6, v6, 0x1

    invoke-static {v7}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->d(C)Z

    move-result v8

    const/high16 v15, 0x3f800000    # 1.0f

    if-eqz v8, :cond_73

    aget v8, v3, v5

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v8, v8, v16

    aput v8, v3, v5

    goto :goto_9a

    :cond_73
    invoke-static {v7}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->e(C)Z

    move-result v8

    if-eqz v8, :cond_8b

    aget v8, v3, v5

    float-to-double v11, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-float v8, v11

    aput v8, v3, v5

    aget v8, v3, v5

    const/high16 v11, 0x40000000    # 2.0f

    add-float/2addr v8, v11

    aput v8, v3, v5

    goto :goto_9a

    :cond_8b
    aget v8, v3, v5

    float-to-double v11, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-float v8, v11

    aput v8, v3, v5

    aget v8, v3, v5

    add-float/2addr v8, v15

    aput v8, v3, v5

    :goto_9a
    invoke-static {v7}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->f(C)Z

    move-result v8

    const v11, 0x402aaaab

    const v12, 0x3faaaaab

    const v17, 0x3f2aaaab

    if-eqz v8, :cond_b0

    aget v8, v3, v14

    add-float v8, v8, v17

    aput v8, v3, v14

    goto :goto_c1

    :cond_b0
    invoke-static {v7}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->e(C)Z

    move-result v8

    if-eqz v8, :cond_bc

    aget v8, v3, v14

    add-float/2addr v8, v11

    aput v8, v3, v14

    goto :goto_c1

    :cond_bc
    aget v8, v3, v14

    add-float/2addr v8, v12

    aput v8, v3, v14

    :goto_c1
    invoke-static {v7}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->h(C)Z

    move-result v8

    if-eqz v8, :cond_ce

    aget v8, v3, v10

    add-float v8, v8, v17

    aput v8, v3, v10

    goto :goto_df

    :cond_ce
    invoke-static {v7}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->e(C)Z

    move-result v8

    if-eqz v8, :cond_da

    aget v8, v3, v10

    add-float/2addr v8, v11

    aput v8, v3, v10

    goto :goto_df

    :cond_da
    aget v8, v3, v10

    add-float/2addr v8, v12

    aput v8, v3, v10

    :goto_df
    invoke-static {v7}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->i(C)Z

    move-result v8

    if-eqz v8, :cond_ec

    aget v8, v3, v13

    add-float v8, v8, v17

    aput v8, v3, v13

    goto :goto_103

    :cond_ec
    invoke-static {v7}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->e(C)Z

    move-result v8

    if-eqz v8, :cond_fb

    aget v8, v3, v13

    const v11, 0x408aaaab

    add-float/2addr v8, v11

    aput v8, v3, v13

    goto :goto_103

    :cond_fb
    aget v8, v3, v13

    const v11, 0x40555555

    add-float/2addr v8, v11

    aput v8, v3, v13

    :goto_103
    invoke-static {v7}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->g(C)Z

    move-result v8

    if-eqz v8, :cond_112

    const/4 v8, 0x4

    aget v11, v3, v8

    const/high16 v12, 0x3f400000    # 0.75f

    add-float/2addr v11, v12

    aput v11, v3, v8

    goto :goto_128

    :cond_112
    const/4 v8, 0x4

    invoke-static {v7}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->e(C)Z

    move-result v11

    if-eqz v11, :cond_121

    aget v11, v3, v8

    const/high16 v12, 0x40880000    # 4.25f

    add-float/2addr v11, v12

    aput v11, v3, v8

    goto :goto_128

    :cond_121
    aget v11, v3, v8

    const/high16 v12, 0x40500000    # 3.25f

    add-float/2addr v11, v12

    aput v11, v3, v8

    :goto_128
    invoke-static {v7}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->j(C)Z

    move-result v7

    if-eqz v7, :cond_137

    const/4 v7, 0x5

    aget v8, v3, v7

    const/high16 v11, 0x40800000    # 4.0f

    add-float/2addr v8, v11

    aput v8, v3, v7

    goto :goto_13d

    :cond_137
    const/4 v7, 0x5

    aget v8, v3, v7

    add-float/2addr v8, v15

    aput v8, v3, v7

    :goto_13d
    const/4 v8, 0x4

    if-lt v6, v8, :cond_1f7

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([BB)V

    invoke-static {v2, v5}, Ljava/util/Arrays;->fill([II)V

    invoke-static {v3, v2, v9, v4}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->a([F[II[B)I

    aget v9, v2, v5

    aget v11, v2, v7

    aget v12, v2, v14

    aget v15, v2, v10

    aget v10, v2, v13

    aget v13, v2, v8

    invoke-static {v11, v12, v15, v10, v13}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->o(IIIII)I

    move-result v8

    if-ge v9, v8, :cond_15c

    return v5

    :cond_15c
    aget v8, v2, v7

    aget v9, v2, v5

    if-lt v8, v9, :cond_1f5

    aget v8, v2, v7

    add-int/2addr v8, v14

    aget v9, v2, v14

    const/4 v10, 0x2

    aget v11, v2, v10

    const/4 v12, 0x3

    aget v13, v2, v12

    const/4 v15, 0x4

    aget v5, v2, v15

    invoke-static {v9, v11, v13, v5}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->n(IIII)I

    move-result v5

    if-ge v8, v5, :cond_178

    goto/16 :goto_1f5

    :cond_178
    aget v5, v2, v15

    add-int/2addr v5, v14

    aget v8, v2, v7

    aget v9, v2, v14

    aget v11, v2, v10

    aget v13, v2, v12

    const/16 v16, 0x0

    aget v12, v2, v16

    invoke-static {v8, v9, v11, v13, v12}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->o(IIIII)I

    move-result v8

    if-ge v5, v8, :cond_18e

    return v15

    :cond_18e
    aget v5, v2, v10

    add-int/2addr v5, v14

    aget v8, v2, v7

    aget v9, v2, v14

    aget v11, v2, v15

    const/4 v12, 0x3

    aget v13, v2, v12

    aget v15, v2, v16

    invoke-static {v8, v9, v11, v13, v15}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->o(IIIII)I

    move-result v8

    if-ge v5, v8, :cond_1a3

    return v10

    :cond_1a3
    aget v5, v2, v12

    add-int/2addr v5, v14

    aget v8, v2, v7

    aget v9, v2, v14

    const/4 v11, 0x4

    aget v13, v2, v11

    aget v15, v2, v10

    aget v10, v2, v16

    invoke-static {v8, v9, v13, v15, v10}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->o(IIIII)I

    move-result v8

    if-ge v5, v8, :cond_1b8

    return v12

    :cond_1b8
    aget v5, v2, v14

    add-int/2addr v5, v14

    aget v8, v2, v16

    aget v7, v2, v7

    aget v9, v2, v11

    const/4 v10, 0x2

    aget v10, v2, v10

    invoke-static {v8, v7, v9, v10}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->n(IIII)I

    move-result v7

    if-ge v5, v7, :cond_1f9

    aget v5, v2, v14

    aget v7, v2, v12

    if-ge v5, v7, :cond_1d1

    return v14

    :cond_1d1
    aget v5, v2, v14

    aget v7, v2, v12

    if-ne v5, v7, :cond_1f9

    add-int/2addr v1, v6

    add-int/2addr v1, v14

    :goto_1d9
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1f4

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->k(C)Z

    move-result v3

    if-eqz v3, :cond_1ea

    return v12

    :cond_1ea
    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->i(C)Z

    move-result v2

    if-nez v2, :cond_1f1

    goto :goto_1f4

    :cond_1f1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d9

    :cond_1f4
    :goto_1f4
    return v14

    :cond_1f5
    :goto_1f5
    const/4 v0, 0x5

    return v0

    :cond_1f7
    const/16 v16, 0x0

    :cond_1f9
    const/4 v5, 0x0

    goto/16 :goto_22

    :array_1fc
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
    .end array-data

    :array_20c
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40100000    # 2.25f
    .end array-data
.end method

.method private static n(IIII)I
    .registers 4

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private static o(IIIII)I
    .registers 5

    invoke-static {p0, p1, p2, p3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->n(IIII)I

    move-result p0

    invoke-static {p0, p4}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private static p(I)C
    .registers 2

    mul-int/lit16 p0, p0, 0x95

    rem-int/lit16 p0, p0, 0xfd

    add-int/lit8 p0, p0, 0x1

    add-int/lit16 p0, p0, 0x81

    const/16 v0, 0xfe

    if-gt p0, v0, :cond_d

    goto :goto_f

    :cond_d
    add-int/lit16 p0, p0, -0xfe

    :goto_f
    int-to-char p0, p0

    return p0
.end method
