###### Class com.google.common.graph.Traverser.a (com.google.common.graph.Traverser$a)
.class Lcom/google/common/graph/Traverser$a;
.super Lcom/google/common/graph/Traverser;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/Traverser;->forGraph(Lcom/google/common/graph/r0;)Lcom/google/common/graph/Traverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/graph/Traverser<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/graph/r0;


# direct methods
.method constructor <init>(Lcom/google/common/graph/r0;Lcom/google/common/graph/r0;)V
    .registers 3

    iput-object p2, p0, Lcom/google/common/graph/Traverser$a;->b:Lcom/google/common/graph/r0;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/common/graph/Traverser;-><init>(Lcom/google/common/graph/r0;Lcom/google/common/graph/Traverser$a;)V

    return-void
.end method


# virtual methods
.method c()Lcom/google/common/graph/Traverser$d;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/Traverser$d<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/Traverser$a;->b:Lcom/google/common/graph/r0;

    invoke-static {v0}, Lcom/google/common/graph/Traverser$d;->b(Lcom/google/common/graph/r0;)Lcom/google/common/graph/Traverser$d;

    move-result-object v0

    return-object v0
.end method
