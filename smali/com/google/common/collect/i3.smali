###### Class com.google.common.collect.i3 (com.google.common.collect.i3)
.class Lcom/google/common/collect/i3;
.super Lcom/google/common/collect/j3;
.source "StandardRowSortedTable.java"

# interfaces
.implements Lcom/google/common/collect/x2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/i3$b;
    }
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
        "Lcom/google/common/collect/j3<",
        "TR;TC;TV;>;",
        "Lcom/google/common/collect/x2<",
        "TR;TC;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/util/SortedMap;Lcom/google/common/base/m;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;",
            "Lcom/google/common/base/m<",
            "+",
            "Ljava/util/Map<",
            "TC;TV;>;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/j3;-><init>(Ljava/util/Map;Lcom/google/common/base/m;)V

    return-void
.end method

.method static synthetic G(Lcom/google/common/collect/i3;)Ljava/util/SortedMap;
    .registers 1

    invoke-direct {p0}, Lcom/google/common/collect/i3;->I()Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method private I()Ljava/util/SortedMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/j3;->c:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method


# virtual methods
.method bridge synthetic A()Ljava/util/Map;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/i3;->H()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method H()Ljava/util/SortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/i3$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/i3$b;-><init>(Lcom/google/common/collect/i3;Lcom/google/common/collect/i3$a;)V

    return-object v0
.end method

.method public bridge synthetic h()Ljava/util/Set;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/i3;->h()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/util/SortedSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TR;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/i3;->j()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public bridge synthetic j()Ljava/util/Map;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/i3;->j()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/util/SortedMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/j3;->j()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

###### Class com.google.common.collect.i3.a (com.google.common.collect.i3$a)
.class synthetic Lcom/google/common/collect/i3$a;
.super Ljava/lang/Object;
.source "StandardRowSortedTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/i3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.common.collect.i3.b (com.google.common.collect.i3$b)
.class Lcom/google/common/collect/i3$b;
.super Lcom/google/common/collect/j3$h;
.source "StandardRowSortedTable.java"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/i3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/j3<",
        "TR;TC;TV;>.h;",
        "Ljava/util/SortedMap<",
        "TR;",
        "Ljava/util/Map<",
        "TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/google/common/collect/i3;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/i3;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/i3$b;->e:Lcom/google/common/collect/i3;

    invoke-direct {p0, p1}, Lcom/google/common/collect/j3$h;-><init>(Lcom/google/common/collect/j3;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/i3;Lcom/google/common/collect/i3$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/collect/i3$b;-><init>(Lcom/google/common/collect/i3;)V

    return-void
.end method


# virtual methods
.method bridge synthetic b()Ljava/util/Set;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/i3$b;->f()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/i3$b;->e:Lcom/google/common/collect/i3;

    invoke-static {v0}, Lcom/google/common/collect/i3;->G(Lcom/google/common/collect/i3;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method f()Ljava/util/SortedSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TR;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/Maps$d0;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$d0;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/i3$b;->e:Lcom/google/common/collect/i3;

    invoke-static {v0}, Lcom/google/common/collect/i3;->G(Lcom/google/common/collect/i3;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/util/SortedSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TR;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/Maps$o0;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/SortedMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/i3;

    iget-object v1, p0, Lcom/google/common/collect/i3$b;->e:Lcom/google/common/collect/i3;

    invoke-static {v1}, Lcom/google/common/collect/i3;->G(Lcom/google/common/collect/i3;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    iget-object v1, p0, Lcom/google/common/collect/i3$b;->e:Lcom/google/common/collect/i3;

    iget-object v1, v1, Lcom/google/common/collect/j3;->d:Lcom/google/common/base/m;

    invoke-direct {v0, p1, v1}, Lcom/google/common/collect/i3;-><init>(Ljava/util/SortedMap;Lcom/google/common/base/m;)V

    invoke-virtual {v0}, Lcom/google/common/collect/i3;->j()Ljava/util/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/i3$b;->h()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/i3$b;->e:Lcom/google/common/collect/i3;

    invoke-static {v0}, Lcom/google/common/collect/i3;->G(Lcom/google/common/collect/i3;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TR;)",
            "Ljava/util/SortedMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/i3;

    iget-object v1, p0, Lcom/google/common/collect/i3$b;->e:Lcom/google/common/collect/i3;

    invoke-static {v1}, Lcom/google/common/collect/i3;->G(Lcom/google/common/collect/i3;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    iget-object p2, p0, Lcom/google/common/collect/i3$b;->e:Lcom/google/common/collect/i3;

    iget-object p2, p2, Lcom/google/common/collect/j3;->d:Lcom/google/common/base/m;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/i3;-><init>(Ljava/util/SortedMap;Lcom/google/common/base/m;)V

    invoke-virtual {v0}, Lcom/google/common/collect/i3;->j()Ljava/util/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/SortedMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/i3;

    iget-object v1, p0, Lcom/google/common/collect/i3$b;->e:Lcom/google/common/collect/i3;

    invoke-static {v1}, Lcom/google/common/collect/i3;->G(Lcom/google/common/collect/i3;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    iget-object v1, p0, Lcom/google/common/collect/i3$b;->e:Lcom/google/common/collect/i3;

    iget-object v1, v1, Lcom/google/common/collect/j3;->d:Lcom/google/common/base/m;

    invoke-direct {v0, p1, v1}, Lcom/google/common/collect/i3;-><init>(Ljava/util/SortedMap;Lcom/google/common/base/m;)V

    invoke-virtual {v0}, Lcom/google/common/collect/i3;->j()Ljava/util/SortedMap;

    move-result-object p1

    return-object p1
.end method
