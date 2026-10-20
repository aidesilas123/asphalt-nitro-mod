###### Class com.google.common.collect.k3 (com.google.common.collect.k3)
.class final Lcom/google/common/collect/k3;
.super Ljava/lang/Object;
.source "Synchronized.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/k3$w;,
        Lcom/google/common/collect/k3$g;,
        Lcom/google/common/collect/k3$p;,
        Lcom/google/common/collect/k3$h;,
        Lcom/google/common/collect/k3$m;,
        Lcom/google/common/collect/k3$n;,
        Lcom/google/common/collect/k3$d;,
        Lcom/google/common/collect/k3$b;,
        Lcom/google/common/collect/k3$e;,
        Lcom/google/common/collect/k3$t;,
        Lcom/google/common/collect/k3$k;,
        Lcom/google/common/collect/k3$c;,
        Lcom/google/common/collect/k3$v;,
        Lcom/google/common/collect/k3$s;,
        Lcom/google/common/collect/k3$j;,
        Lcom/google/common/collect/k3$l;,
        Lcom/google/common/collect/k3$q;,
        Lcom/google/common/collect/k3$i;,
        Lcom/google/common/collect/k3$u;,
        Lcom/google/common/collect/k3$r;,
        Lcom/google/common/collect/k3$f;,
        Lcom/google/common/collect/k3$o;
    }
.end annotation


# direct methods
.method private static A(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/util/SortedSet;

    invoke-static {p0, p1}, Lcom/google/common/collect/k3;->w(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0, p1}, Lcom/google/common/collect/k3;->t(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/common/collect/k3;->w(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/common/collect/k3;->j(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/common/collect/k3;->A(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/common/collect/k3;->z(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/common/collect/k3;->h(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Ljava/util/Map$Entry;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/common/collect/k3;->r(Ljava/util/Map$Entry;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method static g(Lcom/google/common/collect/w;Ljava/lang/Object;)Lcom/google/common/collect/w;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/w<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/w<",
            "TK;TV;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/collect/k3$e;

    if-nez v0, :cond_10

    instance-of v0, p0, Lcom/google/common/collect/ImmutableBiMap;

    if-eqz v0, :cond_9

    goto :goto_10

    :cond_9
    new-instance v0, Lcom/google/common/collect/k3$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/google/common/collect/k3$e;-><init>(Lcom/google/common/collect/w;Ljava/lang/Object;Lcom/google/common/collect/w;Lcom/google/common/collect/k3$a;)V

    return-object v0

    :cond_10
    :goto_10
    return-object p0
.end method

.method private static h(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/k3$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/collect/k3$f;-><init>(Ljava/util/Collection;Ljava/lang/Object;Lcom/google/common/collect/k3$a;)V

    return-object v0
.end method

.method static i(Ljava/util/Deque;Ljava/lang/Object;)Ljava/util/Deque;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Deque<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Deque<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/k3$g;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/k3$g;-><init>(Ljava/util/Deque;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static j(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_a

    new-instance v0, Lcom/google/common/collect/k3$q;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/k3$q;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    goto :goto_f

    :cond_a
    new-instance v0, Lcom/google/common/collect/k3$i;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/k3$i;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    :goto_f
    return-object v0
.end method

.method static k(Lcom/google/common/collect/z1;Ljava/lang/Object;)Lcom/google/common/collect/z1;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/z1<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/z1<",
            "TK;TV;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/collect/k3$j;

    if-nez v0, :cond_f

    instance-of v0, p0, Lcom/google/common/collect/v;

    if-eqz v0, :cond_9

    goto :goto_f

    :cond_9
    new-instance v0, Lcom/google/common/collect/k3$j;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/k3$j;-><init>(Lcom/google/common/collect/z1;Ljava/lang/Object;)V

    return-object v0

    :cond_f
    :goto_f
    return-object p0
.end method

.method static l(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/k3$k;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/k3$k;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    return-object v0
.end method

.method static m(Lcom/google/common/collect/b2;Ljava/lang/Object;)Lcom/google/common/collect/b2;
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
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/b2<",
            "TK;TV;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/collect/k3$l;

    if-nez v0, :cond_f

    instance-of v0, p0, Lcom/google/common/collect/v;

    if-eqz v0, :cond_9

    goto :goto_f

    :cond_9
    new-instance v0, Lcom/google/common/collect/k3$l;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/k3$l;-><init>(Lcom/google/common/collect/b2;Ljava/lang/Object;)V

    return-object v0

    :cond_f
    :goto_f
    return-object p0
.end method

.method static n(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/collect/k3;->o(Ljava/util/NavigableMap;Ljava/lang/Object;)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method static o(Ljava/util/NavigableMap;Ljava/lang/Object;)Ljava/util/NavigableMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/k3$m;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/k3$m;-><init>(Ljava/util/NavigableMap;Ljava/lang/Object;)V

    return-object v0
.end method

.method static p(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet<",
            "TE;>;)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/collect/k3;->q(Ljava/util/NavigableSet;Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method static q(Ljava/util/NavigableSet;Ljava/lang/Object;)Ljava/util/NavigableSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/k3$n;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/k3$n;-><init>(Ljava/util/NavigableSet;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static r(Ljava/util/Map$Entry;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Lcom/google/common/collect/k3$h;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/k3$h;-><init>(Ljava/util/Map$Entry;Ljava/lang/Object;)V

    return-object v0
.end method

.method static s(Ljava/util/Queue;Ljava/lang/Object;)Ljava/util/Queue;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Queue<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/collect/k3$p;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    new-instance v0, Lcom/google/common/collect/k3$p;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/k3$p;-><init>(Ljava/util/Queue;Ljava/lang/Object;)V

    move-object p0, v0

    :goto_b
    return-object p0
.end method

.method static t(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/k3$r;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/k3$r;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    return-object v0
.end method

.method static u(Lcom/google/common/collect/z2;Ljava/lang/Object;)Lcom/google/common/collect/z2;
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
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/z2<",
            "TK;TV;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/collect/k3$s;

    if-nez v0, :cond_f

    instance-of v0, p0, Lcom/google/common/collect/v;

    if-eqz v0, :cond_9

    goto :goto_f

    :cond_9
    new-instance v0, Lcom/google/common/collect/k3$s;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/k3$s;-><init>(Lcom/google/common/collect/z2;Ljava/lang/Object;)V

    return-object v0

    :cond_f
    :goto_f
    return-object p0
.end method

.method static v(Ljava/util/SortedMap;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/k3$t;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/k3$t;-><init>(Ljava/util/SortedMap;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static w(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/k3$u;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/k3$u;-><init>(Ljava/util/SortedSet;Ljava/lang/Object;)V

    return-object v0
.end method

.method static x(Lcom/google/common/collect/g3;Ljava/lang/Object;)Lcom/google/common/collect/g3;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/g3<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/g3<",
            "TK;TV;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/collect/k3$v;

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    new-instance v0, Lcom/google/common/collect/k3$v;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/k3$v;-><init>(Lcom/google/common/collect/g3;Ljava/lang/Object;)V

    return-object v0
.end method

.method static y(Lcom/google/common/collect/l3;Ljava/lang/Object;)Lcom/google/common/collect/l3;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/l3<",
            "TR;TC;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/l3<",
            "TR;TC;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/k3$w;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/k3$w;-><init>(Lcom/google/common/collect/l3;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static z(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/util/SortedSet;

    invoke-static {p0, p1}, Lcom/google/common/collect/k3;->w(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0

    :cond_b
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_16

    check-cast p0, Ljava/util/Set;

    invoke-static {p0, p1}, Lcom/google/common/collect/k3;->t(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_16
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_21

    check-cast p0, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/google/common/collect/k3;->j(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_21
    invoke-static {p0, p1}, Lcom/google/common/collect/k3;->h(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
