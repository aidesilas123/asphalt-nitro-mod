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
