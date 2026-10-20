###### Class com.google.common.collect.a1 (com.google.common.collect.a1)
.class public abstract Lcom/google/common/collect/a1;
.super Lcom/google/common/collect/d1;
.source "ForwardingMultimap.java"

# interfaces
.implements Lcom/google/common/collect/b2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/d1;",
        "Lcom/google/common/collect/b2<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/collect/d1;-><init>()V

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/google/common/collect/a1;->C()Lcom/google/common/collect/b2;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/b2;->A(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected abstract C()Lcom/google/common/collect/b2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/b2<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/collect/a1;->C()Lcom/google/common/collect/b2;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/b2;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p1, p0, :cond_f

    invoke-virtual {p0}, Lcom/google/common/collect/a1;->C()Lcom/google/common/collect/b2;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/b2;->equals(Ljava/lang/Object;)Z

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

    invoke-virtual {p0}, Lcom/google/common/collect/a1;->C()Lcom/google/common/collect/b2;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/b2;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/a1;->C()Lcom/google/common/collect/b2;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/b2;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/a1;->C()Lcom/google/common/collect/b2;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/b2;->size()I

    move-result v0

    return v0
.end method
