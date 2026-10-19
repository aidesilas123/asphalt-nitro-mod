###### Class com.google.common.graph.z (com.google.common.graph.z)
.class abstract Lcom/google/common/graph/z;
.super Lcom/google/common/graph/p;
.source "ForwardingNetwork.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/p<",
        "TN;TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/graph/p;-><init>()V

    return-void
.end method


# virtual methods
.method abstract A()Lcom/google/common/graph/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/k0<",
            "TN;TE;>;"
        }
    .end annotation
.end method

.method public b()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/z;->A()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/k0;->b()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/graph/z;->A()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/k0;->d()Z

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

    invoke-virtual {p0}, Lcom/google/common/graph/z;->A()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/k0;->e()Lcom/google/common/graph/ElementOrder;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/graph/z;->A()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/k0;->f()Z

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

    invoke-virtual {p0}, Lcom/google/common/graph/z;->A()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->g(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/z;->A()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->h(Ljava/lang/Object;)Ljava/util/Set;

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

    invoke-virtual {p0}, Lcom/google/common/graph/z;->A()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/k0;->i()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public q()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/graph/z;->A()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/k0;->q()Z

    move-result v0

    return v0
.end method

.method public v()Lcom/google/common/graph/ElementOrder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ElementOrder<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/z;->A()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/k0;->v()Lcom/google/common/graph/ElementOrder;

    move-result-object v0

    return-object v0
.end method
