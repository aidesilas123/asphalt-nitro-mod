###### Class com.google.common.collect.Maps.x.a (com.google.common.collect.Maps$x$a)
.class Lcom/google/common/collect/Maps$x$a;
.super Lcom/google/common/collect/Maps$p;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps$x;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$p<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/Maps$x;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$x;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/Maps$x$a;->a:Lcom/google/common/collect/Maps$x;

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

    iget-object v0, p0, Lcom/google/common/collect/Maps$x$a;->a:Lcom/google/common/collect/Maps$x;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Maps$x$a;->a:Lcom/google/common/collect/Maps$x;

    invoke-virtual {v0}, Lcom/google/common/collect/Maps$x;->a()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
