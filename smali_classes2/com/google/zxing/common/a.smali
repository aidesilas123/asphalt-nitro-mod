###### Class com.google.zxing.common.a (com.google.zxing.common.a)
.class public final Lcom/google/zxing/common/a;
.super Ljava/lang/Object;
.source "BitArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final a:[I


# instance fields
.field private b:[I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/zxing/common/a;->a:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/common/a;->c:I

    sget-object v0, Lcom/google/zxing/common/a;->a:[I

    iput-object v0, p0, Lcom/google/zxing/common/a;->b:[I

    return-void
.end method

.method constructor <init>([II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/common/a;->b:[I

    iput p2, p0, Lcom/google/zxing/common/a;->c:I

    return-void
.end method

.method private g(I)V
    .registers 5

    iget-object v0, p0, Lcom/google/zxing/common/a;->b:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x20

    if-le p1, v0, :cond_1e

    int-to-float p1, p1

    const/high16 v0, 0x3f400000    # 0.75f

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    invoke-static {p1}, Lcom/google/zxing/common/a;->k(I)[I

    move-result-object p1

    iget-object v0, p0, Lcom/google/zxing/common/a;->b:[I

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/google/zxing/common/a;->b:[I

    :cond_1e
    return-void
.end method

.method private static k(I)[I
    .registers 1

    add-int/lit8 p0, p0, 0x1f

    div-int/lit8 p0, p0, 0x20

    new-array p0, p0, [I

    return-object p0
.end method


# virtual methods
.method public b(Z)V
    .registers 6

    iget v0, p0, Lcom/google/zxing/common/a;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/zxing/common/a;->g(I)V

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/google/zxing/common/a;->b:[I

    iget v0, p0, Lcom/google/zxing/common/a;->c:I

    div-int/lit8 v2, v0, 0x20

    aget v3, p1, v2

    and-int/lit8 v0, v0, 0x1f

    shl-int v0, v1, v0

    or-int/2addr v0, v3

    aput v0, p1, v2

    :cond_18
    iget p1, p0, Lcom/google/zxing/common/a;->c:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/zxing/common/a;->c:I

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/zxing/common/a;->f()Lcom/google/zxing/common/a;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/google/zxing/common/a;)V
    .registers 5

    iget v0, p1, Lcom/google/zxing/common/a;->c:I

    iget v1, p0, Lcom/google/zxing/common/a;->c:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/google/zxing/common/a;->g(I)V

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_15

    invoke-virtual {p1, v1}, Lcom/google/zxing/common/a;->h(I)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/a;->b(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_15
    return-void
.end method

.method public e(II)V
    .registers 9

    if-ltz p2, :cond_2b

    const/16 v0, 0x20

    if-gt p2, v0, :cond_2b

    iget v0, p0, Lcom/google/zxing/common/a;->c:I

    add-int v1, v0, p2

    invoke-direct {p0, v1}, Lcom/google/zxing/common/a;->g(I)V

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    :goto_f
    if-ltz p2, :cond_28

    shl-int v2, v1, p2

    and-int/2addr v2, p1

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/google/zxing/common/a;->b:[I

    div-int/lit8 v3, v0, 0x20

    aget v4, v2, v3

    and-int/lit8 v5, v0, 0x1f

    shl-int v5, v1, v5

    or-int/2addr v4, v5

    aput v4, v2, v3

    :cond_23
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_f

    :cond_28
    iput v0, p0, Lcom/google/zxing/common/a;->c:I

    return-void

    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Num bits must be between 0 and 32"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/google/zxing/common/a;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lcom/google/zxing/common/a;

    iget v0, p0, Lcom/google/zxing/common/a;->c:I

    iget v2, p1, Lcom/google/zxing/common/a;->c:I

    if-ne v0, v2, :cond_19

    iget-object v0, p0, Lcom/google/zxing/common/a;->b:[I

    iget-object p1, p1, Lcom/google/zxing/common/a;->b:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method public f()Lcom/google/zxing/common/a;
    .registers 4

    new-instance v0, Lcom/google/zxing/common/a;

    iget-object v1, p0, Lcom/google/zxing/common/a;->b:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iget v2, p0, Lcom/google/zxing/common/a;->c:I

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/common/a;-><init>([II)V

    return-object v0
.end method

.method public h(I)Z
    .registers 4

    iget-object v0, p0, Lcom/google/zxing/common/a;->b:[I

    div-int/lit8 v1, p1, 0x20

    aget v0, v0, v1

    and-int/lit8 p1, p1, 0x1f

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/google/zxing/common/a;->c:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/zxing/common/a;->b:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public i()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/common/a;->c:I

    return v0
.end method

.method public j()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/common/a;->c:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public l(I[BII)V
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p4, :cond_23

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    const/16 v4, 0x8

    if-ge v2, v4, :cond_1b

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/a;->h(I)Z

    move-result v4

    if-eqz v4, :cond_16

    rsub-int/lit8 v4, v2, 0x7

    const/4 v5, 0x1

    shl-int v4, v5, v4

    or-int/2addr v3, v4

    :cond_16
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1b
    add-int v2, p3, v1

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_23
    return-void
.end method

.method public m(Lcom/google/zxing/common/a;)V
    .registers 6

    iget v0, p0, Lcom/google/zxing/common/a;->c:I

    iget v1, p1, Lcom/google/zxing/common/a;->c:I

    if-ne v0, v1, :cond_19

    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Lcom/google/zxing/common/a;->b:[I

    array-length v2, v1

    if-ge v0, v2, :cond_18

    aget v2, v1, v0

    iget-object v3, p1, Lcom/google/zxing/common/a;->b:[I

    aget v3, v3, v0

    xor-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_18
    return-void

    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Sizes don\'t match"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/zxing/common/a;->c:I

    div-int/lit8 v2, v1, 0x8

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_d
    iget v2, p0, Lcom/google/zxing/common/a;->c:I

    if-ge v1, v2, :cond_2b

    and-int/lit8 v2, v1, 0x7

    if-nez v2, :cond_1a

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1a
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/a;->h(I)Z

    move-result v2

    if-eqz v2, :cond_23

    const/16 v2, 0x58

    goto :goto_25

    :cond_23
    const/16 v2, 0x2e

    :goto_25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
