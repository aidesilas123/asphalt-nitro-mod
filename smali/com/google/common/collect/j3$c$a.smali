###### Class com.google.common.collect.j3.c.a (com.google.common.collect.j3$c$a)
.class Lcom/google/common/collect/j3$c$a;
.super Lcom/google/common/collect/Sets$j;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/j3$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Sets$j<",
        "Ljava/util/Map$Entry<",
        "TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/j3$c;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/j3$c;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/j3$c$a;->a:Lcom/google/common/collect/j3$c;

    invoke-direct {p0}, Lcom/google/common/collect/Sets$j;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/j3$c;Lcom/google/common/collect/j3$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/collect/j3$c$a;-><init>(Lcom/google/common/collect/j3$c;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/j3$c$a;->a:Lcom/google/common/collect/j3$c;

    invoke-static {}, Lcom/google/common/base/Predicates;->alwaysTrue()Lcom/google/common/base/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/j3$c;->d(Lcom/google/common/base/k;)Z

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_1b

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/google/common/collect/j3$c$a;->a:Lcom/google/common/collect/j3$c;

    iget-object v0, v0, Lcom/google/common/collect/j3$c;->e:Lcom/google/common/collect/j3;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/j3$c$a;->a:Lcom/google/common/collect/j3$c;

    iget-object v2, v2, Lcom/google/common/collect/j3$c;->d:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/common/collect/j3;->p(Lcom/google/common/collect/j3;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1b
    const/4 p1, 0x0

    return p1
.end method

.method public isEmpty()Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/j3$c$a;->a:Lcom/google/common/collect/j3$c;

    iget-object v1, v0, Lcom/google/common/collect/j3$c;->e:Lcom/google/common/collect/j3;

    iget-object v0, v0, Lcom/google/common/collect/j3$c;->d:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/j3;->u(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TR;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/j3$c$b;

    iget-object v1, p0, Lcom/google/common/collect/j3$c$a;->a:Lcom/google/common/collect/j3$c;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/j3$c$b;-><init>(Lcom/google/common/collect/j3$c;Lcom/google/common/collect/j3$a;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_1b

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/google/common/collect/j3$c$a;->a:Lcom/google/common/collect/j3$c;

    iget-object v0, v0, Lcom/google/common/collect/j3$c;->e:Lcom/google/common/collect/j3;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/j3$c$a;->a:Lcom/google/common/collect/j3$c;

    iget-object v2, v2, Lcom/google/common/collect/j3$c;->d:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/common/collect/j3;->q(Lcom/google/common/collect/j3;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1b
    const/4 p1, 0x0

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

    iget-object v0, p0, Lcom/google/common/collect/j3$c$a;->a:Lcom/google/common/collect/j3$c;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/k;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/k;)Lcom/google/common/base/k;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/j3$c;->d(Lcom/google/common/base/k;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .registers 5

    iget-object v0, p0, Lcom/google/common/collect/j3$c$a;->a:Lcom/google/common/collect/j3$c;

    iget-object v0, v0, Lcom/google/common/collect/j3$c;->e:Lcom/google/common/collect/j3;

    iget-object v0, v0, Lcom/google/common/collect/j3;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    iget-object v3, p0, Lcom/google/common/collect/j3$c$a;->a:Lcom/google/common/collect/j3$c;

    iget-object v3, v3, Lcom/google/common/collect/j3$c;->d:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_28
    return v1
.end method
