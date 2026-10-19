###### Class com.google.common.collect.Multisets (com.google.common.collect.Multisets)
.class public final Lcom/google/common/collect/Multisets;
.super Ljava/lang/Object;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Multisets$n;,
        Lcom/google/common/collect/Multisets$g;,
        Lcom/google/common/collect/Multisets$l;,
        Lcom/google/common/collect/Multisets$i;,
        Lcom/google/common/collect/Multisets$h;,
        Lcom/google/common/collect/Multisets$f;,
        Lcom/google/common/collect/Multisets$j;,
        Lcom/google/common/collect/Multisets$k;,
        Lcom/google/common/collect/Multisets$m;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/common/collect/c2;Lcom/google/common/collect/h;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/c2<",
            "TE;>;",
            "Lcom/google/common/collect/h<",
            "+TE;>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/common/collect/k;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    invoke-virtual {p1, p0}, Lcom/google/common/collect/h;->j(Lcom/google/common/collect/c2;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static b(Lcom/google/common/collect/c2;Lcom/google/common/collect/c2;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/c2<",
            "TE;>;",
            "Lcom/google/common/collect/c2<",
            "+TE;>;)Z"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/common/collect/h;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/google/common/collect/h;

    invoke-static {p0, p1}, Lcom/google/common/collect/Multisets;->a(Lcom/google/common/collect/c2;Lcom/google/common/collect/h;)Z

    move-result p0

    return p0

    :cond_b
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 p0, 0x0

    return p0

    :cond_13
    invoke-interface {p1}, Lcom/google/common/collect/c2;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/c2$a;

    invoke-interface {v0}, Lcom/google/common/collect/c2$a;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/c2$a;->getCount()I

    move-result v0

    invoke-interface {p0, v1, v0}, Lcom/google/common/collect/c2;->u(Ljava/lang/Object;I)I

    goto :goto_1b

    :cond_33
    const/4 p0, 0x1

    return p0
.end method

.method static c(Lcom/google/common/collect/c2;Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/c2<",
            "TE;>;",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Lcom/google/common/collect/c2;

    if-eqz v0, :cond_13

    invoke-static {p1}, Lcom/google/common/collect/Multisets;->d(Ljava/lang/Iterable;)Lcom/google/common/collect/c2;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/Multisets;->b(Lcom/google/common/collect/c2;Lcom/google/common/collect/c2;)Z

    move-result p0

    return p0

    :cond_13
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 p0, 0x0

    return p0

    :cond_1b
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    move-result p0

    return p0
.end method

.method public static containsOccurrences(Lcom/google/common/collect/c2;Lcom/google/common/collect/c2;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/c2<",
            "*>;",
            "Lcom/google/common/collect/c2<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lcom/google/common/collect/c2;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/c2$a;

    invoke-interface {v0}, Lcom/google/common/collect/c2$a;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/google/common/collect/c2;->K(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0}, Lcom/google/common/collect/c2$a;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_2a
    const/4 p0, 0x1

    return p0
.end method

.method public static copyHighestCountFirst(Lcom/google/common/collect/c2;)Lcom/google/common/collect/ImmutableMultiset;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/c2<",
            "TE;>;)",
            "Lcom/google/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/common/collect/c2;->entrySet()Ljava/util/Set;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/collect/c2$a;

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/common/collect/c2$a;

    sget-object v0, Lcom/google/common/collect/Multisets$g;->a:Lcom/google/common/collect/Multisets$g;

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/ImmutableMultiset;->t(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object p0

    return-object p0
.end method

.method static d(Ljava/lang/Iterable;)Lcom/google/common/collect/c2;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Lcom/google/common/collect/c2<",
            "TT;>;"
        }
    .end annotation

    check-cast p0, Lcom/google/common/collect/c2;

    return-object p0
.end method

.method public static difference(Lcom/google/common/collect/c2;Lcom/google/common/collect/c2;)Lcom/google/common/collect/c2;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/c2<",
            "TE;>;",
            "Lcom/google/common/collect/c2<",
            "*>;)",
            "Lcom/google/common/collect/c2<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/Multisets$d;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multisets$d;-><init>(Lcom/google/common/collect/c2;Lcom/google/common/collect/c2;)V

    return-object v0
.end method

.method static e(Ljava/util/Iterator;)Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/Multisets$e;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multisets$e;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method static f(Lcom/google/common/collect/c2;Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/c2<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/common/collect/c2;

    const/4 v2, 0x0

    if-eqz v1, :cond_4c

    check-cast p1, Lcom/google/common/collect/c2;

    invoke-interface {p0}, Lcom/google/common/collect/c2;->size()I

    move-result v1

    invoke-interface {p1}, Lcom/google/common/collect/c2;->size()I

    move-result v3

    if-ne v1, v3, :cond_4c

    invoke-interface {p0}, Lcom/google/common/collect/c2;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Lcom/google/common/collect/c2;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v1, v3, :cond_28

    goto :goto_4c

    :cond_28
    invoke-interface {p1}, Lcom/google/common/collect/c2;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_30
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/c2$a;

    invoke-interface {v1}, Lcom/google/common/collect/c2$a;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, Lcom/google/common/collect/c2;->K(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v1}, Lcom/google/common/collect/c2$a;->getCount()I

    move-result v1

    if-eq v3, v1, :cond_30

    return v2

    :cond_4b
    return v0

    :cond_4c
    :goto_4c
    return v2
.end method

.method public static filter(Lcom/google/common/collect/c2;Lcom/google/common/base/k;)Lcom/google/common/collect/c2;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/c2<",
            "TE;>;",
            "Lcom/google/common/base/k<",
            "-TE;>;)",
            "Lcom/google/common/collect/c2<",
            "TE;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/collect/Multisets$j;

    if-eqz v0, :cond_14

    check-cast p0, Lcom/google/common/collect/Multisets$j;

    iget-object v0, p0, Lcom/google/common/collect/Multisets$j;->d:Lcom/google/common/base/k;

    invoke-static {v0, p1}, Lcom/google/common/base/Predicates;->and(Lcom/google/common/base/k;Lcom/google/common/base/k;)Lcom/google/common/base/k;

    move-result-object p1

    new-instance v0, Lcom/google/common/collect/Multisets$j;

    iget-object p0, p0, Lcom/google/common/collect/Multisets$j;->c:Lcom/google/common/collect/c2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multisets$j;-><init>(Lcom/google/common/collect/c2;Lcom/google/common/base/k;)V

    return-object v0

    :cond_14
    new-instance v0, Lcom/google/common/collect/Multisets$j;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multisets$j;-><init>(Lcom/google/common/collect/c2;Lcom/google/common/base/k;)V

    return-object v0
.end method

.method static g(Ljava/lang/Iterable;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)I"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/collect/c2;

    if-eqz v0, :cond_f

    check-cast p0, Lcom/google/common/collect/c2;

    invoke-interface {p0}, Lcom/google/common/collect/c2;->k()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    return p0

    :cond_f
    const/16 p0, 0xb

    return p0
.end method

.method static h(Lcom/google/common/collect/c2;)Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/c2<",
            "TE;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/Multisets$l;

    invoke-interface {p0}, Lcom/google/common/collect/c2;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/Multisets$l;-><init>(Lcom/google/common/collect/c2;Ljava/util/Iterator;)V

    return-object v0
.end method

.method static i(Lcom/google/common/collect/c2;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/c2<",
            "*>;)I"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/common/collect/c2;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/c2$a;

    invoke-interface {v2}, Lcom/google/common/collect/c2$a;->getCount()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_a

    :cond_1d
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result p0

    return p0
.end method

.method public static immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/c2$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;I)",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/Multisets$k;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multisets$k;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static intersection(Lcom/google/common/collect/c2;Lcom/google/common/collect/c2;)Lcom/google/common/collect/c2;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/c2<",
            "TE;>;",
            "Lcom/google/common/collect/c2<",
            "*>;)",
            "Lcom/google/common/collect/c2<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/Multisets$b;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multisets$b;-><init>(Lcom/google/common/collect/c2;Lcom/google/common/collect/c2;)V

    return-object v0
.end method

.method static j(Lcom/google/common/collect/c2;Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/c2<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/common/collect/c2;

    if-eqz v0, :cond_a

    check-cast p1, Lcom/google/common/collect/c2;

    invoke-interface {p1}, Lcom/google/common/collect/c2;->k()Ljava/util/Set;

    move-result-object p1

    :cond_a
    invoke-interface {p0}, Lcom/google/common/collect/c2;->k()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method static k(Lcom/google/common/collect/c2;Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/c2<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Lcom/google/common/collect/c2;

    if-eqz v0, :cond_d

    check-cast p1, Lcom/google/common/collect/c2;

    invoke-interface {p1}, Lcom/google/common/collect/c2;->k()Ljava/util/Set;

    move-result-object p1

    :cond_d
    invoke-interface {p0}, Lcom/google/common/collect/c2;->k()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method private static l(Lcom/google/common/collect/c2;Lcom/google/common/collect/c2;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/c2<",
            "TE;>;",
            "Lcom/google/common/collect/c2<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Lcom/google/common/collect/c2;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/c2$a;

    invoke-interface {v2}, Lcom/google/common/collect/c2$a;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/google/common/collect/c2;->K(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :goto_29
    const/4 v1, 0x1

    goto :goto_f

    :cond_2b
    invoke-interface {v2}, Lcom/google/common/collect/c2$a;->getCount()I

    move-result v5

    if-ge v3, v5, :cond_f

    invoke-interface {v2}, Lcom/google/common/collect/c2$a;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1, v3}, Lcom/google/common/collect/c2;->m(Ljava/lang/Object;I)I

    goto :goto_29

    :cond_39
    return v1
.end method

.method static m(Lcom/google/common/collect/c2;Ljava/lang/Object;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/c2<",
            "TE;>;TE;I)I"
        }
    .end annotation

    const-string v0, "count"

    invoke-static {p2, v0}, Lcom/google/common/collect/z;->b(ILjava/lang/String;)I

    invoke-interface {p0, p1}, Lcom/google/common/collect/c2;->K(Ljava/lang/Object;)I

    move-result v0

    sub-int/2addr p2, v0

    if-lez p2, :cond_10

    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/c2;->u(Ljava/lang/Object;I)I

    goto :goto_16

    :cond_10
    if-gez p2, :cond_16

    neg-int p2, p2

    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/c2;->s(Ljava/lang/Object;I)I

    :cond_16
    :goto_16
    return v0
.end method

.method static n(Lcom/google/common/collect/c2;Ljava/lang/Object;II)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/c2<",
            "TE;>;TE;II)Z"
        }
    .end annotation

    const-string v0, "oldCount"

    invoke-static {p2, v0}, Lcom/google/common/collect/z;->b(ILjava/lang/String;)I

    const-string v0, "newCount"

    invoke-static {p3, v0}, Lcom/google/common/collect/z;->b(ILjava/lang/String;)I

    invoke-interface {p0, p1}, Lcom/google/common/collect/c2;->K(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p2, :cond_15

    invoke-interface {p0, p1, p3}, Lcom/google/common/collect/c2;->m(Ljava/lang/Object;I)I

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public static removeOccurrences(Lcom/google/common/collect/c2;Lcom/google/common/collect/c2;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/c2<",
            "*>;",
            "Lcom/google/common/collect/c2<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Lcom/google/common/collect/c2;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/c2$a;

    invoke-interface {v2}, Lcom/google/common/collect/c2$a;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/google/common/collect/c2;->K(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v2}, Lcom/google/common/collect/c2$a;->getCount()I

    move-result v4

    const/4 v5, 0x1

    if-lt v3, v4, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :goto_2d
    const/4 v1, 0x1

    goto :goto_f

    :cond_2f
    if-lez v3, :cond_f

    invoke-interface {v2}, Lcom/google/common/collect/c2$a;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1, v3}, Lcom/google/common/collect/c2;->s(Ljava/lang/Object;I)I

    goto :goto_2d

    :cond_39
    return v1
.end method

.method public static removeOccurrences(Lcom/google/common/collect/c2;Ljava/lang/Iterable;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/c2<",
            "*>;",
            "Ljava/lang/Iterable<",
            "*>;)Z"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/common/collect/c2;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/google/common/collect/c2;

    invoke-static {p0, p1}, Lcom/google/common/collect/Multisets;->removeOccurrences(Lcom/google/common/collect/c2;Lcom/google/common/collect/c2;)Z

    move-result p0

    return p0

    :cond_b
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/google/common/collect/c2;->remove(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_16

    :cond_26
    return v0
.end method

.method public static retainOccurrences(Lcom/google/common/collect/c2;Lcom/google/common/collect/c2;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/c2<",
            "*>;",
            "Lcom/google/common/collect/c2<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/collect/Multisets;->l(Lcom/google/common/collect/c2;Lcom/google/common/collect/c2;)Z

    move-result p0

    return p0
.end method

.method public static sum(Lcom/google/common/collect/c2;Lcom/google/common/collect/c2;)Lcom/google/common/collect/c2;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/c2<",
            "+TE;>;",
            "Lcom/google/common/collect/c2<",
            "+TE;>;)",
            "Lcom/google/common/collect/c2<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/Multisets$c;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multisets$c;-><init>(Lcom/google/common/collect/c2;Lcom/google/common/collect/c2;)V

    return-object v0
.end method

.method public static union(Lcom/google/common/collect/c2;Lcom/google/common/collect/c2;)Lcom/google/common/collect/c2;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/c2<",
            "+TE;>;",
            "Lcom/google/common/collect/c2<",
            "+TE;>;)",
            "Lcom/google/common/collect/c2<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/Multisets$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multisets$a;-><init>(Lcom/google/common/collect/c2;Lcom/google/common/collect/c2;)V

    return-object v0
.end method

.method public static unmodifiableMultiset(Lcom/google/common/collect/ImmutableMultiset;)Lcom/google/common/collect/c2;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/ImmutableMultiset<",
            "TE;>;)",
            "Lcom/google/common/collect/c2<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/c2;

    return-object p0
.end method

.method public static unmodifiableMultiset(Lcom/google/common/collect/c2;)Lcom/google/common/collect/c2;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/c2<",
            "+TE;>;)",
            "Lcom/google/common/collect/c2<",
            "TE;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/collect/Multisets$m;

    if-nez v0, :cond_15

    instance-of v0, p0, Lcom/google/common/collect/ImmutableMultiset;

    if-eqz v0, :cond_9

    goto :goto_15

    :cond_9
    new-instance v0, Lcom/google/common/collect/Multisets$m;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/c2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multisets$m;-><init>(Lcom/google/common/collect/c2;)V

    return-object v0

    :cond_15
    :goto_15
    return-object p0
.end method

.method public static unmodifiableSortedMultiset(Lcom/google/common/collect/e3;)Lcom/google/common/collect/e3;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/e3<",
            "TE;>;)",
            "Lcom/google/common/collect/e3<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/q3;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/e3;

    invoke-direct {v0, p0}, Lcom/google/common/collect/q3;-><init>(Lcom/google/common/collect/e3;)V

    return-object v0
.end method

###### Class com.google.common.collect.Multisets.a (com.google.common.collect.Multisets$a)
.class Lcom/google/common/collect/Multisets$a;
.super Lcom/google/common/collect/Multisets$n;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multisets;->union(Lcom/google/common/collect/c2;Lcom/google/common/collect/c2;)Lcom/google/common/collect/c2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$n<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/google/common/collect/c2;

.field final synthetic d:Lcom/google/common/collect/c2;


# direct methods
.method constructor <init>(Lcom/google/common/collect/c2;Lcom/google/common/collect/c2;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/Multisets$a;->c:Lcom/google/common/collect/c2;

    iput-object p2, p0, Lcom/google/common/collect/Multisets$a;->d:Lcom/google/common/collect/c2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/common/collect/Multisets$n;-><init>(Lcom/google/common/collect/Multisets$a;)V

    return-void
.end method


# virtual methods
.method public K(Ljava/lang/Object;)I
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/Multisets$a;->c:Lcom/google/common/collect/c2;

    invoke-interface {v0, p1}, Lcom/google/common/collect/c2;->K(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/Multisets$a;->d:Lcom/google/common/collect/c2;

    invoke-interface {v1, p1}, Lcom/google/common/collect/c2;->K(Ljava/lang/Object;)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/Multisets$a;->c:Lcom/google/common/collect/c2;

    invoke-interface {v0, p1}, Lcom/google/common/collect/c2;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/common/collect/Multisets$a;->d:Lcom/google/common/collect/c2;

    invoke-interface {v0, p1}, Lcom/google/common/collect/c2;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method

.method e()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multisets$a;->c:Lcom/google/common/collect/c2;

    invoke-interface {v0}, Lcom/google/common/collect/c2;->k()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Multisets$a;->d:Lcom/google/common/collect/c2;

    invoke-interface {v1}, Lcom/google/common/collect/c2;->k()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->union(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$l;

    move-result-object v0

    return-object v0
.end method

.method h()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method i()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multisets$a;->c:Lcom/google/common/collect/c2;

    invoke-interface {v0}, Lcom/google/common/collect/c2;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Multisets$a;->d:Lcom/google/common/collect/c2;

    invoke-interface {v1}, Lcom/google/common/collect/c2;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Lcom/google/common/collect/Multisets$a$a;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/common/collect/Multisets$a$a;-><init>(Lcom/google/common/collect/Multisets$a;Ljava/util/Iterator;Ljava/util/Iterator;)V

    return-object v2
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/Multisets$a;->c:Lcom/google/common/collect/c2;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/common/collect/Multisets$a;->d:Lcom/google/common/collect/c2;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

###### Class com.google.common.collect.Multisets.a.C0249a (com.google.common.collect.Multisets$a$a)
.class Lcom/google/common/collect/Multisets$a$a;
.super Lcom/google/common/collect/AbstractIterator;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multisets$a;->i()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "Lcom/google/common/collect/c2$a<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Ljava/util/Iterator;

.field final synthetic d:Ljava/util/Iterator;

.field final synthetic e:Lcom/google/common/collect/Multisets$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multisets$a;Ljava/util/Iterator;Ljava/util/Iterator;)V
    .registers 4

    iput-object p1, p0, Lcom/google/common/collect/Multisets$a$a;->e:Lcom/google/common/collect/Multisets$a;

    iput-object p2, p0, Lcom/google/common/collect/Multisets$a$a;->c:Ljava/util/Iterator;

    iput-object p3, p0, Lcom/google/common/collect/Multisets$a$a;->d:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic b()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$a$a;->e()Lcom/google/common/collect/c2$a;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/google/common/collect/c2$a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multisets$a$a;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/common/collect/Multisets$a$a;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/c2$a;

    invoke-interface {v0}, Lcom/google/common/collect/c2$a;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/c2$a;->getCount()I

    move-result v0

    iget-object v2, p0, Lcom/google/common/collect/Multisets$a$a;->e:Lcom/google/common/collect/Multisets$a;

    iget-object v2, v2, Lcom/google/common/collect/Multisets$a;->d:Lcom/google/common/collect/c2;

    invoke-interface {v2, v1}, Lcom/google/common/collect/c2;->K(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/c2$a;

    move-result-object v0

    return-object v0

    :cond_29
    iget-object v0, p0, Lcom/google/common/collect/Multisets$a$a;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/google/common/collect/Multisets$a$a;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/c2$a;

    invoke-interface {v0}, Lcom/google/common/collect/c2$a;->c()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Multisets$a$a;->e:Lcom/google/common/collect/Multisets$a;

    iget-object v2, v2, Lcom/google/common/collect/Multisets$a;->c:Lcom/google/common/collect/c2;

    invoke-interface {v2, v1}, Lcom/google/common/collect/c2;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    invoke-interface {v0}, Lcom/google/common/collect/c2$a;->getCount()I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/c2$a;

    move-result-object v0

    return-object v0

    :cond_50
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/c2$a;

    return-object v0
.end method

###### Class com.google.common.collect.Multisets.b (com.google.common.collect.Multisets$b)
.class Lcom/google/common/collect/Multisets$b;
.super Lcom/google/common/collect/Multisets$n;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multisets;->intersection(Lcom/google/common/collect/c2;Lcom/google/common/collect/c2;)Lcom/google/common/collect/c2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$n<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/google/common/collect/c2;

.field final synthetic d:Lcom/google/common/collect/c2;


# direct methods
.method constructor <init>(Lcom/google/common/collect/c2;Lcom/google/common/collect/c2;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/Multisets$b;->c:Lcom/google/common/collect/c2;

    iput-object p2, p0, Lcom/google/common/collect/Multisets$b;->d:Lcom/google/common/collect/c2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/common/collect/Multisets$n;-><init>(Lcom/google/common/collect/Multisets$a;)V

    return-void
.end method


# virtual methods
.method public K(Ljava/lang/Object;)I
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/Multisets$b;->c:Lcom/google/common/collect/c2;

    invoke-interface {v0, p1}, Lcom/google/common/collect/c2;->K(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    goto :goto_14

    :cond_a
    iget-object v1, p0, Lcom/google/common/collect/Multisets$b;->d:Lcom/google/common/collect/c2;

    invoke-interface {v1, p1}, Lcom/google/common/collect/c2;->K(Ljava/lang/Object;)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_14
    return p1
.end method

.method e()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multisets$b;->c:Lcom/google/common/collect/c2;

    invoke-interface {v0}, Lcom/google/common/collect/c2;->k()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Multisets$b;->d:Lcom/google/common/collect/c2;

    invoke-interface {v1}, Lcom/google/common/collect/c2;->k()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->intersection(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$l;

    move-result-object v0

    return-object v0
.end method

.method h()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method i()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multisets$b;->c:Lcom/google/common/collect/c2;

    invoke-interface {v0}, Lcom/google/common/collect/c2;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/Multisets$b$a;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Multisets$b$a;-><init>(Lcom/google/common/collect/Multisets$b;Ljava/util/Iterator;)V

    return-object v1
.end method

###### Class com.google.common.collect.Multisets.b.a (com.google.common.collect.Multisets$b$a)
.class Lcom/google/common/collect/Multisets$b$a;
.super Lcom/google/common/collect/AbstractIterator;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multisets$b;->i()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "Lcom/google/common/collect/c2$a<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Ljava/util/Iterator;

.field final synthetic d:Lcom/google/common/collect/Multisets$b;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multisets$b;Ljava/util/Iterator;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/Multisets$b$a;->d:Lcom/google/common/collect/Multisets$b;

    iput-object p2, p0, Lcom/google/common/collect/Multisets$b$a;->c:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic b()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$b$a;->e()Lcom/google/common/collect/c2$a;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/google/common/collect/c2$a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Multisets$b$a;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/common/collect/Multisets$b$a;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/c2$a;

    invoke-interface {v0}, Lcom/google/common/collect/c2$a;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/c2$a;->getCount()I

    move-result v0

    iget-object v2, p0, Lcom/google/common/collect/Multisets$b$a;->d:Lcom/google/common/collect/Multisets$b;

    iget-object v2, v2, Lcom/google/common/collect/Multisets$b;->d:Lcom/google/common/collect/c2;

    invoke-interface {v2, v1}, Lcom/google/common/collect/c2;->K(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {v1, v0}, Lcom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/c2$a;

    move-result-object v0

    return-object v0

    :cond_2b
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/c2$a;

    return-object v0
.end method

###### Class com.google.common.collect.Multisets.c (com.google.common.collect.Multisets$c)
.class Lcom/google/common/collect/Multisets$c;
.super Lcom/google/common/collect/Multisets$n;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multisets;->sum(Lcom/google/common/collect/c2;Lcom/google/common/collect/c2;)Lcom/google/common/collect/c2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$n<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/google/common/collect/c2;

.field final synthetic d:Lcom/google/common/collect/c2;


# direct methods
.method constructor <init>(Lcom/google/common/collect/c2;Lcom/google/common/collect/c2;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/Multisets$c;->c:Lcom/google/common/collect/c2;

    iput-object p2, p0, Lcom/google/common/collect/Multisets$c;->d:Lcom/google/common/collect/c2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/common/collect/Multisets$n;-><init>(Lcom/google/common/collect/Multisets$a;)V

    return-void
.end method


# virtual methods
.method public K(Ljava/lang/Object;)I
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/Multisets$c;->c:Lcom/google/common/collect/c2;

    invoke-interface {v0, p1}, Lcom/google/common/collect/c2;->K(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/Multisets$c;->d:Lcom/google/common/collect/c2;

    invoke-interface {v1, p1}, Lcom/google/common/collect/c2;->K(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/Multisets$c;->c:Lcom/google/common/collect/c2;

    invoke-interface {v0, p1}, Lcom/google/common/collect/c2;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/common/collect/Multisets$c;->d:Lcom/google/common/collect/c2;

    invoke-interface {v0, p1}, Lcom/google/common/collect/c2;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method

.method e()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multisets$c;->c:Lcom/google/common/collect/c2;

    invoke-interface {v0}, Lcom/google/common/collect/c2;->k()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Multisets$c;->d:Lcom/google/common/collect/c2;

    invoke-interface {v1}, Lcom/google/common/collect/c2;->k()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->union(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$l;

    move-result-object v0

    return-object v0
.end method

.method h()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method i()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multisets$c;->c:Lcom/google/common/collect/c2;

    invoke-interface {v0}, Lcom/google/common/collect/c2;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Multisets$c;->d:Lcom/google/common/collect/c2;

    invoke-interface {v1}, Lcom/google/common/collect/c2;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Lcom/google/common/collect/Multisets$c$a;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/common/collect/Multisets$c$a;-><init>(Lcom/google/common/collect/Multisets$c;Ljava/util/Iterator;Ljava/util/Iterator;)V

    return-object v2
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/Multisets$c;->c:Lcom/google/common/collect/c2;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/common/collect/Multisets$c;->d:Lcom/google/common/collect/c2;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public size()I
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/Multisets$c;->c:Lcom/google/common/collect/c2;

    invoke-interface {v0}, Lcom/google/common/collect/c2;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/Multisets$c;->d:Lcom/google/common/collect/c2;

    invoke-interface {v1}, Lcom/google/common/collect/c2;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/math/IntMath;->saturatedAdd(II)I

    move-result v0

    return v0
.end method

###### Class com.google.common.collect.Multisets.c.a (com.google.common.collect.Multisets$c$a)
.class Lcom/google/common/collect/Multisets$c$a;
.super Lcom/google/common/collect/AbstractIterator;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multisets$c;->i()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "Lcom/google/common/collect/c2$a<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Ljava/util/Iterator;

.field final synthetic d:Ljava/util/Iterator;

.field final synthetic e:Lcom/google/common/collect/Multisets$c;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multisets$c;Ljava/util/Iterator;Ljava/util/Iterator;)V
    .registers 4

    iput-object p1, p0, Lcom/google/common/collect/Multisets$c$a;->e:Lcom/google/common/collect/Multisets$c;

    iput-object p2, p0, Lcom/google/common/collect/Multisets$c$a;->c:Ljava/util/Iterator;

    iput-object p3, p0, Lcom/google/common/collect/Multisets$c$a;->d:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic b()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$c$a;->e()Lcom/google/common/collect/c2$a;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/google/common/collect/c2$a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multisets$c$a;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/common/collect/Multisets$c$a;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/c2$a;

    invoke-interface {v0}, Lcom/google/common/collect/c2$a;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/c2$a;->getCount()I

    move-result v0

    iget-object v2, p0, Lcom/google/common/collect/Multisets$c$a;->e:Lcom/google/common/collect/Multisets$c;

    iget-object v2, v2, Lcom/google/common/collect/Multisets$c;->d:Lcom/google/common/collect/c2;

    invoke-interface {v2, v1}, Lcom/google/common/collect/c2;->K(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Lcom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/c2$a;

    move-result-object v0

    return-object v0

    :cond_26
    iget-object v0, p0, Lcom/google/common/collect/Multisets$c$a;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/google/common/collect/Multisets$c$a;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/c2$a;

    invoke-interface {v0}, Lcom/google/common/collect/c2$a;->c()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Multisets$c$a;->e:Lcom/google/common/collect/Multisets$c;

    iget-object v2, v2, Lcom/google/common/collect/Multisets$c;->c:Lcom/google/common/collect/c2;

    invoke-interface {v2, v1}, Lcom/google/common/collect/c2;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    invoke-interface {v0}, Lcom/google/common/collect/c2$a;->getCount()I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/c2$a;

    move-result-object v0

    return-object v0

    :cond_4d
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/c2$a;

    return-object v0
.end method

###### Class com.google.common.collect.Multisets.d (com.google.common.collect.Multisets$d)
.class Lcom/google/common/collect/Multisets$d;
.super Lcom/google/common/collect/Multisets$n;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multisets;->difference(Lcom/google/common/collect/c2;Lcom/google/common/collect/c2;)Lcom/google/common/collect/c2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$n<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/google/common/collect/c2;

.field final synthetic d:Lcom/google/common/collect/c2;


# direct methods
.method constructor <init>(Lcom/google/common/collect/c2;Lcom/google/common/collect/c2;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/Multisets$d;->c:Lcom/google/common/collect/c2;

    iput-object p2, p0, Lcom/google/common/collect/Multisets$d;->d:Lcom/google/common/collect/c2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/common/collect/Multisets$n;-><init>(Lcom/google/common/collect/Multisets$a;)V

    return-void
.end method


# virtual methods
.method public K(Ljava/lang/Object;)I
    .registers 5

    iget-object v0, p0, Lcom/google/common/collect/Multisets$d;->c:Lcom/google/common/collect/c2;

    invoke-interface {v0, p1}, Lcom/google/common/collect/c2;->K(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    goto :goto_15

    :cond_a
    iget-object v2, p0, Lcom/google/common/collect/Multisets$d;->d:Lcom/google/common/collect/c2;

    invoke-interface {v2, p1}, Lcom/google/common/collect/c2;->K(Ljava/lang/Object;)I

    move-result p1

    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_15
    return v1
.end method

.method public clear()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method g()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$d;->i()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->size(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method

.method h()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multisets$d;->c:Lcom/google/common/collect/c2;

    invoke-interface {v0}, Lcom/google/common/collect/c2;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/Multisets$d$a;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Multisets$d$a;-><init>(Lcom/google/common/collect/Multisets$d;Ljava/util/Iterator;)V

    return-object v1
.end method

.method i()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multisets$d;->c:Lcom/google/common/collect/c2;

    invoke-interface {v0}, Lcom/google/common/collect/c2;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/Multisets$d$b;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Multisets$d$b;-><init>(Lcom/google/common/collect/Multisets$d;Ljava/util/Iterator;)V

    return-object v1
.end method

###### Class com.google.common.collect.Multisets.d.a (com.google.common.collect.Multisets$d$a)
.class Lcom/google/common/collect/Multisets$d$a;
.super Lcom/google/common/collect/AbstractIterator;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multisets$d;->h()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Ljava/util/Iterator;

.field final synthetic d:Lcom/google/common/collect/Multisets$d;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multisets$d;Ljava/util/Iterator;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/Multisets$d$a;->d:Lcom/google/common/collect/Multisets$d;

    iput-object p2, p0, Lcom/google/common/collect/Multisets$d$a;->c:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Multisets$d$a;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/common/collect/Multisets$d$a;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/c2$a;

    invoke-interface {v0}, Lcom/google/common/collect/c2$a;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/c2$a;->getCount()I

    move-result v0

    iget-object v2, p0, Lcom/google/common/collect/Multisets$d$a;->d:Lcom/google/common/collect/Multisets$d;

    iget-object v2, v2, Lcom/google/common/collect/Multisets$d;->d:Lcom/google/common/collect/c2;

    invoke-interface {v2, v1}, Lcom/google/common/collect/c2;->K(Ljava/lang/Object;)I

    move-result v2

    if-le v0, v2, :cond_0

    return-object v1

    :cond_23
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.collect.Multisets.d.b (com.google.common.collect.Multisets$d$b)
.class Lcom/google/common/collect/Multisets$d$b;
.super Lcom/google/common/collect/AbstractIterator;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multisets$d;->i()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "Lcom/google/common/collect/c2$a<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Ljava/util/Iterator;

.field final synthetic d:Lcom/google/common/collect/Multisets$d;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multisets$d;Ljava/util/Iterator;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/Multisets$d$b;->d:Lcom/google/common/collect/Multisets$d;

    iput-object p2, p0, Lcom/google/common/collect/Multisets$d$b;->c:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic b()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$d$b;->e()Lcom/google/common/collect/c2$a;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/google/common/collect/c2$a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Multisets$d$b;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/common/collect/Multisets$d$b;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/c2$a;

    invoke-interface {v0}, Lcom/google/common/collect/c2$a;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/c2$a;->getCount()I

    move-result v0

    iget-object v2, p0, Lcom/google/common/collect/Multisets$d$b;->d:Lcom/google/common/collect/Multisets$d;

    iget-object v2, v2, Lcom/google/common/collect/Multisets$d;->d:Lcom/google/common/collect/c2;

    invoke-interface {v2, v1}, Lcom/google/common/collect/c2;->K(Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v0, v2

    if-lez v0, :cond_0

    invoke-static {v1, v0}, Lcom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/c2$a;

    move-result-object v0

    return-object v0

    :cond_28
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/c2$a;

    return-object v0
.end method

###### Class com.google.common.collect.Multisets.e (com.google.common.collect.Multisets$e)
.class Lcom/google/common/collect/Multisets$e;
.super Lcom/google/common/collect/m3;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multisets;->e(Ljava/util/Iterator;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/m3<",
        "Lcom/google/common/collect/c2$a<",
        "TE;>;TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/common/collect/m3;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/google/common/collect/c2$a;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multisets$e;->b(Lcom/google/common/collect/c2$a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method b(Lcom/google/common/collect/c2$a;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/common/collect/c2$a;->c()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.common.collect.Multisets.f (com.google.common.collect.Multisets$f)
.class abstract Lcom/google/common/collect/Multisets$f;
.super Ljava/lang/Object;
.source "Multisets.java"

# interfaces
.implements Lcom/google/common/collect/c2$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/c2$a<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/google/common/collect/c2$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    check-cast p1, Lcom/google/common/collect/c2$a;

    invoke-interface {p0}, Lcom/google/common/collect/c2$a;->getCount()I

    move-result v0

    invoke-interface {p1}, Lcom/google/common/collect/c2$a;->getCount()I

    move-result v2

    if-ne v0, v2, :cond_20

    invoke-interface {p0}, Lcom/google/common/collect/c2$a;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/c2$a;->c()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    const/4 v1, 0x1

    :cond_20
    return v1
.end method

.method public hashCode()I
    .registers 3

    invoke-interface {p0}, Lcom/google/common/collect/c2$a;->c()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_c
    invoke-interface {p0}, Lcom/google/common/collect/c2$a;->getCount()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    invoke-interface {p0}, Lcom/google/common/collect/c2$a;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/common/collect/c2$a;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    goto :goto_2a

    :cond_10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xe

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " x "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2a
    return-object v0
.end method

###### Class com.google.common.collect.Multisets.g (com.google.common.collect.Multisets$g)
.class final Lcom/google/common/collect/Multisets$g;
.super Ljava/lang/Object;
.source "Multisets.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/common/collect/c2$a<",
        "*>;>;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/common/collect/Multisets$g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/collect/Multisets$g;

    invoke-direct {v0}, Lcom/google/common/collect/Multisets$g;-><init>()V

    sput-object v0, Lcom/google/common/collect/Multisets$g;->a:Lcom/google/common/collect/Multisets$g;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/c2$a;Lcom/google/common/collect/c2$a;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/c2$a<",
            "*>;",
            "Lcom/google/common/collect/c2$a<",
            "*>;)I"
        }
    .end annotation

    invoke-interface {p2}, Lcom/google/common/collect/c2$a;->getCount()I

    move-result p2

    invoke-interface {p1}, Lcom/google/common/collect/c2$a;->getCount()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/google/common/collect/c2$a;

    check-cast p2, Lcom/google/common/collect/c2$a;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Multisets$g;->a(Lcom/google/common/collect/c2$a;Lcom/google/common/collect/c2$a;)I

    move-result p1

    return p1
.end method

###### Class com.google.common.collect.Multisets.h (com.google.common.collect.Multisets$h)
.class abstract Lcom/google/common/collect/Multisets$h;
.super Lcom/google/common/collect/Sets$j;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Sets$j<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/collect/Sets$j;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$h;->i()Lcom/google/common/collect/c2;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$h;->i()Lcom/google/common/collect/c2;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/c2;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$h;->i()Lcom/google/common/collect/c2;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/c2;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method abstract i()Lcom/google/common/collect/c2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/c2<",
            "TE;>;"
        }
    .end annotation
.end method

.method public isEmpty()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$h;->i()Lcom/google/common/collect/c2;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$h;->i()Lcom/google/common/collect/c2;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/c2;->s(Ljava/lang/Object;I)I

    move-result p1

    if-lez p1, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return p1
.end method

.method public size()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$h;->i()Lcom/google/common/collect/c2;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/c2;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

###### Class com.google.common.collect.Multisets.i (com.google.common.collect.Multisets$i)
.class abstract Lcom/google/common/collect/Multisets$i;
.super Lcom/google/common/collect/Sets$j;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Sets$j<",
        "Lcom/google/common/collect/c2$a<",
        "TE;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/collect/Sets$j;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$i;->i()Lcom/google/common/collect/c2;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/google/common/collect/c2$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    check-cast p1, Lcom/google/common/collect/c2$a;

    invoke-interface {p1}, Lcom/google/common/collect/c2$a;->getCount()I

    move-result v0

    if-gtz v0, :cond_e

    return v1

    :cond_e
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$i;->i()Lcom/google/common/collect/c2;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/c2$a;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/common/collect/c2;->K(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1}, Lcom/google/common/collect/c2$a;->getCount()I

    move-result p1

    if-ne v0, p1, :cond_21

    const/4 v1, 0x1

    :cond_21
    return v1
.end method

.method abstract i()Lcom/google/common/collect/c2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/c2<",
            "TE;>;"
        }
    .end annotation
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/google/common/collect/c2$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    check-cast p1, Lcom/google/common/collect/c2$a;

    invoke-interface {p1}, Lcom/google/common/collect/c2$a;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/c2$a;->getCount()I

    move-result p1

    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$i;->i()Lcom/google/common/collect/c2;

    move-result-object v2

    invoke-interface {v2, v0, p1, v1}, Lcom/google/common/collect/c2;->I(Ljava/lang/Object;II)Z

    move-result p1

    return p1

    :cond_1a
    return v1
.end method

###### Class com.google.common.collect.Multisets.j (com.google.common.collect.Multisets$j)
.class final Lcom/google/common/collect/Multisets$j;
.super Lcom/google/common/collect/Multisets$n;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Multisets$n<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final c:Lcom/google/common/collect/c2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/c2<",
            "TE;>;"
        }
    .end annotation
.end field

.field final d:Lcom/google/common/base/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/k<",
            "-TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/c2;Lcom/google/common/base/k;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/c2<",
            "TE;>;",
            "Lcom/google/common/base/k<",
            "-TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/collect/Multisets$n;-><init>(Lcom/google/common/collect/Multisets$a;)V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/c2;

    iput-object p1, p0, Lcom/google/common/collect/Multisets$j;->c:Lcom/google/common/collect/c2;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/k;

    iput-object p1, p0, Lcom/google/common/collect/Multisets$j;->d:Lcom/google/common/base/k;

    return-void
.end method


# virtual methods
.method public K(Ljava/lang/Object;)I
    .registers 5

    iget-object v0, p0, Lcom/google/common/collect/Multisets$j;->c:Lcom/google/common/collect/c2;

    invoke-interface {v0, p1}, Lcom/google/common/collect/c2;->K(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_14

    iget-object v2, p0, Lcom/google/common/collect/Multisets$j;->d:Lcom/google/common/base/k;

    invoke-interface {v2, p1}, Lcom/google/common/base/k;->apply(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0

    :cond_14
    return v1
.end method

.method e()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multisets$j;->c:Lcom/google/common/collect/c2;

    invoke-interface {v0}, Lcom/google/common/collect/c2;->k()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Multisets$j;->d:Lcom/google/common/base/k;

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->filter(Ljava/util/Set;Lcom/google/common/base/k;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method f()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multisets$j;->c:Lcom/google/common/collect/c2;

    invoke-interface {v0}, Lcom/google/common/collect/c2;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/Multisets$j$a;

    invoke-direct {v1, p0}, Lcom/google/common/collect/Multisets$j$a;-><init>(Lcom/google/common/collect/Multisets$j;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->filter(Ljava/util/Set;Lcom/google/common/base/k;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method h()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method i()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$j;->j()Lcom/google/common/collect/o3;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/google/common/collect/o3;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/o3<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multisets$j;->c:Lcom/google/common/collect/c2;

    invoke-interface {v0}, Lcom/google/common/collect/c2;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Multisets$j;->d:Lcom/google/common/base/k;

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->filter(Ljava/util/Iterator;Lcom/google/common/base/k;)Lcom/google/common/collect/o3;

    move-result-object v0

    return-object v0
.end method

.method public s(Ljava/lang/Object;I)I
    .registers 4

    const-string v0, "occurrences"

    invoke-static {p2, v0}, Lcom/google/common/collect/z;->b(ILjava/lang/String;)I

    if-nez p2, :cond_c

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multisets$j;->K(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_c
    invoke-virtual {p0, p1}, Lcom/google/common/collect/k;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/common/collect/Multisets$j;->c:Lcom/google/common/collect/c2;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/c2;->s(Ljava/lang/Object;I)I

    move-result p1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    return p1
.end method

.method public u(Ljava/lang/Object;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multisets$j;->d:Lcom/google/common/base/k;

    invoke-interface {v0, p1}, Lcom/google/common/base/k;->apply(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/Multisets$j;->d:Lcom/google/common/base/k;

    const-string v2, "Element %s does not match predicate %s"

    invoke-static {v0, v2, p1, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/Multisets$j;->c:Lcom/google/common/collect/c2;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/c2;->u(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

###### Class com.google.common.collect.Multisets.j.a (com.google.common.collect.Multisets$j$a)
.class Lcom/google/common/collect/Multisets$j$a;
.super Ljava/lang/Object;
.source "Multisets.java"

# interfaces
.implements Lcom/google/common/base/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multisets$j;->f()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/k<",
        "Lcom/google/common/collect/c2$a<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/Multisets$j;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multisets$j;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/Multisets$j$a;->a:Lcom/google/common/collect/Multisets$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/c2$a;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multisets$j$a;->a:Lcom/google/common/collect/Multisets$j;

    iget-object v0, v0, Lcom/google/common/collect/Multisets$j;->d:Lcom/google/common/base/k;

    invoke-interface {p1}, Lcom/google/common/collect/c2$a;->c()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/common/base/k;->apply(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lcom/google/common/collect/c2$a;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multisets$j$a;->a(Lcom/google/common/collect/c2$a;)Z

    move-result p1

    return p1
.end method

###### Class com.google.common.collect.Multisets.k (com.google.common.collect.Multisets$k)
.class Lcom/google/common/collect/Multisets$k;
.super Lcom/google/common/collect/Multisets$f;
.source "Multisets.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Multisets$f<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private final b:I


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$f;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/Multisets$k;->a:Ljava/lang/Object;

    iput p2, p0, Lcom/google/common/collect/Multisets$k;->b:I

    const-string p1, "count"

    invoke-static {p2, p1}, Lcom/google/common/collect/z;->b(ILjava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multisets$k;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final getCount()I
    .registers 2

    iget v0, p0, Lcom/google/common/collect/Multisets$k;->b:I

    return v0
.end method

###### Class com.google.common.collect.Multisets.l (com.google.common.collect.Multisets$l)
.class final Lcom/google/common/collect/Multisets$l;
.super Ljava/lang/Object;
.source "Multisets.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/collect/c2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/c2<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private c:Lcom/google/common/collect/c2$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/c2$a<",
            "TE;>;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method constructor <init>(Lcom/google/common/collect/c2;Ljava/util/Iterator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/c2<",
            "TE;>;",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/Multisets$l;->a:Lcom/google/common/collect/c2;

    iput-object p2, p0, Lcom/google/common/collect/Multisets$l;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget v0, p0, Lcom/google/common/collect/Multisets$l;->d:I

    if-gtz v0, :cond_f

    iget-object v0, p0, Lcom/google/common/collect/Multisets$l;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$l;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    iget v0, p0, Lcom/google/common/collect/Multisets$l;->d:I

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/google/common/collect/Multisets$l;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/c2$a;

    iput-object v0, p0, Lcom/google/common/collect/Multisets$l;->c:Lcom/google/common/collect/c2$a;

    invoke-interface {v0}, Lcom/google/common/collect/c2$a;->getCount()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/Multisets$l;->d:I

    iput v0, p0, Lcom/google/common/collect/Multisets$l;->e:I

    :cond_1c
    iget v0, p0, Lcom/google/common/collect/Multisets$l;->d:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/Multisets$l;->d:I

    iput-boolean v1, p0, Lcom/google/common/collect/Multisets$l;->f:Z

    iget-object v0, p0, Lcom/google/common/collect/Multisets$l;->c:Lcom/google/common/collect/c2$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/c2$a;

    invoke-interface {v0}, Lcom/google/common/collect/c2$a;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_30
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 4

    iget-boolean v0, p0, Lcom/google/common/collect/Multisets$l;->f:Z

    invoke-static {v0}, Lcom/google/common/collect/z;->e(Z)V

    iget v0, p0, Lcom/google/common/collect/Multisets$l;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/google/common/collect/Multisets$l;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_20

    :cond_10
    iget-object v0, p0, Lcom/google/common/collect/Multisets$l;->a:Lcom/google/common/collect/c2;

    iget-object v2, p0, Lcom/google/common/collect/Multisets$l;->c:Lcom/google/common/collect/c2$a;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Lcom/google/common/collect/c2$a;

    invoke-interface {v2}, Lcom/google/common/collect/c2$a;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/common/collect/c2;->remove(Ljava/lang/Object;)Z

    :goto_20
    iget v0, p0, Lcom/google/common/collect/Multisets$l;->e:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/Multisets$l;->e:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/Multisets$l;->f:Z

    return-void
.end method

###### Class com.google.common.collect.Multisets.m (com.google.common.collect.Multisets$m)
.class Lcom/google/common/collect/Multisets$m;
.super Lcom/google/common/collect/b1;
.source "Multisets.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/b1<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final a:Lcom/google/common/collect/c2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/c2<",
            "+TE;>;"
        }
    .end annotation
.end field

.field transient b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation
.end field

.field transient c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/c2;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/c2<",
            "+TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/b1;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/Multisets$m;->a:Lcom/google/common/collect/c2;

    return-void
.end method


# virtual methods
.method protected bridge synthetic B()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$m;->P()Lcom/google/common/collect/c2;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic C()Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$m;->P()Lcom/google/common/collect/c2;

    move-result-object v0

    return-object v0
.end method

.method public I(Ljava/lang/Object;II)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected P()Lcom/google/common/collect/c2;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/c2<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multisets$m;->a:Lcom/google/common/collect/c2;

    return-object v0
.end method

.method Q()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multisets$m;->a:Lcom/google/common/collect/c2;

    invoke-interface {v0}, Lcom/google/common/collect/c2;->k()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public clear()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multisets$m;->c:Ljava/util/Set;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/common/collect/Multisets$m;->a:Lcom/google/common/collect/c2;

    invoke-interface {v0}, Lcom/google/common/collect/c2;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Multisets$m;->c:Ljava/util/Set;

    :cond_10
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multisets$m;->a:Lcom/google/common/collect/c2;

    invoke-interface {v0}, Lcom/google/common/collect/c2;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->unmodifiableIterator(Ljava/util/Iterator;)Lcom/google/common/collect/o3;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multisets$m;->b:Ljava/util/Set;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$m;->Q()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Multisets$m;->b:Ljava/util/Set;

    :cond_a
    return-object v0
.end method

.method public m(Ljava/lang/Object;I)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public s(Ljava/lang/Object;I)I
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public u(Ljava/lang/Object;I)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

###### Class com.google.common.collect.Multisets.n (com.google.common.collect.Multisets$n)
.class abstract Lcom/google/common/collect/Multisets$n;
.super Lcom/google/common/collect/k;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/k<",
        "TE;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/collect/k;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/Multisets$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$n;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/k;->k()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method g()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/k;->k()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/collect/Multisets;->h(Lcom/google/common/collect/c2;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    invoke-static {p0}, Lcom/google/common/collect/Multisets;->i(Lcom/google/common/collect/c2;)I

    move-result v0

    return v0
.end method
