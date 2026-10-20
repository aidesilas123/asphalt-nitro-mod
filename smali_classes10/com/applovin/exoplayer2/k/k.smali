###### Class com.applovin.exoplayer2.k.k (com.applovin.exoplayer2.k.k)
.class public final Lcom/applovin/exoplayer2/k/k;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private final LR:Lcom/applovin/exoplayer2/k/i;

.field private Zk:Z

.field private final Zu:[B

.field private Zv:Z

.field private Zw:J

.field private final tw:Lcom/applovin/exoplayer2/k/l;


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/k/i;Lcom/applovin/exoplayer2/k/l;)V
    .registers 4

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/k/k;->Zk:Z

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/k/k;->Zv:Z

    iput-object p1, p0, Lcom/applovin/exoplayer2/k/k;->LR:Lcom/applovin/exoplayer2/k/i;

    iput-object p2, p0, Lcom/applovin/exoplayer2/k/k;->tw:Lcom/applovin/exoplayer2/k/l;

    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/applovin/exoplayer2/k/k;->Zu:[B

    return-void
.end method

.method private og()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/k/k;->Zk:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/k;->LR:Lcom/applovin/exoplayer2/k/i;

    iget-object v1, p0, Lcom/applovin/exoplayer2/k/k;->tw:Lcom/applovin/exoplayer2/k/l;

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/k/i;->a(Lcom/applovin/exoplayer2/k/l;)J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/k/k;->Zk:Z

    :cond_e
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/k/k;->Zv:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/k;->LR:Lcom/applovin/exoplayer2/k/i;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/k/i;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/k/k;->Zv:Z

    :cond_c
    return-void
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/k;->Zu:[B

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/k/k;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    goto :goto_11

    :cond_a
    iget-object v0, p0, Lcom/applovin/exoplayer2/k/k;->Zu:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xff

    :goto_11
    return v1
.end method

.method public read([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/applovin/exoplayer2/k/k;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/k/k;->Zv:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/k/k;->og()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/k;->LR:Lcom/applovin/exoplayer2/k/i;

    invoke-interface {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/k/g;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_14

    return p2

    :cond_14
    iget-wide p2, p0, Lcom/applovin/exoplayer2/k/k;->Zw:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/applovin/exoplayer2/k/k;->Zw:J

    return p1
.end method
