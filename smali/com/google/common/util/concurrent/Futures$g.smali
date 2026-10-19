###### Class com.google.common.util.concurrent.Futures.g (com.google.common.util.concurrent.Futures$g)
.class final Lcom/google/common/util/concurrent/Futures$g;
.super Ljava/lang/Object;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final d:[Lcom/google/common/util/concurrent/h0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/util/concurrent/h0<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private volatile e:I


# direct methods
.method private constructor <init>([Lcom/google/common/util/concurrent/h0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/common/util/concurrent/h0<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/Futures$g;->a:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/common/util/concurrent/Futures$g;->b:Z

    iput v0, p0, Lcom/google/common/util/concurrent/Futures$g;->e:I

    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$g;->d:[Lcom/google/common/util/concurrent/h0;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    array-length p1, p1

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$g;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>([Lcom/google/common/util/concurrent/h0;Lcom/google/common/util/concurrent/Futures$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Futures$g;-><init>([Lcom/google/common/util/concurrent/h0;)V

    return-void
.end method

.method static synthetic a(Lcom/google/common/util/concurrent/Futures$g;Lcom/google/common/collect/ImmutableList;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/Futures$g;->f(Lcom/google/common/collect/ImmutableList;I)V

    return-void
.end method

.method static synthetic b(Lcom/google/common/util/concurrent/Futures$g;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Futures$g;->g(Z)V

    return-void
.end method

.method static synthetic c(Lcom/google/common/util/concurrent/Futures$g;)[Lcom/google/common/util/concurrent/h0;
    .registers 1

    iget-object p0, p0, Lcom/google/common/util/concurrent/Futures$g;->d:[Lcom/google/common/util/concurrent/h0;

    return-object p0
.end method

.method static synthetic d(Lcom/google/common/util/concurrent/Futures$g;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    iget-object p0, p0, Lcom/google/common/util/concurrent/Futures$g;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private e()V
    .registers 6

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$g;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/google/common/util/concurrent/Futures$g;->a:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$g;->d:[Lcom/google/common/util/concurrent/h0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_1e

    aget-object v3, v0, v2

    if-eqz v3, :cond_1b

    iget-boolean v4, p0, Lcom/google/common/util/concurrent/Futures$g;->b:Z

    invoke-interface {v3, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1e
    return-void
.end method

.method private f(Lcom/google/common/collect/ImmutableList;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/util/concurrent/m<",
            "TT;>;>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$g;->d:[Lcom/google/common/util/concurrent/h0;

    aget-object v0, v0, p2

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/google/common/util/concurrent/h0;

    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$g;->d:[Lcom/google/common/util/concurrent/h0;

    const/4 v2, 0x0

    aput-object v2, v1, p2

    iget p2, p0, Lcom/google/common/util/concurrent/Futures$g;->e:I

    :goto_10
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge p2, v1, :cond_2d

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/m;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/m;->D(Lcom/google/common/util/concurrent/h0;)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-direct {p0}, Lcom/google/common/util/concurrent/Futures$g;->e()V

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/common/util/concurrent/Futures$g;->e:I

    return-void

    :cond_2a
    add-int/lit8 p2, p2, 0x1

    goto :goto_10

    :cond_2d
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    iput p1, p0, Lcom/google/common/util/concurrent/Futures$g;->e:I

    return-void
.end method

.method private g(Z)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/Futures$g;->a:Z

    if-nez p1, :cond_8

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/common/util/concurrent/Futures$g;->b:Z

    :cond_8
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Futures$g;->e()V

    return-void
.end method
