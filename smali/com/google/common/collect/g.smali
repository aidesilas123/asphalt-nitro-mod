###### Class com.google.common.collect.g (com.google.common.collect.g)
.class abstract Lcom/google/common/collect/g;
.super Lcom/google/common/collect/j;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/g$e;,
        Lcom/google/common/collect/g$h;,
        Lcom/google/common/collect/g$b;,
        Lcom/google/common/collect/g$c;,
        Lcom/google/common/collect/g$f;,
        Lcom/google/common/collect/g$i;,
        Lcom/google/common/collect/g$d;,
        Lcom/google/common/collect/g$g;,
        Lcom/google/common/collect/g$k;,
        Lcom/google/common/collect/g$l;,
        Lcom/google/common/collect/g$n;,
        Lcom/google/common/collect/g$m;,
        Lcom/google/common/collect/g$j;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/j<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x21f766b1f568c81dL


# instance fields
.field private transient d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private transient e:I


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/j;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    iput-object p1, p0, Lcom/google/common/collect/g;->d:Ljava/util/Map;

    return-void
.end method

.method private static B(Ljava/util/Collection;)Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    goto :goto_f

    :cond_b
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    return-object p0
.end method

.method private C(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/g;->d:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->D(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_16

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    iget p1, p0, Lcom/google/common/collect/g;->e:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/collect/g;->e:I

    :cond_16
    return-void
.end method

.method static synthetic k(Lcom/google/common/collect/g;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/google/common/collect/g;->d:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic m(Ljava/util/Collection;)Ljava/util/Iterator;
    .registers 1

    invoke-static {p0}, Lcom/google/common/collect/g;->B(Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic n(Lcom/google/common/collect/g;)I
    .registers 3

    iget v0, p0, Lcom/google/common/collect/g;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/common/collect/g;->e:I

    return v0
.end method

.method static synthetic p(Lcom/google/common/collect/g;)I
    .registers 3

    iget v0, p0, Lcom/google/common/collect/g;->e:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/common/collect/g;->e:I

    return v0
.end method

.method static synthetic q(Lcom/google/common/collect/g;I)I
    .registers 3

    iget v0, p0, Lcom/google/common/collect/g;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/collect/g;->e:I

    return v0
.end method

.method static synthetic r(Lcom/google/common/collect/g;I)I
    .registers 3

    iget v0, p0, Lcom/google/common/collect/g;->e:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/collect/g;->e:I

    return v0
.end method

.method static synthetic s(Lcom/google/common/collect/g;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/common/collect/g;->C(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method final D(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/g;->d:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/g;->e:I

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    iget v1, p0, Lcom/google/common/collect/g;->e:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/common/collect/g;->e:I

    goto :goto_d

    :cond_2c
    return-void
.end method

.method abstract E(Ljava/util/Collection;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation
.end method

.method abstract F(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection<",
            "TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end method

.method final G(Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/g$j;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/List<",
            "TV;>;",
            "Lcom/google/common/collect/g<",
            "TK;TV;>.j;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    instance-of v0, p2, Ljava/util/RandomAccess;

    if-eqz v0, :cond_a

    new-instance v0, Lcom/google/common/collect/g$g;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/common/collect/g$g;-><init>(Lcom/google/common/collect/g;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/g$j;)V

    goto :goto_f

    :cond_a
    new-instance v0, Lcom/google/common/collect/g$k;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/common/collect/g$k;-><init>(Lcom/google/common/collect/g;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/g$j;)V

    :goto_f
    return-object v0
.end method

.method public a(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/g;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-nez p1, :cond_f

    invoke-virtual {p0}, Lcom/google/common/collect/g;->z()Ljava/util/Collection;

    move-result-object p1

    return-object p1

    :cond_f
    invoke-virtual {p0}, Lcom/google/common/collect/g;->u()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iget v1, p0, Lcom/google/common/collect/g;->e:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/common/collect/g;->e:I

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    invoke-virtual {p0, v0}, Lcom/google/common/collect/g;->E(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method c()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/g$b;

    iget-object v1, p0, Lcom/google/common/collect/g;->d:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/g$b;-><init>(Lcom/google/common/collect/g;Ljava/util/Map;)V

    return-object v0
.end method

.method public clear()V
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/g;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    goto :goto_a

    :cond_1a
    iget-object v0, p0, Lcom/google/common/collect/g;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/g;->e:I

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/g;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method d()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/collect/z2;

    if-eqz v0, :cond_a

    new-instance v0, Lcom/google/common/collect/j$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/j$b;-><init>(Lcom/google/common/collect/j;)V

    return-object v0

    :cond_a
    new-instance v0, Lcom/google/common/collect/j$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/j$a;-><init>(Lcom/google/common/collect/j;)V

    return-object v0
.end method

.method public f()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/j;->f()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method g()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/g$d;

    iget-object v1, p0, Lcom/google/common/collect/g;->d:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/g$d;-><init>(Lcom/google/common/collect/g;Ljava/util/Map;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/g;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_e

    invoke-virtual {p0, p1}, Lcom/google/common/collect/g;->v(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    :cond_e
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/g;->F(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method h()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/g$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/g$a;-><init>(Lcom/google/common/collect/g;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/g;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x1

    if-nez v0, :cond_28

    invoke-virtual {p0, p1}, Lcom/google/common/collect/g;->v(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_20

    iget p2, p0, Lcom/google/common/collect/g;->e:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/google/common/collect/g;->e:I

    iget-object p2, p0, Lcom/google/common/collect/g;->d:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_20
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "New Collection violated the Collection spec"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_28
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    iget p1, p0, Lcom/google/common/collect/g;->e:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/common/collect/g;->e:I

    return v1

    :cond_34
    const/4 p1, 0x0

    return p1
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lcom/google/common/collect/g;->e:I

    return v0
.end method

.method t()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/g;->d:Ljava/util/Map;

    return-object v0
.end method

.method abstract u()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end method

.method v(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/g;->u()Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method final w()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/g;->d:Ljava/util/Map;

    instance-of v1, v0, Ljava/util/NavigableMap;

    if-eqz v1, :cond_10

    new-instance v0, Lcom/google/common/collect/g$e;

    iget-object v1, p0, Lcom/google/common/collect/g;->d:Ljava/util/Map;

    check-cast v1, Ljava/util/NavigableMap;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/g$e;-><init>(Lcom/google/common/collect/g;Ljava/util/NavigableMap;)V

    return-object v0

    :cond_10
    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_1e

    new-instance v0, Lcom/google/common/collect/g$h;

    iget-object v1, p0, Lcom/google/common/collect/g;->d:Ljava/util/Map;

    check-cast v1, Ljava/util/SortedMap;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/g$h;-><init>(Lcom/google/common/collect/g;Ljava/util/SortedMap;)V

    return-object v0

    :cond_1e
    new-instance v0, Lcom/google/common/collect/g$b;

    iget-object v1, p0, Lcom/google/common/collect/g;->d:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/g$b;-><init>(Lcom/google/common/collect/g;Ljava/util/Map;)V

    return-object v0
.end method

.method final x()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/g;->d:Ljava/util/Map;

    instance-of v1, v0, Ljava/util/NavigableMap;

    if-eqz v1, :cond_10

    new-instance v0, Lcom/google/common/collect/g$f;

    iget-object v1, p0, Lcom/google/common/collect/g;->d:Ljava/util/Map;

    check-cast v1, Ljava/util/NavigableMap;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/g$f;-><init>(Lcom/google/common/collect/g;Ljava/util/NavigableMap;)V

    return-object v0

    :cond_10
    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_1e

    new-instance v0, Lcom/google/common/collect/g$i;

    iget-object v1, p0, Lcom/google/common/collect/g;->d:Ljava/util/Map;

    check-cast v1, Ljava/util/SortedMap;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/g$i;-><init>(Lcom/google/common/collect/g;Ljava/util/SortedMap;)V

    return-object v0

    :cond_1e
    new-instance v0, Lcom/google/common/collect/g$d;

    iget-object v1, p0, Lcom/google/common/collect/g;->d:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/g$d;-><init>(Lcom/google/common/collect/g;Ljava/util/Map;)V

    return-object v0
.end method

.method z()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/g;->u()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/g;->E(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
