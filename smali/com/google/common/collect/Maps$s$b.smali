###### Class com.google.common.collect.Maps.s.b (com.google.common.collect.Maps$s$b)
.class Lcom/google/common/collect/Maps$s$b;
.super Lcom/google/common/collect/Maps$y;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps$s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$y<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/collect/Maps$s;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$s;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/Maps$s$b;->b:Lcom/google/common/collect/Maps$s;

    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$y;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/Maps$s$b;->b:Lcom/google/common/collect/Maps$s;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Maps$m;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/common/collect/Maps$s$b;->b:Lcom/google/common/collect/Maps$s;

    iget-object v0, v0, Lcom/google/common/collect/Maps$m;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Maps$s$b;->b:Lcom/google/common/collect/Maps$s;

    iget-object v1, v0, Lcom/google/common/collect/Maps$m;->d:Ljava/util/Map;

    iget-object v0, v0, Lcom/google/common/collect/Maps$m;->e:Lcom/google/common/base/k;

    invoke-static {v1, v0, p1}, Lcom/google/common/collect/Maps$s;->e(Ljava/util/Map;Lcom/google/common/base/k;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Maps$s$b;->b:Lcom/google/common/collect/Maps$s;

    iget-object v1, v0, Lcom/google/common/collect/Maps$m;->d:Ljava/util/Map;

    iget-object v0, v0, Lcom/google/common/collect/Maps$m;->e:Lcom/google/common/base/k;

    invoke-static {v1, v0, p1}, Lcom/google/common/collect/Maps$s;->f(Ljava/util/Map;Lcom/google/common/base/k;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$y;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$y;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
