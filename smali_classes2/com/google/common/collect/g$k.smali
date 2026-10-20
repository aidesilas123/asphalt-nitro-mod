###### Class com.google.common.collect.g.k (com.google.common.collect.g$k)
.class Lcom/google/common/collect/g$k;
.super Lcom/google/common/collect/g$j;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/g$k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/g<",
        "TK;TV;>.j;",
        "Ljava/util/List<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/google/common/collect/g;


# direct methods
.method constructor <init>(Lcom/google/common/collect/g;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/g$j;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/List<",
            "TV;>;",
            "Lcom/google/common/collect/g<",
            "TK;TV;>.j;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/g$k;->f:Lcom/google/common/collect/g;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/g$j;-><init>(Lcom/google/common/collect/g;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/g$j;)V

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/g$j;->i()V

    invoke-virtual {p0}, Lcom/google/common/collect/g$j;->g()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/common/collect/g$k;->l()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/google/common/collect/g$k;->f:Lcom/google/common/collect/g;

    invoke-static {p1}, Lcom/google/common/collect/g;->n(Lcom/google/common/collect/g;)I

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/google/common/collect/g$j;->e()V

    :cond_1c
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TV;>;)Z"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    invoke-virtual {p0}, Lcom/google/common/collect/g$j;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/common/collect/g$k;->l()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_29

    invoke-virtual {p0}, Lcom/google/common/collect/g$j;->g()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    iget-object v1, p0, Lcom/google/common/collect/g$k;->f:Lcom/google/common/collect/g;

    sub-int/2addr p2, v0

    invoke-static {v1, p2}, Lcom/google/common/collect/g;->q(Lcom/google/common/collect/g;I)I

    if-nez v0, :cond_29

    invoke-virtual {p0}, Lcom/google/common/collect/g$j;->e()V

    :cond_29
    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/g$j;->i()V

    invoke-virtual {p0}, Lcom/google/common/collect/g$k;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/collect/g$j;->i()V

    invoke-virtual {p0}, Lcom/google/common/collect/g$k;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method l()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/g$j;->g()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/collect/g$j;->i()V

    invoke-virtual {p0}, Lcom/google/common/collect/g$k;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/g$j;->i()V

    new-instance v0, Lcom/google/common/collect/g$k$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/g$k$a;-><init>(Lcom/google/common/collect/g$k;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/g$j;->i()V

    new-instance v0, Lcom/google/common/collect/g$k$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/g$k$a;-><init>(Lcom/google/common/collect/g$k;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/g$j;->i()V

    invoke-virtual {p0}, Lcom/google/common/collect/g$k;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/g$k;->f:Lcom/google/common/collect/g;

    invoke-static {v0}, Lcom/google/common/collect/g;->p(Lcom/google/common/collect/g;)I

    invoke-virtual {p0}, Lcom/google/common/collect/g$j;->j()V

    return-object p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/g$j;->i()V

    invoke-virtual {p0}, Lcom/google/common/collect/g$k;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public subList(II)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/g$j;->i()V

    iget-object v0, p0, Lcom/google/common/collect/g$k;->f:Lcom/google/common/collect/g;

    invoke-virtual {p0}, Lcom/google/common/collect/g$j;->h()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/g$k;->l()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/common/collect/g$j;->f()Lcom/google/common/collect/g$j;

    move-result-object p2

    if-nez p2, :cond_19

    move-object p2, p0

    goto :goto_1d

    :cond_19
    invoke-virtual {p0}, Lcom/google/common/collect/g$j;->f()Lcom/google/common/collect/g$j;

    move-result-object p2

    :goto_1d
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/common/collect/g;->G(Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/g$j;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
