###### Class com.google.common.graph.f0 (com.google.common.graph.f0)
.class final Lcom/google/common/graph/f0;
.super Lcom/google/common/graph/e0;
.source "MapRetrievalCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/f0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/e0<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private volatile transient c:Lcom/google/common/graph/f0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/f0$a<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile transient d:Lcom/google/common/graph/f0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/f0$a<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/graph/e0;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method private j(Lcom/google/common/graph/f0$a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/f0$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/f0;->c:Lcom/google/common/graph/f0$a;

    iput-object v0, p0, Lcom/google/common/graph/f0;->d:Lcom/google/common/graph/f0$a;

    iput-object p1, p0, Lcom/google/common/graph/f0;->c:Lcom/google/common/graph/f0$a;

    return-void
.end method

.method private k(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/common/graph/f0$a;

    invoke-direct {v0, p1, p2}, Lcom/google/common/graph/f0$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/google/common/graph/f0;->j(Lcom/google/common/graph/f0$a;)V

    return-void
.end method


# virtual methods
.method c()V
    .registers 2

    invoke-super {p0}, Lcom/google/common/graph/e0;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/graph/f0;->c:Lcom/google/common/graph/f0$a;

    iput-object v0, p0, Lcom/google/common/graph/f0;->d:Lcom/google/common/graph/f0$a;

    return-void
.end method

.method e(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/google/common/graph/f0;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    return-object v0

    :cond_a
    invoke-virtual {p0, p1}, Lcom/google/common/graph/e0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-direct {p0, p1, v0}, Lcom/google/common/graph/f0;->k(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_13
    return-object v0
.end method

.method f(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/graph/e0;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/common/graph/f0;->c:Lcom/google/common/graph/f0$a;

    if-eqz v0, :cond_12

    iget-object v1, v0, Lcom/google/common/graph/f0$a;->a:Ljava/lang/Object;

    if-ne v1, p1, :cond_12

    iget-object p1, v0, Lcom/google/common/graph/f0$a;->b:Ljava/lang/Object;

    return-object p1

    :cond_12
    iget-object v0, p0, Lcom/google/common/graph/f0;->d:Lcom/google/common/graph/f0$a;

    if-eqz v0, :cond_20

    iget-object v1, v0, Lcom/google/common/graph/f0$a;->a:Ljava/lang/Object;

    if-ne v1, p1, :cond_20

    invoke-direct {p0, v0}, Lcom/google/common/graph/f0;->j(Lcom/google/common/graph/f0$a;)V

    iget-object p1, v0, Lcom/google/common/graph/f0$a;->b:Ljava/lang/Object;

    return-object p1

    :cond_20
    const/4 p1, 0x0

    return-object p1
.end method
