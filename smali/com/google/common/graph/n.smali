###### Class com.google.common.graph.n (com.google.common.graph.n)
.class public abstract Lcom/google/common/graph/n;
.super Lcom/google/common/graph/l;
.source "AbstractGraph.java"

# interfaces
.implements Lcom/google/common/graph/b0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/l<",
        "TN;>;",
        "Lcom/google/common/graph/b0<",
        "TN;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/graph/l;-><init>()V

    return-void
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
    instance-of v1, p1, Lcom/google/common/graph/b0;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/common/graph/b0;

    invoke-interface {p0}, Lcom/google/common/graph/b0;->d()Z

    move-result v1

    invoke-interface {p1}, Lcom/google/common/graph/b0;->d()Z

    move-result v3

    if-ne v1, v3, :cond_33

    invoke-interface {p0}, Lcom/google/common/graph/b0;->i()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/common/graph/b0;->i()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual {p0}, Lcom/google/common/graph/n;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/common/graph/b0;->b()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

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

    invoke-virtual {p0}, Lcom/google/common/graph/n;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
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

    invoke-interface {p0}, Lcom/google/common/graph/b0;->d()Z

    move-result v0

    invoke-interface {p0}, Lcom/google/common/graph/b0;->f()Z

    move-result v1

    invoke-interface {p0}, Lcom/google/common/graph/b0;->i()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/graph/n;->b()Ljava/util/Set;

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
