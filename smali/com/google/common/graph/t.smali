###### Class com.google.common.graph.t (com.google.common.graph.t)
.class final Lcom/google/common/graph/t;
.super Ljava/lang/Object;
.source "DirectedGraphConnections.java"

# interfaces
.implements Lcom/google/common/graph/c0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/t$f;,
        Lcom/google/common/graph/t$g;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/graph/c0<",
        "TN;TV;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TN;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/common/graph/t$f<",
            "TN;>;>;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/common/graph/t;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;Ljava/util/List;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TN;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/common/graph/t$f<",
            "TN;>;>;II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/common/graph/t;->b:Ljava/util/Map;

    iput-object p2, p0, Lcom/google/common/graph/t;->c:Ljava/util/List;

    invoke-static {p3}, Lcom/google/common/graph/Graphs;->b(I)I

    move-result p2

    iput p2, p0, Lcom/google/common/graph/t;->d:I

    invoke-static {p4}, Lcom/google/common/graph/Graphs;->b(I)I

    move-result p2

    iput p2, p0, Lcom/google/common/graph/t;->e:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p2

    if-gt p3, p2, :cond_27

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-gt p4, p1, :cond_27

    const/4 p1, 0x1

    goto :goto_28

    :cond_27
    const/4 p1, 0x0

    :goto_28
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    return-void
.end method

.method static synthetic h(Lcom/google/common/graph/t;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/google/common/graph/t;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic i(Lcom/google/common/graph/t;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/google/common/graph/t;->b:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic j(Ljava/lang/Object;)Z
    .registers 1

    invoke-static {p0}, Lcom/google/common/graph/t;->n(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic k(Lcom/google/common/graph/t;)I
    .registers 1

    iget p0, p0, Lcom/google/common/graph/t;->d:I

    return p0
.end method

.method static synthetic l(Ljava/lang/Object;)Z
    .registers 1

    invoke-static {p0}, Lcom/google/common/graph/t;->o(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic m(Lcom/google/common/graph/t;)I
    .registers 1

    iget p0, p0, Lcom/google/common/graph/t;->e:I

    return p0
.end method

.method private static n(Ljava/lang/Object;)Z
    .registers 2

    sget-object v0, Lcom/google/common/graph/t;->a:Ljava/lang/Object;

    if-eq p0, v0, :cond_b

    instance-of p0, p0, Lcom/google/common/graph/t$g;

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method private static o(Ljava/lang/Object;)Z
    .registers 2

    sget-object v0, Lcom/google/common/graph/t;->a:Ljava/lang/Object;

    if-eq p0, v0, :cond_8

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method static synthetic p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .registers 2

    invoke-static {p1, p0}, Lcom/google/common/graph/EndpointPair;->ordered(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p0

    return-object p0
.end method

.method static synthetic q(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/common/graph/EndpointPair;->ordered(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p0

    return-object p0
.end method

.method static synthetic r(Ljava/lang/Object;Lcom/google/common/graph/t$f;)Lcom/google/common/graph/EndpointPair;
    .registers 3

    instance-of v0, p1, Lcom/google/common/graph/t$f$b;

    if-eqz v0, :cond_b

    iget-object p1, p1, Lcom/google/common/graph/t$f;->a:Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/google/common/graph/EndpointPair;->ordered(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p0

    return-object p0

    :cond_b
    iget-object p1, p1, Lcom/google/common/graph/t$f;->a:Ljava/lang/Object;

    invoke-static {p1, p0}, Lcom/google/common/graph/EndpointPair;->ordered(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p0

    return-object p0
.end method

.method static s(Lcom/google/common/graph/ElementOrder;)Lcom/google/common/graph/t;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/ElementOrder<",
            "TN;>;)",
            "Lcom/google/common/graph/t<",
            "TN;TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/graph/t$e;->a:[I

    invoke-virtual {p0}, Lcom/google/common/graph/ElementOrder;->d()Lcom/google/common/graph/ElementOrder$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_22

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_23

    :cond_18
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p0}, Lcom/google/common/graph/ElementOrder;->d()Lcom/google/common/graph/ElementOrder$Type;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_22
    const/4 p0, 0x0

    :goto_23
    new-instance v0, Lcom/google/common/graph/t;

    new-instance v1, Ljava/util/HashMap;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x4

    invoke-direct {v1, v3, v2}, Ljava/util/HashMap;-><init>(IF)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2, v2}, Lcom/google/common/graph/t;-><init>(Ljava/util/Map;Ljava/util/List;II)V

    return-object v0
.end method

.method static t(Ljava/lang/Object;Ljava/lang/Iterable;Lcom/google/common/base/f;)Lcom/google/common/graph/t;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TN;",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;>;",
            "Lcom/google/common/base/f<",
            "TN;TV;>;)",
            "Lcom/google/common/graph/t<",
            "TN;TV;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$a;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/graph/EndpointPair;

    invoke-virtual {v5}, Lcom/google/common/graph/EndpointPair;->g()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_57

    invoke-virtual {v5}, Lcom/google/common/graph/EndpointPair;->h()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_57

    new-instance v5, Lcom/google/common/graph/t$g;

    invoke-interface {p2, p0}, Lcom/google/common/base/f;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/common/graph/t$g;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/google/common/graph/t$f$a;

    invoke-direct {v5, p0}, Lcom/google/common/graph/t$f$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Lcom/google/common/collect/ImmutableList$a;->i(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    new-instance v5, Lcom/google/common/graph/t$f$b;

    invoke-direct {v5, p0}, Lcom/google/common/graph/t$f$b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Lcom/google/common/collect/ImmutableList$a;->i(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    add-int/lit8 v3, v3, 0x1

    :goto_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_57
    invoke-virtual {v5}, Lcom/google/common/graph/EndpointPair;->h()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_80

    invoke-virtual {v5}, Lcom/google/common/graph/EndpointPair;->g()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/google/common/graph/t;->a:Ljava/lang/Object;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_75

    new-instance v7, Lcom/google/common/graph/t$g;

    invoke-direct {v7, v6}, Lcom/google/common/graph/t$g;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_75
    new-instance v6, Lcom/google/common/graph/t$f$a;

    invoke-direct {v6, v5}, Lcom/google/common/graph/t$f$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v6}, Lcom/google/common/collect/ImmutableList$a;->i(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_80
    invoke-virtual {v5}, Lcom/google/common/graph/EndpointPair;->g()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    invoke-virtual {v5}, Lcom/google/common/graph/EndpointPair;->h()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v5}, Lcom/google/common/base/f;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_ab

    sget-object v8, Lcom/google/common/graph/t;->a:Ljava/lang/Object;

    if-ne v7, v8, :cond_9f

    const/4 v7, 0x1

    goto :goto_a0

    :cond_9f
    const/4 v7, 0x0

    :goto_a0
    invoke-static {v7}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    new-instance v7, Lcom/google/common/graph/t$g;

    invoke-direct {v7, v6}, Lcom/google/common/graph/t$g;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ab
    new-instance v6, Lcom/google/common/graph/t$f$b;

    invoke-direct {v6, v5}, Lcom/google/common/graph/t$f$b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v6}, Lcom/google/common/collect/ImmutableList$a;->i(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    goto :goto_54

    :cond_b4
    new-instance p0, Lcom/google/common/graph/t;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$a;->k()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-direct {p0, v0, p1, v3, v4}, Lcom/google/common/graph/t;-><init>(Ljava/util/Map;Ljava/util/List;II)V

    return-object p0
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/graph/t$c;

    invoke-direct {v0, p0}, Lcom/google/common/graph/t$c;-><init>(Lcom/google/common/graph/t;)V

    return-object v0
.end method

.method public b()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/graph/t$b;

    invoke-direct {v0, p0}, Lcom/google/common/graph/t$b;-><init>(Lcom/google/common/graph/t;)V

    return-object v0
.end method

.method public c()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/t;->c:Ljava/util/List;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/common/graph/t;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_f
    new-instance v0, Lcom/google/common/graph/t$a;

    invoke-direct {v0, p0}, Lcom/google/common/graph/t$a;-><init>(Lcom/google/common/graph/t;)V

    return-object v0
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)TV;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/graph/t;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/google/common/graph/t;->a:Ljava/lang/Object;

    if-ne p1, v0, :cond_f

    const/4 p1, 0x0

    return-object p1

    :cond_f
    instance-of v0, p1, Lcom/google/common/graph/t$g;

    if-eqz v0, :cond_19

    check-cast p1, Lcom/google/common/graph/t$g;

    invoke-static {p1}, Lcom/google/common/graph/t$g;->a(Lcom/google/common/graph/t$g;)Ljava/lang/Object;

    move-result-object p1

    :cond_19
    return-object p1
.end method

.method public e(Ljava/lang/Object;)Ljava/util/Iterator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Iterator<",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/graph/t;->c:Ljava/util/List;

    if-nez v0, :cond_2e

    invoke-virtual {p0}, Lcom/google/common/graph/t;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/graph/f;

    invoke-direct {v1, p1}, Lcom/google/common/graph/f;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/f;)Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/graph/t;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Lcom/google/common/graph/e;

    invoke-direct {v2, p1}, Lcom/google/common/graph/e;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/f;)Ljava/util/Iterator;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->concat(Ljava/util/Iterator;Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object p1

    goto :goto_3b

    :cond_2e
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/graph/d;

    invoke-direct {v1, p1}, Lcom/google/common/graph/d;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/f;)Ljava/util/Iterator;

    move-result-object p1

    :goto_3b
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v1, Lcom/google/common/graph/t$d;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/common/graph/t$d;-><init>(Lcom/google/common/graph/t;Ljava/util/Iterator;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-object v1
.end method

.method public f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/t;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    :goto_9
    move-object v0, v1

    goto :goto_2f

    :cond_b
    instance-of v2, v0, Lcom/google/common/graph/t$g;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/google/common/graph/t;->b:Ljava/util/Map;

    new-instance v3, Lcom/google/common/graph/t$g;

    invoke-direct {v3, p2}, Lcom/google/common/graph/t$g;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/google/common/graph/t$g;

    invoke-static {v0}, Lcom/google/common/graph/t$g;->a(Lcom/google/common/graph/t$g;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2f

    :cond_20
    sget-object v2, Lcom/google/common/graph/t;->a:Ljava/lang/Object;

    if-ne v0, v2, :cond_2f

    iget-object v0, p0, Lcom/google/common/graph/t;->b:Ljava/util/Map;

    new-instance v2, Lcom/google/common/graph/t$g;

    invoke-direct {v2, p2}, Lcom/google/common/graph/t$g;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_2f
    :goto_2f
    if-nez v0, :cond_46

    iget p2, p0, Lcom/google/common/graph/t;->e:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/common/graph/t;->e:I

    invoke-static {p2}, Lcom/google/common/graph/Graphs;->d(I)I

    iget-object p2, p0, Lcom/google/common/graph/t;->c:Ljava/util/List;

    if-eqz p2, :cond_46

    new-instance v2, Lcom/google/common/graph/t$f$b;

    invoke-direct {v2, p1}, Lcom/google/common/graph/t$f$b;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_46
    if-nez v0, :cond_49

    goto :goto_4a

    :cond_49
    move-object v1, v0

    :goto_4a
    return-object v1
.end method

.method public g(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TV;)V"
        }
    .end annotation

    iget-object p2, p0, Lcom/google/common/graph/t;->b:Ljava/util/Map;

    sget-object v0, Lcom/google/common/graph/t;->a:Ljava/lang/Object;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_e

    :goto_c
    const/4 v1, 0x1

    goto :goto_25

    :cond_e
    instance-of v3, p2, Lcom/google/common/graph/t$g;

    if-eqz v3, :cond_18

    iget-object v0, p0, Lcom/google/common/graph/t;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    :cond_18
    if-eq p2, v0, :cond_25

    iget-object v0, p0, Lcom/google/common/graph/t;->b:Ljava/util/Map;

    new-instance v1, Lcom/google/common/graph/t$g;

    invoke-direct {v1, p2}, Lcom/google/common/graph/t$g;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_25
    :goto_25
    if-eqz v1, :cond_3b

    iget p2, p0, Lcom/google/common/graph/t;->d:I

    add-int/2addr p2, v2

    iput p2, p0, Lcom/google/common/graph/t;->d:I

    invoke-static {p2}, Lcom/google/common/graph/Graphs;->d(I)I

    iget-object p2, p0, Lcom/google/common/graph/t;->c:Ljava/util/List;

    if-eqz p2, :cond_3b

    new-instance v0, Lcom/google/common/graph/t$f$a;

    invoke-direct {v0, p1}, Lcom/google/common/graph/t$f$a;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3b
    return-void
.end method

###### Class com.google.common.graph.t.a (com.google.common.graph.t$a)
.class Lcom/google/common/graph/t$a;
.super Ljava/util/AbstractSet;
.source "DirectedGraphConnections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/t;->c()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/graph/t;


# direct methods
.method constructor <init>(Lcom/google/common/graph/t;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/graph/t$a;->a:Lcom/google/common/graph/t;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/graph/t$a;->a:Lcom/google/common/graph/t;

    invoke-static {v0}, Lcom/google/common/graph/t;->i(Lcom/google/common/graph/t;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public e()Lcom/google/common/collect/o3;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/o3<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/t$a;->a:Lcom/google/common/graph/t;

    invoke-static {v0}, Lcom/google/common/graph/t;->h(Lcom/google/common/graph/t;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Lcom/google/common/graph/t$a$a;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/common/graph/t$a$a;-><init>(Lcom/google/common/graph/t$a;Ljava/util/Iterator;Ljava/util/Set;)V

    return-object v2
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/graph/t$a;->e()Lcom/google/common/collect/o3;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/google/common/graph/t$a;->a:Lcom/google/common/graph/t;

    invoke-static {v0}, Lcom/google/common/graph/t;->i(Lcom/google/common/graph/t;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

###### Class com.google.common.graph.t.a.C0268a (com.google.common.graph.t$a$a)
.class Lcom/google/common/graph/t$a$a;
.super Lcom/google/common/collect/AbstractIterator;
.source "DirectedGraphConnections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/t$a;->e()Lcom/google/common/collect/o3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Ljava/util/Iterator;

.field final synthetic d:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/google/common/graph/t$a;Ljava/util/Iterator;Ljava/util/Set;)V
    .registers 4

    iput-object p2, p0, Lcom/google/common/graph/t$a$a;->c:Ljava/util/Iterator;

    iput-object p3, p0, Lcom/google/common/graph/t$a$a;->d:Ljava/util/Set;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lcom/google/common/graph/t$a$a;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/common/graph/t$a$a;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/t$f;

    iget-object v1, p0, Lcom/google/common/graph/t$a$a;->d:Ljava/util/Set;

    iget-object v2, v0, Lcom/google/common/graph/t$f;->a:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/common/graph/t$f;->a:Ljava/lang/Object;

    return-object v0

    :cond_1d
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.graph.t.b (com.google.common.graph.t$b)
.class Lcom/google/common/graph/t$b;
.super Ljava/util/AbstractSet;
.source "DirectedGraphConnections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/t;->b()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/graph/t;


# direct methods
.method constructor <init>(Lcom/google/common/graph/t;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/graph/t$b;->a:Lcom/google/common/graph/t;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/graph/t$b;->a:Lcom/google/common/graph/t;

    invoke-static {v0}, Lcom/google/common/graph/t;->i(Lcom/google/common/graph/t;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/graph/t;->j(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public e()Lcom/google/common/collect/o3;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/o3<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/t$b;->a:Lcom/google/common/graph/t;

    invoke-static {v0}, Lcom/google/common/graph/t;->h(Lcom/google/common/graph/t;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/google/common/graph/t$b;->a:Lcom/google/common/graph/t;

    invoke-static {v0}, Lcom/google/common/graph/t;->i(Lcom/google/common/graph/t;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/graph/t$b$a;

    invoke-direct {v1, p0, v0}, Lcom/google/common/graph/t$b$a;-><init>(Lcom/google/common/graph/t$b;Ljava/util/Iterator;)V

    return-object v1

    :cond_1c
    iget-object v0, p0, Lcom/google/common/graph/t$b;->a:Lcom/google/common/graph/t;

    invoke-static {v0}, Lcom/google/common/graph/t;->h(Lcom/google/common/graph/t;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/graph/t$b$b;

    invoke-direct {v1, p0, v0}, Lcom/google/common/graph/t$b$b;-><init>(Lcom/google/common/graph/t$b;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/graph/t$b;->e()Lcom/google/common/collect/o3;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/google/common/graph/t$b;->a:Lcom/google/common/graph/t;

    invoke-static {v0}, Lcom/google/common/graph/t;->k(Lcom/google/common/graph/t;)I

    move-result v0

    return v0
.end method

###### Class com.google.common.graph.t.b.a (com.google.common.graph.t$b$a)
.class Lcom/google/common/graph/t$b$a;
.super Lcom/google/common/collect/AbstractIterator;
.source "DirectedGraphConnections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/t$b;->e()Lcom/google/common/collect/o3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/graph/t$b;Ljava/util/Iterator;)V
    .registers 3

    iput-object p2, p0, Lcom/google/common/graph/t$b$a;->c:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lcom/google/common/graph/t$b$a;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/common/graph/t$b$a;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/graph/t;->j(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1f
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.graph.t.b.C0269b (com.google.common.graph.t$b$b)
.class Lcom/google/common/graph/t$b$b;
.super Lcom/google/common/collect/AbstractIterator;
.source "DirectedGraphConnections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/t$b;->e()Lcom/google/common/collect/o3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/graph/t$b;Ljava/util/Iterator;)V
    .registers 3

    iput-object p2, p0, Lcom/google/common/graph/t$b$b;->c:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lcom/google/common/graph/t$b$b;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/common/graph/t$b$b;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/t$f;

    instance-of v1, v0, Lcom/google/common/graph/t$f$a;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/common/graph/t$f;->a:Ljava/lang/Object;

    return-object v0

    :cond_17
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.graph.t.c (com.google.common.graph.t$c)
.class Lcom/google/common/graph/t$c;
.super Ljava/util/AbstractSet;
.source "DirectedGraphConnections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/t;->a()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/graph/t;


# direct methods
.method constructor <init>(Lcom/google/common/graph/t;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/graph/t$c;->a:Lcom/google/common/graph/t;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/graph/t$c;->a:Lcom/google/common/graph/t;

    invoke-static {v0}, Lcom/google/common/graph/t;->i(Lcom/google/common/graph/t;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/graph/t;->l(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public e()Lcom/google/common/collect/o3;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/o3<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/t$c;->a:Lcom/google/common/graph/t;

    invoke-static {v0}, Lcom/google/common/graph/t;->h(Lcom/google/common/graph/t;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/google/common/graph/t$c;->a:Lcom/google/common/graph/t;

    invoke-static {v0}, Lcom/google/common/graph/t;->i(Lcom/google/common/graph/t;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/graph/t$c$a;

    invoke-direct {v1, p0, v0}, Lcom/google/common/graph/t$c$a;-><init>(Lcom/google/common/graph/t$c;Ljava/util/Iterator;)V

    return-object v1

    :cond_1c
    iget-object v0, p0, Lcom/google/common/graph/t$c;->a:Lcom/google/common/graph/t;

    invoke-static {v0}, Lcom/google/common/graph/t;->h(Lcom/google/common/graph/t;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/graph/t$c$b;

    invoke-direct {v1, p0, v0}, Lcom/google/common/graph/t$c$b;-><init>(Lcom/google/common/graph/t$c;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/graph/t$c;->e()Lcom/google/common/collect/o3;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/google/common/graph/t$c;->a:Lcom/google/common/graph/t;

    invoke-static {v0}, Lcom/google/common/graph/t;->m(Lcom/google/common/graph/t;)I

    move-result v0

    return v0
.end method

###### Class com.google.common.graph.t.c.a (com.google.common.graph.t$c$a)
.class Lcom/google/common/graph/t$c$a;
.super Lcom/google/common/collect/AbstractIterator;
.source "DirectedGraphConnections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/t$c;->e()Lcom/google/common/collect/o3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/graph/t$c;Ljava/util/Iterator;)V
    .registers 3

    iput-object p2, p0, Lcom/google/common/graph/t$c$a;->c:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lcom/google/common/graph/t$c$a;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/common/graph/t$c$a;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/graph/t;->l(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1f
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.graph.t.c.b (com.google.common.graph.t$c$b)
.class Lcom/google/common/graph/t$c$b;
.super Lcom/google/common/collect/AbstractIterator;
.source "DirectedGraphConnections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/t$c;->e()Lcom/google/common/collect/o3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/graph/t$c;Ljava/util/Iterator;)V
    .registers 3

    iput-object p2, p0, Lcom/google/common/graph/t$c$b;->c:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lcom/google/common/graph/t$c$b;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/common/graph/t$c$b;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/t$f;

    instance-of v1, v0, Lcom/google/common/graph/t$f$b;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/common/graph/t$f;->a:Ljava/lang/Object;

    return-object v0

    :cond_17
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.graph.t.d (com.google.common.graph.t$d)
.class Lcom/google/common/graph/t$d;
.super Lcom/google/common/collect/AbstractIterator;
.source "DirectedGraphConnections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/t;->e(Ljava/lang/Object;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "Lcom/google/common/graph/EndpointPair<",
        "TN;>;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Ljava/util/Iterator;

.field final synthetic d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/google/common/graph/t;Ljava/util/Iterator;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 4

    iput-object p2, p0, Lcom/google/common/graph/t$d;->c:Ljava/util/Iterator;

    iput-object p3, p0, Lcom/google/common/graph/t$d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic b()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/graph/t$d;->e()Lcom/google/common/graph/EndpointPair;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/google/common/graph/EndpointPair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lcom/google/common/graph/t$d;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/common/graph/t$d;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/EndpointPair;

    invoke-virtual {v0}, Lcom/google/common/graph/EndpointPair;->g()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/common/graph/EndpointPair;->h()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/google/common/graph/t$d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_27
    return-object v0

    :cond_28
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/EndpointPair;

    return-object v0
.end method

###### Class com.google.common.graph.t.e (com.google.common.graph.t$e)
.class synthetic Lcom/google/common/graph/t$e;
.super Ljava/lang/Object;
.source "DirectedGraphConnections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/t;
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

    invoke-static {}, Lcom/google/common/graph/ElementOrder$Type;->values()[Lcom/google/common/graph/ElementOrder$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/common/graph/t$e;->a:[I

    :try_start_9
    sget-object v1, Lcom/google/common/graph/ElementOrder$Type;->a:Lcom/google/common/graph/ElementOrder$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/google/common/graph/t$e;->a:[I

    sget-object v1, Lcom/google/common/graph/ElementOrder$Type;->b:Lcom/google/common/graph/ElementOrder$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method

###### Class com.google.common.graph.t.f (com.google.common.graph.t$f)
.class abstract Lcom/google/common/graph/t$f;
.super Ljava/lang/Object;
.source "DirectedGraphConnections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/t$f$b;,
        Lcom/google/common/graph/t$f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/graph/t$f;->a:Ljava/lang/Object;

    return-void
.end method

###### Class com.google.common.graph.t.f.a (com.google.common.graph.t$f$a)
.class final Lcom/google/common/graph/t$f$a;
.super Lcom/google/common/graph/t$f;
.source "DirectedGraphConnections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/t$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/t$f<",
        "TN;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/graph/t$f;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lcom/google/common/graph/t$f$a;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/common/graph/t$f;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/common/graph/t$f$a;

    iget-object p1, p1, Lcom/google/common/graph/t$f;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 3

    const-class v0, Lcom/google/common/graph/t$f$a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/graph/t$f;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

###### Class com.google.common.graph.t.f.b (com.google.common.graph.t$f$b)
.class final Lcom/google/common/graph/t$f$b;
.super Lcom/google/common/graph/t$f;
.source "DirectedGraphConnections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/t$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/t$f<",
        "TN;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/graph/t$f;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lcom/google/common/graph/t$f$b;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/common/graph/t$f;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/common/graph/t$f$b;

    iget-object p1, p1, Lcom/google/common/graph/t$f;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 3

    const-class v0, Lcom/google/common/graph/t$f$b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/graph/t$f;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

###### Class com.google.common.graph.t.g (com.google.common.graph.t$g)
.class final Lcom/google/common/graph/t$g;
.super Ljava/lang/Object;
.source "DirectedGraphConnections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/t$g;->a:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/google/common/graph/t$g;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/common/graph/t$g;->a:Ljava/lang/Object;

    return-object p0
.end method

###### Class com.google.common.graph.d (com.google.common.graph.d)
.class public final synthetic Lcom/google/common/graph/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/f;


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/d;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/common/graph/d;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/common/graph/t$f;

    invoke-static {v0, p1}, Lcom/google/common/graph/t;->r(Ljava/lang/Object;Lcom/google/common/graph/t$f;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.common.graph.e (com.google.common.graph.e)
.class public final synthetic Lcom/google/common/graph/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/f;


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/e;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/common/graph/e;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/google/common/graph/t;->q(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.common.graph.f (com.google.common.graph.f)
.class public final synthetic Lcom/google/common/graph/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/f;


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/f;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/common/graph/f;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/google/common/graph/t;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1
.end method
