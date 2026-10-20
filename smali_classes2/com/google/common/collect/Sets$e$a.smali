###### Class com.google.common.collect.Sets.e.a (com.google.common.collect.Sets$e$a)
.class Lcom/google/common/collect/Sets$e$a;
.super Lcom/google/common/collect/AbstractIterator;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Sets$e;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "Ljava/util/Set<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final c:Ljava/util/BitSet;

.field final synthetic d:Lcom/google/common/collect/Sets$e;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Sets$e;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/Sets$e$a;->d:Lcom/google/common/collect/Sets$e;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    iget-object p1, p1, Lcom/google/common/collect/Sets$e;->b:Lcom/google/common/collect/ImmutableMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/collect/Sets$e$a;->c:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method protected bridge synthetic b()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Sets$e$a;->e()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected e()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Sets$e$a;->c:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/common/collect/Sets$e$a;->c:Ljava/util/BitSet;

    iget-object v2, p0, Lcom/google/common/collect/Sets$e$a;->d:Lcom/google/common/collect/Sets$e;

    iget v2, v2, Lcom/google/common/collect/Sets$e;->a:I

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(II)V

    goto :goto_43

    :cond_13
    iget-object v0, p0, Lcom/google/common/collect/Sets$e$a;->c:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/common/collect/Sets$e$a;->c:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/common/collect/Sets$e$a;->d:Lcom/google/common/collect/Sets$e;

    iget-object v3, v3, Lcom/google/common/collect/Sets$e;->b:Lcom/google/common/collect/ImmutableMap;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-ne v2, v3, :cond_30

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0

    :cond_30
    iget-object v3, p0, Lcom/google/common/collect/Sets$e$a;->c:Ljava/util/BitSet;

    sub-int v0, v2, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v1, v0}, Ljava/util/BitSet;->set(II)V

    iget-object v1, p0, Lcom/google/common/collect/Sets$e$a;->c:Ljava/util/BitSet;

    invoke-virtual {v1, v0, v2}, Ljava/util/BitSet;->clear(II)V

    iget-object v0, p0, Lcom/google/common/collect/Sets$e$a;->c:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    :goto_43
    iget-object v0, p0, Lcom/google/common/collect/Sets$e$a;->c:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    new-instance v1, Lcom/google/common/collect/Sets$e$a$a;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Sets$e$a$a;-><init>(Lcom/google/common/collect/Sets$e$a;Ljava/util/BitSet;)V

    return-object v1
.end method
