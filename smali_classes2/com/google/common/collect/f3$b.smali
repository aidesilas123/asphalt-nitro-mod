###### Class com.google.common.collect.f3.b (com.google.common.collect.f3$b)
.class Lcom/google/common/collect/f3$b;
.super Lcom/google/common/collect/f3$a;
.source "SortedMultisets.java"

# interfaces
.implements Ljava/util/NavigableSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/f3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/f3$a<",
        "TE;>;",
        "Ljava/util/NavigableSet<",
        "TE;>;"
    }
.end annotation


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

    invoke-direct {p0, p1}, Lcom/google/common/collect/f3$a;-><init>(Lcom/google/common/collect/e3;)V

    return-void
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/f3$a;->j()Lcom/google/common/collect/e3;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BoundType;->b:Lcom/google/common/collect/BoundType;

    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/e3;->L(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/e3;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/collect/e3;->firstEntry()Lcom/google/common/collect/c2$a;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/f3;->b(Lcom/google/common/collect/c2$a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/f3$b;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/f3$b;

    invoke-virtual {p0}, Lcom/google/common/collect/f3$a;->j()Lcom/google/common/collect/e3;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/e3;->w()Lcom/google/common/collect/e3;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/f3$b;-><init>(Lcom/google/common/collect/e3;)V

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/f3$a;->j()Lcom/google/common/collect/e3;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BoundType;->b:Lcom/google/common/collect/BoundType;

    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/e3;->J(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/e3;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/collect/e3;->lastEntry()Lcom/google/common/collect/c2$a;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/f3;->b(Lcom/google/common/collect/c2$a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/f3$b;

    invoke-virtual {p0}, Lcom/google/common/collect/f3$a;->j()Lcom/google/common/collect/e3;

    move-result-object v1

    invoke-static {p2}, Lcom/google/common/collect/BoundType;->f(Z)Lcom/google/common/collect/BoundType;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Lcom/google/common/collect/e3;->J(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/e3;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/common/collect/f3$b;-><init>(Lcom/google/common/collect/e3;)V

    return-object v0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/f3$a;->j()Lcom/google/common/collect/e3;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BoundType;->a:Lcom/google/common/collect/BoundType;

    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/e3;->L(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/e3;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/collect/e3;->firstEntry()Lcom/google/common/collect/c2$a;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/f3;->b(Lcom/google/common/collect/c2$a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/f3$a;->j()Lcom/google/common/collect/e3;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BoundType;->a:Lcom/google/common/collect/BoundType;

    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/e3;->J(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/e3;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/collect/e3;->lastEntry()Lcom/google/common/collect/c2$a;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/f3;->b(Lcom/google/common/collect/c2$a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public pollFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/f3$a;->j()Lcom/google/common/collect/e3;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/e3;->pollFirstEntry()Lcom/google/common/collect/c2$a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/f3;->b(Lcom/google/common/collect/c2$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollLast()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/f3$a;->j()Lcom/google/common/collect/e3;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/e3;->pollLastEntry()Lcom/google/common/collect/c2$a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/f3;->b(Lcom/google/common/collect/c2$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/f3$b;

    invoke-virtual {p0}, Lcom/google/common/collect/f3$a;->j()Lcom/google/common/collect/e3;

    move-result-object v1

    invoke-static {p2}, Lcom/google/common/collect/BoundType;->f(Z)Lcom/google/common/collect/BoundType;

    move-result-object p2

    invoke-static {p4}, Lcom/google/common/collect/BoundType;->f(Z)Lcom/google/common/collect/BoundType;

    move-result-object p4

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/google/common/collect/e3;->q(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/e3;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/common/collect/f3$b;-><init>(Lcom/google/common/collect/e3;)V

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/f3$b;

    invoke-virtual {p0}, Lcom/google/common/collect/f3$a;->j()Lcom/google/common/collect/e3;

    move-result-object v1

    invoke-static {p2}, Lcom/google/common/collect/BoundType;->f(Z)Lcom/google/common/collect/BoundType;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Lcom/google/common/collect/e3;->L(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/e3;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/common/collect/f3$b;-><init>(Lcom/google/common/collect/e3;)V

    return-object v0
.end method
