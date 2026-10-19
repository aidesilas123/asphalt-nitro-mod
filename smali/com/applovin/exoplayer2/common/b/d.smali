###### Class com.applovin.exoplayer2.common.b.d (com.applovin.exoplayer2.common.b.d)
.class public final Lcom/applovin/exoplayer2/common/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static varargs a([J)J
    .registers 7

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/applovin/exoplayer2/common/base/Preconditions;->checkArgument(Z)V

    aget-wide v0, p0, v1

    :goto_d
    array-length v3, p0

    if-ge v2, v3, :cond_1b

    aget-wide v3, p0, v2

    cmp-long v5, v3, v0

    if-lez v5, :cond_18

    aget-wide v0, p0, v2

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1b
    return-wide v0
.end method

.method public static ae(J)I
    .registers 4

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method public static j(JJ)I
    .registers 5

    cmp-long v0, p0, p2

    if-gez v0, :cond_6

    const/4 p0, -0x1

    goto :goto_b

    :cond_6
    if-lez v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method
