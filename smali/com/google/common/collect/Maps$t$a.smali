###### Class com.google.common.collect.Maps.t.a (com.google.common.collect.Maps$t$a)
.class Lcom/google/common/collect/Maps$t$a;
.super Lcom/google/common/collect/Maps$b0;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps$t;->navigableKeySet()Ljava/util/NavigableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$b0<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/collect/Maps$t;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$t;Ljava/util/NavigableMap;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/Maps$t$a;->b:Lcom/google/common/collect/Maps$t;

    invoke-direct {p0, p2}, Lcom/google/common/collect/Maps$b0;-><init>(Ljava/util/NavigableMap;)V

    return-void
.end method


# virtual methods
.method public removeAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Maps$t$a;->b:Lcom/google/common/collect/Maps$t;

    invoke-static {v0}, Lcom/google/common/collect/Maps$t;->d(Lcom/google/common/collect/Maps$t;)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Maps$t$a;->b:Lcom/google/common/collect/Maps$t;

    invoke-static {v1}, Lcom/google/common/collect/Maps$t;->c(Lcom/google/common/collect/Maps$t;)Lcom/google/common/base/k;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/Maps$s;->e(Ljava/util/Map;Lcom/google/common/base/k;Ljava/util/Collection;)Z

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

    iget-object v0, p0, Lcom/google/common/collect/Maps$t$a;->b:Lcom/google/common/collect/Maps$t;

    invoke-static {v0}, Lcom/google/common/collect/Maps$t;->d(Lcom/google/common/collect/Maps$t;)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Maps$t$a;->b:Lcom/google/common/collect/Maps$t;

    invoke-static {v1}, Lcom/google/common/collect/Maps$t;->c(Lcom/google/common/collect/Maps$t;)Lcom/google/common/base/k;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/Maps$s;->f(Ljava/util/Map;Lcom/google/common/base/k;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method
