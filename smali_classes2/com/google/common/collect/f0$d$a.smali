###### Class com.google.common.collect.f0.d.a (com.google.common.collect.f0$d$a)
.class Lcom/google/common/collect/f0$d$a;
.super Lcom/google/common/collect/AbstractIterator;
.source "DenseImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/f0$d;->p()Lcom/google/common/collect/o3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private c:I

.field private final d:I

.field final synthetic e:Lcom/google/common/collect/f0$d;


# direct methods
.method constructor <init>(Lcom/google/common/collect/f0$d;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/f0$d$a;->e:Lcom/google/common/collect/f0$d;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/f0$d$a;->c:I

    invoke-virtual {p1}, Lcom/google/common/collect/f0$d;->t()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/f0$d$a;->d:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic b()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/f0$d$a;->e()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected e()Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/collect/f0$d$a;->c:I

    :goto_2
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/f0$d$a;->c:I

    iget v0, p0, Lcom/google/common/collect/f0$d$a;->c:I

    iget v1, p0, Lcom/google/common/collect/f0$d$a;->d:I

    if-ge v0, v1, :cond_24

    iget-object v1, p0, Lcom/google/common/collect/f0$d$a;->e:Lcom/google/common/collect/f0$d;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/f0$d;->r(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v1, p0, Lcom/google/common/collect/f0$d$a;->e:Lcom/google/common/collect/f0$d;

    iget v2, p0, Lcom/google/common/collect/f0$d$a;->c:I

    invoke-virtual {v1, v2}, Lcom/google/common/collect/f0$d;->q(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0

    :cond_21
    iget v0, p0, Lcom/google/common/collect/f0$d$a;->c:I

    goto :goto_2

    :cond_24
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method
