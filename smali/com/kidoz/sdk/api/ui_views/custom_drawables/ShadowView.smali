###### Class com.kidoz.sdk.api.ui_views.custom_drawables.ShadowView (com.kidoz.sdk.api.ui_views.custom_drawables.ShadowView)
.class public Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView;
.super Landroid/view/View;
.source "ShadowView.java"


# instance fields
.field private mCornerRadius:F

.field private mHandePosition:Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;

.field private mPaint:Landroid/graphics/Paint;

.field private mPanelType:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

.field private mRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView;->initView()V

    return-void
.end method

.method private initView()V
    .registers 6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v0

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView;->mPaint:Landroid/graphics/Paint;

    const-string v3, "#000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/BlurMaskFilter;

    int-to-float v0, v0

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v3, v0, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView;->mCornerRadius:F

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v2, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private prepareView()V
    .registers 7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v1

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView;->mRectF:Landroid/graphics/RectF;

    sget-object v2, Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView$1;->$SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PANEL_TYPE:[I

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView;->mPanelType:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_75

    sget-object v2, Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView$1;->$SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$HANDLE_POSITION:[I

    iget-object v5, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView;->mHandePosition:Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v2, v2, v5

    if-eq v2, v4, :cond_61

    if-eq v2, v3, :cond_4d

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView;->mRectF:Landroid/graphics/RectF;

    neg-int v3, v0

    int-to-float v3, v3

    int-to-float v4, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v5, v0

    int-to-float v0, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v1, v5

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_c2

    :cond_4d
    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView;->mRectF:Landroid/graphics/RectF;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v0

    int-to-float v0, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v1, v5

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_c2

    :cond_61
    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView;->mRectF:Landroid/graphics/RectF;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v5, v0

    int-to-float v0, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v1, v5

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_c2

    :cond_75
    sget-object v2, Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView$1;->$SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$HANDLE_POSITION:[I

    iget-object v5, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView;->mHandePosition:Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v2, v2, v5

    if-eq v2, v4, :cond_ae

    if-eq v2, v3, :cond_99

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView;->mRectF:Landroid/graphics/RectF;

    neg-int v3, v0

    int-to-float v3, v3

    neg-int v4, v1

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v5, v0

    int-to-float v0, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v5, v1

    int-to-float v1, v5

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_c2

    :cond_99
    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView;->mRectF:Landroid/graphics/RectF;

    int-to-float v3, v0

    neg-int v4, v1

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v0

    int-to-float v0, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v5, v1

    int-to-float v1, v5

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_c2

    :cond_ae
    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView;->mRectF:Landroid/graphics/RectF;

    int-to-float v3, v0

    neg-int v4, v1

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v5, v0

    int-to-float v0, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v5, v1

    int-to-float v1, v5

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_c2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView;->mRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView;->mCornerRadius:F

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView;->prepareView()V

    return-void
.end method

.method public setConfiguration(Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView;->mPanelType:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView;->mHandePosition:Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView;->prepareView()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
