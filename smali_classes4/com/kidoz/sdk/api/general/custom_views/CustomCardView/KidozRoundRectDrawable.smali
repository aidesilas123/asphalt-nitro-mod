###### Class com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozRoundRectDrawable (com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozRoundRectDrawable)
.class Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "KidozRoundRectDrawable.java"


# instance fields
.field private final mBoundsF:Landroid/graphics/RectF;

.field private final mBoundsI:Landroid/graphics/Rect;

.field private mInsetForPadding:Z

.field private mInsetForRadius:Z

.field private mPadding:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mRadius:F


# direct methods
.method public constructor <init>(IF)V
    .registers 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;->mRadius:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;->mInsetForPadding:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;->mInsetForRadius:Z

    iput p2, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;->mRadius:F

    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x5

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    return-void
.end method

.method private updateBounds(Landroid/graphics/Rect;)V
    .registers 7

    if-nez p1, :cond_6

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    :cond_6
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean p1, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;->mInsetForPadding:Z

    if-eqz p1, :cond_4c

    iget p1, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;->mPadding:F

    iget v0, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;->mRadius:F

    iget-boolean v1, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;->mInsetForRadius:Z

    invoke-static {p1, v0, v1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    move-result p1

    iget v0, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;->mPadding:F

    iget v1, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;->mRadius:F

    iget-boolean v2, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;->mInsetForRadius:Z

    invoke-static {v0, v1, v2}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawableWithShadow;->calculateHorizontalPadding(FFZ)F

    move-result v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p1, v2

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Rect;->inset(II)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    :cond_4c
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 5

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;->mRadius:F

    iget-object v2, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    iget v1, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;->mRadius:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method

.method getPadding()F
    .registers 2

    iget v0, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;->mPadding:F

    return v0
.end method

.method public getRadius()F
    .registers 2

    iget v0, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;->mRadius:F

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setAlpha(I)V
    .registers 2

    return-void
.end method

.method public setColor(I)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method

.method setPadding(FZZ)V
    .registers 5

    iget v0, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;->mPadding:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;->mInsetForPadding:Z

    if-ne v0, p2, :cond_f

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;->mInsetForRadius:Z

    if-ne v0, p3, :cond_f

    return-void

    :cond_f
    iput p1, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;->mPadding:F

    iput-boolean p2, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;->mInsetForPadding:Z

    iput-boolean p3, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;->mInsetForRadius:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method setRadius(F)V
    .registers 3

    iget v0, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;->mRadius:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iput p1, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;->mRadius:F

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
