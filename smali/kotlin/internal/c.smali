###### Class kotlin.internal.c (kotlin.internal.c)
.class public synthetic Lkotlin/internal/c;
.super Ljava/lang/Object;


# direct methods
.method public static synthetic a(JJ)J
    .registers 11

    const-wide/16 v0, 0x0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, p2, v0

    if-gez v4, :cond_12

    xor-long v0, p0, v2

    xor-long/2addr v2, p2

    cmp-long v4, v0, v2

    if-gez v4, :cond_10

    return-wide p0

    :cond_10
    sub-long/2addr p0, p2

    return-wide p0

    :cond_12
    cmp-long v4, p0, v0

    if-ltz v4, :cond_18

    rem-long/2addr p0, p2

    return-wide p0

    :cond_18
    const/4 v4, 0x1

    ushr-long v5, p0, v4

    div-long/2addr v5, p2

    shl-long v4, v5, v4

    mul-long v4, v4, p2

    sub-long/2addr p0, v4

    xor-long v4, p0, v2

    xor-long/2addr v2, p2

    cmp-long v6, v4, v2

    if-ltz v6, :cond_29

    goto :goto_2a

    :cond_29
    move-wide p2, v0

    :goto_2a
    sub-long/2addr p0, p2

    return-wide p0
.end method
