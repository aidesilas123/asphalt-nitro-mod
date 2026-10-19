###### Class com.google.common.math.c (com.google.common.math.c)
.class public final Lcom/google/common/math/c;
.super Ljava/lang/Object;
.source "StatsAccumulator.java"


# instance fields
.field private a:J

.field private b:D

.field private c:D

.field private d:D

.field private e:D


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/math/c;->a:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/math/c;->b:D

    iput-wide v0, p0, Lcom/google/common/math/c;->c:D

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/google/common/math/c;->d:D

    iput-wide v0, p0, Lcom/google/common/math/c;->e:D

    return-void
.end method

.method static g(DD)D
    .registers 5

    invoke-static {p0, p1}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_7

    return-wide p2

    :cond_7
    invoke-static {p2, p3}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-nez v0, :cond_14

    cmpl-double v0, p0, p2

    if-nez v0, :cond_12

    goto :goto_14

    :cond_12
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    :cond_14
    :goto_14
    return-wide p0
.end method


# virtual methods
.method public a(D)V
    .registers 12

    iget-wide v0, p0, Lcom/google/common/math/c;->a:J

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-nez v8, :cond_1d

    iput-wide v4, p0, Lcom/google/common/math/c;->a:J

    iput-wide p1, p0, Lcom/google/common/math/c;->b:D

    iput-wide p1, p0, Lcom/google/common/math/c;->d:D

    iput-wide p1, p0, Lcom/google/common/math/c;->e:D

    invoke-static {p1, p2}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result p1

    if-nez p1, :cond_5e

    iput-wide v2, p0, Lcom/google/common/math/c;->c:D

    goto :goto_5e

    :cond_1d
    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/common/math/c;->a:J

    invoke-static {p1, p2}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-wide v0, p0, Lcom/google/common/math/c;->b:D

    invoke-static {v0, v1}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-wide v0, p0, Lcom/google/common/math/c;->b:D

    sub-double v2, p1, v0

    iget-wide v4, p0, Lcom/google/common/math/c;->a:J

    long-to-double v4, v4

    div-double v4, v2, v4

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcom/google/common/math/c;->b:D

    iget-wide v4, p0, Lcom/google/common/math/c;->c:D

    sub-double v0, p1, v0

    mul-double v2, v2, v0

    add-double/2addr v4, v2

    iput-wide v4, p0, Lcom/google/common/math/c;->c:D

    goto :goto_4e

    :cond_44
    iget-wide v0, p0, Lcom/google/common/math/c;->b:D

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/math/c;->g(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/c;->b:D

    iput-wide v2, p0, Lcom/google/common/math/c;->c:D

    :goto_4e
    iget-wide v0, p0, Lcom/google/common/math/c;->d:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/c;->d:D

    iget-wide v0, p0, Lcom/google/common/math/c;->e:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/common/math/c;->e:D

    :cond_5e
    :goto_5e
    return-void
.end method

.method public b(Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/math/c;->a(D)V

    goto :goto_4

    :cond_18
    return-void
.end method

.method public c(Ljava/util/Iterator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/math/c;->a(D)V

    goto :goto_0

    :cond_14
    return-void
.end method

.method public varargs d([D)V
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Lcom/google/common/math/c;->a(D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    return-void
.end method

.method public varargs e([I)V
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_d

    aget v2, p1, v1

    int-to-double v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/google/common/math/c;->a(D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_d
    return-void
.end method

.method public varargs f([J)V
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_d

    aget-wide v2, p1, v1

    long-to-double v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/google/common/math/c;->a(D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_d
    return-void
.end method

.method public h()Lcom/google/common/math/Stats;
    .registers 13

    new-instance v11, Lcom/google/common/math/Stats;

    iget-wide v1, p0, Lcom/google/common/math/c;->a:J

    iget-wide v3, p0, Lcom/google/common/math/c;->b:D

    iget-wide v5, p0, Lcom/google/common/math/c;->c:D

    iget-wide v7, p0, Lcom/google/common/math/c;->d:D

    iget-wide v9, p0, Lcom/google/common/math/c;->e:D

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/google/common/math/Stats;-><init>(JDDDD)V

    return-object v11
.end method
