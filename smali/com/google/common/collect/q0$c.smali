###### Class com.google.common.collect.q0.c (com.google.common.collect.q0$c)
.class Lcom/google/common/collect/q0$c;
.super Lcom/google/common/collect/u0;
.source "FilteredKeyMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/u0<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/q0;


# direct methods
.method constructor <init>(Lcom/google/common/collect/q0;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/q0$c;->a:Lcom/google/common/collect/q0;

    invoke-direct {p0}, Lcom/google/common/collect/u0;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic B()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/q0$c;->C()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected C()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/q0$c;->a:Lcom/google/common/collect/q0;

    iget-object v0, v0, Lcom/google/common/collect/q0;->d:Lcom/google/common/collect/b2;

    invoke-interface {v0}, Lcom/google/common/collect/b2;->f()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/q0$c;->a:Lcom/google/common/collect/q0;

    invoke-virtual {v1}, Lcom/google/common/collect/q0;->y()Lcom/google/common/base/k;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Collections2;->filter(Ljava/util/Collection;Lcom/google/common/base/k;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_33

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/google/common/collect/q0$c;->a:Lcom/google/common/collect/q0;

    iget-object v0, v0, Lcom/google/common/collect/q0;->d:Lcom/google/common/collect/b2;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/b2;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/google/common/collect/q0$c;->a:Lcom/google/common/collect/q0;

    iget-object v0, v0, Lcom/google/common/collect/q0;->e:Lcom/google/common/base/k;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/k;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/google/common/collect/q0$c;->a:Lcom/google/common/collect/q0;

    iget-object v0, v0, Lcom/google/common/collect/q0;->d:Lcom/google/common/collect/b2;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/google/common/collect/b2;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_33
    const/4 p1, 0x0

    return p1
.end method
