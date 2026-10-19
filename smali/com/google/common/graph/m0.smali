###### Class com.google.common.graph.m0 (com.google.common.graph.m0)
.class final Lcom/google/common/graph/m0;
.super Lcom/google/common/graph/y;
.source "StandardMutableGraph.java"

# interfaces
.implements Lcom/google/common/graph/h0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/y<",
        "TN;>;",
        "Lcom/google/common/graph/h0<",
        "TN;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/graph/j0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/j0<",
            "TN;",
            "Lcom/google/common/graph/GraphConstants$Presence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/graph/o;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/o<",
            "-TN;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/graph/y;-><init>()V

    new-instance v0, Lcom/google/common/graph/o0;

    invoke-direct {v0, p1}, Lcom/google/common/graph/o0;-><init>(Lcom/google/common/graph/o;)V

    iput-object v0, p0, Lcom/google/common/graph/m0;->a:Lcom/google/common/graph/j0;

    return-void
.end method


# virtual methods
.method B()Lcom/google/common/graph/s;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/s<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/m0;->a:Lcom/google/common/graph/j0;

    return-object v0
.end method

.method public k(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/m0;->a:Lcom/google/common/graph/j0;

    invoke-interface {v0, p1}, Lcom/google/common/graph/j0;->k(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public u(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/m0;->a:Lcom/google/common/graph/j0;

    sget-object v1, Lcom/google/common/graph/GraphConstants$Presence;->a:Lcom/google/common/graph/GraphConstants$Presence;

    invoke-interface {v0, p1, p2, v1}, Lcom/google/common/graph/j0;->x(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method
