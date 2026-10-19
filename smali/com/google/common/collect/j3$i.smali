###### Class com.google.common.collect.j3.i (com.google.common.collect.j3$i)
.class abstract Lcom/google/common/collect/j3$i;
.super Lcom/google/common/collect/Sets$j;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/j3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Sets$j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/j3;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/j3;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/j3$i;->a:Lcom/google/common/collect/j3;

    invoke-direct {p0}, Lcom/google/common/collect/Sets$j;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/j3;Lcom/google/common/collect/j3$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/collect/j3$i;-><init>(Lcom/google/common/collect/j3;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/j3$i;->a:Lcom/google/common/collect/j3;

    iget-object v0, v0, Lcom/google/common/collect/j3;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/j3$i;->a:Lcom/google/common/collect/j3;

    iget-object v0, v0, Lcom/google/common/collect/j3;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method
