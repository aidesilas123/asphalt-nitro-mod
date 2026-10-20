###### Class com.facebook.ads.redexgen.X.JN (com.facebook.ads.redexgen.X.JN)
.class public final Lcom/facebook/ads/redexgen/X/JN;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Landroid/util/DisplayMetrics;)Lcom/facebook/ads/redexgen/X/JL;
    .registers 4

    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v0

    iget v0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v0

    float-to-int v2, v1

    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v0

    iget v0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v0

    float-to-int v1, v1

    invoke-static {v2, v1}, Lcom/facebook/ads/redexgen/X/Kv;->A04(II)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/facebook/ads/redexgen/X/JL;->A0H:Lcom/facebook/ads/redexgen/X/JL;

    return-object v0

    :cond_17
    if-le v1, v2, :cond_1c

    sget-object v0, Lcom/facebook/ads/redexgen/X/JL;->A0J:Lcom/facebook/ads/redexgen/X/JL;

    return-object v0

    :cond_1c
    sget-object v0, Lcom/facebook/ads/redexgen/X/JL;->A0G:Lcom/facebook/ads/redexgen/X/JL;

    return-object v0
.end method

.method public static A01(Landroid/util/DisplayMetrics;Landroid/view/View;Lcom/facebook/ads/redexgen/X/JJ;)V
    .registers 7

    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v0

    iget v0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v0

    float-to-int v1, v1

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/JJ;->A03()I

    move-result v0

    if-lt v1, v0, :cond_2c

    iget v3, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_f
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/JJ;->A02()I

    move-result v0

    int-to-float v1, v0

    iget v0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xe

    const/4 v0, -0x1

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2c
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/JJ;->A03()I

    move-result v0

    int-to-float v1, v0

    iget v0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v3, v0

    goto :goto_f
.end method
