###### Class com.google.common.collect.TreeMultiset (com.google.common.collect.TreeMultiset)
.class public final Lcom/google/common/collect/TreeMultiset;
.super Lcom/google/common/collect/q;
.source "TreeMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/TreeMultiset$e;,
        Lcom/google/common/collect/TreeMultiset$f;,
        Lcom/google/common/collect/TreeMultiset$Aggregate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/q<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final transient e:Lcom/google/common/collect/TreeMultiset$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$f<",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private final transient f:Lcom/google/common/collect/j1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/j1<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final transient g:Lcom/google/common/collect/TreeMultiset$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeMultiset$f;Lcom/google/common/collect/j1;Lcom/google/common/collect/TreeMultiset$e;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$f<",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;>;",
            "Lcom/google/common/collect/j1<",
            "TE;>;",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/common/collect/j1;->c()Ljava/util/Comparator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/q;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset;->e:Lcom/google/common/collect/TreeMultiset$f;

    iput-object p2, p0, Lcom/google/common/collect/TreeMultiset;->f:Lcom/google/common/collect/j1;

    iput-object p3, p0, Lcom/google/common/collect/TreeMultiset;->g:Lcom/google/common/collect/TreeMultiset$e;

    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/collect/q;-><init>(Ljava/util/Comparator;)V

    invoke-static {p1}, Lcom/google/common/collect/j1;->a(Ljava/util/Comparator;)Lcom/google/common/collect/j1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset;->f:Lcom/google/common/collect/j1;

    new-instance p1, Lcom/google/common/collect/TreeMultiset$e;

    invoke-direct {p1}, Lcom/google/common/collect/TreeMultiset$e;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset;->g:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {p1, p1}, Lcom/google/common/collect/TreeMultiset;->M(Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;)V

    new-instance p1, Lcom/google/common/collect/TreeMultiset$f;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/common/collect/TreeMultiset$f;-><init>(Lcom/google/common/collect/TreeMultiset$a;)V

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset;->e:Lcom/google/common/collect/TreeMultiset$f;

    return-void
.end method

.method static synthetic A(Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset;->O(Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;)V

    return-void
.end method

.method static synthetic B(Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/common/collect/TreeMultiset;->M(Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;)V

    return-void
.end method

.method private C(Lcom/google/common/collect/TreeMultiset$Aggregate;Lcom/google/common/collect/TreeMultiset$e;)J
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$Aggregate;",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;)J"
        }
    .end annotation

    if-nez p2, :cond_5

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_5
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->f:Lcom/google/common/collect/j1;

    invoke-virtual {v1}, Lcom/google/common/collect/j1;->i()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/e2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/common/collect/TreeMultiset$e;->x()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_26

    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$e;->j(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset;->C(Lcom/google/common/collect/TreeMultiset$Aggregate;Lcom/google/common/collect/TreeMultiset$e;)J

    move-result-wide p1

    return-wide p1

    :cond_26
    if-nez v0, :cond_5a

    sget-object v0, Lcom/google/common/collect/TreeMultiset$d;->a:[I

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->f:Lcom/google/common/collect/j1;

    invoke-virtual {v1}, Lcom/google/common/collect/j1;->h()Lcom/google/common/collect/BoundType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4b

    const/4 v1, 0x2

    if-ne v0, v1, :cond_45

    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$e;->j(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$Aggregate;->g(Lcom/google/common/collect/TreeMultiset$e;)J

    move-result-wide p1

    return-wide p1

    :cond_45
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4b
    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$Aggregate;->f(Lcom/google/common/collect/TreeMultiset$e;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$e;->j(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$Aggregate;->g(Lcom/google/common/collect/TreeMultiset$e;)J

    move-result-wide p1

    :goto_58
    add-long/2addr v0, p1

    return-wide v0

    :cond_5a
    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$e;->j(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/TreeMultiset$Aggregate;->g(Lcom/google/common/collect/TreeMultiset$e;)J

    move-result-wide v0

    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$Aggregate;->f(Lcom/google/common/collect/TreeMultiset$e;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$e;->h(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset;->C(Lcom/google/common/collect/TreeMultiset$Aggregate;Lcom/google/common/collect/TreeMultiset$e;)J

    move-result-wide p1

    goto :goto_58
.end method

.method private D(Lcom/google/common/collect/TreeMultiset$Aggregate;Lcom/google/common/collect/TreeMultiset$e;)J
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$Aggregate;",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;)J"
        }
    .end annotation

    if-nez p2, :cond_5

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_5
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->f:Lcom/google/common/collect/j1;

    invoke-virtual {v1}, Lcom/google/common/collect/j1;->g()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/e2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/common/collect/TreeMultiset$e;->x()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_26

    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$e;->h(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset;->D(Lcom/google/common/collect/TreeMultiset$Aggregate;Lcom/google/common/collect/TreeMultiset$e;)J

    move-result-wide p1

    return-wide p1

    :cond_26
    if-nez v0, :cond_5a

    sget-object v0, Lcom/google/common/collect/TreeMultiset$d;->a:[I

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->f:Lcom/google/common/collect/j1;

    invoke-virtual {v1}, Lcom/google/common/collect/j1;->f()Lcom/google/common/collect/BoundType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4b

    const/4 v1, 0x2

    if-ne v0, v1, :cond_45

    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$e;->h(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$Aggregate;->g(Lcom/google/common/collect/TreeMultiset$e;)J

    move-result-wide p1

    return-wide p1

    :cond_45
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4b
    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$Aggregate;->f(Lcom/google/common/collect/TreeMultiset$e;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$e;->h(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$Aggregate;->g(Lcom/google/common/collect/TreeMultiset$e;)J

    move-result-wide p1

    :goto_58
    add-long/2addr v0, p1

    return-wide v0

    :cond_5a
    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$e;->h(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/TreeMultiset$Aggregate;->g(Lcom/google/common/collect/TreeMultiset$e;)J

    move-result-wide v0

    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$Aggregate;->f(Lcom/google/common/collect/TreeMultiset$e;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$e;->j(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset;->D(Lcom/google/common/collect/TreeMultiset$Aggregate;Lcom/google/common/collect/TreeMultiset$e;)J

    move-result-wide p1

    goto :goto_58
.end method

.method private E(Lcom/google/common/collect/TreeMultiset$Aggregate;)J
    .registers 7

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->e:Lcom/google/common/collect/TreeMultiset$f;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$f;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$e;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/TreeMultiset$Aggregate;->g(Lcom/google/common/collect/TreeMultiset$e;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->f:Lcom/google/common/collect/j1;

    invoke-virtual {v3}, Lcom/google/common/collect/j1;->j()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/TreeMultiset;->D(Lcom/google/common/collect/TreeMultiset$Aggregate;Lcom/google/common/collect/TreeMultiset$e;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    :cond_19
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->f:Lcom/google/common/collect/j1;

    invoke-virtual {v3}, Lcom/google/common/collect/j1;->k()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/TreeMultiset;->C(Lcom/google/common/collect/TreeMultiset$Aggregate;Lcom/google/common/collect/TreeMultiset$e;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    :cond_26
    return-wide v1
.end method

.method static F(Lcom/google/common/collect/TreeMultiset$e;)I
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "*>;)I"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    :cond_4
    invoke-static {p0}, Lcom/google/common/collect/TreeMultiset$e;->g(Lcom/google/common/collect/TreeMultiset$e;)I

    move-result p0

    :goto_8
    return p0
.end method

.method private G()Lcom/google/common/collect/TreeMultiset$e;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->e:Lcom/google/common/collect/TreeMultiset$f;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$f;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$e;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    :cond_c
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->f:Lcom/google/common/collect/j1;

    invoke-virtual {v2}, Lcom/google/common/collect/j1;->j()Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->f:Lcom/google/common/collect/j1;

    invoke-virtual {v2}, Lcom/google/common/collect/j1;->g()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/e2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/google/common/collect/TreeMultiset$e;->a(Lcom/google/common/collect/TreeMultiset$e;Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v0

    if-nez v0, :cond_29

    return-object v1

    :cond_29
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->f:Lcom/google/common/collect/j1;

    invoke-virtual {v3}, Lcom/google/common/collect/j1;->f()Lcom/google/common/collect/BoundType;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/BoundType;->a:Lcom/google/common/collect/BoundType;

    if-ne v3, v4, :cond_4c

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$e;->x()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_4c

    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset$e;->l(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v0

    goto :goto_4c

    :cond_46
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->g:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset$e;->l(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v0

    :cond_4c
    :goto_4c
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->g:Lcom/google/common/collect/TreeMultiset$e;

    if-eq v0, v2, :cond_5e

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->f:Lcom/google/common/collect/j1;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$e;->x()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/j1;->d(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d

    goto :goto_5e

    :cond_5d
    move-object v1, v0

    :cond_5e
    :goto_5e
    return-object v1
.end method

.method private H()Lcom/google/common/collect/TreeMultiset$e;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->e:Lcom/google/common/collect/TreeMultiset$f;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$f;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$e;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    :cond_c
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->f:Lcom/google/common/collect/j1;

    invoke-virtual {v2}, Lcom/google/common/collect/j1;->k()Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->f:Lcom/google/common/collect/j1;

    invoke-virtual {v2}, Lcom/google/common/collect/j1;->i()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/e2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/google/common/collect/TreeMultiset$e;->b(Lcom/google/common/collect/TreeMultiset$e;Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v0

    if-nez v0, :cond_29

    return-object v1

    :cond_29
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->f:Lcom/google/common/collect/j1;

    invoke-virtual {v3}, Lcom/google/common/collect/j1;->h()Lcom/google/common/collect/BoundType;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/BoundType;->a:Lcom/google/common/collect/BoundType;

    if-ne v3, v4, :cond_4c

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$e;->x()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_4c

    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset$e;->c(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v0

    goto :goto_4c

    :cond_46
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->g:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset$e;->c(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v0

    :cond_4c
    :goto_4c
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->g:Lcom/google/common/collect/TreeMultiset$e;

    if-eq v0, v2, :cond_5e

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->f:Lcom/google/common/collect/j1;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$e;->x()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/j1;->d(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d

    goto :goto_5e

    :cond_5d
    move-object v1, v0

    :cond_5e
    :goto_5e
    return-object v1
.end method

.method private static M(Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TT;>;",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TT;>;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/collect/TreeMultiset$e;->n(Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {p1, p0}, Lcom/google/common/collect/TreeMultiset$e;->m(Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;

    return-void
.end method

.method private static O(Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TT;>;",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TT;>;",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TT;>;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/collect/TreeMultiset;->M(Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;)V

    invoke-static {p1, p2}, Lcom/google/common/collect/TreeMultiset;->M(Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;)V

    return-void
.end method

.method private P(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/c2$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;)",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/TreeMultiset$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/TreeMultiset$a;-><init>(Lcom/google/common/collect/TreeMultiset;Lcom/google/common/collect/TreeMultiset$e;)V

    return-object v0
.end method

.method public static create()Lcom/google/common/collect/TreeMultiset;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/TreeMultiset<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/TreeMultiset;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;)Lcom/google/common/collect/TreeMultiset;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/TreeMultiset<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/TreeMultiset;->create()Lcom/google/common/collect/TreeMultiset;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-object v0
.end method

.method public static create(Ljava/util/Comparator;)Lcom/google/common/collect/TreeMultiset;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;)",
            "Lcom/google/common/collect/TreeMultiset<",
            "TE;>;"
        }
    .end annotation

    if-nez p0, :cond_c

    new-instance p0, Lcom/google/common/collect/TreeMultiset;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/TreeMultiset;-><init>(Ljava/util/Comparator;)V

    goto :goto_12

    :cond_c
    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeMultiset;-><init>(Ljava/util/Comparator;)V

    move-object p0, v0

    :goto_12
    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    const-class v1, Lcom/google/common/collect/q;

    const-string v2, "comparator"

    invoke-static {v1, v2}, Lcom/google/common/collect/y2;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/y2$b;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/common/collect/y2$b;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v1, Lcom/google/common/collect/TreeMultiset;

    const-string v2, "range"

    invoke-static {v1, v2}, Lcom/google/common/collect/y2;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/y2$b;

    move-result-object v1

    invoke-static {v0}, Lcom/google/common/collect/j1;->a(Ljava/util/Comparator;)Lcom/google/common/collect/j1;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcom/google/common/collect/y2$b;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v0, Lcom/google/common/collect/TreeMultiset;

    const-string v1, "rootReference"

    invoke-static {v0, v1}, Lcom/google/common/collect/y2;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/y2$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/TreeMultiset$f;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/common/collect/TreeMultiset$f;-><init>(Lcom/google/common/collect/TreeMultiset$a;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/common/collect/y2$b;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/common/collect/TreeMultiset$e;

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$e;-><init>()V

    const-class v1, Lcom/google/common/collect/TreeMultiset;

    const-string v2, "header"

    invoke-static {v1, v2}, Lcom/google/common/collect/y2;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/y2$b;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/common/collect/y2$b;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v0}, Lcom/google/common/collect/TreeMultiset;->M(Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;)V

    invoke-static {p0, p1}, Lcom/google/common/collect/y2;->f(Lcom/google/common/collect/c2;Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method static synthetic t(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/TreeMultiset$e;
    .registers 1

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset;->G()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p0

    return-object p0
.end method

.method static synthetic v(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/j1;
    .registers 1

    iget-object p0, p0, Lcom/google/common/collect/TreeMultiset;->f:Lcom/google/common/collect/j1;

    return-object p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->k()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/google/common/collect/y2;->k(Lcom/google/common/collect/c2;Ljava/io/ObjectOutputStream;)V

    return-void
.end method

.method static synthetic x(Lcom/google/common/collect/TreeMultiset;Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/c2$a;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/common/collect/TreeMultiset;->P(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/c2$a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic y(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/TreeMultiset$e;
    .registers 1

    iget-object p0, p0, Lcom/google/common/collect/TreeMultiset;->g:Lcom/google/common/collect/TreeMultiset$e;

    return-object p0
.end method

.method static synthetic z(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/TreeMultiset$e;
    .registers 1

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset;->H()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public I(Ljava/lang/Object;II)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    const-string v0, "newCount"

    invoke-static {p3, v0}, Lcom/google/common/collect/z;->b(ILjava/lang/String;)I

    const-string v0, "oldCount"

    invoke-static {p2, v0}, Lcom/google/common/collect/z;->b(ILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->f:Lcom/google/common/collect/j1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/j1;->d(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->e:Lcom/google/common/collect/TreeMultiset$f;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$f;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$e;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v0, :cond_28

    if-nez p2, :cond_27

    if-lez p3, :cond_26

    invoke-virtual {p0, p1, p3}, Lcom/google/common/collect/TreeMultiset;->u(Ljava/lang/Object;I)I

    :cond_26
    return v8

    :cond_27
    return v7

    :cond_28
    new-array v9, v8, [I

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v2

    move-object v1, v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Lcom/google/common/collect/TreeMultiset$e;->J(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    iget-object p3, p0, Lcom/google/common/collect/TreeMultiset;->e:Lcom/google/common/collect/TreeMultiset$f;

    invoke-virtual {p3, v0, p1}, Lcom/google/common/collect/TreeMultiset$f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    aget p1, v9, v7

    if-ne p1, p2, :cond_41

    const/4 v7, 0x1

    :cond_41
    return v7
.end method

.method public J(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/e3;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/e3<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->e:Lcom/google/common/collect/TreeMultiset$f;

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->f:Lcom/google/common/collect/j1;

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/google/common/collect/j1;->q(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/j1;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/common/collect/j1;->m(Lcom/google/common/collect/j1;)Lcom/google/common/collect/j1;

    move-result-object p1

    iget-object p2, p0, Lcom/google/common/collect/TreeMultiset;->g:Lcom/google/common/collect/TreeMultiset$e;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/common/collect/TreeMultiset;-><init>(Lcom/google/common/collect/TreeMultiset$f;Lcom/google/common/collect/j1;Lcom/google/common/collect/TreeMultiset$e;)V

    return-object v0
.end method

.method public K(Ljava/lang/Object;)I
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->e:Lcom/google/common/collect/TreeMultiset$f;

    invoke-virtual {v1}, Lcom/google/common/collect/TreeMultiset$f;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/TreeMultiset$e;

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->f:Lcom/google/common/collect/j1;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/j1;->d(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    if-nez v1, :cond_14

    goto :goto_1d

    :cond_14
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/google/common/collect/TreeMultiset$e;->t(Ljava/util/Comparator;Ljava/lang/Object;)I

    move-result p1
    :try_end_1c
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1c} :catch_1d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1c} :catch_1d

    return p1

    :catch_1d
    :cond_1d
    :goto_1d
    return v0
.end method

.method public L(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/e3;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/e3<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->e:Lcom/google/common/collect/TreeMultiset$f;

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->f:Lcom/google/common/collect/j1;

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/google/common/collect/j1;->e(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/j1;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/common/collect/j1;->m(Lcom/google/common/collect/j1;)Lcom/google/common/collect/j1;

    move-result-object p1

    iget-object p2, p0, Lcom/google/common/collect/TreeMultiset;->g:Lcom/google/common/collect/TreeMultiset$e;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/common/collect/TreeMultiset;-><init>(Lcom/google/common/collect/TreeMultiset$f;Lcom/google/common/collect/j1;Lcom/google/common/collect/TreeMultiset$e;)V

    return-object v0
.end method

.method public clear()V
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->f:Lcom/google/common/collect/j1;

    invoke-virtual {v0}, Lcom/google/common/collect/j1;->j()Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->f:Lcom/google/common/collect/j1;

    invoke-virtual {v0}, Lcom/google/common/collect/j1;->k()Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->g:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset$e;->l(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v0

    :goto_16
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->g:Lcom/google/common/collect/TreeMultiset$e;

    if-eq v0, v1, :cond_31

    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset$e;->l(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/common/collect/TreeMultiset$e;->e(Lcom/google/common/collect/TreeMultiset$e;I)I

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/common/collect/TreeMultiset$e;->i(Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v0, v2}, Lcom/google/common/collect/TreeMultiset$e;->k(Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v0, v2}, Lcom/google/common/collect/TreeMultiset$e;->m(Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v0, v2}, Lcom/google/common/collect/TreeMultiset$e;->n(Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;

    move-object v0, v1

    goto :goto_16

    :cond_31
    invoke-static {v1, v1}, Lcom/google/common/collect/TreeMultiset;->M(Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;)V

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->e:Lcom/google/common/collect/TreeMultiset$f;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$f;->b()V

    goto :goto_41

    :cond_3a
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->i()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->c(Ljava/util/Iterator;)V

    :goto_41
    return-void
.end method

.method public bridge synthetic comparator()Ljava/util/Comparator;
    .registers 2

    invoke-super {p0}, Lcom/google/common/collect/q;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/collect/k;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .registers 2

    invoke-super {p0}, Lcom/google/common/collect/k;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic firstEntry()Lcom/google/common/collect/c2$a;
    .registers 2

    invoke-super {p0}, Lcom/google/common/collect/q;->firstEntry()Lcom/google/common/collect/c2$a;

    move-result-object v0

    return-object v0
.end method

.method g()I
    .registers 3

    sget-object v0, Lcom/google/common/collect/TreeMultiset$Aggregate;->b:Lcom/google/common/collect/TreeMultiset$Aggregate;

    invoke-direct {p0, v0}, Lcom/google/common/collect/TreeMultiset;->E(Lcom/google/common/collect/TreeMultiset$Aggregate;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method h()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->i()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Multisets;->e(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method i()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/TreeMultiset$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeMultiset$b;-><init>(Lcom/google/common/collect/TreeMultiset;)V

    return-object v0
.end method

.method public bridge synthetic isEmpty()Z
    .registers 2

    invoke-super {p0}, Lcom/google/common/collect/k;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/collect/Multisets;->h(Lcom/google/common/collect/c2;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k()Ljava/util/NavigableSet;
    .registers 2

    invoke-super {p0}, Lcom/google/common/collect/q;->k()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic lastEntry()Lcom/google/common/collect/c2$a;
    .registers 2

    invoke-super {p0}, Lcom/google/common/collect/q;->lastEntry()Lcom/google/common/collect/c2$a;

    move-result-object v0

    return-object v0
.end method

.method public m(Ljava/lang/Object;I)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    const-string v0, "count"

    invoke-static {p2, v0}, Lcom/google/common/collect/z;->b(ILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->f:Lcom/google/common/collect/j1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/j1;->d(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_17

    if-nez p2, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    return v2

    :cond_17
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->e:Lcom/google/common/collect/TreeMultiset$f;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$f;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$e;

    if-nez v0, :cond_27

    if-lez p2, :cond_26

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset;->u(Ljava/lang/Object;I)I

    :cond_26
    return v2

    :cond_27
    new-array v1, v1, [I

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {v0, v3, p1, p2, v1}, Lcom/google/common/collect/TreeMultiset$e;->K(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    iget-object p2, p0, Lcom/google/common/collect/TreeMultiset;->e:Lcom/google/common/collect/TreeMultiset$f;

    invoke-virtual {p2, v0, p1}, Lcom/google/common/collect/TreeMultiset$f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    aget p1, v1, v2

    return p1
.end method

.method public bridge synthetic pollFirstEntry()Lcom/google/common/collect/c2$a;
    .registers 2

    invoke-super {p0}, Lcom/google/common/collect/q;->pollFirstEntry()Lcom/google/common/collect/c2$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic pollLastEntry()Lcom/google/common/collect/c2$a;
    .registers 2

    invoke-super {p0}, Lcom/google/common/collect/q;->pollLastEntry()Lcom/google/common/collect/c2$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic q(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/e3;
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/common/collect/q;->q(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/e3;

    move-result-object p1

    return-object p1
.end method

.method r()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/TreeMultiset$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeMultiset$c;-><init>(Lcom/google/common/collect/TreeMultiset;)V

    return-object v0
.end method

.method public s(Ljava/lang/Object;I)I
    .registers 7

    const-string v0, "occurrences"

    invoke-static {p2, v0}, Lcom/google/common/collect/z;->b(ILjava/lang/String;)I

    if-nez p2, :cond_c

    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultiset;->K(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_c
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->e:Lcom/google/common/collect/TreeMultiset$f;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$f;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$e;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    :try_start_18
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->f:Lcom/google/common/collect/j1;

    invoke-virtual {v3, p1}, Lcom/google/common/collect/j1;->d(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    if-nez v0, :cond_23

    goto :goto_33

    :cond_23
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {v0, v3, p1, p2, v1}, Lcom/google/common/collect/TreeMultiset$e;->E(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1
    :try_end_2b
    .catch Ljava/lang/ClassCastException; {:try_start_18 .. :try_end_2b} :catch_33
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_2b} :catch_33

    iget-object p2, p0, Lcom/google/common/collect/TreeMultiset;->e:Lcom/google/common/collect/TreeMultiset$f;

    invoke-virtual {p2, v0, p1}, Lcom/google/common/collect/TreeMultiset$f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    aget p1, v1, v2

    return p1

    :catch_33
    :cond_33
    :goto_33
    return v2
.end method

.method public size()I
    .registers 3

    sget-object v0, Lcom/google/common/collect/TreeMultiset$Aggregate;->a:Lcom/google/common/collect/TreeMultiset$Aggregate;

    invoke-direct {p0, v0}, Lcom/google/common/collect/TreeMultiset;->E(Lcom/google/common/collect/TreeMultiset$Aggregate;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method public u(Ljava/lang/Object;I)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    const-string v0, "occurrences"

    invoke-static {p2, v0}, Lcom/google/common/collect/z;->b(ILjava/lang/String;)I

    if-nez p2, :cond_c

    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultiset;->K(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_c
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->f:Lcom/google/common/collect/j1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/j1;->d(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->e:Lcom/google/common/collect/TreeMultiset$f;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$f;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$e;

    const/4 v1, 0x0

    if-nez v0, :cond_37

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v2, p1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    new-instance v2, Lcom/google/common/collect/TreeMultiset$e;

    invoke-direct {v2, p1, p2}, Lcom/google/common/collect/TreeMultiset$e;-><init>(Ljava/lang/Object;I)V

    iget-object p1, p0, Lcom/google/common/collect/TreeMultiset;->g:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {p1, v2, p1}, Lcom/google/common/collect/TreeMultiset;->O(Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;)V

    iget-object p1, p0, Lcom/google/common/collect/TreeMultiset;->e:Lcom/google/common/collect/TreeMultiset$f;

    invoke-virtual {p1, v0, v2}, Lcom/google/common/collect/TreeMultiset$f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    :cond_37
    const/4 v2, 0x1

    new-array v2, v2, [I

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {v0, v3, p1, p2, v2}, Lcom/google/common/collect/TreeMultiset$e;->o(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    iget-object p2, p0, Lcom/google/common/collect/TreeMultiset;->e:Lcom/google/common/collect/TreeMultiset$f;

    invoke-virtual {p2, v0, p1}, Lcom/google/common/collect/TreeMultiset$f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    aget p1, v2, v1

    return p1
.end method

.method public bridge synthetic w()Lcom/google/common/collect/e3;
    .registers 2

    invoke-super {p0}, Lcom/google/common/collect/q;->w()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.collect.TreeMultiset.Aggregate (com.google.common.collect.TreeMultiset$Aggregate)
.class abstract enum Lcom/google/common/collect/TreeMultiset$Aggregate;
.super Ljava/lang/Enum;
.source "TreeMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "Aggregate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/TreeMultiset$Aggregate;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/collect/TreeMultiset$Aggregate;

.field public static final enum b:Lcom/google/common/collect/TreeMultiset$Aggregate;

.field private static final synthetic c:[Lcom/google/common/collect/TreeMultiset$Aggregate;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/common/collect/TreeMultiset$Aggregate$a;

    const-string v1, "SIZE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/TreeMultiset$Aggregate$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/TreeMultiset$Aggregate;->a:Lcom/google/common/collect/TreeMultiset$Aggregate;

    new-instance v0, Lcom/google/common/collect/TreeMultiset$Aggregate$b;

    const-string v1, "DISTINCT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/TreeMultiset$Aggregate$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/TreeMultiset$Aggregate;->b:Lcom/google/common/collect/TreeMultiset$Aggregate;

    invoke-static {}, Lcom/google/common/collect/TreeMultiset$Aggregate;->e()[Lcom/google/common/collect/TreeMultiset$Aggregate;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/TreeMultiset$Aggregate;->c:[Lcom/google/common/collect/TreeMultiset$Aggregate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/collect/TreeMultiset$a;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset$Aggregate;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic e()[Lcom/google/common/collect/TreeMultiset$Aggregate;
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/collect/TreeMultiset$Aggregate;

    sget-object v1, Lcom/google/common/collect/TreeMultiset$Aggregate;->a:Lcom/google/common/collect/TreeMultiset$Aggregate;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/collect/TreeMultiset$Aggregate;->b:Lcom/google/common/collect/TreeMultiset$Aggregate;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/TreeMultiset$Aggregate;
    .registers 2

    const-class v0, Lcom/google/common/collect/TreeMultiset$Aggregate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/TreeMultiset$Aggregate;

    return-object p0
.end method

.method public static values()[Lcom/google/common/collect/TreeMultiset$Aggregate;
    .registers 1

    sget-object v0, Lcom/google/common/collect/TreeMultiset$Aggregate;->c:[Lcom/google/common/collect/TreeMultiset$Aggregate;

    invoke-virtual {v0}, [Lcom/google/common/collect/TreeMultiset$Aggregate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/TreeMultiset$Aggregate;

    return-object v0
.end method


# virtual methods
.method abstract f(Lcom/google/common/collect/TreeMultiset$e;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "*>;)I"
        }
    .end annotation
.end method

.method abstract g(Lcom/google/common/collect/TreeMultiset$e;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "*>;)J"
        }
    .end annotation
.end method

###### Class com.google.common.collect.TreeMultiset.Aggregate.a (com.google.common.collect.TreeMultiset$Aggregate$a)
.class final enum Lcom/google/common/collect/TreeMultiset$Aggregate$a;
.super Lcom/google/common/collect/TreeMultiset$Aggregate;
.source "TreeMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeMultiset$Aggregate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/TreeMultiset$Aggregate;-><init>(Ljava/lang/String;ILcom/google/common/collect/TreeMultiset$a;)V

    return-void
.end method


# virtual methods
.method f(Lcom/google/common/collect/TreeMultiset$e;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "*>;)I"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/TreeMultiset$e;->d(Lcom/google/common/collect/TreeMultiset$e;)I

    move-result p1

    return p1
.end method

.method g(Lcom/google/common/collect/TreeMultiset$e;)J
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "*>;)J"
        }
    .end annotation

    if-nez p1, :cond_5

    const-wide/16 v0, 0x0

    goto :goto_9

    :cond_5
    invoke-static {p1}, Lcom/google/common/collect/TreeMultiset$e;->f(Lcom/google/common/collect/TreeMultiset$e;)J

    move-result-wide v0

    :goto_9
    return-wide v0
.end method

###### Class com.google.common.collect.TreeMultiset.Aggregate.b (com.google.common.collect.TreeMultiset$Aggregate$b)
.class final enum Lcom/google/common/collect/TreeMultiset$Aggregate$b;
.super Lcom/google/common/collect/TreeMultiset$Aggregate;
.source "TreeMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeMultiset$Aggregate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/TreeMultiset$Aggregate;-><init>(Ljava/lang/String;ILcom/google/common/collect/TreeMultiset$a;)V

    return-void
.end method


# virtual methods
.method f(Lcom/google/common/collect/TreeMultiset$e;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "*>;)I"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method g(Lcom/google/common/collect/TreeMultiset$e;)J
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "*>;)J"
        }
    .end annotation

    if-nez p1, :cond_5

    const-wide/16 v0, 0x0

    goto :goto_a

    :cond_5
    invoke-static {p1}, Lcom/google/common/collect/TreeMultiset$e;->g(Lcom/google/common/collect/TreeMultiset$e;)I

    move-result p1

    int-to-long v0, p1

    :goto_a
    return-wide v0
.end method

###### Class com.google.common.collect.TreeMultiset.a (com.google.common.collect.TreeMultiset$a)
.class Lcom/google/common/collect/TreeMultiset$a;
.super Lcom/google/common/collect/Multisets$f;
.source "TreeMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeMultiset;->P(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/c2$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$f<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/TreeMultiset$e;

.field final synthetic b:Lcom/google/common/collect/TreeMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeMultiset;Lcom/google/common/collect/TreeMultiset$e;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$a;->b:Lcom/google/common/collect/TreeMultiset;

    iput-object p2, p0, Lcom/google/common/collect/TreeMultiset$a;->a:Lcom/google/common/collect/TreeMultiset$e;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$f;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$a;->a:Lcom/google/common/collect/TreeMultiset$e;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$e;->x()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$a;->a:Lcom/google/common/collect/TreeMultiset$e;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$e;->w()I

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$a;->b:Lcom/google/common/collect/TreeMultiset;

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$a;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/TreeMultiset;->K(Ljava/lang/Object;)I

    move-result v0

    :cond_12
    return v0
.end method

###### Class com.google.common.collect.TreeMultiset.b (com.google.common.collect.TreeMultiset$b)
.class Lcom/google/common/collect/TreeMultiset$b;
.super Ljava/lang/Object;
.source "TreeMultiset.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeMultiset;->i()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/google/common/collect/c2$a<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field a:Lcom/google/common/collect/TreeMultiset$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation
.end field

.field b:Lcom/google/common/collect/c2$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/c2$a<",
            "TE;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/google/common/collect/TreeMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeMultiset;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$b;->c:Lcom/google/common/collect/TreeMultiset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/collect/TreeMultiset;->t(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$b;->a:Lcom/google/common/collect/TreeMultiset$e;

    return-void
.end method


# virtual methods
.method public b()Lcom/google/common/collect/c2$a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->c:Lcom/google/common/collect/TreeMultiset;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$b;->a:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v0, v1}, Lcom/google/common/collect/TreeMultiset;->x(Lcom/google/common/collect/TreeMultiset;Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/c2$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->b:Lcom/google/common/collect/c2$a;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$b;->a:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset$e;->l(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$b;->c:Lcom/google/common/collect/TreeMultiset;

    invoke-static {v2}, Lcom/google/common/collect/TreeMultiset;->y(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v2

    if-ne v1, v2, :cond_27

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/collect/TreeMultiset$b;->a:Lcom/google/common/collect/TreeMultiset$e;

    goto :goto_2f

    :cond_27
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$b;->a:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset$e;->l(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/TreeMultiset$b;->a:Lcom/google/common/collect/TreeMultiset$e;

    :goto_2f
    return-object v0

    :cond_30
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->a:Lcom/google/common/collect/TreeMultiset$e;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->c:Lcom/google/common/collect/TreeMultiset;

    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset;->v(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/j1;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$b;->a:Lcom/google/common/collect/TreeMultiset$e;

    invoke-virtual {v2}, Lcom/google/common/collect/TreeMultiset$e;->x()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/collect/j1;->n(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->a:Lcom/google/common/collect/TreeMultiset$e;

    return v1

    :cond_1c
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$b;->b()Lcom/google/common/collect/c2$a;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->b:Lcom/google/common/collect/c2$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v2, "no calls to next() since the last call to remove()"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->c:Lcom/google/common/collect/TreeMultiset;

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$b;->b:Lcom/google/common/collect/c2$a;

    invoke-interface {v2}, Lcom/google/common/collect/c2$a;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/TreeMultiset;->m(Ljava/lang/Object;I)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->b:Lcom/google/common/collect/c2$a;

    return-void
.end method

###### Class com.google.common.collect.TreeMultiset.c (com.google.common.collect.TreeMultiset$c)
.class Lcom/google/common/collect/TreeMultiset$c;
.super Ljava/lang/Object;
.source "TreeMultiset.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeMultiset;->r()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/google/common/collect/c2$a<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field a:Lcom/google/common/collect/TreeMultiset$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation
.end field

.field b:Lcom/google/common/collect/c2$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/c2$a<",
            "TE;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/google/common/collect/TreeMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeMultiset;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$c;->c:Lcom/google/common/collect/TreeMultiset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/collect/TreeMultiset;->z(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$c;->a:Lcom/google/common/collect/TreeMultiset$e;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$c;->b:Lcom/google/common/collect/c2$a;

    return-void
.end method


# virtual methods
.method public b()Lcom/google/common/collect/c2$a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$c;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->a:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->c:Lcom/google/common/collect/TreeMultiset;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$c;->a:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v0, v1}, Lcom/google/common/collect/TreeMultiset;->x(Lcom/google/common/collect/TreeMultiset;Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/c2$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->b:Lcom/google/common/collect/c2$a;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$c;->a:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset$e;->c(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$c;->c:Lcom/google/common/collect/TreeMultiset;

    invoke-static {v2}, Lcom/google/common/collect/TreeMultiset;->y(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v2

    if-ne v1, v2, :cond_27

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/collect/TreeMultiset$c;->a:Lcom/google/common/collect/TreeMultiset$e;

    goto :goto_2f

    :cond_27
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$c;->a:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset$e;->c(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/TreeMultiset$c;->a:Lcom/google/common/collect/TreeMultiset$e;

    :goto_2f
    return-object v0

    :cond_30
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->a:Lcom/google/common/collect/TreeMultiset$e;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->c:Lcom/google/common/collect/TreeMultiset;

    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset;->v(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/j1;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$c;->a:Lcom/google/common/collect/TreeMultiset$e;

    invoke-virtual {v2}, Lcom/google/common/collect/TreeMultiset$e;->x()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/collect/j1;->p(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->a:Lcom/google/common/collect/TreeMultiset$e;

    return v1

    :cond_1c
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$c;->b()Lcom/google/common/collect/c2$a;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->b:Lcom/google/common/collect/c2$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v2, "no calls to next() since the last call to remove()"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->c:Lcom/google/common/collect/TreeMultiset;

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$c;->b:Lcom/google/common/collect/c2$a;

    invoke-interface {v2}, Lcom/google/common/collect/c2$a;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/TreeMultiset;->m(Ljava/lang/Object;I)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->b:Lcom/google/common/collect/c2$a;

    return-void
.end method

###### Class com.google.common.collect.TreeMultiset.d (com.google.common.collect.TreeMultiset$d)
.class synthetic Lcom/google/common/collect/TreeMultiset$d;
.super Ljava/lang/Object;
.source "TreeMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeMultiset;
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

    sput-object v0, Lcom/google/common/collect/TreeMultiset$d;->a:[I

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
    sget-object v0, Lcom/google/common/collect/TreeMultiset$d;->a:[I

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

###### Class com.google.common.collect.TreeMultiset.e (com.google.common.collect.TreeMultiset$e)
.class final Lcom/google/common/collect/TreeMultiset$e;
.super Ljava/lang/Object;
.source "TreeMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
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
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:J

.field private e:I

.field private f:Lcom/google/common/collect/TreeMultiset$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation
.end field

.field private g:Lcom/google/common/collect/TreeMultiset$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation
.end field

.field private h:Lcom/google/common/collect/TreeMultiset$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation
.end field

.field private i:Lcom/google/common/collect/TreeMultiset$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->a:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lez p2, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->a:Ljava/lang/Object;

    iput p2, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    int-to-long p1, p2

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$e;->e:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    return-void
.end method

.method private A()Lcom/google/common/collect/TreeMultiset$e;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->r()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_28

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->C()V

    return-object p0

    :cond_e
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$e;->r()I

    move-result v0

    if-gez v0, :cond_23

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$e;->H()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    :cond_23
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->I()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v0

    return-object v0

    :cond_28
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$e;->r()I

    move-result v0

    if-lez v0, :cond_3d

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$e;->I()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    :cond_3d
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->H()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v0

    return-object v0
.end method

.method private B()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->D()V

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->C()V

    return-void
.end method

.method private C()V
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset$e;->y(Lcom/google/common/collect/TreeMultiset$e;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset$e;->y(Lcom/google/common/collect/TreeMultiset$e;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$e;->e:I

    return-void
.end method

.method private D()V
    .registers 5

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset;->F(Lcom/google/common/collect/TreeMultiset$e;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset;->F(Lcom/google/common/collect/TreeMultiset$e;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    iget v0, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v2}, Lcom/google/common/collect/TreeMultiset$e;->M(Lcom/google/common/collect/TreeMultiset$e;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v2}, Lcom/google/common/collect/TreeMultiset$e;->M(Lcom/google/common/collect/TreeMultiset$e;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    return-void
.end method

.method private F(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;)",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v0, :cond_7

    iget-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    return-object p1

    :cond_7
    invoke-direct {v0, p1}, Lcom/google/common/collect/TreeMultiset$e;->F(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    iget v0, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    iget p1, p1, Lcom/google/common/collect/TreeMultiset$e;->b:I

    int-to-long v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->A()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    return-object p1
.end method

.method private G(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;)",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v0, :cond_7

    iget-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    return-object p1

    :cond_7
    invoke-direct {v0, p1}, Lcom/google/common/collect/TreeMultiset$e;->G(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    iget v0, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    iget p1, p1, Lcom/google/common/collect/TreeMultiset$e;->b:I

    int-to-long v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->A()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    return-object p1
.end method

.method private H()Lcom/google/common/collect/TreeMultiset$e;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    iget-object v1, v0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    iput-object v1, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    iput-object p0, v0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    iget-wide v1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    iput-wide v1, v0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    iget v1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    iput v1, v0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->B()V

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$e;->C()V

    return-object v0
.end method

.method private I()Lcom/google/common/collect/TreeMultiset$e;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    iget-object v1, v0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    iput-object v1, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    iput-object p0, v0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    iget-wide v1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    iput-wide v1, v0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    iget v1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    iput v1, v0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->B()V

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$e;->C()V

    return-object v0
.end method

.method private L()Lcom/google/common/collect/TreeMultiset$e;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->i:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/TreeMultiset$e;

    return-object v0
.end method

.method private static M(Lcom/google/common/collect/TreeMultiset$e;)J
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "*>;)J"
        }
    .end annotation

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    goto :goto_7

    :cond_5
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    :goto_7
    return-wide v0
.end method

.method static synthetic a(Lcom/google/common/collect/TreeMultiset$e;Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$e;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset$e;->s(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/google/common/collect/TreeMultiset$e;Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$e;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset$e;->v(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;
    .registers 1

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->z()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/google/common/collect/TreeMultiset$e;)I
    .registers 1

    iget p0, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    return p0
.end method

.method static synthetic e(Lcom/google/common/collect/TreeMultiset$e;I)I
    .registers 2

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    return p1
.end method

.method static synthetic f(Lcom/google/common/collect/TreeMultiset$e;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    return-wide v0
.end method

.method static synthetic g(Lcom/google/common/collect/TreeMultiset$e;)I
    .registers 1

    iget p0, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    return p0
.end method

.method static synthetic h(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;
    .registers 1

    iget-object p0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    return-object p0
.end method

.method static synthetic i(Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    return-object p1
.end method

.method static synthetic j(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;
    .registers 1

    iget-object p0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    return-object p0
.end method

.method static synthetic k(Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    return-object p1
.end method

.method static synthetic l(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;
    .registers 1

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->L()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p0

    return-object p0
.end method

.method static synthetic m(Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->h:Lcom/google/common/collect/TreeMultiset$e;

    return-object p1
.end method

.method static synthetic n(Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->i:Lcom/google/common/collect/TreeMultiset$e;

    return-object p1
.end method

.method private p(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$e;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/TreeMultiset$e;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$e;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->z()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {p1, v0, p0}, Lcom/google/common/collect/TreeMultiset;->A(Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;)V

    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->e:I

    const/4 v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->e:I

    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    int-to-long p1, p2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    return-object p0
.end method

.method private q(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$e;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/TreeMultiset$e;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$e;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->L()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/google/common/collect/TreeMultiset;->A(Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;)V

    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->e:I

    const/4 v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->e:I

    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    int-to-long p1, p2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    return-object p0
.end method

.method private r()I
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset$e;->y(Lcom/google/common/collect/TreeMultiset$e;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset$e;->y(Lcom/google/common/collect/TreeMultiset$e;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private s(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$e;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;)",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$e;->x()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1b

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v0, :cond_10

    move-object p1, p0

    goto :goto_1a

    :cond_10
    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$e;->s(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/TreeMultiset$e;

    :goto_1a
    return-object p1

    :cond_1b
    if-nez v0, :cond_1e

    return-object p0

    :cond_1e
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v0, :cond_24

    const/4 p1, 0x0

    goto :goto_28

    :cond_24
    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$e;->s(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    :goto_28
    return-object p1
.end method

.method private u()Lcom/google/common/collect/TreeMultiset$e;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->z()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->L()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/TreeMultiset;->B(Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;)V

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v1, :cond_17

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    return-object v0

    :cond_17
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v2, :cond_1c

    return-object v1

    :cond_1c
    iget v1, v1, Lcom/google/common/collect/TreeMultiset$e;->e:I

    iget v2, v2, Lcom/google/common/collect/TreeMultiset$e;->e:I

    if-lt v1, v2, :cond_43

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->z()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    invoke-direct {v2, v1}, Lcom/google/common/collect/TreeMultiset$e;->F(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v2

    iput-object v2, v1, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    iput-object v2, v1, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    iget v2, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/google/common/collect/TreeMultiset$e;->c:I

    iget-wide v2, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/google/common/collect/TreeMultiset$e;->d:J

    invoke-direct {v1}, Lcom/google/common/collect/TreeMultiset$e;->A()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v0

    return-object v0

    :cond_43
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->L()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    invoke-direct {v2, v1}, Lcom/google/common/collect/TreeMultiset$e;->G(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v2

    iput-object v2, v1, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    iput-object v2, v1, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    iget v2, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/google/common/collect/TreeMultiset$e;->c:I

    iget-wide v2, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/google/common/collect/TreeMultiset$e;->d:J

    invoke-direct {v1}, Lcom/google/common/collect/TreeMultiset$e;->A()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v0

    return-object v0
.end method

.method private v(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$e;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;)",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$e;->x()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1b

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v0, :cond_10

    move-object p1, p0

    goto :goto_1a

    :cond_10
    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$e;->v(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/TreeMultiset$e;

    :goto_1a
    return-object p1

    :cond_1b
    if-nez v0, :cond_1e

    return-object p0

    :cond_1e
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v0, :cond_24

    const/4 p1, 0x0

    goto :goto_28

    :cond_24
    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$e;->v(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    :goto_28
    return-object p1
.end method

.method private static y(Lcom/google/common/collect/TreeMultiset$e;)I
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "*>;)I"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_6

    :cond_4
    iget p0, p0, Lcom/google/common/collect/TreeMultiset$e;->e:I

    :goto_6
    return p0
.end method

.method private z()Lcom/google/common/collect/TreeMultiset$e;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->h:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/TreeMultiset$e;

    return-object v0
.end method


# virtual methods
.method E(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$e;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;I[I)",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$e;->x()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_40

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v0, :cond_12

    aput v1, p4, v1

    return-object p0

    :cond_12
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$e;->E(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    aget p1, p4, v1

    if-lez p1, :cond_35

    aget p1, p4, v1

    if-lt p3, p1, :cond_2f

    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    aget p3, p4, v1

    int-to-long v2, p3

    sub-long/2addr p1, v2

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    goto :goto_35

    :cond_2f
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    int-to-long v2, p3

    sub-long/2addr p1, v2

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    :cond_35
    :goto_35
    aget p1, p4, v1

    if-nez p1, :cond_3b

    move-object p1, p0

    goto :goto_3f

    :cond_3b
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->A()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    :goto_3f
    return-object p1

    :cond_40
    if-lez v0, :cond_71

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v0, :cond_49

    aput v1, p4, v1

    return-object p0

    :cond_49
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$e;->E(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    aget p1, p4, v1

    if-lez p1, :cond_6c

    aget p1, p4, v1

    if-lt p3, p1, :cond_66

    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    aget p3, p4, v1

    int-to-long p3, p3

    sub-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    goto :goto_6c

    :cond_66
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    int-to-long p3, p3

    sub-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    :cond_6c
    :goto_6c
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->A()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    return-object p1

    :cond_71
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    aput p1, p4, v1

    if-lt p3, p1, :cond_7c

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->u()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    return-object p1

    :cond_7c
    sub-int/2addr p1, p3

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    int-to-long p3, p3

    sub-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    return-object p0
.end method

.method J(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/common/collect/TreeMultiset$e;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;II[I)",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$e;->x()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_51

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v2, :cond_1b

    aput v1, p5, v1

    if-nez p3, :cond_1a

    if-lez p4, :cond_1a

    invoke-direct {p0, p2, p4}, Lcom/google/common/collect/TreeMultiset$e;->p(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    return-object p1

    :cond_1a
    return-object p0

    :cond_1b
    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/google/common/collect/TreeMultiset$e;->J(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    aget p1, p5, v1

    if-ne p1, p3, :cond_4c

    if-nez p4, :cond_37

    aget p1, p5, v1

    if-eqz p1, :cond_37

    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    goto :goto_43

    :cond_37
    if-lez p4, :cond_43

    aget p1, p5, v1

    if-nez p1, :cond_43

    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    :cond_43
    :goto_43
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    aget p3, p5, v1

    sub-int/2addr p4, p3

    int-to-long p3, p4

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    :cond_4c
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->A()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    return-object p1

    :cond_51
    if-lez v0, :cond_99

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v2, :cond_63

    aput v1, p5, v1

    if-nez p3, :cond_62

    if-lez p4, :cond_62

    invoke-direct {p0, p2, p4}, Lcom/google/common/collect/TreeMultiset$e;->q(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    return-object p1

    :cond_62
    return-object p0

    :cond_63
    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/google/common/collect/TreeMultiset$e;->J(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    aget p1, p5, v1

    if-ne p1, p3, :cond_94

    if-nez p4, :cond_7f

    aget p1, p5, v1

    if-eqz p1, :cond_7f

    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    goto :goto_8b

    :cond_7f
    if-lez p4, :cond_8b

    aget p1, p5, v1

    if-nez p1, :cond_8b

    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    :cond_8b
    :goto_8b
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    aget p3, p5, v1

    sub-int/2addr p4, p3

    int-to-long p3, p4

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    :cond_94
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->A()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    return-object p1

    :cond_99
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    aput p1, p5, v1

    if-ne p3, p1, :cond_b0

    if-nez p4, :cond_a6

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->u()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    return-object p1

    :cond_a6
    iget-wide p2, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    sub-int p1, p4, p1

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    iput p4, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    :cond_b0
    return-object p0
.end method

.method K(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$e;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;I[I)",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$e;->x()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_47

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v0, :cond_1a

    aput v1, p4, v1

    if-lez p3, :cond_18

    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/TreeMultiset$e;->p(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    goto :goto_19

    :cond_18
    move-object p1, p0

    :goto_19
    return-object p1

    :cond_1a
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$e;->K(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    if-nez p3, :cond_2d

    aget p1, p4, v1

    if-eqz p1, :cond_2d

    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    goto :goto_39

    :cond_2d
    if-lez p3, :cond_39

    aget p1, p4, v1

    if-nez p1, :cond_39

    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    :cond_39
    :goto_39
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    aget p4, p4, v1

    sub-int/2addr p3, p4

    int-to-long p3, p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->A()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    return-object p1

    :cond_47
    if-lez v0, :cond_85

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v0, :cond_58

    aput v1, p4, v1

    if-lez p3, :cond_56

    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/TreeMultiset$e;->q(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    goto :goto_57

    :cond_56
    move-object p1, p0

    :goto_57
    return-object p1

    :cond_58
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$e;->K(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    if-nez p3, :cond_6b

    aget p1, p4, v1

    if-eqz p1, :cond_6b

    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    goto :goto_77

    :cond_6b
    if-lez p3, :cond_77

    aget p1, p4, v1

    if-nez p1, :cond_77

    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    :cond_77
    :goto_77
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    aget p4, p4, v1

    sub-int/2addr p3, p4

    int-to-long p3, p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->A()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    return-object p1

    :cond_85
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    aput p1, p4, v1

    if-nez p3, :cond_90

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->u()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    return-object p1

    :cond_90
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    sub-int p1, p3, p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    iput p3, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    return-object p0
.end method

.method o(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$e;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;I[I)",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$e;->x()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_39

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v0, :cond_17

    aput v2, p4, v2

    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/TreeMultiset$e;->p(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    return-object p1

    :cond_17
    iget v3, v0, Lcom/google/common/collect/TreeMultiset$e;->e:I

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$e;->o(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    aget p2, p4, v2

    if-nez p2, :cond_28

    iget p2, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    :cond_28
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    int-to-long p2, p3

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    iget p1, p1, Lcom/google/common/collect/TreeMultiset$e;->e:I

    if-ne p1, v3, :cond_34

    move-object p1, p0

    goto :goto_38

    :cond_34
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->A()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    :goto_38
    return-object p1

    :cond_39
    if-lez v0, :cond_68

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v0, :cond_46

    aput v2, p4, v2

    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/TreeMultiset$e;->q(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    return-object p1

    :cond_46
    iget v3, v0, Lcom/google/common/collect/TreeMultiset$e;->e:I

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$e;->o(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    aget p2, p4, v2

    if-nez p2, :cond_57

    iget p2, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    :cond_57
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    int-to-long p2, p3

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    iget p1, p1, Lcom/google/common/collect/TreeMultiset$e;->e:I

    if-ne p1, v3, :cond_63

    move-object p1, p0

    goto :goto_67

    :cond_63
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->A()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    :goto_67
    return-object p1

    :cond_68
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    aput p1, p4, v2

    int-to-long p1, p1

    int-to-long v3, p3

    add-long/2addr p1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long p4, p1, v5

    if-gtz p4, :cond_77

    goto :goto_78

    :cond_77
    const/4 v1, 0x0

    :goto_78
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    add-long/2addr p1, v3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    return-object p0
.end method

.method t(Ljava/util/Comparator;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$e;->x()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_15

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v0, :cond_10

    goto :goto_14

    :cond_10
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$e;->t(Ljava/util/Comparator;Ljava/lang/Object;)I

    move-result v1

    :goto_14
    return v1

    :cond_15
    if-lez v0, :cond_21

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v0, :cond_1c

    goto :goto_20

    :cond_1c
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$e;->t(Ljava/util/Comparator;Ljava/lang/Object;)I

    move-result v1

    :goto_20
    return v1

    :cond_21
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$e;->x()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$e;->w()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/c2$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/c2$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method w()I
    .registers 2

    iget v0, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    return v0
.end method

.method x()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->a:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/e2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.collect.TreeMultiset.f (com.google.common.collect.TreeMultiset$f)
.class final Lcom/google/common/collect/TreeMultiset$f;
.super Ljava/lang/Object;
.source "TreeMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
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
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/TreeMultiset$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->a:Ljava/lang/Object;

    if-ne v0, p1, :cond_7

    iput-object p2, p0, Lcom/google/common/collect/TreeMultiset$f;->a:Ljava/lang/Object;

    return-void

    :cond_7
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method b()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->a:Ljava/lang/Object;

    return-void
.end method

.method public c()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->a:Ljava/lang/Object;

    return-object v0
.end method
