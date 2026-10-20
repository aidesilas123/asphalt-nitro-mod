###### Class com.google.common.collect.Sets.k.a (com.google.common.collect.Sets$k$a)
.class Lcom/google/common/collect/Sets$k$a;
.super Lcom/google/common/collect/e;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Sets$k;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/e<",
        "Ljava/util/Set<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/google/common/collect/Sets$k;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Sets$k;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/Sets$k$a;->c:Lcom/google/common/collect/Sets$k;

    invoke-direct {p0, p2}, Lcom/google/common/collect/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Sets$k$a;->b(I)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method protected b(I)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/Sets$m;

    iget-object v1, p0, Lcom/google/common/collect/Sets$k$a;->c:Lcom/google/common/collect/Sets$k;

    iget-object v1, v1, Lcom/google/common/collect/Sets$k;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/Sets$m;-><init>(Lcom/google/common/collect/ImmutableMap;I)V

    return-object v0
.end method
