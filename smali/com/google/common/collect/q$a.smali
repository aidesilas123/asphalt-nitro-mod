###### Class com.google.common.collect.q.a (com.google.common.collect.q$a)
.class Lcom/google/common/collect/q$a;
.super Lcom/google/common/collect/i0;
.source "AbstractSortedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/q;->j()Lcom/google/common/collect/e3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/i0<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/google/common/collect/q;


# direct methods
.method constructor <init>(Lcom/google/common/collect/q;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/q$a;->d:Lcom/google/common/collect/q;

    invoke-direct {p0}, Lcom/google/common/collect/i0;-><init>()V

    return-void
.end method


# virtual methods
.method R()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/q$a;->d:Lcom/google/common/collect/q;

    invoke-virtual {v0}, Lcom/google/common/collect/q;->r()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method S()Lcom/google/common/collect/e3;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e3<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/q$a;->d:Lcom/google/common/collect/q;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/q$a;->d:Lcom/google/common/collect/q;

    invoke-virtual {v0}, Lcom/google/common/collect/q;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
