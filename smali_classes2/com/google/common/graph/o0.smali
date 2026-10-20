###### Class com.google.common.graph.o0 (com.google.common.graph.o0)
.class final Lcom/google/common/graph/o0;
.super Lcom/google/common/graph/q0;
.source "StandardMutableValueGraph.java"

# interfaces
.implements Lcom/google/common/graph/j0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/q0<",
        "TN;TV;>;",
        "Lcom/google/common/graph/j0<",
        "TN;TV;>;"
    }
.end annotation


# instance fields
.field private final f:Lcom/google/common/graph/ElementOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/ElementOrder<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/graph/o;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/o<",
            "-TN;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/graph/q0;-><init>(Lcom/google/common/graph/o;)V

    iget-object p1, p1, Lcom/google/common/graph/o;->d:Lcom/google/common/graph/ElementOrder;

    invoke-virtual {p1}, Lcom/google/common/graph/ElementOrder;->a()Lcom/google/common/graph/ElementOrder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/graph/o0;->f:Lcom/google/common/graph/ElementOrder;

    return-void
.end method

.method private F(Ljava/lang/Object;)Lcom/google/common/graph/c0;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lcom/google/common/graph/c0<",
            "TN;TV;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/graph/o0;->G()Lcom/google/common/graph/c0;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/graph/q0;->d:Lcom/google/common/graph/e0;

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

.method private G()Lcom/google/common/graph/c0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/c0<",
            "TN;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/q0;->d()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/common/graph/o0;->f:Lcom/google/common/graph/ElementOrder;

    invoke-static {v0}, Lcom/google/common/graph/t;->s(Lcom/google/common/graph/ElementOrder;)Lcom/google/common/graph/t;

    move-result-object v0

    goto :goto_13

    :cond_d
    iget-object v0, p0, Lcom/google/common/graph/o0;->f:Lcom/google/common/graph/ElementOrder;

    invoke-static {v0}, Lcom/google/common/graph/s0;->i(Lcom/google/common/graph/ElementOrder;)Lcom/google/common/graph/s0;

    move-result-object v0

    :goto_13
    return-object v0
.end method


# virtual methods
.method public j()Lcom/google/common/graph/ElementOrder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ElementOrder<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/o0;->f:Lcom/google/common/graph/ElementOrder;

    return-object v0
.end method

.method public k(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    const-string v0, "node"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/google/common/graph/q0;->D(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 p1, 0x0

    return p1

    :cond_d
    invoke-direct {p0, p1}, Lcom/google/common/graph/o0;->F(Ljava/lang/Object;)Lcom/google/common/graph/c0;

    const/4 p1, 0x1

    return p1
.end method

.method public x(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TV;)TV;"
        }
    .end annotation

    const-string v0, "nodeU"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nodeV"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "value"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/common/graph/q0;->f()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot add self-loop edge on node %s, as self-loops are not allowed. To construct a graph that allows self-loops, call allowsSelfLoops(true) on the Builder."

    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    :cond_20
    iget-object v0, p0, Lcom/google/common/graph/q0;->d:Lcom/google/common/graph/e0;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/e0;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/c0;

    if-nez v0, :cond_2e

    invoke-direct {p0, p1}, Lcom/google/common/graph/o0;->F(Ljava/lang/Object;)Lcom/google/common/graph/c0;

    move-result-object v0

    :cond_2e
    invoke-interface {v0, p2, p3}, Lcom/google/common/graph/c0;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/graph/q0;->d:Lcom/google/common/graph/e0;

    invoke-virtual {v1, p2}, Lcom/google/common/graph/e0;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/graph/c0;

    if-nez v1, :cond_40

    invoke-direct {p0, p2}, Lcom/google/common/graph/o0;->F(Ljava/lang/Object;)Lcom/google/common/graph/c0;

    move-result-object v1

    :cond_40
    invoke-interface {v1, p1, p3}, Lcom/google/common/graph/c0;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez v0, :cond_4f

    iget-wide p1, p0, Lcom/google/common/graph/q0;->e:J

    const-wide/16 v1, 0x1

    add-long/2addr p1, v1

    iput-wide p1, p0, Lcom/google/common/graph/q0;->e:J

    invoke-static {p1, p2}, Lcom/google/common/graph/Graphs;->e(J)J

    :cond_4f
    return-object v0
.end method
