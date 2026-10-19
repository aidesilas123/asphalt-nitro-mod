###### Class com.google.common.collect.ImmutableMap.c.a (com.google.common.collect.ImmutableMap$c$a)
.class Lcom/google/common/collect/ImmutableMap$c$a;
.super Lcom/google/common/collect/r1;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableMap$c;->c()Lcom/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/r1<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/google/common/collect/ImmutableMap$c;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap$c;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMap$c$a;->c:Lcom/google/common/collect/ImmutableMap$c;

    invoke-direct {p0}, Lcom/google/common/collect/r1;-><init>()V

    return-void
.end method


# virtual methods
.method B()Lcom/google/common/collect/ImmutableMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$c$a;->c:Lcom/google/common/collect/ImmutableMap$c;

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap$c$a;->n()Lcom/google/common/collect/o3;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/google/common/collect/o3;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/o3<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$c$a;->c:Lcom/google/common/collect/ImmutableMap$c;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$c;->p()Lcom/google/common/collect/o3;

    move-result-object v0

    return-object v0
.end method
