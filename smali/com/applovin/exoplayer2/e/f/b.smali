###### Class com.applovin.exoplayer2.e.f.b (com.applovin.exoplayer2.e.f.b)
.class final Lcom/applovin/exoplayer2/e/f/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/f/e;


# instance fields
.field private fH:J

.field private final yO:J

.field private final yP:Lcom/applovin/exoplayer2/l/r;

.field private final yQ:Lcom/applovin/exoplayer2/l/r;


# direct methods
.method public constructor <init>(JJJ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/f/b;->fH:J

    iput-wide p5, p0, Lcom/applovin/exoplayer2/e/f/b;->yO:J

    new-instance p1, Lcom/applovin/exoplayer2/l/r;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/l/r;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/f/b;->yP:Lcom/applovin/exoplayer2/l/r;

    new-instance p2, Lcom/applovin/exoplayer2/l/r;

    invoke-direct {p2}, Lcom/applovin/exoplayer2/l/r;-><init>()V

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/f/b;->yQ:Lcom/applovin/exoplayer2/l/r;

    const-wide/16 p5, 0x0

    invoke-virtual {p1, p5, p6}, Lcom/applovin/exoplayer2/l/r;->bo(J)V

    invoke-virtual {p2, p3, p4}, Lcom/applovin/exoplayer2/l/r;->bo(J)V

    return-void
.end method


# virtual methods
.method public ai(J)Lcom/applovin/exoplayer2/e/v$a;
    .registers 10

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/f/b;->yP:Lcom/applovin/exoplayer2/l/r;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lcom/applovin/exoplayer2/l/ai;->a(Lcom/applovin/exoplayer2/l/r;JZZ)I

    move-result v0

    new-instance v2, Lcom/applovin/exoplayer2/e/w;

    iget-object v3, p0, Lcom/applovin/exoplayer2/e/f/b;->yP:Lcom/applovin/exoplayer2/l/r;

    invoke-virtual {v3, v0}, Lcom/applovin/exoplayer2/l/r;->fu(I)J

    move-result-wide v3

    iget-object v5, p0, Lcom/applovin/exoplayer2/e/f/b;->yQ:Lcom/applovin/exoplayer2/l/r;

    invoke-virtual {v5, v0}, Lcom/applovin/exoplayer2/l/r;->fu(I)J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/applovin/exoplayer2/e/w;-><init>(JJ)V

    iget-wide v3, v2, Lcom/applovin/exoplayer2/e/w;->rJ:J

    cmp-long v5, v3, p1

    if-eqz v5, :cond_40

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/f/b;->yP:Lcom/applovin/exoplayer2/l/r;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/r;->size()I

    move-result p1

    sub-int/2addr p1, v1

    if-ne v0, p1, :cond_28

    goto :goto_40

    :cond_28
    new-instance p1, Lcom/applovin/exoplayer2/e/w;

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/f/b;->yP:Lcom/applovin/exoplayer2/l/r;

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Lcom/applovin/exoplayer2/l/r;->fu(I)J

    move-result-wide v3

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/f/b;->yQ:Lcom/applovin/exoplayer2/l/r;

    invoke-virtual {p2, v0}, Lcom/applovin/exoplayer2/l/r;->fu(I)J

    move-result-wide v0

    invoke-direct {p1, v3, v4, v0, v1}, Lcom/applovin/exoplayer2/e/w;-><init>(JJ)V

    new-instance p2, Lcom/applovin/exoplayer2/e/v$a;

    invoke-direct {p2, v2, p1}, Lcom/applovin/exoplayer2/e/v$a;-><init>(Lcom/applovin/exoplayer2/e/w;Lcom/applovin/exoplayer2/e/w;)V

    return-object p2

    :cond_40
    :goto_40
    new-instance p1, Lcom/applovin/exoplayer2/e/v$a;

    invoke-direct {p1, v2}, Lcom/applovin/exoplayer2/e/v$a;-><init>(Lcom/applovin/exoplayer2/e/w;)V

    return-object p1
.end method

.method public aq(J)J
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/f/b;->yQ:Lcom/applovin/exoplayer2/l/r;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lcom/applovin/exoplayer2/l/ai;->a(Lcom/applovin/exoplayer2/l/r;JZZ)I

    move-result p1

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/f/b;->yP:Lcom/applovin/exoplayer2/l/r;

    invoke-virtual {p2, p1}, Lcom/applovin/exoplayer2/l/r;->fu(I)J

    move-result-wide p1

    return-wide p1
.end method

.method public ar(J)Z
    .registers 7

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/f/b;->yP:Lcom/applovin/exoplayer2/l/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/r;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/r;->fu(I)J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/32 v0, 0x186a0

    cmp-long v3, p1, v0

    if-gez v3, :cond_15

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    return v2
.end method

.method as(J)V
    .registers 3

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/f/b;->fH:J

    return-void
.end method

.method public dd()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/f/b;->fH:J

    return-wide v0
.end method

.method public hU()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public iF()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/f/b;->yO:J

    return-wide v0
.end method

.method public s(JJ)V
    .registers 6

    invoke-virtual {p0, p1, p2}, Lcom/applovin/exoplayer2/e/f/b;->ar(J)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/f/b;->yP:Lcom/applovin/exoplayer2/l/r;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/l/r;->bo(J)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/f/b;->yQ:Lcom/applovin/exoplayer2/l/r;

    invoke-virtual {p1, p3, p4}, Lcom/applovin/exoplayer2/l/r;->bo(J)V

    return-void
.end method
