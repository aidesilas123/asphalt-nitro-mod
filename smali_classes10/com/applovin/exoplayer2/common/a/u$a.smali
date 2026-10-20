###### Class com.applovin.exoplayer2.common.a.u.a (com.applovin.exoplayer2.common.a.u$a)
.class public Lcom/applovin/exoplayer2/common/a/u$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/common/a/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field oW:I

.field qk:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field ql:[Ljava/lang/Object;

.field qm:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/common/a/u$a;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/applovin/exoplayer2/common/a/u$a;->ql:[Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/applovin/exoplayer2/common/a/u$a;->oW:I

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/common/a/u$a;->qm:Z

    return-void
.end method

.method private bj(I)V
    .registers 4

    mul-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/u$a;->ql:[Ljava/lang/Object;

    array-length v1, v0

    if-le p1, v1, :cond_15

    array-length v1, v0

    invoke-static {v1, p1}, Lcom/applovin/exoplayer2/common/a/q$b;->s(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/common/a/u$a;->ql:[Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/common/a/u$a;->qm:Z

    :cond_15
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Iterable;)Lcom/applovin/exoplayer2/common/a/u$a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lcom/applovin/exoplayer2/common/a/u$a<",
            "TK;TV;>;"
        }
    .end annotation

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/applovin/exoplayer2/common/a/u$a;->oW:I

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/common/a/u$a;->bj(I)V

    :cond_11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/common/a/u$a;->b(Ljava/util/Map$Entry;)Lcom/applovin/exoplayer2/common/a/u$a;

    goto :goto_15

    :cond_25
    return-object p0
.end method

.method public b(Ljava/util/Map$Entry;)Lcom/applovin/exoplayer2/common/a/u$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Lcom/applovin/exoplayer2/common/a/u$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/applovin/exoplayer2/common/a/u$a;->l(Ljava/lang/Object;Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/a/u$a;

    move-result-object p1

    return-object p1
.end method

.method public gq()Lcom/applovin/exoplayer2/common/a/u;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/applovin/exoplayer2/common/a/u<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/u$a;->gr()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/common/a/u$a;->qm:Z

    iget v0, p0, Lcom/applovin/exoplayer2/common/a/u$a;->oW:I

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/u$a;->ql:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/common/a/al;->b(I[Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/a/al;

    move-result-object v0

    return-object v0
.end method

.method gr()V
    .registers 8

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/u$a;->qk:Ljava/util/Comparator;

    if-eqz v0, :cond_62

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/common/a/u$a;->qm:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/u$a;->ql:[Ljava/lang/Object;

    iget v1, p0, Lcom/applovin/exoplayer2/common/a/u$a;->oW:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/common/a/u$a;->ql:[Ljava/lang/Object;

    :cond_14
    iget v0, p0, Lcom/applovin/exoplayer2/common/a/u$a;->oW:I

    new-array v0, v0, [Ljava/util/Map$Entry;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1a
    iget v3, p0, Lcom/applovin/exoplayer2/common/a/u$a;->oW:I

    if-ge v2, v3, :cond_32

    new-instance v3, Ljava/util/AbstractMap$SimpleImmutableEntry;

    iget-object v4, p0, Lcom/applovin/exoplayer2/common/a/u$a;->ql:[Ljava/lang/Object;

    mul-int/lit8 v5, v2, 0x2

    aget-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    invoke-direct {v3, v6, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_32
    iget-object v2, p0, Lcom/applovin/exoplayer2/common/a/u$a;->qk:Ljava/util/Comparator;

    invoke-static {v2}, Lcom/applovin/exoplayer2/common/a/ai;->b(Ljava/util/Comparator;)Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v2

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/ab;->gG()Lcom/applovin/exoplayer2/common/base/Function;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/applovin/exoplayer2/common/a/ai;->a(Lcom/applovin/exoplayer2/common/base/Function;)Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v2

    invoke-static {v0, v1, v3, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    :goto_43
    iget v2, p0, Lcom/applovin/exoplayer2/common/a/u$a;->oW:I

    if-ge v1, v2, :cond_62

    iget-object v2, p0, Lcom/applovin/exoplayer2/common/a/u$a;->ql:[Ljava/lang/Object;

    mul-int/lit8 v3, v1, 0x2

    aget-object v4, v0, v1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v2, p0, Lcom/applovin/exoplayer2/common/a/u$a;->ql:[Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    aget-object v4, v0, v1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    :cond_62
    return-void
.end method

.method public l(Ljava/lang/Object;Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/a/u$a;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/applovin/exoplayer2/common/a/u$a<",
            "TK;TV;>;"
        }
    .end annotation

    iget v0, p0, Lcom/applovin/exoplayer2/common/a/u$a;->oW:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/common/a/u$a;->bj(I)V

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/common/a/j;->j(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/u$a;->ql:[Ljava/lang/Object;

    iget v1, p0, Lcom/applovin/exoplayer2/common/a/u$a;->oW:I

    mul-int/lit8 v2, v1, 0x2

    aput-object p1, v0, v2

    mul-int/lit8 p1, v1, 0x2

    add-int/lit8 p1, p1, 0x1

    aput-object p2, v0, p1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/applovin/exoplayer2/common/a/u$a;->oW:I

    return-object p0
.end method
