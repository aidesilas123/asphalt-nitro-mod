###### Class com.google.common.collect.Multimaps.g.a (com.google.common.collect.Multimaps$g$a)
.class Lcom/google/common/collect/Multimaps$g$a;
.super Lcom/google/common/collect/Sets$j;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multimaps$g;->get(Ljava/lang/Object;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Sets$j<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/google/common/collect/Multimaps$g;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$g;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/Multimaps$g$a;->b:Lcom/google/common/collect/Multimaps$g;

    iput-object p2, p0, Lcom/google/common/collect/Multimaps$g$a;->a:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/Sets$j;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/Multimaps$g$a$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$g$a$a;-><init>(Lcom/google/common/collect/Multimaps$g$a;)V

    return-object v0
.end method

.method public size()I
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$g$a;->b:Lcom/google/common/collect/Multimaps$g;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$g;->d:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/Multimaps$g$a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
