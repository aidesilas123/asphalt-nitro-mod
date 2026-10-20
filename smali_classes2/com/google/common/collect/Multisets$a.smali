###### Class com.google.common.collect.Multisets.a (com.google.common.collect.Multisets$a)
.class Lcom/google/common/collect/Multisets$a;
.super Lcom/google/common/collect/Multisets$n;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multisets;->union(Lcom/google/common/collect/c2;Lcom/google/common/collect/c2;)Lcom/google/common/collect/c2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$n<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/google/common/collect/c2;

.field final synthetic d:Lcom/google/common/collect/c2;


# direct methods
.method constructor <init>(Lcom/google/common/collect/c2;Lcom/google/common/collect/c2;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/Multisets$a;->c:Lcom/google/common/collect/c2;

    iput-object p2, p0, Lcom/google/common/collect/Multisets$a;->d:Lcom/google/common/collect/c2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/common/collect/Multisets$n;-><init>(Lcom/google/common/collect/Multisets$a;)V

    return-void
.end method


# virtual methods
.method public K(Ljava/lang/Object;)I
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/Multisets$a;->c:Lcom/google/common/collect/c2;

    invoke-interface {v0, p1}, Lcom/google/common/collect/c2;->K(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/Multisets$a;->d:Lcom/google/common/collect/c2;

    invoke-interface {v1, p1}, Lcom/google/common/collect/c2;->K(Ljava/lang/Object;)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/Multisets$a;->c:Lcom/google/common/collect/c2;

    invoke-interface {v0, p1}, Lcom/google/common/collect/c2;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/common/collect/Multisets$a;->d:Lcom/google/common/collect/c2;

    invoke-interface {v0, p1}, Lcom/google/common/collect/c2;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method

.method e()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multisets$a;->c:Lcom/google/common/collect/c2;

    invoke-interface {v0}, Lcom/google/common/collect/c2;->k()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Multisets$a;->d:Lcom/google/common/collect/c2;

    invoke-interface {v1}, Lcom/google/common/collect/c2;->k()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->union(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$l;

    move-result-object v0

    return-object v0
.end method

.method h()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method i()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multisets$a;->c:Lcom/google/common/collect/c2;

    invoke-interface {v0}, Lcom/google/common/collect/c2;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Multisets$a;->d:Lcom/google/common/collect/c2;

    invoke-interface {v1}, Lcom/google/common/collect/c2;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Lcom/google/common/collect/Multisets$a$a;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/common/collect/Multisets$a$a;-><init>(Lcom/google/common/collect/Multisets$a;Ljava/util/Iterator;Ljava/util/Iterator;)V

    return-object v2
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/Multisets$a;->c:Lcom/google/common/collect/c2;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/common/collect/Multisets$a;->d:Lcom/google/common/collect/c2;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method
