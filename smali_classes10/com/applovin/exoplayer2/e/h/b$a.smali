###### Class com.applovin.exoplayer2.e.h.b.a (com.applovin.exoplayer2.e.h.b$a)
.class final Lcom/applovin/exoplayer2/e/h/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/h/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/e/h/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private BD:Lcom/applovin/exoplayer2/e/p;

.field private BF:J

.field private uA:J

.field private uJ:Lcom/applovin/exoplayer2/e/p$a;


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/e/p;Lcom/applovin/exoplayer2/e/p$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/h/b$a;->BD:Lcom/applovin/exoplayer2/e/p;

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/h/b$a;->uJ:Lcom/applovin/exoplayer2/e/p$a;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/h/b$a;->uA:J

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/h/b$a;->BF:J

    return-void
.end method


# virtual methods
.method public N(Lcom/applovin/exoplayer2/e/i;)J
    .registers 8

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/h/b$a;->BF:J

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-ltz p1, :cond_11

    const-wide/16 v4, 0x2

    add-long/2addr v0, v4

    neg-long v0, v0

    iput-wide v2, p0, Lcom/applovin/exoplayer2/e/h/b$a;->BF:J

    return-wide v0

    :cond_11
    return-wide v2
.end method

.method public aC(J)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/h/b$a;->uJ:Lcom/applovin/exoplayer2/e/p$a;

    iget-object v0, v0, Lcom/applovin/exoplayer2/e/p$a;->uK:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lcom/applovin/exoplayer2/l/ai;->a([JJZZ)I

    move-result p1

    aget-wide p1, v0, p1

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/h/b$a;->BF:J

    return-void
.end method

.method public aD(J)V
    .registers 3

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/h/b$a;->uA:J

    return-void
.end method

.method public iX()Lcom/applovin/exoplayer2/e/v;
    .registers 6

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/h/b$a;->uA:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    new-instance v0, Lcom/applovin/exoplayer2/e/o;

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/h/b$a;->BD:Lcom/applovin/exoplayer2/e/p;

    iget-wide v2, p0, Lcom/applovin/exoplayer2/e/h/b$a;->uA:J

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/exoplayer2/e/o;-><init>(Lcom/applovin/exoplayer2/e/p;J)V

    return-object v0
.end method
