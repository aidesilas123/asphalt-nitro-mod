###### Class com.applovin.exoplayer2.m.a.b (com.applovin.exoplayer2.m.a.b)
.class public final Lcom/applovin/exoplayer2/m/a/b;
.super Lcom/applovin/exoplayer2/e;
.source "SourceFile"


# instance fields
.field private final HD:Lcom/applovin/exoplayer2/c/g;

.field private afm:J

.field private afn:Lcom/applovin/exoplayer2/m/a/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private afo:J

.field private final uO:Lcom/applovin/exoplayer2/l/y;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/e;-><init>(I)V

    new-instance v0, Lcom/applovin/exoplayer2/c/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/applovin/exoplayer2/c/g;-><init>(I)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/m/a/b;->HD:Lcom/applovin/exoplayer2/c/g;

    new-instance v0, Lcom/applovin/exoplayer2/l/y;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/l/y;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/m/a/b;->uO:Lcom/applovin/exoplayer2/l/y;

    return-void
.end method

.method private n(Ljava/nio/ByteBuffer;)[F
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_a

    const/4 p1, 0x0

    return-object p1

    :cond_a
    iget-object v0, p0, Lcom/applovin/exoplayer2/m/a/b;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/exoplayer2/l/y;->l([BI)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/a/b;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    const/4 p1, 0x3

    new-array v0, p1, [F

    const/4 v1, 0x0

    :goto_26
    if-ge v1, p1, :cond_37

    iget-object v2, p0, Lcom/applovin/exoplayer2/m/a/b;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/l/y;->py()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_37
    return-object v0
.end method

.method private qJ()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/a/b;->afn:Lcom/applovin/exoplayer2/m/a/a;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/applovin/exoplayer2/m/a/a;->cZ()V

    :cond_7
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .registers 4
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    const/16 v0, 0x8

    if-ne p1, v0, :cond_9

    check-cast p2, Lcom/applovin/exoplayer2/m/a/a;

    iput-object p2, p0, Lcom/applovin/exoplayer2/m/a/b;->afn:Lcom/applovin/exoplayer2/m/a/a;

    goto :goto_c

    :cond_9
    invoke-super {p0, p1, p2}, Lcom/applovin/exoplayer2/e;->a(ILjava/lang/Object;)V

    :goto_c
    return-void
.end method

.method protected a(JZ)V
    .registers 4

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Lcom/applovin/exoplayer2/m/a/b;->afo:J

    invoke-direct {p0}, Lcom/applovin/exoplayer2/m/a/b;->qJ()V

    return-void
.end method

.method protected a([Lcom/applovin/exoplayer2/v;JJ)V
    .registers 6

    iput-wide p4, p0, Lcom/applovin/exoplayer2/m/a/b;->afm:J

    return-void
.end method

.method protected ac()V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/m/a/b;->qJ()V

    return-void
.end method

.method public b(Lcom/applovin/exoplayer2/v;)I
    .registers 3

    iget-object p1, p1, Lcom/applovin/exoplayer2/v;->dz:Ljava/lang/String;

    const-string v0, "application/x-camera-motion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x4

    invoke-static {p1}, Lcom/applovin/exoplayer2/z1;->b(I)I

    move-result p1

    goto :goto_15

    :cond_10
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/applovin/exoplayer2/z1;->b(I)I

    move-result p1

    :goto_15
    return p1
.end method

.method public cR()Z
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/e;->R()Z

    move-result v0

    return v0
.end method

.method public g(JJ)V
    .registers 9

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/e;->R()Z

    move-result p3

    if-nez p3, :cond_64

    iget-wide p3, p0, Lcom/applovin/exoplayer2/m/a/b;->afo:J

    const-wide/32 v0, 0x186a0

    add-long/2addr v0, p1

    cmp-long v2, p3, v0

    if-gez v2, :cond_64

    iget-object p3, p0, Lcom/applovin/exoplayer2/m/a/b;->HD:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {p3}, Lcom/applovin/exoplayer2/c/g;->clear()V

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/e;->ae()Lcom/applovin/exoplayer2/w;

    move-result-object p3

    iget-object p4, p0, Lcom/applovin/exoplayer2/m/a/b;->HD:Lcom/applovin/exoplayer2/c/g;

    const/4 v0, 0x0

    invoke-virtual {p0, p3, p4, v0}, Lcom/applovin/exoplayer2/e;->a(Lcom/applovin/exoplayer2/w;Lcom/applovin/exoplayer2/c/g;I)I

    move-result p3

    const/4 p4, -0x4

    if-ne p3, p4, :cond_64

    iget-object p3, p0, Lcom/applovin/exoplayer2/m/a/b;->HD:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {p3}, Lcom/applovin/exoplayer2/c/a;->gY()Z

    move-result p3

    if-eqz p3, :cond_2c

    goto :goto_64

    :cond_2c
    iget-object p3, p0, Lcom/applovin/exoplayer2/m/a/b;->HD:Lcom/applovin/exoplayer2/c/g;

    iget-wide v0, p3, Lcom/applovin/exoplayer2/c/g;->rJ:J

    iput-wide v0, p0, Lcom/applovin/exoplayer2/m/a/b;->afo:J

    iget-object p4, p0, Lcom/applovin/exoplayer2/m/a/b;->afn:Lcom/applovin/exoplayer2/m/a/a;

    if-eqz p4, :cond_0

    invoke-virtual {p3}, Lcom/applovin/exoplayer2/c/a;->gX()Z

    move-result p3

    if-eqz p3, :cond_3d

    goto :goto_0

    :cond_3d
    iget-object p3, p0, Lcom/applovin/exoplayer2/m/a/b;->HD:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {p3}, Lcom/applovin/exoplayer2/c/g;->hh()V

    iget-object p3, p0, Lcom/applovin/exoplayer2/m/a/b;->HD:Lcom/applovin/exoplayer2/c/g;

    iget-object p3, p3, Lcom/applovin/exoplayer2/c/g;->rH:Ljava/nio/ByteBuffer;

    invoke-static {p3}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/nio/ByteBuffer;

    invoke-direct {p0, p3}, Lcom/applovin/exoplayer2/m/a/b;->n(Ljava/nio/ByteBuffer;)[F

    move-result-object p3

    if-nez p3, :cond_53

    goto :goto_0

    :cond_53
    iget-object p4, p0, Lcom/applovin/exoplayer2/m/a/b;->afn:Lcom/applovin/exoplayer2/m/a/a;

    invoke-static {p4}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/applovin/exoplayer2/m/a/a;

    iget-wide v0, p0, Lcom/applovin/exoplayer2/m/a/b;->afo:J

    iget-wide v2, p0, Lcom/applovin/exoplayer2/m/a/b;->afm:J

    sub-long/2addr v0, v2

    invoke-interface {p4, v0, v1, p3}, Lcom/applovin/exoplayer2/m/a/a;->a(J[F)V

    goto :goto_0

    :cond_64
    :goto_64
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "CameraMotionRenderer"

    return-object v0
.end method

.method public isReady()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
