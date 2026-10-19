###### Class com.applovin.exoplayer2.common.a.l (com.applovin.exoplayer2.common.a.l)
.class Lcom/applovin/exoplayer2/common/a/l;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/common/a/l$e;,
        Lcom/applovin/exoplayer2/common/a/l$d;,
        Lcom/applovin/exoplayer2/common/a/l$a;,
        Lcom/applovin/exoplayer2/common/a/l$c;,
        Lcom/applovin/exoplayer2/common/a/l$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private transient oW:I

.field private transient pG:[I
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field transient pH:[J
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field transient pI:[Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field transient pJ:[Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field transient pK:F

.field transient pL:I

.field private transient pM:I

.field private transient pN:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private transient pO:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private transient pP:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x3

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/applovin/exoplayer2/common/a/l;->a(IF)V

    return-void
.end method

.method constructor <init>(I)V
    .registers 3

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0}, Lcom/applovin/exoplayer2/common/a/l;-><init>(IF)V

    return-void
.end method

.method constructor <init>(IF)V
    .registers 3

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/applovin/exoplayer2/common/a/l;->a(IF)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/common/a/l;)I
    .registers 1

    iget p0, p0, Lcom/applovin/exoplayer2/common/a/l;->oW:I

    return p0
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/common/a/l;Ljava/lang/Object;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/common/a/l;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/common/a/l;I)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/common/a/l;->ba(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 12
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    invoke-direct {p0}, Lcom/applovin/exoplayer2/common/a/l;->fI()I

    move-result v0

    and-int/2addr v0, p2

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/l;->pG:[I

    aget v1, v1, v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_e

    return-object v2

    :cond_e
    const/4 v4, -0x1

    :goto_f
    iget-object v5, p0, Lcom/applovin/exoplayer2/common/a/l;->pH:[J

    aget-wide v6, v5, v1

    invoke-static {v6, v7}, Lcom/applovin/exoplayer2/common/a/l;->ab(J)I

    move-result v5

    if-ne v5, p2, :cond_56

    iget-object v5, p0, Lcom/applovin/exoplayer2/common/a/l;->pI:[Ljava/lang/Object;

    aget-object v5, v5, v1

    invoke-static {p1, v5}, Lcom/applovin/exoplayer2/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    iget-object p1, p0, Lcom/applovin/exoplayer2/common/a/l;->pJ:[Ljava/lang/Object;

    aget-object p1, p1, v1

    if-ne v4, v3, :cond_36

    iget-object p2, p0, Lcom/applovin/exoplayer2/common/a/l;->pG:[I

    iget-object v2, p0, Lcom/applovin/exoplayer2/common/a/l;->pH:[J

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Lcom/applovin/exoplayer2/common/a/l;->ac(J)I

    move-result v2

    aput v2, p2, v0

    goto :goto_46

    :cond_36
    iget-object p2, p0, Lcom/applovin/exoplayer2/common/a/l;->pH:[J

    aget-wide v2, p2, v4

    aget-wide v5, p2, v1

    invoke-static {v5, v6}, Lcom/applovin/exoplayer2/common/a/l;->ac(J)I

    move-result v0

    invoke-static {v2, v3, v0}, Lcom/applovin/exoplayer2/common/a/l;->b(JI)J

    move-result-wide v2

    aput-wide v2, p2, v4

    :goto_46
    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/common/a/l;->bb(I)V

    iget p2, p0, Lcom/applovin/exoplayer2/common/a/l;->oW:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/applovin/exoplayer2/common/a/l;->oW:I

    iget p2, p0, Lcom/applovin/exoplayer2/common/a/l;->pL:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/applovin/exoplayer2/common/a/l;->pL:I

    return-object p1

    :cond_56
    iget-object v4, p0, Lcom/applovin/exoplayer2/common/a/l;->pH:[J

    aget-wide v5, v4, v1

    invoke-static {v5, v6}, Lcom/applovin/exoplayer2/common/a/l;->ac(J)I

    move-result v4

    if-ne v4, v3, :cond_61

    return-object v2

    :cond_61
    move v8, v4

    move v4, v1

    move v1, v8

    goto :goto_f
.end method

.method public static aT(I)Lcom/applovin/exoplayer2/common/a/l;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/applovin/exoplayer2/common/a/l<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/applovin/exoplayer2/common/a/l;

    invoke-direct {v0, p0}, Lcom/applovin/exoplayer2/common/a/l;-><init>(I)V

    return-object v0
.end method

.method private static aU(I)[I
    .registers 2

    new-array p0, p0, [I

    const/4 v0, -0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([II)V

    return-object p0
.end method

.method private static aV(I)[J
    .registers 3

    new-array p0, p0, [J

    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    return-object p0
.end method

.method private aX(I)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l;->pH:[J

    array-length v0, v0

    if-le p1, v0, :cond_17

    ushr-int/lit8 p1, v0, 0x1

    const/4 v1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p1, v0

    if-gez p1, :cond_12

    const p1, 0x7fffffff

    :cond_12
    if-eq p1, v0, :cond_17

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/common/a/l;->aY(I)V

    :cond_17
    return-void
.end method

.method private aZ(I)V
    .registers 13

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l;->pG:[I

    array-length v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    if-lt v0, v1, :cond_d

    const p1, 0x7fffffff

    iput p1, p0, Lcom/applovin/exoplayer2/common/a/l;->pM:I

    return-void

    :cond_d
    int-to-float v0, p1

    iget v1, p0, Lcom/applovin/exoplayer2/common/a/l;->pK:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1}, Lcom/applovin/exoplayer2/common/a/l;->aU(I)[I

    move-result-object p1

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/l;->pH:[J

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_1f
    iget v4, p0, Lcom/applovin/exoplayer2/common/a/l;->oW:I

    if-ge v3, v4, :cond_41

    aget-wide v4, v1, v3

    invoke-static {v4, v5}, Lcom/applovin/exoplayer2/common/a/l;->ab(J)I

    move-result v4

    and-int v5, v4, v2

    aget v6, p1, v5

    aput v3, p1, v5

    int-to-long v4, v4

    const/16 v7, 0x20

    shl-long/2addr v4, v7

    const-wide v7, 0xffffffffL

    int-to-long v9, v6

    and-long v6, v9, v7

    or-long/2addr v4, v6

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_41
    iput v0, p0, Lcom/applovin/exoplayer2/common/a/l;->pM:I

    iput-object p1, p0, Lcom/applovin/exoplayer2/common/a/l;->pG:[I

    return-void
.end method

.method private static ab(J)I
    .registers 3

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method private static ac(J)I
    .registers 2

    long-to-int p1, p0

    return p1
.end method

.method private static b(JI)J
    .registers 7

    const-wide v0, -0x100000000L

    and-long/2addr p0, v0

    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private ba(I)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l;->pI:[Ljava/lang/Object;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/l;->pH:[J

    aget-wide v2, v1, p1

    invoke-static {v2, v3}, Lcom/applovin/exoplayer2/common/a/l;->ab(J)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/applovin/exoplayer2/common/a/l;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public static fH()Lcom/applovin/exoplayer2/common/a/l;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/applovin/exoplayer2/common/a/l<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/applovin/exoplayer2/common/a/l;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/common/a/l;-><init>()V

    return-object v0
.end method

.method private fI()I
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l;->pG:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private indexOf(Ljava/lang/Object;)I
    .registers 7
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/applovin/exoplayer2/common/a/p;->s(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/l;->pG:[I

    invoke-direct {p0}, Lcom/applovin/exoplayer2/common/a/l;->fI()I

    move-result v2

    and-int/2addr v2, v0

    aget v1, v1, v2

    :goto_d
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2a

    iget-object v2, p0, Lcom/applovin/exoplayer2/common/a/l;->pH:[J

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Lcom/applovin/exoplayer2/common/a/l;->ab(J)I

    move-result v2

    if-ne v2, v0, :cond_25

    iget-object v2, p0, Lcom/applovin/exoplayer2/common/a/l;->pI:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lcom/applovin/exoplayer2/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    return v1

    :cond_25
    invoke-static {v3, v4}, Lcom/applovin/exoplayer2/common/a/l;->ac(J)I

    move-result v1

    goto :goto_d

    :cond_2a
    return v2
.end method


# virtual methods
.method a(IF)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    const-string v3, "Initial capacity must be non-negative"

    invoke-static {v2, v3}, Lcom/applovin/exoplayer2/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-lez v2, :cond_12

    const/4 v0, 0x1

    :cond_12
    const-string v2, "Illegal load factor"

    invoke-static {v0, v2}, Lcom/applovin/exoplayer2/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    float-to-double v2, p2

    invoke-static {p1, v2, v3}, Lcom/applovin/exoplayer2/common/a/p;->a(ID)I

    move-result v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/common/a/l;->aU(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/applovin/exoplayer2/common/a/l;->pG:[I

    iput p2, p0, Lcom/applovin/exoplayer2/common/a/l;->pK:F

    new-array v2, p1, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/applovin/exoplayer2/common/a/l;->pI:[Ljava/lang/Object;

    new-array v2, p1, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/applovin/exoplayer2/common/a/l;->pJ:[Ljava/lang/Object;

    invoke-static {p1}, Lcom/applovin/exoplayer2/common/a/l;->aV(I)[J

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/common/a/l;->pH:[J

    int-to-float p1, v0

    mul-float p1, p1, p2

    float-to-int p1, p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/applovin/exoplayer2/common/a/l;->pM:I

    return-void
.end method

.method a(ILjava/lang/Object;Ljava/lang/Object;I)V
    .registers 10
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l;->pH:[J

    int-to-long v1, p4

    const/16 p4, 0x20

    shl-long/2addr v1, p4

    const-wide v3, 0xffffffffL

    or-long/2addr v1, v3

    aput-wide v1, v0, p1

    iget-object p4, p0, Lcom/applovin/exoplayer2/common/a/l;->pI:[Ljava/lang/Object;

    aput-object p2, p4, p1

    iget-object p2, p0, Lcom/applovin/exoplayer2/common/a/l;->pJ:[Ljava/lang/Object;

    aput-object p3, p2, p1

    return-void
.end method

.method aW(I)V
    .registers 2

    return-void
.end method

.method aY(I)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l;->pI:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/common/a/l;->pI:[Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l;->pJ:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/common/a/l;->pJ:[Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l;->pH:[J

    array-length v1, v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    if-le p1, v1, :cond_1e

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, p1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    :cond_1e
    iput-object v0, p0, Lcom/applovin/exoplayer2/common/a/l;->pH:[J

    return-void
.end method

.method bb(I)V
    .registers 9

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/l;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    if-ge p1, v0, :cond_4a

    iget-object v4, p0, Lcom/applovin/exoplayer2/common/a/l;->pI:[Ljava/lang/Object;

    aget-object v5, v4, v0

    aput-object v5, v4, p1

    iget-object v5, p0, Lcom/applovin/exoplayer2/common/a/l;->pJ:[Ljava/lang/Object;

    aget-object v6, v5, v0

    aput-object v6, v5, p1

    aput-object v3, v4, v0

    aput-object v3, v5, v0

    iget-object v3, p0, Lcom/applovin/exoplayer2/common/a/l;->pH:[J

    aget-wide v4, v3, v0

    aput-wide v4, v3, p1

    aput-wide v1, v3, v0

    invoke-static {v4, v5}, Lcom/applovin/exoplayer2/common/a/l;->ab(J)I

    move-result v1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/common/a/l;->fI()I

    move-result v2

    and-int/2addr v1, v2

    iget-object v2, p0, Lcom/applovin/exoplayer2/common/a/l;->pG:[I

    aget v3, v2, v1

    if-ne v3, v0, :cond_35

    aput p1, v2, v1

    goto :goto_56

    :cond_35
    :goto_35
    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/l;->pH:[J

    aget-wide v4, v1, v3

    invoke-static {v4, v5}, Lcom/applovin/exoplayer2/common/a/l;->ac(J)I

    move-result v1

    if-ne v1, v0, :cond_48

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l;->pH:[J

    invoke-static {v4, v5, p1}, Lcom/applovin/exoplayer2/common/a/l;->b(JI)J

    move-result-wide v1

    aput-wide v1, v0, v3

    goto :goto_56

    :cond_48
    move v3, v1

    goto :goto_35

    :cond_4a
    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l;->pI:[Ljava/lang/Object;

    aput-object v3, v0, p1

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l;->pJ:[Ljava/lang/Object;

    aput-object v3, v0, p1

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l;->pH:[J

    aput-wide v1, v0, p1

    :goto_56
    return-void
.end method

.method bc(I)I
    .registers 3

    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Lcom/applovin/exoplayer2/common/a/l;->oW:I

    if-ge p1, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 p1, -0x1

    :goto_8
    return p1
.end method

.method public clear()V
    .registers 6

    iget v0, p0, Lcom/applovin/exoplayer2/common/a/l;->pL:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/applovin/exoplayer2/common/a/l;->pL:I

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l;->pI:[Ljava/lang/Object;

    iget v1, p0, Lcom/applovin/exoplayer2/common/a/l;->oW:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l;->pJ:[Ljava/lang/Object;

    iget v1, p0, Lcom/applovin/exoplayer2/common/a/l;->oW:I

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l;->pG:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l;->pH:[J

    const-wide/16 v3, -0x1

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    iput v2, p0, Lcom/applovin/exoplayer2/common/a/l;->oW:I

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/common/a/l;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Lcom/applovin/exoplayer2/common/a/l;->oW:I

    if-ge v1, v2, :cond_15

    iget-object v2, p0, Lcom/applovin/exoplayer2/common/a/l;->pJ:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lcom/applovin/exoplayer2/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_15
    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l;->pO:Ljava/util/Set;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/l;->fn()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/common/a/l;->pO:Ljava/util/Set;

    :cond_a
    return-object v0
.end method

.method fJ()I
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/l;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method fK()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/applovin/exoplayer2/common/a/l$1;

    invoke-direct {v0, p0}, Lcom/applovin/exoplayer2/common/a/l$1;-><init>(Lcom/applovin/exoplayer2/common/a/l;)V

    return-object v0
.end method

.method fL()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/applovin/exoplayer2/common/a/l$2;

    invoke-direct {v0, p0}, Lcom/applovin/exoplayer2/common/a/l$2;-><init>(Lcom/applovin/exoplayer2/common/a/l;)V

    return-object v0
.end method

.method fM()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/applovin/exoplayer2/common/a/l$3;

    invoke-direct {v0, p0}, Lcom/applovin/exoplayer2/common/a/l$3;-><init>(Lcom/applovin/exoplayer2/common/a/l;)V

    return-object v0
.end method

.method fe()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/applovin/exoplayer2/common/a/l$c;

    invoke-direct {v0, p0}, Lcom/applovin/exoplayer2/common/a/l$c;-><init>(Lcom/applovin/exoplayer2/common/a/l;)V

    return-object v0
.end method

.method fg()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/applovin/exoplayer2/common/a/l$e;

    invoke-direct {v0, p0}, Lcom/applovin/exoplayer2/common/a/l$e;-><init>(Lcom/applovin/exoplayer2/common/a/l;)V

    return-object v0
.end method

.method fn()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/applovin/exoplayer2/common/a/l$a;

    invoke-direct {v0, p0}, Lcom/applovin/exoplayer2/common/a/l$a;-><init>(Lcom/applovin/exoplayer2/common/a/l;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/common/a/l;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/common/a/l;->aW(I)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_c

    const/4 p1, 0x0

    goto :goto_10

    :cond_c
    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l;->pJ:[Ljava/lang/Object;

    aget-object p1, v0, p1

    :goto_10
    return-object p1
.end method

.method public isEmpty()Z
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/common/a/l;->oW:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l;->pN:Ljava/util/Set;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/l;->fe()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/common/a/l;->pN:Ljava/util/Set;

    :cond_a
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l;->pH:[J

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/l;->pI:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/applovin/exoplayer2/common/a/l;->pJ:[Ljava/lang/Object;

    invoke-static {p1}, Lcom/applovin/exoplayer2/common/a/p;->s(Ljava/lang/Object;)I

    move-result v3

    invoke-direct {p0}, Lcom/applovin/exoplayer2/common/a/l;->fI()I

    move-result v4

    and-int/2addr v4, v3

    iget v5, p0, Lcom/applovin/exoplayer2/common/a/l;->oW:I

    iget-object v6, p0, Lcom/applovin/exoplayer2/common/a/l;->pG:[I

    aget v7, v6, v4

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1b

    aput v5, v6, v4

    goto :goto_3f

    :cond_1b
    :goto_1b
    aget-wide v9, v0, v7

    invoke-static {v9, v10}, Lcom/applovin/exoplayer2/common/a/l;->ab(J)I

    move-result v4

    if-ne v4, v3, :cond_33

    aget-object v4, v1, v7

    invoke-static {p1, v4}, Lcom/applovin/exoplayer2/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    aget-object p1, v2, v7

    aput-object p2, v2, v7

    invoke-virtual {p0, v7}, Lcom/applovin/exoplayer2/common/a/l;->aW(I)V

    return-object p1

    :cond_33
    invoke-static {v9, v10}, Lcom/applovin/exoplayer2/common/a/l;->ac(J)I

    move-result v4

    if-ne v4, v8, :cond_6a

    invoke-static {v9, v10, v5}, Lcom/applovin/exoplayer2/common/a/l;->b(JI)J

    move-result-wide v1

    aput-wide v1, v0, v7

    :goto_3f
    const v0, 0x7fffffff

    if-eq v5, v0, :cond_62

    add-int/lit8 v0, v5, 0x1

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/common/a/l;->aX(I)V

    invoke-virtual {p0, v5, p1, p2, v3}, Lcom/applovin/exoplayer2/common/a/l;->a(ILjava/lang/Object;Ljava/lang/Object;I)V

    iput v0, p0, Lcom/applovin/exoplayer2/common/a/l;->oW:I

    iget p1, p0, Lcom/applovin/exoplayer2/common/a/l;->pM:I

    if-lt v5, p1, :cond_5a

    iget-object p1, p0, Lcom/applovin/exoplayer2/common/a/l;->pG:[I

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x2

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/common/a/l;->aZ(I)V

    :cond_5a
    iget p1, p0, Lcom/applovin/exoplayer2/common/a/l;->pL:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/applovin/exoplayer2/common/a/l;->pL:I

    const/4 p1, 0x0

    return-object p1

    :cond_62
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot contain more than Integer.MAX_VALUE elements!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6a
    move v7, v4

    goto :goto_1b
.end method

.method q(II)I
    .registers 3

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    invoke-static {p1}, Lcom/applovin/exoplayer2/common/a/p;->s(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/applovin/exoplayer2/common/a/l;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/common/a/l;->oW:I

    return v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l;->pP:Ljava/util/Collection;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/l;->fg()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/common/a/l;->pP:Ljava/util/Collection;

    :cond_a
    return-object v0
.end method

###### Class com.applovin.exoplayer2.common.a.l.AnonymousClass1 (com.applovin.exoplayer2.common.a.l$1)
.class Lcom/applovin/exoplayer2/common/a/l$1;
.super Lcom/applovin/exoplayer2/common/a/l$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/exoplayer2/common/a/l;->fK()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/applovin/exoplayer2/common/a/l<",
        "TK;TV;>.b<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic pQ:Lcom/applovin/exoplayer2/common/a/l;


# direct methods
.method constructor <init>(Lcom/applovin/exoplayer2/common/a/l;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/exoplayer2/common/a/l$1;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/applovin/exoplayer2/common/a/l$b;-><init>(Lcom/applovin/exoplayer2/common/a/l;Lcom/applovin/exoplayer2/common/a/l$1;)V

    return-void
.end method


# virtual methods
.method bd(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l$1;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    iget-object v0, v0, Lcom/applovin/exoplayer2/common/a/l;->pI:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

###### Class com.applovin.exoplayer2.common.a.l.AnonymousClass2 (com.applovin.exoplayer2.common.a.l$2)
.class Lcom/applovin/exoplayer2/common/a/l$2;
.super Lcom/applovin/exoplayer2/common/a/l$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/exoplayer2/common/a/l;->fL()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/applovin/exoplayer2/common/a/l<",
        "TK;TV;>.b<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic pQ:Lcom/applovin/exoplayer2/common/a/l;


# direct methods
.method constructor <init>(Lcom/applovin/exoplayer2/common/a/l;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/exoplayer2/common/a/l$2;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/applovin/exoplayer2/common/a/l$b;-><init>(Lcom/applovin/exoplayer2/common/a/l;Lcom/applovin/exoplayer2/common/a/l$1;)V

    return-void
.end method


# virtual methods
.method synthetic bd(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/common/a/l$2;->be(I)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method be(I)Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/applovin/exoplayer2/common/a/l$d;

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/l$2;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    invoke-direct {v0, v1, p1}, Lcom/applovin/exoplayer2/common/a/l$d;-><init>(Lcom/applovin/exoplayer2/common/a/l;I)V

    return-object v0
.end method

###### Class com.applovin.exoplayer2.common.a.l.AnonymousClass3 (com.applovin.exoplayer2.common.a.l$3)
.class Lcom/applovin/exoplayer2/common/a/l$3;
.super Lcom/applovin/exoplayer2/common/a/l$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/exoplayer2/common/a/l;->fM()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/applovin/exoplayer2/common/a/l<",
        "TK;TV;>.b<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic pQ:Lcom/applovin/exoplayer2/common/a/l;


# direct methods
.method constructor <init>(Lcom/applovin/exoplayer2/common/a/l;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/exoplayer2/common/a/l$3;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/applovin/exoplayer2/common/a/l$b;-><init>(Lcom/applovin/exoplayer2/common/a/l;Lcom/applovin/exoplayer2/common/a/l$1;)V

    return-void
.end method


# virtual methods
.method bd(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l$3;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    iget-object v0, v0, Lcom/applovin/exoplayer2/common/a/l;->pJ:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

###### Class com.applovin.exoplayer2.common.a.l.a (com.applovin.exoplayer2.common.a.l$a)
.class Lcom/applovin/exoplayer2/common/a/l$a;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/common/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic pQ:Lcom/applovin/exoplayer2/common/a/l;


# direct methods
.method constructor <init>(Lcom/applovin/exoplayer2/common/a/l;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/exoplayer2/common/a/l$a;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l$a;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/common/a/l;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l$a;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/applovin/exoplayer2/common/a/l;->a(Lcom/applovin/exoplayer2/common/a/l;Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_25

    iget-object v2, p0, Lcom/applovin/exoplayer2/common/a/l$a;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    iget-object v2, v2, Lcom/applovin/exoplayer2/common/a/l;->pJ:[Ljava/lang/Object;

    aget-object v0, v2, v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    const/4 v1, 0x1

    :cond_25
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l$a;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/common/a/l;->fL()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_2a

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l$a;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/common/a/l;->a(Lcom/applovin/exoplayer2/common/a/l;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2a

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/l$a;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    iget-object v1, v1, Lcom/applovin/exoplayer2/common/a/l;->pJ:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/applovin/exoplayer2/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lcom/applovin/exoplayer2/common/a/l$a;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/common/a/l;->a(Lcom/applovin/exoplayer2/common/a/l;I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_2a
    const/4 p1, 0x0

    return p1
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l$a;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    invoke-static {v0}, Lcom/applovin/exoplayer2/common/a/l;->a(Lcom/applovin/exoplayer2/common/a/l;)I

    move-result v0

    return v0
.end method

###### Class com.applovin.exoplayer2.common.a.l.b (com.applovin.exoplayer2.common.a.l$b)
.class abstract Lcom/applovin/exoplayer2/common/a/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/common/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic pQ:Lcom/applovin/exoplayer2/common/a/l;

.field pR:I

.field pS:I

.field pT:I


# direct methods
.method private constructor <init>(Lcom/applovin/exoplayer2/common/a/l;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/applovin/exoplayer2/common/a/l;->pL:I

    iput v0, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pR:I

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/common/a/l;->fJ()I

    move-result p1

    iput p1, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pS:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pT:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/exoplayer2/common/a/l;Lcom/applovin/exoplayer2/common/a/l$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/common/a/l$b;-><init>(Lcom/applovin/exoplayer2/common/a/l;)V

    return-void
.end method

.method private fN()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    iget v0, v0, Lcom/applovin/exoplayer2/common/a/l;->pL:I

    iget v1, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pR:I

    if-ne v0, v1, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method abstract bd(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pS:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/applovin/exoplayer2/common/a/l$b;->fN()V

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/l$b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget v0, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pS:I

    iput v0, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pT:I

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/common/a/l$b;->bd(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    iget v2, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pS:I

    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/common/a/l;->bc(I)I

    move-result v1

    iput v1, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pS:I

    return-object v0

    :cond_1c
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 4

    invoke-direct {p0}, Lcom/applovin/exoplayer2/common/a/l$b;->fN()V

    iget v0, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pT:I

    const/4 v1, 0x1

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lcom/applovin/exoplayer2/common/a/j;->I(Z)V

    iget v0, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pR:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pR:I

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    iget v1, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pT:I

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/common/a/l;->a(Lcom/applovin/exoplayer2/common/a/l;I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    iget v1, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pS:I

    iget v2, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pT:I

    invoke-virtual {v0, v1, v2}, Lcom/applovin/exoplayer2/common/a/l;->q(II)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pS:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pT:I

    return-void
.end method

###### Class com.applovin.exoplayer2.common.a.l.c (com.applovin.exoplayer2.common.a.l$c)
.class Lcom/applovin/exoplayer2/common/a/l$c;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/common/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic pQ:Lcom/applovin/exoplayer2/common/a/l;


# direct methods
.method constructor <init>(Lcom/applovin/exoplayer2/common/a/l;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/exoplayer2/common/a/l$c;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l$c;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/common/a/l;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l$c;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/common/a/l;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l$c;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/common/a/l;->fK()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l$c;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/common/a/l;->a(Lcom/applovin/exoplayer2/common/a/l;Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_b

    const/4 p1, 0x0

    return p1

    :cond_b
    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l$c;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/common/a/l;->a(Lcom/applovin/exoplayer2/common/a/l;I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l$c;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    invoke-static {v0}, Lcom/applovin/exoplayer2/common/a/l;->a(Lcom/applovin/exoplayer2/common/a/l;)I

    move-result v0

    return v0
.end method

###### Class com.applovin.exoplayer2.common.a.l.d (com.applovin.exoplayer2.common.a.l$d)
.class final Lcom/applovin/exoplayer2/common/a/l$d;
.super Lcom/applovin/exoplayer2/common/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/common/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/applovin/exoplayer2/common/a/e<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic pQ:Lcom/applovin/exoplayer2/common/a/l;

.field private pU:I

.field private final pn:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/applovin/exoplayer2/common/a/l;I)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/exoplayer2/common/a/l$d;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/common/a/e;-><init>()V

    iget-object p1, p1, Lcom/applovin/exoplayer2/common/a/l;->pI:[Ljava/lang/Object;

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/applovin/exoplayer2/common/a/l$d;->pn:Ljava/lang/Object;

    iput p2, p0, Lcom/applovin/exoplayer2/common/a/l$d;->pU:I

    return-void
.end method

.method private fO()V
    .registers 4

    iget v0, p0, Lcom/applovin/exoplayer2/common/a/l$d;->pU:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/l$d;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/common/a/l;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l$d;->pn:Ljava/lang/Object;

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/l$d;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    iget-object v1, v1, Lcom/applovin/exoplayer2/common/a/l;->pI:[Ljava/lang/Object;

    iget v2, p0, Lcom/applovin/exoplayer2/common/a/l$d;->pU:I

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    :cond_1d
    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l$d;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/l$d;->pn:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/common/a/l;->a(Lcom/applovin/exoplayer2/common/a/l;Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/common/a/l$d;->pU:I

    :cond_27
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l$d;->pn:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/applovin/exoplayer2/common/a/l$d;->fO()V

    iget v0, p0, Lcom/applovin/exoplayer2/common/a/l$d;->pU:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    goto :goto_10

    :cond_a
    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/l$d;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    iget-object v1, v1, Lcom/applovin/exoplayer2/common/a/l;->pJ:[Ljava/lang/Object;

    aget-object v0, v1, v0

    :goto_10
    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/applovin/exoplayer2/common/a/l$d;->fO()V

    iget v0, p0, Lcom/applovin/exoplayer2/common/a/l$d;->pU:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l$d;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/l$d;->pn:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/applovin/exoplayer2/common/a/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1

    :cond_11
    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/l$d;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    iget-object v1, v1, Lcom/applovin/exoplayer2/common/a/l;->pJ:[Ljava/lang/Object;

    aget-object v2, v1, v0

    aput-object p1, v1, v0

    return-object v2
.end method

###### Class com.applovin.exoplayer2.common.a.l.e (com.applovin.exoplayer2.common.a.l$e)
.class Lcom/applovin/exoplayer2/common/a/l$e;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/common/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic pQ:Lcom/applovin/exoplayer2/common/a/l;


# direct methods
.method constructor <init>(Lcom/applovin/exoplayer2/common/a/l;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/exoplayer2/common/a/l$e;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l$e;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/common/a/l;->clear()V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l$e;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/common/a/l;->fM()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l$e;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    invoke-static {v0}, Lcom/applovin/exoplayer2/common/a/l;->a(Lcom/applovin/exoplayer2/common/a/l;)I

    move-result v0

    return v0
.end method
