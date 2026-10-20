###### Class com.google.common.collect.g2 (com.google.common.collect.g2)
.class Lcom/google/common/collect/g2;
.super Lcom/google/common/collect/f2;
.source "ObjectCountLinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/f2<",
        "TK;>;"
    }
.end annotation


# instance fields
.field transient i:[J

.field private transient j:I

.field private transient k:I


# direct methods
.method constructor <init>(I)V
    .registers 3

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/g2;-><init>(IF)V

    return-void
.end method

.method constructor <init>(IF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/f2;-><init>(IF)V

    return-void
.end method

.method private E(I)I
    .registers 5

    iget-object v0, p0, Lcom/google/common/collect/g2;->i:[J

    aget-wide v1, v0, p1

    const/16 p1, 0x20

    ushr-long v0, v1, p1

    long-to-int p1, v0

    return p1
.end method

.method private F(I)I
    .registers 5

    iget-object v0, p0, Lcom/google/common/collect/g2;->i:[J

    aget-wide v1, v0, p1

    long-to-int p1, v1

    return p1
.end method

.method private G(II)V
    .registers 8

    iget-object v0, p0, Lcom/google/common/collect/g2;->i:[J

    aget-wide v1, v0, p1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v3, p2

    const/16 p2, 0x20

    shl-long/2addr v3, p2

    or-long/2addr v1, v3

    aput-wide v1, v0, p1

    return-void
.end method

.method private H(II)V
    .registers 4

    const/4 v0, -0x2

    if-ne p1, v0, :cond_6

    iput p2, p0, Lcom/google/common/collect/g2;->j:I

    goto :goto_9

    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/g2;->I(II)V

    :goto_9
    if-ne p2, v0, :cond_e

    iput p1, p0, Lcom/google/common/collect/g2;->k:I

    goto :goto_11

    :cond_e
    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/g2;->G(II)V

    :goto_11
    return-void
.end method

.method private I(II)V
    .registers 10

    iget-object v0, p0, Lcom/google/common/collect/g2;->i:[J

    aget-wide v1, v0, p1

    const-wide v3, -0x100000000L

    and-long/2addr v1, v3

    int-to-long v3, p2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    aput-wide v1, v0, p1

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    invoke-super {p0}, Lcom/google/common/collect/f2;->a()V

    const/4 v0, -0x2

    iput v0, p0, Lcom/google/common/collect/g2;->j:I

    iput v0, p0, Lcom/google/common/collect/g2;->k:I

    return-void
.end method

.method e()I
    .registers 3

    iget v0, p0, Lcom/google/common/collect/g2;->j:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_6

    const/4 v0, -0x1

    :cond_6
    return v0
.end method

.method n(IF)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/f2;->n(IF)V

    const/4 p2, -0x2

    iput p2, p0, Lcom/google/common/collect/g2;->j:I

    iput p2, p0, Lcom/google/common/collect/g2;->k:I

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/common/collect/g2;->i:[J

    const-wide/16 v0, -0x1

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    return-void
.end method

.method o(ILjava/lang/Object;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;II)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/common/collect/f2;->o(ILjava/lang/Object;II)V

    iget p2, p0, Lcom/google/common/collect/g2;->k:I

    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/g2;->H(II)V

    const/4 p2, -0x2

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/g2;->H(II)V

    return-void
.end method

.method p(I)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/common/collect/f2;->C()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/common/collect/g2;->E(I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/google/common/collect/g2;->F(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/google/common/collect/g2;->H(II)V

    if-ge p1, v0, :cond_21

    invoke-direct {p0, v0}, Lcom/google/common/collect/g2;->E(I)I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/google/common/collect/g2;->H(II)V

    invoke-direct {p0, v0}, Lcom/google/common/collect/g2;->F(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/g2;->H(II)V

    :cond_21
    invoke-super {p0, p1}, Lcom/google/common/collect/f2;->p(I)V

    return-void
.end method

.method s(I)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/collect/g2;->F(I)I

    move-result p1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_8

    const/4 p1, -0x1

    :cond_8
    return p1
.end method

.method t(II)I
    .registers 4

    invoke-virtual {p0}, Lcom/google/common/collect/f2;->C()I

    move-result v0

    if-ne p1, v0, :cond_7

    move p1, p2

    :cond_7
    return p1
.end method

.method y(I)V
    .registers 6

    invoke-super {p0, p1}, Lcom/google/common/collect/f2;->y(I)V

    iget-object v0, p0, Lcom/google/common/collect/g2;->i:[J

    array-length v1, v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/g2;->i:[J

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, p1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    return-void
.end method
