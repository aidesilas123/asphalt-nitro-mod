###### Class com.google.common.collect.i1 (com.google.common.collect.i1)
.class public abstract Lcom/google/common/collect/i1;
.super Lcom/google/common/collect/d1;
.source "ForwardingTable.java"

# interfaces
.implements Lcom/google/common/collect/l3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/d1;",
        "Lcom/google/common/collect/l3<",
        "TR;TC;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/collect/d1;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract C()Lcom/google/common/collect/l3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/l3<",
            "TR;TC;TV;>;"
        }
    .end annotation
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/collect/i1;->C()Lcom/google/common/collect/l3;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/l3;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p1, p0, :cond_f

    invoke-virtual {p0}, Lcom/google/common/collect/i1;->C()Lcom/google/common/collect/l3;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/l3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method public h()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TR;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/i1;->C()Lcom/google/common/collect/l3;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/l3;->h()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/i1;->C()Lcom/google/common/collect/l3;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/l3;->hashCode()I

    move-result v0

    return v0
.end method

.method public j()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/i1;->C()Lcom/google/common/collect/l3;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/l3;->j()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/i1;->C()Lcom/google/common/collect/l3;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/l3;->n()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/i1;->C()Lcom/google/common/collect/l3;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/l3;->size()I

    move-result v0

    return v0
.end method

.method public t()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/collect/l3$a<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/i1;->C()Lcom/google/common/collect/l3;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/l3;->t()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/i1;->C()Lcom/google/common/collect/l3;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/l3;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public z()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TC;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/i1;->C()Lcom/google/common/collect/l3;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/l3;->z()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
