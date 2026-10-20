###### Class com.google.common.collect.Multisets.h (com.google.common.collect.Multisets$h)
.class abstract Lcom/google/common/collect/Multisets$h;
.super Lcom/google/common/collect/Sets$j;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Sets$j<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/collect/Sets$j;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$h;->i()Lcom/google/common/collect/c2;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$h;->i()Lcom/google/common/collect/c2;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/c2;->contains(Ljava/lang/Object;)Z

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

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$h;->i()Lcom/google/common/collect/c2;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/c2;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method abstract i()Lcom/google/common/collect/c2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/c2<",
            "TE;>;"
        }
    .end annotation
.end method

.method public isEmpty()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$h;->i()Lcom/google/common/collect/c2;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$h;->i()Lcom/google/common/collect/c2;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/c2;->s(Ljava/lang/Object;I)I

    move-result p1

    if-lez p1, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return p1
.end method

.method public size()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$h;->i()Lcom/google/common/collect/c2;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/c2;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
