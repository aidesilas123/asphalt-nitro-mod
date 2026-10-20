###### Class com.applovin.exoplayer2.common.base.Optional.AnonymousClass1.C00241 (com.applovin.exoplayer2.common.base.Optional$1$1)
.class Lcom/applovin/exoplayer2/common/base/Optional$1$1;
.super Lcom/applovin/exoplayer2/common/base/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/exoplayer2/common/base/Optional$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/applovin/exoplayer2/common/base/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final oB:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Lcom/applovin/exoplayer2/common/base/Optional<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic oC:Lcom/applovin/exoplayer2/common/base/Optional$1;


# direct methods
.method constructor <init>(Lcom/applovin/exoplayer2/common/base/Optional$1;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/exoplayer2/common/base/Optional$1$1;->oC:Lcom/applovin/exoplayer2/common/base/Optional$1;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/common/base/b;-><init>()V

    iget-object p1, p1, Lcom/applovin/exoplayer2/common/base/Optional$1;->oA:Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/exoplayer2/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Iterator;

    iput-object p1, p0, Lcom/applovin/exoplayer2/common/base/Optional$1$1;->oB:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method protected eT()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/common/base/Optional$1$1;->oB:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/base/Optional$1$1;->oB:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/common/base/Optional;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1b
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/base/b;->eU()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
