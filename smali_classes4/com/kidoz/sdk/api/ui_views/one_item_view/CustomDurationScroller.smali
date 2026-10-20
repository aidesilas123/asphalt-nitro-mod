###### Class com.kidoz.sdk.api.ui_views.one_item_view.CustomDurationScroller (com.kidoz.sdk.api.ui_views.one_item_view.CustomDurationScroller)
.class Lcom/kidoz/sdk/api/ui_views/one_item_view/CustomDurationScroller;
.super Landroid/widget/Scroller;
.source "AutoScrollViewPager.java"


# instance fields
.field private scrollFactor:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/CustomDurationScroller;->scrollFactor:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    iput-wide p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/CustomDurationScroller;->scrollFactor:D

    return-void
.end method


# virtual methods
.method public setScrollDurationFactor(D)V
    .registers 3

    iput-wide p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/CustomDurationScroller;->scrollFactor:D

    return-void
.end method

.method public startScroll(IIIII)V
    .registers 14

    int-to-double v0, p5

    iget-wide v2, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/CustomDurationScroller;->scrollFactor:D

    mul-double v0, v0, v2

    double-to-int v7, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-super/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method
