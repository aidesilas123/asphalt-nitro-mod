###### Class com.applovin.exoplayer2.e.i.w.a (com.applovin.exoplayer2.e.i.w$a)
.class final Lcom/applovin/exoplayer2/e/i/w$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/e/i/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final EN:Lcom/applovin/exoplayer2/l/x;

.field private EO:Z

.field private EP:Z

.field private EQ:Z

.field private ER:I

.field private final Fi:Lcom/applovin/exoplayer2/e/i/j;

.field private rJ:J

.field private final zS:Lcom/applovin/exoplayer2/l/ag;


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/e/i/j;Lcom/applovin/exoplayer2/l/ag;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/w$a;->Fi:Lcom/applovin/exoplayer2/e/i/j;

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/i/w$a;->zS:Lcom/applovin/exoplayer2/l/ag;

    new-instance p1, Lcom/applovin/exoplayer2/l/x;

    const/16 p2, 0x40

    new-array p2, p2, [B

    invoke-direct {p1, p2}, Lcom/applovin/exoplayer2/l/x;-><init>([B)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/w$a;->EN:Lcom/applovin/exoplayer2/l/x;

    return-void
.end method

.method private jd()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/w$a;->EN:Lcom/applovin/exoplayer2/l/x;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/w$a;->EN:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/w$a;->EO:Z

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/w$a;->EN:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/w$a;->EP:Z

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/w$a;->EN:Lcom/applovin/exoplayer2/l/x;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/w$a;->EN:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/e/i/w$a;->ER:I

    return-void
.end method

.method private js()V
    .registers 11

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/i/w$a;->rJ:J

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/w$a;->EO:Z

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/w$a;->EN:Lcom/applovin/exoplayer2/l/x;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/w$a;->EN:Lcom/applovin/exoplayer2/l/x;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v0

    int-to-long v3, v0

    const/16 v0, 0x1e

    shl-long/2addr v3, v0

    iget-object v5, p0, Lcom/applovin/exoplayer2/e/i/w$a;->EN:Lcom/applovin/exoplayer2/l/x;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    iget-object v5, p0, Lcom/applovin/exoplayer2/e/i/w$a;->EN:Lcom/applovin/exoplayer2/l/x;

    const/16 v7, 0xf

    invoke-virtual {v5, v7}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v5

    shl-int/2addr v5, v7

    int-to-long v8, v5

    or-long/2addr v3, v8

    iget-object v5, p0, Lcom/applovin/exoplayer2/e/i/w$a;->EN:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v5, v6}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    iget-object v5, p0, Lcom/applovin/exoplayer2/e/i/w$a;->EN:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v5, v7}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v5

    int-to-long v8, v5

    or-long/2addr v3, v8

    iget-object v5, p0, Lcom/applovin/exoplayer2/e/i/w$a;->EN:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v5, v6}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    iget-boolean v5, p0, Lcom/applovin/exoplayer2/e/i/w$a;->EQ:Z

    if-nez v5, :cond_79

    iget-boolean v5, p0, Lcom/applovin/exoplayer2/e/i/w$a;->EP:Z

    if-eqz v5, :cond_79

    iget-object v5, p0, Lcom/applovin/exoplayer2/e/i/w$a;->EN:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v5, v1}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/i/w$a;->EN:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v1

    int-to-long v1, v1

    shl-long v0, v1, v0

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/i/w$a;->EN:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v2, v6}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/i/w$a;->EN:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v2, v7}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v2

    shl-int/2addr v2, v7

    int-to-long v8, v2

    or-long/2addr v0, v8

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/i/w$a;->EN:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v2, v6}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/i/w$a;->EN:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v2, v7}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v2

    int-to-long v7, v2

    or-long/2addr v0, v7

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/i/w$a;->EN:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v2, v6}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/i/w$a;->zS:Lcom/applovin/exoplayer2/l/ag;

    invoke-virtual {v2, v0, v1}, Lcom/applovin/exoplayer2/l/ag;->br(J)J

    iput-boolean v6, p0, Lcom/applovin/exoplayer2/e/i/w$a;->EQ:Z

    :cond_79
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/w$a;->zS:Lcom/applovin/exoplayer2/l/ag;

    invoke-virtual {v0, v3, v4}, Lcom/applovin/exoplayer2/l/ag;->br(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/i/w$a;->rJ:J

    :cond_81
    return-void
.end method


# virtual methods
.method public K(Lcom/applovin/exoplayer2/l/y;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/w$a;->EN:Lcom/applovin/exoplayer2/l/x;

    iget-object v0, v0, Lcom/applovin/exoplayer2/l/x;->tf:[B

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/applovin/exoplayer2/l/y;->r([BII)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/w$a;->EN:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/x;->fx(I)V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/i/w$a;->jd()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/w$a;->EN:Lcom/applovin/exoplayer2/l/x;

    iget-object v0, v0, Lcom/applovin/exoplayer2/l/x;->tf:[B

    iget v2, p0, Lcom/applovin/exoplayer2/e/i/w$a;->ER:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/applovin/exoplayer2/l/y;->r([BII)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/w$a;->EN:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/x;->fx(I)V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/i/w$a;->js()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/w$a;->Fi:Lcom/applovin/exoplayer2/e/i/j;

    iget-wide v1, p0, Lcom/applovin/exoplayer2/e/i/w$a;->rJ:J

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Lcom/applovin/exoplayer2/e/i/j;->e(JI)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/w$a;->Fi:Lcom/applovin/exoplayer2/e/i/j;

    invoke-interface {v0, p1}, Lcom/applovin/exoplayer2/e/i/j;->K(Lcom/applovin/exoplayer2/l/y;)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/w$a;->Fi:Lcom/applovin/exoplayer2/e/i/j;

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i/j;->jc()V

    return-void
.end method

.method public jb()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/w$a;->EQ:Z

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/w$a;->Fi:Lcom/applovin/exoplayer2/e/i/j;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/e/i/j;->jb()V

    return-void
.end method
