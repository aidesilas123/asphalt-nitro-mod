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
