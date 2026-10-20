###### Class com.google.common.collect.Sets.e.a.C0251a (com.google.common.collect.Sets$e$a$a)
.class Lcom/google/common/collect/Sets$e$a$a;
.super Ljava/util/AbstractSet;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Sets$e$a;->e()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/BitSet;

.field final synthetic b:Lcom/google/common/collect/Sets$e$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Sets$e$a;Ljava/util/BitSet;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/Sets$e$a$a;->b:Lcom/google/common/collect/Sets$e$a;

    iput-object p2, p0, Lcom/google/common/collect/Sets$e$a$a;->a:Ljava/util/BitSet;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/Sets$e$a$a;->b:Lcom/google/common/collect/Sets$e$a;

    iget-object v0, v0, Lcom/google/common/collect/Sets$e$a;->d:Lcom/google/common/collect/Sets$e;

    iget-object v0, v0, Lcom/google/common/collect/Sets$e;->b:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1c

    iget-object v0, p0, Lcom/google/common/collect/Sets$e$a$a;->a:Ljava/util/BitSet;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/Sets$e$a$a$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Sets$e$a$a$a;-><init>(Lcom/google/common/collect/Sets$e$a$a;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/Sets$e$a$a;->b:Lcom/google/common/collect/Sets$e$a;

    iget-object v0, v0, Lcom/google/common/collect/Sets$e$a;->d:Lcom/google/common/collect/Sets$e;

    iget v0, v0, Lcom/google/common/collect/Sets$e;->a:I

    return v0
.end method
