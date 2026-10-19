###### Class com.google.common.collect.MinMaxPriorityQueue.e (com.google.common.collect.MinMaxPriorityQueue$e)
.class Lcom/google/common/collect/MinMaxPriorityQueue$e;
.super Ljava/lang/Object;
.source "MinMaxPriorityQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MinMaxPriorityQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private g:Z

.field final synthetic h:Lcom/google/common/collect/MinMaxPriorityQueue;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/MinMaxPriorityQueue;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->h:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->a:I

    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->b:I

    invoke-static {p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->d(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/MinMaxPriorityQueue;Lcom/google/common/collect/MinMaxPriorityQueue$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$e;-><init>(Lcom/google/common/collect/MinMaxPriorityQueue;)V

    return-void
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->h:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->d(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->c:I

    if-ne v0, v1, :cond_b

    return-void

    :cond_b
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method private c(Ljava/lang/Iterable;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TE;>;TE;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    const/4 p1, 0x1

    return p1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method private d(I)V
    .registers 4

    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->b:I

    if-ge v0, p1, :cond_23

    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->e:Ljava/util/List;

    if-eqz v0, :cond_21

    :goto_8
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->h:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->size()I

    move-result v0

    if-ge p1, v0, :cond_21

    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->h:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->g(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$e;->c(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_21
    iput p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->b:I

    :cond_23
    return-void
.end method

.method private e(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->h:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->c(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v2

    if-ge v1, v2, :cond_1e

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->h:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_1b

    iget-object p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->h:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {p1, v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->t(I)Lcom/google/common/collect/MinMaxPriorityQueue$d;

    const/4 p1, 0x1

    return p1

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1e
    return v0
.end method


# virtual methods
.method public hasNext()Z
    .registers 4

    invoke-direct {p0}, Lcom/google/common/collect/MinMaxPriorityQueue$e;->b()V

    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$e;->d(I)V

    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->b:I

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->h:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->size()I

    move-result v2

    if-lt v0, v2, :cond_20

    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->d:Ljava/util/Queue;

    if-eqz v0, :cond_1f

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :cond_20
    :goto_20
    return v1
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/MinMaxPriorityQueue$e;->b()V

    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$e;->d(I)V

    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->b:I

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->h:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->b:I

    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->a:I

    iput-boolean v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->g:Z

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->h:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->g(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_21
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->d:Ljava/util/Queue;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->h:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->size()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->a:I

    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->f:Ljava/lang/Object;

    if-eqz v0, :cond_3a

    iput-boolean v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->g:Z

    return-object v0

    :cond_3a
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "iterator moved past last element in queue."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .registers 4

    iget-boolean v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->g:Z

    invoke-static {v0}, Lcom/google/common/collect/z;->e(Z)V

    invoke-direct {p0}, Lcom/google/common/collect/MinMaxPriorityQueue$e;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->g:Z

    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->c:I

    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->a:I

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->h:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->size()I

    move-result v1

    if-ge v0, v1, :cond_6b

    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->h:Lcom/google/common/collect/MinMaxPriorityQueue;

    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->a:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->t(I)Lcom/google/common/collect/MinMaxPriorityQueue$d;

    move-result-object v0

    if-eqz v0, :cond_5e

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->d:Ljava/util/Queue;

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->e:Ljava/util/List;

    if-nez v1, :cond_3c

    :cond_2d
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->d:Ljava/util/Queue;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->e:Ljava/util/List;

    :cond_3c
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->e:Ljava/util/List;

    iget-object v2, v0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->a:Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$e;->c(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->d:Ljava/util/Queue;

    iget-object v2, v0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->a:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_4d
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->d:Ljava/util/Queue;

    iget-object v2, v0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->b:Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$e;->c(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->e:Ljava/util/List;

    iget-object v0, v0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->b:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5e
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->a:I

    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->b:I

    goto :goto_7a

    :cond_6b
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->f:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$e;->e(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$e;->f:Ljava/lang/Object;

    :goto_7a
    return-void
.end method
