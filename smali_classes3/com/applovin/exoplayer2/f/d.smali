###### Class com.applovin.exoplayer2.f.d (com.applovin.exoplayer2.f.d)
.class final Lcom/applovin/exoplayer2/f/d;
.super Lcom/applovin/exoplayer2/c/g;
.source "SourceFile"


# instance fields
.field private Hb:J

.field private Hc:I

.field private jA:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/c/g;-><init>(I)V

    const/16 v0, 0x20

    iput v0, p0, Lcom/applovin/exoplayer2/f/d;->Hc:I

    return-void
.end method

.method private e(Lcom/applovin/exoplayer2/c/g;)Z
    .registers 6

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/d;->jS()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget v0, p0, Lcom/applovin/exoplayer2/f/d;->jA:I

    iget v2, p0, Lcom/applovin/exoplayer2/f/d;->Hc:I

    const/4 v3, 0x0

    if-lt v0, v2, :cond_10

    return v3

    :cond_10
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/c/a;->gX()Z

    move-result v0

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/c/a;->gX()Z

    move-result v2

    if-eq v0, v2, :cond_1b

    return v3

    :cond_1b
    iget-object p1, p1, Lcom/applovin/exoplayer2/c/g;->rH:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_32

    iget-object v0, p0, Lcom/applovin/exoplayer2/c/g;->rH:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    add-int/2addr v0, p1

    const p1, 0x2ee000

    if-le v0, p1, :cond_32

    return v3

    :cond_32
    return v1
.end method


# virtual methods
.method public cQ(I)V
    .registers 3
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param

    if-lez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    iput p1, p0, Lcom/applovin/exoplayer2/f/d;->Hc:I

    return-void
.end method

.method public clear()V
    .registers 2

    invoke-super {p0}, Lcom/applovin/exoplayer2/c/g;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/exoplayer2/f/d;->jA:I

    return-void
.end method

.method public d(Lcom/applovin/exoplayer2/c/g;)Z
    .registers 6

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/c/g;->hg()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/c/a;->ha()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/c/a;->gY()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/f/d;->e(Lcom/applovin/exoplayer2/c/g;)Z

    move-result v0

    if-nez v0, :cond_21

    const/4 p1, 0x0

    return p1

    :cond_21
    iget v0, p0, Lcom/applovin/exoplayer2/f/d;->jA:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/applovin/exoplayer2/f/d;->jA:I

    if-nez v0, :cond_36

    iget-wide v2, p1, Lcom/applovin/exoplayer2/c/g;->rJ:J

    iput-wide v2, p0, Lcom/applovin/exoplayer2/c/g;->rJ:J

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/c/a;->gZ()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/c/a;->bs(I)V

    :cond_36
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/c/a;->gX()Z

    move-result v0

    if-eqz v0, :cond_41

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/c/a;->bs(I)V

    :cond_41
    iget-object v0, p1, Lcom/applovin/exoplayer2/c/g;->rH:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_51

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/applovin/exoplayer2/c/g;->by(I)V

    iget-object v2, p0, Lcom/applovin/exoplayer2/c/g;->rH:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_51
    iget-wide v2, p1, Lcom/applovin/exoplayer2/c/g;->rJ:J

    iput-wide v2, p0, Lcom/applovin/exoplayer2/f/d;->Hb:J

    return v1
.end method

.method public iI()I
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/f/d;->jA:I

    return v0
.end method

.method public jQ()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/c/g;->rJ:J

    return-wide v0
.end method

.method public jR()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/f/d;->Hb:J

    return-wide v0
.end method

.method public jS()Z
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/f/d;->jA:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
