###### Class com.google.zxing.aztec.encoder.b (com.google.zxing.aztec.encoder.b)
.class final Lcom/google/zxing/aztec/encoder/b;
.super Lcom/google/zxing/aztec/encoder/f;
.source "BinaryShiftToken.java"


# instance fields
.field private final c:I

.field private final d:I


# direct methods
.method constructor <init>(Lcom/google/zxing/aztec/encoder/f;II)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/zxing/aztec/encoder/f;-><init>(Lcom/google/zxing/aztec/encoder/f;)V

    iput p2, p0, Lcom/google/zxing/aztec/encoder/b;->c:I

    iput p3, p0, Lcom/google/zxing/aztec/encoder/b;->d:I

    return-void
.end method


# virtual methods
.method public c(Lcom/google/zxing/common/a;[B)V
    .registers 8

    iget v0, p0, Lcom/google/zxing/aztec/encoder/b;->d:I

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_39

    const/16 v2, 0x3e

    const/16 v3, 0x1f

    if-eqz v1, :cond_f

    if-ne v1, v3, :cond_2c

    if-gt v0, v2, :cond_2c

    :cond_f
    const/4 v4, 0x5

    invoke-virtual {p1, v3, v4}, Lcom/google/zxing/common/a;->e(II)V

    if-le v0, v2, :cond_1d

    add-int/lit8 v2, v0, -0x1f

    const/16 v3, 0x10

    invoke-virtual {p1, v2, v3}, Lcom/google/zxing/common/a;->e(II)V

    goto :goto_2c

    :cond_1d
    if-nez v1, :cond_27

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p1, v2, v4}, Lcom/google/zxing/common/a;->e(II)V

    goto :goto_2c

    :cond_27
    add-int/lit8 v2, v0, -0x1f

    invoke-virtual {p1, v2, v4}, Lcom/google/zxing/common/a;->e(II)V

    :cond_2c
    :goto_2c
    iget v2, p0, Lcom/google/zxing/aztec/encoder/b;->c:I

    add-int/2addr v2, v1

    aget-byte v2, p2, v2

    const/16 v3, 0x8

    invoke-virtual {p1, v2, v3}, Lcom/google/zxing/common/a;->e(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_39
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/zxing/aztec/encoder/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/zxing/aztec/encoder/b;->c:I

    iget v2, p0, Lcom/google/zxing/aztec/encoder/b;->d:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
