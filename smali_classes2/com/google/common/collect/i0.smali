###### Class com.google.common.collect.i0 (com.google.common.collect.i0)
.class abstract Lcom/google/common/collect/i0;
.super Lcom/google/common/collect/b1;
.source "DescendingMultiset.java"

# interfaces
.implements Lcom/google/common/collect/e3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/b1<",
        "TE;>;",
        "Lcom/google/common/collect/e3<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private transient a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field

.field private transient b:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation
.end field

.field private transient c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/collect/b1;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic B()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/i0;->P()Lcom/google/common/collect/c2;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic C()Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/i0;->P()Lcom/google/common/collect/c2;

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

    invoke-virtual {p0}, Lcom/google/common/collect/i0;->S()Lcom/google/common/collect/e3;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/e3;->L(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/e3;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/collect/e3;->w()Lcom/google/common/collect/e3;

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

    invoke-virtual {p0}, Lcom/google/common/collect/i0;->S()Lcom/google/common/collect/e3;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/e3;->J(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/e3;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/collect/e3;->w()Lcom/google/common/collect/e3;

    move-result-object p1

    return-object p1
.end method

.method protected P()Lcom/google/common/collect/c2;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/c2<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/i0;->S()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method Q()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/i0$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/i0$a;-><init>(Lcom/google/common/collect/i0;)V

    return-object v0
.end method

.method abstract R()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;>;"
        }
    .end annotation
.end method

.method abstract S()Lcom/google/common/collect/e3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e3<",
            "TE;>;"
        }
    .end annotation
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

    iget-object v0, p0, Lcom/google/common/collect/i0;->a:Ljava/util/Comparator;

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/google/common/collect/i0;->S()Lcom/google/common/collect/e3;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/e3;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->f()Lcom/google/common/collect/Ordering;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/i0;->a:Ljava/util/Comparator;

    :cond_16
    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/i0;->c:Ljava/util/Set;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/google/common/collect/i0;->Q()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/i0;->c:Ljava/util/Set;

    :cond_a
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

    invoke-virtual {p0}, Lcom/google/common/collect/i0;->S()Lcom/google/common/collect/e3;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/e3;->lastEntry()Lcom/google/common/collect/c2$a;

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

    iget-object v0, p0, Lcom/google/common/collect/i0;->b:Ljava/util/NavigableSet;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/common/collect/f3$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/f3$b;-><init>(Lcom/google/common/collect/e3;)V

    iput-object v0, p0, Lcom/google/common/collect/i0;->b:Ljava/util/NavigableSet;

    :cond_b
    return-object v0
.end method

.method public bridge synthetic k()Ljava/util/Set;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/i0;->k()Ljava/util/NavigableSet;

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

    invoke-virtual {p0}, Lcom/google/common/collect/i0;->S()Lcom/google/common/collect/e3;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/e3;->firstEntry()Lcom/google/common/collect/c2$a;

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

    invoke-virtual {p0}, Lcom/google/common/collect/i0;->S()Lcom/google/common/collect/e3;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/e3;->pollLastEntry()Lcom/google/common/collect/c2$a;

    move-result-object v0

    return-object v0
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

    invoke-virtual {p0}, Lcom/google/common/collect/i0;->S()Lcom/google/common/collect/e3;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/e3;->pollFirstEntry()Lcom/google/common/collect/c2$a;

    move-result-object v0

    return-object v0
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

    invoke-virtual {p0}, Lcom/google/common/collect/i0;->S()Lcom/google/common/collect/e3;

    move-result-object v0

    invoke-interface {v0, p3, p4, p1, p2}, Lcom/google/common/collect/e3;->q(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/e3;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/collect/e3;->w()Lcom/google/common/collect/e3;

    move-result-object p1

    return-object p1
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/u0;->G()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/u0;->H([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/i0;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()Lcom/google/common/collect/e3;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e3<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/i0;->S()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method
