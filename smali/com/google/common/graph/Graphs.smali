###### Class com.google.common.graph.Graphs (com.google.common.graph.Graphs)
.class public final Lcom/google/common/graph/Graphs;
.super Ljava/lang/Object;
.source "Graphs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/Graphs$NodeVisitState;,
        Lcom/google/common/graph/Graphs$b;,
        Lcom/google/common/graph/Graphs$c;,
        Lcom/google/common/graph/Graphs$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/common/graph/b0;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/b0<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/common/graph/b0;->d()Z

    move-result p0

    if-nez p0, :cond_f

    invoke-static {p2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method static b(I)I
    .registers 3

    if-ltz p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "Not true that %s is non-negative."

    invoke-static {v0, v1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    return p0
.end method

.method static c(J)J
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const-string v1, "Not true that %s is non-negative."

    invoke-static {v0, v1, p0, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    return-wide p0
.end method

.method public static copyOf(Lcom/google/common/graph/b0;)Lcom/google/common/graph/h0;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/b0<",
            "TN;>;)",
            "Lcom/google/common/graph/h0<",
            "TN;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/graph/GraphBuilder;->from(Lcom/google/common/graph/b0;)Lcom/google/common/graph/GraphBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/common/graph/b0;->i()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/GraphBuilder;->d(I)Lcom/google/common/graph/GraphBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/graph/GraphBuilder;->b()Lcom/google/common/graph/h0;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/common/graph/b0;->i()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/common/graph/h0;->k(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_2a
    invoke-interface {p0}, Lcom/google/common/graph/b0;->b()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_32
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/graph/EndpointPair;

    invoke-virtual {v1}, Lcom/google/common/graph/EndpointPair;->g()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/common/graph/EndpointPair;->h()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/google/common/graph/h0;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_32

    :cond_4a
    return-object v0
.end method

.method public static copyOf(Lcom/google/common/graph/k0;)Lcom/google/common/graph/i0;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/k0<",
            "TN;TE;>;)",
            "Lcom/google/common/graph/i0<",
            "TN;TE;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/graph/NetworkBuilder;->from(Lcom/google/common/graph/k0;)Lcom/google/common/graph/NetworkBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/common/graph/k0;->i()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/NetworkBuilder;->g(I)Lcom/google/common/graph/NetworkBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/common/graph/k0;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/NetworkBuilder;->f(I)Lcom/google/common/graph/NetworkBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/graph/NetworkBuilder;->c()Lcom/google/common/graph/i0;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/common/graph/k0;->i()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/common/graph/i0;->k(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_36
    invoke-interface {p0}, Lcom/google/common/graph/k0;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/google/common/graph/k0;->s(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/graph/EndpointPair;->g()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/common/graph/EndpointPair;->h()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v4, v3, v2}, Lcom/google/common/graph/i0;->y(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_3e

    :cond_58
    return-object v0
.end method

.method public static copyOf(Lcom/google/common/graph/v0;)Lcom/google/common/graph/j0;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/v0<",
            "TN;TV;>;)",
            "Lcom/google/common/graph/j0<",
            "TN;TV;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/graph/ValueGraphBuilder;->from(Lcom/google/common/graph/v0;)Lcom/google/common/graph/ValueGraphBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/common/graph/v0;->i()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/ValueGraphBuilder;->d(I)Lcom/google/common/graph/ValueGraphBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/graph/ValueGraphBuilder;->b()Lcom/google/common/graph/j0;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/common/graph/v0;->i()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/common/graph/j0;->k(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_2a
    invoke-interface {p0}, Lcom/google/common/graph/v0;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/graph/EndpointPair;

    invoke-virtual {v2}, Lcom/google/common/graph/EndpointPair;->g()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/common/graph/EndpointPair;->h()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/common/graph/EndpointPair;->g()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/common/graph/EndpointPair;->h()Ljava/lang/Object;

    move-result-object v2

    const/4 v6, 0x0

    invoke-interface {p0, v5, v2, v6}, Lcom/google/common/graph/v0;->r(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v3, v4, v2}, Lcom/google/common/graph/j0;->x(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    :cond_5a
    return-object v0
.end method

.method static d(I)I
    .registers 3

    if-lez p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "Not true that %s is positive."

    invoke-static {v0, v1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    return p0
.end method

.method static e(J)J
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const-string v1, "Not true that %s is positive."

    invoke-static {v0, v1, p0, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    return-wide p0
.end method

.method private static f(Lcom/google/common/graph/b0;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/b0<",
            "TN;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/common/graph/Graphs$NodeVisitState;",
            ">;TN;TN;)Z"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/Graphs$NodeVisitState;

    sget-object v1, Lcom/google/common/graph/Graphs$NodeVisitState;->b:Lcom/google/common/graph/Graphs$NodeVisitState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_c

    return v2

    :cond_c
    sget-object v1, Lcom/google/common/graph/Graphs$NodeVisitState;->a:Lcom/google/common/graph/Graphs$NodeVisitState;

    const/4 v3, 0x1

    if-ne v0, v1, :cond_12

    return v3

    :cond_12
    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, p2}, Lcom/google/common/graph/b0;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v1, p3}, Lcom/google/common/graph/Graphs;->a(Lcom/google/common/graph/b0;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-static {p0, p1, v1, p2}, Lcom/google/common/graph/Graphs;->f(Lcom/google/common/graph/b0;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    return v3

    :cond_34
    sget-object p0, Lcom/google/common/graph/Graphs$NodeVisitState;->b:Lcom/google/common/graph/Graphs$NodeVisitState;

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method

.method public static hasCycle(Lcom/google/common/graph/b0;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/b0<",
            "TN;>;)Z"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/common/graph/b0;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    :cond_c
    invoke-interface {p0}, Lcom/google/common/graph/b0;->d()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1e

    invoke-interface {p0}, Lcom/google/common/graph/b0;->i()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lt v0, v2, :cond_1e

    return v3

    :cond_1e
    invoke-interface {p0}, Lcom/google/common/graph/b0;->i()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/common/graph/b0;->i()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0, v0, v4, v5}, Lcom/google/common/graph/Graphs;->f(Lcom/google/common/graph/b0;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    return v3

    :cond_44
    return v1
.end method

.method public static hasCycle(Lcom/google/common/graph/k0;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/k0<",
            "**>;)Z"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/common/graph/k0;->d()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-interface {p0}, Lcom/google/common/graph/k0;->q()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Lcom/google/common/graph/k0;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p0}, Lcom/google/common/graph/k0;->t()Lcom/google/common/graph/b0;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/graph/b0;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-le v0, v1, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    invoke-interface {p0}, Lcom/google/common/graph/k0;->t()Lcom/google/common/graph/b0;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/graph/Graphs;->hasCycle(Lcom/google/common/graph/b0;)Z

    move-result p0

    return p0
.end method

.method public static inducedSubgraph(Lcom/google/common/graph/b0;Ljava/lang/Iterable;)Lcom/google/common/graph/h0;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/b0<",
            "TN;>;",
            "Ljava/lang/Iterable<",
            "+TN;>;)",
            "Lcom/google/common/graph/h0<",
            "TN;>;"
        }
    .end annotation

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_18

    invoke-static {p0}, Lcom/google/common/graph/GraphBuilder;->from(Lcom/google/common/graph/b0;)Lcom/google/common/graph/GraphBuilder;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/GraphBuilder;->d(I)Lcom/google/common/graph/GraphBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/graph/GraphBuilder;->b()Lcom/google/common/graph/h0;

    move-result-object v0

    goto :goto_20

    :cond_18
    invoke-static {p0}, Lcom/google/common/graph/GraphBuilder;->from(Lcom/google/common/graph/b0;)Lcom/google/common/graph/GraphBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/graph/GraphBuilder;->b()Lcom/google/common/graph/h0;

    move-result-object v0

    :goto_20
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/graph/h0;->k(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_32
    invoke-interface {v0}, Lcom/google/common/graph/b0;->i()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/google/common/graph/b0;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4c
    :goto_4c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/common/graph/b0;->i()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v0, v1, v3}, Lcom/google/common/graph/h0;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_4c

    :cond_64
    return-object v0
.end method

.method public static inducedSubgraph(Lcom/google/common/graph/k0;Ljava/lang/Iterable;)Lcom/google/common/graph/i0;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/k0<",
            "TN;TE;>;",
            "Ljava/lang/Iterable<",
            "+TN;>;)",
            "Lcom/google/common/graph/i0<",
            "TN;TE;>;"
        }
    .end annotation

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_18

    invoke-static {p0}, Lcom/google/common/graph/NetworkBuilder;->from(Lcom/google/common/graph/k0;)Lcom/google/common/graph/NetworkBuilder;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/NetworkBuilder;->g(I)Lcom/google/common/graph/NetworkBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/graph/NetworkBuilder;->c()Lcom/google/common/graph/i0;

    move-result-object v0

    goto :goto_20

    :cond_18
    invoke-static {p0}, Lcom/google/common/graph/NetworkBuilder;->from(Lcom/google/common/graph/k0;)Lcom/google/common/graph/NetworkBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/graph/NetworkBuilder;->c()Lcom/google/common/graph/i0;

    move-result-object v0

    :goto_20
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/graph/i0;->k(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_32
    invoke-interface {v0}, Lcom/google/common/graph/k0;->i()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/google/common/graph/k0;->o(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4c
    :goto_4c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, Lcom/google/common/graph/k0;->s(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/common/graph/EndpointPair;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Lcom/google/common/graph/k0;->i()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-interface {v0, v1, v4, v3}, Lcom/google/common/graph/i0;->y(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_4c

    :cond_6c
    return-object v0
.end method

.method public static inducedSubgraph(Lcom/google/common/graph/v0;Ljava/lang/Iterable;)Lcom/google/common/graph/j0;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/v0<",
            "TN;TV;>;",
            "Ljava/lang/Iterable<",
            "+TN;>;)",
            "Lcom/google/common/graph/j0<",
            "TN;TV;>;"
        }
    .end annotation

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_18

    invoke-static {p0}, Lcom/google/common/graph/ValueGraphBuilder;->from(Lcom/google/common/graph/v0;)Lcom/google/common/graph/ValueGraphBuilder;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/ValueGraphBuilder;->d(I)Lcom/google/common/graph/ValueGraphBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/graph/ValueGraphBuilder;->b()Lcom/google/common/graph/j0;

    move-result-object v0

    goto :goto_20

    :cond_18
    invoke-static {p0}, Lcom/google/common/graph/ValueGraphBuilder;->from(Lcom/google/common/graph/v0;)Lcom/google/common/graph/ValueGraphBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/graph/ValueGraphBuilder;->b()Lcom/google/common/graph/j0;

    move-result-object v0

    :goto_20
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/graph/j0;->k(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_32
    invoke-interface {v0}, Lcom/google/common/graph/v0;->i()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/google/common/graph/v0;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4c
    :goto_4c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/common/graph/v0;->i()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    const/4 v4, 0x0

    invoke-interface {p0, v1, v3, v4}, Lcom/google/common/graph/v0;->r(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v1, v3, v4}, Lcom/google/common/graph/j0;->x(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4c

    :cond_6c
    return-object v0
.end method

.method public static reachableNodes(Lcom/google/common/graph/b0;Ljava/lang/Object;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/b0<",
            "TN;>;TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/common/graph/b0;->i()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Node %s is not an element of this graph."

    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/google/common/graph/Traverser;->forGraph(Lcom/google/common/graph/r0;)Lcom/google/common/graph/Traverser;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/common/graph/Traverser;->b(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public static transitiveClosure(Lcom/google/common/graph/b0;)Lcom/google/common/graph/b0;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/b0<",
            "TN;>;)",
            "Lcom/google/common/graph/b0<",
            "TN;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/graph/GraphBuilder;->from(Lcom/google/common/graph/b0;)Lcom/google/common/graph/GraphBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/GraphBuilder;->a(Z)Lcom/google/common/graph/GraphBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/graph/GraphBuilder;->b()Lcom/google/common/graph/h0;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/common/graph/b0;->d()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {p0}, Lcom/google/common/graph/b0;->i()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_88

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/common/graph/Graphs;->reachableNodes(Lcom/google/common/graph/b0;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Lcom/google/common/graph/h0;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_3b
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Lcom/google/common/graph/b0;->i()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_48
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_88

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_48

    invoke-static {p0, v4}, Lcom/google/common/graph/Graphs;->reachableNodes(Lcom/google/common/graph/b0;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x1

    :goto_64
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_48

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    invoke-static {v4, v6}, Lcom/google/common/collect/Iterables;->limit(Ljava/lang/Iterable;I)Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_78
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_86

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v0, v7, v9}, Lcom/google/common/graph/h0;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_78

    :cond_86
    move v6, v8

    goto :goto_64

    :cond_88
    return-object v0
.end method

.method public static transpose(Lcom/google/common/graph/b0;)Lcom/google/common/graph/b0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/b0<",
            "TN;>;)",
            "Lcom/google/common/graph/b0<",
            "TN;>;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/common/graph/b0;->d()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    instance-of v0, p0, Lcom/google/common/graph/Graphs$a;

    if-eqz v0, :cond_12

    check-cast p0, Lcom/google/common/graph/Graphs$a;

    invoke-static {p0}, Lcom/google/common/graph/Graphs$a;->C(Lcom/google/common/graph/Graphs$a;)Lcom/google/common/graph/b0;

    move-result-object p0

    return-object p0

    :cond_12
    new-instance v0, Lcom/google/common/graph/Graphs$a;

    invoke-direct {v0, p0}, Lcom/google/common/graph/Graphs$a;-><init>(Lcom/google/common/graph/b0;)V

    return-object v0
.end method

.method public static transpose(Lcom/google/common/graph/k0;)Lcom/google/common/graph/k0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/k0<",
            "TN;TE;>;)",
            "Lcom/google/common/graph/k0<",
            "TN;TE;>;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/common/graph/k0;->d()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    instance-of v0, p0, Lcom/google/common/graph/Graphs$b;

    if-eqz v0, :cond_12

    check-cast p0, Lcom/google/common/graph/Graphs$b;

    invoke-static {p0}, Lcom/google/common/graph/Graphs$b;->B(Lcom/google/common/graph/Graphs$b;)Lcom/google/common/graph/k0;

    move-result-object p0

    return-object p0

    :cond_12
    new-instance v0, Lcom/google/common/graph/Graphs$b;

    invoke-direct {v0, p0}, Lcom/google/common/graph/Graphs$b;-><init>(Lcom/google/common/graph/k0;)V

    return-object v0
.end method

.method public static transpose(Lcom/google/common/graph/v0;)Lcom/google/common/graph/v0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/v0<",
            "TN;TV;>;)",
            "Lcom/google/common/graph/v0<",
            "TN;TV;>;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/common/graph/v0;->d()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    instance-of v0, p0, Lcom/google/common/graph/Graphs$c;

    if-eqz v0, :cond_12

    check-cast p0, Lcom/google/common/graph/Graphs$c;

    invoke-static {p0}, Lcom/google/common/graph/Graphs$c;->D(Lcom/google/common/graph/Graphs$c;)Lcom/google/common/graph/v0;

    move-result-object p0

    return-object p0

    :cond_12
    new-instance v0, Lcom/google/common/graph/Graphs$c;

    invoke-direct {v0, p0}, Lcom/google/common/graph/Graphs$c;-><init>(Lcom/google/common/graph/v0;)V

    return-object v0
.end method

###### Class com.google.common.graph.Graphs.NodeVisitState (com.google.common.graph.Graphs$NodeVisitState)
.class final enum Lcom/google/common/graph/Graphs$NodeVisitState;
.super Ljava/lang/Enum;
.source "Graphs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/Graphs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NodeVisitState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/graph/Graphs$NodeVisitState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/graph/Graphs$NodeVisitState;

.field public static final enum b:Lcom/google/common/graph/Graphs$NodeVisitState;

.field private static final synthetic c:[Lcom/google/common/graph/Graphs$NodeVisitState;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/common/graph/Graphs$NodeVisitState;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/graph/Graphs$NodeVisitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/graph/Graphs$NodeVisitState;->a:Lcom/google/common/graph/Graphs$NodeVisitState;

    new-instance v0, Lcom/google/common/graph/Graphs$NodeVisitState;

    const-string v1, "COMPLETE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/graph/Graphs$NodeVisitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/graph/Graphs$NodeVisitState;->b:Lcom/google/common/graph/Graphs$NodeVisitState;

    invoke-static {}, Lcom/google/common/graph/Graphs$NodeVisitState;->e()[Lcom/google/common/graph/Graphs$NodeVisitState;

    move-result-object v0

    sput-object v0, Lcom/google/common/graph/Graphs$NodeVisitState;->c:[Lcom/google/common/graph/Graphs$NodeVisitState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic e()[Lcom/google/common/graph/Graphs$NodeVisitState;
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/graph/Graphs$NodeVisitState;

    sget-object v1, Lcom/google/common/graph/Graphs$NodeVisitState;->a:Lcom/google/common/graph/Graphs$NodeVisitState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/graph/Graphs$NodeVisitState;->b:Lcom/google/common/graph/Graphs$NodeVisitState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/graph/Graphs$NodeVisitState;
    .registers 2

    const-class v0, Lcom/google/common/graph/Graphs$NodeVisitState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/graph/Graphs$NodeVisitState;

    return-object p0
.end method

.method public static values()[Lcom/google/common/graph/Graphs$NodeVisitState;
    .registers 1

    sget-object v0, Lcom/google/common/graph/Graphs$NodeVisitState;->c:[Lcom/google/common/graph/Graphs$NodeVisitState;

    invoke-virtual {v0}, [Lcom/google/common/graph/Graphs$NodeVisitState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/graph/Graphs$NodeVisitState;

    return-object v0
.end method

###### Class com.google.common.graph.Graphs.a (com.google.common.graph.Graphs$a)
.class Lcom/google/common/graph/Graphs$a;
.super Lcom/google/common/graph/y;
.source "Graphs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/Graphs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/y<",
        "TN;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/graph/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/b0<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/graph/b0;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/b0<",
            "TN;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/graph/y;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/Graphs$a;->a:Lcom/google/common/graph/b0;

    return-void
.end method

.method static synthetic C(Lcom/google/common/graph/Graphs$a;)Lcom/google/common/graph/b0;
    .registers 1

    iget-object p0, p0, Lcom/google/common/graph/Graphs$a;->a:Lcom/google/common/graph/b0;

    return-object p0
.end method


# virtual methods
.method bridge synthetic B()Lcom/google/common/graph/s;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$a;->D()Lcom/google/common/graph/b0;

    move-result-object v0

    return-object v0
.end method

.method D()Lcom/google/common/graph/b0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/b0<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/Graphs$a;->a:Lcom/google/common/graph/b0;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/graph/Graphs$a;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$a;->D()Lcom/google/common/graph/b0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/b0;->c(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$a;->D()Lcom/google/common/graph/b0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/b0;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/graph/Graphs$a$a;

    invoke-direct {v0, p0, p0, p1}, Lcom/google/common/graph/Graphs$a$a;-><init>(Lcom/google/common/graph/Graphs$a;Lcom/google/common/graph/s;Ljava/lang/Object;)V

    return-object v0
.end method

.method public l(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$a;->D()Lcom/google/common/graph/b0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/b0;->m(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public m(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$a;->D()Lcom/google/common/graph/b0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/b0;->l(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

###### Class com.google.common.graph.Graphs.a.C0263a (com.google.common.graph.Graphs$a$a)
.class Lcom/google/common/graph/Graphs$a$a;
.super Lcom/google/common/graph/d0;
.source "Graphs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/Graphs$a;->h(Ljava/lang/Object;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/graph/d0<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/google/common/graph/Graphs$a;


# direct methods
.method constructor <init>(Lcom/google/common/graph/Graphs$a;Lcom/google/common/graph/s;Ljava/lang/Object;)V
    .registers 4

    iput-object p1, p0, Lcom/google/common/graph/Graphs$a$a;->c:Lcom/google/common/graph/Graphs$a;

    invoke-direct {p0, p2, p3}, Lcom/google/common/graph/d0;-><init>(Lcom/google/common/graph/s;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/Graphs$a$a;->c:Lcom/google/common/graph/Graphs$a;

    invoke-virtual {v0}, Lcom/google/common/graph/Graphs$a;->D()Lcom/google/common/graph/b0;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/graph/d0;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/common/graph/b0;->h(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/graph/Graphs$a$a$a;

    invoke-direct {v1, p0}, Lcom/google/common/graph/Graphs$a$a$a;-><init>(Lcom/google/common/graph/Graphs$a$a;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/f;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.graph.Graphs.a.C0263a.C0264a (com.google.common.graph.Graphs$a$a$a)
.class Lcom/google/common/graph/Graphs$a$a$a;
.super Ljava/lang/Object;
.source "Graphs.java"

# interfaces
.implements Lcom/google/common/base/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/Graphs$a$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/f<",
        "Lcom/google/common/graph/EndpointPair<",
        "TN;>;",
        "Lcom/google/common/graph/EndpointPair<",
        "TN;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/graph/Graphs$a$a;


# direct methods
.method constructor <init>(Lcom/google/common/graph/Graphs$a$a;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/graph/Graphs$a$a$a;->a:Lcom/google/common/graph/Graphs$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/graph/EndpointPair;)Lcom/google/common/graph/EndpointPair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;)",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/Graphs$a$a$a;->a:Lcom/google/common/graph/Graphs$a$a;

    iget-object v0, v0, Lcom/google/common/graph/Graphs$a$a;->c:Lcom/google/common/graph/Graphs$a;

    invoke-virtual {v0}, Lcom/google/common/graph/Graphs$a;->D()Lcom/google/common/graph/b0;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->h()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->g()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/google/common/graph/EndpointPair;->i(Lcom/google/common/graph/b0;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/google/common/graph/EndpointPair;

    invoke-virtual {p0, p1}, Lcom/google/common/graph/Graphs$a$a$a;->a(Lcom/google/common/graph/EndpointPair;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.common.graph.Graphs.b (com.google.common.graph.Graphs$b)
.class Lcom/google/common/graph/Graphs$b;
.super Lcom/google/common/graph/z;
.source "Graphs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/Graphs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/z<",
        "TN;TE;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/graph/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/k0<",
            "TN;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/graph/k0;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/k0<",
            "TN;TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/graph/z;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/Graphs$b;->a:Lcom/google/common/graph/k0;

    return-void
.end method

.method static synthetic B(Lcom/google/common/graph/Graphs$b;)Lcom/google/common/graph/k0;
    .registers 1

    iget-object p0, p0, Lcom/google/common/graph/Graphs$b;->a:Lcom/google/common/graph/k0;

    return-object p0
.end method


# virtual methods
.method A()Lcom/google/common/graph/k0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/k0<",
            "TN;TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/Graphs$b;->a:Lcom/google/common/graph/k0;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/graph/Graphs$b;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$b;->A()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->c(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$b;->A()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public o(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$b;->A()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->w(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$b;->A()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lcom/google/common/graph/k0;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public s(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$b;->A()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->s(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/graph/Graphs$b;->a:Lcom/google/common/graph/k0;

    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->h()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->g()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/google/common/graph/EndpointPair;->j(Lcom/google/common/graph/k0;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1
.end method

.method public w(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$b;->A()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->o(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.common.graph.Graphs.c (com.google.common.graph.Graphs$c)
.class Lcom/google/common/graph/Graphs$c;
.super Lcom/google/common/graph/a0;
.source "Graphs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/Graphs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/a0<",
        "TN;TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/graph/v0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/v0<",
            "TN;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/graph/v0;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/v0<",
            "TN;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/graph/a0;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/Graphs$c;->a:Lcom/google/common/graph/v0;

    return-void
.end method

.method static synthetic D(Lcom/google/common/graph/Graphs$c;)Lcom/google/common/graph/v0;
    .registers 1

    iget-object p0, p0, Lcom/google/common/graph/Graphs$c;->a:Lcom/google/common/graph/v0;

    return-object p0
.end method


# virtual methods
.method C()Lcom/google/common/graph/v0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/v0<",
            "TN;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/Graphs$c;->a:Lcom/google/common/graph/v0;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/graph/Graphs$c;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$c;->C()Lcom/google/common/graph/v0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/v0;->c(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$c;->C()Lcom/google/common/graph/v0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/v0;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$c;->C()Lcom/google/common/graph/v0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/v0;->m(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public m(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$c;->C()Lcom/google/common/graph/v0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/v0;->l(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public r(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$c;->C()Lcom/google/common/graph/v0;

    move-result-object v0

    invoke-interface {v0, p2, p1, p3}, Lcom/google/common/graph/v0;->r(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
