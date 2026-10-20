###### Class com.google.common.graph.y (com.google.common.graph.y)
.class abstract Lcom/google/common/graph/y;
.super Lcom/google/common/graph/n;
.source "ForwardingGraph.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/n<",
        "TN;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/graph/n;-><init>()V

    return-void
.end method


# virtual methods
.method abstract B()Lcom/google/common/graph/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/s<",
            "TN;>;"
        }
    .end annotation
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/graph/y;->a(Ljava/lang/Object;)Ljava/util/Set;

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

    invoke-virtual {p0}, Lcom/google/common/graph/y;->B()Lcom/google/common/graph/s;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/s;->a(Ljava/lang/Object;)Ljava/util/Set;

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

    invoke-virtual {p0}, Lcom/google/common/graph/y;->B()Lcom/google/common/graph/s;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/s;->c(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public d()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/graph/y;->B()Lcom/google/common/graph/s;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/s;->d()Z

    move-result v0

    return v0
.end method

.method public e()Lcom/google/common/graph/ElementOrder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ElementOrder<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/y;->B()Lcom/google/common/graph/s;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/s;->e()Lcom/google/common/graph/ElementOrder;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/graph/y;->B()Lcom/google/common/graph/s;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/s;->f()Z

    move-result v0

    return v0
.end method

.method public g(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/y;->B()Lcom/google/common/graph/s;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/s;->g(Ljava/lang/Object;)Ljava/util/Set;

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

    invoke-virtual {p0}, Lcom/google/common/graph/y;->B()Lcom/google/common/graph/s;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/s;->h(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public i()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/y;->B()Lcom/google/common/graph/s;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/s;->i()Ljava/util/Set;

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

    invoke-virtual {p0}, Lcom/google/common/graph/y;->B()Lcom/google/common/graph/s;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/s;->j()Lcom/google/common/graph/ElementOrder;

    move-result-object v0

    return-object v0
.end method

.method public l(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/y;->B()Lcom/google/common/graph/s;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/s;->l(Ljava/lang/Object;)I

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

    invoke-virtual {p0}, Lcom/google/common/graph/y;->B()Lcom/google/common/graph/s;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/s;->m(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public n(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/y;->B()Lcom/google/common/graph/s;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/s;->n(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected z()J
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/graph/y;->B()Lcom/google/common/graph/s;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/s;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
