###### Class com.google.common.graph.Graphs.a.C0263a (com.google.common.graph.Graphs$a$a)
.class Lcom/google/common/graph/Graphs$a$a;
.super Lcom/google/common/graph/d0;
.source "Graphs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/Graphs$a;->h(Ljava/lang/Object;)Ljava/util/Set;
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
.field final synthetic c:Lcom/google/common/graph/Graphs$a;


# direct methods
.method constructor <init>(Lcom/google/common/graph/Graphs$a;Lcom/google/common/graph/s;Ljava/lang/Object;)V
    .registers 4

    iput-object p1, p0, Lcom/google/common/graph/Graphs$a$a;->c:Lcom/google/common/graph/Graphs$a;

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

    iget-object v0, p0, Lcom/google/common/graph/Graphs$a$a;->c:Lcom/google/common/graph/Graphs$a;

    invoke-virtual {v0}, Lcom/google/common/graph/Graphs$a;->D()Lcom/google/common/graph/b0;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/graph/d0;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/common/graph/b0;->h(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/graph/Graphs$a$a$a;

    invoke-direct {v1, p0}, Lcom/google/common/graph/Graphs$a$a$a;-><init>(Lcom/google/common/graph/Graphs$a$a;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/f;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
