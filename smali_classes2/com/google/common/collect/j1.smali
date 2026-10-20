###### Class com.google.common.collect.j1 (com.google.common.collect.j1)
.class final Lcom/google/common/collect/j1;
.super Ljava/lang/Object;
.source "GeneralRange.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private final b:Z

.field private final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/common/collect/BoundType;

.field private final e:Z

.field private final f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/common/collect/BoundType;


# direct methods
.method private constructor <init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;ZTT;",
            "Lcom/google/common/collect/BoundType;",
            "ZTT;",
            "Lcom/google/common/collect/BoundType;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/j1;->a:Ljava/util/Comparator;

    iput-boolean p2, p0, Lcom/google/common/collect/j1;->b:Z

    iput-boolean p5, p0, Lcom/google/common/collect/j1;->e:Z

    iput-object p3, p0, Lcom/google/common/collect/j1;->c:Ljava/lang/Object;

    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BoundType;

    iput-object v0, p0, Lcom/google/common/collect/j1;->d:Lcom/google/common/collect/BoundType;

    iput-object p6, p0, Lcom/google/common/collect/j1;->f:Ljava/lang/Object;

    invoke-static {p7}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BoundType;

    iput-object v0, p0, Lcom/google/common/collect/j1;->g:Lcom/google/common/collect/BoundType;

    if-eqz p2, :cond_30

    invoke-static {p3}, Lcom/google/common/collect/e2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3}, Lcom/google/common/collect/e2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    :cond_30
    if-eqz p5, :cond_3d

    invoke-static {p6}, Lcom/google/common/collect/e2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p6}, Lcom/google/common/collect/e2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    :cond_3d
    if-eqz p2, :cond_66

    if-eqz p5, :cond_66

    invoke-static {p3}, Lcom/google/common/collect/e2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p6}, Lcom/google/common/collect/e2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    invoke-interface {p1, p2, p5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x1

    const/4 p5, 0x0

    if-gtz p1, :cond_53

    const/4 v0, 0x1

    goto :goto_54

    :cond_53
    const/4 v0, 0x0

    :goto_54
    const-string v1, "lowerEndpoint (%s) > upperEndpoint (%s)"

    invoke-static {v0, v1, p3, p6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez p1, :cond_66

    sget-object p1, Lcom/google/common/collect/BoundType;->a:Lcom/google/common/collect/BoundType;

    if-ne p4, p1, :cond_63

    if-eq p7, p1, :cond_62

    goto :goto_63

    :cond_62
    const/4 p2, 0x0

    :cond_63
    :goto_63
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    :cond_66
    return-void
.end method

.method static a(Ljava/util/Comparator;)Lcom/google/common/collect/j1;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lcom/google/common/collect/j1<",
            "TT;>;"
        }
    .end annotation

    new-instance v8, Lcom/google/common/collect/j1;

    sget-object v7, Lcom/google/common/collect/BoundType;->a:Lcom/google/common/collect/BoundType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v4, v7

    invoke-direct/range {v0 .. v7}, Lcom/google/common/collect/j1;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    return-object v8
.end method

.method static e(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/j1;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;TT;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/j1<",
            "TT;>;"
        }
    .end annotation

    new-instance v8, Lcom/google/common/collect/j1;

    sget-object v7, Lcom/google/common/collect/BoundType;->a:Lcom/google/common/collect/BoundType;

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/common/collect/j1;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    return-object v8
.end method

.method static q(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/j1;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;TT;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/j1<",
            "TT;>;"
        }
    .end annotation

    new-instance v8, Lcom/google/common/collect/j1;

    sget-object v4, Lcom/google/common/collect/BoundType;->a:Lcom/google/common/collect/BoundType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/common/collect/j1;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    return-object v8
.end method


# virtual methods
.method c()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/j1;->a:Ljava/util/Comparator;

    return-object v0
.end method

.method d(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/j1;->p(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0, p1}, Lcom/google/common/collect/j1;->n(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/google/common/collect/j1;

    const/4 v1, 0x0

    if-eqz v0, :cond_56

    check-cast p1, Lcom/google/common/collect/j1;

    iget-object v0, p0, Lcom/google/common/collect/j1;->a:Ljava/util/Comparator;

    iget-object v2, p1, Lcom/google/common/collect/j1;->a:Ljava/util/Comparator;

    invoke-interface {v0, v2}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    iget-boolean v0, p0, Lcom/google/common/collect/j1;->b:Z

    iget-boolean v2, p1, Lcom/google/common/collect/j1;->b:Z

    if-ne v0, v2, :cond_56

    iget-boolean v0, p0, Lcom/google/common/collect/j1;->e:Z

    iget-boolean v2, p1, Lcom/google/common/collect/j1;->e:Z

    if-ne v0, v2, :cond_56

    invoke-virtual {p0}, Lcom/google/common/collect/j1;->f()Lcom/google/common/collect/BoundType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/collect/j1;->f()Lcom/google/common/collect/BoundType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {p0}, Lcom/google/common/collect/j1;->h()Lcom/google/common/collect/BoundType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/collect/j1;->h()Lcom/google/common/collect/BoundType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {p0}, Lcom/google/common/collect/j1;->g()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/collect/j1;->g()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {p0}, Lcom/google/common/collect/j1;->i()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/collect/j1;->i()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_56

    const/4 v1, 0x1

    :cond_56
    return v1
.end method

.method f()Lcom/google/common/collect/BoundType;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/j1;->d:Lcom/google/common/collect/BoundType;

    return-object v0
.end method

.method g()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/j1;->c:Ljava/lang/Object;

    return-object v0
.end method

.method h()Lcom/google/common/collect/BoundType;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/j1;->g:Lcom/google/common/collect/BoundType;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/j1;->a:Ljava/util/Comparator;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/google/common/collect/j1;->g()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/google/common/collect/j1;->f()Lcom/google/common/collect/BoundType;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/google/common/collect/j1;->i()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/google/common/collect/j1;->h()Lcom/google/common/collect/BoundType;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method i()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/j1;->f:Ljava/lang/Object;

    return-object v0
.end method

.method j()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/common/collect/j1;->b:Z

    return v0
.end method

.method k()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/common/collect/j1;->e:Z

    return v0
.end method

.method m(Lcom/google/common/collect/j1;)Lcom/google/common/collect/j1;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j1<",
            "TT;>;)",
            "Lcom/google/common/collect/j1<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/j1;->a:Ljava/util/Comparator;

    iget-object v1, p1, Lcom/google/common/collect/j1;->a:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    iget-boolean v0, p0, Lcom/google/common/collect/j1;->b:Z

    invoke-virtual {p0}, Lcom/google/common/collect/j1;->g()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/j1;->f()Lcom/google/common/collect/BoundType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/collect/j1;->j()Z

    move-result v3

    if-nez v3, :cond_29

    iget-boolean v0, p1, Lcom/google/common/collect/j1;->b:Z

    invoke-virtual {p1}, Lcom/google/common/collect/j1;->g()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/common/collect/j1;->f()Lcom/google/common/collect/BoundType;

    move-result-object v2

    goto :goto_51

    :cond_29
    invoke-virtual {p1}, Lcom/google/common/collect/j1;->j()Z

    move-result v3

    if-eqz v3, :cond_51

    iget-object v3, p0, Lcom/google/common/collect/j1;->a:Ljava/util/Comparator;

    invoke-virtual {p0}, Lcom/google/common/collect/j1;->g()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/common/collect/j1;->g()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_49

    if-nez v3, :cond_51

    invoke-virtual {p1}, Lcom/google/common/collect/j1;->f()Lcom/google/common/collect/BoundType;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/BoundType;->a:Lcom/google/common/collect/BoundType;

    if-ne v3, v4, :cond_51

    :cond_49
    invoke-virtual {p1}, Lcom/google/common/collect/j1;->g()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/common/collect/j1;->f()Lcom/google/common/collect/BoundType;

    move-result-object v2

    :cond_51
    :goto_51
    move v5, v0

    iget-boolean v0, p0, Lcom/google/common/collect/j1;->e:Z

    invoke-virtual {p0}, Lcom/google/common/collect/j1;->i()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/common/collect/j1;->h()Lcom/google/common/collect/BoundType;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/common/collect/j1;->k()Z

    move-result v6

    if-nez v6, :cond_6d

    iget-boolean v0, p1, Lcom/google/common/collect/j1;->e:Z

    invoke-virtual {p1}, Lcom/google/common/collect/j1;->i()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/common/collect/j1;->h()Lcom/google/common/collect/BoundType;

    move-result-object v4

    goto :goto_95

    :cond_6d
    invoke-virtual {p1}, Lcom/google/common/collect/j1;->k()Z

    move-result v6

    if-eqz v6, :cond_95

    iget-object v6, p0, Lcom/google/common/collect/j1;->a:Ljava/util/Comparator;

    invoke-virtual {p0}, Lcom/google/common/collect/j1;->i()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1}, Lcom/google/common/collect/j1;->i()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-gtz v6, :cond_8d

    if-nez v6, :cond_95

    invoke-virtual {p1}, Lcom/google/common/collect/j1;->h()Lcom/google/common/collect/BoundType;

    move-result-object v6

    sget-object v7, Lcom/google/common/collect/BoundType;->a:Lcom/google/common/collect/BoundType;

    if-ne v6, v7, :cond_95

    :cond_8d
    invoke-virtual {p1}, Lcom/google/common/collect/j1;->i()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/common/collect/j1;->h()Lcom/google/common/collect/BoundType;

    move-result-object v4

    :cond_95
    :goto_95
    move v8, v0

    move-object v9, v3

    if-eqz v5, :cond_b3

    if-eqz v8, :cond_b3

    iget-object p1, p0, Lcom/google/common/collect/j1;->a:Ljava/util/Comparator;

    invoke-interface {p1, v1, v9}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-gtz p1, :cond_ab

    if-nez p1, :cond_b3

    sget-object p1, Lcom/google/common/collect/BoundType;->a:Lcom/google/common/collect/BoundType;

    if-ne v2, p1, :cond_b3

    if-ne v4, p1, :cond_b3

    :cond_ab
    sget-object p1, Lcom/google/common/collect/BoundType;->a:Lcom/google/common/collect/BoundType;

    sget-object v0, Lcom/google/common/collect/BoundType;->b:Lcom/google/common/collect/BoundType;

    move-object v7, p1

    move-object v10, v0

    move-object v6, v9

    goto :goto_b6

    :cond_b3
    move-object v6, v1

    move-object v7, v2

    move-object v10, v4

    :goto_b6
    new-instance p1, Lcom/google/common/collect/j1;

    iget-object v4, p0, Lcom/google/common/collect/j1;->a:Ljava/util/Comparator;

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lcom/google/common/collect/j1;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    return-object p1
.end method

.method n(Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/j1;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Lcom/google/common/collect/j1;->i()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/e2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/j1;->a:Ljava/util/Comparator;

    invoke-interface {v2, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    if-lez p1, :cond_1b

    const/4 v2, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    if-nez p1, :cond_20

    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    invoke-virtual {p0}, Lcom/google/common/collect/j1;->h()Lcom/google/common/collect/BoundType;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/BoundType;->a:Lcom/google/common/collect/BoundType;

    if-ne v3, v4, :cond_2a

    const/4 v1, 0x1

    :cond_2a
    and-int/2addr p1, v1

    or-int/2addr p1, v2

    return p1
.end method

.method p(Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/j1;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Lcom/google/common/collect/j1;->g()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/e2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/j1;->a:Ljava/util/Comparator;

    invoke-interface {v2, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    if-gez p1, :cond_1b

    const/4 v2, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    if-nez p1, :cond_20

    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    invoke-virtual {p0}, Lcom/google/common/collect/j1;->f()Lcom/google/common/collect/BoundType;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/BoundType;->a:Lcom/google/common/collect/BoundType;

    if-ne v3, v4, :cond_2a

    const/4 v1, 0x1

    :cond_2a
    and-int/2addr p1, v1

    or-int/2addr p1, v2

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lcom/google/common/collect/j1;->a:Ljava/util/Comparator;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/j1;->d:Lcom/google/common/collect/BoundType;

    sget-object v2, Lcom/google/common/collect/BoundType;->b:Lcom/google/common/collect/BoundType;

    if-ne v1, v2, :cond_f

    const/16 v1, 0x5b

    goto :goto_11

    :cond_f
    const/16 v1, 0x28

    :goto_11
    iget-boolean v3, p0, Lcom/google/common/collect/j1;->b:Z

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/google/common/collect/j1;->c:Ljava/lang/Object;

    goto :goto_1a

    :cond_18
    const-string v3, "-\u221e"

    :goto_1a
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/common/collect/j1;->e:Z

    if-eqz v4, :cond_25

    iget-object v4, p0, Lcom/google/common/collect/j1;->f:Ljava/lang/Object;

    goto :goto_27

    :cond_25
    const-string v4, "\u221e"

    :goto_27
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/common/collect/j1;->g:Lcom/google/common/collect/BoundType;

    if-ne v5, v2, :cond_32

    const/16 v2, 0x5d

    goto :goto_34

    :cond_32
    const/16 v2, 0x29

    :goto_34
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
