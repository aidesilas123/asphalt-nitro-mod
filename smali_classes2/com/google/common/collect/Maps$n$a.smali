###### Class com.google.common.collect.Maps.n.a (com.google.common.collect.Maps$n$a)
.class Lcom/google/common/collect/Maps$n$a;
.super Lcom/google/common/collect/Maps$p;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps$n;->a()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$p<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/Maps$n;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$n;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/Maps$n$a;->a:Lcom/google/common/collect/Maps$n;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$p;-><init>()V

    return-void
.end method


# virtual methods
.method i()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Maps$n$a;->a:Lcom/google/common/collect/Maps$n;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Maps$n$a;->a:Lcom/google/common/collect/Maps$n;

    invoke-virtual {v0}, Lcom/google/common/collect/Maps$n;->d()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Maps$n$a;->a:Lcom/google/common/collect/Maps$n;

    iget-object v1, v1, Lcom/google/common/collect/Maps$n;->e:Lcom/google/common/base/f;

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->h(Ljava/util/Set;Lcom/google/common/base/f;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
