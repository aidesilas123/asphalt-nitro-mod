###### Class com.facebook.ads.redexgen.X.C1243Ol (com.facebook.ads.redexgen.X.Ol)
.class public final Lcom/facebook/ads/redexgen/X/Ol;
.super Ljava/io/InputStream;
.source ""


# instance fields
.field public A00:I

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/Gc;

.field public final A03:Landroid/net/Uri;

.field public final A04:Lcom/facebook/ads/redexgen/X/Y9;

.field public final A05:Lcom/facebook/ads/redexgen/X/Gb;

.field public final A06:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Y9;Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/Gb;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ol;->A04:Lcom/facebook/ads/redexgen/X/Y9;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Ol;->A05:Lcom/facebook/ads/redexgen/X/Gb;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ol;->A03:Landroid/net/Uri;

    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/QN;->A08(Lcom/facebook/ads/redexgen/X/Y9;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ol;->A06:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ol;->A00(I)V

    return-void
.end method

.method private A00(I)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ol;->A02:Lcom/facebook/ads/redexgen/X/Gc;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Gc;->close()V

    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ol;->A05:Lcom/facebook/ads/redexgen/X/Gb;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Gb;->A4U()Lcom/facebook/ads/redexgen/X/Gc;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ol;->A02:Lcom/facebook/ads/redexgen/X/Gc;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Gg;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ol;->A03:Landroid/net/Uri;

    int-to-long v3, p1

    const-wide/16 v5, -0x1

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Ol;->A06:Ljava/lang/String;

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/Gg;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ol;->A02:Lcom/facebook/ads/redexgen/X/Gc;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Gc;->ADb(Lcom/facebook/ads/redexgen/X/Gg;)J

    move-result-wide v1

    long-to-int v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ol;->A01:J

    return-void
.end method


# virtual methods
.method public final available()I
    .registers 5

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Ol;->A01:J

    long-to-int v1, v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ol;->A00:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public final close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ol;->A02:Lcom/facebook/ads/redexgen/X/Gc;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Gc;->close()V

    return-void
.end method

.method public final read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ol;->read([B)I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ol;->A02:Lcom/facebook/ads/redexgen/X/Gc;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Gc;->read([BII)I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ol;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ol;->A00:I

    return v1
.end method

.method public final skip(J)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Ol;->A01:J

    iget v5, p0, Lcom/facebook/ads/redexgen/X/Ol;->A00:I

    int-to-long v0, v5

    sub-long/2addr v3, v0

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gtz v0, :cond_d

    return-wide v1

    :cond_d
    cmp-long v0, p1, v3

    if-lez v0, :cond_12

    move-wide p1, v3

    :cond_12
    int-to-long v1, v5

    add-long/2addr v1, p1

    long-to-int v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ol;->A00:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ol;->A00(I)V

    return-wide p1
.end method
