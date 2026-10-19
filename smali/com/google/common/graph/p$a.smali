###### Class com.google.common.graph.p.a (com.google.common.graph.p$a)
.class Lcom/google/common/graph/p$a;
.super Lcom/google/common/graph/n;
.source "AbstractNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/p;->t()Lcom/google/common/graph/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/graph/n<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/graph/p;


# direct methods
.method constructor <init>(Lcom/google/common/graph/p;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/graph/p$a;->a:Lcom/google/common/graph/p;

    invoke-direct {p0}, Lcom/google/common/graph/n;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/graph/p$a;->a(Ljava/lang/Object;)Ljava/util/Set;

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

    iget-object v0, p0, Lcom/google/common/graph/p$a;->a:Lcom/google/common/graph/p;

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/p$a;->a:Lcom/google/common/graph/p;

    invoke-interface {v0}, Lcom/google/common/graph/k0;->q()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-super {p0}, Lcom/google/common/graph/n;->b()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_d
    new-instance v0, Lcom/google/common/graph/p$a$a;

    invoke-direct {v0, p0}, Lcom/google/common/graph/p$a$a;-><init>(Lcom/google/common/graph/p$a;)V

    return-object v0
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

    iget-object v0, p0, Lcom/google/common/graph/p$a;->a:Lcom/google/common/graph/p;

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->c(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lcom/google/common/graph/p$a;->a:Lcom/google/common/graph/p;

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

    iget-object v0, p0, Lcom/google/common/graph/p$a;->a:Lcom/google/common/graph/p;

    invoke-interface {v0}, Lcom/google/common/graph/k0;->e()Lcom/google/common/graph/ElementOrder;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .registers 2

    iget-object v0, p0, Lcom/google/common/graph/p$a;->a:Lcom/google/common/graph/p;

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

    iget-object v0, p0, Lcom/google/common/graph/p$a;->a:Lcom/google/common/graph/p;

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->g(Ljava/lang/Object;)Ljava/util/Set;

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

    iget-object v0, p0, Lcom/google/common/graph/p$a;->a:Lcom/google/common/graph/p;

    invoke-interface {v0}, Lcom/google/common/graph/k0;->i()Ljava/util/Set;

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

    invoke-static {}, Lcom/google/common/graph/ElementOrder;->unordered()Lcom/google/common/graph/ElementOrder;

    move-result-object v0

    return-object v0
.end method
