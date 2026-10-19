###### Class com.facebook.ads.redexgen.X.C2E (com.facebook.ads.redexgen.X.2E)
.class public final Lcom/facebook/ads/redexgen/X/2E;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/2F;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Metric"
.end annotation


# instance fields
.field public A00:D

.field public A01:D

.field public A02:D

.field public A03:D

.field public A04:D

.field public A05:D

.field public A06:D

.field public A07:D

.field public A08:D

.field public A09:D

.field public A0A:I


# direct methods
.method public constructor <init>(D)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/2E;->A04:D

    return-void
.end method


# virtual methods
.method public final A00()D
    .registers 3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/2E;->A00:D

    return-wide v0
.end method

.method public final A01()D
    .registers 3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/2E;->A03:D

    return-wide v0
.end method

.method public final A02()D
    .registers 3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/2E;->A05:D

    return-wide v0
.end method

.method public final A03()D
    .registers 3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/2E;->A06:D

    return-wide v0
.end method

.method public final A04()D
    .registers 3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/2E;->A07:D

    return-wide v0
.end method

.method public final A05()D
    .registers 3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2E;->A0A:I

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_7
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/2E;->A08:D

    return-wide v0
.end method

.method public final A06()V
    .registers 5

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/2E;->A00:D

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/2E;->A02:D

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/2E;->A03:D

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/2E;->A05:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2E;->A0A:I

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/2E;->A07:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/2E;->A08:D

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/2E;->A09:D

    return-void
.end method

.method public final A07()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/2E;->A01:D

    return-void
.end method

.method public final A08(DD)V
    .registers 11

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2E;->A0A:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2E;->A0A:I

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/2E;->A07:D

    add-double/2addr v4, p1

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/2E;->A07:D

    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/2E;->A02:D

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/2E;->A09:D

    mul-double v0, p3, p1

    add-double/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/2E;->A09:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/2E;->A00:D

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/2E;->A08:D

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/2E;->A08:D

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/2E;->A05:D

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/2E;->A05:D

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/2E;->A04:D

    cmpl-double v0, p3, v1

    if-ltz v0, :cond_40

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/2E;->A03:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/2E;->A03:D

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/2E;->A01:D

    add-double/2addr v2, p1

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/2E;->A01:D

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/2E;->A06:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/2E;->A06:D

    :goto_3f
    return-void

    :cond_40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/2E;->A01:D

    goto :goto_3f
.end method
