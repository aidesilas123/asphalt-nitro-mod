###### Class com.facebook.ads.redexgen.X.C1061Hg (com.facebook.ads.redexgen.X.Hg)
.class public final Lcom/facebook/ads/redexgen/X/Hg;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A00:[B

.field public A01:I

.field public A02:I

.field public A03:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Hg;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hg;->A00:[B

    iput p2, p0, Lcom/facebook/ads/redexgen/X/Hg;->A02:I

    return-void
.end method

.method private A00()V
    .registers 3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Hg;->A03:I

    if-ltz v1, :cond_13

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hg;->A02:I

    if-lt v1, v0, :cond_e

    if-ne v1, v0, :cond_13

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hg;->A01:I

    if-nez v0, :cond_13

    :cond_e
    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    return-void

    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public final A01()I
    .registers 3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Hg;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hg;->A03:I

    sub-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x8

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hg;->A01:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A02()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hg;->A01:I

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hg;->A03:I

    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final A03()I
    .registers 3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hg;->A03:I

    mul-int/lit8 v1, v0, 0x8

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hg;->A01:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A04(I)I
    .registers 9

    const/4 v4, 0x0

    if-nez p1, :cond_4

    return v4

    :cond_4
    const/4 v6, 0x0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hg;->A01:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hg;->A01:I

    :goto_a
    iget v5, p0, Lcom/facebook/ads/redexgen/X/Hg;->A01:I

    const/16 v3, 0x8

    if-le v5, v3, :cond_23

    add-int/lit8 v3, v5, -0x8

    iput v3, p0, Lcom/facebook/ads/redexgen/X/Hg;->A01:I

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Hg;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Hg;->A03:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hg;->A03:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v3

    or-int/2addr v6, v0

    goto :goto_a

    :cond_23
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hg;->A00:[B

    iget v2, p0, Lcom/facebook/ads/redexgen/X/Hg;->A03:I

    aget-byte v0, v0, v2

    and-int/lit16 v1, v0, 0xff

    rsub-int/lit8 v0, v5, 0x8

    shr-int/2addr v1, v0

    or-int/2addr v6, v1

    rsub-int/lit8 v1, p1, 0x20

    const/4 v0, -0x1

    ushr-int/2addr v0, v1

    and-int/2addr v6, v0

    if-ne v5, v3, :cond_3c

    iput v4, p0, Lcom/facebook/ads/redexgen/X/Hg;->A01:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hg;->A03:I

    :cond_3c
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Hg;->A00()V

    return v6
.end method

.method public final A05()V
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hg;->A01:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hg;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hg;->A03:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hg;->A03:I

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Hg;->A00()V

    return-void
.end method

.method public final A06()V
    .registers 3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hg;->A01:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Hg;->A01:I

    const/16 v0, 0x8

    if-ne v1, v0, :cond_13

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hg;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hg;->A03:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hg;->A03:I

    :cond_13
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Hg;->A00()V

    return-void
.end method

.method public final A07(I)V
    .registers 3

    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hg;->A03:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/facebook/ads/redexgen/X/Hg;->A01:I

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Hg;->A00()V

    return-void
.end method

.method public final A08(I)V
    .registers 5

    div-int/lit8 v0, p1, 0x8

    iget v2, p0, Lcom/facebook/ads/redexgen/X/Hg;->A03:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/facebook/ads/redexgen/X/Hg;->A03:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Hg;->A01:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    add-int/2addr v1, p1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Hg;->A01:I

    const/4 v0, 0x7

    if-le v1, v0, :cond_1a

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hg;->A03:I

    add-int/lit8 v0, v1, -0x8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hg;->A01:I

    :cond_1a
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Hg;->A00()V

    return-void
.end method

.method public final A09(I)V
    .registers 3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hg;->A01:I

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hg;->A03:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hg;->A03:I

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Hg;->A00()V

    return-void

    :cond_11
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final A0A(II)V
    .registers 11

    const/16 v0, 0x20

    const/4 v7, 0x1

    if-ge p2, v0, :cond_9

    shl-int v0, v7, p2

    sub-int/2addr v0, v7

    and-int/2addr p1, v0

    :cond_9
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hg;->A01:I

    const/16 v3, 0x8

    rsub-int/lit8 v0, v0, 0x8

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hg;->A01:I

    rsub-int/lit8 v5, v0, 0x8

    sub-int/2addr v5, v6

    const v1, 0xff00

    shr-int/2addr v1, v0

    shl-int v0, v7, v5

    sub-int/2addr v0, v7

    or-int/2addr v1, v0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Hg;->A00:[B

    iget v4, p0, Lcom/facebook/ads/redexgen/X/Hg;->A03:I

    aget-byte v0, v2, v4

    and-int/2addr v0, v1

    int-to-byte v1, v0

    aput-byte v1, v2, v4

    sub-int v0, p2, v6

    ushr-int v0, p1, v0

    shl-int/2addr v0, v5

    or-int/2addr v1, v0

    int-to-byte v0, v1

    aput-byte v0, v2, v4

    sub-int v5, p2, v6

    add-int/2addr v4, v7

    :goto_36
    if-le v5, v3, :cond_47

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Hg;->A00:[B

    add-int/lit8 v1, v4, 0x1

    add-int/lit8 v0, v5, -0x8

    ushr-int v0, p1, v0

    int-to-byte v0, v0

    aput-byte v0, v2, v4

    add-int/lit8 v5, v5, -0x8

    move v4, v1

    goto :goto_36

    :cond_47
    rsub-int/lit8 v3, v5, 0x8

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Hg;->A00:[B

    aget-byte v1, v2, v4

    shl-int v0, v7, v3

    sub-int/2addr v0, v7

    and-int/2addr v1, v0

    int-to-byte v1, v1

    aput-byte v1, v2, v4

    shl-int v0, v7, v5

    sub-int/2addr v0, v7

    and-int/2addr p1, v0

    shl-int/2addr p1, v3

    or-int/2addr v1, p1

    int-to-byte v0, v1

    aput-byte v0, v2, v4

    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Hg;->A00()V

    return-void
.end method

.method public final A0B([B)V
    .registers 3

    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A0C([BI)V

    return-void
.end method

.method public final A0C([BI)V
    .registers 4

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hg;->A00:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hg;->A03:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hg;->A01:I

    iput p2, p0, Lcom/facebook/ads/redexgen/X/Hg;->A02:I

    return-void
.end method

.method public final A0D([BII)V
    .registers 13

    shr-int/lit8 v5, p3, 0x3

    add-int/2addr v5, p2

    :goto_3
    const/16 v6, 0xff

    const/16 v4, 0x8

    if-ge p2, v5, :cond_27

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Hg;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hg;->A03:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/facebook/ads/redexgen/X/Hg;->A03:I

    aget-byte v0, v7, v0

    iget v2, p0, Lcom/facebook/ads/redexgen/X/Hg;->A01:I

    shl-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    aget-byte v1, p1, p2

    aget-byte v0, v7, v3

    and-int/2addr v6, v0

    sub-int/2addr v4, v2

    shr-int/2addr v6, v4

    or-int/2addr v6, v1

    int-to-byte v0, v6

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_27
    and-int/lit8 v8, p3, 0x7

    if-nez v8, :cond_2c

    return-void

    :cond_2c
    aget-byte v1, p1, v5

    shr-int v0, v6, v8

    and-int/2addr v1, v0

    int-to-byte v0, v1

    aput-byte v0, p1, v5

    iget v7, p0, Lcom/facebook/ads/redexgen/X/Hg;->A01:I

    add-int v0, v7, v8

    if-le v0, v4, :cond_4f

    aget-byte v3, p1, v5

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Hg;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Hg;->A03:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hg;->A03:I

    aget-byte v0, v2, v1

    and-int/2addr v0, v6

    shl-int/2addr v0, v7

    or-int/2addr v3, v0

    int-to-byte v0, v3

    aput-byte v0, p1, v5

    sub-int/2addr v7, v4

    iput v7, p0, Lcom/facebook/ads/redexgen/X/Hg;->A01:I

    :cond_4f
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Hg;->A01:I

    add-int/2addr v3, v8

    iput v3, p0, Lcom/facebook/ads/redexgen/X/Hg;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hg;->A00:[B

    iget v2, p0, Lcom/facebook/ads/redexgen/X/Hg;->A03:I

    aget-byte v0, v0, v2

    and-int/2addr v6, v0

    rsub-int/lit8 v0, v3, 0x8

    shr-int/2addr v6, v0

    aget-byte v1, p1, v5

    rsub-int/lit8 v0, v8, 0x8

    shl-int/2addr v6, v0

    int-to-byte v0, v6

    or-int/2addr v1, v0

    int-to-byte v0, v1

    aput-byte v0, p1, v5

    if-ne v3, v4, :cond_71

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hg;->A01:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hg;->A03:I

    :cond_71
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Hg;->A00()V

    return-void
.end method

.method public final A0E([BII)V
    .registers 6

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hg;->A01:I

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hg;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hg;->A03:I

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hg;->A03:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hg;->A03:I

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Hg;->A00()V

    return-void

    :cond_18
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final A0F()Z
    .registers 4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hg;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hg;->A03:I

    aget-byte v2, v1, v0

    const/16 v1, 0x80

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hg;->A01:I

    shr-int/2addr v1, v0

    and-int/2addr v2, v1

    if-eqz v2, :cond_13

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hg;->A06()V

    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method
