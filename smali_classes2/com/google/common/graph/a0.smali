###### Class com.google.common.graph.a0 (com.google.common.graph.a0)
.class abstract Lcom/google/common/graph/a0;
.super Lcom/google/common/graph/r;
.source "ForwardingValueGraph.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/r<",
        "TN;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/graph/r;-><init>()V

    return-void
.end method


# virtual methods
.method abstract C()Lcom/google/common/graph/v0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/v0<",
            "TN;TV;>;"
        }
    .end annotation
.end method

.method public d()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/graph/a0;->C()Lcom/google/common/graph/v0;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/v0;->d()Z

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

    invoke-virtual {p0}, Lcom/google/common/graph/a0;->C()Lcom/google/common/graph/v0;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/v0;->e()Lcom/google/common/graph/ElementOrder;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/graph/a0;->C()Lcom/google/common/graph/v0;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/v0;->f()Z

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

    invoke-virtual {p0}, Lcom/google/common/graph/a0;->C()Lcom/google/common/graph/v0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/v0;->g(Ljava/lang/Object;)Ljava/util/Set;

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

    invoke-virtual {p0}, Lcom/google/common/graph/a0;->C()Lcom/google/common/graph/v0;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/v0;->i()Ljava/util/Set;

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

    invoke-virtual {p0}, Lcom/google/common/graph/a0;->C()Lcom/google/common/graph/v0;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/v0;->j()Lcom/google/common/graph/ElementOrder;

    move-result-object v0

    return-object v0
.end method

.method public n(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/a0;->C()Lcom/google/common/graph/v0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/v0;->n(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected z()J
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/graph/a0;->C()Lcom/google/common/graph/v0;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/v0;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
