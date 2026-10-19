###### Class com.google.common.collect.Multimaps (com.google.common.collect.Multimaps)
.class public final Lcom/google/common/collect/Multimaps;
.super Ljava/lang/Object;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Multimaps$a;,
        Lcom/google/common/collect/Multimaps$f;,
        Lcom/google/common/collect/Multimaps$h;,
        Lcom/google/common/collect/Multimaps$i;,
        Lcom/google/common/collect/Multimaps$g;,
        Lcom/google/common/collect/Multimaps$m;,
        Lcom/google/common/collect/Multimaps$l;,
        Lcom/google/common/collect/Multimaps$j;,
        Lcom/google/common/collect/Multimaps$k;,
        Lcom/google/common/collect/Multimaps$e;,
        Lcom/google/common/collect/Multimaps$d;,
        Lcom/google/common/collect/Multimaps$b;,
        Lcom/google/common/collect/Multimaps$c;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 1

    invoke-static {p0}, Lcom/google/common/collect/Multimaps;->g(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static asMap(Lcom/google/common/collect/b2;)Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/b2<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/common/collect/b2;->e()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static asMap(Lcom/google/common/collect/g3;)Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/g3<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/SortedSet<",
            "TV;>;>;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/common/collect/g3;->e()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static asMap(Lcom/google/common/collect/z1;)Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/z1<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/common/collect/z1;->e()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static asMap(Lcom/google/common/collect/z2;)Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/z2<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Set<",
            "TV;>;>;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/common/collect/z2;->e()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 1

    invoke-static {p0}, Lcom/google/common/collect/Multimaps;->f(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method static c(Lcom/google/common/collect/b2;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/b2<",
            "**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Lcom/google/common/collect/b2;

    if-eqz v0, :cond_17

    check-cast p1, Lcom/google/common/collect/b2;

    invoke-interface {p0}, Lcom/google/common/collect/b2;->e()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/common/collect/b2;->e()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method private static d(Lcom/google/common/collect/s0;Lcom/google/common/base/k;)Lcom/google/common/collect/b2;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/s0<",
            "TK;TV;>;",
            "Lcom/google/common/base/k<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lcom/google/common/collect/b2<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/common/collect/s0;->y()Lcom/google/common/base/k;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/base/Predicates;->and(Lcom/google/common/base/k;Lcom/google/common/base/k;)Lcom/google/common/base/k;

    move-result-object p1

    new-instance v0, Lcom/google/common/collect/n0;

    invoke-interface {p0}, Lcom/google/common/collect/s0;->i()Lcom/google/common/collect/b2;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/n0;-><init>(Lcom/google/common/collect/b2;Lcom/google/common/base/k;)V

    return-object v0
.end method

.method private static e(Lcom/google/common/collect/t0;Lcom/google/common/base/k;)Lcom/google/common/collect/z2;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/t0<",
            "TK;TV;>;",
            "Lcom/google/common/base/k<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lcom/google/common/collect/z2<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/common/collect/s0;->y()Lcom/google/common/base/k;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/base/Predicates;->and(Lcom/google/common/base/k;Lcom/google/common/base/k;)Lcom/google/common/base/k;

    move-result-object p1

    new-instance v0, Lcom/google/common/collect/o0;

    invoke-interface {p0}, Lcom/google/common/collect/t0;->i()Lcom/google/common/collect/z2;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/o0;-><init>(Lcom/google/common/collect/z2;Lcom/google/common/base/k;)V

    return-object v0
.end method

.method private static f(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Lcom/google/common/collect/Maps;->I(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_b
    new-instance v0, Lcom/google/common/collect/Maps$j0;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$j0;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static filterEntries(Lcom/google/common/collect/b2;Lcom/google/common/base/k;)Lcom/google/common/collect/b2;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/b2<",
            "TK;TV;>;",
            "Lcom/google/common/base/k<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lcom/google/common/collect/b2<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p0, Lcom/google/common/collect/z2;

    if-eqz v0, :cond_e

    check-cast p0, Lcom/google/common/collect/z2;

    invoke-static {p0, p1}, Lcom/google/common/collect/Multimaps;->filterEntries(Lcom/google/common/collect/z2;Lcom/google/common/base/k;)Lcom/google/common/collect/z2;

    move-result-object p0

    return-object p0

    :cond_e
    instance-of v0, p0, Lcom/google/common/collect/s0;

    if-eqz v0, :cond_19

    check-cast p0, Lcom/google/common/collect/s0;

    invoke-static {p0, p1}, Lcom/google/common/collect/Multimaps;->d(Lcom/google/common/collect/s0;Lcom/google/common/base/k;)Lcom/google/common/collect/b2;

    move-result-object p0

    goto :goto_25

    :cond_19
    new-instance v0, Lcom/google/common/collect/n0;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/b2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/n0;-><init>(Lcom/google/common/collect/b2;Lcom/google/common/base/k;)V

    move-object p0, v0

    :goto_25
    return-object p0
.end method

.method public static filterEntries(Lcom/google/common/collect/z2;Lcom/google/common/base/k;)Lcom/google/common/collect/z2;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/z2<",
            "TK;TV;>;",
            "Lcom/google/common/base/k<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lcom/google/common/collect/z2<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p0, Lcom/google/common/collect/t0;

    if-eqz v0, :cond_e

    check-cast p0, Lcom/google/common/collect/t0;

    invoke-static {p0, p1}, Lcom/google/common/collect/Multimaps;->e(Lcom/google/common/collect/t0;Lcom/google/common/base/k;)Lcom/google/common/collect/z2;

    move-result-object p0

    goto :goto_1a

    :cond_e
    new-instance v0, Lcom/google/common/collect/o0;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/z2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/o0;-><init>(Lcom/google/common/collect/z2;Lcom/google/common/base/k;)V

    move-object p0, v0

    :goto_1a
    return-object p0
.end method

.method public static filterKeys(Lcom/google/common/collect/b2;Lcom/google/common/base/k;)Lcom/google/common/collect/b2;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/b2<",
            "TK;TV;>;",
            "Lcom/google/common/base/k<",
            "-TK;>;)",
            "Lcom/google/common/collect/b2<",
            "TK;TV;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/collect/z2;

    if-eqz v0, :cond_b

    check-cast p0, Lcom/google/common/collect/z2;

    invoke-static {p0, p1}, Lcom/google/common/collect/Multimaps;->filterKeys(Lcom/google/common/collect/z2;Lcom/google/common/base/k;)Lcom/google/common/collect/z2;

    move-result-object p0

    return-object p0

    :cond_b
    instance-of v0, p0, Lcom/google/common/collect/z1;

    if-eqz v0, :cond_16

    check-cast p0, Lcom/google/common/collect/z1;

    invoke-static {p0, p1}, Lcom/google/common/collect/Multimaps;->filterKeys(Lcom/google/common/collect/z1;Lcom/google/common/base/k;)Lcom/google/common/collect/z1;

    move-result-object p0

    return-object p0

    :cond_16
    instance-of v0, p0, Lcom/google/common/collect/q0;

    if-eqz v0, :cond_2a

    check-cast p0, Lcom/google/common/collect/q0;

    new-instance v0, Lcom/google/common/collect/q0;

    iget-object v1, p0, Lcom/google/common/collect/q0;->d:Lcom/google/common/collect/b2;

    iget-object p0, p0, Lcom/google/common/collect/q0;->e:Lcom/google/common/base/k;

    invoke-static {p0, p1}, Lcom/google/common/base/Predicates;->and(Lcom/google/common/base/k;Lcom/google/common/base/k;)Lcom/google/common/base/k;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/q0;-><init>(Lcom/google/common/collect/b2;Lcom/google/common/base/k;)V

    return-object v0

    :cond_2a
    instance-of v0, p0, Lcom/google/common/collect/s0;

    if-eqz v0, :cond_39

    check-cast p0, Lcom/google/common/collect/s0;

    invoke-static {p1}, Lcom/google/common/collect/Maps;->v(Lcom/google/common/base/k;)Lcom/google/common/base/k;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/Multimaps;->d(Lcom/google/common/collect/s0;Lcom/google/common/base/k;)Lcom/google/common/collect/b2;

    move-result-object p0

    return-object p0

    :cond_39
    new-instance v0, Lcom/google/common/collect/q0;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/q0;-><init>(Lcom/google/common/collect/b2;Lcom/google/common/base/k;)V

    return-object v0
.end method

.method public static filterKeys(Lcom/google/common/collect/z1;Lcom/google/common/base/k;)Lcom/google/common/collect/z1;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/z1<",
            "TK;TV;>;",
            "Lcom/google/common/base/k<",
            "-TK;>;)",
            "Lcom/google/common/collect/z1<",
            "TK;TV;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/collect/p0;

    if-eqz v0, :cond_16

    check-cast p0, Lcom/google/common/collect/p0;

    new-instance v0, Lcom/google/common/collect/p0;

    invoke-virtual {p0}, Lcom/google/common/collect/p0;->m()Lcom/google/common/collect/z1;

    move-result-object v1

    iget-object p0, p0, Lcom/google/common/collect/q0;->e:Lcom/google/common/base/k;

    invoke-static {p0, p1}, Lcom/google/common/base/Predicates;->and(Lcom/google/common/base/k;Lcom/google/common/base/k;)Lcom/google/common/base/k;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/p0;-><init>(Lcom/google/common/collect/z1;Lcom/google/common/base/k;)V

    return-object v0

    :cond_16
    new-instance v0, Lcom/google/common/collect/p0;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/p0;-><init>(Lcom/google/common/collect/z1;Lcom/google/common/base/k;)V

    return-object v0
.end method

.method public static filterKeys(Lcom/google/common/collect/z2;Lcom/google/common/base/k;)Lcom/google/common/collect/z2;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/z2<",
            "TK;TV;>;",
            "Lcom/google/common/base/k<",
            "-TK;>;)",
            "Lcom/google/common/collect/z2<",
            "TK;TV;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/collect/r0;

    if-eqz v0, :cond_16

    check-cast p0, Lcom/google/common/collect/r0;

    new-instance v0, Lcom/google/common/collect/r0;

    invoke-virtual {p0}, Lcom/google/common/collect/r0;->i()Lcom/google/common/collect/z2;

    move-result-object v1

    iget-object p0, p0, Lcom/google/common/collect/q0;->e:Lcom/google/common/base/k;

    invoke-static {p0, p1}, Lcom/google/common/base/Predicates;->and(Lcom/google/common/base/k;Lcom/google/common/base/k;)Lcom/google/common/base/k;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/r0;-><init>(Lcom/google/common/collect/z2;Lcom/google/common/base/k;)V

    return-object v0

    :cond_16
    instance-of v0, p0, Lcom/google/common/collect/t0;

    if-eqz v0, :cond_25

    check-cast p0, Lcom/google/common/collect/t0;

    invoke-static {p1}, Lcom/google/common/collect/Maps;->v(Lcom/google/common/base/k;)Lcom/google/common/base/k;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/Multimaps;->e(Lcom/google/common/collect/t0;Lcom/google/common/base/k;)Lcom/google/common/collect/z2;

    move-result-object p0

    return-object p0

    :cond_25
    new-instance v0, Lcom/google/common/collect/r0;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/r0;-><init>(Lcom/google/common/collect/z2;Lcom/google/common/base/k;)V

    return-object v0
.end method

.method public static filterValues(Lcom/google/common/collect/b2;Lcom/google/common/base/k;)Lcom/google/common/collect/b2;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/b2<",
            "TK;TV;>;",
            "Lcom/google/common/base/k<",
            "-TV;>;)",
            "Lcom/google/common/collect/b2<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/Maps;->N(Lcom/google/common/base/k;)Lcom/google/common/base/k;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/Multimaps;->filterEntries(Lcom/google/common/collect/b2;Lcom/google/common/base/k;)Lcom/google/common/collect/b2;

    move-result-object p0

    return-object p0
.end method

.method public static filterValues(Lcom/google/common/collect/z2;Lcom/google/common/base/k;)Lcom/google/common/collect/z2;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/z2<",
            "TK;TV;>;",
            "Lcom/google/common/base/k<",
            "-TV;>;)",
            "Lcom/google/common/collect/z2<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/Maps;->N(Lcom/google/common/base/k;)Lcom/google/common/base/k;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/Multimaps;->filterEntries(Lcom/google/common/collect/z2;Lcom/google/common/base/k;)Lcom/google/common/collect/z2;

    move-result-object p0

    return-object p0
.end method

.method public static forMap(Ljava/util/Map;)Lcom/google/common/collect/z2;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/z2<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/Multimaps$g;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$g;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method private static g(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/util/SortedSet;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0

    :cond_b
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_16

    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_16
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_21

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_21
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static index(Ljava/lang/Iterable;Lcom/google/common/base/f;)Lcom/google/common/collect/ImmutableListMultimap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TV;>;",
            "Lcom/google/common/base/f<",
            "-TV;TK;>;)",
            "Lcom/google/common/collect/ImmutableListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/common/collect/Multimaps;->index(Ljava/util/Iterator;Lcom/google/common/base/f;)Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object p0

    return-object p0
.end method

.method public static index(Ljava/util/Iterator;Lcom/google/common/base/f;)Lcom/google/common/collect/ImmutableListMultimap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TV;>;",
            "Lcom/google/common/base/f<",
            "-TV;TK;>;)",
            "Lcom/google/common/collect/ImmutableListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->builder()Lcom/google/common/collect/ImmutableListMultimap$a;

    move-result-object v0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v1}, Lcom/google/common/base/f;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableListMultimap$a;->g(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap$a;

    goto :goto_7

    :cond_1c
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableListMultimap$a;->f()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object p0

    return-object p0
.end method

.method public static invertFrom(Lcom/google/common/collect/b2;Lcom/google/common/collect/b2;)Lcom/google/common/collect/b2;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Lcom/google/common/collect/b2<",
            "TK;TV;>;>(",
            "Lcom/google/common/collect/b2<",
            "+TV;+TK;>;TM;)TM;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Lcom/google/common/collect/b2;->f()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/google/common/collect/b2;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_b

    :cond_23
    return-object p1
.end method

.method public static newListMultimap(Ljava/util/Map;Lcom/google/common/base/m;)Lcom/google/common/collect/z1;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lcom/google/common/base/m<",
            "+",
            "Ljava/util/List<",
            "TV;>;>;)",
            "Lcom/google/common/collect/z1<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/Multimaps$b;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multimaps$b;-><init>(Ljava/util/Map;Lcom/google/common/base/m;)V

    return-object v0
.end method

.method public static newMultimap(Ljava/util/Map;Lcom/google/common/base/m;)Lcom/google/common/collect/b2;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lcom/google/common/base/m<",
            "+",
            "Ljava/util/Collection<",
            "TV;>;>;)",
            "Lcom/google/common/collect/b2<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/Multimaps$c;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multimaps$c;-><init>(Ljava/util/Map;Lcom/google/common/base/m;)V

    return-object v0
.end method

.method public static newSetMultimap(Ljava/util/Map;Lcom/google/common/base/m;)Lcom/google/common/collect/z2;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lcom/google/common/base/m<",
            "+",
            "Ljava/util/Set<",
            "TV;>;>;)",
            "Lcom/google/common/collect/z2<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/Multimaps$d;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multimaps$d;-><init>(Ljava/util/Map;Lcom/google/common/base/m;)V

    return-object v0
.end method

.method public static newSortedSetMultimap(Ljava/util/Map;Lcom/google/common/base/m;)Lcom/google/common/collect/g3;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lcom/google/common/base/m<",
            "+",
            "Ljava/util/SortedSet<",
            "TV;>;>;)",
            "Lcom/google/common/collect/g3<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/Multimaps$e;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multimaps$e;-><init>(Ljava/util/Map;Lcom/google/common/base/m;)V

    return-object v0
.end method

.method public static synchronizedListMultimap(Lcom/google/common/collect/z1;)Lcom/google/common/collect/z1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/z1<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/z1<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/collect/k3;->k(Lcom/google/common/collect/z1;Ljava/lang/Object;)Lcom/google/common/collect/z1;

    move-result-object p0

    return-object p0
.end method

.method public static synchronizedMultimap(Lcom/google/common/collect/b2;)Lcom/google/common/collect/b2;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/b2<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/b2<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/collect/k3;->m(Lcom/google/common/collect/b2;Ljava/lang/Object;)Lcom/google/common/collect/b2;

    move-result-object p0

    return-object p0
.end method

.method public static synchronizedSetMultimap(Lcom/google/common/collect/z2;)Lcom/google/common/collect/z2;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/z2<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/z2<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/collect/k3;->u(Lcom/google/common/collect/z2;Ljava/lang/Object;)Lcom/google/common/collect/z2;

    move-result-object p0

    return-object p0
.end method

.method public static synchronizedSortedSetMultimap(Lcom/google/common/collect/g3;)Lcom/google/common/collect/g3;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/g3<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/g3<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/collect/k3;->x(Lcom/google/common/collect/g3;Ljava/lang/Object;)Lcom/google/common/collect/g3;

    move-result-object p0

    return-object p0
.end method

.method public static transformEntries(Lcom/google/common/collect/b2;Lcom/google/common/collect/Maps$q;)Lcom/google/common/collect/b2;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/b2<",
            "TK;TV1;>;",
            "Lcom/google/common/collect/Maps$q<",
            "-TK;-TV1;TV2;>;)",
            "Lcom/google/common/collect/b2<",
            "TK;TV2;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/Multimaps$i;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multimaps$i;-><init>(Lcom/google/common/collect/b2;Lcom/google/common/collect/Maps$q;)V

    return-object v0
.end method

.method public static transformEntries(Lcom/google/common/collect/z1;Lcom/google/common/collect/Maps$q;)Lcom/google/common/collect/z1;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/z1<",
            "TK;TV1;>;",
            "Lcom/google/common/collect/Maps$q<",
            "-TK;-TV1;TV2;>;)",
            "Lcom/google/common/collect/z1<",
            "TK;TV2;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/Multimaps$h;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multimaps$h;-><init>(Lcom/google/common/collect/z1;Lcom/google/common/collect/Maps$q;)V

    return-object v0
.end method

.method public static transformValues(Lcom/google/common/collect/b2;Lcom/google/common/base/f;)Lcom/google/common/collect/b2;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/b2<",
            "TK;TV1;>;",
            "Lcom/google/common/base/f<",
            "-TV1;TV2;>;)",
            "Lcom/google/common/collect/b2<",
            "TK;TV2;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/collect/Maps;->g(Lcom/google/common/base/f;)Lcom/google/common/collect/Maps$q;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/Multimaps;->transformEntries(Lcom/google/common/collect/b2;Lcom/google/common/collect/Maps$q;)Lcom/google/common/collect/b2;

    move-result-object p0

    return-object p0
.end method

.method public static transformValues(Lcom/google/common/collect/z1;Lcom/google/common/base/f;)Lcom/google/common/collect/z1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/z1<",
            "TK;TV1;>;",
            "Lcom/google/common/base/f<",
            "-TV1;TV2;>;)",
            "Lcom/google/common/collect/z1<",
            "TK;TV2;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/collect/Maps;->g(Lcom/google/common/base/f;)Lcom/google/common/collect/Maps$q;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/Multimaps;->transformEntries(Lcom/google/common/collect/z1;Lcom/google/common/collect/Maps$q;)Lcom/google/common/collect/z1;

    move-result-object p0

    return-object p0
.end method

.method public static unmodifiableListMultimap(Lcom/google/common/collect/ImmutableListMultimap;)Lcom/google/common/collect/z1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/ImmutableListMultimap<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/z1<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/z1;

    return-object p0
.end method

.method public static unmodifiableListMultimap(Lcom/google/common/collect/z1;)Lcom/google/common/collect/z1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/z1<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/z1<",
            "TK;TV;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/collect/Multimaps$j;

    if-nez v0, :cond_f

    instance-of v0, p0, Lcom/google/common/collect/ImmutableListMultimap;

    if-eqz v0, :cond_9

    goto :goto_f

    :cond_9
    new-instance v0, Lcom/google/common/collect/Multimaps$j;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$j;-><init>(Lcom/google/common/collect/z1;)V

    return-object v0

    :cond_f
    :goto_f
    return-object p0
.end method

.method public static unmodifiableMultimap(Lcom/google/common/collect/ImmutableMultimap;)Lcom/google/common/collect/b2;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/ImmutableMultimap<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/b2<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/b2;

    return-object p0
.end method

.method public static unmodifiableMultimap(Lcom/google/common/collect/b2;)Lcom/google/common/collect/b2;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/b2<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/b2<",
            "TK;TV;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/collect/Multimaps$k;

    if-nez v0, :cond_f

    instance-of v0, p0, Lcom/google/common/collect/ImmutableMultimap;

    if-eqz v0, :cond_9

    goto :goto_f

    :cond_9
    new-instance v0, Lcom/google/common/collect/Multimaps$k;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$k;-><init>(Lcom/google/common/collect/b2;)V

    return-object v0

    :cond_f
    :goto_f
    return-object p0
.end method

.method public static unmodifiableSetMultimap(Lcom/google/common/collect/ImmutableSetMultimap;)Lcom/google/common/collect/z2;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/ImmutableSetMultimap<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/z2<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/z2;

    return-object p0
.end method

.method public static unmodifiableSetMultimap(Lcom/google/common/collect/z2;)Lcom/google/common/collect/z2;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/z2<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/z2<",
            "TK;TV;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/collect/Multimaps$l;

    if-nez v0, :cond_f

    instance-of v0, p0, Lcom/google/common/collect/ImmutableSetMultimap;

    if-eqz v0, :cond_9

    goto :goto_f

    :cond_9
    new-instance v0, Lcom/google/common/collect/Multimaps$l;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$l;-><init>(Lcom/google/common/collect/z2;)V

    return-object v0

    :cond_f
    :goto_f
    return-object p0
.end method

.method public static unmodifiableSortedSetMultimap(Lcom/google/common/collect/g3;)Lcom/google/common/collect/g3;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/g3<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/g3<",
            "TK;TV;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/collect/Multimaps$m;

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    new-instance v0, Lcom/google/common/collect/Multimaps$m;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$m;-><init>(Lcom/google/common/collect/g3;)V

    return-object v0
.end method

###### Class com.google.common.collect.Multimaps.a (com.google.common.collect.Multimaps$a)
.class final Lcom/google/common/collect/Multimaps$a;
.super Lcom/google/common/collect/Maps$o0;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Multimaps$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Maps$o0<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private final d:Lcom/google/common/collect/b2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/b2<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/b2;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/b2<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/Maps$o0;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/b2;

    iput-object p1, p0, Lcom/google/common/collect/Multimaps$a;->d:Lcom/google/common/collect/b2;

    return-void
.end method

.method static synthetic d(Lcom/google/common/collect/Multimaps$a;)Lcom/google/common/collect/b2;
    .registers 1

    iget-object p0, p0, Lcom/google/common/collect/Multimaps$a;->d:Lcom/google/common/collect/b2;

    return-object p0
.end method


# virtual methods
.method protected a()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/Multimaps$a$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$a$a;-><init>(Lcom/google/common/collect/Multimaps$a;)V

    return-object v0
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$a;->d:Lcom/google/common/collect/b2;

    invoke-interface {v0}, Lcom/google/common/collect/b2;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$a;->d:Lcom/google/common/collect/b2;

    invoke-interface {v0, p1}, Lcom/google/common/collect/b2;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public e(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$a;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$a;->d:Lcom/google/common/collect/b2;

    invoke-interface {v0, p1}, Lcom/google/common/collect/b2;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    return-object p1
.end method

.method public f(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$a;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$a;->d:Lcom/google/common/collect/b2;

    invoke-interface {v0, p1}, Lcom/google/common/collect/b2;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$a;->e(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method h(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$a;->d:Lcom/google/common/collect/b2;

    invoke-interface {v0}, Lcom/google/common/collect/b2;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$a;->d:Lcom/google/common/collect/b2;

    invoke-interface {v0}, Lcom/google/common/collect/b2;->isEmpty()Z

    move-result v0

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

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$a;->d:Lcom/google/common/collect/b2;

    invoke-interface {v0}, Lcom/google/common/collect/b2;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$a;->f(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$a;->d:Lcom/google/common/collect/b2;

    invoke-interface {v0}, Lcom/google/common/collect/b2;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

###### Class com.google.common.collect.Multimaps.a.C0246a (com.google.common.collect.Multimaps$a$a)
.class Lcom/google/common/collect/Multimaps$a$a;
.super Lcom/google/common/collect/Maps$p;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$p<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/Multimaps$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$a;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/Multimaps$a$a;->a:Lcom/google/common/collect/Multimaps$a;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$p;-><init>()V

    return-void
.end method


# virtual methods
.method i()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$a$a;->a:Lcom/google/common/collect/Multimaps$a;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$a$a;->a:Lcom/google/common/collect/Multimaps$a;

    invoke-static {v0}, Lcom/google/common/collect/Multimaps$a;->d(Lcom/google/common/collect/Multimaps$a;)Lcom/google/common/collect/b2;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/b2;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/Multimaps$a$a$a;

    invoke-direct {v1, p0}, Lcom/google/common/collect/Multimaps$a$a$a;-><init>(Lcom/google/common/collect/Multimaps$a$a;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->h(Ljava/util/Set;Lcom/google/common/base/f;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Maps$p;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$a$a;->a:Lcom/google/common/collect/Multimaps$a;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Multimaps$a;->h(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

###### Class com.google.common.collect.Multimaps.a.C0246a.C0247a (com.google.common.collect.Multimaps$a$a$a)
.class Lcom/google/common/collect/Multimaps$a$a$a;
.super Ljava/lang/Object;
.source "Multimaps.java"

# interfaces
.implements Lcom/google/common/base/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multimaps$a$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/f<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/Multimaps$a$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$a$a;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/Multimaps$a$a$a;->a:Lcom/google/common/collect/Multimaps$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$a$a$a;->a:Lcom/google/common/collect/Multimaps$a$a;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$a$a;->a:Lcom/google/common/collect/Multimaps$a;

    invoke-static {v0}, Lcom/google/common/collect/Multimaps$a;->d(Lcom/google/common/collect/Multimaps$a;)Lcom/google/common/collect/b2;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/b2;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$a$a$a;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.common.collect.Multimaps.b (com.google.common.collect.Multimaps$b)
.class Lcom/google/common/collect/Multimaps$b;
.super Lcom/google/common/collect/f;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/f<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient f:Lcom/google/common/base/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/m<",
            "+",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/google/common/base/m;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lcom/google/common/base/m<",
            "+",
            "Ljava/util/List<",
            "TV;>;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/collect/f;-><init>(Ljava/util/Map;)V

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/m;

    iput-object p1, p0, Lcom/google/common/collect/Multimaps$b;->f:Lcom/google/common/base/m;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/m;

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$b;->f:Lcom/google/common/base/m;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/g;->D(Ljava/util/Map;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$b;->f:Lcom/google/common/base/m;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/common/collect/g;->t()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected I()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$b;->f:Lcom/google/common/base/m;

    invoke-interface {v0}, Lcom/google/common/base/m;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method c()Ljava/util/Map;
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

    invoke-virtual {p0}, Lcom/google/common/collect/g;->w()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method g()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/g;->x()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic u()Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$b;->I()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.collect.Multimaps.c (com.google.common.collect.Multimaps$c)
.class Lcom/google/common/collect/Multimaps$c;
.super Lcom/google/common/collect/g;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/g<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient f:Lcom/google/common/base/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/m<",
            "+",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/google/common/base/m;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lcom/google/common/base/m<",
            "+",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/collect/g;-><init>(Ljava/util/Map;)V

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/m;

    iput-object p1, p0, Lcom/google/common/collect/Multimaps$c;->f:Lcom/google/common/base/m;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/m;

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$c;->f:Lcom/google/common/base/m;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/g;->D(Ljava/util/Map;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$c;->f:Lcom/google/common/base/m;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/common/collect/g;->t()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method E(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 3
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

    instance-of v0, p1, Ljava/util/NavigableSet;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/util/NavigableSet;

    invoke-static {p1}, Lcom/google/common/collect/Sets;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1

    :cond_b
    instance-of v0, p1, Ljava/util/SortedSet;

    if-eqz v0, :cond_16

    check-cast p1, Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1

    :cond_16
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_21

    check-cast p1, Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_21
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_2c

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2c
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method F(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection<",
            "TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    instance-of v0, p2, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2, v1}, Lcom/google/common/collect/g;->G(Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/g$j;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_c
    instance-of v0, p2, Ljava/util/NavigableSet;

    if-eqz v0, :cond_18

    new-instance v0, Lcom/google/common/collect/g$l;

    check-cast p2, Ljava/util/NavigableSet;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/common/collect/g$l;-><init>(Lcom/google/common/collect/g;Ljava/lang/Object;Ljava/util/NavigableSet;Lcom/google/common/collect/g$j;)V

    return-object v0

    :cond_18
    instance-of v0, p2, Ljava/util/SortedSet;

    if-eqz v0, :cond_24

    new-instance v0, Lcom/google/common/collect/g$n;

    check-cast p2, Ljava/util/SortedSet;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/common/collect/g$n;-><init>(Lcom/google/common/collect/g;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/g$j;)V

    return-object v0

    :cond_24
    instance-of v0, p2, Ljava/util/Set;

    if-eqz v0, :cond_30

    new-instance v0, Lcom/google/common/collect/g$m;

    check-cast p2, Ljava/util/Set;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/g$m;-><init>(Lcom/google/common/collect/g;Ljava/lang/Object;Ljava/util/Set;)V

    return-object v0

    :cond_30
    new-instance v0, Lcom/google/common/collect/g$j;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/common/collect/g$j;-><init>(Lcom/google/common/collect/g;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/g$j;)V

    return-object v0
.end method

.method c()Ljava/util/Map;
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

    invoke-virtual {p0}, Lcom/google/common/collect/g;->w()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method g()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/g;->x()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected u()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$c;->f:Lcom/google/common/base/m;

    invoke-interface {v0}, Lcom/google/common/base/m;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

###### Class com.google.common.collect.Multimaps.d (com.google.common.collect.Multimaps$d)
.class Lcom/google/common/collect/Multimaps$d;
.super Lcom/google/common/collect/o;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/o<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient f:Lcom/google/common/base/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/m<",
            "+",
            "Ljava/util/Set<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/google/common/base/m;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lcom/google/common/base/m<",
            "+",
            "Ljava/util/Set<",
            "TV;>;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/collect/o;-><init>(Ljava/util/Map;)V

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/m;

    iput-object p1, p0, Lcom/google/common/collect/Multimaps$d;->f:Lcom/google/common/base/m;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/m;

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$d;->f:Lcom/google/common/base/m;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/g;->D(Ljava/util/Map;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$d;->f:Lcom/google/common/base/m;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/common/collect/g;->t()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method E(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 3
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

    instance-of v0, p1, Ljava/util/NavigableSet;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/util/NavigableSet;

    invoke-static {p1}, Lcom/google/common/collect/Sets;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1

    :cond_b
    instance-of v0, p1, Ljava/util/SortedSet;

    if-eqz v0, :cond_16

    check-cast p1, Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1

    :cond_16
    check-cast p1, Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method F(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection<",
            "TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    instance-of v0, p2, Ljava/util/NavigableSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/google/common/collect/g$l;

    check-cast p2, Ljava/util/NavigableSet;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/common/collect/g$l;-><init>(Lcom/google/common/collect/g;Ljava/lang/Object;Ljava/util/NavigableSet;Lcom/google/common/collect/g$j;)V

    return-object v0

    :cond_d
    instance-of v0, p2, Ljava/util/SortedSet;

    if-eqz v0, :cond_19

    new-instance v0, Lcom/google/common/collect/g$n;

    check-cast p2, Ljava/util/SortedSet;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/common/collect/g$n;-><init>(Lcom/google/common/collect/g;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/g$j;)V

    return-object v0

    :cond_19
    new-instance v0, Lcom/google/common/collect/g$m;

    check-cast p2, Ljava/util/Set;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/g$m;-><init>(Lcom/google/common/collect/g;Ljava/lang/Object;Ljava/util/Set;)V

    return-object v0
.end method

.method protected I()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$d;->f:Lcom/google/common/base/m;

    invoke-interface {v0}, Lcom/google/common/base/m;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method c()Ljava/util/Map;
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

    invoke-virtual {p0}, Lcom/google/common/collect/g;->w()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method g()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/g;->x()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic u()Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$d;->I()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.collect.Multimaps.e (com.google.common.collect.Multimaps$e)
.class Lcom/google/common/collect/Multimaps$e;
.super Lcom/google/common/collect/r;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/r<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient f:Lcom/google/common/base/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/m<",
            "+",
            "Ljava/util/SortedSet<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field transient g:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/google/common/base/m;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lcom/google/common/base/m<",
            "+",
            "Ljava/util/SortedSet<",
            "TV;>;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/collect/r;-><init>(Ljava/util/Map;)V

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/m;

    iput-object p1, p0, Lcom/google/common/collect/Multimaps$e;->f:Lcom/google/common/base/m;

    invoke-interface {p2}, Lcom/google/common/base/m;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/SortedSet;

    invoke-interface {p1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/Multimaps$e;->g:Ljava/util/Comparator;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/m;

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$e;->f:Lcom/google/common/base/m;

    invoke-interface {v0}, Lcom/google/common/base/m;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$e;->g:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/g;->D(Ljava/util/Map;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$e;->f:Lcom/google/common/base/m;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/common/collect/g;->t()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected I()Ljava/util/SortedSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$e;->f:Lcom/google/common/base/m;

    invoke-interface {v0}, Lcom/google/common/base/m;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method c()Ljava/util/Map;
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

    invoke-virtual {p0}, Lcom/google/common/collect/g;->w()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method g()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/g;->x()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic u()Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$e;->I()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.collect.Multimaps.f (com.google.common.collect.Multimaps$f)
.class abstract Lcom/google/common/collect/Multimaps$f;
.super Ljava/util/AbstractCollection;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$f;->e()Lcom/google/common/collect/b2;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/b2;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_17

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$f;->e()Lcom/google/common/collect/b2;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/google/common/collect/b2;->A(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_17
    const/4 p1, 0x0

    return p1
.end method

.method abstract e()Lcom/google/common/collect/b2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/b2<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_17

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$f;->e()Lcom/google/common/collect/b2;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/google/common/collect/b2;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_17
    const/4 p1, 0x0

    return p1
.end method

.method public size()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$f;->e()Lcom/google/common/collect/b2;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/b2;->size()I

    move-result v0

    return v0
.end method

###### Class com.google.common.collect.Multimaps.g (com.google.common.collect.Multimaps$g)
.class Lcom/google/common/collect/Multimaps$g;
.super Lcom/google/common/collect/j;
.source "Multimaps.java"

# interfaces
.implements Lcom/google/common/collect/z2;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
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
        "Lcom/google/common/collect/z2<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6cdfd44a398c560fL


# instance fields
.field final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/j;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/google/common/collect/Multimaps$g;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$g;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$g;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iget-object v1, p0, Lcom/google/common/collect/Multimaps$g;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return-object v0

    :cond_f
    iget-object v1, p0, Lcom/google/common/collect/Multimaps$g;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method c()Ljava/util/Map;
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

    new-instance v0, Lcom/google/common/collect/Multimaps$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$a;-><init>(Lcom/google/common/collect/b2;)V

    return-object v0
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$g;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$g;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method d()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "unreachable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic f()Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$g;->f()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$g;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method g()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$g;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$g;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/Multimaps$g$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multimaps$g$a;-><init>(Lcom/google/common/collect/Multimaps$g;Ljava/lang/Object;)V

    return-object v0
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

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$g;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$g;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$g;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$g;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

###### Class com.google.common.collect.Multimaps.g.a (com.google.common.collect.Multimaps$g$a)
.class Lcom/google/common/collect/Multimaps$g$a;
.super Lcom/google/common/collect/Sets$j;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multimaps$g;->get(Ljava/lang/Object;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Sets$j<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/google/common/collect/Multimaps$g;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$g;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/Multimaps$g$a;->b:Lcom/google/common/collect/Multimaps$g;

    iput-object p2, p0, Lcom/google/common/collect/Multimaps$g$a;->a:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/Sets$j;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/Multimaps$g$a$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$g$a$a;-><init>(Lcom/google/common/collect/Multimaps$g$a;)V

    return-object v0
.end method

.method public size()I
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$g$a;->b:Lcom/google/common/collect/Multimaps$g;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$g;->d:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/Multimaps$g$a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

###### Class com.google.common.collect.Multimaps.g.a.C0248a (com.google.common.collect.Multimaps$g$a$a)
.class Lcom/google/common/collect/Multimaps$g$a$a;
.super Ljava/lang/Object;
.source "Multimaps.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multimaps$g$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/google/common/collect/Multimaps$g$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$g$a;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/Multimaps$g$a$a;->b:Lcom/google/common/collect/Multimaps$g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    iget v0, p0, Lcom/google/common/collect/Multimaps$g$a$a;->a:I

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$g$a$a;->b:Lcom/google/common/collect/Multimaps$g$a;

    iget-object v1, v0, Lcom/google/common/collect/Multimaps$g$a;->b:Lcom/google/common/collect/Multimaps$g;

    iget-object v1, v1, Lcom/google/common/collect/Multimaps$g;->d:Ljava/util/Map;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$g$a;->a:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$g$a$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget v0, p0, Lcom/google/common/collect/Multimaps$g$a$a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/Multimaps$g$a$a;->a:I

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$g$a$a;->b:Lcom/google/common/collect/Multimaps$g$a;

    iget-object v1, v0, Lcom/google/common/collect/Multimaps$g$a;->b:Lcom/google/common/collect/Multimaps$g;

    iget-object v1, v1, Lcom/google/common/collect/Multimaps$g;->d:Ljava/util/Map;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$g$a;->a:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/e2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1d
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 3

    iget v0, p0, Lcom/google/common/collect/Multimaps$g$a$a;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    invoke-static {v1}, Lcom/google/common/collect/z;->e(Z)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/Multimaps$g$a$a;->a:I

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$g$a$a;->b:Lcom/google/common/collect/Multimaps$g$a;

    iget-object v1, v0, Lcom/google/common/collect/Multimaps$g$a;->b:Lcom/google/common/collect/Multimaps$g;

    iget-object v1, v1, Lcom/google/common/collect/Multimaps$g;->d:Ljava/util/Map;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$g$a;->a:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class com.google.common.collect.Multimaps.h (com.google.common.collect.Multimaps$h)
.class final Lcom/google/common/collect/Multimaps$h;
.super Lcom/google/common/collect/Multimaps$i;
.source "Multimaps.java"

# interfaces
.implements Lcom/google/common/collect/z1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V1:",
        "Ljava/lang/Object;",
        "V2:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Multimaps$i<",
        "TK;TV1;TV2;>;",
        "Lcom/google/common/collect/z1<",
        "TK;TV2;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/collect/z1;Lcom/google/common/collect/Maps$q;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/z1<",
            "TK;TV1;>;",
            "Lcom/google/common/collect/Maps$q<",
            "-TK;-TV1;TV2;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Multimaps$i;-><init>(Lcom/google/common/collect/b2;Lcom/google/common/collect/Maps$q;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$h;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "TV2;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$i;->d:Lcom/google/common/collect/b2;

    invoke-interface {v0, p1}, Lcom/google/common/collect/b2;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/Multimaps$h;->m(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$h;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List<",
            "TV2;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$i;->d:Lcom/google/common/collect/b2;

    invoke-interface {v0, p1}, Lcom/google/common/collect/b2;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/Multimaps$h;->m(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic k(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Multimaps$h;->m(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method m(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection<",
            "TV1;>;)",
            "Ljava/util/List<",
            "TV2;>;"
        }
    .end annotation

    check-cast p2, Ljava/util/List;

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$i;->e:Lcom/google/common/collect/Maps$q;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->i(Lcom/google/common/collect/Maps$q;Ljava/lang/Object;)Lcom/google/common/base/f;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/f;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.common.collect.Multimaps.i (com.google.common.collect.Multimaps$i)
.class Lcom/google/common/collect/Multimaps$i;
.super Lcom/google/common/collect/j;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V1:",
        "Ljava/lang/Object;",
        "V2:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/j<",
        "TK;TV2;>;"
    }
.end annotation


# instance fields
.field final d:Lcom/google/common/collect/b2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/b2<",
            "TK;TV1;>;"
        }
    .end annotation
.end field

.field final e:Lcom/google/common/collect/Maps$q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Maps$q<",
            "-TK;-TV1;TV2;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/b2;Lcom/google/common/collect/Maps$q;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/b2<",
            "TK;TV1;>;",
            "Lcom/google/common/collect/Maps$q<",
            "-TK;-TV1;TV2;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/j;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/b2;

    iput-object p1, p0, Lcom/google/common/collect/Multimaps$i;->d:Lcom/google/common/collect/b2;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/Maps$q;

    iput-object p1, p0, Lcom/google/common/collect/Multimaps$i;->e:Lcom/google/common/collect/Maps$q;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV2;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$i;->d:Lcom/google/common/collect/b2;

    invoke-interface {v0, p1}, Lcom/google/common/collect/b2;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/Multimaps$i;->k(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

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
            "TV2;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$i;->d:Lcom/google/common/collect/b2;

    invoke-interface {v0}, Lcom/google/common/collect/b2;->e()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/Multimaps$i$a;

    invoke-direct {v1, p0}, Lcom/google/common/collect/Multimaps$i$a;-><init>(Lcom/google/common/collect/Multimaps$i;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->transformEntries(Ljava/util/Map;Lcom/google/common/collect/Maps$q;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$i;->d:Lcom/google/common/collect/b2;

    invoke-interface {v0}, Lcom/google/common/collect/b2;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$i;->d:Lcom/google/common/collect/b2;

    invoke-interface {v0, p1}, Lcom/google/common/collect/b2;->containsKey(Ljava/lang/Object;)Z

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
            "TK;TV2;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/j$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/j$a;-><init>(Lcom/google/common/collect/j;)V

    return-object v0
.end method

.method g()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$i;->d:Lcom/google/common/collect/b2;

    invoke-interface {v0}, Lcom/google/common/collect/b2;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV2;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$i;->d:Lcom/google/common/collect/b2;

    invoke-interface {v0, p1}, Lcom/google/common/collect/b2;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/Multimaps$i;->k(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method h()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV2;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$i;->d:Lcom/google/common/collect/b2;

    invoke-interface {v0}, Lcom/google/common/collect/b2;->f()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Multimaps$i;->e:Lcom/google/common/collect/Maps$q;

    invoke-static {v1}, Lcom/google/common/collect/Maps;->f(Lcom/google/common/collect/Maps$q;)Lcom/google/common/base/f;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/f;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$i;->d:Lcom/google/common/collect/b2;

    invoke-interface {v0}, Lcom/google/common/collect/b2;->isEmpty()Z

    move-result v0

    return v0
.end method

.method k(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection<",
            "TV1;>;)",
            "Ljava/util/Collection<",
            "TV2;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$i;->e:Lcom/google/common/collect/Maps$q;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->i(Lcom/google/common/collect/Maps$q;Ljava/lang/Object;)Lcom/google/common/base/f;

    move-result-object p1

    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_11

    check-cast p2, Ljava/util/List;

    invoke-static {p2, p1}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/f;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_11
    invoke-static {p2, p1}, Lcom/google/common/collect/Collections2;->transform(Ljava/util/Collection;Lcom/google/common/base/f;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV2;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$i;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$i;->d:Lcom/google/common/collect/b2;

    invoke-interface {v0}, Lcom/google/common/collect/b2;->size()I

    move-result v0

    return v0
.end method

###### Class com.google.common.collect.Multimaps.i.a (com.google.common.collect.Multimaps$i$a)
.class Lcom/google/common/collect/Multimaps$i$a;
.super Ljava/lang/Object;
.source "Multimaps.java"

# interfaces
.implements Lcom/google/common/collect/Maps$q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multimaps$i;->c()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/Maps$q<",
        "TK;",
        "Ljava/util/Collection<",
        "TV1;>;",
        "Ljava/util/Collection<",
        "TV2;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/Multimaps$i;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$i;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/Multimaps$i$a;->a:Lcom/google/common/collect/Multimaps$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Multimaps$i$a;->b(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection<",
            "TV1;>;)",
            "Ljava/util/Collection<",
            "TV2;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$i$a;->a:Lcom/google/common/collect/Multimaps$i;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/Multimaps$i;->k(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.common.collect.Multimaps.j (com.google.common.collect.Multimaps$j)
.class Lcom/google/common/collect/Multimaps$j;
.super Lcom/google/common/collect/Multimaps$k;
.source "Multimaps.java"

# interfaces
.implements Lcom/google/common/collect/z1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Multimaps$k<",
        "TK;TV;>;",
        "Lcom/google/common/collect/z1<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Lcom/google/common/collect/z1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/z1<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/collect/Multimaps$k;-><init>(Lcom/google/common/collect/b2;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic B()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$j;->D()Lcom/google/common/collect/z1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic C()Lcom/google/common/collect/b2;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$j;->D()Lcom/google/common/collect/z1;

    move-result-object v0

    return-object v0
.end method

.method public D()Lcom/google/common/collect/z1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/z1<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/Multimaps$k;->C()Lcom/google/common/collect/b2;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/z1;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$j;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$j;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$j;->D()Lcom/google/common/collect/z1;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/z1;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.common.collect.Multimaps.k (com.google.common.collect.Multimaps$k)
.class Lcom/google/common/collect/Multimaps$k;
.super Lcom/google/common/collect/a1;
.source "Multimaps.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/a1<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final a:Lcom/google/common/collect/b2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/b2<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field transient b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field transient c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field transient d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/b2;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/b2<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/a1;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/b2;

    iput-object p1, p0, Lcom/google/common/collect/Multimaps$k;->a:Lcom/google/common/collect/b2;

    return-void
.end method


# virtual methods
.method protected bridge synthetic B()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$k;->C()Lcom/google/common/collect/b2;

    move-result-object v0

    return-object v0
.end method

.method protected C()Lcom/google/common/collect/b2;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/b2<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$k;->a:Lcom/google/common/collect/b2;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
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

.method public e()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$k;->d:Ljava/util/Map;

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$k;->a:Lcom/google/common/collect/b2;

    invoke-interface {v0}, Lcom/google/common/collect/b2;->e()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/Multimaps$k$a;

    invoke-direct {v1, p0}, Lcom/google/common/collect/Multimaps$k$a;-><init>(Lcom/google/common/collect/Multimaps$k;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->transformValues(Ljava/util/Map;Lcom/google/common/base/f;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$k;->d:Ljava/util/Map;

    :cond_19
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

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$k;->b:Ljava/util/Collection;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$k;->a:Lcom/google/common/collect/b2;

    invoke-interface {v0}, Lcom/google/common/collect/b2;->f()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Multimaps;->b(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$k;->b:Ljava/util/Collection;

    :cond_10
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

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$k;->a:Lcom/google/common/collect/b2;

    invoke-interface {v0, p1}, Lcom/google/common/collect/b2;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Multimaps;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
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

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$k;->c:Ljava/util/Set;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$k;->a:Lcom/google/common/collect/b2;

    invoke-interface {v0}, Lcom/google/common/collect/b2;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$k;->c:Ljava/util/Set;

    :cond_10
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

###### Class com.google.common.collect.Multimaps.k.a (com.google.common.collect.Multimaps$k$a)
.class Lcom/google/common/collect/Multimaps$k$a;
.super Ljava/lang/Object;
.source "Multimaps.java"

# interfaces
.implements Lcom/google/common/base/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multimaps$k;->e()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/f<",
        "Ljava/util/Collection<",
        "TV;>;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$k;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/Multimaps;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$k$a;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.common.collect.Multimaps.l (com.google.common.collect.Multimaps$l)
.class Lcom/google/common/collect/Multimaps$l;
.super Lcom/google/common/collect/Multimaps$k;
.source "Multimaps.java"

# interfaces
.implements Lcom/google/common/collect/z2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Multimaps$k<",
        "TK;TV;>;",
        "Lcom/google/common/collect/z2<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Lcom/google/common/collect/z2;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/z2<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/collect/Multimaps$k;-><init>(Lcom/google/common/collect/b2;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic B()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$l;->D()Lcom/google/common/collect/z2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic C()Lcom/google/common/collect/b2;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$l;->D()Lcom/google/common/collect/z2;

    move-result-object v0

    return-object v0
.end method

.method public D()Lcom/google/common/collect/z2;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/z2<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/Multimaps$k;->C()Lcom/google/common/collect/b2;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/z2;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$l;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic f()Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$l;->f()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$l;->D()Lcom/google/common/collect/z2;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/z2;->f()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->I(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$l;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$l;->D()Lcom/google/common/collect/z2;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/z2;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.common.collect.Multimaps.m (com.google.common.collect.Multimaps$m)
.class Lcom/google/common/collect/Multimaps$m;
.super Lcom/google/common/collect/Multimaps$l;
.source "Multimaps.java"

# interfaces
.implements Lcom/google/common/collect/g3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Multimaps$l<",
        "TK;TV;>;",
        "Lcom/google/common/collect/g3<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Lcom/google/common/collect/g3;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/g3<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/collect/Multimaps$l;-><init>(Lcom/google/common/collect/z2;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic B()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$m;->E()Lcom/google/common/collect/g3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic C()Lcom/google/common/collect/b2;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$m;->E()Lcom/google/common/collect/g3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic D()Lcom/google/common/collect/z2;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$m;->E()Lcom/google/common/collect/g3;

    move-result-object v0

    return-object v0
.end method

.method public E()Lcom/google/common/collect/g3;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g3<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/Multimaps$l;->D()Lcom/google/common/collect/z2;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/g3;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$m;->a(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/util/Set;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$m;->a(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$m;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$m;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$m;->E()Lcom/google/common/collect/g3;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/g3;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method
