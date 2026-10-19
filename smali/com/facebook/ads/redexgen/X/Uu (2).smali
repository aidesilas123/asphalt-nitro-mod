###### Class com.facebook.ads.redexgen.X.C1407Uu (com.facebook.ads.redexgen.X.Uu)
.class public final Lcom/facebook/ads/redexgen/X/Uu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/HY;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/9f;

.field public A03:Z

.field public final A04:Lcom/facebook/ads/redexgen/X/HL;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/HL;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Uu;->A04:Lcom/facebook/ads/redexgen/X/HL;

    sget-object v0, Lcom/facebook/ads/redexgen/X/9f;->A04:Lcom/facebook/ads/redexgen/X/9f;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A02:Lcom/facebook/ads/redexgen/X/9f;

    return-void
.end method


# virtual methods
.method public final A00()V
    .registers 3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A03:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A04:Lcom/facebook/ads/redexgen/X/HL;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HL;->A5O()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A00:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A03:Z

    :cond_f
    return-void
.end method

.method public final A01()V
    .registers 3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A03:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Uu;->A7c()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Uu;->A02(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A03:Z

    :cond_e
    return-void
.end method

.method public final A02(J)V
    .registers 5

    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Uu;->A01:J

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A03:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A04:Lcom/facebook/ads/redexgen/X/HL;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HL;->A5O()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A00:J

    :cond_e
    return-void
.end method

.method public final A7Z()Lcom/facebook/ads/redexgen/X/9f;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A02:Lcom/facebook/ads/redexgen/X/9f;

    return-object v0
.end method

.method public final A7c()J
    .registers 7

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Uu;->A01:J

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A03:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A04:Lcom/facebook/ads/redexgen/X/HL;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HL;->A5O()J

    move-result-wide v4

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A00:J

    sub-long/2addr v4, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A02:Lcom/facebook/ads/redexgen/X/9f;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/9f;->A01:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v1, v0

    if-nez v0, :cond_1f

    invoke-static {v4, v5}, Lcom/facebook/ads/redexgen/X/9E;->A00(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    :cond_1e
    :goto_1e
    return-wide v2

    :cond_1f
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A02:Lcom/facebook/ads/redexgen/X/9f;

    invoke-virtual {v0, v4, v5}, Lcom/facebook/ads/redexgen/X/9f;->A00(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    goto :goto_1e
.end method

.method public final AFP(Lcom/facebook/ads/redexgen/X/9f;)Lcom/facebook/ads/redexgen/X/9f;
    .registers 4

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A03:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Uu;->A7c()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Uu;->A02(J)V

    :cond_b
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Uu;->A02:Lcom/facebook/ads/redexgen/X/9f;

    return-object p1
.end method
