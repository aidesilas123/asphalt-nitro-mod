###### Class com.google.common.collect.Collections2.e (com.google.common.collect.Collections2$e)
.class Lcom/google/common/collect/Collections2$e;
.super Lcom/google/common/collect/AbstractIterator;
.source "Collections2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Collections2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractIterator<",
        "Ljava/util/List<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field

.field final d:[I

.field final e:[I

.field f:I


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/common/collect/Collections2$e;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/common/collect/Collections2$e;->d:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/common/collect/Collections2$e;->e:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([II)V

    const p1, 0x7fffffff

    iput p1, p0, Lcom/google/common/collect/Collections2$e;->f:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic b()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$e;->f()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method e()V
    .registers 6

    iget-object v0, p0, Lcom/google/common/collect/Collections2$e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/Collections2$e;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    return-void

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iget-object v1, p0, Lcom/google/common/collect/Collections2$e;->d:[I

    iget v2, p0, Lcom/google/common/collect/Collections2$e;->f:I

    aget v3, v1, v2

    iget-object v4, p0, Lcom/google/common/collect/Collections2$e;->e:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    if-gez v3, :cond_20

    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$e;->g()V

    goto :goto_f

    :cond_20
    add-int/lit8 v4, v2, 0x1

    if-ne v3, v4, :cond_2d

    if-nez v2, :cond_27

    goto :goto_3f

    :cond_27
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$e;->g()V

    goto :goto_f

    :cond_2d
    iget-object v4, p0, Lcom/google/common/collect/Collections2$e;->c:Ljava/util/List;

    aget v1, v1, v2

    sub-int v1, v2, v1

    add-int/2addr v1, v0

    sub-int/2addr v2, v3

    add-int/2addr v2, v0

    invoke-static {v4, v1, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    iget-object v0, p0, Lcom/google/common/collect/Collections2$e;->d:[I

    iget v1, p0, Lcom/google/common/collect/Collections2$e;->f:I

    aput v3, v0, v1

    :goto_3f
    return-void
.end method

.method protected f()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/collect/Collections2$e;->f:I

    if-gtz v0, :cond_b

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/common/collect/Collections2$e;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$e;->e()V

    return-object v0
.end method

.method g()V
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/Collections2$e;->e:[I

    iget v1, p0, Lcom/google/common/collect/Collections2$e;->f:I

    aget v2, v0, v1

    neg-int v2, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/collect/Collections2$e;->f:I

    return-void
.end method
