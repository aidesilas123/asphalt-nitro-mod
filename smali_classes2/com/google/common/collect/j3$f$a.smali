###### Class com.google.common.collect.j3.f.a (com.google.common.collect.j3$f$a)
.class Lcom/google/common/collect/j3$f$a;
.super Lcom/google/common/collect/j3$i;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/j3$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/j3<",
        "TR;TC;TV;>.i<",
        "Ljava/util/Map$Entry<",
        "TC;",
        "Ljava/util/Map<",
        "TR;TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/collect/j3$f;


# direct methods
.method constructor <init>(Lcom/google/common/collect/j3$f;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/j3$f$a;->b:Lcom/google/common/collect/j3$f;

    iget-object p1, p1, Lcom/google/common/collect/j3$f;->d:Lcom/google/common/collect/j3;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/j3$i;-><init>(Lcom/google/common/collect/j3;Lcom/google/common/collect/j3$a;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_2c

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/google/common/collect/j3$f$a;->b:Lcom/google/common/collect/j3$f;

    iget-object v0, v0, Lcom/google/common/collect/j3$f;->d:Lcom/google/common/collect/j3;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/j3;->u(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/common/collect/j3$f$a;->b:Lcom/google/common/collect/j3$f;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/j3$f;->d(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2c
    const/4 p1, 0x0

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/j3$f$a;->b:Lcom/google/common/collect/j3$f;

    iget-object v0, v0, Lcom/google/common/collect/j3$f;->d:Lcom/google/common/collect/j3;

    invoke-virtual {v0}, Lcom/google/common/collect/j3;->z()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/j3$f$a$a;

    invoke-direct {v1, p0}, Lcom/google/common/collect/j3$f$a$a;-><init>(Lcom/google/common/collect/j3$f$a;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->h(Ljava/util/Set;Lcom/google/common/base/f;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/common/collect/j3$f$a;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_19

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/google/common/collect/j3$f$a;->b:Lcom/google/common/collect/j3$f;

    iget-object v0, v0, Lcom/google/common/collect/j3$f;->d:Lcom/google/common/collect/j3;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/collect/j3;->r(Lcom/google/common/collect/j3;Ljava/lang/Object;)Ljava/util/Map;

    const/4 p1, 0x1

    return p1

    :cond_19
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/Sets;->e(Ljava/util/Set;Ljava/util/Iterator;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/j3$f$a;->b:Lcom/google/common/collect/j3$f;

    iget-object v0, v0, Lcom/google/common/collect/j3$f;->d:Lcom/google/common/collect/j3;

    invoke-virtual {v0}, Lcom/google/common/collect/j3;->z()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/j3$f$a;->b:Lcom/google/common/collect/j3$f;

    iget-object v3, v3, Lcom/google/common/collect/j3$f;->d:Lcom/google/common/collect/j3;

    invoke-virtual {v3, v2}, Lcom/google/common/collect/j3;->s(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    iget-object v1, p0, Lcom/google/common/collect/j3$f$a;->b:Lcom/google/common/collect/j3$f;

    iget-object v1, v1, Lcom/google/common/collect/j3$f;->d:Lcom/google/common/collect/j3;

    invoke-static {v1, v2}, Lcom/google/common/collect/j3;->r(Lcom/google/common/collect/j3;Ljava/lang/Object;)Ljava/util/Map;

    const/4 v1, 0x1

    goto :goto_18

    :cond_3d
    return v1
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/j3$f$a;->b:Lcom/google/common/collect/j3$f;

    iget-object v0, v0, Lcom/google/common/collect/j3$f;->d:Lcom/google/common/collect/j3;

    invoke-virtual {v0}, Lcom/google/common/collect/j3;->z()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
