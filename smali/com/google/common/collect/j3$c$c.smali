###### Class com.google.common.collect.j3.c.C0256c (com.google.common.collect.j3$c$c)
.class Lcom/google/common/collect/j3$c$c;
.super Lcom/google/common/collect/Maps$y;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/j3$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$y<",
        "TR;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/collect/j3$c;


# direct methods
.method constructor <init>(Lcom/google/common/collect/j3$c;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/j3$c$c;->b:Lcom/google/common/collect/j3$c;

    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$y;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/j3$c$c;->b:Lcom/google/common/collect/j3$c;

    iget-object v1, v0, Lcom/google/common/collect/j3$c;->e:Lcom/google/common/collect/j3;

    iget-object v0, v0, Lcom/google/common/collect/j3$c;->d:Ljava/lang/Object;

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/j3;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/j3$c$c;->b:Lcom/google/common/collect/j3$c;

    iget-object v1, v0, Lcom/google/common/collect/j3$c;->e:Lcom/google/common/collect/j3;

    iget-object v0, v0, Lcom/google/common/collect/j3$c;->d:Ljava/lang/Object;

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/j3;->C(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
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

    iget-object v0, p0, Lcom/google/common/collect/j3$c$c;->b:Lcom/google/common/collect/j3$c;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/k;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/k;)Lcom/google/common/base/k;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->v(Lcom/google/common/base/k;)Lcom/google/common/base/k;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/j3$c;->d(Lcom/google/common/base/k;)Z

    move-result p1

    return p1
.end method
