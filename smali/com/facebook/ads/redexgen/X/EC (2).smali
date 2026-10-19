###### Class com.facebook.ads.redexgen.X.EC (com.facebook.ads.redexgen.X.EC)
.class public final Lcom/facebook/ads/redexgen/X/EC;
.super Lcom/facebook/ads/redexgen/X/ZB;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Yw;->A0E(Lcom/facebook/ads/redexgen/X/4c;)Lcom/facebook/ads/redexgen/X/ZB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Yw;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Yw;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/EC;->A00:Lcom/facebook/ads/redexgen/X/Yw;

    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/ZB;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final A0I(Landroid/view/View;Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4n;)V
    .registers 8

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/EC;->A00:Lcom/facebook/ads/redexgen/X/Yw;

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Yw;->A00:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ED;->getLayoutManager()Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/Yw;->A0H(Lcom/facebook/ads/redexgen/X/4c;Landroid/view/View;)[I

    move-result-object v1

    const/4 v0, 0x0

    aget v3, v1, v0

    const/4 v0, 0x1

    aget v2, v1, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/ZB;->A0M(I)I

    move-result v1

    if-lez v1, :cond_29

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZB;->A04:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4n;->A04(IIILandroid/view/animation/Interpolator;)V

    :cond_29
    return-void
.end method

.method public final A0J(Landroid/util/DisplayMetrics;)F
    .registers 4

    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method
