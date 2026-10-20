###### Class com.tapjoy.internal.h8 (com.tapjoy.internal.h8)
.class public final Lcom/tapjoy/internal/h8;
.super Lcom/tapjoy/internal/c1;
.source "SourceFile"


# instance fields
.field public final transient f:[[B

.field public final transient g:[I


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/n;I)V
    .registers 10

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/c1;-><init>([B)V

    iget-wide v1, p1, Lcom/tapjoy/internal/n;->b:J

    int-to-long v5, p2

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcom/tapjoy/internal/sa;->a(JJJ)V

    iget-object v0, p1, Lcom/tapjoy/internal/n;->a:Lcom/tapjoy/internal/r7;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_11
    if-ge v2, p2, :cond_28

    iget v4, v0, Lcom/tapjoy/internal/r7;->c:I

    iget v5, v0, Lcom/tapjoy/internal/r7;->b:I

    if-eq v4, v5, :cond_20

    sub-int/2addr v4, v5

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    iget-object v0, v0, Lcom/tapjoy/internal/r7;->f:Lcom/tapjoy/internal/r7;

    goto :goto_11

    :cond_20
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "s.limit == s.pos"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_28
    new-array v0, v3, [[B

    iput-object v0, p0, Lcom/tapjoy/internal/h8;->f:[[B

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/tapjoy/internal/h8;->g:[I

    iget-object p1, p1, Lcom/tapjoy/internal/n;->a:Lcom/tapjoy/internal/r7;

    const/4 v0, 0x0

    :goto_35
    if-ge v1, p2, :cond_58

    iget-object v2, p0, Lcom/tapjoy/internal/h8;->f:[[B

    iget-object v3, p1, Lcom/tapjoy/internal/r7;->a:[B

    aput-object v3, v2, v0

    iget v3, p1, Lcom/tapjoy/internal/r7;->c:I

    iget v4, p1, Lcom/tapjoy/internal/r7;->b:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v1

    if-le v3, p2, :cond_47

    move v1, p2

    goto :goto_48

    :cond_47
    move v1, v3

    :goto_48
    iget-object v3, p0, Lcom/tapjoy/internal/h8;->g:[I

    aput v1, v3, v0

    array-length v2, v2

    add-int/2addr v2, v0

    aput v4, v3, v2

    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/tapjoy/internal/r7;->d:Z

    add-int/lit8 v0, v0, 0x1

    iget-object p1, p1, Lcom/tapjoy/internal/r7;->f:Lcom/tapjoy/internal/r7;

    goto :goto_35

    :cond_58
    return-void
.end method


# virtual methods
.method public final a(I)B
    .registers 9

    iget-object v0, p0, Lcom/tapjoy/internal/h8;->g:[I

    iget-object v1, p0, Lcom/tapjoy/internal/h8;->f:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    int-to-long v1, v0

    int-to-long v3, p1

    const-wide/16 v5, 0x1

    invoke-static/range {v1 .. v6}, Lcom/tapjoy/internal/sa;->a(JJJ)V

    iget-object v0, p0, Lcom/tapjoy/internal/h8;->g:[I

    iget-object v1, p0, Lcom/tapjoy/internal/h8;->f:[[B

    array-length v1, v1

    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    if-ltz v0, :cond_1f

    goto :goto_20

    :cond_1f
    not-int v0, v0

    :goto_20
    if-nez v0, :cond_23

    goto :goto_29

    :cond_23
    iget-object v1, p0, Lcom/tapjoy/internal/h8;->g:[I

    add-int/lit8 v2, v0, -0x1

    aget v3, v1, v2

    :goto_29
    iget-object v1, p0, Lcom/tapjoy/internal/h8;->g:[I

    iget-object v2, p0, Lcom/tapjoy/internal/h8;->f:[[B

    array-length v4, v2

    add-int/2addr v4, v0

    aget v1, v1, v4

    aget-object v0, v2, v0

    sub-int/2addr p1, v3

    add-int/2addr p1, v1

    aget-byte p1, v0, p1

    return p1
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/tapjoy/internal/h8;->i()Lcom/tapjoy/internal/c1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/c1;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/tapjoy/internal/n;)V
    .registers 10

    iget-object v0, p0, Lcom/tapjoy/internal/h8;->f:[[B

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge v1, v0, :cond_3b

    iget-object v3, p0, Lcom/tapjoy/internal/h8;->g:[I

    add-int v4, v0, v1

    aget v4, v3, v4

    aget v3, v3, v1

    new-instance v5, Lcom/tapjoy/internal/r7;

    iget-object v6, p0, Lcom/tapjoy/internal/h8;->f:[[B

    aget-object v6, v6, v1

    add-int v7, v4, v3

    sub-int/2addr v7, v2

    invoke-direct {v5, v6, v4, v7}, Lcom/tapjoy/internal/r7;-><init>([BII)V

    iget-object v2, p1, Lcom/tapjoy/internal/n;->a:Lcom/tapjoy/internal/r7;

    if-nez v2, :cond_26

    iput-object v5, v5, Lcom/tapjoy/internal/r7;->g:Lcom/tapjoy/internal/r7;

    iput-object v5, v5, Lcom/tapjoy/internal/r7;->f:Lcom/tapjoy/internal/r7;

    iput-object v5, p1, Lcom/tapjoy/internal/n;->a:Lcom/tapjoy/internal/r7;

    goto :goto_37

    :cond_26
    iget-object v2, v2, Lcom/tapjoy/internal/r7;->g:Lcom/tapjoy/internal/r7;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v5, Lcom/tapjoy/internal/r7;->g:Lcom/tapjoy/internal/r7;

    iget-object v4, v2, Lcom/tapjoy/internal/r7;->f:Lcom/tapjoy/internal/r7;

    iput-object v4, v5, Lcom/tapjoy/internal/r7;->f:Lcom/tapjoy/internal/r7;

    iget-object v4, v2, Lcom/tapjoy/internal/r7;->f:Lcom/tapjoy/internal/r7;

    iput-object v5, v4, Lcom/tapjoy/internal/r7;->g:Lcom/tapjoy/internal/r7;

    iput-object v5, v2, Lcom/tapjoy/internal/r7;->f:Lcom/tapjoy/internal/r7;

    :goto_37
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_5

    :cond_3b
    iget-wide v0, p1, Lcom/tapjoy/internal/n;->b:J

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/tapjoy/internal/n;->b:J

    return-void
.end method

.method public final e(I[BII)Z
    .registers 14

    const/4 v0, 0x0

    if-ltz p1, :cond_63

    invoke-virtual {p0}, Lcom/tapjoy/internal/h8;->f()I

    move-result v1

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_63

    if-ltz p3, :cond_63

    array-length v1, p2

    sub-int/2addr v1, p4

    if-le p3, v1, :cond_11

    goto :goto_63

    :cond_11
    iget-object v1, p0, Lcom/tapjoy/internal/h8;->g:[I

    iget-object v2, p0, Lcom/tapjoy/internal/h8;->f:[[B

    array-length v2, v2

    add-int/lit8 v3, p1, 0x1

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v1

    if-ltz v1, :cond_1f

    goto :goto_20

    :cond_1f
    not-int v1, v1

    :goto_20
    const/4 v2, 0x1

    if-lez p4, :cond_62

    if-nez v1, :cond_27

    const/4 v3, 0x0

    goto :goto_2d

    :cond_27
    iget-object v3, p0, Lcom/tapjoy/internal/h8;->g:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    :goto_2d
    iget-object v4, p0, Lcom/tapjoy/internal/h8;->g:[I

    aget v4, v4, v1

    sub-int/2addr v4, v3

    add-int/2addr v4, v3

    sub-int/2addr v4, p1

    invoke-static {p4, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v5, p0, Lcom/tapjoy/internal/h8;->g:[I

    iget-object v6, p0, Lcom/tapjoy/internal/h8;->f:[[B

    array-length v7, v6

    add-int/2addr v7, v1

    aget v5, v5, v7

    sub-int v3, p1, v3

    add-int/2addr v3, v5

    aget-object v5, v6, v1

    sget-object v6, Lcom/tapjoy/internal/sa;->a:Ljava/nio/charset/Charset;

    const/4 v6, 0x0

    :goto_48
    if-ge v6, v4, :cond_59

    add-int v7, v6, v3

    aget-byte v7, v5, v7

    add-int v8, v6, p3

    aget-byte v8, p2, v8

    if-eq v7, v8, :cond_56

    const/4 v2, 0x0

    goto :goto_59

    :cond_56
    add-int/lit8 v6, v6, 0x1

    goto :goto_48

    :cond_59
    :goto_59
    if-nez v2, :cond_5c

    return v0

    :cond_5c
    add-int/2addr p1, v4

    add-int/2addr p3, v4

    sub-int/2addr p4, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_62
    return v2

    :cond_63
    :goto_63
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 13

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/tapjoy/internal/c1;

    const/4 v2, 0x0

    if-eqz v1, :cond_66

    check-cast p1, Lcom/tapjoy/internal/c1;

    invoke-virtual {p1}, Lcom/tapjoy/internal/c1;->f()I

    move-result v1

    invoke-virtual {p0}, Lcom/tapjoy/internal/h8;->f()I

    move-result v3

    if-ne v1, v3, :cond_66

    invoke-virtual {p0}, Lcom/tapjoy/internal/h8;->f()I

    move-result v1

    invoke-virtual {p0}, Lcom/tapjoy/internal/h8;->f()I

    move-result v3

    sub-int/2addr v3, v1

    if-gez v3, :cond_21

    goto :goto_5a

    :cond_21
    iget-object v3, p0, Lcom/tapjoy/internal/h8;->g:[I

    iget-object v4, p0, Lcom/tapjoy/internal/h8;->f:[[B

    array-length v4, v4

    invoke-static {v3, v2, v4, v0}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v3

    if-ltz v3, :cond_2d

    goto :goto_2e

    :cond_2d
    not-int v3, v3

    :goto_2e
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_30
    if-lez v1, :cond_62

    if-nez v3, :cond_36

    const/4 v6, 0x0

    goto :goto_3c

    :cond_36
    iget-object v6, p0, Lcom/tapjoy/internal/h8;->g:[I

    add-int/lit8 v7, v3, -0x1

    aget v6, v6, v7

    :goto_3c
    iget-object v7, p0, Lcom/tapjoy/internal/h8;->g:[I

    aget v7, v7, v3

    sub-int/2addr v7, v6

    add-int/2addr v7, v6

    sub-int/2addr v7, v5

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v8, p0, Lcom/tapjoy/internal/h8;->g:[I

    iget-object v9, p0, Lcom/tapjoy/internal/h8;->f:[[B

    array-length v10, v9

    add-int/2addr v10, v3

    aget v8, v8, v10

    sub-int v6, v5, v6

    add-int/2addr v6, v8

    aget-object v8, v9, v3

    invoke-virtual {p1, v4, v8, v6, v7}, Lcom/tapjoy/internal/c1;->e(I[BII)Z

    move-result v6

    if-nez v6, :cond_5c

    :goto_5a
    const/4 p1, 0x0

    goto :goto_63

    :cond_5c
    add-int/2addr v5, v7

    add-int/2addr v4, v7

    sub-int/2addr v1, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_62
    const/4 p1, 0x1

    :goto_63
    if-eqz p1, :cond_66

    goto :goto_67

    :cond_66
    const/4 v0, 0x0

    :goto_67
    return v0
.end method

.method public final f()I
    .registers 3

    iget-object v0, p0, Lcom/tapjoy/internal/h8;->g:[I

    iget-object v1, p0, Lcom/tapjoy/internal/h8;->f:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public final g()Lcom/tapjoy/internal/c1;
    .registers 2

    invoke-virtual {p0}, Lcom/tapjoy/internal/h8;->i()Lcom/tapjoy/internal/c1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/c1;->g()Lcom/tapjoy/internal/c1;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/tapjoy/internal/h8;->i()Lcom/tapjoy/internal/c1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/c1;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 9

    iget v0, p0, Lcom/tapjoy/internal/c1;->d:I

    if-eqz v0, :cond_5

    return v0

    :cond_5
    iget-object v0, p0, Lcom/tapjoy/internal/h8;->f:[[B

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_c
    if-ge v1, v0, :cond_2b

    iget-object v4, p0, Lcom/tapjoy/internal/h8;->f:[[B

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/tapjoy/internal/h8;->g:[I

    add-int v6, v0, v1

    aget v6, v5, v6

    aget v5, v5, v1

    sub-int v2, v5, v2

    add-int/2addr v2, v6

    :goto_1d
    if-ge v6, v2, :cond_27

    mul-int/lit8 v3, v3, 0x1f

    aget-byte v7, v4, v6

    add-int/2addr v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    :cond_27
    add-int/lit8 v1, v1, 0x1

    move v2, v5

    goto :goto_c

    :cond_2b
    iput v3, p0, Lcom/tapjoy/internal/c1;->d:I

    return v3
.end method

.method public final i()Lcom/tapjoy/internal/c1;
    .registers 10

    new-instance v0, Lcom/tapjoy/internal/c1;

    iget-object v1, p0, Lcom/tapjoy/internal/h8;->g:[I

    iget-object v2, p0, Lcom/tapjoy/internal/h8;->f:[[B

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget v1, v1, v3

    new-array v1, v1, [B

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_10
    if-ge v3, v2, :cond_27

    iget-object v5, p0, Lcom/tapjoy/internal/h8;->g:[I

    add-int v6, v2, v3

    aget v6, v5, v6

    aget v5, v5, v3

    iget-object v7, p0, Lcom/tapjoy/internal/h8;->f:[[B

    aget-object v7, v7, v3

    sub-int v8, v5, v4

    invoke-static {v7, v6, v1, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_10

    :cond_27
    invoke-direct {v0, v1}, Lcom/tapjoy/internal/c1;-><init>([B)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/tapjoy/internal/h8;->i()Lcom/tapjoy/internal/c1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/c1;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
