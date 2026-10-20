###### Class com.google.zxing.datamatrix.encoder.a (com.google.zxing.datamatrix.encoder.a)
.class final Lcom/google/zxing/datamatrix/encoder/a;
.super Ljava/lang/Object;
.source "ASCIIEncoder.java"

# interfaces
.implements Lcom/google/zxing/datamatrix/encoder/g;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(CC)C
    .registers 5

    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->d(C)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->d(C)Z

    move-result v0

    if-eqz v0, :cond_17

    add-int/lit8 p0, p0, -0x30

    mul-int/lit8 p0, p0, 0xa

    add-int/lit8 p1, p1, -0x30

    add-int/2addr p0, p1

    add-int/lit16 p0, p0, 0x82

    int-to-char p0, p0

    return p0

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not digits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lcom/google/zxing/datamatrix/encoder/h;)V
    .registers 8

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/h;->d()Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Lcom/google/zxing/datamatrix/encoder/h;->f:I

    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->determineConsecutiveDigitCount(Ljava/lang/CharSequence;I)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-lt v0, v1, :cond_31

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/h;->d()Ljava/lang/String;

    move-result-object v0

    iget v3, p1, Lcom/google/zxing/datamatrix/encoder/h;->f:I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/h;->d()Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Lcom/google/zxing/datamatrix/encoder/h;->f:I

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v0, v2}, Lcom/google/zxing/datamatrix/encoder/a;->b(CC)C

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/h;->r(C)V

    iget v0, p1, Lcom/google/zxing/datamatrix/encoder/h;->f:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/google/zxing/datamatrix/encoder/h;->f:I

    goto/16 :goto_bc

    :cond_31
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/h;->c()C

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/h;->d()Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Lcom/google/zxing/datamatrix/encoder/h;->f:I

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/a;->c()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->l(Ljava/lang/CharSequence;II)I

    move-result v3

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/a;->c()I

    move-result v4

    if-eq v3, v4, :cond_9a

    if-eq v3, v2, :cond_91

    if-eq v3, v1, :cond_88

    const/4 v0, 0x3

    if-eq v3, v0, :cond_7f

    const/4 v0, 0x4

    if-eq v3, v0, :cond_76

    const/4 v0, 0x5

    if-ne v3, v0, :cond_5f

    const/16 v1, 0xe7

    invoke-virtual {p1, v1}, Lcom/google/zxing/datamatrix/encoder/h;->r(C)V

    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/h;->o(I)V

    return-void

    :cond_5f
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_76
    const/16 v1, 0xf0

    invoke-virtual {p1, v1}, Lcom/google/zxing/datamatrix/encoder/h;->r(C)V

    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/h;->o(I)V

    goto :goto_bc

    :cond_7f
    const/16 v1, 0xee

    invoke-virtual {p1, v1}, Lcom/google/zxing/datamatrix/encoder/h;->r(C)V

    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/h;->o(I)V

    goto :goto_bc

    :cond_88
    const/16 v0, 0xef

    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/h;->r(C)V

    invoke-virtual {p1, v1}, Lcom/google/zxing/datamatrix/encoder/h;->o(I)V

    goto :goto_bc

    :cond_91
    const/16 v0, 0xe6

    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/h;->r(C)V

    invoke-virtual {p1, v2}, Lcom/google/zxing/datamatrix/encoder/h;->o(I)V

    return-void

    :cond_9a
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->e(C)Z

    move-result v1

    if-eqz v1, :cond_b2

    const/16 v1, 0xeb

    invoke-virtual {p1, v1}, Lcom/google/zxing/datamatrix/encoder/h;->r(C)V

    add-int/lit8 v0, v0, -0x80

    add-int/2addr v0, v2

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/h;->r(C)V

    iget v0, p1, Lcom/google/zxing/datamatrix/encoder/h;->f:I

    add-int/2addr v0, v2

    iput v0, p1, Lcom/google/zxing/datamatrix/encoder/h;->f:I

    goto :goto_bc

    :cond_b2
    add-int/2addr v0, v2

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/h;->r(C)V

    iget v0, p1, Lcom/google/zxing/datamatrix/encoder/h;->f:I

    add-int/2addr v0, v2

    iput v0, p1, Lcom/google/zxing/datamatrix/encoder/h;->f:I

    :goto_bc
    return-void
.end method

.method public c()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
