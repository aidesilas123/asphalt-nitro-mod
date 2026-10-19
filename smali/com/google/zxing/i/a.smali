###### Class com.google.zxing.i.a (com.google.zxing.i.a)
.class public final Lcom/google/zxing/i/a;
.super Ljava/lang/Object;
.source "DataMatrixWriter.java"

# interfaces
.implements Lcom/google/zxing/f;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Lcom/google/zxing/qrcode/encoder/b;II)Lcom/google/zxing/common/BitMatrix;
    .registers 13

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/b;->e()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/b;->d()I

    move-result v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    div-int v4, v2, v0

    div-int v5, v3, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int v5, v0, v4

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    mul-int v5, v1, v4

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    const/4 v5, 0x0

    if-lt p2, v1, :cond_2e

    if-ge p1, v0, :cond_28

    goto :goto_2e

    :cond_28
    new-instance v6, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v6, p1, p2}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    goto :goto_35

    :cond_2e
    :goto_2e
    new-instance v6, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v6, v0, v1}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_35
    invoke-virtual {v6}, Lcom/google/zxing/common/BitMatrix;->d()V

    const/4 p1, 0x0

    :goto_39
    if-ge p1, v1, :cond_51

    move v7, v2

    const/4 p2, 0x0

    :goto_3d
    if-ge p2, v0, :cond_4d

    invoke-virtual {p0, p2, p1}, Lcom/google/zxing/qrcode/encoder/b;->b(II)B

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_49

    invoke-virtual {v6, v7, v3, v4, v4}, Lcom/google/zxing/common/BitMatrix;->j(IIII)V

    :cond_49
    add-int/lit8 p2, p2, 0x1

    add-int/2addr v7, v4

    goto :goto_3d

    :cond_4d
    add-int/lit8 p1, p1, 0x1

    add-int/2addr v3, v4

    goto :goto_39

    :cond_51
    return-object v6
.end method

.method private static c(Lcom/google/zxing/datamatrix/encoder/e;Lcom/google/zxing/datamatrix/encoder/SymbolInfo;II)Lcom/google/zxing/common/BitMatrix;
    .registers 15

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->h()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->g()I

    move-result v1

    new-instance v2, Lcom/google/zxing/qrcode/encoder/b;

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->j()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->i()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/encoder/b;-><init>(II)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_18
    if-ge v4, v1, :cond_83

    iget v6, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->g:I

    rem-int v6, v4, v6

    const/4 v7, 0x1

    if-nez v6, :cond_39

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_23
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->j()I

    move-result v9

    if-ge v6, v9, :cond_37

    rem-int/lit8 v9, v6, 0x2

    if-nez v9, :cond_2f

    const/4 v9, 0x1

    goto :goto_30

    :cond_2f
    const/4 v9, 0x0

    :goto_30
    invoke-virtual {v2, v8, v5, v9}, Lcom/google/zxing/qrcode/encoder/b;->g(IIZ)V

    add-int/2addr v8, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    :cond_37
    add-int/lit8 v5, v5, 0x1

    :cond_39
    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_3b
    if-ge v6, v0, :cond_66

    iget v9, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->f:I

    rem-int v9, v6, v9

    if-nez v9, :cond_48

    invoke-virtual {v2, v8, v5, v7}, Lcom/google/zxing/qrcode/encoder/b;->g(IIZ)V

    add-int/lit8 v8, v8, 0x1

    :cond_48
    invoke-virtual {p0, v6, v4}, Lcom/google/zxing/datamatrix/encoder/e;->e(II)Z

    move-result v9

    invoke-virtual {v2, v8, v5, v9}, Lcom/google/zxing/qrcode/encoder/b;->g(IIZ)V

    add-int/2addr v8, v7

    iget v9, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->f:I

    rem-int v10, v6, v9

    sub-int/2addr v9, v7

    if-ne v10, v9, :cond_63

    rem-int/lit8 v9, v4, 0x2

    if-nez v9, :cond_5d

    const/4 v9, 0x1

    goto :goto_5e

    :cond_5d
    const/4 v9, 0x0

    :goto_5e
    invoke-virtual {v2, v8, v5, v9}, Lcom/google/zxing/qrcode/encoder/b;->g(IIZ)V

    add-int/lit8 v8, v8, 0x1

    :cond_63
    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    :cond_66
    add-int/lit8 v5, v5, 0x1

    iget v6, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->g:I

    rem-int v8, v4, v6

    sub-int/2addr v6, v7

    if-ne v8, v6, :cond_80

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_71
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->j()I

    move-result v9

    if-ge v6, v9, :cond_7e

    invoke-virtual {v2, v8, v5, v7}, Lcom/google/zxing/qrcode/encoder/b;->g(IIZ)V

    add-int/2addr v8, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_71

    :cond_7e
    add-int/lit8 v5, v5, 0x1

    :cond_80
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_83
    invoke-static {v2, p2, p3}, Lcom/google/zxing/i/a;->b(Lcom/google/zxing/qrcode/encoder/b;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .registers 13
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

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_102

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->f:Lcom/google/zxing/BarcodeFormat;

    if-ne p2, v0, :cond_eb

    if-ltz p3, :cond_cc

    if-ltz p4, :cond_cc

    sget-object p2, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->a:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    const/4 v0, 0x0

    if-eqz p5, :cond_37

    sget-object v1, Lcom/google/zxing/EncodeHintType;->c:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    if-eqz v1, :cond_1e

    move-object p2, v1

    :cond_1e
    sget-object v1, Lcom/google/zxing/EncodeHintType;->e:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/b;

    if-eqz v1, :cond_29

    goto :goto_2a

    :cond_29
    move-object v1, v0

    :goto_2a
    sget-object v2, Lcom/google/zxing/EncodeHintType;->f:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/b;

    if-eqz v2, :cond_35

    goto :goto_39

    :cond_35
    move-object v2, v0

    goto :goto_39

    :cond_37
    move-object v1, v0

    move-object v2, v1

    :goto_39
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p5, :cond_55

    sget-object v5, Lcom/google/zxing/EncodeHintType;->d:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_55

    invoke-interface {p5, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_55

    const/4 v5, 0x1

    goto :goto_56

    :cond_55
    const/4 v5, 0x0

    :goto_56
    if-eqz v5, :cond_8e

    sget-object v5, Lcom/google/zxing/EncodeHintType;->p:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6f

    invoke-interface {p5, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6f

    const/4 v3, 0x1

    :cond_6f
    sget-object v5, Lcom/google/zxing/EncodeHintType;->b:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_83

    invoke-interface {p5, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :cond_83
    if-eqz v3, :cond_88

    const/16 p5, 0x1d

    goto :goto_89

    :cond_88
    const/4 p5, -0x1

    :goto_89
    invoke-static {p1, v0, p5, p2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->encodeHighLevel(Ljava/lang/String;Ljava/nio/charset/Charset;ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;)Ljava/lang/String;

    move-result-object p1

    goto :goto_ab

    :cond_8e
    if-eqz p5, :cond_a7

    sget-object v0, Lcom/google/zxing/EncodeHintType;->r:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a7

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_a7

    const/4 v3, 0x1

    :cond_a7
    invoke-static {p1, p2, v1, v2, v3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/b;Lcom/google/zxing/b;Z)Ljava/lang/String;

    move-result-object p1

    :goto_ab
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p5

    invoke-static {p5, p2, v1, v2, v4}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->lookup(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/b;Lcom/google/zxing/b;Z)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->encodeECC200(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolInfo;)Ljava/lang/String;

    move-result-object p1

    new-instance p5, Lcom/google/zxing/datamatrix/encoder/e;

    invoke-virtual {p2}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->h()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->g()I

    move-result v1

    invoke-direct {p5, p1, v0, v1}, Lcom/google/zxing/datamatrix/encoder/e;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {p5}, Lcom/google/zxing/datamatrix/encoder/e;->h()V

    invoke-static {p5, p2, p3, p4}, Lcom/google/zxing/i/a;->c(Lcom/google/zxing/datamatrix/encoder/e;Lcom/google/zxing/datamatrix/encoder/SymbolInfo;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    return-object p1

    :cond_cc
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Requested dimensions can\'t be negative: "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x78

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_eb
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Can only encode DATA_MATRIX, but got "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_102
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Found empty contents"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
