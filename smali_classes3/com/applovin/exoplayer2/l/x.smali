###### Class com.applovin.exoplayer2.l.x (com.applovin.exoplayer2.l.x)
.class public final Lcom/applovin/exoplayer2/l/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public tf:[B

.field private uW:I

.field private uX:I

.field private uY:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/applovin/exoplayer2/l/ai;->ada:[B

    iput-object v0, p0, Lcom/applovin/exoplayer2/l/x;->tf:[B

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/applovin/exoplayer2/l/x;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/l/x;->tf:[B

    iput p2, p0, Lcom/applovin/exoplayer2/l/x;->uW:I

    return-void
.end method

.method private im()V
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/l/x;->uX:I

    if-ltz v0, :cond_10

    iget v1, p0, Lcom/applovin/exoplayer2/l/x;->uW:I

    if-lt v0, v1, :cond_e

    if-ne v0, v1, :cond_10

    iget v0, p0, Lcom/applovin/exoplayer2/l/x;->uY:I

    if-nez v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    return-void
.end method


# virtual methods
.method public I([B)V
    .registers 3

    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/applovin/exoplayer2/l/x;->l([BI)V

    return-void
.end method

.method public K(II)V
    .registers 11

    const/4 v0, 0x1

    const/16 v1, 0x20

    if-ge p2, v1, :cond_9

    shl-int v1, v0, p2

    sub-int/2addr v1, v0

    and-int/2addr p1, v1

    :cond_9
    iget v1, p0, Lcom/applovin/exoplayer2/l/x;->uY:I

    const/16 v2, 0x8

    rsub-int/lit8 v1, v1, 0x8

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v3, p0, Lcom/applovin/exoplayer2/l/x;->uY:I

    rsub-int/lit8 v4, v3, 0x8

    sub-int/2addr v4, v1

    const v5, 0xff00

    shr-int v3, v5, v3

    shl-int v5, v0, v4

    sub-int/2addr v5, v0

    or-int/2addr v3, v5

    iget-object v5, p0, Lcom/applovin/exoplayer2/l/x;->tf:[B

    iget v6, p0, Lcom/applovin/exoplayer2/l/x;->uX:I

    aget-byte v7, v5, v6

    and-int/2addr v3, v7

    int-to-byte v3, v3

    aput-byte v3, v5, v6

    sub-int v1, p2, v1

    ushr-int v3, p1, v1

    aget-byte v7, v5, v6

    shl-int/2addr v3, v4

    or-int/2addr v3, v7

    int-to-byte v3, v3

    aput-byte v3, v5, v6

    add-int/2addr v6, v0

    :goto_37
    if-le v1, v2, :cond_48

    iget-object v3, p0, Lcom/applovin/exoplayer2/l/x;->tf:[B

    add-int/lit8 v4, v6, 0x1

    add-int/lit8 v5, v1, -0x8

    ushr-int v5, p1, v5

    int-to-byte v5, v5

    aput-byte v5, v3, v6

    add-int/lit8 v1, v1, -0x8

    move v6, v4

    goto :goto_37

    :cond_48
    rsub-int/lit8 v2, v1, 0x8

    iget-object v3, p0, Lcom/applovin/exoplayer2/l/x;->tf:[B

    aget-byte v4, v3, v6

    shl-int v5, v0, v2

    sub-int/2addr v5, v0

    and-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v6

    shl-int v1, v0, v1

    sub-int/2addr v1, v0

    and-int/2addr p1, v1

    aget-byte v0, v3, v6

    shl-int/2addr p1, v2

    or-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, v3, v6

    invoke-virtual {p0, p2}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/l/x;->im()V

    return-void
.end method

.method public a(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 5

    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/applovin/exoplayer2/l/x;->r([BII)V

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1
.end method

.method public ar(Lcom/applovin/exoplayer2/l/y;)V
    .registers 4

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pk()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/exoplayer2/l/x;->l([BI)V

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->il()I

    move-result p1

    mul-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/l/x;->fx(I)V

    return-void
.end method

.method public bQ(I)I
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget v1, p0, Lcom/applovin/exoplayer2/l/x;->uY:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/applovin/exoplayer2/l/x;->uY:I

    const/4 v1, 0x0

    :goto_a
    iget v2, p0, Lcom/applovin/exoplayer2/l/x;->uY:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_24

    add-int/lit8 v2, v2, -0x8

    iput v2, p0, Lcom/applovin/exoplayer2/l/x;->uY:I

    iget-object v3, p0, Lcom/applovin/exoplayer2/l/x;->tf:[B

    iget v4, p0, Lcom/applovin/exoplayer2/l/x;->uX:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/applovin/exoplayer2/l/x;->uX:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    goto :goto_a

    :cond_24
    iget-object v4, p0, Lcom/applovin/exoplayer2/l/x;->tf:[B

    iget v5, p0, Lcom/applovin/exoplayer2/l/x;->uX:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    rsub-int/lit8 v6, v2, 0x8

    shr-int/2addr v4, v6

    or-int/2addr v1, v4

    const/4 v4, -0x1

    rsub-int/lit8 p1, p1, 0x20

    ushr-int p1, v4, p1

    and-int/2addr p1, v1

    if-ne v2, v3, :cond_3e

    iput v0, p0, Lcom/applovin/exoplayer2/l/x;->uY:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/applovin/exoplayer2/l/x;->uX:I

    :cond_3e
    invoke-direct {p0}, Lcom/applovin/exoplayer2/l/x;->im()V

    return p1
.end method

.method public bR(I)V
    .registers 5

    div-int/lit8 v0, p1, 0x8

    iget v1, p0, Lcom/applovin/exoplayer2/l/x;->uX:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/applovin/exoplayer2/l/x;->uX:I

    iget v2, p0, Lcom/applovin/exoplayer2/l/x;->uY:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    add-int/2addr v2, p1

    iput v2, p0, Lcom/applovin/exoplayer2/l/x;->uY:I

    const/4 p1, 0x7

    if-le v2, p1, :cond_1a

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/applovin/exoplayer2/l/x;->uX:I

    add-int/lit8 v2, v2, -0x8

    iput v2, p0, Lcom/applovin/exoplayer2/l/x;->uY:I

    :cond_1a
    invoke-direct {p0}, Lcom/applovin/exoplayer2/l/x;->im()V

    return-void
.end method

.method public fx(I)V
    .registers 3

    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lcom/applovin/exoplayer2/l/x;->uX:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/applovin/exoplayer2/l/x;->uY:I

    invoke-direct {p0}, Lcom/applovin/exoplayer2/l/x;->im()V

    return-void
.end method

.method public fy(I)J
    .registers 4

    const/16 v0, 0x20

    if-gt p1, v0, :cond_d

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result p1

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/ai;->fH(I)J

    move-result-wide v0

    return-wide v0

    :cond_d
    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result p1

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/l/ai;->O(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public fz(I)V
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/l/x;->uY:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iget v0, p0, Lcom/applovin/exoplayer2/l/x;->uX:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/applovin/exoplayer2/l/x;->uX:I

    invoke-direct {p0}, Lcom/applovin/exoplayer2/l/x;->im()V

    return-void
.end method

.method public ik()Z
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/x;->tf:[B

    iget v1, p0, Lcom/applovin/exoplayer2/l/x;->uX:I

    aget-byte v0, v0, v1

    iget v1, p0, Lcom/applovin/exoplayer2/l/x;->uY:I

    const/16 v2, 0x80

    shr-int v1, v2, v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/x;->ph()V

    return v0
.end method

.method public il()I
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/l/x;->uX:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/applovin/exoplayer2/l/x;->uY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public l([BI)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/exoplayer2/l/x;->tf:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/applovin/exoplayer2/l/x;->uX:I

    iput p1, p0, Lcom/applovin/exoplayer2/l/x;->uY:I

    iput p2, p0, Lcom/applovin/exoplayer2/l/x;->uW:I

    return-void
.end method

.method public pf()I
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/l/x;->uW:I

    iget v1, p0, Lcom/applovin/exoplayer2/l/x;->uX:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/applovin/exoplayer2/l/x;->uY:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public pg()I
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/l/x;->uY:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iget v0, p0, Lcom/applovin/exoplayer2/l/x;->uX:I

    return v0
.end method

.method public ph()V
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/l/x;->uY:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/applovin/exoplayer2/l/x;->uY:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_13

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/exoplayer2/l/x;->uY:I

    iget v0, p0, Lcom/applovin/exoplayer2/l/x;->uX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/applovin/exoplayer2/l/x;->uX:I

    :cond_13
    invoke-direct {p0}, Lcom/applovin/exoplayer2/l/x;->im()V

    return-void
.end method

.method public pi()V
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/l/x;->uY:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/exoplayer2/l/x;->uY:I

    iget v0, p0, Lcom/applovin/exoplayer2/l/x;->uX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/applovin/exoplayer2/l/x;->uX:I

    invoke-direct {p0}, Lcom/applovin/exoplayer2/l/x;->im()V

    return-void
.end method

.method public q([BII)V
    .registers 11

    shr-int/lit8 v0, p3, 0x3

    add-int/2addr v0, p2

    :goto_3
    const/16 v1, 0xff

    const/16 v2, 0x8

    if-ge p2, v0, :cond_27

    iget-object v3, p0, Lcom/applovin/exoplayer2/l/x;->tf:[B

    iget v4, p0, Lcom/applovin/exoplayer2/l/x;->uX:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/applovin/exoplayer2/l/x;->uX:I

    aget-byte v4, v3, v4

    iget v6, p0, Lcom/applovin/exoplayer2/l/x;->uY:I

    shl-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, p1, p2

    aget-byte v4, p1, p2

    aget-byte v3, v3, v5

    and-int/2addr v1, v3

    sub-int/2addr v2, v6

    shr-int/2addr v1, v2

    or-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_27
    and-int/lit8 p2, p3, 0x7

    if-nez p2, :cond_2c

    return-void

    :cond_2c
    aget-byte p3, p1, v0

    shr-int v3, v1, p2

    and-int/2addr p3, v3

    int-to-byte p3, p3

    aput-byte p3, p1, v0

    iget p3, p0, Lcom/applovin/exoplayer2/l/x;->uY:I

    add-int v3, p3, p2

    if-le v3, v2, :cond_4f

    aget-byte v3, p1, v0

    iget-object v4, p0, Lcom/applovin/exoplayer2/l/x;->tf:[B

    iget v5, p0, Lcom/applovin/exoplayer2/l/x;->uX:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/applovin/exoplayer2/l/x;->uX:I

    aget-byte v4, v4, v5

    and-int/2addr v4, v1

    shl-int/2addr v4, p3

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    sub-int/2addr p3, v2

    iput p3, p0, Lcom/applovin/exoplayer2/l/x;->uY:I

    :cond_4f
    iget p3, p0, Lcom/applovin/exoplayer2/l/x;->uY:I

    add-int/2addr p3, p2

    iput p3, p0, Lcom/applovin/exoplayer2/l/x;->uY:I

    iget-object v3, p0, Lcom/applovin/exoplayer2/l/x;->tf:[B

    iget v4, p0, Lcom/applovin/exoplayer2/l/x;->uX:I

    aget-byte v3, v3, v4

    and-int/2addr v1, v3

    rsub-int/lit8 v3, p3, 0x8

    shr-int/2addr v1, v3

    aget-byte v3, p1, v0

    rsub-int/lit8 p2, p2, 0x8

    shl-int p2, v1, p2

    int-to-byte p2, p2

    or-int/2addr p2, v3

    int-to-byte p2, p2

    aput-byte p2, p1, v0

    if-ne p3, v2, :cond_72

    const/4 p1, 0x0

    iput p1, p0, Lcom/applovin/exoplayer2/l/x;->uY:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/applovin/exoplayer2/l/x;->uX:I

    :cond_72
    invoke-direct {p0}, Lcom/applovin/exoplayer2/l/x;->im()V

    return-void
.end method

.method public r([BII)V
    .registers 6

    iget v0, p0, Lcom/applovin/exoplayer2/l/x;->uY:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/x;->tf:[B

    iget v1, p0, Lcom/applovin/exoplayer2/l/x;->uX:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/applovin/exoplayer2/l/x;->uX:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/applovin/exoplayer2/l/x;->uX:I

    invoke-direct {p0}, Lcom/applovin/exoplayer2/l/x;->im()V

    return-void
.end method
