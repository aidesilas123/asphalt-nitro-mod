###### Class com.google.common.graph.q0 (com.google.common.graph.q0)
.class Lcom/google/common/graph/q0;
.super Lcom/google/common/graph/r;
.source "StandardValueGraph.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/r<",
        "TN;TV;>;"
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Lcom/google/common/graph/ElementOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/ElementOrder<",
            "TN;>;"
        }
    .end annotation
.end field

.field final d:Lcom/google/common/graph/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/e0<",
            "TN;",
            "Lcom/google/common/graph/c0<",
            "TN;TV;>;>;"
        }
    .end annotation
.end field

.field e:J


# direct methods
.method constructor <init>(Lcom/google/common/graph/o;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/o<",
            "-TN;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/google/common/graph/o;->c:Lcom/google/common/graph/ElementOrder;

    iget-object v1, p1, Lcom/google/common/graph/o;->e:Lcom/google/common/base/Optional;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/base/Optional;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/ElementOrder;->c(I)Ljava/util/Map;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/common/graph/q0;-><init>(Lcom/google/common/graph/o;Ljava/util/Map;J)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/graph/o;Ljava/util/Map;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/o<",
            "-TN;>;",
            "Ljava/util/Map<",
            "TN;",
            "Lcom/google/common/graph/c0<",
            "TN;TV;>;>;J)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/graph/r;-><init>()V

    iget-boolean v0, p1, Lcom/google/common/graph/o;->a:Z

    iput-boolean v0, p0, Lcom/google/common/graph/q0;->a:Z

    iget-boolean v0, p1, Lcom/google/common/graph/o;->b:Z

    iput-boolean v0, p0, Lcom/google/common/graph/q0;->b:Z

    iget-object p1, p1, Lcom/google/common/graph/o;->c:Lcom/google/common/graph/ElementOrder;

    invoke-virtual {p1}, Lcom/google/common/graph/ElementOrder;->a()Lcom/google/common/graph/ElementOrder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/graph/q0;->c:Lcom/google/common/graph/ElementOrder;

    instance-of p1, p2, Ljava/util/TreeMap;

    if-eqz p1, :cond_1d

    new-instance p1, Lcom/google/common/graph/f0;

    invoke-direct {p1, p2}, Lcom/google/common/graph/f0;-><init>(Ljava/util/Map;)V

    goto :goto_22

    :cond_1d
    new-instance p1, Lcom/google/common/graph/e0;

    invoke-direct {p1, p2}, Lcom/google/common/graph/e0;-><init>(Ljava/util/Map;)V

    :goto_22
    iput-object p1, p0, Lcom/google/common/graph/q0;->d:Lcom/google/common/graph/e0;

    invoke-static {p3, p4}, Lcom/google/common/graph/Graphs;->c(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/common/graph/q0;->e:J

    return-void
.end method

.method private final C(Ljava/lang/Object;)Lcom/google/common/graph/c0;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lcom/google/common/graph/c0<",
            "TN;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/q0;->d:Lcom/google/common/graph/e0;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/e0;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/c0;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Node "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not an element of this graph."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final E(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/q0;->d:Lcom/google/common/graph/e0;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/e0;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/graph/c0;

    if-nez p1, :cond_c

    const/4 p1, 0x0

    goto :goto_10

    :cond_c
    invoke-interface {p1, p2}, Lcom/google/common/graph/c0;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_10
    if-nez p1, :cond_13

    return-object p3

    :cond_13
    return-object p1
.end method


# virtual methods
.method final D(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/q0;->d:Lcom/google/common/graph/e0;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/e0;->d(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/graph/q0;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/graph/q0;->C(Ljava/lang/Object;)Lcom/google/common/graph/c0;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/graph/c0;->a()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Object;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/graph/q0;->C(Ljava/lang/Object;)Lcom/google/common/graph/c0;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/graph/c0;->b()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/common/graph/q0;->a:Z

    return v0
.end method

.method public e()Lcom/google/common/graph/ElementOrder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ElementOrder<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/q0;->c:Lcom/google/common/graph/ElementOrder;

    return-object v0
.end method

.method public f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/common/graph/q0;->b:Z

    return v0
.end method

.method public g(Ljava/lang/Object;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/graph/q0;->C(Ljava/lang/Object;)Lcom/google/common/graph/c0;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/graph/c0;->c()Ljava/util/Set;

    move-result-object p1

    return-object p1
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

    invoke-direct {p0, p1}, Lcom/google/common/graph/q0;->C(Ljava/lang/Object;)Lcom/google/common/graph/c0;

    move-result-object v0

    new-instance v1, Lcom/google/common/graph/q0$a;

    invoke-direct {v1, p0, p0, p1, v0}, Lcom/google/common/graph/q0$a;-><init>(Lcom/google/common/graph/q0;Lcom/google/common/graph/s;Ljava/lang/Object;Lcom/google/common/graph/c0;)V

    return-object v1
.end method

.method public i()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/q0;->d:Lcom/google/common/graph/e0;

    invoke-virtual {v0}, Lcom/google/common/graph/e0;->i()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public r(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TV;)TV;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/graph/q0;->E(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected z()J
    .registers 3

    iget-wide v0, p0, Lcom/google/common/graph/q0;->e:J

    return-wide v0
.end method

###### Class com.google.common.graph.q0.a (com.google.common.graph.q0$a)
.class Lcom/google/common/graph/q0$a;
.super Lcom/google/common/graph/d0;
.source "StandardValueGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/q0;->h(Ljava/lang/Object;)Ljava/util/Set;
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


# instance fields
.field final synthetic c:Lcom/google/common/graph/c0;


# direct methods
.method constructor <init>(Lcom/google/common/graph/q0;Lcom/google/common/graph/s;Ljava/lang/Object;Lcom/google/common/graph/c0;)V
    .registers 5

    iput-object p4, p0, Lcom/google/common/graph/q0$a;->c:Lcom/google/common/graph/c0;

    invoke-direct {p0, p2, p3}, Lcom/google/common/graph/d0;-><init>(Lcom/google/common/graph/s;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/q0$a;->c:Lcom/google/common/graph/c0;

    iget-object v1, p0, Lcom/google/common/graph/d0;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/common/graph/c0;->e(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
