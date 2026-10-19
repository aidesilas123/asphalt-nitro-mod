###### Class com.kidoz.sdk.api.ui_views.new_panel_view.PanelShape (com.kidoz.sdk.api.ui_views.new_panel_view.PanelShape)
.class public Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;
.super Landroid/view/View;
.source "PanelShape.java"


# static fields
.field private static final HOLLOW_PAINT_COLOR:I = 0x10000000

.field private static final TOP_CORNER_RADIUS:F = 140.0f

.field private static final TOP_MARGIN_PERCENT:F = 0.2f


# instance fields
.field private mInnerHollowPaint:Landroid/graphics/Paint;

.field private mInnerHollowPath:Landroid/graphics/Path;

.field private mMainShapePath:Landroid/graphics/Path;

.field private mPaint:Landroid/graphics/Paint;

.field private mPanelColor:I

.field private mPointyCapPath:Landroid/graphics/Path;

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mPanelColor:I

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->init()V

    return-void
.end method

.method private hollowShape(F)V
    .registers 12

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mViewWidth:I

    int-to-double v1, v0

    const-wide v3, 0x3fa47ae147ae147bL    # 0.04

    mul-double v1, v1, v3

    double-to-float v1, v1

    float-to-double v2, p1

    iget p1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mViewHeight:I

    int-to-double v4, p1

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double v4, v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    int-to-double v3, p1

    const-wide v5, 0x3fee666666666666L    # 0.95

    mul-double v3, v3, v5

    double-to-float v3, v3

    int-to-double v4, p1

    const-wide v6, 0x3fe999999999999aL    # 0.8

    mul-double v4, v4, v6

    double-to-float v4, v4

    int-to-float v5, v0

    const/high16 v6, 0x3fa00000    # 1.25f

    mul-float v6, v6, v1

    sub-float/2addr v5, v6

    int-to-float v0, v0

    const/high16 v6, 0x40600000    # 3.5f

    mul-float v6, v6, v1

    sub-float/2addr v0, v6

    int-to-float p1, p1

    const v6, 0x3f666666    # 0.9f

    mul-float p1, p1, v6

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v0, v4, v5, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v7, 0x40800000    # 4.0f

    mul-float v7, v7, v1

    iget v8, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mViewHeight:I

    int-to-float v9, v8

    int-to-float v8, v8

    sub-float/2addr v8, p1

    const/high16 p1, 0x40000000    # 2.0f

    mul-float v8, v8, p1

    sub-float/2addr v9, v8

    sub-float p1, v0, v7

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, p1, v9, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mInnerHollowPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mInnerHollowPath:Landroid/graphics/Path;

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mViewWidth:I

    int-to-float v0, v0

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mInnerHollowPath:Landroid/graphics/Path;

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mViewWidth:I

    int-to-float v0, v0

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mInnerHollowPath:Landroid/graphics/Path;

    invoke-virtual {p1, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mInnerHollowPath:Landroid/graphics/Path;

    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v6, v0, v0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mInnerHollowPath:Landroid/graphics/Path;

    const/4 v0, 0x0

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {p1, v7, v0, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mInnerHollowPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mInnerHollowPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private init()V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private initMainShapePath(F)V
    .registers 14

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mViewWidth:I

    int-to-float v2, v1

    const/high16 v3, 0x430c0000    # 140.0f

    sub-float/2addr v2, v3

    int-to-float v1, v1

    add-float v4, p1, v3

    invoke-direct {v0, v2, p1, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mMainShapePath:Landroid/graphics/Path;

    iget v2, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mViewWidth:I

    int-to-float v2, v2

    iget v5, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mViewHeight:I

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mMainShapePath:Landroid/graphics/Path;

    iget v2, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mViewWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mMainShapePath:Landroid/graphics/Path;

    const/4 v2, 0x0

    const/high16 v4, -0x3d4c0000    # -90.0f

    invoke-virtual {v1, v0, v2, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    new-instance v0, Landroid/graphics/Point;

    float-to-int v1, p1

    const/16 v4, 0x46

    invoke-direct {v0, v4, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    const/16 v4, -0x104

    const/16 v5, -0x3c

    invoke-direct {v1, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance v4, Landroid/graphics/Point;

    const/high16 v5, 0x40a00000    # 5.0f

    mul-float p1, p1, v5

    add-float/2addr p1, v3

    float-to-int p1, p1

    const/4 v3, 0x0

    invoke-direct {v4, v3, p1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v5, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mMainShapePath:Landroid/graphics/Path;

    iget p1, v0, Landroid/graphics/Point;->x:I

    int-to-float v6, p1

    iget p1, v0, Landroid/graphics/Point;->y:I

    int-to-float v7, p1

    iget p1, v1, Landroid/graphics/Point;->x:I

    int-to-float v8, p1

    iget p1, v1, Landroid/graphics/Point;->y:I

    int-to-float v9, p1

    iget p1, v4, Landroid/graphics/Point;->x:I

    int-to-float v10, p1

    iget p1, v4, Landroid/graphics/Point;->y:I

    int-to-float v11, p1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mMainShapePath:Landroid/graphics/Path;

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mViewHeight:I

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mMainShapePath:Landroid/graphics/Path;

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mViewWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mViewHeight:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mMainShapePath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private initPointyCapShapePath(F)V
    .registers 14

    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mViewWidth:I

    float-to-int p1, p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mViewWidth:I

    int-to-double v2, v2

    const-wide v4, 0x3fd3333333333333L    # 0.3

    mul-double v2, v2, v4

    double-to-int v2, v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mViewWidth:I

    int-to-double v3, v3

    const-wide v5, 0x3fc3333333333333L    # 0.15

    mul-double v3, v3, v5

    double-to-int v3, v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    new-instance v3, Landroid/graphics/Point;

    const/16 v4, 0x2f

    invoke-direct {v3, v4, p1}, Landroid/graphics/Point;-><init>(II)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mPointyCapPath:Landroid/graphics/Path;

    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mPointyCapPath:Landroid/graphics/Path;

    iget p1, v1, Landroid/graphics/Point;->x:I

    int-to-float v6, p1

    iget p1, v1, Landroid/graphics/Point;->y:I

    int-to-float v7, p1

    iget p1, v2, Landroid/graphics/Point;->x:I

    int-to-float v8, p1

    iget p1, v2, Landroid/graphics/Point;->y:I

    int-to-float v9, p1

    iget p1, v3, Landroid/graphics/Point;->x:I

    int-to-float v10, p1

    iget p1, v3, Landroid/graphics/Point;->y:I

    int-to-float v11, p1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mPointyCapPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private initShapePaint()V
    .registers 4

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mPanelColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mInnerHollowPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mInnerHollowPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method private layout()V
    .registers 3

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->initShapePaint()V

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mViewHeight:I

    int-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, v1

    invoke-direct {p0, v0}, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->initMainShapePath(F)V

    invoke-direct {p0, v0}, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->initPointyCapShapePath(F)V

    invoke-direct {p0, v0}, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->hollowShape(F)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mMainShapePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mInnerHollowPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mInnerHollowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mInnerHollowPaint:Landroid/graphics/Paint;

    const v1, -0x43350036

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mInnerHollowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mInnerHollowPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mInnerHollowPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mInnerHollowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mViewWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mViewHeight:I

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->layout()V

    return-void
.end method

.method public setPanelColor(I)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_a
    return-void
.end method
