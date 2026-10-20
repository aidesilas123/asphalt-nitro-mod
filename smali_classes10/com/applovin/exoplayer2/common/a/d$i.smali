###### Class com.applovin.exoplayer2.common.a.d.i (com.applovin.exoplayer2.common.a.d$i)
.class Lcom/applovin/exoplayer2/common/a/d$i;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/common/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/common/a/d$i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic ph:Lcom/applovin/exoplayer2/common/a/d;

.field final pn:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field pt:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field

.field final pu:Lcom/applovin/exoplayer2/common/a/d$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/common/a/d<",
            "TK;TV;>.i;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field final pv:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/applovin/exoplayer2/common/a/d;Ljava/lang/Object;Ljava/util/Collection;Lcom/applovin/exoplayer2/common/a/d$i;)V
    .registers 5
    .param p1    # Lcom/applovin/exoplayer2/common/a/d;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Ljava/util/Collection;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection<",
            "TV;>;",
            "Lcom/applovin/exoplayer2/common/a/d<",
            "TK;TV;>.i;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/applovin/exoplayer2/common/a/d$i;->ph:Lcom/applovin/exoplayer2/common/a/d;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p2, p0, Lcom/applovin/exoplayer2/common/a/d$i;->pn:Ljava/lang/Object;

    iput-object p3, p0, Lcom/applovin/exoplayer2/common/a/d$i;->pt:Ljava/util/Collection;

    iput-object p4, p0, Lcom/applovin/exoplayer2/common/a/d$i;->pu:Lcom/applovin/exoplayer2/common/a/d$i;

    if-nez p4, :cond_f

    const/4 p1, 0x0

    goto :goto_13

    :cond_f
    invoke-virtual {p4}, Lcom/applovin/exoplayer2/common/a/d$i;->fz()Ljava/util/Collection;

    move-result-object p1

    :goto_13
    iput-object p1, p0, Lcom/applovin/exoplayer2/common/a/d$i;->pv:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/d$i;->fw()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/d$i;->pt:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/d$i;->pt:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/d$i;->ph:Lcom/applovin/exoplayer2/common/a/d;

    invoke-static {v1}, Lcom/applovin/exoplayer2/common/a/d;->c(Lcom/applovin/exoplayer2/common/a/d;)I

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/d$i;->fy()V

    :cond_1b
    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TV;>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/d$i;->size()I

    move-result v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/d$i;->pt:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_25

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/d$i;->pt:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v2, p0, Lcom/applovin/exoplayer2/common/a/d$i;->ph:Lcom/applovin/exoplayer2/common/a/d;

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Lcom/applovin/exoplayer2/common/a/d;->a(Lcom/applovin/exoplayer2/common/a/d;I)I

    if-nez v0, :cond_25

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/d$i;->fy()V

    :cond_25
    return p1
.end method

.method public clear()V
    .registers 3

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/d$i;->size()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/d$i;->pt:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/d$i;->ph:Lcom/applovin/exoplayer2/common/a/d;

    invoke-static {v1, v0}, Lcom/applovin/exoplayer2/common/a/d;->b(Lcom/applovin/exoplayer2/common/a/d;I)I

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/d$i;->fx()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/d$i;->fw()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/d$i;->pt:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/d$i;->fw()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/d$i;->pt:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/d$i;->fw()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/d$i;->pt:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method fA()Lcom/applovin/exoplayer2/common/a/d$i;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/applovin/exoplayer2/common/a/d<",
            "TK;TV;>.i;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/d$i;->pu:Lcom/applovin/exoplayer2/common/a/d$i;

    return-object v0
.end method

.method fw()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/d$i;->pu:Lcom/applovin/exoplayer2/common/a/d$i;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/common/a/d$i;->fw()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/d$i;->pu:Lcom/applovin/exoplayer2/common/a/d$i;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/common/a/d$i;->fz()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/d$i;->pv:Ljava/util/Collection;

    if-ne v0, v1, :cond_12

    goto :goto_32

    :cond_12
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_18
    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/d$i;->pt:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/d$i;->ph:Lcom/applovin/exoplayer2/common/a/d;

    invoke-static {v0}, Lcom/applovin/exoplayer2/common/a/d;->a(Lcom/applovin/exoplayer2/common/a/d;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/d$i;->pn:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_32

    iput-object v0, p0, Lcom/applovin/exoplayer2/common/a/d$i;->pt:Ljava/util/Collection;

    :cond_32
    :goto_32
    return-void
.end method

.method fx()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/d$i;->pu:Lcom/applovin/exoplayer2/common/a/d$i;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/common/a/d$i;->fx()V

    goto :goto_1b

    :cond_8
    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/d$i;->pt:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/d$i;->ph:Lcom/applovin/exoplayer2/common/a/d;

    invoke-static {v0}, Lcom/applovin/exoplayer2/common/a/d;->a(Lcom/applovin/exoplayer2/common/a/d;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/d$i;->pn:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    :goto_1b
    return-void
.end method

.method fy()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/d$i;->pu:Lcom/applovin/exoplayer2/common/a/d$i;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/common/a/d$i;->fy()V

    goto :goto_15

    :cond_8
    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/d$i;->ph:Lcom/applovin/exoplayer2/common/a/d;

    invoke-static {v0}, Lcom/applovin/exoplayer2/common/a/d;->a(Lcom/applovin/exoplayer2/common/a/d;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/d$i;->pn:Ljava/lang/Object;

    iget-object v2, p0, Lcom/applovin/exoplayer2/common/a/d$i;->pt:Ljava/util/Collection;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_15
    return-void
.end method

.method fz()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/d$i;->pt:Ljava/util/Collection;

    return-object v0
.end method

.method getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/d$i;->pn:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/d$i;->fw()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/d$i;->pt:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/d$i;->fw()V

    new-instance v0, Lcom/applovin/exoplayer2/common/a/d$i$a;

    invoke-direct {v0, p0}, Lcom/applovin/exoplayer2/common/a/d$i$a;-><init>(Lcom/applovin/exoplayer2/common/a/d$i;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/d$i;->fw()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/d$i;->pt:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/d$i;->ph:Lcom/applovin/exoplayer2/common/a/d;

    invoke-static {v0}, Lcom/applovin/exoplayer2/common/a/d;->b(Lcom/applovin/exoplayer2/common/a/d;)I

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/d$i;->fx()V

    :cond_13
    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/d$i;->size()I

    move-result v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/d$i;->pt:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_23

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/d$i;->pt:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v2, p0, Lcom/applovin/exoplayer2/common/a/d$i;->ph:Lcom/applovin/exoplayer2/common/a/d;

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Lcom/applovin/exoplayer2/common/a/d;->a(Lcom/applovin/exoplayer2/common/a/d;I)I

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/d$i;->fx()V

    :cond_23
    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/applovin/exoplayer2/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/d$i;->size()I

    move-result v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/d$i;->pt:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/d$i;->pt:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v2, p0, Lcom/applovin/exoplayer2/common/a/d$i;->ph:Lcom/applovin/exoplayer2/common/a/d;

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Lcom/applovin/exoplayer2/common/a/d;->a(Lcom/applovin/exoplayer2/common/a/d;I)I

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/d$i;->fx()V

    :cond_1e
    return p1
.end method

.method public size()I
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/d$i;->fw()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/d$i;->pt:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/d$i;->fw()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/d$i;->pt:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
