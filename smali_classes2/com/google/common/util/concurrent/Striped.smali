###### Class com.google.common.util.concurrent.Striped (com.google.common.util.concurrent.Striped)
.class public abstract Lcom/google/common/util/concurrent/Striped;
.super Ljava/lang/Object;
.source "Striped.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/Striped$e;,
        Lcom/google/common/util/concurrent/Striped$d;,
        Lcom/google/common/util/concurrent/Striped$c;,
        Lcom/google/common/util/concurrent/Striped$g;,
        Lcom/google/common/util/concurrent/Striped$b;,
        Lcom/google/common/util/concurrent/Striped$f;,
        Lcom/google/common/util/concurrent/Striped$h;,
        Lcom/google/common/util/concurrent/Striped$i;,
        Lcom/google/common/util/concurrent/Striped$j;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/Striped$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/util/concurrent/Striped;-><init>()V

    return-void
.end method

.method static synthetic a(I)I
    .registers 1

    invoke-static {p0}, Lcom/google/common/util/concurrent/Striped;->b(I)I

    move-result p0

    return p0
.end method

.method private static b(I)I
    .registers 2

    sget-object v0, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p0, v0}, Lcom/google/common/math/IntMath;->log2(ILjava/math/RoundingMode;)I

    move-result p0

    const/4 v0, 0x1

    shl-int p0, v0, p0

    return p0
.end method

.method static c(ILcom/google/common/base/m;)Lcom/google/common/util/concurrent/Striped;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(I",
            "Lcom/google/common/base/m<",
            "T",
            "L;",
            ">;)",
            "Lcom/google/common/util/concurrent/Striped<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/Striped$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/util/concurrent/Striped$b;-><init>(ILcom/google/common/base/m;Lcom/google/common/util/concurrent/Striped$a;)V

    return-object v0
.end method

.method static synthetic d()Ljava/util/concurrent/locks/Lock;
    .registers 2

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    return-object v0
.end method

.method static synthetic e(I)Ljava/util/concurrent/Semaphore;
    .registers 3

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    return-object v0
.end method

.method static synthetic f(I)Ljava/util/concurrent/Semaphore;
    .registers 2

    new-instance v0, Lcom/google/common/util/concurrent/Striped$e;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/Striped$e;-><init>(I)V

    return-object v0
.end method

.method private static g(ILcom/google/common/base/m;)Lcom/google/common/util/concurrent/Striped;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(I",
            "Lcom/google/common/base/m<",
            "T",
            "L;",
            ">;)",
            "Lcom/google/common/util/concurrent/Striped<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x400

    if-ge p0, v0, :cond_a

    new-instance v0, Lcom/google/common/util/concurrent/Striped$g;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/Striped$g;-><init>(ILcom/google/common/base/m;)V

    goto :goto_f

    :cond_a
    new-instance v0, Lcom/google/common/util/concurrent/Striped$c;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/Striped$c;-><init>(ILcom/google/common/base/m;)V

    :goto_f
    return-object v0
.end method

.method public static lazyWeakLock(I)Lcom/google/common/util/concurrent/Striped;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/Striped<",
            "Ljava/util/concurrent/locks/Lock;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/util/concurrent/i;->a:Lcom/google/common/util/concurrent/i;

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/Striped;->g(ILcom/google/common/base/m;)Lcom/google/common/util/concurrent/Striped;

    move-result-object p0

    return-object p0
.end method

.method public static lazyWeakReadWriteLock(I)Lcom/google/common/util/concurrent/Striped;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/Striped<",
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/util/concurrent/g;->a:Lcom/google/common/util/concurrent/g;

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/Striped;->g(ILcom/google/common/base/m;)Lcom/google/common/util/concurrent/Striped;

    move-result-object p0

    return-object p0
.end method

.method public static lazyWeakSemaphore(II)Lcom/google/common/util/concurrent/Striped;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/util/concurrent/Striped<",
            "Ljava/util/concurrent/Semaphore;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/h;

    invoke-direct {v0, p1}, Lcom/google/common/util/concurrent/h;-><init>(I)V

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/Striped;->g(ILcom/google/common/base/m;)Lcom/google/common/util/concurrent/Striped;

    move-result-object p0

    return-object p0
.end method

.method public static lock(I)Lcom/google/common/util/concurrent/Striped;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/Striped<",
            "Ljava/util/concurrent/locks/Lock;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/util/concurrent/k;->a:Lcom/google/common/util/concurrent/k;

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/Striped;->c(ILcom/google/common/base/m;)Lcom/google/common/util/concurrent/Striped;

    move-result-object p0

    return-object p0
.end method

.method public static readWriteLock(I)Lcom/google/common/util/concurrent/Striped;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/Striped<",
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/util/concurrent/e;->a:Lcom/google/common/util/concurrent/e;

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/Striped;->c(ILcom/google/common/base/m;)Lcom/google/common/util/concurrent/Striped;

    move-result-object p0

    return-object p0
.end method

.method public static semaphore(II)Lcom/google/common/util/concurrent/Striped;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/util/concurrent/Striped<",
            "Ljava/util/concurrent/Semaphore;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/j;

    invoke-direct {v0, p1}, Lcom/google/common/util/concurrent/j;-><init>(I)V

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/Striped;->c(ILcom/google/common/base/m;)Lcom/google/common/util/concurrent/Striped;

    move-result-object p0

    return-object p0
.end method
