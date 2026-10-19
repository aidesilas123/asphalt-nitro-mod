###### Class com.google.common.collect.f0.e (com.google.common.collect.f0$e)
.class final Lcom/google/common/collect/f0$e;
.super Lcom/google/common/collect/f0$d;
.source "DenseImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/f0$d<",
        "TC;TV;>;"
    }
.end annotation


# instance fields
.field private final f:I

.field final synthetic g:Lcom/google/common/collect/f0;


# direct methods
.method constructor <init>(Lcom/google/common/collect/f0;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/f0$e;->g:Lcom/google/common/collect/f0;

    invoke-static {p1}, Lcom/google/common/collect/f0;->L(Lcom/google/common/collect/f0;)[I

    move-result-object p1

    aget p1, p1, p2

    invoke-direct {p0, p1}, Lcom/google/common/collect/f0$d;-><init>(I)V

    iput p2, p0, Lcom/google/common/collect/f0$e;->f:I

    return-void
.end method


# virtual methods
.method j()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method r(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/f0$e;->g:Lcom/google/common/collect/f0;

    invoke-static {v0}, Lcom/google/common/collect/f0;->N(Lcom/google/common/collect/f0;)[[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/f0$e;->f:I

    aget-object v0, v0, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method t()Lcom/google/common/collect/ImmutableMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TC;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/f0$e;->g:Lcom/google/common/collect/f0;

    invoke-static {v0}, Lcom/google/common/collect/f0;->M(Lcom/google/common/collect/f0;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method
