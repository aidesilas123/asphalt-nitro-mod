###### Class com.applovin.exoplayer2.i.k (com.applovin.exoplayer2.i.k)
.class public abstract Lcom/applovin/exoplayer2/i/k;
.super Lcom/applovin/exoplayer2/c/i;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/i/f;


# instance fields
.field private Ou:Lcom/applovin/exoplayer2/i/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private dD:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/c/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JLcom/applovin/exoplayer2/i/f;J)V
    .registers 8

    iput-wide p1, p0, Lcom/applovin/exoplayer2/c/i;->rJ:J

    iput-object p3, p0, Lcom/applovin/exoplayer2/i/k;->Ou:Lcom/applovin/exoplayer2/i/f;

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p3, p4, v0

    if-nez p3, :cond_e

    goto :goto_f

    :cond_e
    move-wide p1, p4

    :goto_f
    iput-wide p1, p0, Lcom/applovin/exoplayer2/i/k;->dD:J

    return-void
.end method

.method public be(J)I
    .registers 6

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/k;->Ou:Lcom/applovin/exoplayer2/i/f;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/i/f;

    iget-wide v1, p0, Lcom/applovin/exoplayer2/i/k;->dD:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/applovin/exoplayer2/i/f;->be(J)I

    move-result p1

    return p1
.end method

.method public bf(J)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/i/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/k;->Ou:Lcom/applovin/exoplayer2/i/f;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/i/f;

    iget-wide v1, p0, Lcom/applovin/exoplayer2/i/k;->dD:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/applovin/exoplayer2/i/f;->bf(J)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .registers 2

    invoke-super {p0}, Lcom/applovin/exoplayer2/c/a;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/k;->Ou:Lcom/applovin/exoplayer2/i/f;

    return-void
.end method

.method public ej(I)J
    .registers 6

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/k;->Ou:Lcom/applovin/exoplayer2/i/f;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/i/f;

    invoke-interface {v0, p1}, Lcom/applovin/exoplayer2/i/f;->ej(I)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/applovin/exoplayer2/i/k;->dD:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public lX()I
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/k;->Ou:Lcom/applovin/exoplayer2/i/f;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/i/f;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/i/f;->lX()I

    move-result v0

    return v0
.end method
