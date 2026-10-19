###### Class com.google.zxing.datamatrix.encoder.f (com.google.zxing.datamatrix.encoder.f)
.class final Lcom/google/zxing/datamatrix/encoder/f;
.super Ljava/lang/Object;
.source "EdifactEncoder.java"

# interfaces
.implements Lcom/google/zxing/datamatrix/encoder/g;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(CLjava/lang/StringBuilder;)V
    .registers 4

    const/16 v0, 0x20

    if-lt p0, v0, :cond_c

    const/16 v0, 0x3f

    if-gt p0, v0, :cond_c

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1d

    :cond_c
    const/16 v0, 0x40

    if-lt p0, v0, :cond_1a

    const/16 v1, 0x5e

    if-gt p0, v1, :cond_1a

    sub-int/2addr p0, v0

    int-to-char p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1d

    :cond_1a
    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->c(C)V

    :goto_1d
    return-void
.end method

.method private static c(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 9

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_52

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/4 v3, 0x2

    if-lt v0, v3, :cond_14

    const/4 v4, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    goto :goto_15

    :cond_14
    const/4 v4, 0x0

    :goto_15
    const/4 v5, 0x3

    if-lt v0, v5, :cond_1d

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    goto :goto_1e

    :cond_1d
    const/4 v6, 0x0

    :goto_1e
    const/4 v7, 0x4

    if-lt v0, v7, :cond_25

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    :cond_25
    shl-int/lit8 p0, v2, 0x12

    shl-int/lit8 v2, v4, 0xc

    add-int/2addr p0, v2

    shl-int/lit8 v2, v6, 0x6

    add-int/2addr p0, v2

    add-int/2addr p0, v1

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    and-int/lit16 p0, p0, 0xff

    int-to-char p0, p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-lt v0, v3, :cond_48

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_48
    if-lt v0, v5, :cond_4d

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_52
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "StringBuilder must not be empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static e(Lcom/google/zxing/datamatrix/encoder/h;Ljava/lang/CharSequence;)V
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_96

    if-nez v1, :cond_b

    invoke-virtual {p0, v0}, Lcom/google/zxing/datamatrix/encoder/h;->o(I)V

    return-void

    :cond_b
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_42

    :try_start_f
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/h;->p()V

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/h;->g()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->a()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/h;->a()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/h;->f()I

    move-result v5

    if-le v5, v4, :cond_3a

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/h;->a()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0, v4}, Lcom/google/zxing/datamatrix/encoder/h;->q(I)V

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/h;->g()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->a()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/h;->a()I

    move-result v6
    :try_end_39
    .catchall {:try_start_f .. :try_end_39} :catchall_96

    sub-int/2addr v4, v6

    :cond_3a
    if-gt v5, v4, :cond_42

    if-gt v4, v2, :cond_42

    invoke-virtual {p0, v0}, Lcom/google/zxing/datamatrix/encoder/h;->o(I)V

    return-void

    :cond_42
    const/4 v4, 0x4

    if-gt v1, v4, :cond_8e

    sub-int/2addr v1, v3

    :try_start_46
    invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/f;->c(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/h;->i()Z

    move-result v4

    xor-int/2addr v4, v3

    if-eqz v4, :cond_54

    if-gt v1, v2, :cond_54

    goto :goto_55

    :cond_54
    const/4 v3, 0x0

    :goto_55
    if-gt v1, v2, :cond_7c

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/h;->a()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/google/zxing/datamatrix/encoder/h;->q(I)V

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/h;->g()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->a()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/h;->a()I

    move-result v4

    sub-int/2addr v2, v4

    const/4 v4, 0x3

    if-lt v2, v4, :cond_7c

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/h;->a()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/google/zxing/datamatrix/encoder/h;->q(I)V

    const/4 v3, 0x0

    :cond_7c
    if-eqz v3, :cond_87

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/h;->k()V

    iget p1, p0, Lcom/google/zxing/datamatrix/encoder/h;->f:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/google/zxing/datamatrix/encoder/h;->f:I

    goto :goto_8a

    :cond_87
    invoke-virtual {p0, p1}, Lcom/google/zxing/datamatrix/encoder/h;->s(Ljava/lang/String;)V
    :try_end_8a
    .catchall {:try_start_46 .. :try_end_8a} :catchall_96

    :goto_8a
    invoke-virtual {p0, v0}, Lcom/google/zxing/datamatrix/encoder/h;->o(I)V

    return-void

    :cond_8e
    :try_start_8e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Count must not exceed 4"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_96
    .catchall {:try_start_8e .. :try_end_96} :catchall_96

    :catchall_96
    move-exception p1

    invoke-virtual {p0, v0}, Lcom/google/zxing/datamatrix/encoder/h;->o(I)V

    throw p1
.end method


# virtual methods
.method public a(Lcom/google/zxing/datamatrix/encoder/h;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_5
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/h;->i()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/h;->c()C

    move-result v1

    invoke-static {v1, v0}, Lcom/google/zxing/datamatrix/encoder/f;->b(CLjava/lang/StringBuilder;)V

    iget v1, p1, Lcom/google/zxing/datamatrix/encoder/h;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/google/zxing/datamatrix/encoder/h;->f:I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_5

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/f;->c(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/zxing/datamatrix/encoder/h;->s(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/h;->d()Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Lcom/google/zxing/datamatrix/encoder/h;->f:I

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/f;->d()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->l(Ljava/lang/CharSequence;II)I

    move-result v2

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/f;->d()I

    move-result v3

    if-eq v2, v3, :cond_5

    invoke-virtual {p1, v1}, Lcom/google/zxing/datamatrix/encoder/h;->o(I)V

    :cond_41
    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1, v0}, Lcom/google/zxing/datamatrix/encoder/f;->e(Lcom/google/zxing/datamatrix/encoder/h;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public d()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method
