###### Class com.google.common.collect.i0.a (com.google.common.collect.i0$a)
.class Lcom/google/common/collect/i0$a;
.super Lcom/google/common/collect/Multisets$i;
.source "DescendingMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/i0;->Q()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$i<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/i0;


# direct methods
.method constructor <init>(Lcom/google/common/collect/i0;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/i0$a;->a:Lcom/google/common/collect/i0;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$i;-><init>()V

    return-void
.end method


# virtual methods
.method i()Lcom/google/common/collect/c2;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/c2<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/i0$a;->a:Lcom/google/common/collect/i0;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/i0$a;->a:Lcom/google/common/collect/i0;

    invoke-virtual {v0}, Lcom/google/common/collect/i0;->R()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/i0$a;->a:Lcom/google/common/collect/i0;

    invoke-virtual {v0}, Lcom/google/common/collect/i0;->S()Lcom/google/common/collect/e3;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/e3;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
