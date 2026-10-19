###### Class com.google.common.collect.Maps.r (com.google.common.collect.Maps$r)
.class final Lcom/google/common/collect/Maps$r;
.super Lcom/google/common/collect/Maps$s;
.source "Maps.java"

# interfaces
.implements Lcom/google/common/collect/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "r"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Maps$s<",
        "TK;TV;>;",
        "Lcom/google/common/collect/w<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final g:Lcom/google/common/collect/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/w<",
            "TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/w;Lcom/google/common/base/k;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/w<",
            "TK;TV;>;",
            "Lcom/google/common/base/k<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Maps$s;-><init>(Ljava/util/Map;Lcom/google/common/base/k;)V

    new-instance v0, Lcom/google/common/collect/Maps$r;

    invoke-interface {p1}, Lcom/google/common/collect/w;->M()Lcom/google/common/collect/w;

    move-result-object p1

    invoke-static {p2}, Lcom/google/common/collect/Maps$r;->h(Lcom/google/common/base/k;)Lcom/google/common/base/k;

    move-result-object p2

    invoke-direct {v0, p1, p2, p0}, Lcom/google/common/collect/Maps$r;-><init>(Lcom/google/common/collect/w;Lcom/google/common/base/k;Lcom/google/common/collect/w;)V

    iput-object v0, p0, Lcom/google/common/collect/Maps$r;->g:Lcom/google/common/collect/w;

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/w;Lcom/google/common/base/k;Lcom/google/common/collect/w;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/w<",
            "TK;TV;>;",
            "Lcom/google/common/base/k<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;",
            "Lcom/google/common/collect/w<",
            "TV;TK;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Maps$s;-><init>(Ljava/util/Map;Lcom/google/common/base/k;)V

    iput-object p3, p0, Lcom/google/common/collect/Maps$r;->g:Lcom/google/common/collect/w;

    return-void
.end method

.method private static h(Lcom/google/common/base/k;)Lcom/google/common/base/k;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/k<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lcom/google/common/base/k<",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/Maps$r$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$r$a;-><init>(Lcom/google/common/base/k;)V

    return-object v0
.end method


# virtual methods
.method public M()Lcom/google/common/collect/w;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/w<",
            "TV;TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Maps$r;->g:Lcom/google/common/collect/w;

    return-object v0
.end method

.method i()Lcom/google/common/collect/w;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/w<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Maps$m;->d:Ljava/util/Map;

    check-cast v0, Lcom/google/common/collect/w;

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$r;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Maps$r;->g:Lcom/google/common/collect/w;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
