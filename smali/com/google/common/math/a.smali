###### Class com.google.common.math.a (com.google.common.math.a)
.class final Lcom/google/common/math/a;
.super Ljava/lang/Object;
.source "DoubleUtils.java"


# direct methods
.method static a(Ljava/math/BigInteger;)D
    .registers 15

    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/16 v3, 0x3f

    if-ge v1, v3, :cond_14

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0

    :cond_14
    const/16 v3, 0x3ff

    if-le v1, v3, :cond_22

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result p0

    int-to-double v0, p0

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    mul-double v0, v0, v2

    return-wide v0

    :cond_22
    add-int/lit8 v4, v1, -0x34

    sub-int/2addr v4, v2

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v5

    shr-long v7, v5, v2

    const-wide v9, 0xfffffffffffffL

    and-long/2addr v7, v9

    const-wide/16 v9, 0x1

    and-long/2addr v5, v9

    const-wide/16 v11, 0x0

    cmp-long v13, v5, v11

    if-eqz v13, :cond_4b

    and-long v5, v7, v9

    cmp-long v13, v5, v11

    if-nez v13, :cond_4c

    invoke-virtual {v0}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v0

    if-ge v0, v4, :cond_4b

    goto :goto_4c

    :cond_4b
    const/4 v2, 0x0

    :cond_4c
    :goto_4c
    if-eqz v2, :cond_4f

    add-long/2addr v7, v9

    :cond_4f
    add-int/2addr v1, v3

    int-to-long v0, v1

    const/16 v2, 0x34

    shl-long/2addr v0, v2

    add-long/2addr v0, v7

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result p0

    int-to-long v2, p0

    const-wide/high16 v4, -0x8000000000000000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method static b(D)D
    .registers 4

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method static c(D)J
    .registers 5

    invoke-static {p0, p1}, Lcom/google/common/math/a;->d(D)Z

    move-result v0

    const-string v1, "not a normal value"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    const-wide v1, 0xfffffffffffffL

    and-long/2addr p0, v1

    const/16 v1, -0x3ff

    if-ne v0, v1, :cond_1e

    const/4 v0, 0x1

    shl-long/2addr p0, v0

    goto :goto_21

    :cond_1e
    const-wide/high16 v0, 0x10000000000000L

    or-long/2addr p0, v0

    :goto_21
    return-wide p0
.end method

.method static d(D)Z
    .registers 2

    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result p0

    const/16 p1, 0x3ff

    if-gt p0, p1, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method static e(D)Z
    .registers 2

    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result p0

    const/16 p1, -0x3fe

    if-lt p0, p1, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method static f(D)D
    .registers 2

    neg-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide p0

    neg-double p0, p0

    return-wide p0
.end method

.method static g(D)D
    .registers 4

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    const-wide v0, 0xfffffffffffffL

    and-long/2addr p0, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    or-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method
