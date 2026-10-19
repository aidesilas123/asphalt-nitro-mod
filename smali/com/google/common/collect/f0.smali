###### Class com.google.common.collect.f0 (com.google.common.collect.f0)
.class final Lcom/google/common/collect/f0;
.super Lcom/google/common/collect/u2;
.source "DenseImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/f0$c;,
        Lcom/google/common/collect/f0$f;,
        Lcom/google/common/collect/f0$b;,
        Lcom/google/common/collect/f0$e;,
        Lcom/google/common/collect/f0$d;
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
        "Lcom/google/common/collect/u2<",
        "TR;TC;TV;>;"
    }
.end annotation


# instance fields
.field private final c:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "TR;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "TC;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "TR;",
            "Lcom/google/common/collect/ImmutableMap<",
            "TC;TV;>;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "TC;",
            "Lcom/google/common/collect/ImmutableMap<",
            "TR;TV;>;>;"
        }
    .end annotation
.end field

.field private final g:[I

.field private final h:[I

.field private final i:[[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TV;"
        }
    .end annotation
.end field

.field private final j:[I

.field private final k:[I


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableSet;Lcom/google/common/collect/ImmutableSet;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/collect/l3$a<",
            "TR;TC;TV;>;>;",
            "Lcom/google/common/collect/ImmutableSet<",
            "TR;>;",
            "Lcom/google/common/collect/ImmutableSet<",
            "TC;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/u2;-><init>()V

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v0, Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/common/collect/f0;->i:[[Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/common/collect/Maps;->r(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p2

    iput-object p2, p0, Lcom/google/common/collect/f0;->c:Lcom/google/common/collect/ImmutableMap;

    invoke-static {p3}, Lcom/google/common/collect/Maps;->r(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p3

    iput-object p3, p0, Lcom/google/common/collect/f0;->d:Lcom/google/common/collect/ImmutableMap;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/google/common/collect/f0;->g:[I

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/google/common/collect/f0;->h:[I

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    new-array p2, p2, [I

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p3

    new-array p3, p3, [I

    :goto_46
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ge v1, v0, :cond_a8

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/l3$a;

    invoke-interface {v0}, Lcom/google/common/collect/l3$a;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/l3$a;->d()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/google/common/collect/f0;->c:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v5, v2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/google/common/collect/f0;->d:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v6, v4}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/google/common/collect/f0;->i:[[Ljava/lang/Object;

    aget-object v7, v7, v5

    aget-object v7, v7, v6

    invoke-interface {v0}, Lcom/google/common/collect/l3$a;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v2, v4, v7, v8}, Lcom/google/common/collect/u2;->E(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/common/collect/f0;->i:[[Ljava/lang/Object;

    aget-object v2, v2, v5

    invoke-interface {v0}, Lcom/google/common/collect/l3$a;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v6

    iget-object v0, p0, Lcom/google/common/collect/f0;->g:[I

    aget v2, v0, v5

    add-int/2addr v2, v3

    aput v2, v0, v5

    iget-object v0, p0, Lcom/google/common/collect/f0;->h:[I

    aget v2, v0, v6

    add-int/2addr v2, v3

    aput v2, v0, v6

    aput v5, p2, v1

    aput v6, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    :cond_a8
    iput-object p2, p0, Lcom/google/common/collect/f0;->j:[I

    iput-object p3, p0, Lcom/google/common/collect/f0;->k:[I

    new-instance p1, Lcom/google/common/collect/f0$f;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/common/collect/f0$f;-><init>(Lcom/google/common/collect/f0;Lcom/google/common/collect/f0$a;)V

    iput-object p1, p0, Lcom/google/common/collect/f0;->e:Lcom/google/common/collect/ImmutableMap;

    new-instance p1, Lcom/google/common/collect/f0$c;

    invoke-direct {p1, p0, p2}, Lcom/google/common/collect/f0$c;-><init>(Lcom/google/common/collect/f0;Lcom/google/common/collect/f0$a;)V

    iput-object p1, p0, Lcom/google/common/collect/f0;->f:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method static synthetic L(Lcom/google/common/collect/f0;)[I
    .registers 1

    iget-object p0, p0, Lcom/google/common/collect/f0;->g:[I

    return-object p0
.end method

.method static synthetic M(Lcom/google/common/collect/f0;)Lcom/google/common/collect/ImmutableMap;
    .registers 1

    iget-object p0, p0, Lcom/google/common/collect/f0;->d:Lcom/google/common/collect/ImmutableMap;

    return-object p0
.end method

.method static synthetic N(Lcom/google/common/collect/f0;)[[Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/common/collect/f0;->i:[[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic O(Lcom/google/common/collect/f0;)[I
    .registers 1

    iget-object p0, p0, Lcom/google/common/collect/f0;->h:[I

    return-object p0
.end method

.method static synthetic P(Lcom/google/common/collect/f0;)Lcom/google/common/collect/ImmutableMap;
    .registers 1

    iget-object p0, p0, Lcom/google/common/collect/f0;->c:Lcom/google/common/collect/ImmutableMap;

    return-object p0
.end method


# virtual methods
.method public C()Lcom/google/common/collect/ImmutableMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/f0;->e:Lcom/google/common/collect/ImmutableMap;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method I(I)Lcom/google/common/collect/l3$a;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/l3$a<",
            "TR;TC;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/f0;->j:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/google/common/collect/f0;->k:[I

    aget p1, v1, p1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableTable;->B()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->e()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableTable;->s()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSet;->e()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/f0;->i:[[Ljava/lang/Object;

    aget-object v0, v3, v0

    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v2, p1}, Lcom/google/common/collect/ImmutableTable;->q(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/l3$a;

    move-result-object p1

    return-object p1
.end method

.method J(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/f0;->i:[[Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/f0;->j:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/google/common/collect/f0;->k:[I

    aget p1, v1, p1

    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/f0;->c:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/google/common/collect/f0;->d:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p1, :cond_24

    if-nez p2, :cond_15

    goto :goto_24

    :cond_15
    iget-object v0, p0, Lcom/google/common/collect/f0;->i:[[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-object p1, p1, p2

    goto :goto_25

    :cond_24
    :goto_24
    const/4 p1, 0x0

    :goto_25
    return-object p1
.end method

.method public bridge synthetic j()Ljava/util/Map;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/f0;->C()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic n()Ljava/util/Map;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/f0;->u()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/f0;->j:[I

    array-length v0, v0

    return v0
.end method

.method public u()Lcom/google/common/collect/ImmutableMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/f0;->f:Lcom/google/common/collect/ImmutableMap;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method y()Lcom/google/common/collect/ImmutableTable$b;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/f0;->j:[I

    iget-object v1, p0, Lcom/google/common/collect/f0;->k:[I

    invoke-static {p0, v0, v1}, Lcom/google/common/collect/ImmutableTable$b;->a(Lcom/google/common/collect/ImmutableTable;[I[I)Lcom/google/common/collect/ImmutableTable$b;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.collect.f0.a (com.google.common.collect.f0$a)
.class synthetic Lcom/google/common/collect/f0$a;
.super Ljava/lang/Object;
.source "DenseImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.common.collect.f0.b (com.google.common.collect.f0$b)
.class final Lcom/google/common/collect/f0$b;
.super Lcom/google/common/collect/f0$d;
.source "DenseImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/f0$d<",
        "TR;TV;>;"
    }
.end annotation


# instance fields
.field private final f:I

.field final synthetic g:Lcom/google/common/collect/f0;


# direct methods
.method constructor <init>(Lcom/google/common/collect/f0;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/f0$b;->g:Lcom/google/common/collect/f0;

    invoke-static {p1}, Lcom/google/common/collect/f0;->O(Lcom/google/common/collect/f0;)[I

    move-result-object p1

    aget p1, p1, p2

    invoke-direct {p0, p1}, Lcom/google/common/collect/f0$d;-><init>(I)V

    iput p2, p0, Lcom/google/common/collect/f0$b;->f:I

    return-void
.end method


# virtual methods
.method j()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method r(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/f0$b;->g:Lcom/google/common/collect/f0;

    invoke-static {v0}, Lcom/google/common/collect/f0;->N(Lcom/google/common/collect/f0;)[[Ljava/lang/Object;

    move-result-object v0

    aget-object p1, v0, p1

    iget v0, p0, Lcom/google/common/collect/f0$b;->f:I

    aget-object p1, p1, v0

    return-object p1
.end method

.method t()Lcom/google/common/collect/ImmutableMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TR;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/f0$b;->g:Lcom/google/common/collect/f0;

    invoke-static {v0}, Lcom/google/common/collect/f0;->P(Lcom/google/common/collect/f0;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.collect.f0.c (com.google.common.collect.f0$c)
.class final Lcom/google/common/collect/f0$c;
.super Lcom/google/common/collect/f0$d;
.source "DenseImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/f0$d<",
        "TC;",
        "Lcom/google/common/collect/ImmutableMap<",
        "TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/google/common/collect/f0;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/f0;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/f0$c;->f:Lcom/google/common/collect/f0;

    invoke-static {p1}, Lcom/google/common/collect/f0;->O(Lcom/google/common/collect/f0;)[I

    move-result-object p1

    array-length p1, p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/f0$d;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/f0;Lcom/google/common/collect/f0$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/collect/f0$c;-><init>(Lcom/google/common/collect/f0;)V

    return-void
.end method


# virtual methods
.method j()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method bridge synthetic r(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/f0$c;->u(I)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    return-object p1
.end method

.method t()Lcom/google/common/collect/ImmutableMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TC;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/f0$c;->f:Lcom/google/common/collect/f0;

    invoke-static {v0}, Lcom/google/common/collect/f0;->M(Lcom/google/common/collect/f0;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method u(I)Lcom/google/common/collect/ImmutableMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/ImmutableMap<",
            "TR;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/f0$b;

    iget-object v1, p0, Lcom/google/common/collect/f0$c;->f:Lcom/google/common/collect/f0;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/f0$b;-><init>(Lcom/google/common/collect/f0;I)V

    return-object v0
.end method

###### Class com.google.common.collect.f0.d (com.google.common.collect.f0$d)
.class abstract Lcom/google/common/collect/f0$d;
.super Lcom/google/common/collect/ImmutableMap$c;
.source "DenseImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMap$c<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final e:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap$c;-><init>()V

    iput p1, p0, Lcom/google/common/collect/f0$d;->e:I

    return-void
.end method

.method private s()Z
    .registers 3

    iget v0, p0, Lcom/google/common/collect/f0$d;->e:I

    invoke-virtual {p0}, Lcom/google/common/collect/f0$d;->t()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method


# virtual methods
.method d()Lcom/google/common/collect/ImmutableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/f0$d;->s()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/common/collect/f0$d;->t()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->m()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_13

    :cond_f
    invoke-super {p0}, Lcom/google/common/collect/ImmutableMap$c;->d()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    :goto_13
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/f0$d;->t()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_e

    const/4 p1, 0x0

    goto :goto_16

    :cond_e
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/f0$d;->r(I)Ljava/lang/Object;

    move-result-object p1

    :goto_16
    return-object p1
.end method

.method p()Lcom/google/common/collect/o3;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/o3<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/f0$d$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/f0$d$a;-><init>(Lcom/google/common/collect/f0$d;)V

    return-object v0
.end method

.method q(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/f0$d;->t()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->m()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->e()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method abstract r(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lcom/google/common/collect/f0$d;->e:I

    return v0
.end method

.method abstract t()Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

###### Class com.google.common.collect.f0.d.a (com.google.common.collect.f0$d$a)
.class Lcom/google/common/collect/f0$d$a;
.super Lcom/google/common/collect/AbstractIterator;
.source "DenseImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/f0$d;->p()Lcom/google/common/collect/o3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private c:I

.field private final d:I

.field final synthetic e:Lcom/google/common/collect/f0$d;


# direct methods
.method constructor <init>(Lcom/google/common/collect/f0$d;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/f0$d$a;->e:Lcom/google/common/collect/f0$d;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/f0$d$a;->c:I

    invoke-virtual {p1}, Lcom/google/common/collect/f0$d;->t()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/f0$d$a;->d:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic b()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/f0$d$a;->e()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected e()Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/collect/f0$d$a;->c:I

    :goto_2
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/f0$d$a;->c:I

    iget v0, p0, Lcom/google/common/collect/f0$d$a;->c:I

    iget v1, p0, Lcom/google/common/collect/f0$d$a;->d:I

    if-ge v0, v1, :cond_24

    iget-object v1, p0, Lcom/google/common/collect/f0$d$a;->e:Lcom/google/common/collect/f0$d;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/f0$d;->r(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v1, p0, Lcom/google/common/collect/f0$d$a;->e:Lcom/google/common/collect/f0$d;

    iget v2, p0, Lcom/google/common/collect/f0$d$a;->c:I

    invoke-virtual {v1, v2}, Lcom/google/common/collect/f0$d;->q(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0

    :cond_21
    iget v0, p0, Lcom/google/common/collect/f0$d$a;->c:I

    goto :goto_2

    :cond_24
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

###### Class com.google.common.collect.f0.e (com.google.common.collect.f0$e)
.class final Lcom/google/common/collect/f0$e;
.super Lcom/google/common/collect/f0$d;
.source "DenseImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/f0$d<",
        "TC;TV;>;"
    }
.end annotation


# instance fields
.field private final f:I

.field final synthetic g:Lcom/google/common/collect/f0;


# direct methods
.method constructor <init>(Lcom/google/common/collect/f0;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/f0$e;->g:Lcom/google/common/collect/f0;

    invoke-static {p1}, Lcom/google/common/collect/f0;->L(Lcom/google/common/collect/f0;)[I

    move-result-object p1

    aget p1, p1, p2

    invoke-direct {p0, p1}, Lcom/google/common/collect/f0$d;-><init>(I)V

    iput p2, p0, Lcom/google/common/collect/f0$e;->f:I

    return-void
.end method


# virtual methods
.method j()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method r(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/f0$e;->g:Lcom/google/common/collect/f0;

    invoke-static {v0}, Lcom/google/common/collect/f0;->N(Lcom/google/common/collect/f0;)[[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/f0$e;->f:I

    aget-object v0, v0, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method t()Lcom/google/common/collect/ImmutableMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TC;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/f0$e;->g:Lcom/google/common/collect/f0;

    invoke-static {v0}, Lcom/google/common/collect/f0;->M(Lcom/google/common/collect/f0;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.collect.f0.f (com.google.common.collect.f0$f)
.class final Lcom/google/common/collect/f0$f;
.super Lcom/google/common/collect/f0$d;
.source "DenseImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/f0$d<",
        "TR;",
        "Lcom/google/common/collect/ImmutableMap<",
        "TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/google/common/collect/f0;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/f0;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/f0$f;->f:Lcom/google/common/collect/f0;

    invoke-static {p1}, Lcom/google/common/collect/f0;->L(Lcom/google/common/collect/f0;)[I

    move-result-object p1

    array-length p1, p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/f0$d;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/f0;Lcom/google/common/collect/f0$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/collect/f0$f;-><init>(Lcom/google/common/collect/f0;)V

    return-void
.end method


# virtual methods
.method j()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method bridge synthetic r(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/f0$f;->u(I)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    return-object p1
.end method

.method t()Lcom/google/common/collect/ImmutableMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TR;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/f0$f;->f:Lcom/google/common/collect/f0;

    invoke-static {v0}, Lcom/google/common/collect/f0;->P(Lcom/google/common/collect/f0;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method u(I)Lcom/google/common/collect/ImmutableMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/ImmutableMap<",
            "TC;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/f0$e;

    iget-object v1, p0, Lcom/google/common/collect/f0$f;->f:Lcom/google/common/collect/f0;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/f0$e;-><init>(Lcom/google/common/collect/f0;I)V

    return-object v0
.end method
