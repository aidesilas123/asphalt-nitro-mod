###### Class com.google.common.collect.n0.a.c (com.google.common.collect.n0$a$c)
.class Lcom/google/common/collect/n0$a$c;
.super Lcom/google/common/collect/Maps$n0;
.source "FilteredEntryMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/n0$a;->c()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$n0<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/collect/n0$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/n0$a;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/n0$a$c;->b:Lcom/google/common/collect/n0$a;

    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$n0;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .registers 8

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_60

    check-cast p1, Ljava/util/Collection;

    iget-object v0, p0, Lcom/google/common/collect/n0$a$c;->b:Lcom/google/common/collect/n0$a;

    iget-object v0, v0, Lcom/google/common/collect/n0$a;->d:Lcom/google/common/collect/n0;

    iget-object v0, v0, Lcom/google/common/collect/n0;->d:Lcom/google/common/collect/b2;

    invoke-interface {v0}, Lcom/google/common/collect/b2;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    new-instance v4, Lcom/google/common/collect/n0$b;

    iget-object v5, p0, Lcom/google/common/collect/n0$a$c;->b:Lcom/google/common/collect/n0$a;

    iget-object v5, v5, Lcom/google/common/collect/n0$a;->d:Lcom/google/common/collect/n0;

    invoke-direct {v4, v5, v2}, Lcom/google/common/collect/n0$b;-><init>(Lcom/google/common/collect/n0;Ljava/lang/Object;)V

    invoke-static {v3, v4}, Lcom/google/common/collect/n0;->m(Ljava/util/Collection;Lcom/google/common/base/k;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_18

    invoke-interface {p1, v2}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-ne p1, v1, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_5e

    :cond_5b
    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    :goto_5e
    const/4 p1, 0x1

    return p1

    :cond_60
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/n0$a$c;->b:Lcom/google/common/collect/n0$a;

    iget-object v0, v0, Lcom/google/common/collect/n0$a;->d:Lcom/google/common/collect/n0;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/k;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->N(Lcom/google/common/base/k;)Lcom/google/common/base/k;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/n0;->n(Lcom/google/common/base/k;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/n0$a$c;->b:Lcom/google/common/collect/n0$a;

    iget-object v0, v0, Lcom/google/common/collect/n0$a;->d:Lcom/google/common/collect/n0;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/k;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/k;)Lcom/google/common/base/k;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->N(Lcom/google/common/base/k;)Lcom/google/common/base/k;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/n0;->n(Lcom/google/common/base/k;)Z

    move-result p1

    return p1
.end method
