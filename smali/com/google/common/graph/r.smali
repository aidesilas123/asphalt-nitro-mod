###### Class com.google.common.graph.r (com.google.common.graph.r)
.class public abstract Lcom/google/common/graph/r;
.super Lcom/google/common/graph/l;
.source "AbstractValueGraph.java"

# interfaces
.implements Lcom/google/common/graph/v0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/l<",
        "TN;>;",
        "Lcom/google/common/graph/v0<",
        "TN;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/graph/l;-><init>()V

    return-void
.end method

.method private static B(Lcom/google/common/graph/v0;)Ljava/util/Map;
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
            "Ljava/util/Map<",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/graph/r$a;

    invoke-direct {v0, p0}, Lcom/google/common/graph/r$a;-><init>(Lcom/google/common/graph/v0;)V

    invoke-interface {p0}, Lcom/google/common/graph/v0;->b()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/google/common/collect/Maps;->asMap(Ljava/util/Set;Lcom/google/common/base/f;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic b()Ljava/util/Set;
    .registers 2

    invoke-super {p0}, Lcom/google/common/graph/l;->b()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/common/graph/v0;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/common/graph/v0;

    invoke-interface {p0}, Lcom/google/common/graph/v0;->d()Z

    move-result v1

    invoke-interface {p1}, Lcom/google/common/graph/v0;->d()Z

    move-result v3

    if-ne v1, v3, :cond_33

    invoke-interface {p0}, Lcom/google/common/graph/v0;->i()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/common/graph/v0;->i()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-static {p0}, Lcom/google/common/graph/r;->B(Lcom/google/common/graph/v0;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Lcom/google/common/graph/r;->B(Lcom/google/common/graph/v0;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    :goto_34
    return v0
.end method

.method public bridge synthetic h(Ljava/lang/Object;)Ljava/util/Set;
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/graph/l;->h(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .registers 2

    invoke-static {p0}, Lcom/google/common/graph/r;->B(Lcom/google/common/graph/v0;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic j()Lcom/google/common/graph/ElementOrder;
    .registers 2

    invoke-super {p0}, Lcom/google/common/graph/l;->j()Lcom/google/common/graph/ElementOrder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic l(Ljava/lang/Object;)I
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/graph/l;->l(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic m(Ljava/lang/Object;)I
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/graph/l;->m(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic n(Ljava/lang/Object;)I
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/graph/l;->n(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    invoke-interface {p0}, Lcom/google/common/graph/v0;->d()Z

    move-result v0

    invoke-interface {p0}, Lcom/google/common/graph/v0;->f()Z

    move-result v1

    invoke-interface {p0}, Lcom/google/common/graph/v0;->i()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/google/common/graph/r;->B(Lcom/google/common/graph/v0;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x3b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "isDirected: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", allowsSelfLoops: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", nodes: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", edges: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
