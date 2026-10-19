###### Class com.google.common.collect.f0.b (com.google.common.collect.f0$b)
.class final Lcom/google/common/collect/f0$b;
.super Lcom/google/common/collect/f0$d;
.source "DenseImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/f0$d<",
        "TR;TV;>;"
    }
.end annotation


# instance fields
.field private final f:I

.field final synthetic g:Lcom/google/common/collect/f0;


# direct methods
.method constructor <init>(Lcom/google/common/collect/f0;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/f0$b;->g:Lcom/google/common/collect/f0;

    invoke-static {p1}, Lcom/google/common/collect/f0;->O(Lcom/google/common/collect/f0;)[I

    move-result-object p1

    aget p1, p1, p2

    invoke-direct {p0, p1}, Lcom/google/common/collect/f0$d;-><init>(I)V

    iput p2, p0, Lcom/google/common/collect/f0$b;->f:I

    return-void
.end method


# virtual methods
.method j()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method r(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/f0$b;->g:Lcom/google/common/collect/f0;

    invoke-static {v0}, Lcom/google/common/collect/f0;->N(Lcom/google/common/collect/f0;)[[Ljava/lang/Object;

    move-result-object v0

    aget-object p1, v0, p1

    iget v0, p0, Lcom/google/common/collect/f0$b;->f:I

    aget-object p1, p1, v0

    return-object p1
.end method

.method t()Lcom/google/common/collect/ImmutableMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TR;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/f0$b;->g:Lcom/google/common/collect/f0;

    invoke-static {v0}, Lcom/google/common/collect/f0;->P(Lcom/google/common/collect/f0;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method
