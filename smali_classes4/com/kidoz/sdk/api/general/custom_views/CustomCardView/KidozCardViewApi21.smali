###### Class com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewApi21 (com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewApi21)
.class Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewApi21;
.super Ljava/lang/Object;
.source "KidozCardViewApi21.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewImpl;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getElevation(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)F
    .registers 2

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result p1

    return p1
.end method

.method public getMaxElevation(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)F
    .registers 2

    invoke-interface {p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;->getPadding()F

    move-result p1

    return p1
.end method

.method public getMinHeight(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)F
    .registers 3

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewApi21;->getRadius(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    return p1
.end method

.method public getMinWidth(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)F
    .registers 3

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewApi21;->getRadius(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    return p1
.end method

.method public getRadius(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)F
    .registers 2

    invoke-interface {p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;->getRadius()F

    move-result p1

    return p1
.end method

.method public initStatic()V
    .registers 1

    return-void
.end method

.method public initialize(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;Landroid/content/Context;IFFF)V
    .registers 7

    new-instance p2, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;

    invoke-direct {p2, p3, p4}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;-><init>(IF)V

    invoke-interface {p1, p2}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object p2, p1

    check-cast p2, Landroid/view/View;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {p2, p5}, Landroid/view/View;->setElevation(F)V

    invoke-virtual {p0, p1, p6}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewApi21;->setMaxElevation(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;F)V

    return-void
.end method

.method public onCompatPaddingChanged(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewApi21;->getMaxElevation(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewApi21;->setMaxElevation(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;F)V

    return-void
.end method

.method public onPreventCornerOverlapChanged(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewApi21;->getMaxElevation(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewApi21;->setMaxElevation(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;F)V

    return-void
.end method

.method public setBackgroundColor(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;I)V
    .registers 3

    invoke-interface {p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;

    invoke-virtual {p1, p2}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;->setColor(I)V

    return-void
.end method

.method public setElevation(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;F)V
    .registers 3

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method public setMaxElevation(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;F)V
    .registers 6

    invoke-interface {p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;

    invoke-interface {p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;->getUseCompatPadding()Z

    move-result v1

    invoke-interface {p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;->getPreventCornerOverlap()Z

    move-result v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;->setPadding(FZZ)V

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewApi21;->updatePadding(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)V

    return-void
.end method

.method public setRadius(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;F)V
    .registers 3

    invoke-interface {p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;

    invoke-virtual {p1, p2}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawable;->setRadius(F)V

    return-void
.end method

.method public updatePadding(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)V
    .registers 6

    invoke-interface {p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;->getUseCompatPadding()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, v0, v0}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;->setShadowPadding(IIII)V

    return-void

    :cond_b
    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewApi21;->getMaxElevation(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)F

    move-result v0

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewApi21;->getRadius(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)F

    move-result v1

    invoke-interface {p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;->getPreventCornerOverlap()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawableWithShadow;->calculateHorizontalPadding(FFZ)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-interface {p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;->getPreventCornerOverlap()Z

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-interface {p1, v2, v0, v2, v0}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;->setShadowPadding(IIII)V

    return-void
.end method
