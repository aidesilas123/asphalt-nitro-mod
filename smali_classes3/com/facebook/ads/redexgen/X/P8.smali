###### Class com.facebook.ads.redexgen.X.P8 (com.facebook.ads.redexgen.X.P8)
.class public abstract Lcom/facebook/ads/redexgen/X/P8;
.super Lcom/facebook/ads/redexgen/X/8Y;
.source ""


# instance fields
.field public A00:F

.field public A01:J

.field public A02:J

.field public A03:J


# direct methods
.method public constructor <init>(JJJF)V
    .registers 8

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8Y;-><init>()V

    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/P8;->A03:J

    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/P8;->A01:J

    iput-wide p5, p0, Lcom/facebook/ads/redexgen/X/P8;->A02:J

    iput p7, p0, Lcom/facebook/ads/redexgen/X/P8;->A00:F

    return-void
.end method


# virtual methods
.method public final A00()F
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/P8;->A00:F

    return v0
.end method

.method public final A01()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/P8;->A01:J

    return-wide v0
.end method

.method public final A02()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/P8;->A02:J

    return-wide v0
.end method

.method public final A03()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/P8;->A03:J

    return-wide v0
.end method
