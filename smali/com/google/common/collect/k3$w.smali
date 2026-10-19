###### Class com.google.common.collect.k3.w (com.google.common.collect.k3$w)
.class final Lcom/google/common/collect/k3$w;
.super Lcom/google/common/collect/k3$o;
.source "Synchronized.java"

# interfaces
.implements Lcom/google/common/collect/l3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/k3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "w"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/k3$o;",
        "Lcom/google/common/collect/l3<",
        "TR;TC;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/collect/l3;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/l3<",
            "TR;TC;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/k3$o;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method B()Lcom/google/common/collect/l3;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/l3<",
            "TR;TC;TV;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/k3$o;->r()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/l3;

    return-object v0
.end method

.method public clear()V
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/k3$o;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/k3$w;->B()Lcom/google/common/collect/l3;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/l3;->clear()V

    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/k3$o;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/k3$w;->B()Lcom/google/common/collect/l3;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/common/collect/l3;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    iget-object v0, p0, Lcom/google/common/collect/k3$o;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    invoke-virtual {p0}, Lcom/google/common/collect/k3$w;->B()Lcom/google/common/collect/l3;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/common/collect/l3;->equals(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public h()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/k3$o;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/k3$w;->B()Lcom/google/common/collect/l3;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/l3;->h()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/k3$o;->b:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/k3;->t(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/k3$o;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/k3$w;->B()Lcom/google/common/collect/l3;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/l3;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public j()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/k3$o;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/k3$w;->B()Lcom/google/common/collect/l3;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/l3;->j()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/google/common/collect/k3$w$a;

    invoke-direct {v2, p0}, Lcom/google/common/collect/k3$w$a;-><init>(Lcom/google/common/collect/k3$w;)V

    invoke-static {v1, v2}, Lcom/google/common/collect/Maps;->transformValues(Ljava/util/Map;Lcom/google/common/base/f;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/k3$o;->b:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/k3;->l(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public n()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/k3$o;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/k3$w;->B()Lcom/google/common/collect/l3;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/l3;->n()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/google/common/collect/k3$w$b;

    invoke-direct {v2, p0}, Lcom/google/common/collect/k3$w$b;-><init>(Lcom/google/common/collect/k3$w;)V

    invoke-static {v1, v2}, Lcom/google/common/collect/Maps;->transformValues(Ljava/util/Map;Lcom/google/common/base/f;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/k3$o;->b:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/k3;->l(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public size()I
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/k3$o;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/k3$w;->B()Lcom/google/common/collect/l3;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/l3;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public t()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/collect/l3$a<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/k3$o;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/k3$w;->B()Lcom/google/common/collect/l3;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/l3;->t()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/k3$o;->b:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/k3;->t(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/k3$o;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/k3$w;->B()Lcom/google/common/collect/l3;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/google/common/collect/l3;->v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public values()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/k3$o;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/k3$w;->B()Lcom/google/common/collect/l3;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/l3;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/k3$o;->b:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/k3;->e(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public z()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/k3$o;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/k3$w;->B()Lcom/google/common/collect/l3;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/l3;->z()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/k3$o;->b:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/k3;->t(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method
