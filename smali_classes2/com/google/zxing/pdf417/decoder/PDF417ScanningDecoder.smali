###### Class com.google.zxing.pdf417.decoder.PDF417ScanningDecoder (com.google.zxing.pdf417.decoder.PDF417ScanningDecoder)
.class public final Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;
.super Ljava/lang/Object;
.source "PDF417ScanningDecoder.java"


# static fields
.field private static final a:Lcom/google/zxing/pdf417/decoder/i/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/zxing/pdf417/decoder/i/a;

    invoke-direct {v0}, Lcom/google/zxing/pdf417/decoder/i/a;-><init>()V

    sput-object v0, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->a:Lcom/google/zxing/pdf417/decoder/i/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/zxing/pdf417/decoder/g;)Lcom/google/zxing/pdf417/decoder/c;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/g;->j()[I

    move-result-object v1

    if-nez v1, :cond_b

    return-object v0

    :cond_b
    invoke-static {v1}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->o([I)I

    move-result v0

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_13
    if-ge v4, v2, :cond_20

    aget v6, v1, v4

    sub-int v7, v0, v6

    add-int/2addr v5, v7

    if-lez v6, :cond_1d

    goto :goto_20

    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_20
    :goto_20
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/f;->d()[Lcom/google/zxing/pdf417/decoder/d;

    move-result-object v2

    const/4 v4, 0x0

    :goto_25
    if-lez v5, :cond_30

    aget-object v6, v2, v4

    if-nez v6, :cond_30

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :cond_30
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    :goto_33
    if-ltz v4, :cond_42

    aget v6, v1, v4

    sub-int v6, v0, v6

    add-int/2addr v3, v6

    aget v6, v1, v4

    if-lez v6, :cond_3f

    goto :goto_42

    :cond_3f
    add-int/lit8 v4, v4, -0x1

    goto :goto_33

    :cond_42
    :goto_42
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_45
    if-lez v3, :cond_50

    aget-object v1, v2, v0

    if-nez v1, :cond_50

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_45

    :cond_50
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/f;->a()Lcom/google/zxing/pdf417/decoder/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/g;->k()Z

    move-result p0

    invoke-virtual {v0, v5, v3, p0}, Lcom/google/zxing/pdf417/decoder/c;->a(IIZ)Lcom/google/zxing/pdf417/decoder/c;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/google/zxing/pdf417/decoder/e;[[Lcom/google/zxing/pdf417/decoder/b;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/b;->b()[I

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/e;->j()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/e;->l()I

    move-result v4

    mul-int v3, v3, v4

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/e;->k()I

    move-result p0

    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->q(I)I

    move-result p0

    sub-int/2addr v3, p0

    array-length p0, v2

    const/16 v4, 0x3a0

    if-nez p0, :cond_2f

    if-lt v3, v1, :cond_2a

    if-gt v3, v4, :cond_2a

    invoke-virtual {p1, v3}, Lcom/google/zxing/pdf417/decoder/b;->c(I)V

    goto :goto_3a

    :cond_2a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_2f
    aget p0, v2, v0

    if-eq p0, v3, :cond_3a

    if-lt v3, v1, :cond_3a

    if-gt v3, v4, :cond_3a

    invoke-virtual {p1, v3}, Lcom/google/zxing/pdf417/decoder/b;->c(I)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method private static c(Lcom/google/zxing/common/BitMatrix;IIZII)I
    .registers 11

    if-eqz p3, :cond_4

    const/4 v0, -0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x1

    :goto_5
    const/4 v1, 0x0

    move v2, p4

    :goto_7
    const/4 v3, 0x2

    if-ge v1, v3, :cond_28

    :goto_a
    if-eqz p3, :cond_f

    if-lt v2, p1, :cond_22

    goto :goto_11

    :cond_f
    if-ge v2, p2, :cond_22

    :goto_11
    invoke-virtual {p0, v2, p5}, Lcom/google/zxing/common/BitMatrix;->f(II)Z

    move-result v4

    if-ne p3, v4, :cond_22

    sub-int v4, p4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v4, v3, :cond_20

    return p4

    :cond_20
    add-int/2addr v2, v0

    goto :goto_a

    :cond_22
    neg-int v0, v0

    xor-int/lit8 p3, p3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_28
    return v2
.end method

.method private static d(III)Z
    .registers 3

    add-int/lit8 p1, p1, -0x2

    if-gt p1, p0, :cond_a

    add-int/lit8 p2, p2, 0x2

    if-gt p0, p2, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static decode(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/b;
    .registers 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    new-instance v6, Lcom/google/zxing/pdf417/decoder/c;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/pdf417/decoder/c;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v3, v0

    move-object v10, v6

    const/4 v11, 0x1

    :goto_16
    if-eqz p1, :cond_26

    const/4 v7, 0x1

    move-object/from16 v4, p0

    move-object v5, v10

    move-object/from16 v6, p1

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-static/range {v4 .. v9}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->r(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/c;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/g;

    move-result-object v0

    :cond_26
    if-eqz p3, :cond_36

    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object v5, v10

    move-object/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-static/range {v4 .. v9}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->r(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/c;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/g;

    move-result-object v3

    :cond_36
    invoke-static {v0, v3}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->u(Lcom/google/zxing/pdf417/decoder/g;Lcom/google/zxing/pdf417/decoder/g;)Lcom/google/zxing/pdf417/decoder/e;

    move-result-object v4

    if-eqz v4, :cond_10a

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/e;->m()Lcom/google/zxing/pdf417/decoder/c;

    move-result-object v6

    if-eqz v11, :cond_5b

    if-eqz v6, :cond_5b

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/c;->g()I

    move-result v5

    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/c;->g()I

    move-result v7

    if-lt v5, v7, :cond_58

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/c;->e()I

    move-result v5

    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/c;->e()I

    move-result v7

    if-le v5, v7, :cond_5b

    :cond_58
    move-object v10, v6

    const/4 v11, 0x0

    goto :goto_16

    :cond_5b
    invoke-virtual {v4, v10}, Lcom/google/zxing/pdf417/decoder/e;->p(Lcom/google/zxing/pdf417/decoder/c;)V

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/e;->j()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v1, v0}, Lcom/google/zxing/pdf417/decoder/e;->q(ILcom/google/zxing/pdf417/decoder/f;)V

    invoke-virtual {v4, v5, v3}, Lcom/google/zxing/pdf417/decoder/e;->q(ILcom/google/zxing/pdf417/decoder/f;)V

    if-eqz v0, :cond_6d

    const/4 v0, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v0, 0x0

    :goto_6e
    move/from16 v3, p5

    move/from16 v6, p6

    const/4 v7, 0x1

    :goto_73
    if-gt v7, v5, :cond_105

    if-eqz v0, :cond_79

    move v8, v7

    goto :goto_7b

    :cond_79
    sub-int v8, v5, v7

    :goto_7b
    invoke-virtual {v4, v8}, Lcom/google/zxing/pdf417/decoder/e;->n(I)Lcom/google/zxing/pdf417/decoder/f;

    move-result-object v9

    if-eqz v9, :cond_83

    goto/16 :goto_101

    :cond_83
    if-eqz v8, :cond_8e

    if-ne v8, v5, :cond_88

    goto :goto_8e

    :cond_88
    new-instance v9, Lcom/google/zxing/pdf417/decoder/f;

    invoke-direct {v9, v10}, Lcom/google/zxing/pdf417/decoder/f;-><init>(Lcom/google/zxing/pdf417/decoder/c;)V

    goto :goto_98

    :cond_8e
    :goto_8e
    new-instance v9, Lcom/google/zxing/pdf417/decoder/g;

    if-nez v8, :cond_94

    const/4 v11, 0x1

    goto :goto_95

    :cond_94
    const/4 v11, 0x0

    :goto_95
    invoke-direct {v9, v10, v11}, Lcom/google/zxing/pdf417/decoder/g;-><init>(Lcom/google/zxing/pdf417/decoder/c;Z)V

    :goto_98
    invoke-virtual {v4, v8, v9}, Lcom/google/zxing/pdf417/decoder/e;->q(ILcom/google/zxing/pdf417/decoder/f;)V

    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/c;->g()I

    move-result v11

    const/4 v15, -0x1

    move v14, v11

    const/4 v13, -0x1

    :goto_a2
    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/c;->e()I

    move-result v11

    if-gt v14, v11, :cond_101

    invoke-static {v4, v8, v14, v0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->s(Lcom/google/zxing/pdf417/decoder/e;IIZ)I

    move-result v11

    if-ltz v11, :cond_b8

    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/c;->d()I

    move-result v12

    if-le v11, v12, :cond_b5

    goto :goto_b8

    :cond_b5
    move/from16 v19, v11

    goto :goto_c2

    :cond_b8
    :goto_b8
    if-ne v13, v15, :cond_c0

    move/from16 v20, v13

    move v12, v14

    const/16 v21, -0x1

    goto :goto_fb

    :cond_c0
    move/from16 v19, v13

    :goto_c2
    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/c;->f()I

    move-result v12

    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/c;->d()I

    move-result v16

    move-object/from16 v11, p0

    move/from16 v20, v13

    move/from16 v13, v16

    move/from16 p1, v14

    move v14, v0

    const/16 v21, -0x1

    move/from16 v15, v19

    move/from16 v16, p1

    move/from16 v17, v3

    move/from16 v18, v6

    invoke-static/range {v11 .. v18}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->j(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/d;

    move-result-object v11

    move/from16 v12, p1

    if-eqz v11, :cond_fb

    invoke-virtual {v9, v12, v11}, Lcom/google/zxing/pdf417/decoder/f;->f(ILcom/google/zxing/pdf417/decoder/d;)V

    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/d;->f()I

    move-result v13

    invoke-static {v3, v13}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/d;->f()I

    move-result v11

    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    move/from16 v13, v19

    goto :goto_fd

    :cond_fb
    :goto_fb
    move/from16 v13, v20

    :goto_fd
    add-int/lit8 v14, v12, 0x1

    const/4 v15, -0x1

    goto :goto_a2

    :cond_101
    :goto_101
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_73

    :cond_105
    invoke-static {v4}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->g(Lcom/google/zxing/pdf417/decoder/e;)Lcom/google/zxing/common/b;

    move-result-object v0

    return-object v0

    :cond_10a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private static e([I[II)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    if-eqz p1, :cond_9

    array-length v0, p1

    div-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, 0x3

    if-gt v0, v1, :cond_16

    :cond_9
    if-ltz p2, :cond_16

    const/16 v0, 0x200

    if-gt p2, v0, :cond_16

    sget-object v0, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->a:Lcom/google/zxing/pdf417/decoder/i/a;

    invoke-virtual {v0, p0, p2, p1}, Lcom/google/zxing/pdf417/decoder/i/a;->a([II[I)I

    move-result p0

    return p0

    :cond_16
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object p0

    throw p0
.end method

.method private static f(Lcom/google/zxing/pdf417/decoder/e;)[[Lcom/google/zxing/pdf417/decoder/b;
    .registers 12

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/e;->l()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/e;->j()I

    move-result v1

    const/4 v2, 0x2

    add-int/2addr v1, v2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v0, Lcom/google/zxing/pdf417/decoder/b;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/google/zxing/pdf417/decoder/b;

    const/4 v2, 0x0

    :goto_1b
    array-length v3, v0

    if-ge v2, v3, :cond_33

    const/4 v3, 0x0

    :goto_1f
    aget-object v4, v0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_30

    aget-object v4, v0, v2

    new-instance v5, Lcom/google/zxing/pdf417/decoder/b;

    invoke-direct {v5}, Lcom/google/zxing/pdf417/decoder/b;-><init>()V

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_33
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/e;->o()[Lcom/google/zxing/pdf417/decoder/f;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_3a
    if-ge v3, v2, :cond_69

    aget-object v5, p0, v3

    if-eqz v5, :cond_64

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/f;->d()[Lcom/google/zxing/pdf417/decoder/d;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_46
    if-ge v7, v6, :cond_64

    aget-object v8, v5, v7

    if-eqz v8, :cond_61

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/d;->c()I

    move-result v9

    if-ltz v9, :cond_61

    array-length v10, v0

    if-lt v9, v10, :cond_56

    goto :goto_61

    :cond_56
    aget-object v9, v0, v9

    aget-object v9, v9, v4

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/d;->e()I

    move-result v8

    invoke-virtual {v9, v8}, Lcom/google/zxing/pdf417/decoder/b;->c(I)V

    :cond_61
    :goto_61
    add-int/lit8 v7, v7, 0x1

    goto :goto_46

    :cond_64
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    :cond_69
    return-object v0
.end method

.method private static g(Lcom/google/zxing/pdf417/decoder/e;)Lcom/google/zxing/common/b;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->f(Lcom/google/zxing/pdf417/decoder/e;)[[Lcom/google/zxing/pdf417/decoder/b;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->b(Lcom/google/zxing/pdf417/decoder/e;[[Lcom/google/zxing/pdf417/decoder/b;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/e;->l()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/e;->j()I

    move-result v3

    mul-int v2, v2, v3

    new-array v2, v2, [I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_24
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/e;->l()I

    move-result v7

    if-ge v6, v7, :cond_65

    const/4 v7, 0x0

    :goto_2b
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/e;->j()I

    move-result v8

    if-ge v7, v8, :cond_62

    aget-object v8, v0, v6

    add-int/lit8 v9, v7, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/b;->b()[I

    move-result-object v8

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/e;->j()I

    move-result v10

    mul-int v10, v10, v6

    add-int/2addr v10, v7

    array-length v7, v8

    if-nez v7, :cond_4d

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_60

    :cond_4d
    array-length v7, v8

    const/4 v11, 0x1

    if-ne v7, v11, :cond_56

    aget v7, v8, v5

    aput v7, v2, v10

    goto :goto_60

    :cond_56
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_60
    move v7, v9

    goto :goto_2b

    :cond_62
    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    :cond_65
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [[I

    :goto_6b
    if-ge v5, v0, :cond_78

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_6b

    :cond_78
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/e;->k()I

    move-result p0

    invoke-static {v1}, Lcom/google/zxing/pdf417/PDF417Common;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v0

    invoke-static {v4}, Lcom/google/zxing/pdf417/PDF417Common;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v1

    invoke-static {p0, v2, v0, v1, v6}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->h(I[I[I[I[[I)Lcom/google/zxing/common/b;

    move-result-object p0

    return-object p0
.end method

.method private static h(I[I[I[I[[I)Lcom/google/zxing/common/b;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    array-length v0, p3

    new-array v1, v0, [I

    const/16 v2, 0x64

    :goto_5
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_49

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v0, :cond_1a

    aget v5, p3, v4

    aget-object v6, p4, v4

    aget v7, v1, v4

    aget v6, v6, v7

    aput v6, p1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_1a
    :try_start_1a
    invoke-static {p1, p0, p2}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->i([II[I)Lcom/google/zxing/common/b;

    move-result-object p0
    :try_end_1e
    .catch Lcom/google/zxing/ChecksumException; {:try_start_1a .. :try_end_1e} :catch_1f

    return-object p0

    :catch_1f
    if-eqz v0, :cond_44

    const/4 v4, 0x0

    :goto_22
    if-ge v4, v0, :cond_42

    aget v5, v1, v4

    aget-object v6, p4, v4

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_34

    aget v2, v1, v4

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v4

    goto :goto_42

    :cond_34
    aput v2, v1, v4

    add-int/lit8 v5, v0, -0x1

    if-eq v4, v5, :cond_3d

    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_3d
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object p0

    throw p0

    :cond_42
    :goto_42
    move v2, v3

    goto :goto_5

    :cond_44
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object p0

    throw p0

    :cond_49
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object p0

    throw p0
.end method

.method private static i([II[I)Lcom/google/zxing/common/b;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    array-length v0, p0

    if-eqz v0, :cond_27

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    invoke-static {p0, p2, v0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->e([I[II)I

    move-result v1

    invoke-static {p0, v0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->v([II)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->b([ILjava/lang/String;)Lcom/google/zxing/common/b;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/b;->b(Ljava/lang/Integer;)V

    array-length p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/b;->a(Ljava/lang/Integer;)V

    return-object p0

    :cond_27
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method

.method private static j(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/d;
    .registers 15

    invoke-static/range {p0 .. p5}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->c(Lcom/google/zxing/common/BitMatrix;IIZII)I

    move-result p4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->p(Lcom/google/zxing/common/BitMatrix;IIZII)[I

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_12

    return-object p1

    :cond_12
    invoke-static {p0}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result p2

    if-eqz p3, :cond_1b

    add-int p3, p4, p2

    goto :goto_39

    :cond_1b
    const/4 p3, 0x0

    :goto_1c
    array-length p5, p0

    div-int/lit8 p5, p5, 0x2

    if-ge p3, p5, :cond_34

    aget p5, p0, p3

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p3

    aget v0, p0, v0

    aput v0, p0, p3

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p3

    aput p5, p0, v0

    add-int/lit8 p3, p3, 0x1

    goto :goto_1c

    :cond_34
    sub-int p3, p4, p2

    move v6, p4

    move p4, p3

    move p3, v6

    :goto_39
    invoke-static {p2, p6, p7}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->d(III)Z

    move-result p2

    if-nez p2, :cond_40

    return-object p1

    :cond_40
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/h;->d([I)I

    move-result p0

    invoke-static {p0}, Lcom/google/zxing/pdf417/PDF417Common;->getCodeword(I)I

    move-result p2

    const/4 p5, -0x1

    if-ne p2, p5, :cond_4c

    return-object p1

    :cond_4c
    new-instance p1, Lcom/google/zxing/pdf417/decoder/d;

    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->m(I)I

    move-result p0

    invoke-direct {p1, p4, p3, p0, p2}, Lcom/google/zxing/pdf417/decoder/d;-><init>(IIII)V

    return-object p1
.end method

.method private static k(Lcom/google/zxing/pdf417/decoder/g;Lcom/google/zxing/pdf417/decoder/g;)Lcom/google/zxing/pdf417/decoder/a;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_33

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/g;->i()Lcom/google/zxing/pdf417/decoder/a;

    move-result-object p0

    if-nez p0, :cond_a

    goto :goto_33

    :cond_a
    if-eqz p1, :cond_32

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/g;->i()Lcom/google/zxing/pdf417/decoder/a;

    move-result-object p1

    if-nez p1, :cond_13

    goto :goto_32

    :cond_13
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/a;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/a;->a()I

    move-result v2

    if-eq v1, v2, :cond_32

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/a;->b()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/a;->b()I

    move-result v2

    if-eq v1, v2, :cond_32

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/a;->c()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/a;->c()I

    move-result p1

    if-eq v1, p1, :cond_32

    return-object v0

    :cond_32
    :goto_32
    return-object p0

    :cond_33
    :goto_33
    if-nez p1, :cond_36

    goto :goto_3a

    :cond_36
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/g;->i()Lcom/google/zxing/pdf417/decoder/a;

    move-result-object v0

    :goto_3a
    return-object v0
.end method

.method private static l(I)[I
    .registers 5

    const/16 v0, 0x8

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x7

    :goto_6
    and-int/lit8 v3, p0, 0x1

    if-eq v3, v1, :cond_10

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_f

    return-object v0

    :cond_f
    move v1, v3

    :cond_10
    aget v3, v0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v2

    shr-int/lit8 p0, p0, 0x1

    goto :goto_6
.end method

.method private static m(I)I
    .registers 1

    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->l(I)[I

    move-result-object p0

    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->n([I)I

    move-result p0

    return p0
.end method

.method private static n([I)I
    .registers 3

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    aget v1, p0, v1

    add-int/2addr v0, v1

    const/4 v1, 0x6

    aget p0, p0, v1

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x9

    rem-int/lit8 v0, v0, 0x9

    return v0
.end method

.method private static o([I)I
    .registers 5

    array-length v0, p0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_e

    aget v3, p0, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_e
    return v1
.end method

.method private static p(Lcom/google/zxing/common/BitMatrix;IIZII)[I
    .registers 13

    const/16 v0, 0x8

    new-array v1, v0, [I

    const/4 v2, 0x1

    if-eqz p3, :cond_9

    const/4 v3, 0x1

    goto :goto_a

    :cond_9
    const/4 v3, -0x1

    :goto_a
    const/4 v4, 0x0

    move v5, p3

    :goto_c
    if-eqz p3, :cond_11

    if-ge p4, p2, :cond_27

    goto :goto_13

    :cond_11
    if-lt p4, p1, :cond_27

    :goto_13
    if-ge v4, v0, :cond_27

    invoke-virtual {p0, p4, p5}, Lcom/google/zxing/common/BitMatrix;->f(II)Z

    move-result v6

    if-ne v6, v5, :cond_22

    aget v6, v1, v4

    add-int/2addr v6, v2

    aput v6, v1, v4

    add-int/2addr p4, v3

    goto :goto_c

    :cond_22
    add-int/lit8 v4, v4, 0x1

    xor-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_27
    if-eq v4, v0, :cond_34

    if-eqz p3, :cond_2c

    move p1, p2

    :cond_2c
    if-ne p4, p1, :cond_32

    const/4 p0, 0x7

    if-ne v4, p0, :cond_32

    goto :goto_34

    :cond_32
    const/4 p0, 0x0

    return-object p0

    :cond_34
    :goto_34
    return-object v1
.end method

.method private static q(I)I
    .registers 2

    const/4 v0, 0x2

    shl-int p0, v0, p0

    return p0
.end method

.method private static r(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/c;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/g;
    .registers 21

    move/from16 v8, p3

    new-instance v9, Lcom/google/zxing/pdf417/decoder/g;

    move-object/from16 v10, p1

    invoke-direct {v9, v10, v8}, Lcom/google/zxing/pdf417/decoder/g;-><init>(Lcom/google/zxing/pdf417/decoder/c;Z)V

    const/4 v0, 0x0

    const/4 v11, 0x0

    :goto_b
    const/4 v0, 0x2

    if-ge v11, v0, :cond_55

    if-nez v11, :cond_13

    const/4 v0, 0x1

    const/4 v12, 0x1

    goto :goto_15

    :cond_13
    const/4 v0, -0x1

    const/4 v12, -0x1

    :goto_15
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->b()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->c()F

    move-result v1

    float-to-int v1, v1

    move v13, v0

    move v14, v1

    :goto_21
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/pdf417/decoder/c;->e()I

    move-result v0

    if-gt v14, v0, :cond_52

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/pdf417/decoder/c;->g()I

    move-result v0

    if-lt v14, v0, :cond_52

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->h()I

    move-result v2

    move-object v0, p0

    move/from16 v3, p3

    move v4, v13

    move v5, v14

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v0 .. v7}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->j(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/d;

    move-result-object v0

    if-eqz v0, :cond_50

    invoke-virtual {v9, v14, v0}, Lcom/google/zxing/pdf417/decoder/f;->f(ILcom/google/zxing/pdf417/decoder/d;)V

    if-eqz v8, :cond_4b

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/d;->d()I

    move-result v0

    goto :goto_4f

    :cond_4b
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/d;->b()I

    move-result v0

    :goto_4f
    move v13, v0

    :cond_50
    add-int/2addr v14, v12

    goto :goto_21

    :cond_52
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_55
    return-object v9
.end method

.method private static s(Lcom/google/zxing/pdf417/decoder/e;IIZ)I
    .registers 10

    if-eqz p3, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, -0x1

    :goto_5
    const/4 v1, 0x0

    sub-int v2, p1, v0

    invoke-static {p0, v2}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->t(Lcom/google/zxing/pdf417/decoder/e;I)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {p0, v2}, Lcom/google/zxing/pdf417/decoder/e;->n(I)Lcom/google/zxing/pdf417/decoder/f;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/zxing/pdf417/decoder/f;->b(I)Lcom/google/zxing/pdf417/decoder/d;

    move-result-object v1

    :cond_16
    if-eqz v1, :cond_24

    if-eqz p3, :cond_1f

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/d;->b()I

    move-result p0

    goto :goto_23

    :cond_1f
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/d;->d()I

    move-result p0

    :goto_23
    return p0

    :cond_24
    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/e;->n(I)Lcom/google/zxing/pdf417/decoder/f;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/zxing/pdf417/decoder/f;->c(I)Lcom/google/zxing/pdf417/decoder/d;

    move-result-object v1

    if-eqz v1, :cond_3a

    if-eqz p3, :cond_35

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/d;->d()I

    move-result p0

    goto :goto_39

    :cond_35
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/d;->b()I

    move-result p0

    :goto_39
    return p0

    :cond_3a
    invoke-static {p0, v2}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->t(Lcom/google/zxing/pdf417/decoder/e;I)Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-virtual {p0, v2}, Lcom/google/zxing/pdf417/decoder/e;->n(I)Lcom/google/zxing/pdf417/decoder/f;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/zxing/pdf417/decoder/f;->c(I)Lcom/google/zxing/pdf417/decoder/d;

    move-result-object v1

    :cond_48
    if-eqz v1, :cond_56

    if-eqz p3, :cond_51

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/d;->b()I

    move-result p0

    goto :goto_55

    :cond_51
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/d;->d()I

    move-result p0

    :goto_55
    return p0

    :cond_56
    const/4 p2, 0x0

    const/4 v1, 0x0

    :goto_58
    sub-int/2addr p1, v0

    invoke-static {p0, p1}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->t(Lcom/google/zxing/pdf417/decoder/e;I)Z

    move-result v2

    if-eqz v2, :cond_8f

    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/e;->n(I)Lcom/google/zxing/pdf417/decoder/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/f;->d()[Lcom/google/zxing/pdf417/decoder/d;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_69
    if-ge v4, v3, :cond_8c

    aget-object v5, v2, v4

    if-eqz v5, :cond_89

    if-eqz p3, :cond_76

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/d;->b()I

    move-result p0

    goto :goto_7a

    :cond_76
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/d;->d()I

    move-result p0

    :goto_7a
    mul-int v0, v0, v1

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/d;->b()I

    move-result p1

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/d;->d()I

    move-result p2

    sub-int/2addr p1, p2

    mul-int v0, v0, p1

    add-int/2addr p0, v0

    return p0

    :cond_89
    add-int/lit8 v4, v4, 0x1

    goto :goto_69

    :cond_8c
    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    :cond_8f
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/e;->m()Lcom/google/zxing/pdf417/decoder/c;

    move-result-object p0

    if-eqz p3, :cond_9a

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/c;->f()I

    move-result p0

    goto :goto_9e

    :cond_9a
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/c;->d()I

    move-result p0

    :goto_9e
    return p0
.end method

.method private static t(Lcom/google/zxing/pdf417/decoder/e;I)Z
    .registers 3

    const/4 v0, 0x1

    if-ltz p1, :cond_b

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/e;->j()I

    move-result p0

    add-int/2addr p0, v0

    if-gt p1, p0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public static toString([[Lcom/google/zxing/pdf417/decoder/b;)Ljava/lang/String;
    .registers 10

    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    :try_start_7
    array-length v3, p0

    if-ge v2, v3, :cond_5d

    const-string v3, "Row %2d: "

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v0, v3, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const/4 v3, 0x0

    :goto_19
    aget-object v5, p0, v2

    array-length v5, v5

    if-ge v3, v5, :cond_53

    aget-object v5, p0, v2

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/b;->b()[I

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_30

    const-string v5, "        "

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_50

    :cond_30
    const-string v6, "%4d(%2d)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/b;->b()[I

    move-result-object v8

    aget v8, v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/b;->b()[I

    move-result-object v8

    aget v8, v8, v1

    invoke-virtual {v5, v8}, Lcom/google/zxing/pdf417/decoder/b;->a(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-virtual {v0, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    :goto_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_53
    const-string v3, "%n"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_5d
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_61
    .catchall {:try_start_7 .. :try_end_61} :catchall_65

    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    return-object p0

    :catchall_65
    move-exception p0

    :try_start_66
    throw p0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_67

    :catchall_67
    move-exception v1

    :try_start_68
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_6c

    goto :goto_70

    :catchall_6c
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_70
    throw v1
.end method

.method private static u(Lcom/google/zxing/pdf417/decoder/g;Lcom/google/zxing/pdf417/decoder/g;)Lcom/google/zxing/pdf417/decoder/e;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    return-object v0

    :cond_6
    invoke-static {p0, p1}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->k(Lcom/google/zxing/pdf417/decoder/g;Lcom/google/zxing/pdf417/decoder/g;)Lcom/google/zxing/pdf417/decoder/a;

    move-result-object v1

    if-nez v1, :cond_d

    return-object v0

    :cond_d
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->a(Lcom/google/zxing/pdf417/decoder/g;)Lcom/google/zxing/pdf417/decoder/c;

    move-result-object p0

    invoke-static {p1}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->a(Lcom/google/zxing/pdf417/decoder/g;)Lcom/google/zxing/pdf417/decoder/c;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/zxing/pdf417/decoder/c;->j(Lcom/google/zxing/pdf417/decoder/c;Lcom/google/zxing/pdf417/decoder/c;)Lcom/google/zxing/pdf417/decoder/c;

    move-result-object p0

    new-instance p1, Lcom/google/zxing/pdf417/decoder/e;

    invoke-direct {p1, v1, p0}, Lcom/google/zxing/pdf417/decoder/e;-><init>(Lcom/google/zxing/pdf417/decoder/a;Lcom/google/zxing/pdf417/decoder/c;)V

    return-object p1
.end method

.method private static v([II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1f

    const/4 v0, 0x0

    aget v1, p0, v0

    array-length v2, p0

    if-gt v1, v2, :cond_1a

    if-nez v1, :cond_19

    array-length v1, p0

    if-ge p1, v1, :cond_14

    array-length v1, p0

    sub-int/2addr v1, p1

    aput v1, p0, v0

    goto :goto_19

    :cond_14
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_19
    :goto_19
    return-void

    :cond_1a
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_1f
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method
