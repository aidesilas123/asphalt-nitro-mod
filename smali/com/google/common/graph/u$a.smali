###### Class com.google.common.graph.u.a (com.google.common.graph.u$a)
.class Lcom/google/common/graph/u$a;
.super Lcom/google/common/graph/g0;
.source "DirectedMultiNetworkConnections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/u;->j(Ljava/lang/Object;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/graph/g0<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Lcom/google/common/graph/u;


# direct methods
.method constructor <init>(Lcom/google/common/graph/u;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    iput-object p1, p0, Lcom/google/common/graph/u$a;->d:Lcom/google/common/graph/u;

    iput-object p4, p0, Lcom/google/common/graph/u$a;->c:Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Lcom/google/common/graph/g0;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public size()I
    .registers 3

    iget-object v0, p0, Lcom/google/common/graph/u$a;->d:Lcom/google/common/graph/u;

    invoke-static {v0}, Lcom/google/common/graph/u;->l(Lcom/google/common/graph/u;)Lcom/google/common/collect/c2;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/graph/u$a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/common/collect/c2;->K(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
