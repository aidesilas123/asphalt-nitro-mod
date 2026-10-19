###### Class com.google.common.graph.ImmutableGraph (com.google.common.graph.ImmutableGraph)
.class public Lcom/google/common/graph/ImmutableGraph;
.super Lcom/google/common/graph/y;
.source "ImmutableGraph.java"


# annotations
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
.field private final a:Lcom/google/common/graph/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/s<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/graph/s;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/s<",
            "TN;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/graph/y;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/ImmutableGraph;->a:Lcom/google/common/graph/s;

    return-void
.end method

.method private static C(Lcom/google/common/graph/b0;Ljava/lang/Object;)Lcom/google/common/graph/c0;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/b0<",
            "TN;>;TN;)",
            "Lcom/google/common/graph/c0<",
            "TN;",
            "Lcom/google/common/graph/GraphConstants$Presence;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/graph/GraphConstants$Presence;->a:Lcom/google/common/graph/GraphConstants$Presence;

    invoke-static {v0}, Lcom/google/common/base/Functions;->constant(Ljava/lang/Object;)Lcom/google/common/base/f;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/common/graph/b0;->d()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {p0, p1}, Lcom/google/common/graph/b0;->h(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p1, p0, v0}, Lcom/google/common/graph/t;->t(Ljava/lang/Object;Ljava/lang/Iterable;Lcom/google/common/base/f;)Lcom/google/common/graph/t;

    move-result-object p0

    goto :goto_21

    :cond_15
    invoke-interface {p0, p1}, Lcom/google/common/graph/b0;->g(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/google/common/collect/Maps;->asMap(Ljava/util/Set;Lcom/google/common/base/f;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/graph/s0;->j(Ljava/util/Map;)Lcom/google/common/graph/s0;

    move-result-object p0

    :goto_21
    return-object p0
.end method

.method private static D(Lcom/google/common/graph/b0;)Lcom/google/common/collect/ImmutableMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/b0<",
            "TN;>;)",
            "Lcom/google/common/collect/ImmutableMap<",
            "TN;",
            "Lcom/google/common/graph/c0<",
            "TN;",
            "Lcom/google/common/graph/GraphConstants$Presence;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/common/graph/b0;->i()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/common/graph/ImmutableGraph;->C(Lcom/google/common/graph/b0;Ljava/lang/Object;)Lcom/google/common/graph/c0;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/ImmutableMap$b;->g(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    goto :goto_c

    :cond_1e
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$b;->d()Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method public static copyOf(Lcom/google/common/graph/ImmutableGraph;)Lcom/google/common/graph/ImmutableGraph;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/ImmutableGraph<",
            "TN;>;)",
            "Lcom/google/common/graph/ImmutableGraph<",
            "TN;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/graph/ImmutableGraph;

    return-object p0
.end method

.method public static copyOf(Lcom/google/common/graph/b0;)Lcom/google/common/graph/ImmutableGraph;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/b0<",
            "TN;>;)",
            "Lcom/google/common/graph/ImmutableGraph<",
            "TN;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/graph/ImmutableGraph;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/google/common/graph/ImmutableGraph;

    goto :goto_23

    :cond_7
    new-instance v0, Lcom/google/common/graph/ImmutableGraph;

    new-instance v1, Lcom/google/common/graph/q0;

    invoke-static {p0}, Lcom/google/common/graph/GraphBuilder;->from(Lcom/google/common/graph/b0;)Lcom/google/common/graph/GraphBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/google/common/graph/ImmutableGraph;->D(Lcom/google/common/graph/b0;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    invoke-interface {p0}, Lcom/google/common/graph/b0;->b()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    int-to-long v4, p0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/common/graph/q0;-><init>(Lcom/google/common/graph/o;Ljava/util/Map;J)V

    invoke-direct {v0, v1}, Lcom/google/common/graph/ImmutableGraph;-><init>(Lcom/google/common/graph/s;)V

    move-object p0, v0

    :goto_23
    return-object p0
.end method


# virtual methods
.method B()Lcom/google/common/graph/s;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/s<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/ImmutableGraph;->a:Lcom/google/common/graph/s;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/util/Set;
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/graph/y;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Ljava/util/Set;
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/graph/y;->c(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d()Z
    .registers 2

    invoke-super {p0}, Lcom/google/common/graph/y;->d()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic e()Lcom/google/common/graph/ElementOrder;
    .registers 2

    invoke-super {p0}, Lcom/google/common/graph/y;->e()Lcom/google/common/graph/ElementOrder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic f()Z
    .registers 2

    invoke-super {p0}, Lcom/google/common/graph/y;->f()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic g(Ljava/lang/Object;)Ljava/util/Set;
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/graph/y;->g(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic h(Ljava/lang/Object;)Ljava/util/Set;
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/graph/y;->h(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic i()Ljava/util/Set;
    .registers 2

    invoke-super {p0}, Lcom/google/common/graph/y;->i()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/google/common/graph/ElementOrder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ElementOrder<",
            "TN;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/graph/ElementOrder;->stable()Lcom/google/common/graph/ElementOrder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic l(Ljava/lang/Object;)I
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/graph/y;->l(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic m(Ljava/lang/Object;)I
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/graph/y;->m(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic n(Ljava/lang/Object;)I
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/graph/y;->n(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
