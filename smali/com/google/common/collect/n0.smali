###### Class com.google.common.collect.n0 (com.google.common.collect.n0)
.class Lcom/google/common/collect/n0;
.super Lcom/google/common/collect/j;
.source "FilteredEntryMultimap.java"

# interfaces
.implements Lcom/google/common/collect/s0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/n0$a;,
        Lcom/google/common/collect/n0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/j<",
        "TK;TV;>;",
        "Lcom/google/common/collect/s0<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final d:Lcom/google/common/collect/b2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/b2<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final e:Lcom/google/common/base/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/k<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/b2;Lcom/google/common/base/k;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/b2<",
            "TK;TV;>;",
            "Lcom/google/common/base/k<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/j;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/b2;

    iput-object p1, p0, Lcom/google/common/collect/n0;->d:Lcom/google/common/collect/b2;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/k;

    iput-object p1, p0, Lcom/google/common/collect/n0;->e:Lcom/google/common/base/k;

    return-void
.end method

.method static synthetic k(Lcom/google/common/collect/n0;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/n0;->p(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static m(Ljava/util/Collection;Lcom/google/common/base/k;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Lcom/google/common/base/k<",
            "-TE;>;)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/util/Set;

    invoke-static {p0, p1}, Lcom/google/common/collect/Sets;->filter(Ljava/util/Set;Lcom/google/common/base/k;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0, p1}, Lcom/google/common/collect/Collections2;->filter(Ljava/util/Collection;Lcom/google/common/base/k;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method private p(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/n0;->e:Lcom/google/common/base/k;

    invoke-static {p1, p2}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/common/base/k;->apply(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/j;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0}, Lcom/google/common/collect/n0;->q()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method c()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/n0$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/n0$a;-><init>(Lcom/google/common/collect/n0;)V

    return-object v0
.end method

.method public clear()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/j;->f()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/collect/j;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method d()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/n0;->d:Lcom/google/common/collect/b2;

    invoke-interface {v0}, Lcom/google/common/collect/b2;->f()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/n0;->e:Lcom/google/common/base/k;

    invoke-static {v0, v1}, Lcom/google/common/collect/n0;->m(Ljava/util/Collection;Lcom/google/common/base/k;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method g()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/j;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/n0;->d:Lcom/google/common/collect/b2;

    invoke-interface {v0, p1}, Lcom/google/common/collect/b2;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/n0$b;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/n0$b;-><init>(Lcom/google/common/collect/n0;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/n0;->m(Ljava/util/Collection;Lcom/google/common/base/k;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method h()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public i()Lcom/google/common/collect/b2;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/b2<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/n0;->d:Lcom/google/common/collect/b2;

    return-object v0
.end method

.method n(Lcom/google/common/base/k;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/k<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/n0;->d:Lcom/google/common/collect/b2;

    invoke-interface {v0}, Lcom/google/common/collect/b2;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    new-instance v5, Lcom/google/common/collect/n0$b;

    invoke-direct {v5, p0, v3}, Lcom/google/common/collect/n0$b;-><init>(Lcom/google/common/collect/n0;Ljava/lang/Object;)V

    invoke-static {v4, v5}, Lcom/google/common/collect/n0;->m(Ljava/util/Collection;Lcom/google/common/base/k;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_f

    invoke-static {v3, v4}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/google/common/base/k;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-ne v1, v2, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_55

    :cond_52
    invoke-interface {v4}, Ljava/util/Collection;->clear()V

    :goto_55
    const/4 v1, 0x1

    goto :goto_f

    :cond_57
    return v1
.end method

.method q()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/n0;->d:Lcom/google/common/collect/b2;

    instance-of v0, v0, Lcom/google/common/collect/z2;

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_f

    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public size()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/j;->f()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public y()Lcom/google/common/base/k;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/k<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/n0;->e:Lcom/google/common/base/k;

    return-object v0
.end method

###### Class com.google.common.collect.n0.a (com.google.common.collect.n0$a)
.class Lcom/google/common/collect/n0$a;
.super Lcom/google/common/collect/Maps$o0;
.source "FilteredEntryMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/n0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$o0<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/google/common/collect/n0;


# direct methods
.method constructor <init>(Lcom/google/common/collect/n0;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/n0$a;->d:Lcom/google/common/collect/n0;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$o0;-><init>()V

    return-void
.end method


# virtual methods
.method a()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/n0$a$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/n0$a$a;-><init>(Lcom/google/common/collect/n0$a;)V

    return-object v0
.end method

.method b()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/n0$a$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/n0$a$b;-><init>(Lcom/google/common/collect/n0$a;)V

    return-object v0
.end method

.method c()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/n0$a$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/n0$a$c;-><init>(Lcom/google/common/collect/n0$a;)V

    return-object v0
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/n0$a;->d:Lcom/google/common/collect/n0;

    invoke-virtual {v0}, Lcom/google/common/collect/n0;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/n0$a;->d(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public d(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/n0$a;->d:Lcom/google/common/collect/n0;

    iget-object v0, v0, Lcom/google/common/collect/n0;->d:Lcom/google/common/collect/b2;

    invoke-interface {v0}, Lcom/google/common/collect/b2;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-nez v0, :cond_12

    return-object v1

    :cond_12
    new-instance v2, Lcom/google/common/collect/n0$b;

    iget-object v3, p0, Lcom/google/common/collect/n0$a;->d:Lcom/google/common/collect/n0;

    invoke-direct {v2, v3, p1}, Lcom/google/common/collect/n0$b;-><init>(Lcom/google/common/collect/n0;Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lcom/google/common/collect/n0;->m(Ljava/util/Collection;Lcom/google/common/base/k;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_25

    :cond_24
    move-object v1, p1

    :goto_25
    return-object v1
.end method

.method public e(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/n0$a;->d:Lcom/google/common/collect/n0;

    iget-object v0, v0, Lcom/google/common/collect/n0;->d:Lcom/google/common/collect/b2;

    invoke-interface {v0}, Lcom/google/common/collect/b2;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-nez v0, :cond_12

    return-object v1

    :cond_12
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/common/collect/n0$a;->d:Lcom/google/common/collect/n0;

    invoke-static {v4, p1, v3}, Lcom/google/common/collect/n0;->k(Lcom/google/common/collect/n0;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_33
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3a

    return-object v1

    :cond_3a
    iget-object p1, p0, Lcom/google/common/collect/n0$a;->d:Lcom/google/common/collect/n0;

    iget-object p1, p1, Lcom/google/common/collect/n0;->d:Lcom/google/common/collect/b2;

    instance-of p1, p1, Lcom/google/common/collect/z2;

    if-eqz p1, :cond_4b

    invoke-static {v2}, Lcom/google/common/collect/Sets;->newLinkedHashSet(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_4b
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/n0$a;->d(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/n0$a;->e(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.common.collect.n0.a.C0260a (com.google.common.collect.n0$a$a)
.class Lcom/google/common/collect/n0$a$a;
.super Lcom/google/common/collect/Maps$p;
.source "FilteredEntryMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/n0$a;->a()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$p<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/n0$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/n0$a;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/n0$a$a;->a:Lcom/google/common/collect/n0$a;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$p;-><init>()V

    return-void
.end method


# virtual methods
.method i()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/n0$a$a;->a:Lcom/google/common/collect/n0$a;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/n0$a$a$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/n0$a$a$a;-><init>(Lcom/google/common/collect/n0$a$a;)V

    return-object v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/n0$a$a;->a:Lcom/google/common/collect/n0$a;

    iget-object v0, v0, Lcom/google/common/collect/n0$a;->d:Lcom/google/common/collect/n0;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/k;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/n0;->n(Lcom/google/common/base/k;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/n0$a$a;->a:Lcom/google/common/collect/n0$a;

    iget-object v0, v0, Lcom/google/common/collect/n0$a;->d:Lcom/google/common/collect/n0;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/k;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/k;)Lcom/google/common/base/k;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/n0;->n(Lcom/google/common/base/k;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/n0$a$a;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->size(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method

###### Class com.google.common.collect.n0.a.C0260a.C0261a (com.google.common.collect.n0$a$a$a)
.class Lcom/google/common/collect/n0$a$a$a;
.super Lcom/google/common/collect/AbstractIterator;
.source "FilteredEntryMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/n0$a$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;>;"
    }
.end annotation


# instance fields
.field final c:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/google/common/collect/n0$a$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/n0$a$a;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/n0$a$a$a;->d:Lcom/google/common/collect/n0$a$a;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    iget-object p1, p1, Lcom/google/common/collect/n0$a$a;->a:Lcom/google/common/collect/n0$a;

    iget-object p1, p1, Lcom/google/common/collect/n0$a;->d:Lcom/google/common/collect/n0;

    iget-object p1, p1, Lcom/google/common/collect/n0;->d:Lcom/google/common/collect/b2;

    invoke-interface {p1}, Lcom/google/common/collect/b2;->e()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/n0$a$a$a;->c:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method protected bridge synthetic b()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/n0$a$a$a;->e()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected e()Ljava/util/Map$Entry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/n0$a$a$a;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/common/collect/n0$a$a$a;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    new-instance v2, Lcom/google/common/collect/n0$b;

    iget-object v3, p0, Lcom/google/common/collect/n0$a$a$a;->d:Lcom/google/common/collect/n0$a$a;

    iget-object v3, v3, Lcom/google/common/collect/n0$a$a;->a:Lcom/google/common/collect/n0$a;

    iget-object v3, v3, Lcom/google/common/collect/n0$a;->d:Lcom/google/common/collect/n0;

    invoke-direct {v2, v3, v1}, Lcom/google/common/collect/n0$b;-><init>(Lcom/google/common/collect/n0;Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lcom/google/common/collect/n0;->m(Ljava/util/Collection;Lcom/google/common/base/k;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0

    :cond_34
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

###### Class com.google.common.collect.n0.a.b (com.google.common.collect.n0$a$b)
.class Lcom/google/common/collect/n0$a$b;
.super Lcom/google/common/collect/Maps$y;
.source "FilteredEntryMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/n0$a;->b()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$y<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/collect/n0$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/n0$a;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/n0$a$b;->b:Lcom/google/common/collect/n0$a;

    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$y;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/n0$a$b;->b:Lcom/google/common/collect/n0$a;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/n0$a;->e(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/n0$a$b;->b:Lcom/google/common/collect/n0$a;

    iget-object v0, v0, Lcom/google/common/collect/n0$a;->d:Lcom/google/common/collect/n0;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/k;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->v(Lcom/google/common/base/k;)Lcom/google/common/base/k;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/n0;->n(Lcom/google/common/base/k;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/n0$a$b;->b:Lcom/google/common/collect/n0$a;

    iget-object v0, v0, Lcom/google/common/collect/n0$a;->d:Lcom/google/common/collect/n0;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/k;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/k;)Lcom/google/common/base/k;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->v(Lcom/google/common/base/k;)Lcom/google/common/base/k;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/n0;->n(Lcom/google/common/base/k;)Z

    move-result p1

    return p1
.end method

###### Class com.google.common.collect.n0.a.c (com.google.common.collect.n0$a$c)
.class Lcom/google/common/collect/n0$a$c;
.super Lcom/google/common/collect/Maps$n0;
.source "FilteredEntryMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/n0$a;->c()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$n0<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/collect/n0$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/n0$a;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/n0$a$c;->b:Lcom/google/common/collect/n0$a;

    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$n0;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .registers 8

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_60

    check-cast p1, Ljava/util/Collection;

    iget-object v0, p0, Lcom/google/common/collect/n0$a$c;->b:Lcom/google/common/collect/n0$a;

    iget-object v0, v0, Lcom/google/common/collect/n0$a;->d:Lcom/google/common/collect/n0;

    iget-object v0, v0, Lcom/google/common/collect/n0;->d:Lcom/google/common/collect/b2;

    invoke-interface {v0}, Lcom/google/common/collect/b2;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    new-instance v4, Lcom/google/common/collect/n0$b;

    iget-object v5, p0, Lcom/google/common/collect/n0$a$c;->b:Lcom/google/common/collect/n0$a;

    iget-object v5, v5, Lcom/google/common/collect/n0$a;->d:Lcom/google/common/collect/n0;

    invoke-direct {v4, v5, v2}, Lcom/google/common/collect/n0$b;-><init>(Lcom/google/common/collect/n0;Ljava/lang/Object;)V

    invoke-static {v3, v4}, Lcom/google/common/collect/n0;->m(Ljava/util/Collection;Lcom/google/common/base/k;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_18

    invoke-interface {p1, v2}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-ne p1, v1, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_5e

    :cond_5b
    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    :goto_5e
    const/4 p1, 0x1

    return p1

    :cond_60
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/n0$a$c;->b:Lcom/google/common/collect/n0$a;

    iget-object v0, v0, Lcom/google/common/collect/n0$a;->d:Lcom/google/common/collect/n0;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/k;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->N(Lcom/google/common/base/k;)Lcom/google/common/base/k;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/n0;->n(Lcom/google/common/base/k;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/n0$a$c;->b:Lcom/google/common/collect/n0$a;

    iget-object v0, v0, Lcom/google/common/collect/n0$a;->d:Lcom/google/common/collect/n0;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/k;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/k;)Lcom/google/common/base/k;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->N(Lcom/google/common/base/k;)Lcom/google/common/base/k;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/n0;->n(Lcom/google/common/base/k;)Z

    move-result p1

    return p1
.end method

###### Class com.google.common.collect.n0.b (com.google.common.collect.n0$b)
.class final Lcom/google/common/collect/n0$b;
.super Ljava/lang/Object;
.source "FilteredEntryMultimap.java"

# interfaces
.implements Lcom/google/common/base/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/n0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/k<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/google/common/collect/n0;


# direct methods
.method constructor <init>(Lcom/google/common/collect/n0;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/n0$b;->b:Lcom/google/common/collect/n0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/common/collect/n0$b;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/n0$b;->b:Lcom/google/common/collect/n0;

    iget-object v1, p0, Lcom/google/common/collect/n0$b;->a:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/n0;->k(Lcom/google/common/collect/n0;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
