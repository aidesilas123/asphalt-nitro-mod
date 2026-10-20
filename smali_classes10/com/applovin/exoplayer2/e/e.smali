###### Class com.applovin.exoplayer2.e.e (com.applovin.exoplayer2.e.e)
.class public final Lcom/applovin/exoplayer2/e/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/i;


# instance fields
.field private final tZ:[B

.field private final ua:Lcom/applovin/exoplayer2/k/g;

.field private final ub:J

.field private uc:J

.field private ud:[B

.field private ue:I

.field private uf:I


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/k/g;JJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/e;->ua:Lcom/applovin/exoplayer2/k/g;

    iput-wide p2, p0, Lcom/applovin/exoplayer2/e/e;->uc:J

    iput-wide p4, p0, Lcom/applovin/exoplayer2/e/e;->ub:J

    const/high16 p1, 0x10000

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/e;->ud:[B

    const/16 p1, 0x1000

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/e;->tZ:[B

    return-void
.end method

.method private a([BIIIZ)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e;->ua:Lcom/applovin/exoplayer2/k/g;

    add-int/2addr p2, p4

    sub-int/2addr p3, p4

    invoke-interface {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/k/g;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1c

    if-nez p4, :cond_16

    if-eqz p5, :cond_16

    return p2

    :cond_16
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1c
    add-int/2addr p4, p1

    return p4

    :cond_1e
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
.end method

.method private bJ(I)V
    .registers 5

    iget v0, p0, Lcom/applovin/exoplayer2/e/e;->ue:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e;->ud:[B

    array-length v1, p1

    if-le v0, v1, :cond_1d

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x2

    const/high16 v1, 0x10000

    add-int/2addr v1, v0

    const/high16 v2, 0x80000

    add-int/2addr v0, v2

    invoke-static {p1, v1, v0}, Lcom/applovin/exoplayer2/l/ai;->k(III)I

    move-result p1

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e;->ud:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/e;->ud:[B

    :cond_1d
    return-void
.end method

.method private bK(I)I
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/e/e;->uf:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e;->bL(I)V

    return p1
.end method

.method private bL(I)V
    .registers 7

    iget v0, p0, Lcom/applovin/exoplayer2/e/e;->uf:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/applovin/exoplayer2/e/e;->uf:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/applovin/exoplayer2/e/e;->ue:I

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/e;->ud:[B

    array-length v3, v2

    const/high16 v4, 0x80000

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_16

    const/high16 v3, 0x10000

    add-int/2addr v3, v0

    new-array v3, v3, [B

    goto :goto_17

    :cond_16
    move-object v3, v2

    :goto_17
    invoke-static {v2, p1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/applovin/exoplayer2/e/e;->ud:[B

    return-void
.end method

.method private bM(I)V
    .registers 6

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/e;->uc:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/e;->uc:J

    :cond_9
    return-void
.end method

.method private d([BII)I
    .registers 6

    iget v0, p0, Lcom/applovin/exoplayer2/e/e;->uf:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e;->ud:[B

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, p3}, Lcom/applovin/exoplayer2/e/e;->bL(I)V

    return p3
.end method


# virtual methods
.method public a([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/applovin/exoplayer2/e/e;->a([BIIZ)Z

    return-void
.end method

.method public a([BIIZ)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/exoplayer2/e/e;->d([BII)I

    move-result v0

    move v5, v0

    :goto_5
    const/4 v0, -0x1

    if-ge v5, p3, :cond_14

    if-eq v5, v0, :cond_14

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/applovin/exoplayer2/e/e;->a([BIIIZ)I

    move-result v5

    goto :goto_5

    :cond_14
    invoke-direct {p0, v5}, Lcom/applovin/exoplayer2/e/e;->bM(I)V

    if-eq v5, v0, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    return p1
.end method

.method public b([BII)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/applovin/exoplayer2/e/e;->bJ(I)V

    iget v0, p0, Lcom/applovin/exoplayer2/e/e;->uf:I

    iget v3, p0, Lcom/applovin/exoplayer2/e/e;->ue:I

    sub-int/2addr v0, v3

    if-nez v0, :cond_1e

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/e;->ud:[B

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/applovin/exoplayer2/e/e;->a([BIIIZ)I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_18

    return v0

    :cond_18
    iget v0, p0, Lcom/applovin/exoplayer2/e/e;->uf:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/applovin/exoplayer2/e/e;->uf:I

    goto :goto_22

    :cond_1e
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_22
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e;->ud:[B

    iget v1, p0, Lcom/applovin/exoplayer2/e/e;->ue:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/applovin/exoplayer2/e/e;->ue:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/applovin/exoplayer2/e/e;->ue:I

    return p3
.end method

.method public b([BIIZ)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p3, p4}, Lcom/applovin/exoplayer2/e/e;->j(IZ)Z

    move-result p4

    if-nez p4, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    iget-object p4, p0, Lcom/applovin/exoplayer2/e/e;->ud:[B

    iget v0, p0, Lcom/applovin/exoplayer2/e/e;->ue:I

    sub-int/2addr v0, p3

    invoke-static {p4, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    return p1
.end method

.method public bG(I)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e;->bK(I)I

    move-result v0

    if-nez v0, :cond_15

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/e;->tZ:[B

    const/4 v3, 0x0

    array-length v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/applovin/exoplayer2/e/e;->a([BIIIZ)I

    move-result v0

    :cond_15
    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/e/e;->bM(I)V

    return v0
.end method

.method public bH(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/applovin/exoplayer2/e/e;->i(IZ)Z

    return-void
.end method

.method public bI(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/applovin/exoplayer2/e/e;->j(IZ)Z

    return-void
.end method

.method public c([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/applovin/exoplayer2/e/e;->b([BIIZ)Z

    return-void
.end method

.method public i(IZ)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e;->bK(I)I

    move-result v0

    move v5, v0

    :goto_5
    const/4 v0, -0x1

    if-ge v5, p1, :cond_1c

    if-eq v5, v0, :cond_1c

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e;->tZ:[B

    array-length v0, v0

    add-int/2addr v0, v5

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/e;->tZ:[B

    neg-int v3, v5

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/applovin/exoplayer2/e/e;->a([BIIIZ)I

    move-result v5

    goto :goto_5

    :cond_1c
    invoke-direct {p0, v5}, Lcom/applovin/exoplayer2/e/e;->bM(I)V

    if-eq v5, v0, :cond_23

    const/4 p1, 0x1

    goto :goto_24

    :cond_23
    const/4 p1, 0x0

    :goto_24
    return p1
.end method

.method public ic()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/exoplayer2/e/e;->ue:I

    return-void
.end method

.method public id()J
    .registers 5

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/e;->uc:J

    iget v2, p0, Lcom/applovin/exoplayer2/e/e;->ue:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public ie()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/e;->uc:J

    return-wide v0
.end method

.method public if()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/e;->ub:J

    return-wide v0
.end method

.method public j(IZ)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e;->bJ(I)V

    iget v0, p0, Lcom/applovin/exoplayer2/e/e;->uf:I

    iget v1, p0, Lcom/applovin/exoplayer2/e/e;->ue:I

    sub-int/2addr v0, v1

    move v5, v0

    :goto_9
    if-ge v5, p1, :cond_21

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/e;->ud:[B

    iget v3, p0, Lcom/applovin/exoplayer2/e/e;->ue:I

    move-object v1, p0

    move v4, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/applovin/exoplayer2/e/e;->a([BIIIZ)I

    move-result v5

    const/4 v0, -0x1

    if-ne v5, v0, :cond_1b

    const/4 p1, 0x0

    return p1

    :cond_1b
    iget v0, p0, Lcom/applovin/exoplayer2/e/e;->ue:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/applovin/exoplayer2/e/e;->uf:I

    goto :goto_9

    :cond_21
    iget p2, p0, Lcom/applovin/exoplayer2/e/e;->ue:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/applovin/exoplayer2/e/e;->ue:I

    const/4 p1, 0x1

    return p1
.end method

.method public read([BII)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/exoplayer2/e/e;->d([BII)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/applovin/exoplayer2/e/e;->a([BIIIZ)I

    move-result v0

    :cond_10
    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/e/e;->bM(I)V

    return v0
.end method
