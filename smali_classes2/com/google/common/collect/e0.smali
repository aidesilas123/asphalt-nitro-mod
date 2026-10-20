###### Class com.google.common.collect.e0 (com.google.common.collect.e0)
.class abstract Lcom/google/common/collect/e0;
.super Ljava/lang/Object;
.source "Cut.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/e0$c;,
        Lcom/google/common/collect/e0$e;,
        Lcom/google/common/collect/e0$b;,
        Lcom/google/common/collect/e0$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/common/collect/e0<",
        "TC;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final a:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Comparable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/e0;->a:Ljava/lang/Comparable;

    return-void
.end method

.method static e()Lcom/google/common/collect/e0;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/e0<",
            "TC;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/e0$b;->w()Lcom/google/common/collect/e0$b;

    move-result-object v0

    return-object v0
.end method

.method static f(Ljava/lang/Comparable;)Lcom/google/common/collect/e0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(TC;)",
            "Lcom/google/common/collect/e0<",
            "TC;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/e0$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/e0$c;-><init>(Ljava/lang/Comparable;)V

    return-object v0
.end method

.method static g()Lcom/google/common/collect/e0;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/e0<",
            "TC;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/e0$d;->w()Lcom/google/common/collect/e0$d;

    move-result-object v0

    return-object v0
.end method

.method static h(Ljava/lang/Comparable;)Lcom/google/common/collect/e0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(TC;)",
            "Lcom/google/common/collect/e0<",
            "TC;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/e0$e;

    invoke-direct {v0, p0}, Lcom/google/common/collect/e0$e;-><init>(Ljava/lang/Comparable;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/google/common/collect/e0;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/e0;->i(Lcom/google/common/collect/e0;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/google/common/collect/e0;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    check-cast p1, Lcom/google/common/collect/e0;

    :try_start_7
    invoke-virtual {p0, p1}, Lcom/google/common/collect/e0;->i(Lcom/google/common/collect/e0;)I

    move-result p1
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_b} :catch_e

    if-nez p1, :cond_e

    const/4 v1, 0x1

    :catch_e
    :cond_e
    return v1
.end method

.method public abstract hashCode()I
.end method

.method public i(Lcom/google/common/collect/e0;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e0<",
            "TC;>;)I"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/e0;->g()Lcom/google/common/collect/e0;

    move-result-object v0

    if-ne p1, v0, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    invoke-static {}, Lcom/google/common/collect/e0;->e()Lcom/google/common/collect/e0;

    move-result-object v0

    if-ne p1, v0, :cond_10

    const/4 p1, -0x1

    return p1

    :cond_10
    iget-object v0, p0, Lcom/google/common/collect/e0;->a:Ljava/lang/Comparable;

    iget-object v1, p1, Lcom/google/common/collect/e0;->a:Ljava/lang/Comparable;

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->b(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_1b

    return v0

    :cond_1b
    instance-of v0, p0, Lcom/google/common/collect/e0$c;

    instance-of p1, p1, Lcom/google/common/collect/e0$c;

    invoke-static {v0, p1}, Lcom/google/common/primitives/Booleans;->compare(ZZ)I

    move-result p1

    return p1
.end method

.method abstract j(Ljava/lang/StringBuilder;)V
.end method

.method abstract k(Ljava/lang/StringBuilder;)V
.end method

.method m()Ljava/lang/Comparable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/e0;->a:Ljava/lang/Comparable;

    return-object v0
.end method

.method abstract n(Lcom/google/common/collect/DiscreteDomain;)Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain<",
            "TC;>;)TC;"
        }
    .end annotation
.end method

.method abstract p(Ljava/lang/Comparable;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation
.end method

.method abstract q(Lcom/google/common/collect/DiscreteDomain;)Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain<",
            "TC;>;)TC;"
        }
    .end annotation
.end method

.method abstract s()Lcom/google/common/collect/BoundType;
.end method

.method abstract t()Lcom/google/common/collect/BoundType;
.end method

.method abstract u(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BoundType;",
            "Lcom/google/common/collect/DiscreteDomain<",
            "TC;>;)",
            "Lcom/google/common/collect/e0<",
            "TC;>;"
        }
    .end annotation
.end method

.method abstract v(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BoundType;",
            "Lcom/google/common/collect/DiscreteDomain<",
            "TC;>;)",
            "Lcom/google/common/collect/e0<",
            "TC;>;"
        }
    .end annotation
.end method
