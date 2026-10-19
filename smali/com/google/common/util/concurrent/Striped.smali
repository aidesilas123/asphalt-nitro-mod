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

###### Class com.google.common.util.concurrent.Striped.a (com.google.common.util.concurrent.Striped$a)
.class synthetic Lcom/google/common/util/concurrent/Striped$a;
.super Ljava/lang/Object;
.source "Striped.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.common.util.concurrent.Striped.b (com.google.common.util.concurrent.Striped$b)
.class Lcom/google/common/util/concurrent/Striped$b;
.super Lcom/google/common/util/concurrent/Striped$f;
.source "Striped.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/Striped$f<",
        "T",
        "L;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:[Ljava/lang/Object;


# direct methods
.method private constructor <init>(ILcom/google/common/base/m;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/common/base/m<",
            "T",
            "L;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Striped$f;-><init>(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    if-gt p1, v2, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    const-string v2, "Stripes must be <= 2^30)"

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget p1, p0, Lcom/google/common/util/concurrent/Striped$f;->a:I

    add-int/2addr p1, v1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/util/concurrent/Striped$b;->b:[Ljava/lang/Object;

    :goto_18
    iget-object p1, p0, Lcom/google/common/util/concurrent/Striped$b;->b:[Ljava/lang/Object;

    array-length v1, p1

    if-ge v0, v1, :cond_26

    invoke-interface {p2}, Lcom/google/common/base/m;->get()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_26
    return-void
.end method

.method synthetic constructor <init>(ILcom/google/common/base/m;Lcom/google/common/util/concurrent/Striped$a;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/Striped$b;-><init>(ILcom/google/common/base/m;)V

    return-void
.end method

###### Class com.google.common.util.concurrent.Striped.c (com.google.common.util.concurrent.Striped$c)
.class Lcom/google/common/util/concurrent/Striped$c;
.super Lcom/google/common/util/concurrent/Striped$f;
.source "Striped.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/Striped$f<",
        "T",
        "L;",
        ">;"
    }
.end annotation


# instance fields
.field final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lcom/google/common/base/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/m<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field final d:I


# direct methods
.method constructor <init>(ILcom/google/common/base/m;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/common/base/m<",
            "T",
            "L;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Striped$f;-><init>(I)V

    iget p1, p0, Lcom/google/common/util/concurrent/Striped$f;->a:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_c

    const p1, 0x7fffffff

    goto :goto_e

    :cond_c
    add-int/lit8 p1, p1, 0x1

    :goto_e
    iput p1, p0, Lcom/google/common/util/concurrent/Striped$c;->d:I

    iput-object p2, p0, Lcom/google/common/util/concurrent/Striped$c;->c:Lcom/google/common/base/m;

    new-instance p1, Lcom/google/common/collect/MapMaker;

    invoke-direct {p1}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->m()Lcom/google/common/collect/MapMaker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->i()Ljava/util/concurrent/ConcurrentMap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/util/concurrent/Striped$c;->b:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

###### Class com.google.common.util.concurrent.Striped.d (com.google.common.util.concurrent.Striped$d)
.class Lcom/google/common/util/concurrent/Striped$d;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "Striped.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    return-void
.end method

###### Class com.google.common.util.concurrent.Striped.e (com.google.common.util.concurrent.Striped$e)
.class Lcom/google/common/util/concurrent/Striped$e;
.super Ljava/util/concurrent/Semaphore;
.source "Striped.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    return-void
.end method

###### Class com.google.common.util.concurrent.Striped.f (com.google.common.util.concurrent.Striped$f)
.class abstract Lcom/google/common/util/concurrent/Striped$f;
.super Lcom/google/common/util/concurrent/Striped;
.source "Striped.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/Striped<",
        "T",
        "L;",
        ">;"
    }
.end annotation


# instance fields
.field final a:I


# direct methods
.method constructor <init>(I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Striped;-><init>(Lcom/google/common/util/concurrent/Striped$a;)V

    const/4 v0, 0x1

    if-lez p1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    const-string v2, "Stripes must be positive"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/high16 v1, 0x40000000    # 2.0f

    if-le p1, v1, :cond_15

    const/4 p1, -0x1

    goto :goto_1a

    :cond_15
    invoke-static {p1}, Lcom/google/common/util/concurrent/Striped;->a(I)I

    move-result p1

    sub-int/2addr p1, v0

    :goto_1a
    iput p1, p0, Lcom/google/common/util/concurrent/Striped$f;->a:I

    return-void
.end method

###### Class com.google.common.util.concurrent.Striped.g (com.google.common.util.concurrent.Striped$g)
.class Lcom/google/common/util/concurrent/Striped$g;
.super Lcom/google/common/util/concurrent/Striped$f;
.source "Striped.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/Striped$f<",
        "T",
        "L;",
        ">;"
    }
.end annotation


# instance fields
.field final b:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "*>;"
        }
    .end annotation
.end field

.field final c:Lcom/google/common/base/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/m<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field final d:I

.field final e:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILcom/google/common/base/m;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/common/base/m<",
            "T",
            "L;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Striped$f;-><init>(I)V

    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/Striped$g;->e:Ljava/lang/ref/ReferenceQueue;

    iget p1, p0, Lcom/google/common/util/concurrent/Striped$f;->a:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_13

    const p1, 0x7fffffff

    goto :goto_15

    :cond_13
    add-int/lit8 p1, p1, 0x1

    :goto_15
    iput p1, p0, Lcom/google/common/util/concurrent/Striped$g;->d:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/Striped$g;->b:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Striped$g;->c:Lcom/google/common/base/m;

    return-void
.end method

###### Class com.google.common.util.concurrent.Striped.h (com.google.common.util.concurrent.Striped$h)
.class final Lcom/google/common/util/concurrent/Striped$h;
.super Lcom/google/common/util/concurrent/x;
.source "Striped.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "h"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/locks/Condition;

.field private final b:Lcom/google/common/util/concurrent/Striped$j;


# direct methods
.method constructor <init>(Ljava/util/concurrent/locks/Condition;Lcom/google/common/util/concurrent/Striped$j;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/common/util/concurrent/x;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/Striped$h;->a:Ljava/util/concurrent/locks/Condition;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Striped$h;->b:Lcom/google/common/util/concurrent/Striped$j;

    return-void
.end method


# virtual methods
.method a()Ljava/util/concurrent/locks/Condition;
    .registers 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/Striped$h;->a:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

###### Class com.google.common.util.concurrent.Striped.i (com.google.common.util.concurrent.Striped$i)
.class final Lcom/google/common/util/concurrent/Striped$i;
.super Lcom/google/common/util/concurrent/b0;
.source "Striped.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "i"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/locks/Lock;

.field private final b:Lcom/google/common/util/concurrent/Striped$j;


# direct methods
.method constructor <init>(Ljava/util/concurrent/locks/Lock;Lcom/google/common/util/concurrent/Striped$j;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/common/util/concurrent/b0;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/Striped$i;->a:Ljava/util/concurrent/locks/Lock;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Striped$i;->b:Lcom/google/common/util/concurrent/Striped$j;

    return-void
.end method


# virtual methods
.method a()Ljava/util/concurrent/locks/Lock;
    .registers 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/Striped$i;->a:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method public newCondition()Ljava/util/concurrent/locks/Condition;
    .registers 4

    new-instance v0, Lcom/google/common/util/concurrent/Striped$h;

    iget-object v1, p0, Lcom/google/common/util/concurrent/Striped$i;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/Striped$i;->b:Lcom/google/common/util/concurrent/Striped$j;

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/Striped$h;-><init>(Ljava/util/concurrent/locks/Condition;Lcom/google/common/util/concurrent/Striped$j;)V

    return-object v0
.end method

###### Class com.google.common.util.concurrent.Striped.j (com.google.common.util.concurrent.Striped$j)
.class final Lcom/google/common/util/concurrent/Striped$j;
.super Ljava/lang/Object;
.source "Striped.java"

# interfaces
.implements Ljava/util/concurrent/locks/ReadWriteLock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "j"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/locks/ReadWriteLock;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/Striped$j;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    return-void
.end method


# virtual methods
.method public readLock()Ljava/util/concurrent/locks/Lock;
    .registers 3

    new-instance v0, Lcom/google/common/util/concurrent/Striped$i;

    iget-object v1, p0, Lcom/google/common/util/concurrent/Striped$j;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/common/util/concurrent/Striped$i;-><init>(Ljava/util/concurrent/locks/Lock;Lcom/google/common/util/concurrent/Striped$j;)V

    return-object v0
.end method

.method public writeLock()Ljava/util/concurrent/locks/Lock;
    .registers 3

    new-instance v0, Lcom/google/common/util/concurrent/Striped$i;

    iget-object v1, p0, Lcom/google/common/util/concurrent/Striped$j;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/common/util/concurrent/Striped$i;-><init>(Ljava/util/concurrent/locks/Lock;Lcom/google/common/util/concurrent/Striped$j;)V

    return-object v0
.end method

###### Class com.google.common.util.concurrent.e (com.google.common.util.concurrent.e)
.class public final synthetic Lcom/google/common/util/concurrent/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/m;


# static fields
.field public static final synthetic a:Lcom/google/common/util/concurrent/e;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/util/concurrent/e;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/e;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/e;->a:Lcom/google/common/util/concurrent/e;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    return-object v0
.end method

###### Class com.google.common.util.concurrent.g (com.google.common.util.concurrent.g)
.class public final synthetic Lcom/google/common/util/concurrent/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/m;


# static fields
.field public static final synthetic a:Lcom/google/common/util/concurrent/g;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/util/concurrent/g;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/g;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/g;->a:Lcom/google/common/util/concurrent/g;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    new-instance v0, Lcom/google/common/util/concurrent/Striped$j;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/Striped$j;-><init>()V

    return-object v0
.end method

###### Class com.google.common.util.concurrent.h (com.google.common.util.concurrent.h)
.class public final synthetic Lcom/google/common/util/concurrent/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/m;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/common/util/concurrent/h;->a:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/google/common/util/concurrent/h;->a:I

    invoke-static {v0}, Lcom/google/common/util/concurrent/Striped;->e(I)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.util.concurrent.i (com.google.common.util.concurrent.i)
.class public final synthetic Lcom/google/common/util/concurrent/i;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/m;


# static fields
.field public static final synthetic a:Lcom/google/common/util/concurrent/i;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/util/concurrent/i;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/i;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/i;->a:Lcom/google/common/util/concurrent/i;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/google/common/util/concurrent/Striped;->d()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.util.concurrent.j (com.google.common.util.concurrent.j)
.class public final synthetic Lcom/google/common/util/concurrent/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/m;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/common/util/concurrent/j;->a:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/google/common/util/concurrent/j;->a:I

    invoke-static {v0}, Lcom/google/common/util/concurrent/Striped;->f(I)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.util.concurrent.k (com.google.common.util.concurrent.k)
.class public final synthetic Lcom/google/common/util/concurrent/k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/m;


# static fields
.field public static final synthetic a:Lcom/google/common/util/concurrent/k;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/util/concurrent/k;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/k;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/k;->a:Lcom/google/common/util/concurrent/k;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    new-instance v0, Lcom/google/common/util/concurrent/Striped$d;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/Striped$d;-><init>()V

    return-object v0
.end method
