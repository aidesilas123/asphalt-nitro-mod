###### Class com.google.common.collect.v1 (com.google.common.collect.v1)
.class abstract Lcom/google/common/collect/v1;
.super Lcom/google/common/collect/ImmutableSet;
.source "IndexedImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    return-void
.end method


# virtual methods
.method f([Ljava/lang/Object;I)I
    .registers 4

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->e()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/ImmutableList;->f([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method abstract get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/v1;->n()Lcom/google/common/collect/o3;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/google/common/collect/o3;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/o3<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->e()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->n()Lcom/google/common/collect/o3;

    move-result-object v0

    return-object v0
.end method

.method y()Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/v1$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/v1$a;-><init>(Lcom/google/common/collect/v1;)V

    return-object v0
.end method

###### Class com.google.common.collect.v1.a (com.google.common.collect.v1$a)
.class Lcom/google/common/collect/v1$a;
.super Lcom/google/common/collect/ImmutableList;
.source "IndexedImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/v1;->y()Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/google/common/collect/v1;


# direct methods
.method constructor <init>(Lcom/google/common/collect/v1;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/v1$a;->c:Lcom/google/common/collect/v1;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/v1$a;->c:Lcom/google/common/collect/v1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/v1;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method j()Z
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/v1$a;->c:Lcom/google/common/collect/v1;

    invoke-virtual {v0}, Lcom/google/common/collect/n1;->j()Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/v1$a;->c:Lcom/google/common/collect/v1;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method
