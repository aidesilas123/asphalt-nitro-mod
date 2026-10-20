###### Class com.applovin.exoplayer2.e.i.s (com.applovin.exoplayer2.e.i.s)
.class public final Lcom/applovin/exoplayer2/e/i/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/i/x;


# instance fields
.field private dU:Lcom/applovin/exoplayer2/v;

.field private wl:Lcom/applovin/exoplayer2/e/x;

.field private zS:Lcom/applovin/exoplayer2/l/ag;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/applovin/exoplayer2/v$a;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/v$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/v$a;->m(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/v$a;->bT()Lcom/applovin/exoplayer2/v;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/s;->dU:Lcom/applovin/exoplayer2/v;

    return-void
.end method

.method private io()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/s;->zS:Lcom/applovin/exoplayer2/l/ag;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->N(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/s;->wl:Lcom/applovin/exoplayer2/e/x;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public K(Lcom/applovin/exoplayer2/l/y;)V
    .registers 10

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/i/s;->io()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/s;->zS:Lcom/applovin/exoplayer2/l/ag;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/ag;->pT()J

    move-result-wide v2

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/s;->zS:Lcom/applovin/exoplayer2/l/ag;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/ag;->pU()J

    move-result-wide v0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_49

    cmp-long v6, v0, v4

    if-nez v6, :cond_1d

    goto :goto_49

    :cond_1d
    iget-object v4, p0, Lcom/applovin/exoplayer2/e/i/s;->dU:Lcom/applovin/exoplayer2/v;

    iget-wide v5, v4, Lcom/applovin/exoplayer2/v;->dD:J

    cmp-long v7, v0, v5

    if-eqz v7, :cond_38

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/v;->bR()Lcom/applovin/exoplayer2/v$a;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/applovin/exoplayer2/v$a;->p(J)Lcom/applovin/exoplayer2/v$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/v$a;->bT()Lcom/applovin/exoplayer2/v;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/i/s;->dU:Lcom/applovin/exoplayer2/v;

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/i/s;->wl:Lcom/applovin/exoplayer2/e/x;

    invoke-interface {v1, v0}, Lcom/applovin/exoplayer2/e/x;->j(Lcom/applovin/exoplayer2/v;)V

    :cond_38
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result v5

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/s;->wl:Lcom/applovin/exoplayer2/e/x;

    invoke-interface {v0, p1, v5}, Lcom/applovin/exoplayer2/e/x;->c(Lcom/applovin/exoplayer2/l/y;I)V

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/i/s;->wl:Lcom/applovin/exoplayer2/e/x;

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/applovin/exoplayer2/e/x;->a(JIIILcom/applovin/exoplayer2/e/x$a;)V

    :cond_49
    :goto_49
    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/l/ag;Lcom/applovin/exoplayer2/e/j;Lcom/applovin/exoplayer2/e/i/ad$d;)V
    .registers 4

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/s;->zS:Lcom/applovin/exoplayer2/l/ag;

    invoke-virtual {p3}, Lcom/applovin/exoplayer2/e/i/ad$d;->jy()V

    invoke-virtual {p3}, Lcom/applovin/exoplayer2/e/i/ad$d;->jz()I

    move-result p1

    const/4 p3, 0x5

    invoke-interface {p2, p1, p3}, Lcom/applovin/exoplayer2/e/j;->y(II)Lcom/applovin/exoplayer2/e/x;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/s;->wl:Lcom/applovin/exoplayer2/e/x;

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/i/s;->dU:Lcom/applovin/exoplayer2/v;

    invoke-interface {p1, p2}, Lcom/applovin/exoplayer2/e/x;->j(Lcom/applovin/exoplayer2/v;)V

    return-void
.end method
