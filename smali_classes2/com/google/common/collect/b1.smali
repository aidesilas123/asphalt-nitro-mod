###### Class com.google.common.collect.b1 (com.google.common.collect.b1)
.class public abstract Lcom/google/common/collect/b1;
.super Lcom/google/common/collect/u0;
.source "ForwardingMultiset.java"

# interfaces
.implements Lcom/google/common/collect/c2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/u0<",
        "TE;>;",
        "Lcom/google/common/collect/c2<",
        "TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/collect/u0;-><init>()V

    return-void
.end method


# virtual methods
.method public I(Ljava/lang/Object;II)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/b1;->P()Lcom/google/common/collect/c2;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/collect/c2;->I(Ljava/lang/Object;II)Z

    move-result p1

    return p1
.end method

.method public K(Ljava/lang/Object;)I
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/collect/b1;->P()Lcom/google/common/collect/c2;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/c2;->K(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected abstract P()Lcom/google/common/collect/c2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/c2<",
            "TE;>;"
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p1, p0, :cond_f

    invoke-virtual {p0}, Lcom/google/common/collect/b1;->P()Lcom/google/common/collect/c2;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/c2;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/b1;->P()Lcom/google/common/collect/c2;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/c2;->hashCode()I

    move-result v0

    return v0
.end method

.method public m(Ljava/lang/Object;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/b1;->P()Lcom/google/common/collect/c2;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/c2;->m(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public s(Ljava/lang/Object;I)I
    .registers 4

    invoke-virtual {p0}, Lcom/google/common/collect/b1;->P()Lcom/google/common/collect/c2;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/c2;->s(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public u(Ljava/lang/Object;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/b1;->P()Lcom/google/common/collect/c2;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/c2;->u(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method
