###### Class com.google.common.collect.q3 (com.google.common.collect.q3)
.class final Lcom/google/common/collect/q3;
.super Lcom/google/common/collect/Multisets$m;
.source "UnmodifiableSortedMultiset.java"

# interfaces
.implements Lcom/google/common/collect/e3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Multisets$m<",
        "TE;>;",
        "Lcom/google/common/collect/e3<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient d:Lcom/google/common/collect/q3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/q3<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/e3;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e3<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/collect/Multisets$m;-><init>(Lcom/google/common/collect/c2;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic B()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/q3;->S()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic C()Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/q3;->S()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method public J(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/e3;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/e3<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/q3;->S()Lcom/google/common/collect/e3;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/e3;->J(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/e3;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Multisets;->unmodifiableSortedMultiset(Lcom/google/common/collect/e3;)Lcom/google/common/collect/e3;

    move-result-object p1

    return-object p1
.end method

.method public L(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/e3;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/e3<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/q3;->S()Lcom/google/common/collect/e3;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/e3;->L(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/e3;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Multisets;->unmodifiableSortedMultiset(Lcom/google/common/collect/e3;)Lcom/google/common/collect/e3;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic P()Lcom/google/common/collect/c2;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/q3;->S()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic Q()Ljava/util/Set;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/q3;->R()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method R()Ljava/util/NavigableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/q3;->S()Lcom/google/common/collect/e3;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/e3;->k()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method protected S()Lcom/google/common/collect/e3;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e3<",
            "TE;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/Multisets$m;->P()Lcom/google/common/collect/c2;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/e3;

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/q3;->S()Lcom/google/common/collect/e3;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/e3;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public firstEntry()Lcom/google/common/collect/c2$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/q3;->S()Lcom/google/common/collect/e3;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/e3;->firstEntry()Lcom/google/common/collect/c2$a;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/util/NavigableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/Multisets$m;->k()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableSet;

    return-object v0
.end method

.method public bridge synthetic k()Ljava/util/Set;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/q3;->k()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Lcom/google/common/collect/c2$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/q3;->S()Lcom/google/common/collect/e3;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/e3;->lastEntry()Lcom/google/common/collect/c2$a;

    move-result-object v0

    return-object v0
.end method

.method public pollFirstEntry()Lcom/google/common/collect/c2$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public pollLastEntry()Lcom/google/common/collect/c2$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public q(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/e3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            "TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/e3<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/q3;->S()Lcom/google/common/collect/e3;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/common/collect/e3;->q(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/e3;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Multisets;->unmodifiableSortedMultiset(Lcom/google/common/collect/e3;)Lcom/google/common/collect/e3;

    move-result-object p1

    return-object p1
.end method

.method public w()Lcom/google/common/collect/e3;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e3<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/q3;->d:Lcom/google/common/collect/q3;

    if-nez v0, :cond_15

    new-instance v0, Lcom/google/common/collect/q3;

    invoke-virtual {p0}, Lcom/google/common/collect/q3;->S()Lcom/google/common/collect/e3;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/e3;->w()Lcom/google/common/collect/e3;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/q3;-><init>(Lcom/google/common/collect/e3;)V

    iput-object p0, v0, Lcom/google/common/collect/q3;->d:Lcom/google/common/collect/q3;

    iput-object v0, p0, Lcom/google/common/collect/q3;->d:Lcom/google/common/collect/q3;

    :cond_15
    return-object v0
.end method
