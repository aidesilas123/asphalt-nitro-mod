###### Class com.google.common.graph.l (com.google.common.graph.l)
.class abstract Lcom/google/common/graph/l;
.super Ljava/lang/Object;
.source "AbstractBaseGraph.java"

# interfaces
.implements Lcom/google/common/graph/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/graph/s<",
        "TN;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final A(Lcom/google/common/graph/EndpointPair;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/EndpointPair<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->e()Z

    move-result p1

    if-nez p1, :cond_f

    invoke-interface {p0}, Lcom/google/common/graph/s;->d()Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method public b()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/graph/l$a;

    invoke-direct {v0, p0}, Lcom/google/common/graph/l$a;-><init>(Lcom/google/common/graph/l;)V

    return-object v0
.end method

.method public h(Ljava/lang/Object;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Lcom/google/common/graph/s;->i()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Node %s is not an element of this graph."

    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/common/graph/l$b;

    invoke-direct {v0, p0, p0, p1}, Lcom/google/common/graph/l$b;-><init>(Lcom/google/common/graph/l;Lcom/google/common/graph/s;Ljava/lang/Object;)V

    return-object v0
.end method

.method public j()Lcom/google/common/graph/ElementOrder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ElementOrder<",
            "TN;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/graph/ElementOrder;->unordered()Lcom/google/common/graph/ElementOrder;

    move-result-object v0

    return-object v0
.end method

.method public l(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/common/graph/s;->d()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p0, p1}, Lcom/google/common/graph/s;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    goto :goto_13

    :cond_f
    invoke-virtual {p0, p1}, Lcom/google/common/graph/l;->n(Ljava/lang/Object;)I

    move-result p1

    :goto_13
    return p1
.end method

.method public m(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/common/graph/s;->d()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p0, p1}, Lcom/google/common/graph/s;->c(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    goto :goto_13

    :cond_f
    invoke-virtual {p0, p1}, Lcom/google/common/graph/l;->n(Ljava/lang/Object;)I

    move-result p1

    :goto_13
    return p1
.end method

.method public n(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/common/graph/s;->d()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p0, p1}, Lcom/google/common/graph/s;->c(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p0, p1}, Lcom/google/common/graph/s;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    invoke-static {v0, p1}, Lcom/google/common/math/IntMath;->saturatedAdd(II)I

    move-result p1

    return p1

    :cond_1b
    invoke-interface {p0, p1}, Lcom/google/common/graph/s;->g(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/common/graph/s;->f()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    const/4 p1, 0x1

    goto :goto_2e

    :cond_2d
    const/4 p1, 0x0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0, p1}, Lcom/google/common/math/IntMath;->saturatedAdd(II)I

    move-result p1

    return p1
.end method

.method protected z()J
    .registers 9

    invoke-interface {p0}, Lcom/google/common/graph/s;->i()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/common/graph/l;->n(Ljava/lang/Object;)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    goto :goto_b

    :cond_1c
    const-wide/16 v5, 0x1

    and-long/2addr v5, v3

    const/4 v0, 0x1

    cmp-long v7, v5, v1

    if-nez v7, :cond_26

    const/4 v1, 0x1

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    ushr-long v0, v3, v0

    return-wide v0
.end method

###### Class com.google.common.graph.l.a (com.google.common.graph.l$a)
.class Lcom/google/common/graph/l$a;
.super Ljava/util/AbstractSet;
.source "AbstractBaseGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/l;->b()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Lcom/google/common/graph/EndpointPair<",
        "TN;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/graph/l;


# direct methods
.method constructor <init>(Lcom/google/common/graph/l;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/graph/l$a;->a:Lcom/google/common/graph/l;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/google/common/graph/EndpointPair;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lcom/google/common/graph/EndpointPair;

    iget-object v0, p0, Lcom/google/common/graph/l$a;->a:Lcom/google/common/graph/l;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/l;->A(Lcom/google/common/graph/EndpointPair;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/google/common/graph/l$a;->a:Lcom/google/common/graph/l;

    invoke-interface {v0}, Lcom/google/common/graph/s;->i()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->g()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/google/common/graph/l$a;->a:Lcom/google/common/graph/l;

    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->g()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/common/graph/s;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->h()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    const/4 v1, 0x1

    :cond_35
    return v1
.end method

.method public e()Lcom/google/common/collect/o3;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/o3<",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/l$a;->a:Lcom/google/common/graph/l;

    invoke-static {v0}, Lcom/google/common/graph/x;->f(Lcom/google/common/graph/s;)Lcom/google/common/graph/x;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/graph/l$a;->e()Lcom/google/common/collect/o3;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .registers 3

    iget-object v0, p0, Lcom/google/common/graph/l$a;->a:Lcom/google/common/graph/l;

    invoke-virtual {v0}, Lcom/google/common/graph/l;->z()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

###### Class com.google.common.graph.l.b (com.google.common.graph.l$b)
.class Lcom/google/common/graph/l$b;
.super Lcom/google/common/graph/d0;
.source "AbstractBaseGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/l;->h(Ljava/lang/Object;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/graph/d0<",
        "TN;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/graph/l;Lcom/google/common/graph/s;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0, p2, p3}, Lcom/google/common/graph/d0;-><init>(Lcom/google/common/graph/s;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic f(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .registers 3

    iget-object v0, p0, Lcom/google/common/graph/d0;->a:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/google/common/graph/EndpointPair;->ordered(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1
.end method

.method private synthetic h(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .registers 3

    iget-object v0, p0, Lcom/google/common/graph/d0;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/google/common/graph/EndpointPair;->ordered(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1
.end method

.method private synthetic j(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .registers 3

    iget-object v0, p0, Lcom/google/common/graph/d0;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/google/common/graph/EndpointPair;->unordered(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public e()Lcom/google/common/collect/o3;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/o3<",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/d0;->b:Lcom/google/common/graph/s;

    invoke-interface {v0}, Lcom/google/common/graph/s;->d()Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/google/common/graph/d0;->b:Lcom/google/common/graph/s;

    iget-object v1, p0, Lcom/google/common/graph/d0;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/common/graph/s;->c(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/graph/a;

    invoke-direct {v1, p0}, Lcom/google/common/graph/a;-><init>(Lcom/google/common/graph/l$b;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/f;)Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/graph/d0;->b:Lcom/google/common/graph/s;

    iget-object v2, p0, Lcom/google/common/graph/d0;->a:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lcom/google/common/graph/s;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/graph/d0;->a:Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/Sets;->difference(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Sets$l;->e()Lcom/google/common/collect/o3;

    move-result-object v1

    new-instance v2, Lcom/google/common/graph/b;

    invoke-direct {v2, p0}, Lcom/google/common/graph/b;-><init>(Lcom/google/common/graph/l$b;)V

    invoke-static {v1, v2}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/f;)Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->concat(Ljava/util/Iterator;Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->unmodifiableIterator(Ljava/util/Iterator;)Lcom/google/common/collect/o3;

    move-result-object v0

    return-object v0

    :cond_45
    iget-object v0, p0, Lcom/google/common/graph/d0;->b:Lcom/google/common/graph/s;

    iget-object v1, p0, Lcom/google/common/graph/d0;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/common/graph/s;->g(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/graph/c;

    invoke-direct {v1, p0}, Lcom/google/common/graph/c;-><init>(Lcom/google/common/graph/l$b;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/f;)Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->unmodifiableIterator(Ljava/util/Iterator;)Lcom/google/common/collect/o3;

    move-result-object v0

    return-object v0
.end method

.method public synthetic g(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/common/graph/l$b;->f(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1
.end method

.method public synthetic i(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/common/graph/l$b;->h(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/graph/l$b;->e()Lcom/google/common/collect/o3;

    move-result-object v0

    return-object v0
.end method

.method public synthetic l(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/common/graph/l$b;->j(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.common.graph.a (com.google.common.graph.a)
.class public final synthetic Lcom/google/common/graph/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/f;


# instance fields
.field public final synthetic a:Lcom/google/common/graph/l$b;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/graph/l$b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/a;->a:Lcom/google/common/graph/l$b;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/common/graph/a;->a:Lcom/google/common/graph/l$b;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/l$b;->g(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.common.graph.b (com.google.common.graph.b)
.class public final synthetic Lcom/google/common/graph/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/f;


# instance fields
.field public final synthetic a:Lcom/google/common/graph/l$b;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/graph/l$b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/b;->a:Lcom/google/common/graph/l$b;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/common/graph/b;->a:Lcom/google/common/graph/l$b;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/l$b;->i(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.common.graph.c (com.google.common.graph.c)
.class public final synthetic Lcom/google/common/graph/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/f;


# instance fields
.field public final synthetic a:Lcom/google/common/graph/l$b;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/graph/l$b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/c;->a:Lcom/google/common/graph/l$b;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/common/graph/c;->a:Lcom/google/common/graph/l$b;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/l$b;->l(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1
.end method
