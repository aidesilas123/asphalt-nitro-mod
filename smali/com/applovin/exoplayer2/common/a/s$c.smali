###### Class com.applovin.exoplayer2.common.a.s.c (com.applovin.exoplayer2.common.a.s$c)
.class Lcom/applovin/exoplayer2/common/a/s$c;
.super Lcom/applovin/exoplayer2/common/a/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/common/a/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/applovin/exoplayer2/common/a/s<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final transient fR:I

.field final transient oU:I

.field final synthetic qf:Lcom/applovin/exoplayer2/common/a/s;


# direct methods
.method constructor <init>(Lcom/applovin/exoplayer2/common/a/s;II)V
    .registers 4

    iput-object p1, p0, Lcom/applovin/exoplayer2/common/a/s$c;->qf:Lcom/applovin/exoplayer2/common/a/s;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/common/a/s;-><init>()V

    iput p2, p0, Lcom/applovin/exoplayer2/common/a/s$c;->oU:I

    iput p3, p0, Lcom/applovin/exoplayer2/common/a/s$c;->fR:I

    return-void
.end method


# virtual methods
.method fV()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/s$c;->qf:Lcom/applovin/exoplayer2/common/a/s;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/common/a/q;->fV()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method fW()I
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/s$c;->qf:Lcom/applovin/exoplayer2/common/a/s;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/common/a/q;->fW()I

    move-result v0

    iget v1, p0, Lcom/applovin/exoplayer2/common/a/s$c;->oU:I

    add-int/2addr v0, v1

    return v0
.end method

.method fX()I
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/s$c;->qf:Lcom/applovin/exoplayer2/common/a/s;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/common/a/q;->fW()I

    move-result v0

    iget v1, p0, Lcom/applovin/exoplayer2/common/a/s$c;->oU:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/applovin/exoplayer2/common/a/s$c;->fR:I

    add-int/2addr v0, v1

    return v0
.end method

.method fZ()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget v0, p0, Lcom/applovin/exoplayer2/common/a/s$c;->fR:I

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/common/base/Preconditions;->checkElementIndex(II)I

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/s$c;->qf:Lcom/applovin/exoplayer2/common/a/s;

    iget v1, p0, Lcom/applovin/exoplayer2/common/a/s$c;->oU:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-super {p0}, Lcom/applovin/exoplayer2/common/a/s;->fU()Lcom/applovin/exoplayer2/common/a/ax;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator()Ljava/util/ListIterator;
    .registers 2

    invoke-super {p0}, Lcom/applovin/exoplayer2/common/a/s;->gb()Lcom/applovin/exoplayer2/common/a/ay;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .registers 2

    invoke-super {p0, p1}, Lcom/applovin/exoplayer2/common/a/s;->bi(I)Lcom/applovin/exoplayer2/common/a/ay;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/common/a/s$c;->fR:I

    return v0
.end method

.method public synthetic subList(II)Ljava/util/List;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/applovin/exoplayer2/common/a/s$c;->t(II)Lcom/applovin/exoplayer2/common/a/s;

    move-result-object p1

    return-object p1
.end method

.method public t(II)Lcom/applovin/exoplayer2/common/a/s;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/applovin/exoplayer2/common/a/s<",
            "TE;>;"
        }
    .end annotation

    iget v0, p0, Lcom/applovin/exoplayer2/common/a/s$c;->fR:I

    invoke-static {p1, p2, v0}, Lcom/applovin/exoplayer2/common/base/Preconditions;->checkPositionIndexes(III)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/s$c;->qf:Lcom/applovin/exoplayer2/common/a/s;

    iget v1, p0, Lcom/applovin/exoplayer2/common/a/s$c;->oU:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/common/a/s;->t(II)Lcom/applovin/exoplayer2/common/a/s;

    move-result-object p1

    return-object p1
.end method
