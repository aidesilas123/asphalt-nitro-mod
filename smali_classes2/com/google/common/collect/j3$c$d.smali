###### Class com.google.common.collect.j3.c.d (com.google.common.collect.j3$c$d)
.class Lcom/google/common/collect/j3$c$d;
.super Lcom/google/common/collect/Maps$n0;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/j3$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$n0<",
        "TR;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/collect/j3$c;


# direct methods
.method constructor <init>(Lcom/google/common/collect/j3$c;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/j3$c$d;->b:Lcom/google/common/collect/j3$c;

    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$n0;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .registers 3

    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/google/common/collect/j3$c$d;->b:Lcom/google/common/collect/j3$c;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->equalTo(Ljava/lang/Object;)Lcom/google/common/base/k;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->N(Lcom/google/common/base/k;)Lcom/google/common/base/k;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/j3$c;->d(Lcom/google/common/base/k;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/j3$c$d;->b:Lcom/google/common/collect/j3$c;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/k;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->N(Lcom/google/common/base/k;)Lcom/google/common/base/k;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/j3$c;->d(Lcom/google/common/base/k;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/j3$c$d;->b:Lcom/google/common/collect/j3$c;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/k;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/k;)Lcom/google/common/base/k;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->N(Lcom/google/common/base/k;)Lcom/google/common/base/k;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/j3$c;->d(Lcom/google/common/base/k;)Z

    move-result p1

    return p1
.end method
