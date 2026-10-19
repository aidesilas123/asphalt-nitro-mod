###### Class com.google.common.graph.n0 (com.google.common.graph.n0)
.class final Lcom/google/common/graph/n0;
.super Lcom/google/common/graph/p0;
.source "StandardMutableNetwork.java"

# interfaces
.implements Lcom/google/common/graph/i0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/p0<",
        "TN;TE;>;",
        "Lcom/google/common/graph/i0<",
        "TN;TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/graph/NetworkBuilder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/NetworkBuilder<",
            "-TN;-TE;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/graph/p0;-><init>(Lcom/google/common/graph/NetworkBuilder;)V

    return-void
.end method

.method private E(Ljava/lang/Object;)Lcom/google/common/graph/l0;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lcom/google/common/graph/l0<",
            "TN;TE;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/graph/n0;->F()Lcom/google/common/graph/l0;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/graph/p0;->f:Lcom/google/common/graph/e0;

    invoke-virtual {v1, p1, v0}, Lcom/google/common/graph/e0;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    return-object v0
.end method

.method private F()Lcom/google/common/graph/l0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/l0<",
            "TN;TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/p0;->d()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/google/common/graph/p0;->q()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/google/common/graph/u;->n()Lcom/google/common/graph/u;

    move-result-object v0

    goto :goto_25

    :cond_11
    invoke-static {}, Lcom/google/common/graph/v;->l()Lcom/google/common/graph/v;

    move-result-object v0

    goto :goto_25

    :cond_16
    invoke-virtual {p0}, Lcom/google/common/graph/p0;->q()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/google/common/graph/t0;->n()Lcom/google/common/graph/t0;

    move-result-object v0

    goto :goto_25

    :cond_21
    invoke-static {}, Lcom/google/common/graph/u0;->k()Lcom/google/common/graph/u0;

    move-result-object v0

    :goto_25
    return-object v0
.end method


# virtual methods
.method public k(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    const-string v0, "node"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/google/common/graph/p0;->D(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 p1, 0x0

    return p1

    :cond_d
    invoke-direct {p0, p1}, Lcom/google/common/graph/n0;->E(Ljava/lang/Object;)Lcom/google/common/graph/l0;

    const/4 p1, 0x1

    return p1
.end method

.method public y(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TE;)Z"
        }
    .end annotation

    const-string v0, "nodeU"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nodeV"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "edge"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p3}, Lcom/google/common/graph/p0;->C(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    invoke-virtual {p0, p3}, Lcom/google/common/graph/p0;->s(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcom/google/common/graph/EndpointPair;->j(Lcom/google/common/graph/k0;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/graph/EndpointPair;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v2, "Edge %s already exists between the following nodes: %s, so it cannot be reused to connect the following nodes: %s."

    invoke-static {p2, v2, p3, v0, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    :cond_28
    iget-object v0, p0, Lcom/google/common/graph/p0;->f:Lcom/google/common/graph/e0;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/e0;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/l0;

    invoke-virtual {p0}, Lcom/google/common/graph/p0;->q()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_49

    if-eqz v0, :cond_43

    invoke-interface {v0}, Lcom/google/common/graph/l0;->a()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    :cond_43
    const/4 v1, 0x1

    :cond_44
    const-string v2, "Nodes %s and %s are already connected by a different edge. To construct a graph that allows parallel edges, call allowsParallelEdges(true) on the Builder."

    invoke-static {v1, v2, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_49
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/common/graph/p0;->f()Z

    move-result v2

    if-nez v2, :cond_5a

    xor-int/lit8 v2, v1, 0x1

    const-string v4, "Cannot add self-loop edge on node %s, as self-loops are not allowed. To construct a graph that allows self-loops, call allowsSelfLoops(true) on the Builder."

    invoke-static {v2, v4, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    :cond_5a
    if-nez v0, :cond_60

    invoke-direct {p0, p1}, Lcom/google/common/graph/n0;->E(Ljava/lang/Object;)Lcom/google/common/graph/l0;

    move-result-object v0

    :cond_60
    invoke-interface {v0, p3, p2}, Lcom/google/common/graph/l0;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/graph/p0;->f:Lcom/google/common/graph/e0;

    invoke-virtual {v0, p2}, Lcom/google/common/graph/e0;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/l0;

    if-nez v0, :cond_71

    invoke-direct {p0, p2}, Lcom/google/common/graph/n0;->E(Ljava/lang/Object;)Lcom/google/common/graph/l0;

    move-result-object v0

    :cond_71
    invoke-interface {v0, p3, p1, v1}, Lcom/google/common/graph/l0;->e(Ljava/lang/Object;Ljava/lang/Object;Z)V

    iget-object p2, p0, Lcom/google/common/graph/p0;->g:Lcom/google/common/graph/e0;

    invoke-virtual {p2, p3, p1}, Lcom/google/common/graph/e0;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v3
.end method
