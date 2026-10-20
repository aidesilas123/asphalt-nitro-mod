###### Class com.facebook.ads.redexgen.X.CP (com.facebook.ads.redexgen.X.CP)
.class public final Lcom/facebook/ads/redexgen/X/CP;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:J

.field public final A03:Lcom/facebook/ads/redexgen/X/CM;

.field public final A04:[I

.field public final A05:[I

.field public final A06:[J

.field public final A07:[J


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/CM;[J[II[J[IJ)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v1, p3

    array-length v0, p5

    const/4 v2, 0x1

    if-ne v1, v0, :cond_31

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A03(Z)V

    array-length v1, p2

    array-length v0, p5

    if-ne v1, v0, :cond_2f

    const/4 v0, 0x1

    :goto_11
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A03(Z)V

    array-length v1, p6

    array-length v0, p5

    if-ne v1, v0, :cond_2d

    :goto_18
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/HI;->A03(Z)V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/CP;->A03:Lcom/facebook/ads/redexgen/X/CM;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/CP;->A06:[J

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/CP;->A05:[I

    iput p4, p0, Lcom/facebook/ads/redexgen/X/CP;->A00:I

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/CP;->A07:[J

    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/CP;->A04:[I

    iput-wide p7, p0, Lcom/facebook/ads/redexgen/X/CP;->A02:J

    array-length v0, p2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/CP;->A01:I

    return-void

    :cond_2d
    const/4 v2, 0x0

    goto :goto_18

    :cond_2f
    const/4 v0, 0x0

    goto :goto_11

    :cond_31
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public final A00(J)I
    .registers 6

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CP;->A07:[J

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A0B([JJZZ)I

    move-result v1

    :goto_8
    if-ltz v1, :cond_15

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CP;->A04:[I

    aget v0, v0, v1

    and-int/2addr v0, v2

    if-eqz v0, :cond_12

    return v1

    :cond_12
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_15
    const/4 v0, -0x1

    return v0
.end method

.method public final A01(J)I
    .registers 6

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CP;->A07:[J

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A0A([JJZZ)I

    move-result v1

    :goto_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CP;->A07:[J

    array-length v0, v0

    if-ge v1, v0, :cond_18

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CP;->A04:[I

    aget v0, v0, v1

    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    return v1

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_18
    const/4 v0, -0x1

    return v0
.end method
