###### Class com.google.common.collect.Multisets.d (com.google.common.collect.Multisets$d)
.class Lcom/google/common/collect/Multisets$d;
.super Lcom/google/common/collect/Multisets$n;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multisets;->difference(Lcom/google/common/collect/c2;Lcom/google/common/collect/c2;)Lcom/google/common/collect/c2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$n<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/google/common/collect/c2;

.field final synthetic d:Lcom/google/common/collect/c2;


# direct methods
.method constructor <init>(Lcom/google/common/collect/c2;Lcom/google/common/collect/c2;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/Multisets$d;->c:Lcom/google/common/collect/c2;

    iput-object p2, p0, Lcom/google/common/collect/Multisets$d;->d:Lcom/google/common/collect/c2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/common/collect/Multisets$n;-><init>(Lcom/google/common/collect/Multisets$a;)V

    return-void
.end method


# virtual methods
.method public K(Ljava/lang/Object;)I
    .registers 5

    iget-object v0, p0, Lcom/google/common/collect/Multisets$d;->c:Lcom/google/common/collect/c2;

    invoke-interface {v0, p1}, Lcom/google/common/collect/c2;->K(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    goto :goto_15

    :cond_a
    iget-object v2, p0, Lcom/google/common/collect/Multisets$d;->d:Lcom/google/common/collect/c2;

    invoke-interface {v2, p1}, Lcom/google/common/collect/c2;->K(Ljava/lang/Object;)I

    move-result p1

    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_15
    return v1
.end method

.method public clear()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method g()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$d;->i()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->size(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method

.method h()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multisets$d;->c:Lcom/google/common/collect/c2;

    invoke-interface {v0}, Lcom/google/common/collect/c2;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/Multisets$d$a;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Multisets$d$a;-><init>(Lcom/google/common/collect/Multisets$d;Ljava/util/Iterator;)V

    return-object v1
.end method

.method i()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multisets$d;->c:Lcom/google/common/collect/c2;

    invoke-interface {v0}, Lcom/google/common/collect/c2;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/Multisets$d$b;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Multisets$d$b;-><init>(Lcom/google/common/collect/Multisets$d;Ljava/util/Iterator;)V

    return-object v1
.end method
