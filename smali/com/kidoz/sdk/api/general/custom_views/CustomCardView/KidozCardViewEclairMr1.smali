###### Class com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewEclairMr1 (com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewEclairMr1)
.class Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1;
.super Ljava/lang/Object;
.source "KidozCardViewEclairMr1.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewImpl;


# instance fields
.field final sCornerRect:Landroid/graphics/RectF;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1;->sCornerRect:Landroid/graphics/RectF;

    return-void
.end method

.method private getShadowBackground(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawableWithShadow;
    .registers 2

    invoke-interface {p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawableWithShadow;

    return-object p1
.end method


# virtual methods
.method createBackground(Landroid/content/Context;IFFF)Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawableWithShadow;
    .registers 13

    new-instance v6, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawableWithShadow;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v0, v6

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawableWithShadow;-><init>(Landroid/content/res/Resources;IFFF)V

    return-object v6
.end method

.method public getElevation(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)F
    .registers 2

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1;->getShadowBackground(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawableWithShadow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawableWithShadow;->getShadowSize()F

    move-result p1

    return p1
.end method

.method public getMaxElevation(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)F
    .registers 2

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1;->getShadowBackground(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawableWithShadow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawableWithShadow;->getMaxShadowSize()F

    move-result p1

    return p1
.end method

.method public getMinHeight(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)F
    .registers 2

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1;->getShadowBackground(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawableWithShadow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawableWithShadow;->getMinHeight()F

    move-result p1

    return p1
.end method

.method public getMinWidth(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)F
    .registers 2

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1;->getShadowBackground(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawableWithShadow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawableWithShadow;->getMinWidth()F

    move-result p1

    return p1
.end method

.method public getRadius(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)F
    .registers 2

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1;->getShadowBackground(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawableWithShadow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawableWithShadow;->getCornerRadius()F

    move-result p1

    return p1
.end method

.method public initStatic()V
    .registers 2

    new-instance v0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1$1;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1$1;-><init>(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1;)V

    sput-object v0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawableWithShadow;->sRoundRectHelper:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawableWithShadow$RoundRectHelper;

    return-void
.end method

.method public initialize(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;Landroid/content/Context;IFFF)V
    .registers 13

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1;->createBackground(Landroid/content/Context;IFFF)Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawableWithShadow;

    move-result-object p2

    invoke-interface {p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;->getPreventCornerOverlap()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawableWithShadow;->setAddPaddingForCorners(Z)V

    invoke-interface {p1, p2}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1;->updatePadding(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)V

    return-void
.end method

.method public onCompatPaddingChanged(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)V
    .registers 2

    return-void
.end method

.method public onPreventCornerOverlapChanged(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1;->getShadowBackground(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawableWithShadow;

    move-result-object v0

    invoke-interface {p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;->getPreventCornerOverlap()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawableWithShadow;->setAddPaddingForCorners(Z)V

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1;->updatePadding(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)V

    return-void
.end method

.method public setBackgroundColor(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1;->getShadowBackground(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawableWithShadow;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawableWithShadow;->setColor(I)V

    return-void
.end method

.method public setElevation(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;F)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1;->getShadowBackground(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawableWithShadow;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawableWithShadow;->setShadowSize(F)V

    return-void
.end method

.method public setMaxElevation(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;F)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1;->getShadowBackground(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawableWithShadow;->setMaxShadowSize(F)V

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1;->updatePadding(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)V

    return-void
.end method

.method public setRadius(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;F)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1;->getShadowBackground(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawableWithShadow;->setCornerRadius(F)V

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1;->updatePadding(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)V

    return-void
.end method

.method public updatePadding(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)V
    .registers 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1;->getShadowBackground(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawableWithShadow;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawableWithShadow;->getMaxShadowAndCornerPadding(Landroid/graphics/Rect;)V

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1;->getMinHeight(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1;->getMinWidth(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {p1, v1, v2, v3, v0}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;->setShadowPadding(IIII)V

    return-void
.end method

###### Class com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewEclairMr1.AnonymousClass1 (com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewEclairMr1$1)
.class Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1$1;
.super Ljava/lang/Object;
.source "KidozCardViewEclairMr1.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawableWithShadow$RoundRectHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1;->initStatic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1$1;->this$0:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, p3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v2, v1

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v10, v2, v9

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v2, v1

    sub-float v11, v2, v9

    const/4 v12, 0x0

    cmpl-float v1, p3, v9

    if-ltz v1, :cond_a3

    const/high16 v1, 0x3f000000    # 0.5f

    add-float v13, p3, v1

    iget-object v1, v0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1$1;->this$0:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1;

    iget-object v1, v1, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1;->sCornerRect:Landroid/graphics/RectF;

    neg-float v2, v13

    invoke-virtual {v1, v2, v2, v13, v13}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v14

    iget v1, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v13

    iget v2, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v13

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1$1;->this$0:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1;

    iget-object v2, v1, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1;->sCornerRect:Landroid/graphics/RectF;

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v4, 0x42b40000    # 90.0f

    const/4 v5, 0x1

    move-object/from16 v1, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {v7, v10, v12}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v15, 0x42b40000    # 90.0f

    invoke-virtual {v7, v15}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v1, v0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1$1;->this$0:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1;

    iget-object v2, v1, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1;->sCornerRect:Landroid/graphics/RectF;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {v7, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v7, v15}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v1, v0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1$1;->this$0:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1;

    iget-object v2, v1, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1;->sCornerRect:Landroid/graphics/RectF;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {v7, v10, v12}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v7, v15}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v1, v0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1$1;->this$0:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1;

    iget-object v2, v1, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1;->sCornerRect:Landroid/graphics/RectF;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {v7, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget v1, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v13

    sub-float v2, v1, v9

    iget v3, v8, Landroid/graphics/RectF;->top:F

    iget v1, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v13

    add-float v4, v1, v9

    add-float v5, v3, v13

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v1, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v13

    sub-float v2, v1, v9

    iget v5, v8, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v5, v13

    add-float v3, v1, v9

    iget v1, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v13

    add-float v4, v1, v9

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_a5

    :cond_a3
    move/from16 v13, p3

    :goto_a5
    iget v2, v8, Landroid/graphics/RectF;->left:F

    iget v1, v8, Landroid/graphics/RectF;->top:F

    sub-float v3, v13, v9

    invoke-static {v12, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-float/2addr v3, v1

    iget v4, v8, Landroid/graphics/RectF;->right:F

    iget v1, v8, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v13

    add-float v5, v1, v9

    move-object/from16 v1, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
