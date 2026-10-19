###### Class com.google.common.collect.u2 (com.google.common.collect.u2)
.class abstract Lcom/google/common/collect/u2;
.super Lcom/google/common/collect/ImmutableTable;
.source "RegularImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/u2$c;,
        Lcom/google/common/collect/u2$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableTable<",
        "TR;TC;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableTable;-><init>()V

    return-void
.end method

.method static F(Ljava/util/List;Ljava/util/Comparator;Ljava/util/Comparator;)Lcom/google/common/collect/u2;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lcom/google/common/collect/l3$a<",
            "TR;TC;TV;>;>;",
            "Ljava/util/Comparator<",
            "-TR;>;",
            "Ljava/util/Comparator<",
            "-TC;>;)",
            "Lcom/google/common/collect/u2<",
            "TR;TC;TV;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_7

    if-eqz p2, :cond_f

    :cond_7
    new-instance v0, Lcom/google/common/collect/b;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/b;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_f
    invoke-static {p0, p1, p2}, Lcom/google/common/collect/u2;->G(Ljava/lang/Iterable;Ljava/util/Comparator;Ljava/util/Comparator;)Lcom/google/common/collect/u2;

    move-result-object p0

    return-object p0
.end method

.method private static G(Ljava/lang/Iterable;Ljava/util/Comparator;Ljava/util/Comparator;)Lcom/google/common/collect/u2;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/collect/l3$a<",
            "TR;TC;TV;>;>;",
            "Ljava/util/Comparator<",
            "-TR;>;",
            "Ljava/util/Comparator<",
            "-TC;>;)",
            "Lcom/google/common/collect/u2<",
            "TR;TC;TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/l3$a;

    invoke-interface {v3}, Lcom/google/common/collect/l3$a;->c()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Lcom/google/common/collect/l3$a;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_2d
    if-nez p1, :cond_34

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    goto :goto_3c

    :cond_34
    invoke-static {p1, v0}, Lcom/google/common/collect/ImmutableList;->sortedCopyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    :goto_3c
    if-nez p2, :cond_43

    invoke-static {v1}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    goto :goto_4b

    :cond_43
    invoke-static {p2, v1}, Lcom/google/common/collect/ImmutableList;->sortedCopyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    :goto_4b
    invoke-static {v2, p0, p1}, Lcom/google/common/collect/u2;->H(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableSet;Lcom/google/common/collect/ImmutableSet;)Lcom/google/common/collect/u2;

    move-result-object p0

    return-object p0
.end method

.method static H(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableSet;Lcom/google/common/collect/ImmutableSet;)Lcom/google/common/collect/u2;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/collect/l3$a<",
            "TR;TC;TV;>;>;",
            "Lcom/google/common/collect/ImmutableSet<",
            "TR;>;",
            "Lcom/google/common/collect/ImmutableSet<",
            "TC;>;)",
            "Lcom/google/common/collect/u2<",
            "TR;TC;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    int-to-long v4, v4

    mul-long v2, v2, v4

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_1e

    new-instance v0, Lcom/google/common/collect/f0;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/f0;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableSet;Lcom/google/common/collect/ImmutableSet;)V

    goto :goto_23

    :cond_1e
    new-instance v0, Lcom/google/common/collect/h3;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/h3;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableSet;Lcom/google/common/collect/ImmutableSet;)V

    :goto_23
    return-object v0
.end method

.method static synthetic K(Ljava/util/Comparator;Ljava/util/Comparator;Lcom/google/common/collect/l3$a;Lcom/google/common/collect/l3$a;)I
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_5

    const/4 p0, 0x0

    goto :goto_11

    :cond_5
    invoke-interface {p2}, Lcom/google/common/collect/l3$a;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3}, Lcom/google/common/collect/l3$a;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    :goto_11
    if-eqz p0, :cond_14

    return p0

    :cond_14
    if-nez p1, :cond_17

    goto :goto_23

    :cond_17
    invoke-interface {p2}, Lcom/google/common/collect/l3$a;->d()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p3}, Lcom/google/common/collect/l3$a;->d()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    :goto_23
    return v0
.end method


# virtual methods
.method final A()Lcom/google/common/collect/n1;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/n1<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableTable;->i()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_11

    :cond_b
    new-instance v0, Lcom/google/common/collect/u2$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/u2$c;-><init>(Lcom/google/common/collect/u2;Lcom/google/common/collect/u2$a;)V

    :goto_11
    return-object v0
.end method

.method final E(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;TV;)V"
        }
    .end annotation

    if-nez p3, :cond_5

    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_7

    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_7
    const-string v2, "Duplicate key: (row=%s, column=%s), values: [%s, %s]."

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method abstract I(I)Lcom/google/common/collect/l3$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/l3$a<",
            "TR;TC;TV;>;"
        }
    .end annotation
.end method

.method abstract J(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation
.end method

.method bridge synthetic e()Ljava/util/Set;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/u2;->x()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic f()Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/u2;->A()Lcom/google/common/collect/n1;

    move-result-object v0

    return-object v0
.end method

.method final x()Lcom/google/common/collect/ImmutableSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Lcom/google/common/collect/l3$a<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableTable;->i()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_11

    :cond_b
    new-instance v0, Lcom/google/common/collect/u2$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/u2$b;-><init>(Lcom/google/common/collect/u2;Lcom/google/common/collect/u2$a;)V

    :goto_11
    return-object v0
.end method

###### Class com.google.common.collect.u2.a (com.google.common.collect.u2$a)
.class synthetic Lcom/google/common/collect/u2$a;
.super Ljava/lang/Object;
.source "RegularImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/u2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.common.collect.u2.b (com.google.common.collect.u2$b)
.class final Lcom/google/common/collect/u2$b;
.super Lcom/google/common/collect/v1;
.source "RegularImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/u2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/v1<",
        "Lcom/google/common/collect/l3$a<",
        "TR;TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/google/common/collect/u2;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/u2;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/u2$b;->c:Lcom/google/common/collect/u2;

    invoke-direct {p0}, Lcom/google/common/collect/v1;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/u2;Lcom/google/common/collect/u2$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/collect/u2$b;-><init>(Lcom/google/common/collect/u2;)V

    return-void
.end method


# virtual methods
.method B(I)Lcom/google/common/collect/l3$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/l3$a<",
            "TR;TC;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/u2$b;->c:Lcom/google/common/collect/u2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/u2;->I(I)Lcom/google/common/collect/l3$a;

    move-result-object p1

    return-object p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Lcom/google/common/collect/l3$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    check-cast p1, Lcom/google/common/collect/l3$a;

    iget-object v0, p0, Lcom/google/common/collect/u2$b;->c:Lcom/google/common/collect/u2;

    invoke-interface {p1}, Lcom/google/common/collect/l3$a;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/common/collect/l3$a;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/ImmutableTable;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-interface {p1}, Lcom/google/common/collect/l3$a;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    const/4 v1, 0x1

    :cond_22
    return v1
.end method

.method bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/u2$b;->B(I)Lcom/google/common/collect/l3$a;

    move-result-object p1

    return-object p1
.end method

.method j()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/u2$b;->c:Lcom/google/common/collect/u2;

    invoke-interface {v0}, Lcom/google/common/collect/l3;->size()I

    move-result v0

    return v0
.end method

###### Class com.google.common.collect.u2.c (com.google.common.collect.u2$c)
.class final Lcom/google/common/collect/u2$c;
.super Lcom/google/common/collect/ImmutableList;
.source "RegularImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/u2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableList<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/google/common/collect/u2;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/u2;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/u2$c;->c:Lcom/google/common/collect/u2;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/u2;Lcom/google/common/collect/u2$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/collect/u2$c;-><init>(Lcom/google/common/collect/u2;)V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/u2$c;->c:Lcom/google/common/collect/u2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/u2;->J(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method j()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/u2$c;->c:Lcom/google/common/collect/u2;

    invoke-interface {v0}, Lcom/google/common/collect/l3;->size()I

    move-result v0

    return v0
.end method

###### Class com.google.common.collect.b (com.google.common.collect.b)
.class public final synthetic Lcom/google/common/collect/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:Ljava/util/Comparator;

.field public final synthetic b:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Comparator;Ljava/util/Comparator;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/b;->a:Ljava/util/Comparator;

    iput-object p2, p0, Lcom/google/common/collect/b;->b:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    iget-object v0, p0, Lcom/google/common/collect/b;->a:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/google/common/collect/b;->b:Ljava/util/Comparator;

    check-cast p1, Lcom/google/common/collect/l3$a;

    check-cast p2, Lcom/google/common/collect/l3$a;

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/collect/u2;->K(Ljava/util/Comparator;Ljava/util/Comparator;Lcom/google/common/collect/l3$a;Lcom/google/common/collect/l3$a;)I

    move-result p1

    return p1
.end method
