###### Class com.google.common.collect.h.c (com.google.common.collect.h$c)
.class abstract Lcom/google/common/collect/h$c;
.super Ljava/lang/Object;
.source "AbstractMapBasedMultiset.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "c"
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

.field c:I

.field final synthetic d:Lcom/google/common/collect/h;


# direct methods
.method constructor <init>(Lcom/google/common/collect/h;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/h$c;->d:Lcom/google/common/collect/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/f2;

    invoke-virtual {v0}, Lcom/google/common/collect/f2;->e()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/h$c;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/h$c;->b:I

    iget-object p1, p1, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/f2;

    iget p1, p1, Lcom/google/common/collect/f2;->d:I

    iput p1, p0, Lcom/google/common/collect/h$c;->c:I

    return-void
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/h$c;->d:Lcom/google/common/collect/h;

    iget-object v0, v0, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/f2;

    iget v0, v0, Lcom/google/common/collect/f2;->d:I

    iget v1, p0, Lcom/google/common/collect/h$c;->c:I

    if-ne v0, v1, :cond_b

    return-void

    :cond_b
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method abstract c(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .registers 2

    invoke-direct {p0}, Lcom/google/common/collect/h$c;->b()V

    iget v0, p0, Lcom/google/common/collect/h$c;->a:I

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/h$c;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/google/common/collect/h$c;->a:I

    invoke-virtual {p0, v0}, Lcom/google/common/collect/h$c;->c(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/h$c;->a:I

    iput v1, p0, Lcom/google/common/collect/h$c;->b:I

    iget-object v2, p0, Lcom/google/common/collect/h$c;->d:Lcom/google/common/collect/h;

    iget-object v2, v2, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/f2;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/f2;->s(I)I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/h$c;->a:I

    return-object v0

    :cond_1b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 7

    invoke-direct {p0}, Lcom/google/common/collect/h$c;->b()V

    iget v0, p0, Lcom/google/common/collect/h$c;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lcom/google/common/collect/z;->e(Z)V

    iget-object v0, p0, Lcom/google/common/collect/h$c;->d:Lcom/google/common/collect/h;

    iget-wide v2, v0, Lcom/google/common/collect/h;->d:J

    iget-object v4, v0, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/f2;

    iget v5, p0, Lcom/google/common/collect/h$c;->b:I

    invoke-virtual {v4, v5}, Lcom/google/common/collect/f2;->x(I)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/google/common/collect/h;->d:J

    iget-object v0, p0, Lcom/google/common/collect/h$c;->d:Lcom/google/common/collect/h;

    iget-object v0, v0, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/f2;

    iget v2, p0, Lcom/google/common/collect/h$c;->a:I

    iget v3, p0, Lcom/google/common/collect/h$c;->b:I

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/f2;->t(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/h$c;->a:I

    iput v1, p0, Lcom/google/common/collect/h$c;->b:I

    iget-object v0, p0, Lcom/google/common/collect/h$c;->d:Lcom/google/common/collect/h;

    iget-object v0, v0, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/f2;

    iget v0, v0, Lcom/google/common/collect/f2;->d:I

    iput v0, p0, Lcom/google/common/collect/h$c;->c:I

    return-void
.end method
