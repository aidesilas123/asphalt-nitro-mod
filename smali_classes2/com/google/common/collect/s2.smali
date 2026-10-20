###### Class com.google.common.collect.s2 (com.google.common.collect.s2)
.class final Lcom/google/common/collect/s2;
.super Lcom/google/common/collect/ImmutableSortedMultiset;
.source "RegularImmutableSortedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSortedMultiset<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final e:[J

.field static final f:Lcom/google/common/collect/ImmutableSortedMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSortedMultiset<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final transient g:Lcom/google/common/collect/t2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/t2<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final transient h:[J

.field private final transient i:I

.field private final transient j:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    sput-object v0, Lcom/google/common/collect/s2;->e:[J

    new-instance v0, Lcom/google/common/collect/s2;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/s2;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/google/common/collect/s2;->f:Lcom/google/common/collect/ImmutableSortedMultiset;

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/t2;[JII)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/t2<",
            "TE;>;[JII)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/s2;->g:Lcom/google/common/collect/t2;

    iput-object p2, p0, Lcom/google/common/collect/s2;->h:[J

    iput p3, p0, Lcom/google/common/collect/s2;->i:I

    iput p4, p0, Lcom/google/common/collect/s2;->j:I

    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;-><init>()V

    invoke-static {p1}, Lcom/google/common/collect/ImmutableSortedSet;->F(Ljava/util/Comparator;)Lcom/google/common/collect/t2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/s2;->g:Lcom/google/common/collect/t2;

    sget-object p1, Lcom/google/common/collect/s2;->e:[J

    iput-object p1, p0, Lcom/google/common/collect/s2;->h:[J

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/common/collect/s2;->i:I

    iput p1, p0, Lcom/google/common/collect/s2;->j:I

    return-void
.end method

.method private H(I)I
    .registers 8

    iget-object v0, p0, Lcom/google/common/collect/s2;->h:[J

    iget v1, p0, Lcom/google/common/collect/s2;->i:I

    add-int v2, v1, p1

    add-int/lit8 v2, v2, 0x1

    aget-wide v2, v0, v2

    add-int/2addr v1, p1

    aget-wide v4, v0, v1

    sub-long/2addr v2, v4

    long-to-int p1, v2

    return p1
.end method


# virtual methods
.method public C()Lcom/google/common/collect/ImmutableSortedSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/s2;->g:Lcom/google/common/collect/t2;

    return-object v0
.end method

.method public E(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/s2;->g:Lcom/google/common/collect/t2;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    sget-object v1, Lcom/google/common/collect/BoundType;->b:Lcom/google/common/collect/BoundType;

    const/4 v2, 0x0

    if-ne p2, v1, :cond_d

    const/4 p2, 0x1

    goto :goto_e

    :cond_d
    const/4 p2, 0x0

    :goto_e
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/t2;->X(Ljava/lang/Object;Z)I

    move-result p1

    invoke-virtual {p0, v2, p1}, Lcom/google/common/collect/s2;->M(II)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object p1

    return-object p1
.end method

.method public G(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/s2;->g:Lcom/google/common/collect/t2;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    sget-object v1, Lcom/google/common/collect/BoundType;->b:Lcom/google/common/collect/BoundType;

    if-ne p2, v1, :cond_c

    const/4 p2, 0x1

    goto :goto_d

    :cond_c
    const/4 p2, 0x0

    :goto_d
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/t2;->Y(Ljava/lang/Object;Z)I

    move-result p1

    iget p2, p0, Lcom/google/common/collect/s2;->j:I

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/s2;->M(II)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic J(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/e3;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/s2;->E(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object p1

    return-object p1
.end method

.method public K(Ljava/lang/Object;)I
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/s2;->g:Lcom/google/common/collect/t2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/t2;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_d

    invoke-direct {p0, p1}, Lcom/google/common/collect/s2;->H(I)I

    move-result p1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    return p1
.end method

.method public bridge synthetic L(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/e3;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/s2;->G(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object p1

    return-object p1
.end method

.method M(II)Lcom/google/common/collect/ImmutableSortedMultiset;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/collect/s2;->j:I

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    if-ne p1, p2, :cond_10

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableSortedMultiset;->D(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object p1

    return-object p1

    :cond_10
    if-nez p1, :cond_17

    iget v0, p0, Lcom/google/common/collect/s2;->j:I

    if-ne p2, v0, :cond_17

    return-object p0

    :cond_17
    iget-object v0, p0, Lcom/google/common/collect/s2;->g:Lcom/google/common/collect/t2;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/t2;->W(II)Lcom/google/common/collect/t2;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/s2;

    iget-object v2, p0, Lcom/google/common/collect/s2;->h:[J

    iget v3, p0, Lcom/google/common/collect/s2;->i:I

    add-int/2addr v3, p1

    sub-int/2addr p2, p1

    invoke-direct {v1, v0, v2, v3, p2}, Lcom/google/common/collect/s2;-><init>(Lcom/google/common/collect/t2;[JII)V

    return-object v1
.end method

.method public firstEntry()Lcom/google/common/collect/c2$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_d

    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/s2;->z(I)Lcom/google/common/collect/c2$a;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method j()Z
    .registers 4

    iget v0, p0, Lcom/google/common/collect/s2;->i:I

    const/4 v1, 0x1

    if-gtz v0, :cond_f

    iget v0, p0, Lcom/google/common/collect/s2;->j:I

    iget-object v2, p0, Lcom/google/common/collect/s2;->h:[J

    array-length v2, v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :cond_f
    :goto_f
    return v1
.end method

.method public bridge synthetic k()Ljava/util/NavigableSet;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/s2;->C()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k()Ljava/util/Set;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/s2;->C()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Lcom/google/common/collect/c2$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_10

    :cond_8
    iget v0, p0, Lcom/google/common/collect/s2;->j:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/common/collect/s2;->z(I)Lcom/google/common/collect/c2$a;

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method public size()I
    .registers 7

    iget-object v0, p0, Lcom/google/common/collect/s2;->h:[J

    iget v1, p0, Lcom/google/common/collect/s2;->i:I

    iget v2, p0, Lcom/google/common/collect/s2;->j:I

    add-int/2addr v2, v1

    aget-wide v2, v0, v2

    aget-wide v4, v0, v1

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method public bridge synthetic x()Lcom/google/common/collect/ImmutableSet;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/s2;->C()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method z(I)Lcom/google/common/collect/c2$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/s2;->g:Lcom/google/common/collect/t2;

    invoke-virtual {v0}, Lcom/google/common/collect/t2;->e()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/common/collect/s2;->H(I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/c2$a;

    move-result-object p1

    return-object p1
.end method
