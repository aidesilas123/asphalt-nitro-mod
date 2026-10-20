###### Class com.google.common.graph.i (com.google.common.graph.i)
.class public final synthetic Lcom/google/common/graph/i;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/f;


# instance fields
.field public final synthetic a:Lcom/google/common/graph/k0;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/graph/k0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/i;->a:Lcom/google/common/graph/k0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/common/graph/i;->a:Lcom/google/common/graph/k0;

    invoke-static {v0, p1}, Lcom/google/common/graph/ImmutableNetwork;->K(Lcom/google/common/graph/k0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
