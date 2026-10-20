###### Class com.facebook.ads.redexgen.X.C1225Nt (com.facebook.ads.redexgen.X.Nt)
.class public final Lcom/facebook/ads/redexgen/X/Nt;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/1D;)F
    .registers 3

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1D;->A0D()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A01()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1D;->A0D()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A00()I

    move-result v0

    if-lez v0, :cond_16

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    :goto_15
    return v1

    :cond_16
    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_15
.end method

.method public static A01(D)I
    .registers 5

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Kt;->A00()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sget v0, Lcom/facebook/ads/redexgen/X/Nv;->A07:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    int-to-double v1, v1

    div-double/2addr v1, p0

    double-to-int v0, v1

    return v0
.end method

.method public static A02(I)I
    .registers 4

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A01(I)I

    move-result v2

    sget v0, Lcom/facebook/ads/redexgen/X/Na;->A0A:I

    mul-int/lit8 v1, v0, 0x2

    sget v0, Lcom/facebook/ads/redexgen/X/Nv;->A07:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v1

    add-int/2addr v2, v0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Kt;->A00()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v0, p0

    sub-int/2addr v0, v2

    return v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/T3;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ns;
    .registers 3

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ns;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Ns;-><init>(Lcom/facebook/ads/redexgen/X/T3;Ljava/lang/String;)V

    return-object v0
.end method

.method public static A04(D)Z
    .registers 5

    const-wide v1, 0x3feccccccccccccdL    # 0.9

    cmpg-double v0, p0, v1

    if-gez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static A05(DI)Z
    .registers 5

    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/Nt;->A02(I)I

    move-result v1

    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/Nt;->A01(D)I

    move-result v0

    if-ge v1, v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static A06(IID)Z
    .registers 5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_9

    invoke-static {p2, p3, p1}, Lcom/facebook/ads/redexgen/X/Nt;->A05(DI)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_9
    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
