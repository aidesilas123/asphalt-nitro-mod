###### Class com.google.common.collect.f0.f (com.google.common.collect.f0$f)
.class final Lcom/google/common/collect/f0$f;
.super Lcom/google/common/collect/f0$d;
.source "DenseImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/f0$d<",
        "TR;",
        "Lcom/google/common/collect/ImmutableMap<",
        "TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/google/common/collect/f0;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/f0;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/f0$f;->f:Lcom/google/common/collect/f0;

    invoke-static {p1}, Lcom/google/common/collect/f0;->L(Lcom/google/common/collect/f0;)[I

    move-result-object p1

    array-length p1, p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/f0$d;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/f0;Lcom/google/common/collect/f0$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/collect/f0$f;-><init>(Lcom/google/common/collect/f0;)V

    return-void
.end method


# virtual methods
.method j()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method bridge synthetic r(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/f0$f;->u(I)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

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

    iget-object v0, p0, Lcom/google/common/collect/f0$f;->f:Lcom/google/common/collect/f0;

    invoke-static {v0}, Lcom/google/common/collect/f0;->P(Lcom/google/common/collect/f0;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method u(I)Lcom/google/common/collect/ImmutableMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/ImmutableMap<",
            "TC;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/f0$e;

    iget-object v1, p0, Lcom/google/common/collect/f0$f;->f:Lcom/google/common/collect/f0;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/f0$e;-><init>(Lcom/google/common/collect/f0;I)V

    return-object v0
.end method
