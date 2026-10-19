###### Class com.google.common.graph.Traverser.d.c (com.google.common.graph.Traverser$d$c)
.class Lcom/google/common/graph/Traverser$d$c;
.super Lcom/google/common/collect/AbstractIterator;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/Traverser$d;->d(Ljava/util/Iterator;Lcom/google/common/graph/Traverser$InsertionOrder;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Ljava/util/Deque;

.field final synthetic d:Lcom/google/common/graph/Traverser$InsertionOrder;

.field final synthetic e:Lcom/google/common/graph/Traverser$d;


# direct methods
.method constructor <init>(Lcom/google/common/graph/Traverser$d;Ljava/util/Deque;Lcom/google/common/graph/Traverser$InsertionOrder;)V
    .registers 4

    iput-object p1, p0, Lcom/google/common/graph/Traverser$d$c;->e:Lcom/google/common/graph/Traverser$d;

    iput-object p2, p0, Lcom/google/common/graph/Traverser$d$c;->c:Ljava/util/Deque;

    iput-object p3, p0, Lcom/google/common/graph/Traverser$d$c;->d:Lcom/google/common/graph/Traverser$InsertionOrder;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lcom/google/common/graph/Traverser$d$c;->e:Lcom/google/common/graph/Traverser$d;

    iget-object v1, p0, Lcom/google/common/graph/Traverser$d$c;->c:Ljava/util/Deque;

    invoke-virtual {v0, v1}, Lcom/google/common/graph/Traverser$d;->e(Ljava/util/Deque;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/google/common/graph/Traverser$d$c;->e:Lcom/google/common/graph/Traverser$d;

    iget-object v1, v1, Lcom/google/common/graph/Traverser$d;->a:Lcom/google/common/graph/r0;

    invoke-interface {v1, v0}, Lcom/google/common/graph/r0;->a(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/google/common/graph/Traverser$d$c;->d:Lcom/google/common/graph/Traverser$InsertionOrder;

    iget-object v3, p0, Lcom/google/common/graph/Traverser$d$c;->c:Ljava/util/Deque;

    invoke-virtual {v2, v3, v1}, Lcom/google/common/graph/Traverser$InsertionOrder;->f(Ljava/util/Deque;Ljava/lang/Object;)V

    :cond_23
    return-object v0

    :cond_24
    iget-object v0, p0, Lcom/google/common/graph/Traverser$d$c;->c:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
