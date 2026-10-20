###### Class com.tapjoy.internal.u9 (com.tapjoy.internal.u9)
.class public final Lcom/tapjoy/internal/u9;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public final read([B)I
    .registers 5

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_14

    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-super {p0, p1, v0, v1}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_12

    if-eqz v0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v0, -0x1

    :goto_11
    return v0

    :cond_12
    add-int/2addr v0, v1

    goto :goto_1

    :cond_14
    return v0
.end method

.method public final read([BII)I
    .registers 7

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_15

    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-super {p0, p1, v1, v2}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    if-eqz v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v0, -0x1

    :goto_12
    return v0

    :cond_13
    add-int/2addr v0, v1

    goto :goto_1

    :cond_15
    return v0
.end method

.method public final skip(J)J
    .registers 11

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_3
    cmp-long v4, v2, p1

    if-gez v4, :cond_1d

    sub-long v4, p1, v2

    invoke-super {p0, v4, v5}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-nez v6, :cond_1b

    invoke-virtual {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v6

    if-gez v6, :cond_18

    goto :goto_1d

    :cond_18
    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    :cond_1b
    add-long/2addr v2, v4

    goto :goto_3

    :cond_1d
    :goto_1d
    return-wide v2
.end method
