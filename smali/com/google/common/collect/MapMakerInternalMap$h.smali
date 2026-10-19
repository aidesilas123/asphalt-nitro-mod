###### Class com.google.common.collect.MapMakerInternalMap.h (com.google.common.collect.MapMakerInternalMap$h)
.class abstract Lcom/google/common/collect/MapMakerInternalMap$h;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Lcom/google/common/collect/MapMakerInternalMap$n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$n<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation
.end field

.field d:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation
.end field

.field e:Lcom/google/common/collect/MapMakerInternalMap$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field f:Lcom/google/common/collect/MapMakerInternalMap$g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap<",
            "TK;TV;TE;TS;>.g0;"
        }
    .end annotation
.end field

.field g:Lcom/google/common/collect/MapMakerInternalMap$g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap<",
            "TK;TV;TE;TS;>.g0;"
        }
    .end annotation
.end field

.field final synthetic h:Lcom/google/common/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$h;->h:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/common/collect/MapMakerInternalMap;->d:[Lcom/google/common/collect/MapMakerInternalMap$n;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/MapMakerInternalMap$h;->a:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/common/collect/MapMakerInternalMap$h;->b:I

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$h;->b()V

    return-void
.end method


# virtual methods
.method final b()V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$h;->f:Lcom/google/common/collect/MapMakerInternalMap$g0;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$h;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$h;->f()Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    :cond_11
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$h;->a:I

    if-ltz v0, :cond_39

    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$h;->h:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v1, v1, Lcom/google/common/collect/MapMakerInternalMap;->d:[Lcom/google/common/collect/MapMakerInternalMap$n;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap$h;->a:I

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$h;->c:Lcom/google/common/collect/MapMakerInternalMap$n;

    iget v0, v0, Lcom/google/common/collect/MapMakerInternalMap$n;->b:I

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$h;->c:Lcom/google/common/collect/MapMakerInternalMap$n;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap$n;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$h;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$h;->b:I

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$h;->f()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_39
    return-void
.end method

.method c(Lcom/google/common/collect/MapMakerInternalMap$i;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$i;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$h;->h:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/MapMakerInternalMap;->f(Lcom/google/common/collect/MapMakerInternalMap$i;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1c

    new-instance v1, Lcom/google/common/collect/MapMakerInternalMap$g0;

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$h;->h:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {v1, v2, v0, p1}, Lcom/google/common/collect/MapMakerInternalMap$g0;-><init>(Lcom/google/common/collect/MapMakerInternalMap;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$h;->f:Lcom/google/common/collect/MapMakerInternalMap$g0;
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_1e

    const/4 p1, 0x1

    :goto_16
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$h;->c:Lcom/google/common/collect/MapMakerInternalMap$n;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap$n;->v()V

    return p1

    :cond_1c
    const/4 p1, 0x0

    goto :goto_16

    :catchall_1e
    move-exception p1

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$h;->c:Lcom/google/common/collect/MapMakerInternalMap$n;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap$n;->v()V

    throw p1
.end method

.method d()Lcom/google/common/collect/MapMakerInternalMap$g0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap<",
            "TK;TV;TE;TS;>.g0;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$h;->f:Lcom/google/common/collect/MapMakerInternalMap$g0;

    if-eqz v0, :cond_c

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$h;->g:Lcom/google/common/collect/MapMakerInternalMap$g0;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$h;->b()V

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$h;->g:Lcom/google/common/collect/MapMakerInternalMap$g0;

    return-object v0

    :cond_c
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method e()Z
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$h;->e:Lcom/google/common/collect/MapMakerInternalMap$i;

    if-eqz v0, :cond_19

    :goto_4
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$i;->c()Lcom/google/common/collect/MapMakerInternalMap$i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$h;->e:Lcom/google/common/collect/MapMakerInternalMap$i;

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$h;->e:Lcom/google/common/collect/MapMakerInternalMap$i;

    if-eqz v0, :cond_19

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$h;->c(Lcom/google/common/collect/MapMakerInternalMap$i;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$h;->e:Lcom/google/common/collect/MapMakerInternalMap$i;

    goto :goto_4

    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method f()Z
    .registers 4

    :cond_0
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$h;->b:I

    if-ltz v0, :cond_22

    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$h;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap$h;->b:I

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$i;

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$h;->e:Lcom/google/common/collect/MapMakerInternalMap$i;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$h;->c(Lcom/google/common/collect/MapMakerInternalMap$i;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$h;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_20
    const/4 v0, 0x1

    return v0

    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$h;->f:Lcom/google/common/collect/MapMakerInternalMap$g0;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public remove()V
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$h;->g:Lcom/google/common/collect/MapMakerInternalMap$g0;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/common/collect/z;->e(Z)V

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$h;->h:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$h;->g:Lcom/google/common/collect/MapMakerInternalMap$g0;

    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap$g0;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$h;->g:Lcom/google/common/collect/MapMakerInternalMap$g0;

    return-void
.end method
