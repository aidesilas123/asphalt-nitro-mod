###### Class com.google.common.collect.Range (com.google.common.collect.Range)
.class public final Lcom/google/common/collect/Range;
.super Lcom/google/common/collect/j2;
.source "Range.java"

# interfaces
.implements Lcom/google/common/base/k;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Range$c;,
        Lcom/google/common/collect/Range$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Lcom/google/common/collect/j2;",
        "Lcom/google/common/base/k<",
        "TC;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Range<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field final b:Lcom/google/common/collect/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/e0<",
            "TC;>;"
        }
    .end annotation
.end field

.field final c:Lcom/google/common/collect/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/e0<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/common/collect/Range;

    invoke-static {}, Lcom/google/common/collect/e0;->g()Lcom/google/common/collect/e0;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/e0;->e()Lcom/google/common/collect/e0;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/Range;-><init>(Lcom/google/common/collect/e0;Lcom/google/common/collect/e0;)V

    sput-object v0, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/Range;

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/e0;Lcom/google/common/collect/e0;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e0<",
            "TC;>;",
            "Lcom/google/common/collect/e0<",
            "TC;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/j2;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/e0;

    iput-object v0, p0, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/e0;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/e0;

    iput-object v0, p0, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/e0;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/e0;->i(Lcom/google/common/collect/e0;)I

    move-result v0

    if-gtz v0, :cond_27

    invoke-static {}, Lcom/google/common/collect/e0;->e()Lcom/google/common/collect/e0;

    move-result-object v0

    if-eq p1, v0, :cond_27

    invoke-static {}, Lcom/google/common/collect/e0;->g()Lcom/google/common/collect/e0;

    move-result-object v0

    if-ne p2, v0, :cond_26

    goto :goto_27

    :cond_26
    return-void

    :cond_27
    :goto_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid range: "

    invoke-static {p1, p2}, Lcom/google/common/collect/Range;->r(Lcom/google/common/collect/e0;Lcom/google/common/collect/e0;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_3e

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_43

    :cond_3e
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_43
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static all()Lcom/google/common/collect/Range;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lcom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/Range;

    return-object v0
.end method

.method public static atLeast(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;)",
            "Lcom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/collect/e0;->h(Ljava/lang/Comparable;)Lcom/google/common/collect/e0;

    move-result-object p0

    invoke-static {}, Lcom/google/common/collect/e0;->e()Lcom/google/common/collect/e0;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Range;->d(Lcom/google/common/collect/e0;Lcom/google/common/collect/e0;)Lcom/google/common/collect/Range;

    move-result-object p0

    return-object p0
.end method

.method public static atMost(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;)",
            "Lcom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/e0;->g()Lcom/google/common/collect/e0;

    move-result-object v0

    invoke-static {p0}, Lcom/google/common/collect/e0;->f(Ljava/lang/Comparable;)Lcom/google/common/collect/e0;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/collect/Range;->d(Lcom/google/common/collect/e0;Lcom/google/common/collect/e0;)Lcom/google/common/collect/Range;

    move-result-object p0

    return-object p0
.end method

.method static b(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .registers 2

    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;TC;)",
            "Lcom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/collect/e0;->h(Ljava/lang/Comparable;)Lcom/google/common/collect/e0;

    move-result-object p0

    invoke-static {p1}, Lcom/google/common/collect/e0;->f(Ljava/lang/Comparable;)Lcom/google/common/collect/e0;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/Range;->d(Lcom/google/common/collect/e0;Lcom/google/common/collect/e0;)Lcom/google/common/collect/Range;

    move-result-object p0

    return-object p0
.end method

.method public static closedOpen(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;TC;)",
            "Lcom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/collect/e0;->h(Ljava/lang/Comparable;)Lcom/google/common/collect/e0;

    move-result-object p0

    invoke-static {p1}, Lcom/google/common/collect/e0;->h(Ljava/lang/Comparable;)Lcom/google/common/collect/e0;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/Range;->d(Lcom/google/common/collect/e0;Lcom/google/common/collect/e0;)Lcom/google/common/collect/Range;

    move-result-object p0

    return-object p0
.end method

.method static d(Lcom/google/common/collect/e0;Lcom/google/common/collect/e0;)Lcom/google/common/collect/Range;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(",
            "Lcom/google/common/collect/e0<",
            "TC;>;",
            "Lcom/google/common/collect/e0<",
            "TC;>;)",
            "Lcom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/Range;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Range;-><init>(Lcom/google/common/collect/e0;Lcom/google/common/collect/e0;)V

    return-object v0
.end method

.method public static downTo(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/Range$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_19

    const/4 v0, 0x2

    if-ne p1, v0, :cond_13

    invoke-static {p0}, Lcom/google/common/collect/Range;->atLeast(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object p0

    return-object p0

    :cond_13
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_19
    invoke-static {p0}, Lcom/google/common/collect/Range;->greaterThan(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object p0

    return-object p0
.end method

.method public static encloseAll(Ljava/lang/Iterable;)Lcom/google/common/collect/Range;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(",
            "Ljava/lang/Iterable<",
            "TC;>;)",
            "Lcom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_2b

    move-object v0, p0

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    if-nez v1, :cond_2b

    :cond_1a
    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Comparable;

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-static {p0, v0}, Lcom/google/common/collect/Range;->closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object p0

    return-object p0

    :cond_2b
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    move-object v1, v0

    :goto_3c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/google/common/collect/Ordering;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/google/common/collect/Ordering;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    goto :goto_3c

    :cond_63
    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object p0

    return-object p0
.end method

.method public static greaterThan(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;)",
            "Lcom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/collect/e0;->f(Ljava/lang/Comparable;)Lcom/google/common/collect/e0;

    move-result-object p0

    invoke-static {}, Lcom/google/common/collect/e0;->e()Lcom/google/common/collect/e0;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Range;->d(Lcom/google/common/collect/e0;Lcom/google/common/collect/e0;)Lcom/google/common/collect/Range;

    move-result-object p0

    return-object p0
.end method

.method static k()Lcom/google/common/base/f;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lcom/google/common/base/f<",
            "Lcom/google/common/collect/Range<",
            "TC;>;",
            "Lcom/google/common/collect/e0<",
            "TC;>;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/Range$b;->a:Lcom/google/common/collect/Range$b;

    return-object v0
.end method

.method public static lessThan(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;)",
            "Lcom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/e0;->g()Lcom/google/common/collect/e0;

    move-result-object v0

    invoke-static {p0}, Lcom/google/common/collect/e0;->h(Ljava/lang/Comparable;)Lcom/google/common/collect/e0;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/collect/Range;->d(Lcom/google/common/collect/e0;Lcom/google/common/collect/e0;)Lcom/google/common/collect/Range;

    move-result-object p0

    return-object p0
.end method

.method public static open(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;TC;)",
            "Lcom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/collect/e0;->f(Ljava/lang/Comparable;)Lcom/google/common/collect/e0;

    move-result-object p0

    invoke-static {p1}, Lcom/google/common/collect/e0;->h(Ljava/lang/Comparable;)Lcom/google/common/collect/e0;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/Range;->d(Lcom/google/common/collect/e0;Lcom/google/common/collect/e0;)Lcom/google/common/collect/Range;

    move-result-object p0

    return-object p0
.end method

.method public static openClosed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;TC;)",
            "Lcom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/collect/e0;->f(Ljava/lang/Comparable;)Lcom/google/common/collect/e0;

    move-result-object p0

    invoke-static {p1}, Lcom/google/common/collect/e0;->f(Ljava/lang/Comparable;)Lcom/google/common/collect/e0;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/Range;->d(Lcom/google/common/collect/e0;Lcom/google/common/collect/e0;)Lcom/google/common/collect/Range;

    move-result-object p0

    return-object p0
.end method

.method static p()Lcom/google/common/collect/Ordering;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lcom/google/common/collect/Ordering<",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/Range$c;->a:Lcom/google/common/collect/Ordering;

    return-object v0
.end method

.method private static r(Lcom/google/common/collect/e0;Lcom/google/common/collect/e0;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e0<",
            "*>;",
            "Lcom/google/common/collect/e0<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/common/collect/e0;->j(Ljava/lang/StringBuilder;)V

    const-string p0, ".."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/e0;->k(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static range(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;",
            "Lcom/google/common/collect/BoundType;",
            "TC;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/common/collect/BoundType;->a:Lcom/google/common/collect/BoundType;

    if-ne p1, v0, :cond_f

    invoke-static {p0}, Lcom/google/common/collect/e0;->f(Ljava/lang/Comparable;)Lcom/google/common/collect/e0;

    move-result-object p0

    goto :goto_13

    :cond_f
    invoke-static {p0}, Lcom/google/common/collect/e0;->h(Ljava/lang/Comparable;)Lcom/google/common/collect/e0;

    move-result-object p0

    :goto_13
    if-ne p3, v0, :cond_1a

    invoke-static {p2}, Lcom/google/common/collect/e0;->h(Ljava/lang/Comparable;)Lcom/google/common/collect/e0;

    move-result-object p1

    goto :goto_1e

    :cond_1a
    invoke-static {p2}, Lcom/google/common/collect/e0;->f(Ljava/lang/Comparable;)Lcom/google/common/collect/e0;

    move-result-object p1

    :goto_1e
    invoke-static {p0, p1}, Lcom/google/common/collect/Range;->d(Lcom/google/common/collect/e0;Lcom/google/common/collect/e0;)Lcom/google/common/collect/Range;

    move-result-object p0

    return-object p0
.end method

.method public static singleton(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;)",
            "Lcom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    invoke-static {p0, p0}, Lcom/google/common/collect/Range;->closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object p0

    return-object p0
.end method

.method public static upTo(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/Range$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_19

    const/4 v0, 0x2

    if-ne p1, v0, :cond_13

    invoke-static {p0}, Lcom/google/common/collect/Range;->atMost(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object p0

    return-object p0

    :cond_13
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_19
    invoke-static {p0}, Lcom/google/common/collect/Range;->lessThan(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/Comparable;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Range;->c(Ljava/lang/Comparable;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Range;->a(Ljava/lang/Comparable;)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/Comparable;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/e0;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/e0;->p(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/e0;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/e0;->p(Ljava/lang/Comparable;)Z

    move-result p1

    if-nez p1, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    return p1
.end method

.method public e(Lcom/google/common/collect/Range;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TC;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/e0;

    iget-object v1, p1, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/e0;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/e0;->i(Lcom/google/common/collect/e0;)I

    move-result v0

    if-gtz v0, :cond_16

    iget-object v0, p0, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/e0;

    iget-object p1, p1, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/e0;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/e0;->i(Lcom/google/common/collect/e0;)I

    move-result p1

    if-ltz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/google/common/collect/Range;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    check-cast p1, Lcom/google/common/collect/Range;

    iget-object v0, p0, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/e0;

    iget-object v2, p1, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/e0;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/e0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/e0;

    iget-object p1, p1, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/e0;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/e0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1
.end method

.method public f()Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/e0;

    invoke-static {}, Lcom/google/common/collect/e0;->g()Lcom/google/common/collect/e0;

    move-result-object v1

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public g()Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/e0;

    invoke-static {}, Lcom/google/common/collect/e0;->e()Lcom/google/common/collect/e0;

    move-result-object v1

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public h(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TC;>;)",
            "Lcom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/e0;

    iget-object v1, p1, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/e0;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/e0;->i(Lcom/google/common/collect/e0;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/e0;

    iget-object v2, p1, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/e0;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/e0;->i(Lcom/google/common/collect/e0;)I

    move-result v1

    if-ltz v0, :cond_15

    if-gtz v1, :cond_15

    return-object p0

    :cond_15
    if-gtz v0, :cond_1a

    if-ltz v1, :cond_1a

    return-object p1

    :cond_1a
    if-ltz v0, :cond_1f

    iget-object v0, p0, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/e0;

    goto :goto_21

    :cond_1f
    iget-object v0, p1, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/e0;

    :goto_21
    if-gtz v1, :cond_26

    iget-object v1, p0, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/e0;

    goto :goto_28

    :cond_26
    iget-object v1, p1, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/e0;

    :goto_28
    invoke-virtual {v0, v1}, Lcom/google/common/collect/e0;->i(Lcom/google/common/collect/e0;)I

    move-result v2

    if-gtz v2, :cond_30

    const/4 v2, 0x1

    goto :goto_31

    :cond_30
    const/4 v2, 0x0

    :goto_31
    const-string v3, "intersection is undefined for disconnected ranges %s and %s"

    invoke-static {v2, v3, p0, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->d(Lcom/google/common/collect/e0;Lcom/google/common/collect/e0;)Lcom/google/common/collect/Range;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/e0;

    invoke-virtual {v0}, Lcom/google/common/collect/e0;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/e0;

    invoke-virtual {v1}, Lcom/google/common/collect/e0;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public i(Lcom/google/common/collect/Range;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TC;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/e0;

    iget-object v1, p1, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/e0;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/e0;->i(Lcom/google/common/collect/e0;)I

    move-result v0

    if-gtz v0, :cond_16

    iget-object p1, p1, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/e0;

    iget-object v0, p0, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/e0;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/e0;->i(Lcom/google/common/collect/e0;)I

    move-result p1

    if-gtz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method

.method public j()Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/e0;

    iget-object v1, p0, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/e0;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/e0;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public m()Lcom/google/common/collect/BoundType;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/e0;

    invoke-virtual {v0}, Lcom/google/common/collect/e0;->s()Lcom/google/common/collect/BoundType;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/Comparable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/e0;

    invoke-virtual {v0}, Lcom/google/common/collect/e0;->m()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public q(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TC;>;)",
            "Lcom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/e0;

    iget-object v1, p1, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/e0;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/e0;->i(Lcom/google/common/collect/e0;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/e0;

    iget-object v2, p1, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/e0;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/e0;->i(Lcom/google/common/collect/e0;)I

    move-result v1

    if-gtz v0, :cond_15

    if-ltz v1, :cond_15

    return-object p0

    :cond_15
    if-ltz v0, :cond_1a

    if-gtz v1, :cond_1a

    return-object p1

    :cond_1a
    if-gtz v0, :cond_1f

    iget-object v0, p0, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/e0;

    goto :goto_21

    :cond_1f
    iget-object v0, p1, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/e0;

    :goto_21
    if-ltz v1, :cond_26

    iget-object p1, p0, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/e0;

    goto :goto_28

    :cond_26
    iget-object p1, p1, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/e0;

    :goto_28
    invoke-static {v0, p1}, Lcom/google/common/collect/Range;->d(Lcom/google/common/collect/e0;Lcom/google/common/collect/e0;)Lcom/google/common/collect/Range;

    move-result-object p1

    return-object p1
.end method

.method readResolve()Ljava/lang/Object;
    .registers 2

    sget-object v0, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/Range;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/google/common/collect/Range;->all()Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0

    :cond_d
    return-object p0
.end method

.method public s()Lcom/google/common/collect/BoundType;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/e0;

    invoke-virtual {v0}, Lcom/google/common/collect/e0;->t()Lcom/google/common/collect/BoundType;

    move-result-object v0

    return-object v0
.end method

.method public t()Ljava/lang/Comparable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/e0;

    invoke-virtual {v0}, Lcom/google/common/collect/e0;->m()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/e0;

    iget-object v1, p0, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/e0;

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->r(Lcom/google/common/collect/e0;Lcom/google/common/collect/e0;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.collect.Range.a (com.google.common.collect.Range$a)
.class synthetic Lcom/google/common/collect/Range$a;
.super Ljava/lang/Object;
.source "Range.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Range;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/google/common/collect/BoundType;->values()[Lcom/google/common/collect/BoundType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/common/collect/Range$a;->a:[I

    :try_start_9
    sget-object v1, Lcom/google/common/collect/BoundType;->a:Lcom/google/common/collect/BoundType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/google/common/collect/Range$a;->a:[I

    sget-object v1, Lcom/google/common/collect/BoundType;->b:Lcom/google/common/collect/BoundType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method

###### Class com.google.common.collect.Range.b (com.google.common.collect.Range$b)
.class Lcom/google/common/collect/Range$b;
.super Ljava/lang/Object;
.source "Range.java"

# interfaces
.implements Lcom/google/common/base/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Range;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/f<",
        "Lcom/google/common/collect/Range;",
        "Lcom/google/common/collect/e0;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/common/collect/Range$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/collect/Range$b;

    invoke-direct {v0}, Lcom/google/common/collect/Range$b;-><init>()V

    sput-object v0, Lcom/google/common/collect/Range$b;->a:Lcom/google/common/collect/Range$b;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/Range;)Lcom/google/common/collect/e0;
    .registers 2

    iget-object p1, p1, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/e0;

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/google/common/collect/Range;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Range$b;->a(Lcom/google/common/collect/Range;)Lcom/google/common/collect/e0;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.common.collect.Range.c (com.google.common.collect.Range$c)
.class Lcom/google/common/collect/Range$c;
.super Lcom/google/common/collect/Ordering;
.source "Range.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Range;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Ordering<",
        "Lcom/google/common/collect/Range<",
        "*>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Ordering<",
            "Lcom/google/common/collect/Range<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/collect/Range$c;

    invoke-direct {v0}, Lcom/google/common/collect/Range$c;-><init>()V

    sput-object v0, Lcom/google/common/collect/Range$c;->a:Lcom/google/common/collect/Ordering;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/collect/Ordering;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/google/common/collect/Range;

    check-cast p2, Lcom/google/common/collect/Range;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Range$c;->h(Lcom/google/common/collect/Range;Lcom/google/common/collect/Range;)I

    move-result p1

    return p1
.end method

.method public h(Lcom/google/common/collect/Range;Lcom/google/common/collect/Range;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "*>;",
            "Lcom/google/common/collect/Range<",
            "*>;)I"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->start()Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-object v1, p1, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/e0;

    iget-object v2, p2, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/e0;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->d(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-object p1, p1, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/e0;

    iget-object p2, p2, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/e0;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/ComparisonChain;->d(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ComparisonChain;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ComparisonChain;->e()I

    move-result p1

    return p1
.end method
