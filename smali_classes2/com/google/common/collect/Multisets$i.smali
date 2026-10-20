###### Class com.google.common.collect.Multisets.i (com.google.common.collect.Multisets$i)
.class abstract Lcom/google/common/collect/Multisets$i;
.super Lcom/google/common/collect/Sets$j;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Sets$j<",
        "Lcom/google/common/collect/c2$a<",
        "TE;>;>;"
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

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$i;->i()Lcom/google/common/collect/c2;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/google/common/collect/c2$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    check-cast p1, Lcom/google/common/collect/c2$a;

    invoke-interface {p1}, Lcom/google/common/collect/c2$a;->getCount()I

    move-result v0

    if-gtz v0, :cond_e

    return v1

    :cond_e
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$i;->i()Lcom/google/common/collect/c2;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/c2$a;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/common/collect/c2;->K(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1}, Lcom/google/common/collect/c2$a;->getCount()I

    move-result p1

    if-ne v0, p1, :cond_21

    const/4 v1, 0x1

    :cond_21
    return v1
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

.method public remove(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/google/common/collect/c2$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    check-cast p1, Lcom/google/common/collect/c2$a;

    invoke-interface {p1}, Lcom/google/common/collect/c2$a;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/c2$a;->getCount()I

    move-result p1

    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$i;->i()Lcom/google/common/collect/c2;

    move-result-object v2

    invoke-interface {v2, v0, p1, v1}, Lcom/google/common/collect/c2;->I(Ljava/lang/Object;II)Z

    move-result p1

    return p1

    :cond_1a
    return v1
.end method
