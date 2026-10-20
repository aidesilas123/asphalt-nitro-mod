###### Class com.google.common.graph.t.g (com.google.common.graph.t$g)
.class final Lcom/google/common/graph/t$g;
.super Ljava/lang/Object;
.source "DirectedGraphConnections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/t$g;->a:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/google/common/graph/t$g;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/common/graph/t$g;->a:Ljava/lang/Object;

    return-object p0
.end method
