###### Class com.applovin.exoplayer2.e.i.ab (com.applovin.exoplayer2.e.i.ab)
.class final Lcom/applovin/exoplayer2/e/i/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final CB:Lcom/applovin/exoplayer2/l/y;

.field private EV:Z

.field private final Fo:Lcom/applovin/exoplayer2/l/ag;

.field private final Fq:I

.field private Fr:Z

.field private Fs:Z

.field private Ft:J

.field private Fu:J

.field private fH:J


# direct methods
.method constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/applovin/exoplayer2/e/i/ab;->Fq:I

    new-instance p1, Lcom/applovin/exoplayer2/l/ag;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Lcom/applovin/exoplayer2/l/ag;-><init>(J)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/ab;->Fo:Lcom/applovin/exoplayer2/l/ag;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/i/ab;->Ft:J

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/i/ab;->Fu:J

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/i/ab;->fH:J

    new-instance p1, Lcom/applovin/exoplayer2/l/y;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/l/y;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/ab;->CB:Lcom/applovin/exoplayer2/l/y;

    return-void
.end method

.method private Y(Lcom/applovin/exoplayer2/e/i;)I
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/ab;->CB:Lcom/applovin/exoplayer2/l/y;

    sget-object v1, Lcom/applovin/exoplayer2/l/ai;->ada:[B

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/y;->I([B)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/ab;->EV:Z

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->ic()V

    const/4 p1, 0x0

    return p1
.end method

.method private b(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/u;I)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/applovin/exoplayer2/e/i/ab;->Fq:I

    int-to-long v0, v0

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->if()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->ie()J

    move-result-wide v2

    const/4 v0, 0x0

    int-to-long v4, v0

    const/4 v6, 0x1

    cmp-long v7, v2, v4

    if-eqz v7, :cond_1a

    iput-wide v4, p2, Lcom/applovin/exoplayer2/e/u;->uc:J

    return v6

    :cond_1a
    iget-object p2, p0, Lcom/applovin/exoplayer2/e/i/ab;->CB:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p2, v1}, Lcom/applovin/exoplayer2/l/y;->U(I)V

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->ic()V

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/i/ab;->CB:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object p2

    invoke-interface {p1, p2, v0, v1}, Lcom/applovin/exoplayer2/e/i;->c([BII)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/ab;->CB:Lcom/applovin/exoplayer2/l/y;

    invoke-direct {p0, p1, p3}, Lcom/applovin/exoplayer2/e/i/ab;->q(Lcom/applovin/exoplayer2/l/y;I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/i/ab;->Ft:J

    iput-boolean v6, p0, Lcom/applovin/exoplayer2/e/i/ab;->Fr:Z

    return v0
.end method

.method private c(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/u;I)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->if()J

    move-result-wide v0

    iget v2, p0, Lcom/applovin/exoplayer2/e/i/ab;->Fq:I

    int-to-long v2, v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    int-to-long v4, v3

    sub-long/2addr v0, v4

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->ie()J

    move-result-wide v4

    const/4 v2, 0x1

    cmp-long v6, v4, v0

    if-eqz v6, :cond_1a

    iput-wide v0, p2, Lcom/applovin/exoplayer2/e/u;->uc:J

    return v2

    :cond_1a
    iget-object p2, p0, Lcom/applovin/exoplayer2/e/i/ab;->CB:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p2, v3}, Lcom/applovin/exoplayer2/l/y;->U(I)V

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->ic()V

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/i/ab;->CB:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, v3}, Lcom/applovin/exoplayer2/e/i;->c([BII)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/ab;->CB:Lcom/applovin/exoplayer2/l/y;

    invoke-direct {p0, p1, p3}, Lcom/applovin/exoplayer2/e/i/ab;->r(Lcom/applovin/exoplayer2/l/y;I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/i/ab;->Fu:J

    iput-boolean v2, p0, Lcom/applovin/exoplayer2/e/i/ab;->Fs:Z

    return v0
.end method

.method private q(Lcom/applovin/exoplayer2/l/y;I)J
    .registers 10

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->il()I

    move-result v0

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pk()I

    move-result v1

    :goto_8
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v0, v1, :cond_26

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v4

    aget-byte v4, v4, v0

    const/16 v5, 0x47

    if-eq v4, v5, :cond_1a

    goto :goto_23

    :cond_1a
    invoke-static {p1, v0, p2}, Lcom/applovin/exoplayer2/e/i/ae;->f(Lcom/applovin/exoplayer2/l/y;II)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-eqz v6, :cond_23

    return-wide v4

    :cond_23
    :goto_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_26
    return-wide v2
.end method

.method private r(Lcom/applovin/exoplayer2/l/y;I)J
    .registers 11

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->il()I

    move-result v0

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pk()I

    move-result v1

    add-int/lit16 v2, v1, -0xbc

    :goto_a
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-lt v2, v0, :cond_28

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v5

    invoke-static {v5, v0, v1, v2}, Lcom/applovin/exoplayer2/e/i/ae;->a([BIII)Z

    move-result v5

    if-nez v5, :cond_1c

    goto :goto_25

    :cond_1c
    invoke-static {p1, v2, p2}, Lcom/applovin/exoplayer2/e/i/ae;->f(Lcom/applovin/exoplayer2/l/y;II)J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-eqz v7, :cond_25

    return-wide v5

    :cond_25
    :goto_25
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    :cond_28
    return-wide v3
.end method


# virtual methods
.method public a(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/u;I)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gtz p3, :cond_7

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/i/ab;->Y(Lcom/applovin/exoplayer2/e/i;)I

    move-result p1

    return p1

    :cond_7
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/ab;->Fs:Z

    if-nez v0, :cond_10

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/exoplayer2/e/i/ab;->c(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/u;I)I

    move-result p1

    return p1

    :cond_10
    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/i/ab;->Fu:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_20

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/i/ab;->Y(Lcom/applovin/exoplayer2/e/i;)I

    move-result p1

    return p1

    :cond_20
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/ab;->Fr:Z

    if-nez v0, :cond_29

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/exoplayer2/e/i/ab;->b(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/u;I)I

    move-result p1

    return p1

    :cond_29
    iget-wide p2, p0, Lcom/applovin/exoplayer2/e/i/ab;->Ft:J

    cmp-long v0, p2, v2

    if-nez v0, :cond_34

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/i/ab;->Y(Lcom/applovin/exoplayer2/e/i;)I

    move-result p1

    return p1

    :cond_34
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/ab;->Fo:Lcom/applovin/exoplayer2/l/ag;

    invoke-virtual {v0, p2, p3}, Lcom/applovin/exoplayer2/l/ag;->br(J)J

    move-result-wide p2

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/ab;->Fo:Lcom/applovin/exoplayer2/l/ag;

    iget-wide v4, p0, Lcom/applovin/exoplayer2/e/i/ab;->Fu:J

    invoke-virtual {v0, v4, v5}, Lcom/applovin/exoplayer2/l/ag;->br(J)J

    move-result-wide v0

    sub-long/2addr v0, p2

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/i/ab;->fH:J

    const-wide/16 p2, 0x0

    cmp-long v4, v0, p2

    if-gez v4, :cond_6a

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid duration: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/i/ab;->fH:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ". Using TIME_UNSET instead."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "TsDurationReader"

    invoke-static {p3, p2}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v2, p0, Lcom/applovin/exoplayer2/e/i/ab;->fH:J

    :cond_6a
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/i/ab;->Y(Lcom/applovin/exoplayer2/e/i;)I

    move-result p1

    return p1
.end method

.method public dd()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/i/ab;->fH:J

    return-wide v0
.end method

.method public jt()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/ab;->EV:Z

    return v0
.end method

.method public jv()Lcom/applovin/exoplayer2/l/ag;
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/ab;->Fo:Lcom/applovin/exoplayer2/l/ag;

    return-object v0
.end method
