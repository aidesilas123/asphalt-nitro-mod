###### Class com.google.common.graph.e0.a (com.google.common.graph.e0$a)
.class Lcom/google/common/graph/e0$a;
.super Ljava/util/AbstractSet;
.source "MapIteratorCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/e0;->i()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/graph/e0;


# direct methods
.method constructor <init>(Lcom/google/common/graph/e0;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/graph/e0$a;->a:Lcom/google/common/graph/e0;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/graph/e0$a;->a:Lcom/google/common/graph/e0;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/e0;->d(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public e()Lcom/google/common/collect/o3;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/o3<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/e0$a;->a:Lcom/google/common/graph/e0;

    invoke-static {v0}, Lcom/google/common/graph/e0;->a(Lcom/google/common/graph/e0;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/graph/e0$a$a;

    invoke-direct {v1, p0, v0}, Lcom/google/common/graph/e0$a$a;-><init>(Lcom/google/common/graph/e0$a;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/graph/e0$a;->e()Lcom/google/common/collect/o3;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/google/common/graph/e0$a;->a:Lcom/google/common/graph/e0;

    invoke-static {v0}, Lcom/google/common/graph/e0;->a(Lcom/google/common/graph/e0;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
