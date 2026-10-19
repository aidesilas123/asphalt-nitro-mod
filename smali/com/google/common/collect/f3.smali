###### Class com.google.common.collect.f3 (com.google.common.collect.f3)
.class final Lcom/google/common/collect/f3;
.super Ljava/lang/Object;
.source "SortedMultisets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/f3$b;,
        Lcom/google/common/collect/f3$a;
    }
.end annotation


# direct methods
.method static synthetic a(Lcom/google/common/collect/c2$a;)Ljava/lang/Object;
    .registers 1

    invoke-static {p0}, Lcom/google/common/collect/f3;->d(Lcom/google/common/collect/c2$a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/google/common/collect/c2$a;)Ljava/lang/Object;
    .registers 1

    invoke-static {p0}, Lcom/google/common/collect/f3;->c(Lcom/google/common/collect/c2$a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lcom/google/common/collect/c2$a;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;)TE;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    :cond_4
    invoke-interface {p0}, Lcom/google/common/collect/c2$a;->c()Ljava/lang/Object;

    move-result-object p0

    :goto_8
    return-object p0
.end method

.method private static d(Lcom/google/common/collect/c2$a;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;)TE;"
        }
    .end annotation

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/google/common/collect/c2$a;->c()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

###### Class com.google.common.collect.f3.a (com.google.common.collect.f3$a)
.class Lcom/google/common/collect/f3$a;
.super Lcom/google/common/collect/Multisets$h;
.source "SortedMultisets.java"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/f3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Multisets$h<",
        "TE;>;",
        "Ljava/util/SortedSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/collect/e3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/e3<",
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

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$h;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/f3$a;->a:Lcom/google/common/collect/e3;

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/f3$a;->j()Lcom/google/common/collect/e3;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/e3;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/f3$a;->j()Lcom/google/common/collect/e3;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/e3;->firstEntry()Lcom/google/common/collect/c2$a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/f3;->a(Lcom/google/common/collect/c2$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/f3$a;->j()Lcom/google/common/collect/e3;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BoundType;->a:Lcom/google/common/collect/BoundType;

    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/e3;->J(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/e3;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/collect/e3;->k()Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic i()Lcom/google/common/collect/c2;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/f3$a;->j()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/f3$a;->j()Lcom/google/common/collect/e3;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/e3;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Multisets;->e(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method final j()Lcom/google/common/collect/e3;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e3<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/f3$a;->a:Lcom/google/common/collect/e3;

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/f3$a;->j()Lcom/google/common/collect/e3;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/e3;->lastEntry()Lcom/google/common/collect/c2$a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/f3;->a(Lcom/google/common/collect/c2$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/f3$a;->j()Lcom/google/common/collect/e3;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BoundType;->b:Lcom/google/common/collect/BoundType;

    sget-object v2, Lcom/google/common/collect/BoundType;->a:Lcom/google/common/collect/BoundType;

    invoke-interface {v0, p1, v1, p2, v2}, Lcom/google/common/collect/e3;->q(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/e3;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/collect/e3;->k()Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/f3$a;->j()Lcom/google/common/collect/e3;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BoundType;->b:Lcom/google/common/collect/BoundType;

    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/e3;->L(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/e3;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/collect/e3;->k()Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

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
