###### Class com.google.common.graph.e0.a.C0265a (com.google.common.graph.e0$a$a)
.class Lcom/google/common/graph/e0$a$a;
.super Lcom/google/common/collect/o3;
.source "MapIteratorCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/e0$a;->e()Lcom/google/common/collect/o3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/o3<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/graph/e0$a;


# direct methods
.method constructor <init>(Lcom/google/common/graph/e0$a;Ljava/util/Iterator;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/graph/e0$a$a;->b:Lcom/google/common/graph/e0$a;

    iput-object p2, p0, Lcom/google/common/graph/e0$a$a;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/o3;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lcom/google/common/graph/e0$a$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/e0$a$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/common/graph/e0$a$a;->b:Lcom/google/common/graph/e0$a;

    iget-object v1, v1, Lcom/google/common/graph/e0$a;->a:Lcom/google/common/graph/e0;

    invoke-static {v1, v0}, Lcom/google/common/graph/e0;->b(Lcom/google/common/graph/e0;Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
