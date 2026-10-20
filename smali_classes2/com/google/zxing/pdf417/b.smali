###### Class com.google.zxing.pdf417.b (com.google.zxing.pdf417.b)
.class public final Lcom/google/zxing/pdf417/b;
.super Ljava/lang/Object;
.source "PDF417Writer.java"

# interfaces
.implements Lcom/google/zxing/f;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b([[BI)Lcom/google/zxing/common/BitMatrix;
    .registers 10

    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v2, v2

    mul-int/lit8 v3, p1, 0x2

    add-int/2addr v2, v3

    array-length v4, p0

    add-int/2addr v4, v3

    invoke-direct {v0, v2, v4}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->d()V

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->g()I

    move-result v2

    sub-int/2addr v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    :goto_19
    array-length v5, p0

    if-ge v4, v5, :cond_35

    aget-object v5, p0, v4

    const/4 v6, 0x0

    :goto_1f
    aget-object v7, p0, v1

    array-length v7, v7

    if-ge v6, v7, :cond_30

    aget-byte v7, v5, v6

    if-ne v7, v3, :cond_2d

    add-int v7, v6, p1

    invoke-virtual {v0, v7, v2}, Lcom/google/zxing/common/BitMatrix;->i(II)V

    :cond_2d
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    :cond_30
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_19

    :cond_35
    return-object v0
.end method

.method private static c(Lcom/google/zxing/pdf417/encoder/d;Ljava/lang/String;IIIIZ)Lcom/google/zxing/common/BitMatrix;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/g;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p6}, Lcom/google/zxing/pdf417/encoder/d;->e(Ljava/lang/String;IZ)V

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/encoder/d;->f()Lcom/google/zxing/pdf417/encoder/a;

    move-result-object p1

    const/4 p2, 0x1

    const/4 p6, 0x4

    invoke-virtual {p1, p2, p6}, Lcom/google/zxing/pdf417/encoder/a;->b(II)[[B

    move-result-object p1

    const/4 p6, 0x0

    if-le p4, p3, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    aget-object v1, p1, p6

    array-length v1, v1

    array-length v2, p1

    if-ge v1, v2, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    if-eq v0, v1, :cond_24

    invoke-static {p1}, Lcom/google/zxing/pdf417/b;->d([[B)[[B

    move-result-object p1

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    aget-object p6, p1, p6

    array-length p6, p6

    div-int/2addr p3, p6

    array-length p6, p1

    div-int/2addr p4, p6

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    if-le p3, p2, :cond_46

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/encoder/d;->f()Lcom/google/zxing/pdf417/encoder/a;

    move-result-object p0

    mul-int/lit8 p1, p3, 0x4

    invoke-virtual {p0, p3, p1}, Lcom/google/zxing/pdf417/encoder/a;->b(II)[[B

    move-result-object p0

    if-eqz v0, :cond_41

    invoke-static {p0}, Lcom/google/zxing/pdf417/b;->d([[B)[[B

    move-result-object p0

    :cond_41
    invoke-static {p0, p5}, Lcom/google/zxing/pdf417/b;->b([[BI)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    return-object p0

    :cond_46
    invoke-static {p1, p5}, Lcom/google/zxing/pdf417/b;->b([[BI)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    return-object p0
.end method

.method private static d([[B)[[B
    .registers 9

    const/4 v0, 0x0

    aget-object v1, p0, v0

    array-length v1, v1

    array-length v2, p0

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    aput v1, v3, v0

    const-class v1, B

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    const/4 v2, 0x0

    :goto_16
    array-length v3, p0

    if-ge v2, v3, :cond_30

    array-length v3, p0

    sub-int/2addr v3, v2

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    :goto_1d
    aget-object v6, p0, v0

    array-length v6, v6

    if-ge v5, v6, :cond_2d

    aget-object v6, v1, v5

    aget-object v7, p0, v2

    aget-byte v7, v7, v5

    aput-byte v7, v6, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_30
    return-object v1
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/g;
        }
    .end annotation

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->k:Lcom/google/zxing/BarcodeFormat;

    if-ne p2, v0, :cond_c4

    new-instance v1, Lcom/google/zxing/pdf417/encoder/d;

    invoke-direct {v1}, Lcom/google/zxing/pdf417/encoder/d;-><init>()V

    const/16 p2, 0x1e

    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eqz p5, :cond_b8

    sget-object v3, Lcom/google/zxing/EncodeHintType;->h:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/zxing/pdf417/encoder/d;->h(Z)V

    :cond_26
    sget-object v3, Lcom/google/zxing/EncodeHintType;->i:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/zxing/pdf417/encoder/Compaction;->valueOf(Ljava/lang/String;)Lcom/google/zxing/pdf417/encoder/Compaction;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/zxing/pdf417/encoder/d;->i(Lcom/google/zxing/pdf417/encoder/Compaction;)V

    :cond_3d
    sget-object v3, Lcom/google/zxing/EncodeHintType;->j:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/pdf417/encoder/c;

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/encoder/c;->a()I

    move-result v4

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/encoder/c;->c()I

    move-result v5

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/encoder/c;->b()I

    move-result v6

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/encoder/c;->d()I

    move-result v3

    invoke-virtual {v1, v4, v5, v6, v3}, Lcom/google/zxing/pdf417/encoder/d;->j(IIII)V

    :cond_5e
    sget-object v3, Lcom/google/zxing/EncodeHintType;->g:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_72

    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    :cond_72
    sget-object v3, Lcom/google/zxing/EncodeHintType;->a:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_86

    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_86
    sget-object v3, Lcom/google/zxing/EncodeHintType;->b:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9d

    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/zxing/pdf417/encoder/d;->k(Ljava/nio/charset/Charset;)V

    :cond_9d
    sget-object v3, Lcom/google/zxing/EncodeHintType;->k:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b4

    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_b4

    const/4 v2, 0x1

    :cond_b4
    move v6, p2

    move v3, v0

    move v7, v2

    goto :goto_bc

    :cond_b8
    const/4 v3, 0x2

    const/16 v6, 0x1e

    const/4 v7, 0x0

    :goto_bc
    move-object v2, p1

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v7}, Lcom/google/zxing/pdf417/b;->c(Lcom/google/zxing/pdf417/encoder/d;Ljava/lang/String;IIIIZ)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    return-object p1

    :cond_c4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Can only encode PDF_417, but got "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
