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
