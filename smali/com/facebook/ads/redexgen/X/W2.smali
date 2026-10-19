###### Class com.facebook.ads.redexgen.X.W2 (com.facebook.ads.redexgen.X.W2)
.class public final Lcom/facebook/ads/redexgen/X/W2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Bj;


# instance fields
.field public A00:J

.field public A01:J

.field public final A02:I

.field public final A03:I

.field public final A04:I

.field public final A05:I

.field public final A06:I

.field public final A07:I


# direct methods
.method public constructor <init>(IIIIII)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/facebook/ads/redexgen/X/W2;->A06:I

    iput p2, p0, Lcom/facebook/ads/redexgen/X/W2;->A07:I

    iput p3, p0, Lcom/facebook/ads/redexgen/X/W2;->A02:I

    iput p4, p0, Lcom/facebook/ads/redexgen/X/W2;->A04:I

    iput p5, p0, Lcom/facebook/ads/redexgen/X/W2;->A03:I

    iput p6, p0, Lcom/facebook/ads/redexgen/X/W2;->A05:I

    return-void
.end method


# virtual methods
.method public final A00()I
    .registers 3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/W2;->A07:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/W2;->A03:I

    mul-int/2addr v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/W2;->A06:I

    mul-int/2addr v1, v0

    return v1
.end method

.method public final A01()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/W2;->A04:I

    return v0
.end method

.method public final A02()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/W2;->A05:I

    return v0
.end method

.method public final A03()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/W2;->A06:I

    return v0
.end method

.method public final A04()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/W2;->A07:I

    return v0
.end method

.method public final A05(J)J
    .registers 7

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/W2;->A01:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/W2;->A02:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    return-wide v2
.end method

.method public final A06(JJ)V
    .registers 5

    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/W2;->A01:J

    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/W2;->A00:J

    return-void
.end method

.method public final A07()Z
    .registers 6

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/W2;->A01:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_10

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/W2;->A00:J

    cmp-long v0, v1, v3

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final A6k()J
    .registers 7

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/W2;->A00:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/W2;->A04:I

    int-to-long v0, v0

    div-long/2addr v4, v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, v4

    iget v0, p0, Lcom/facebook/ads/redexgen/X/W2;->A07:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    return-wide v2
.end method

.method public final A7l(J)Lcom/facebook/ads/redexgen/X/Bi;
    .registers 14

    iget v0, p0, Lcom/facebook/ads/redexgen/X/W2;->A02:I

    int-to-long v3, v0

    mul-long/2addr v3, p1

    const-wide/32 v0, 0xf4240

    div-long/2addr v3, v0

    iget v2, p0, Lcom/facebook/ads/redexgen/X/W2;->A04:I

    int-to-long v0, v2

    div-long/2addr v3, v0

    int-to-long v0, v2

    mul-long/2addr v3, v0

    const-wide/16 v5, 0x0

    iget-wide v7, p0, Lcom/facebook/ads/redexgen/X/W2;->A00:J

    int-to-long v0, v2

    sub-long/2addr v7, v0

    invoke-static/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/Hx;->A0E(JJJ)J

    move-result-wide v9

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/W2;->A01:J

    add-long/2addr v1, v9

    invoke-virtual {p0, v1, v2}, Lcom/facebook/ads/redexgen/X/W2;->A05(J)J

    move-result-wide v3

    new-instance v6, Lcom/facebook/ads/redexgen/X/Bk;

    invoke-direct {v6, v3, v4, v1, v2}, Lcom/facebook/ads/redexgen/X/Bk;-><init>(JJ)V

    cmp-long v0, v3, p1

    if-gez v0, :cond_32

    iget-wide v7, p0, Lcom/facebook/ads/redexgen/X/W2;->A00:J

    iget v5, p0, Lcom/facebook/ads/redexgen/X/W2;->A04:I

    int-to-long v3, v5

    sub-long/2addr v7, v3

    cmp-long v0, v9, v7

    if-nez v0, :cond_38

    :cond_32
    new-instance v0, Lcom/facebook/ads/redexgen/X/Bi;

    invoke-direct {v0, v6}, Lcom/facebook/ads/redexgen/X/Bi;-><init>(Lcom/facebook/ads/redexgen/X/Bk;)V

    return-object v0

    :cond_38
    int-to-long v4, v5

    add-long/2addr v4, v1

    invoke-virtual {p0, v4, v5}, Lcom/facebook/ads/redexgen/X/W2;->A05(J)J

    move-result-wide v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/Bk;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/facebook/ads/redexgen/X/Bk;-><init>(JJ)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Bi;

    invoke-direct {v0, v6, v1}, Lcom/facebook/ads/redexgen/X/Bi;-><init>(Lcom/facebook/ads/redexgen/X/Bk;Lcom/facebook/ads/redexgen/X/Bk;)V

    return-object v0
.end method

.method public final A95()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
