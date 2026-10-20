###### Class com.google.common.collect.n1.a (com.google.common.collect.n1$a)
.class abstract Lcom/google/common/collect/n1$a;
.super Lcom/google/common/collect/n1$b;
.source "ImmutableCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/n1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/n1$b<",
        "TE;>;"
    }
.end annotation


# instance fields
.field a:[Ljava/lang/Object;

.field b:I

.field c:Z


# direct methods
.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Lcom/google/common/collect/n1$b;-><init>()V

    const-string v0, "initialCapacity"

    invoke-static {p1, v0}, Lcom/google/common/collect/z;->b(ILjava/lang/String;)I

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/collect/n1$a;->a:[Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/common/collect/n1$a;->b:I

    return-void
.end method

.method private h(I)V
    .registers 5

    iget-object v0, p0, Lcom/google/common/collect/n1$a;->a:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    if-ge v1, p1, :cond_14

    array-length v1, v0

    invoke-static {v1, p1}, Lcom/google/common/collect/n1$b;->e(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/n1$a;->a:[Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/google/common/collect/n1$a;->c:Z

    goto :goto_22

    :cond_14
    iget-boolean p1, p0, Lcom/google/common/collect/n1$a;->c:Z

    if-eqz p1, :cond_22

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/collect/n1$a;->a:[Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/google/common/collect/n1$a;->c:Z

    :cond_22
    :goto_22
    return-void
.end method


# virtual methods
.method public varargs b([Ljava/lang/Object;)Lcom/google/common/collect/n1$b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/common/collect/n1$b<",
            "TE;>;"
        }
    .end annotation

    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/n1$a;->g([Ljava/lang/Object;I)V

    return-object p0
.end method

.method public c(Ljava/lang/Iterable;)Lcom/google/common/collect/n1$b;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/n1$b<",
            "TE;>;"
        }
    .end annotation

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_22

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    iget v1, p0, Lcom/google/common/collect/n1$a;->b:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/google/common/collect/n1$a;->h(I)V

    instance-of v1, v0, Lcom/google/common/collect/n1;

    if-eqz v1, :cond_22

    check-cast v0, Lcom/google/common/collect/n1;

    iget-object p1, p0, Lcom/google/common/collect/n1$a;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/n1$a;->b:I

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/n1;->f([Ljava/lang/Object;I)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/n1$a;->b:I

    return-object p0

    :cond_22
    invoke-super {p0, p1}, Lcom/google/common/collect/n1$b;->c(Ljava/lang/Iterable;)Lcom/google/common/collect/n1$b;

    return-object p0
.end method

.method public f(Ljava/lang/Object;)Lcom/google/common/collect/n1$a;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/n1$a<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/common/collect/n1$a;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/collect/n1$a;->h(I)V

    iget-object v0, p0, Lcom/google/common/collect/n1$a;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/n1$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/common/collect/n1$a;->b:I

    aput-object p1, v0, v1

    return-object p0
.end method

.method final g([Ljava/lang/Object;I)V
    .registers 6

    invoke-static {p1, p2}, Lcom/google/common/collect/ObjectArrays;->c([Ljava/lang/Object;I)[Ljava/lang/Object;

    iget v0, p0, Lcom/google/common/collect/n1$a;->b:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/google/common/collect/n1$a;->h(I)V

    iget-object v0, p0, Lcom/google/common/collect/n1$a;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/n1$a;->b:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/common/collect/n1$a;->b:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/common/collect/n1$a;->b:I

    return-void
.end method
