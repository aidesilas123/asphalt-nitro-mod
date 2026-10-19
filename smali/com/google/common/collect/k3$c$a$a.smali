###### Class com.google.common.collect.k3.c.a.C0259a (com.google.common.collect.k3$c$a$a)
.class Lcom/google/common/collect/k3$c$a$a;
.super Lcom/google/common/collect/z0;
.source "Synchronized.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/k3$c$a;->b(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/z0<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Lcom/google/common/collect/k3$c$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/k3$c$a;Ljava/util/Map$Entry;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/k3$c$a$a;->b:Lcom/google/common/collect/k3$c$a;

    iput-object p2, p0, Lcom/google/common/collect/k3$c$a$a;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/z0;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic B()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/k3$c$a$a;->C()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected C()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/k3$c$a$a;->a:Ljava/util/Map$Entry;

    return-object v0
.end method

.method public E()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/k3$c$a$a;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/common/collect/k3$c$a$a;->b:Lcom/google/common/collect/k3$c$a;

    iget-object v1, v1, Lcom/google/common/collect/k3$c$a;->b:Lcom/google/common/collect/k3$c;

    iget-object v1, v1, Lcom/google/common/collect/k3$o;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/common/collect/k3;->d(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/k3$c$a$a;->E()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
