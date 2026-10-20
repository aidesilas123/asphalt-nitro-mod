###### Class com.google.common.graph.Graphs.a (com.google.common.graph.Graphs$a)
.class Lcom/google/common/graph/Graphs$a;
.super Lcom/google/common/graph/y;
.source "Graphs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/Graphs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/y<",
        "TN;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/graph/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/b0<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/graph/b0;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/b0<",
            "TN;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/graph/y;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/Graphs$a;->a:Lcom/google/common/graph/b0;

    return-void
.end method

.method static synthetic C(Lcom/google/common/graph/Graphs$a;)Lcom/google/common/graph/b0;
    .registers 1

    iget-object p0, p0, Lcom/google/common/graph/Graphs$a;->a:Lcom/google/common/graph/b0;

    return-object p0
.end method


# virtual methods
.method bridge synthetic B()Lcom/google/common/graph/s;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$a;->D()Lcom/google/common/graph/b0;

    move-result-object v0

    return-object v0
.end method

.method D()Lcom/google/common/graph/b0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/b0<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/Graphs$a;->a:Lcom/google/common/graph/b0;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/graph/Graphs$a;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$a;->D()Lcom/google/common/graph/b0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/b0;->c(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$a;->D()Lcom/google/common/graph/b0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/b0;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/graph/Graphs$a$a;

    invoke-direct {v0, p0, p0, p1}, Lcom/google/common/graph/Graphs$a$a;-><init>(Lcom/google/common/graph/Graphs$a;Lcom/google/common/graph/s;Ljava/lang/Object;)V

    return-object v0
.end method

.method public l(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$a;->D()Lcom/google/common/graph/b0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/b0;->m(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public m(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$a;->D()Lcom/google/common/graph/b0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/b0;->l(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
