###### Class com.google.common.collect.CompactLinkedHashMap (com.google.common.collect.CompactLinkedHashMap)
.class Lcom/google/common/collect/CompactLinkedHashMap;
.super Lcom/google/common/collect/CompactHashMap;
.source "CompactLinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/CompactHashMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field transient k:[J

.field private transient l:I

.field private transient m:I

.field private final n:Z


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/common/collect/CompactLinkedHashMap;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/CompactLinkedHashMap;-><init>(IZ)V

    return-void
.end method

.method constructor <init>(IZ)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap;-><init>(I)V

    iput-boolean p2, p0, Lcom/google/common/collect/CompactLinkedHashMap;->n:Z

    return-void
.end method

.method private c0(I)I
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->d0(I)J

    move-result-wide v0

    const/16 p1, 0x20

    ushr-long/2addr v0, p1

    long-to-int p1, v0

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public static create()Lcom/google/common/collect/CompactLinkedHashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/CompactLinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/CompactLinkedHashMap;

    invoke-direct {v0}, Lcom/google/common/collect/CompactLinkedHashMap;-><init>()V

    return-object v0
.end method

.method public static createWithExpectedSize(I)Lcom/google/common/collect/CompactLinkedHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/CompactLinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/CompactLinkedHashMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactLinkedHashMap;-><init>(I)V

    return-object v0
.end method

.method private d0(I)J
    .registers 5

    invoke-direct {p0}, Lcom/google/common/collect/CompactLinkedHashMap;->e0()[J

    move-result-object v0

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method private e0()[J
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->k:[J

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, [J

    return-object v0
.end method

.method private f0(IJ)V
    .registers 5

    invoke-direct {p0}, Lcom/google/common/collect/CompactLinkedHashMap;->e0()[J

    move-result-object v0

    aput-wide p2, v0, p1

    return-void
.end method

.method private g0(II)V
    .registers 7

    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->d0(I)J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 p2, p2, 0x1

    int-to-long v2, p2

    const/16 p2, 0x20

    shl-long/2addr v2, p2

    or-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/collect/CompactLinkedHashMap;->f0(IJ)V

    return-void
.end method

.method private h0(II)V
    .registers 4

    const/4 v0, -0x2

    if-ne p1, v0, :cond_6

    iput p2, p0, Lcom/google/common/collect/CompactLinkedHashMap;->l:I

    goto :goto_9

    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/CompactLinkedHashMap;->i0(II)V

    :goto_9
    if-ne p2, v0, :cond_e

    iput p1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->m:I

    goto :goto_11

    :cond_e
    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->g0(II)V

    :goto_11
    return-void
.end method

.method private i0(II)V
    .registers 9

    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->d0(I)J

    move-result-wide v0

    const-wide v2, -0x100000000L

    and-long/2addr v0, v2

    add-int/lit8 p2, p2, 0x1

    int-to-long v2, p2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/collect/CompactLinkedHashMap;->f0(IJ)V

    return-void
.end method


# virtual methods
.method C()I
    .registers 2

    iget v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->l:I

    return v0
.end method

.method D(I)I
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->d0(I)J

    move-result-wide v0

    long-to-int p1, v0

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method H(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/collect/CompactHashMap;->H(I)V

    const/4 p1, -0x2

    iput p1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->l:I

    iput p1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->m:I

    return-void
.end method

.method I(ILjava/lang/Object;Ljava/lang/Object;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;II)V"
        }
    .end annotation

    invoke-super/range {p0 .. p5}, Lcom/google/common/collect/CompactHashMap;->I(ILjava/lang/Object;Ljava/lang/Object;II)V

    iget p2, p0, Lcom/google/common/collect/CompactLinkedHashMap;->m:I

    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->h0(II)V

    const/4 p2, -0x2

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/CompactLinkedHashMap;->h0(II)V

    return-void
.end method

.method L(II)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/CompactHashMap;->L(II)V

    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->c0(I)I

    move-result p2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->D(I)I

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/google/common/collect/CompactLinkedHashMap;->h0(II)V

    if-ge p1, v0, :cond_24

    invoke-direct {p0, v0}, Lcom/google/common/collect/CompactLinkedHashMap;->c0(I)I

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->h0(II)V

    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactLinkedHashMap;->D(I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/CompactLinkedHashMap;->h0(II)V

    :cond_24
    const-wide/16 p1, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/common/collect/CompactLinkedHashMap;->f0(IJ)V

    return-void
.end method

.method T(I)V
    .registers 3

    invoke-super {p0, p1}, Lcom/google/common/collect/CompactHashMap;->T(I)V

    invoke-direct {p0}, Lcom/google/common/collect/CompactLinkedHashMap;->e0()[J

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->k:[J

    return-void
.end method

.method public clear()V
    .registers 6

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->N()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, -0x2

    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->l:I

    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->m:I

    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->k:[J

    if-eqz v0, :cond_1a

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->size()I

    move-result v2

    const-wide/16 v3, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/Arrays;->fill([JIIJ)V

    :cond_1a
    invoke-super {p0}, Lcom/google/common/collect/CompactHashMap;->clear()V

    return-void
.end method

.method q(I)V
    .registers 4

    iget-boolean v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->n:Z

    if-eqz v0, :cond_1b

    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->c0(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->D(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/CompactLinkedHashMap;->h0(II)V

    iget v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->m:I

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->h0(II)V

    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/CompactLinkedHashMap;->h0(II)V

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->F()V

    :cond_1b
    return-void
.end method

.method r(II)I
    .registers 4

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->size()I

    move-result v0

    if-lt p1, v0, :cond_7

    move p1, p2

    :cond_7
    return p1
.end method

.method s()I
    .registers 3

    invoke-super {p0}, Lcom/google/common/collect/CompactHashMap;->s()I

    move-result v0

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->k:[J

    return v0
.end method

.method t()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/CompactHashMap;->t()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->k:[J

    return-object v0
.end method

.method v(I)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    iget-boolean v1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->n:Z

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, p1, v2, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-object v0
.end method
