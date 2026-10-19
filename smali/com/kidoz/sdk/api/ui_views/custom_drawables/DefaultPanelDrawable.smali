###### Class com.kidoz.sdk.api.ui_views.custom_drawables.DefaultPanelDrawable (com.kidoz.sdk.api.ui_views.custom_drawables.DefaultPanelDrawable)
.class public Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "DefaultPanelDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;
    }
.end annotation


# static fields
.field private static final CLOSE_BUTTON_SIZE_RATIO_RELATIVE_TO_OPEN:F = 0.6f

.field private static final LINE_WIDTH:F = 0.258f

.field private static final SIZE_RATIO:F = 0.54f


# instance fields
.field private mBaseColor:I

.field private mBgPaint:Landroid/graphics/Paint;

.field private mCloseBackgroundRectF:Landroid/graphics/RectF;

.field private mCloseBackgroundRoundedRectF:Landroid/graphics/RectF;

.field private mDrawSign:Z

.field private mDrawableType:Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;

.field private mHeight:I

.field private mMinus:Landroid/graphics/Path;

.field private mOpenBackgroundRectF:Landroid/graphics/RectF;

.field private mOpenBackgroundRoundedRectF:Landroid/graphics/RectF;

.field private mPanelType:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

.field private mPlus:Landroid/graphics/Path;

.field private mWidth:I

.field private mXPaint:Landroid/graphics/Paint;

.field private mXcolor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;)V
    .registers 9

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mPlus:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mMinus:Landroid/graphics/Path;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mDrawSign:Z

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScaleFactor(Landroid/content/Context;)F

    move-result p1

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mWidth:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int v1, v1

    iput v1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mWidth:I

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mHeight:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int p1, v1

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mHeight:I

    const-string p1, "#ffffff"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mBaseColor:I

    const-string p1, "#cdffffff"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mXcolor:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mXPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mXPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mXPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mXPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/CornerPathEffect;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mXPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mXcolor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mXPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40900000    # 4.5f

    const/4 v2, 0x0

    const/high16 v3, 0x3fc00000    # 1.5f

    const/high16 v4, 0x45000000    # 2048.0f

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mXPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mBgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mBgPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mBaseColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mPanelType:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    iput-object p3, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mDrawableType:Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->initRectF()V

    return-void
.end method

.method private generateMinusButtonPath(FF)V
    .registers 8

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mWidth:I

    int-to-float v1, v0

    const v2, 0x3f0a3d71    # 0.54f

    mul-float v1, v1, v2

    int-to-float v0, v0

    const v2, 0x3e841893    # 0.258f

    mul-float v0, v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const v3, 0x40266666    # 2.6f

    div-float v3, v0, v3

    sub-float/2addr v1, v3

    div-float/2addr v0, v2

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mMinus:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mMinus:Landroid/graphics/Path;

    sub-float v4, p1, v1

    div-float/2addr v0, v2

    sub-float/2addr v4, v0

    add-float v2, p2, v0

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mMinus:Landroid/graphics/Path;

    sub-float/2addr p2, v0

    invoke-virtual {v3, v4, p2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mMinus:Landroid/graphics/Path;

    add-float/2addr p1, v1

    add-float/2addr p1, v0

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mMinus:Landroid/graphics/Path;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mMinus:Landroid/graphics/Path;

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mMinus:Landroid/graphics/Path;

    invoke-virtual {p1, v4, p2}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method private generatePlusButtonPath(FF)V
    .registers 10

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mWidth:I

    int-to-float v1, v0

    const v2, 0x3f0a3d71    # 0.54f

    mul-float v1, v1, v2

    int-to-float v0, v0

    const v2, 0x3e841893    # 0.258f

    mul-float v0, v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v3, 0x40600000    # 3.5f

    div-float v3, v0, v3

    sub-float/2addr v1, v3

    div-float/2addr v0, v2

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mPlus:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mPlus:Landroid/graphics/Path;

    div-float/2addr v0, v2

    sub-float v2, p1, v0

    add-float v4, p2, v0

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mPlus:Landroid/graphics/Path;

    sub-float v5, p1, v1

    sub-float/2addr v5, v0

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mPlus:Landroid/graphics/Path;

    sub-float/2addr p2, v0

    invoke-virtual {v3, v5, p2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mPlus:Landroid/graphics/Path;

    invoke-virtual {v3, v2, p2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mPlus:Landroid/graphics/Path;

    sub-float v6, p2, v1

    invoke-virtual {v3, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mPlus:Landroid/graphics/Path;

    add-float/2addr p1, v0

    invoke-virtual {v3, p1, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mPlus:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mPlus:Landroid/graphics/Path;

    add-float v3, p1, v1

    invoke-virtual {v0, v3, p2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mPlus:Landroid/graphics/Path;

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mPlus:Landroid/graphics/Path;

    invoke-virtual {p2, p1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mPlus:Landroid/graphics/Path;

    add-float/2addr v1, v4

    invoke-virtual {p2, p1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mPlus:Landroid/graphics/Path;

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mPlus:Landroid/graphics/Path;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mPlus:Landroid/graphics/Path;

    invoke-virtual {p1, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method private initRectF()V
    .registers 9

    sget-object v0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$1;->$SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PANEL_TYPE:[I

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mPanelType:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const v2, 0x3fa66666    # 1.3f

    const v3, 0x3f19999a    # 0.6f

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    if-eq v0, v1, :cond_7d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1b

    goto/16 :goto_dc

    :cond_1b
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mDrawableType:Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;->OPEN_VIEW:Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;

    if-ne v0, v1, :cond_4a

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mHeight:I

    int-to-float v2, v1

    div-float/2addr v2, v4

    iget v3, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mWidth:I

    int-to-float v3, v3

    int-to-float v1, v1

    invoke-direct {v0, v5, v2, v3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mOpenBackgroundRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mHeight:I

    int-to-float v2, v2

    invoke-direct {v0, v5, v5, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mOpenBackgroundRoundedRectF:Landroid/graphics/RectF;

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mWidth:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-direct {p0, v0, v1}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->generatePlusButtonPath(FF)V

    goto/16 :goto_dc

    :cond_4a
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mHeight:I

    int-to-float v6, v1

    mul-float v6, v6, v3

    mul-float v6, v6, v2

    iget v2, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mWidth:I

    int-to-float v2, v2

    int-to-float v1, v1

    invoke-direct {v0, v5, v6, v2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mCloseBackgroundRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mHeight:I

    int-to-float v2, v1

    mul-float v2, v2, v3

    iget v6, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mWidth:I

    int-to-float v6, v6

    int-to-float v1, v1

    invoke-direct {v0, v5, v2, v6, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mCloseBackgroundRoundedRectF:Landroid/graphics/RectF;

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mHeight:I

    int-to-float v1, v0

    mul-float v1, v1, v3

    int-to-float v0, v0

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    add-float/2addr v1, v0

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mWidth:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-direct {p0, v0, v1}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->generateMinusButtonPath(FF)V

    goto :goto_dc

    :cond_7d
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mDrawableType:Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;->OPEN_VIEW:Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;

    if-ne v0, v1, :cond_aa

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-direct {v0, v5, v5, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mOpenBackgroundRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mHeight:I

    int-to-float v2, v2

    invoke-direct {v0, v5, v5, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mOpenBackgroundRoundedRectF:Landroid/graphics/RectF;

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mWidth:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-direct {p0, v0, v1}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->generatePlusButtonPath(FF)V

    goto :goto_dc

    :cond_aa
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mWidth:I

    int-to-float v1, v1

    iget v6, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mHeight:I

    int-to-float v7, v6

    int-to-float v6, v6

    mul-float v6, v6, v3

    sub-float/2addr v7, v6

    div-float/2addr v7, v2

    invoke-direct {v0, v5, v5, v1, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mCloseBackgroundRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mHeight:I

    int-to-float v6, v2

    int-to-float v2, v2

    mul-float v2, v2, v3

    sub-float/2addr v6, v2

    invoke-direct {v0, v5, v5, v1, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mCloseBackgroundRoundedRectF:Landroid/graphics/RectF;

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mHeight:I

    int-to-float v1, v0

    int-to-float v0, v0

    mul-float v0, v0, v3

    sub-float/2addr v1, v0

    div-float/2addr v1, v4

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mWidth:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-direct {p0, v0, v1}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->generateMinusButtonPath(FF)V

    :goto_dc
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 5

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mBgPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mBaseColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mXPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mXcolor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mWidth:I

    int-to-float v0, v0

    const v1, 0x3e1039b1

    mul-float v0, v0, v1

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$1;->$SwitchMap$com$kidoz$sdk$api$ui_views$custom_drawables$DefaultPanelDrawable$PanelDrawableType:[I

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mDrawableType:Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_41

    const/4 v2, 0x2

    if-eq v1, v2, :cond_27

    goto :goto_5a

    :cond_27
    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mCloseBackgroundRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mCloseBackgroundRoundedRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mDrawSign:Z

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mMinus:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mXPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_5a

    :cond_41
    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mOpenBackgroundRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mOpenBackgroundRoundedRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mDrawSign:Z

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mPlus:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mXPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_5a
    :goto_5a
    return-void
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mWidth:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mHeight:I

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->initRectF()V

    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mXPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setBaseColor(I)V
    .registers 3

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mBaseColor:I

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mXPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setDrawSign(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mDrawSign:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setPanelType(Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->mPanelType:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->initRectF()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
