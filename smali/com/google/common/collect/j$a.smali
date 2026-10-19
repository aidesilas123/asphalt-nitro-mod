###### Class com.google.common.collect.j.a (com.google.common.collect.j$a)
.class Lcom/google/common/collect/j$a;
.super Lcom/google/common/collect/Multimaps$f;
.source "AbstractMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multimaps$f<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/j;


# direct methods
.method constructor <init>(Lcom/google/common/collect/j;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/j$a;->a:Lcom/google/common/collect/j;

    invoke-direct {p0}, Lcom/google/common/collect/Multimaps$f;-><init>()V

    return-void
.end method


# virtual methods
.method e()Lcom/google/common/collect/b2;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/b2<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/j$a;->a:Lcom/google/common/collect/j;

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

    iget-object v0, p0, Lcom/google/common/collect/j$a;->a:Lcom/google/common/collect/j;

    invoke-virtual {v0}, Lcom/google/common/collect/j;->h()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
