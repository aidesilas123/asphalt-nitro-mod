###### Class com.google.common.collect.g.n (com.google.common.collect.g$n)
.class Lcom/google/common/collect/g$n;
.super Lcom/google/common/collect/g$j;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/g<",
        "TK;TV;>.j;",
        "Ljava/util/SortedSet<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/google/common/collect/g;


# direct methods
.method constructor <init>(Lcom/google/common/collect/g;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/g$j;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/SortedSet<",
            "TV;>;",
            "Lcom/google/common/collect/g<",
            "TK;TV;>.j;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/g$n;->f:Lcom/google/common/collect/g;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/g$j;-><init>(Lcom/google/common/collect/g;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/g$j;)V

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/g$n;->l()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/g$j;->i()V

    invoke-virtual {p0}, Lcom/google/common/collect/g$n;->l()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/g$j;->i()V

    new-instance v0, Lcom/google/common/collect/g$n;

    iget-object v1, p0, Lcom/google/common/collect/g$n;->f:Lcom/google/common/collect/g;

    invoke-virtual {p0}, Lcom/google/common/collect/g$j;->h()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/collect/g$n;->l()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/common/collect/g$j;->f()Lcom/google/common/collect/g$j;

    move-result-object v3

    if-nez v3, :cond_1b

    move-object v3, p0

    goto :goto_1f

    :cond_1b
    invoke-virtual {p0}, Lcom/google/common/collect/g$j;->f()Lcom/google/common/collect/g$j;

    move-result-object v3

    :goto_1f
    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/common/collect/g$n;-><init>(Lcom/google/common/collect/g;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/g$j;)V

    return-object v0
.end method

.method l()Ljava/util/SortedSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/g$j;->g()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/g$j;->i()V

    invoke-virtual {p0}, Lcom/google/common/collect/g$n;->l()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;)",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/g$j;->i()V

    new-instance v0, Lcom/google/common/collect/g$n;

    iget-object v1, p0, Lcom/google/common/collect/g$n;->f:Lcom/google/common/collect/g;

    invoke-virtual {p0}, Lcom/google/common/collect/g$j;->h()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/collect/g$n;->l()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/common/collect/g$j;->f()Lcom/google/common/collect/g$j;

    move-result-object p2

    if-nez p2, :cond_1b

    move-object p2, p0

    goto :goto_1f

    :cond_1b
    invoke-virtual {p0}, Lcom/google/common/collect/g$j;->f()Lcom/google/common/collect/g$j;

    move-result-object p2

    :goto_1f
    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/common/collect/g$n;-><init>(Lcom/google/common/collect/g;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/g$j;)V

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/g$j;->i()V

    new-instance v0, Lcom/google/common/collect/g$n;

    iget-object v1, p0, Lcom/google/common/collect/g$n;->f:Lcom/google/common/collect/g;

    invoke-virtual {p0}, Lcom/google/common/collect/g$j;->h()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/collect/g$n;->l()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/common/collect/g$j;->f()Lcom/google/common/collect/g$j;

    move-result-object v3

    if-nez v3, :cond_1b

    move-object v3, p0

    goto :goto_1f

    :cond_1b
    invoke-virtual {p0}, Lcom/google/common/collect/g$j;->f()Lcom/google/common/collect/g$j;

    move-result-object v3

    :goto_1f
    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/common/collect/g$n;-><init>(Lcom/google/common/collect/g;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/g$j;)V

    return-object v0
.end method
