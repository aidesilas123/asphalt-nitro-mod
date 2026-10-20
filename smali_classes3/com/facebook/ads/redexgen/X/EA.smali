###### Class com.facebook.ads.redexgen.X.EA (com.facebook.ads.redexgen.X.EA)
.class public final Lcom/facebook/ads/redexgen/X/EA;
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
.method public final A04(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/redexgen/X/J6;Lcom/facebook/ads/NativeAdLayout;)V
    .registers 15

    move-object v2, p0

    invoke-virtual {p4}, Lcom/facebook/ads/NativeAdLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v8, Lcom/facebook/ads/MediaView;

    invoke-direct {v8, v0}, Lcom/facebook/ads/MediaView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p4}, Lcom/facebook/ads/NativeAdLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v9, Lcom/facebook/ads/AdOptionsView;

    invoke-direct {v9, v0, p2, p4}, Lcom/facebook/ads/AdOptionsView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;)V

    const/16 v0, 0x14

    move-object v6, p3

    invoke-virtual {v6, v9, v0}, Lcom/facebook/ads/redexgen/X/J6;->A09(Lcom/facebook/ads/AdOptionsView;I)V

    invoke-virtual {p2}, Lcom/facebook/ads/NativeBannerAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UJ;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/UJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UJ;->A17()Lcom/facebook/ads/redexgen/X/J7;

    move-result-object v7

    new-instance v3, Lcom/facebook/ads/redexgen/X/Re;

    move-object v5, p2

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/Re;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/redexgen/X/J6;Lcom/facebook/ads/redexgen/X/J7;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/AdOptionsView;)V

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/EA;->A00:Lcom/facebook/ads/redexgen/X/PY;

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/J6;->A00()I

    move-result v0

    invoke-static {p4, v0}, Lcom/facebook/ads/redexgen/X/LV;->A0M(Landroid/view/View;I)V

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/EA;->A00:Lcom/facebook/ads/redexgen/X/PY;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/PY;->getViewsForInteraction()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2, p4, v8, v0}, Lcom/facebook/ads/NativeBannerAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    const/4 v0, -0x1

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/EA;->A00:Lcom/facebook/ads/redexgen/X/PY;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/PY;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p4, v0, v1}, Lcom/facebook/ads/NativeAdLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/5O;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EA;->A00:Lcom/facebook/ads/redexgen/X/PY;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/PY;->unregisterView()V

    return-void
.end method
