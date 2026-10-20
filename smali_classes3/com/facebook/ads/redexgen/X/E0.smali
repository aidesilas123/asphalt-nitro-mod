###### Class com.facebook.ads.redexgen.X.E0 (com.facebook.ads.redexgen.X.E0)
.class public final Lcom/facebook/ads/redexgen/X/E0;
.super Lcom/facebook/ads/redexgen/X/Yd;
.source ""


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/PY;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Yd;-><init>()V

    return-void
.end method


# virtual methods
.method public final A04(Lcom/facebook/ads/NativeAdLayout;Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/redexgen/X/J6;)V
    .registers 16

    move-object v2, p0

    new-instance v8, Lcom/facebook/ads/redexgen/X/Ni;

    move-object v4, p2

    invoke-direct {v8, v4}, Lcom/facebook/ads/redexgen/X/Ni;-><init>(Lcom/facebook/ads/redexgen/X/YA;)V

    new-instance v9, Lcom/facebook/ads/MediaView;

    invoke-direct {v9, v4}, Lcom/facebook/ads/MediaView;-><init>(Landroid/content/Context;)V

    new-instance v10, Lcom/facebook/ads/AdOptionsView;

    invoke-direct {v10, v4, p3, p1}, Lcom/facebook/ads/AdOptionsView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;)V

    const/16 v0, 0x1c

    move-object v6, p4

    invoke-virtual {v6, v10, v0}, Lcom/facebook/ads/redexgen/X/J6;->A09(Lcom/facebook/ads/AdOptionsView;I)V

    invoke-virtual {p3}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UJ;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/UJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UJ;->A17()Lcom/facebook/ads/redexgen/X/J7;

    move-result-object v7

    new-instance v3, Lcom/facebook/ads/redexgen/X/Rd;

    move-object v5, p3

    move-object v0, v3

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/Rd;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/redexgen/X/J6;Lcom/facebook/ads/redexgen/X/J7;Lcom/facebook/ads/redexgen/X/Ni;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/AdOptionsView;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/E0;->A00:Lcom/facebook/ads/redexgen/X/PY;

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/J6;->A00()I

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/LV;->A0M(Landroid/view/View;I)V

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/E0;->A00:Lcom/facebook/ads/redexgen/X/PY;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/PY;->getViewsForInteraction()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p3, p1, v9, v8, v0}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Landroid/widget/ImageView;Ljava/util/List;)V

    const/4 v0, -0x1

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/E0;->A00:Lcom/facebook/ads/redexgen/X/PY;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/PY;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/ads/NativeAdLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/5O;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E0;->A00:Lcom/facebook/ads/redexgen/X/PY;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/PY;->unregisterView()V

    return-void
.end method
