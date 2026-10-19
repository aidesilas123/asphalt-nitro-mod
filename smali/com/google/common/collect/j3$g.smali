###### Class com.google.common.collect.j3.g (com.google.common.collect.j3$g)
.class Lcom/google/common/collect/j3$g;
.super Lcom/google/common/collect/Maps$x;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/j3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$x<",
        "TC;TV;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/google/common/collect/j3;


# direct methods
.method constructor <init>(Lcom/google/common/collect/j3;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/j3$g;->c:Lcom/google/common/collect/j3;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$x;-><init>()V

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/j3$g;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method a()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TC;TV;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/j3$g;->d()V

    iget-object v0, p0, Lcom/google/common/collect/j3$g;->b:Ljava/util/Map;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/google/common/collect/Iterators;->h()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/j3$g$a;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/j3$g$a;-><init>(Lcom/google/common/collect/j3$g;Ljava/util/Iterator;)V

    return-object v1
.end method

.method b()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/j3$g;->c:Lcom/google/common/collect/j3;

    iget-object v0, v0, Lcom/google/common/collect/j3;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/j3$g;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method c()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/collect/j3$g;->d()V

    iget-object v0, p0, Lcom/google/common/collect/j3$g;->b:Ljava/util/Map;

    if-eqz v0, :cond_19

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/common/collect/j3$g;->c:Lcom/google/common/collect/j3;

    iget-object v0, v0, Lcom/google/common/collect/j3;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/j3$g;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/j3$g;->b:Ljava/util/Map;

    :cond_19
    return-void
.end method

.method public clear()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/j3$g;->d()V

    iget-object v0, p0, Lcom/google/common/collect/j3$g;->b:Ljava/util/Map;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_a
    invoke-virtual {p0}, Lcom/google/common/collect/j3$g;->c()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/collect/j3$g;->d()V

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/google/common/collect/j3$g;->b:Ljava/util/Map;

    if-eqz v0, :cond_11

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->B(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return p1
.end method

.method final d()V
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/j3$g;->b:Ljava/util/Map;

    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/common/collect/j3$g;->c:Lcom/google/common/collect/j3;

    iget-object v0, v0, Lcom/google/common/collect/j3;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/j3$g;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_16
    invoke-virtual {p0}, Lcom/google/common/collect/j3$g;->b()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/j3$g;->b:Ljava/util/Map;

    :cond_1c
    return-void
.end method

.method e(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TC;TV;>;)",
            "Ljava/util/Map$Entry<",
            "TC;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/j3$g$b;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/j3$g$b;-><init>(Lcom/google/common/collect/j3$g;Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/j3$g;->d()V

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/google/common/collect/j3$g;->b:Ljava/util/Map;

    if-eqz v0, :cond_e

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->C(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TV;)TV;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/j3$g;->b:Ljava/util/Map;

    if-eqz v0, :cond_17

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/google/common/collect/j3$g;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_17
    iget-object v0, p0, Lcom/google/common/collect/j3$g;->c:Lcom/google/common/collect/j3;

    iget-object v1, p0, Lcom/google/common/collect/j3$g;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/common/collect/j3;->v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/j3$g;->d()V

    iget-object v0, p0, Lcom/google/common/collect/j3$g;->b:Ljava/util/Map;

    if-nez v0, :cond_9

    const/4 p1, 0x0

    return-object p1

    :cond_9
    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->D(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/common/collect/j3$g;->c()V

    return-object p1
.end method

.method public size()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/j3$g;->d()V

    iget-object v0, p0, Lcom/google/common/collect/j3$g;->b:Ljava/util/Map;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_d

    :cond_9
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    :goto_d
    return v0
.end method
