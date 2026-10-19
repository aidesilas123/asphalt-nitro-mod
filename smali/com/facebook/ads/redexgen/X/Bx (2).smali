###### Class com.facebook.ads.redexgen.X.Bx (com.facebook.ads.redexgen.X.Bx)
.class public final Lcom/facebook/ads/redexgen/X/Bx;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Wo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrueHdSampleRechunker"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:J

.field public A04:Z

.field public final A05:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bx;->A05:[B

    return-void
.end method


# virtual methods
.method public final A00()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Bx;->A04:Z

    return-void
.end method

.method public final A01(Lcom/facebook/ads/redexgen/X/Bb;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Bx;->A04:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1e

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Bx;->A05:[B

    const/16 v0, 0xa

    invoke-interface {p1, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Bb;->ADl([BII)V

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Bb;->AEm()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bx;->A05:[B

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/A8;->A06([B)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_19

    return-void

    :cond_19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Bx;->A04:Z

    iput v2, p0, Lcom/facebook/ads/redexgen/X/Bx;->A02:I

    :cond_1e
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bx;->A02:I

    if-nez v0, :cond_26

    iput p2, p0, Lcom/facebook/ads/redexgen/X/Bx;->A00:I

    iput v2, p0, Lcom/facebook/ads/redexgen/X/Bx;->A01:I

    :cond_26
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bx;->A01:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Bx;->A01:I

    return-void
.end method

.method public final A02(Lcom/facebook/ads/redexgen/X/Bw;)V
    .registers 9

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Bx;->A04:Z

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bx;->A02:I

    if-lez v0, :cond_19

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Bw;->A0W:Lcom/facebook/ads/redexgen/X/Bm;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Bx;->A03:J

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Bx;->A00:I

    iget v4, p0, Lcom/facebook/ads/redexgen/X/Bx;->A01:I

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/facebook/ads/redexgen/X/Bw;->A0V:Lcom/facebook/ads/redexgen/X/Bl;

    invoke-interface/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/Bm;->AEs(JIIILcom/facebook/ads/redexgen/X/Bl;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Bx;->A02:I

    :cond_19
    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/Bw;J)V
    .registers 11

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Bx;->A04:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bx;->A02:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Bx;->A02:I

    if-nez v0, :cond_f

    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/Bx;->A03:J

    :cond_f
    const/16 v0, 0x10

    if-ge v1, v0, :cond_14

    return-void

    :cond_14
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Bw;->A0W:Lcom/facebook/ads/redexgen/X/Bm;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Bx;->A03:J

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Bx;->A00:I

    iget v4, p0, Lcom/facebook/ads/redexgen/X/Bx;->A01:I

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/facebook/ads/redexgen/X/Bw;->A0V:Lcom/facebook/ads/redexgen/X/Bl;

    invoke-interface/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/Bm;->AEs(JIIILcom/facebook/ads/redexgen/X/Bl;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Bx;->A02:I

    return-void
.end method
