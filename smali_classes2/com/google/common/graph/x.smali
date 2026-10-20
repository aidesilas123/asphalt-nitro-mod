###### Class com.google.common.graph.x (com.google.common.graph.x)
.class abstract Lcom/google/common/graph/x;
.super Lcom/google/common/collect/AbstractIterator;
.source "EndpointPairIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/x$c;,
        Lcom/google/common/graph/x$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractIterator<",
        "Lcom/google/common/graph/EndpointPair<",
        "TN;>;>;"
    }
.end annotation


# instance fields
.field private final c:Lcom/google/common/graph/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/s<",
            "TN;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TN;>;"
        }
    .end annotation
.end field

.field e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field

.field f:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/graph/s;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/s<",
            "TN;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/graph/x;->e:Ljava/lang/Object;

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/n1;->n()Lcom/google/common/collect/o3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/graph/x;->f:Ljava/util/Iterator;

    iput-object p1, p0, Lcom/google/common/graph/x;->c:Lcom/google/common/graph/s;

    invoke-interface {p1}, Lcom/google/common/graph/s;->i()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/graph/x;->d:Ljava/util/Iterator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/graph/s;Lcom/google/common/graph/x$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/graph/x;-><init>(Lcom/google/common/graph/s;)V

    return-void
.end method

.method static f(Lcom/google/common/graph/s;)Lcom/google/common/graph/x;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/s<",
            "TN;>;)",
            "Lcom/google/common/graph/x<",
            "TN;>;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/common/graph/s;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/google/common/graph/x$b;

    invoke-direct {v0, p0, v1}, Lcom/google/common/graph/x$b;-><init>(Lcom/google/common/graph/s;Lcom/google/common/graph/x$a;)V

    goto :goto_12

    :cond_d
    new-instance v0, Lcom/google/common/graph/x$c;

    invoke-direct {v0, p0, v1}, Lcom/google/common/graph/x$c;-><init>(Lcom/google/common/graph/s;Lcom/google/common/graph/x$a;)V

    :goto_12
    return-object v0
.end method


# virtual methods
.method final e()Z
    .registers 4

    iget-object v0, p0, Lcom/google/common/graph/x;->f:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/common/graph/x;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x0

    return v0

    :cond_15
    iget-object v0, p0, Lcom/google/common/graph/x;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/graph/x;->e:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/graph/x;->c:Lcom/google/common/graph/s;

    invoke-interface {v2, v0}, Lcom/google/common/graph/s;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/graph/x;->f:Ljava/util/Iterator;

    return v1
.end method
