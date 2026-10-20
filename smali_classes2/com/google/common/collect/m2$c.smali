###### Class com.google.common.collect.m2.c (com.google.common.collect.m2$c)
.class Lcom/google/common/collect/m2$c;
.super Lcom/google/common/collect/m1;
.source "RegularContiguousSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/m2;->y()Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/m1<",
        "TC;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/google/common/collect/m2;


# direct methods
.method constructor <init>(Lcom/google/common/collect/m2;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/m2$c;->c:Lcom/google/common/collect/m2;

    invoke-direct {p0}, Lcom/google/common/collect/m1;-><init>()V

    return-void
.end method


# virtual methods
.method bridge synthetic C()Lcom/google/common/collect/n1;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/m2$c;->D()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method D()Lcom/google/common/collect/ImmutableSortedSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/m2$c;->c:Lcom/google/common/collect/m2;

    return-object v0
.end method

.method public E(I)Ljava/lang/Comparable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TC;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/m1;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    iget-object v0, p0, Lcom/google/common/collect/m2$c;->c:Lcom/google/common/collect/m2;

    iget-object v1, v0, Lcom/google/common/collect/ContiguousSet;->e:Lcom/google/common/collect/DiscreteDomain;

    invoke-virtual {v0}, Lcom/google/common/collect/m2;->i0()Ljava/lang/Comparable;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/common/collect/DiscreteDomain;->f(Ljava/lang/Comparable;J)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/m2$c;->E(I)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method
