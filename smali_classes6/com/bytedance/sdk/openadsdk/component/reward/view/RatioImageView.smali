###### Class com.bytedance.sdk.openadsdk.component.reward.view.RatioImageView (com.bytedance.sdk.openadsdk.component.reward.view.RatioImageView)
.class public Lcom/bytedance/sdk/openadsdk/component/reward/view/RatioImageView;
.super Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;
.source "RatioImageView.java"


# instance fields
.field private a:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RatioImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 10

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RatioImageView;->a:F

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x0

    cmpl-float v6, v4, v6

    if-lez v6, :cond_36

    const/4 v6, -0x2

    if-ne v2, v6, :cond_2f

    int-to-float p1, p2

    mul-float p1, p1, v4

    float-to-int p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_36

    :cond_2f
    if-ne v3, v6, :cond_36

    int-to-float p2, p1

    div-float/2addr p2, v4

    float-to-int p2, p2

    const/high16 v1, 0x40000000    # 2.0f

    :cond_36
    :goto_36
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setRatio(F)V
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RatioImageView;->a:F

    return-void
.end method
