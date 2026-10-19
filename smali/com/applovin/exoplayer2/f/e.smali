###### Class com.applovin.exoplayer2.f.e (com.applovin.exoplayer2.f.e)
.class final Lcom/applovin/exoplayer2/f/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Hd:J

.field private He:J

.field private Hf:Z


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private aK(J)J
    .registers 9

    iget-wide v0, p0, Lcom/applovin/exoplayer2/f/e;->Hd:J

    iget-wide v2, p0, Lcom/applovin/exoplayer2/f/e;->He:J

    const-wide/16 v4, 0x211

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    mul-long v2, v2, v4

    div-long/2addr v2, p1

    const-wide/16 p1, 0x0

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    add-long/2addr v0, p1

    return-wide v0
.end method


# virtual methods
.method public Y()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/applovin/exoplayer2/f/e;->Hd:J

    iput-wide v0, p0, Lcom/applovin/exoplayer2/f/e;->He:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/e;->Hf:Z

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/c/g;)J
    .registers 9

    iget-wide v0, p0, Lcom/applovin/exoplayer2/f/e;->He:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    iget-wide v0, p2, Lcom/applovin/exoplayer2/c/g;->rJ:J

    iput-wide v0, p0, Lcom/applovin/exoplayer2/f/e;->Hd:J

    :cond_c
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/e;->Hf:Z

    if-eqz v0, :cond_13

    iget-wide p1, p2, Lcom/applovin/exoplayer2/c/g;->rJ:J

    return-wide p1

    :cond_13
    iget-object v0, p2, Lcom/applovin/exoplayer2/c/g;->rH:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_1d
    const/4 v5, 0x4

    if-ge v1, v5, :cond_2c

    shl-int/lit8 v4, v4, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_2c
    invoke-static {v4}, Lcom/applovin/exoplayer2/b/r;->aH(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_46

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/f/e;->Hf:Z

    iput-wide v2, p0, Lcom/applovin/exoplayer2/f/e;->He:J

    iget-wide v0, p2, Lcom/applovin/exoplayer2/c/g;->rJ:J

    iput-wide v0, p0, Lcom/applovin/exoplayer2/f/e;->Hd:J

    const-string p1, "C2Mp3TimestampTracker"

    const-string v0, "MPEG audio header is invalid."

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide p1, p2, Lcom/applovin/exoplayer2/c/g;->rJ:J

    return-wide p1

    :cond_46
    iget p1, p1, Lcom/applovin/exoplayer2/v;->dM:I

    int-to-long p1, p1

    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/f/e;->aK(J)J

    move-result-wide p1

    iget-wide v1, p0, Lcom/applovin/exoplayer2/f/e;->He:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/applovin/exoplayer2/f/e;->He:J

    return-wide p1
.end method

.method public k(Lcom/applovin/exoplayer2/v;)J
    .registers 4

    iget p1, p1, Lcom/applovin/exoplayer2/v;->dM:I

    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Lcom/applovin/exoplayer2/f/e;->aK(J)J

    move-result-wide v0

    return-wide v0
.end method
