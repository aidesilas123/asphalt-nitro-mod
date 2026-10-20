###### Class com.applovin.exoplayer2.common.a.a (com.applovin.exoplayer2.common.a.a)
.class abstract Lcom/applovin/exoplayer2/common/a/a;
.super Lcom/applovin/exoplayer2/common/a/ay;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/applovin/exoplayer2/common/a/ay<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final oW:I

.field private oX:I


# direct methods
.method protected constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Lcom/applovin/exoplayer2/common/a/ay;-><init>()V

    invoke-static {p2, p1}, Lcom/applovin/exoplayer2/common/base/Preconditions;->checkPositionIndex(II)I

    iput p1, p0, Lcom/applovin/exoplayer2/common/a/a;->oW:I

    iput p2, p0, Lcom/applovin/exoplayer2/common/a/a;->oX:I

    return-void
.end method


# virtual methods
.method protected abstract get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public final hasNext()Z
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/common/a/a;->oX:I

    iget v1, p0, Lcom/applovin/exoplayer2/common/a/a;->oW:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final hasPrevious()Z
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/common/a/a;->oX:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/applovin/exoplayer2/common/a/a;->oX:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/applovin/exoplayer2/common/a/a;->oX:I

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/common/a/a;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final nextIndex()I
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/common/a/a;->oX:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/a;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/applovin/exoplayer2/common/a/a;->oX:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/applovin/exoplayer2/common/a/a;->oX:I

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/common/a/a;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final previousIndex()I
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/common/a/a;->oX:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
