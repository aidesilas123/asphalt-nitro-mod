###### Class com.google.common.graph.d (com.google.common.graph.d)
.class public final synthetic Lcom/google/common/graph/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/f;


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/d;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/common/graph/d;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/common/graph/t$f;

    invoke-static {v0, p1}, Lcom/google/common/graph/t;->r(Ljava/lang/Object;Lcom/google/common/graph/t$f;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1
.end method
