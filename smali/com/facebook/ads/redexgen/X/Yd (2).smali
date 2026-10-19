###### Class com.facebook.ads.redexgen.X.C1491Yd (com.facebook.ads.redexgen.X.Yd)
.class public Lcom/facebook/ads/redexgen/X/Yd;
.super Lcom/facebook/ads/redexgen/X/5O;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/NativeAdLayoutApi;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Landroid/view/View;

.field public A03:Lcom/facebook/ads/NativeAdLayout;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5O;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Yd;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Yd;->A00:I

    return-void
.end method


# virtual methods
.method public final A02()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yd;->A03:Lcom/facebook/ads/NativeAdLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A0T(Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yd;->A03:Lcom/facebook/ads/NativeAdLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yd;->A02:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/NativeAdLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Yd;->A02:Landroid/view/View;

    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/MR;)V
    .registers 4

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Yd;->A02:Landroid/view/View;

    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/MR;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yd;->A03:Lcom/facebook/ads/NativeAdLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A0T(Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yd;->A03:Lcom/facebook/ads/NativeAdLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yd;->A02:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/NativeAdLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final getAdComponentViewApi()Lcom/facebook/ads/internal/api/AdComponentViewApi;
    .registers 1

    return-object p0
.end method

.method public final initialize(Lcom/facebook/ads/NativeAdLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Yd;->A03:Lcom/facebook/ads/NativeAdLayout;

    return-void
.end method

.method public final onMeasure(II)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/5O;->onMeasure(II)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Yd;->A00:I

    if-lez v0, :cond_1b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yd;->A03:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdLayout;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Yd;->A00:I

    if-le v0, v1, :cond_1b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yd;->A03:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/5O;->setMeasuredDimension(II)V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yd;->A03:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdLayout;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Yd;->A01:I

    if-ge v0, v1, :cond_1a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yd;->A03:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/5O;->setMeasuredDimension(II)V

    goto :goto_1a
.end method

.method public final setMaxWidth(I)V
    .registers 2

    iput p1, p0, Lcom/facebook/ads/redexgen/X/Yd;->A00:I

    return-void
.end method

.method public final setMinWidth(I)V
    .registers 2

    iput p1, p0, Lcom/facebook/ads/redexgen/X/Yd;->A01:I

    return-void
.end method
