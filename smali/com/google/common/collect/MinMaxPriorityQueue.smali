###### Class com.google.common.collect.MinMaxPriorityQueue (com.google.common.collect.MinMaxPriorityQueue)
.class public final Lcom/google/common/collect/MinMaxPriorityQueue;
.super Ljava/util/AbstractQueue;
.source "MinMaxPriorityQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MinMaxPriorityQueue$e;,
        Lcom/google/common/collect/MinMaxPriorityQueue$c;,
        Lcom/google/common/collect/MinMaxPriorityQueue$d;,
        Lcom/google/common/collect/MinMaxPriorityQueue$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/collect/MinMaxPriorityQueue$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MinMaxPriorityQueue<",
            "TE;>.c;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/common/collect/MinMaxPriorityQueue$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MinMaxPriorityQueue<",
            "TE;>.c;"
        }
    .end annotation
.end field

.field final c:I

.field private d:[Ljava/lang/Object;

.field private e:I

.field private f:I


# direct methods
.method private constructor <init>(Lcom/google/common/collect/MinMaxPriorityQueue$b;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MinMaxPriorityQueue$b<",
            "-TE;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    invoke-static {p1}, Lcom/google/common/collect/MinMaxPriorityQueue$b;->a(Lcom/google/common/collect/MinMaxPriorityQueue$b;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/MinMaxPriorityQueue$c;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$c;-><init>(Lcom/google/common/collect/MinMaxPriorityQueue;Lcom/google/common/collect/Ordering;)V

    iput-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->a:Lcom/google/common/collect/MinMaxPriorityQueue$c;

    new-instance v2, Lcom/google/common/collect/MinMaxPriorityQueue$c;

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->f()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$c;-><init>(Lcom/google/common/collect/MinMaxPriorityQueue;Lcom/google/common/collect/Ordering;)V

    iput-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->b:Lcom/google/common/collect/MinMaxPriorityQueue$c;

    iput-object v2, v1, Lcom/google/common/collect/MinMaxPriorityQueue$c;->b:Lcom/google/common/collect/MinMaxPriorityQueue$c;

    iput-object v1, v2, Lcom/google/common/collect/MinMaxPriorityQueue$c;->b:Lcom/google/common/collect/MinMaxPriorityQueue$c;

    invoke-static {p1}, Lcom/google/common/collect/MinMaxPriorityQueue$b;->b(Lcom/google/common/collect/MinMaxPriorityQueue$b;)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->c:I

    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/MinMaxPriorityQueue$b;ILcom/google/common/collect/MinMaxPriorityQueue$a;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/MinMaxPriorityQueue;-><init>(Lcom/google/common/collect/MinMaxPriorityQueue$b;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic c(Lcom/google/common/collect/MinMaxPriorityQueue;)I
    .registers 1

    iget p0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    return p0
.end method

.method public static create()Lcom/google/common/collect/MinMaxPriorityQueue;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "TE;>;>()",
            "Lcom/google/common/collect/MinMaxPriorityQueue<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/MinMaxPriorityQueue$b;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$b;-><init>(Ljava/util/Comparator;Lcom/google/common/collect/MinMaxPriorityQueue$a;)V

    invoke-virtual {v0}, Lcom/google/common/collect/MinMaxPriorityQueue$b;->c()Lcom/google/common/collect/MinMaxPriorityQueue;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;)Lcom/google/common/collect/MinMaxPriorityQueue;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "TE;>;>(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/MinMaxPriorityQueue<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/MinMaxPriorityQueue$b;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$b;-><init>(Ljava/util/Comparator;Lcom/google/common/collect/MinMaxPriorityQueue$a;)V

    invoke-virtual {v0, p0}, Lcom/google/common/collect/MinMaxPriorityQueue$b;->d(Ljava/lang/Iterable;)Lcom/google/common/collect/MinMaxPriorityQueue;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/google/common/collect/MinMaxPriorityQueue;)I
    .registers 1

    iget p0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->f:I

    return p0
.end method

.method private e()I
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    array-length v0, v0

    const/16 v1, 0x40

    if-ge v0, v1, :cond_c

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    goto :goto_13

    :cond_c
    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/common/math/IntMath;->checkedMultiply(II)I

    move-result v0

    :goto_13
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->c:I

    invoke-static {v0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->f(II)I

    move-result v0

    return v0
.end method

.method public static expectedSize(I)Lcom/google/common/collect/MinMaxPriorityQueue$b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/MinMaxPriorityQueue$b<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/MinMaxPriorityQueue$b;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$b;-><init>(Ljava/util/Comparator;Lcom/google/common/collect/MinMaxPriorityQueue$a;)V

    invoke-virtual {v0, p0}, Lcom/google/common/collect/MinMaxPriorityQueue$b;->e(I)Lcom/google/common/collect/MinMaxPriorityQueue$b;

    move-result-object p0

    return-object p0
.end method

.method private static f(II)I
    .registers 2

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private h(ILjava/lang/Object;)Lcom/google/common/collect/MinMaxPriorityQueue$d;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)",
            "Lcom/google/common/collect/MinMaxPriorityQueue$d<",
            "TE;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->l(I)Lcom/google/common/collect/MinMaxPriorityQueue$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$c;->f(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/google/common/collect/MinMaxPriorityQueue$c;->b(ILjava/lang/Object;)I

    move-result v2

    if-ne v2, v1, :cond_13

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/common/collect/MinMaxPriorityQueue$c;->o(IILjava/lang/Object;)Lcom/google/common/collect/MinMaxPriorityQueue$d;

    move-result-object p1

    return-object p1

    :cond_13
    if-ge v2, p1, :cond_1f

    new-instance v0, Lcom/google/common/collect/MinMaxPriorityQueue$d;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->g(I)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return-object v0
.end method

.method private i()I
    .registers 4

    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    const/4 v2, 0x2

    if-eq v0, v2, :cond_12

    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->b:Lcom/google/common/collect/MinMaxPriorityQueue$c;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$c;->c(II)I

    move-result v0

    if-gtz v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x2

    :cond_12
    :goto_12
    return v1

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method private j()V
    .registers 5

    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    array-length v1, v1

    if-le v0, v1, :cond_16

    invoke-direct {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->e()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    :cond_16
    return-void
.end method

.method private l(I)Lcom/google/common/collect/MinMaxPriorityQueue$c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/MinMaxPriorityQueue<",
            "TE;>.c;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->o(I)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->a:Lcom/google/common/collect/MinMaxPriorityQueue$c;

    goto :goto_b

    :cond_9
    iget-object p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->b:Lcom/google/common/collect/MinMaxPriorityQueue$c;

    :goto_b
    return-object p1
.end method

.method public static maximumSize(I)Lcom/google/common/collect/MinMaxPriorityQueue$b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/MinMaxPriorityQueue$b<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/MinMaxPriorityQueue$b;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$b;-><init>(Ljava/util/Comparator;Lcom/google/common/collect/MinMaxPriorityQueue$a;)V

    invoke-virtual {v0, p0}, Lcom/google/common/collect/MinMaxPriorityQueue$b;->f(I)Lcom/google/common/collect/MinMaxPriorityQueue$b;

    move-result-object p0

    return-object p0
.end method

.method static n(IILjava/lang/Iterable;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Iterable<",
            "*>;)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p0, v0, :cond_5

    const/16 p0, 0xb

    :cond_5
    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_13

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    :cond_13
    invoke-static {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->f(II)I

    move-result p0

    return p0
.end method

.method static o(I)Z
    .registers 5

    const/4 v0, 0x1

    add-int/2addr p0, v0

    not-int p0, p0

    not-int p0, p0

    const/4 v1, 0x0

    if-lez p0, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    const-string v3, "negative index"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    const v2, 0x55555555

    and-int/2addr v2, p0

    const v3, -0x55555556

    and-int/2addr p0, v3

    if-le v2, p0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public static orderedBy(Ljava/util/Comparator;)Lcom/google/common/collect/MinMaxPriorityQueue$b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TB;>;)",
            "Lcom/google/common/collect/MinMaxPriorityQueue$b<",
            "TB;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/MinMaxPriorityQueue$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$b;-><init>(Ljava/util/Comparator;Lcom/google/common/collect/MinMaxPriorityQueue$a;)V

    return-object v0
.end method

.method private r(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->g(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->t(I)Lcom/google/common/collect/MinMaxPriorityQueue$d;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->offer(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->offer(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_5

    :cond_14
    return v0
.end method

.method public clear()V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    if-ge v1, v2, :cond_e

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    return-void
.end method

.method g(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/MinMaxPriorityQueue$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$e;-><init>(Lcom/google/common/collect/MinMaxPriorityQueue;Lcom/google/common/collect/MinMaxPriorityQueue$a;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->f:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->f:I

    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    invoke-direct {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->j()V

    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->l(I)Lcom/google/common/collect/MinMaxPriorityQueue$c;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$c;->a(ILjava/lang/Object;)V

    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    iget v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->c:I

    if-le v0, v2, :cond_27

    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->pollLast()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_26

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :cond_27
    :goto_27
    return v1
.end method

.method public peek()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/AbstractQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_d

    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->g(I)Ljava/lang/Object;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/AbstractQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_d

    :cond_8
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->r(I)Ljava/lang/Object;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public pollLast()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/AbstractQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_10

    :cond_8
    invoke-direct {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->i()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->r(I)Ljava/lang/Object;

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    return v0
.end method

.method t(I)Lcom/google/common/collect/MinMaxPriorityQueue$d;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/MinMaxPriorityQueue$d<",
            "TE;>;"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->f:I

    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_19

    iget-object p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    aput-object v1, p1, v0

    return-object v1

    :cond_19
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->g(I)Ljava/lang/Object;

    move-result-object v0

    iget v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    invoke-direct {p0, v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->l(I)Lcom/google/common/collect/MinMaxPriorityQueue$c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$c;->n(Ljava/lang/Object;)I

    move-result v2

    if-ne v2, p1, :cond_30

    iget-object p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    aput-object v1, p1, v0

    return-object v1

    :cond_30
    iget v3, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    invoke-virtual {p0, v3}, Lcom/google/common/collect/MinMaxPriorityQueue;->g(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    iget v5, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    aput-object v1, v4, v5

    invoke-direct {p0, p1, v3}, Lcom/google/common/collect/MinMaxPriorityQueue;->h(ILjava/lang/Object;)Lcom/google/common/collect/MinMaxPriorityQueue$d;

    move-result-object v1

    if-ge v2, p1, :cond_52

    if-nez v1, :cond_4a

    new-instance p1, Lcom/google/common/collect/MinMaxPriorityQueue$d;

    invoke-direct {p1, v0, v3}, Lcom/google/common/collect/MinMaxPriorityQueue$d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_4a
    new-instance p1, Lcom/google/common/collect/MinMaxPriorityQueue$d;

    iget-object v1, v1, Lcom/google/common/collect/MinMaxPriorityQueue$d;->b:Ljava/lang/Object;

    invoke-direct {p1, v0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_52
    return-object v1
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 5

    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

###### Class com.google.common.collect.MinMaxPriorityQueue.a (com.google.common.collect.MinMaxPriorityQueue$a)
.class synthetic Lcom/google/common/collect/MinMaxPriorityQueue$a;
.super Ljava/lang/Object;
.source "MinMaxPriorityQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MinMaxPriorityQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.common.collect.MinMaxPriorityQueue.b (com.google.common.collect.MinMaxPriorityQueue$b)
.class public final Lcom/google/common/collect/MinMaxPriorityQueue$b;
.super Ljava/lang/Object;
.source "MinMaxPriorityQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MinMaxPriorityQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TB;>;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>(Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TB;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$b;->b:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$b;->c:I

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    iput-object p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$b;->a:Ljava/util/Comparator;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Comparator;Lcom/google/common/collect/MinMaxPriorityQueue$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$b;-><init>(Ljava/util/Comparator;)V

    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/MinMaxPriorityQueue$b;)Lcom/google/common/collect/Ordering;
    .registers 1

    invoke-direct {p0}, Lcom/google/common/collect/MinMaxPriorityQueue$b;->g()Lcom/google/common/collect/Ordering;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/google/common/collect/MinMaxPriorityQueue$b;)I
    .registers 1

    iget p0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$b;->c:I

    return p0
.end method

.method private g()Lcom/google/common/collect/Ordering;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>()",
            "Lcom/google/common/collect/Ordering<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$b;->a:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public c()Lcom/google/common/collect/MinMaxPriorityQueue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>()",
            "Lcom/google/common/collect/MinMaxPriorityQueue<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$b;->d(Ljava/lang/Iterable;)Lcom/google/common/collect/MinMaxPriorityQueue;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/Iterable;)Lcom/google/common/collect/MinMaxPriorityQueue;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Lcom/google/common/collect/MinMaxPriorityQueue<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/MinMaxPriorityQueue;

    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$b;->b:I

    iget v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$b;->c:I

    invoke-static {v1, v2, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->n(IILjava/lang/Iterable;)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/common/collect/MinMaxPriorityQueue;-><init>(Lcom/google/common/collect/MinMaxPriorityQueue$b;ILcom/google/common/collect/MinMaxPriorityQueue$a;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_20
    return-object v0
.end method

.method public e(I)Lcom/google/common/collect/MinMaxPriorityQueue$b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/MinMaxPriorityQueue$b<",
            "TB;>;"
        }
    .end annotation

    if-ltz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    iput p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$b;->b:I

    return-object p0
.end method

.method public f(I)Lcom/google/common/collect/MinMaxPriorityQueue$b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/MinMaxPriorityQueue$b<",
            "TB;>;"
        }
    .end annotation

    if-lez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    iput p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$b;->c:I

    return-object p0
.end method

###### Class com.google.common.collect.MinMaxPriorityQueue.c (com.google.common.collect.MinMaxPriorityQueue$c)
.class Lcom/google/common/collect/MinMaxPriorityQueue$c;
.super Ljava/lang/Object;
.source "MinMaxPriorityQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MinMaxPriorityQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final a:Lcom/google/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Ordering<",
            "TE;>;"
        }
    .end annotation
.end field

.field b:Lcom/google/common/collect/MinMaxPriorityQueue$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MinMaxPriorityQueue<",
            "TE;>.c;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/google/common/collect/MinMaxPriorityQueue;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MinMaxPriorityQueue;Lcom/google/common/collect/Ordering;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Ordering<",
            "TE;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->a:Lcom/google/common/collect/Ordering;

    return-void
.end method

.method private j(I)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$c;->l(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$c;->l(I)I

    move-result p1

    return p1
.end method

.method private k(I)I
    .registers 2

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private l(I)I
    .registers 2

    add-int/lit8 p1, p1, -0x1

    div-int/lit8 p1, p1, 0x2

    return p1
.end method

.method private m(I)I
    .registers 2

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x2

    return p1
.end method


# virtual methods
.method a(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MinMaxPriorityQueue$c;->e(ILjava/lang/Object;)I

    move-result v0

    if-ne v0, p1, :cond_9

    move v0, p1

    move-object p1, p0

    goto :goto_b

    :cond_9
    iget-object p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->b:Lcom/google/common/collect/MinMaxPriorityQueue$c;

    :goto_b
    invoke-virtual {p1, v0, p2}, Lcom/google/common/collect/MinMaxPriorityQueue$c;->b(ILjava/lang/Object;)I

    return-void
.end method

.method b(ILjava/lang/Object;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)I"
        }
    .end annotation

    :goto_0
    const/4 v0, 0x2

    if-le p1, v0, :cond_20

    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$c;->j(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->g(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->a:Lcom/google/common/collect/Ordering;

    invoke-virtual {v2, v1, p2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_16

    goto :goto_20

    :cond_16
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v2

    aput-object v1, v2, p1

    move p1, v0

    goto :goto_0

    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v0

    aput-object p2, v0, p1

    return p1
.end method

.method c(II)I
    .registers 5

    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->a:Lcom/google/common/collect/Ordering;

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->g(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v1, p2}, Lcom/google/common/collect/MinMaxPriorityQueue;->g(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method d(ILjava/lang/Object;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)I"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$c;->h(I)I

    move-result v0

    if-lez v0, :cond_2b

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->a:Lcom/google/common/collect/Ordering;

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->g(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_2b

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->g(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, p1

    iget-object p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object p1

    aput-object p2, p1, v0

    return v0

    :cond_2b
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MinMaxPriorityQueue$c;->e(ILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method e(ILjava/lang/Object;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)I"
        }
    .end annotation

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p2, p1, v0

    return v0

    :cond_c
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$c;->l(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->g(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_3e

    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$c;->l(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$c;->m(I)I

    move-result v2

    if-eq v2, v0, :cond_3e

    invoke-direct {p0, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$c;->k(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v4}, Lcom/google/common/collect/MinMaxPriorityQueue;->c(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v4

    if-lt v3, v4, :cond_3e

    iget-object v3, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v3, v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->g(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->a:Lcom/google/common/collect/Ordering;

    invoke-virtual {v4, v3, v1}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_3e

    move v0, v2

    move-object v1, v3

    :cond_3e
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->a:Lcom/google/common/collect/Ordering;

    invoke-virtual {v2, v1, p2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_57

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v2

    aput-object v1, v2, p1

    iget-object p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object p1

    aput-object p2, p1, v0

    return v0

    :cond_57
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v0

    aput-object p2, v0, p1

    return p1
.end method

.method f(I)I
    .registers 5

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$c;->i(I)I

    move-result v0

    if-lez v0, :cond_16

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->g(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, p1

    move p1, v0

    goto :goto_0

    :cond_16
    return p1
.end method

.method g(II)I
    .registers 5

    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->c(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v0

    if-lt p1, v0, :cond_a

    const/4 p1, -0x1

    return p1

    :cond_a
    if-lez p1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->c(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, p2

    add-int/lit8 p2, p1, 0x1

    :goto_20
    if-ge p2, v0, :cond_2c

    invoke-virtual {p0, p2, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$c;->c(II)I

    move-result v1

    if-gez v1, :cond_29

    move p1, p2

    :cond_29
    add-int/lit8 p2, p2, 0x1

    goto :goto_20

    :cond_2c
    return p1
.end method

.method h(I)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$c;->k(I)I

    move-result p1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$c;->g(II)I

    move-result p1

    return p1
.end method

.method i(I)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$c;->k(I)I

    move-result p1

    if-gez p1, :cond_8

    const/4 p1, -0x1

    return p1

    :cond_8
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$c;->k(I)I

    move-result p1

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$c;->g(II)I

    move-result p1

    return p1
.end method

.method n(Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->c(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$c;->l(I)I

    move-result v0

    if-eqz v0, :cond_47

    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$c;->l(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$c;->m(I)I

    move-result v1

    if-eq v1, v0, :cond_47

    invoke-direct {p0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$c;->k(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->c(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v2

    if-lt v0, v2, :cond_47

    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->g(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->a:Lcom/google/common/collect/Ordering;

    invoke-virtual {v2, v0, p1}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_47

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v2

    aput-object p1, v2, v1

    iget-object p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object p1

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->c(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v2

    aput-object v0, p1, v2

    return v1

    :cond_47
    iget-object p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->c(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result p1

    return p1
.end method

.method o(IILjava/lang/Object;)Lcom/google/common/collect/MinMaxPriorityQueue$d;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITE;)",
            "Lcom/google/common/collect/MinMaxPriorityQueue$d<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0, p2, p3}, Lcom/google/common/collect/MinMaxPriorityQueue$c;->d(ILjava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p2, :cond_8

    return-object v1

    :cond_8
    if-ge v0, p1, :cond_11

    iget-object p2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {p2, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->g(I)Ljava/lang/Object;

    move-result-object p2

    goto :goto_1b

    :cond_11
    iget-object p2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$c;->l(I)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->g(I)Ljava/lang/Object;

    move-result-object p2

    :goto_1b
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->b:Lcom/google/common/collect/MinMaxPriorityQueue$c;

    invoke-virtual {v2, v0, p3}, Lcom/google/common/collect/MinMaxPriorityQueue$c;->b(ILjava/lang/Object;)I

    move-result v0

    if-ge v0, p1, :cond_29

    new-instance p1, Lcom/google/common/collect/MinMaxPriorityQueue$d;

    invoke-direct {p1, p3, p2}, Lcom/google/common/collect/MinMaxPriorityQueue$d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_29
    return-object v1
.end method

###### Class com.google.common.collect.MinMaxPriorityQueue.d (com.google.common.collect.MinMaxPriorityQueue$d)
.class Lcom/google/common/collect/MinMaxPriorityQueue$d;
.super Ljava/lang/Object;
.source "MinMaxPriorityQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MinMaxPriorityQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$d;->b:Ljava/lang/Object;

    return-void
.end method

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
