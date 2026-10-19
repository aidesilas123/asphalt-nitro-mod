###### Class com.google.common.math.d (com.google.common.math.d)
.class abstract Lcom/google/common/math/d;
.super Ljava/lang/Object;
.source "ToDoubleRounder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Number;",
        ":",
        "Ljava/lang/Comparable<",
        "TX;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;TX;)TX;"
        }
    .end annotation
.end method

.method final b(Ljava/lang/Number;Ljava/math/RoundingMode;)D
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;",
            "Ljava/math/RoundingMode;",
            ")D"
        }
    .end annotation

    const-string v0, "x"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mode"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/google/common/math/d;->c(Ljava/lang/Number;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    const-wide/high16 v3, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v5, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    if-eqz v2, :cond_64

    sget-object v2, Lcom/google/common/math/d$a;->a:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v7

    aget v2, v2, v7

    const-wide v7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    packed-switch v2, :pswitch_data_13a

    goto :goto_64

    :pswitch_29
    new-instance p2, Ljava/lang/ArithmeticException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cannot be represented precisely as a double"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_4a
    return-wide v0

    :pswitch_4b
    cmpl-double p1, v0, v5

    if-nez p1, :cond_50

    goto :goto_55

    :cond_50
    const-wide v5, -0x10000000000001L

    :goto_55
    return-wide v5

    :pswitch_56
    cmpl-double p1, v0, v5

    if-nez p1, :cond_5b

    move-wide v3, v7

    :cond_5b
    return-wide v3

    :pswitch_5c
    invoke-virtual {p0, p1}, Lcom/google/common/math/d;->d(Ljava/lang/Number;)I

    move-result p1

    int-to-double p1, p1

    mul-double p1, p1, v7

    return-wide p1

    :cond_64
    :goto_64
    sget-object v2, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/math/d;->e(DLjava/math/RoundingMode;)Ljava/lang/Number;

    move-result-object v2

    move-object v7, p1

    check-cast v7, Ljava/lang/Comparable;

    invoke-interface {v7, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v7

    sget-object v8, Lcom/google/common/math/d$a;->a:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v9

    aget v9, v8, v9

    const-string v10, "impossible"

    packed-switch v9, :pswitch_data_14e

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_84
    if-nez v7, :cond_88

    const/4 p1, 0x1

    goto :goto_89

    :cond_88
    const/4 p1, 0x0

    :goto_89
    invoke-static {p1}, Lcom/google/common/math/b;->k(Z)V

    return-wide v0

    :pswitch_8d
    invoke-virtual {p0, p1}, Lcom/google/common/math/d;->d(Ljava/lang/Number;)I

    move-result p1

    if-ltz p1, :cond_9b

    if-gtz v7, :cond_96

    goto :goto_9a

    :cond_96
    invoke-static {v0, v1}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v0

    :goto_9a
    return-wide v0

    :cond_9b
    if-ltz v7, :cond_9e

    goto :goto_a2

    :cond_9e
    invoke-static {v0, v1}, Lcom/google/common/math/a;->f(D)D

    move-result-wide v0

    :goto_a2
    return-wide v0

    :pswitch_a3
    if-gtz v7, :cond_a6

    goto :goto_aa

    :cond_a6
    invoke-static {v0, v1}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v0

    :goto_aa
    return-wide v0

    :pswitch_ab
    if-ltz v7, :cond_ae

    goto :goto_b2

    :cond_ae
    invoke-static {v0, v1}, Lcom/google/common/math/a;->f(D)D

    move-result-wide v0

    :goto_b2
    return-wide v0

    :pswitch_b3
    if-ltz v7, :cond_c5

    invoke-static {v0, v1}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v3

    cmpl-double v7, v3, v5

    if-nez v7, :cond_be

    return-wide v0

    :cond_be
    sget-object v5, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-virtual {p0, v3, v4, v5}, Lcom/google/common/math/d;->e(DLjava/math/RoundingMode;)Ljava/lang/Number;

    move-result-object v5

    goto :goto_d9

    :cond_c5
    invoke-static {v0, v1}, Lcom/google/common/math/a;->f(D)D

    move-result-wide v5

    cmpl-double v7, v5, v3

    if-nez v7, :cond_ce

    return-wide v0

    :cond_ce
    sget-object v3, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {p0, v5, v6, v3}, Lcom/google/common/math/d;->e(DLjava/math/RoundingMode;)Ljava/lang/Number;

    move-result-object v3

    move-wide v11, v5

    move-object v5, v2

    move-object v2, v3

    move-wide v3, v0

    move-wide v0, v11

    :goto_d9
    invoke-virtual {p0, p1, v2}, Lcom/google/common/math/d;->a(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {p0, v5, p1}, Lcom/google/common/math/d;->a(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v5

    check-cast v2, Ljava/lang/Comparable;

    invoke-interface {v2, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_ea

    return-wide v0

    :cond_ea
    if-lez v2, :cond_ed

    return-wide v3

    :cond_ed
    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result p2

    aget p2, v8, p2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_113

    const/4 v2, 0x3

    if-eq p2, v2, :cond_10a

    const/4 v2, 0x4

    if-ne p2, v2, :cond_104

    invoke-virtual {p0, p1}, Lcom/google/common/math/d;->d(Ljava/lang/Number;)I

    move-result p1

    if-ltz p1, :cond_103

    move-wide v0, v3

    :cond_103
    return-wide v0

    :cond_104
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_10a
    invoke-virtual {p0, p1}, Lcom/google/common/math/d;->d(Ljava/lang/Number;)I

    move-result p1

    if-ltz p1, :cond_111

    goto :goto_112

    :cond_111
    move-wide v0, v3

    :goto_112
    return-wide v0

    :cond_113
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    const-wide/16 v5, 0x1

    and-long/2addr p1, v5

    const-wide/16 v5, 0x0

    cmp-long v2, p1, v5

    if-nez v2, :cond_121

    goto :goto_122

    :cond_121
    move-wide v0, v3

    :goto_122
    return-wide v0

    :pswitch_123
    invoke-virtual {p0, p1}, Lcom/google/common/math/d;->d(Ljava/lang/Number;)I

    move-result p1

    if-ltz p1, :cond_131

    if-ltz v7, :cond_12c

    goto :goto_130

    :cond_12c
    invoke-static {v0, v1}, Lcom/google/common/math/a;->f(D)D

    move-result-wide v0

    :goto_130
    return-wide v0

    :cond_131
    if-gtz v7, :cond_134

    goto :goto_138

    :cond_134
    invoke-static {v0, v1}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v0

    :goto_138
    return-wide v0

    nop

    :pswitch_data_13a
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
        :pswitch_56
        :pswitch_4b
        :pswitch_4a
        :pswitch_29
    .end packed-switch

    :pswitch_data_14e
    .packed-switch 0x1
        :pswitch_123
        :pswitch_b3
        :pswitch_b3
        :pswitch_b3
        :pswitch_ab
        :pswitch_a3
        :pswitch_8d
        :pswitch_84
    .end packed-switch
.end method

.method abstract c(Ljava/lang/Number;)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;)D"
        }
    .end annotation
.end method

.method abstract d(Ljava/lang/Number;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;)I"
        }
    .end annotation
.end method

.method abstract e(DLjava/math/RoundingMode;)Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/math/RoundingMode;",
            ")TX;"
        }
    .end annotation
.end method
