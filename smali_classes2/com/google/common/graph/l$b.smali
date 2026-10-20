###### Class com.google.common.graph.l.b (com.google.common.graph.l$b)
.class Lcom/google/common/graph/l$b;
.super Lcom/google/common/graph/d0;
.source "AbstractBaseGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/l;->h(Ljava/lang/Object;)Ljava/util/Set;
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


# direct methods
.method constructor <init>(Lcom/google/common/graph/l;Lcom/google/common/graph/s;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0, p2, p3}, Lcom/google/common/graph/d0;-><init>(Lcom/google/common/graph/s;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic f(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .registers 3

    iget-object v0, p0, Lcom/google/common/graph/d0;->a:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/google/common/graph/EndpointPair;->ordered(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1
.end method

.method private synthetic h(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .registers 3

    iget-object v0, p0, Lcom/google/common/graph/d0;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/google/common/graph/EndpointPair;->ordered(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1
.end method

.method private synthetic j(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .registers 3

    iget-object v0, p0, Lcom/google/common/graph/d0;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/google/common/graph/EndpointPair;->unordered(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public e()Lcom/google/common/collect/o3;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/o3<",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/d0;->b:Lcom/google/common/graph/s;

    invoke-interface {v0}, Lcom/google/common/graph/s;->d()Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/google/common/graph/d0;->b:Lcom/google/common/graph/s;

    iget-object v1, p0, Lcom/google/common/graph/d0;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/common/graph/s;->c(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/graph/a;

    invoke-direct {v1, p0}, Lcom/google/common/graph/a;-><init>(Lcom/google/common/graph/l$b;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/f;)Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/graph/d0;->b:Lcom/google/common/graph/s;

    iget-object v2, p0, Lcom/google/common/graph/d0;->a:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lcom/google/common/graph/s;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/graph/d0;->a:Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/Sets;->difference(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Sets$l;->e()Lcom/google/common/collect/o3;

    move-result-object v1

    new-instance v2, Lcom/google/common/graph/b;

    invoke-direct {v2, p0}, Lcom/google/common/graph/b;-><init>(Lcom/google/common/graph/l$b;)V

    invoke-static {v1, v2}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/f;)Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->concat(Ljava/util/Iterator;Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->unmodifiableIterator(Ljava/util/Iterator;)Lcom/google/common/collect/o3;

    move-result-object v0

    return-object v0

    :cond_45
    iget-object v0, p0, Lcom/google/common/graph/d0;->b:Lcom/google/common/graph/s;

    iget-object v1, p0, Lcom/google/common/graph/d0;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/common/graph/s;->g(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/graph/c;

    invoke-direct {v1, p0}, Lcom/google/common/graph/c;-><init>(Lcom/google/common/graph/l$b;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/f;)Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->unmodifiableIterator(Ljava/util/Iterator;)Lcom/google/common/collect/o3;

    move-result-object v0

    return-object v0
.end method

.method public synthetic g(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/common/graph/l$b;->f(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1
.end method

.method public synthetic i(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/common/graph/l$b;->h(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/graph/l$b;->e()Lcom/google/common/collect/o3;

    move-result-object v0

    return-object v0
.end method

.method public synthetic l(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/common/graph/l$b;->j(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1
.end method
