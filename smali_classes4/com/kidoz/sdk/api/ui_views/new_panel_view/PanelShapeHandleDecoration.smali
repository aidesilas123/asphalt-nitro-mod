###### Class com.kidoz.sdk.api.ui_views.new_panel_view.PanelShapeHandleDecoration (com.kidoz.sdk.api.ui_views.new_panel_view.PanelShapeHandleDecoration)
.class public Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShapeHandleDecoration;
.super Landroid/view/View;
.source "PanelShapeHandleDecoration.java"


# instance fields
.field private mMainShapePath:Landroid/graphics/Path;

.field private mPaint:Landroid/graphics/Paint;

.field private mPanelColor:I

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShapeHandleDecoration;->mPanelColor:I

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShapeHandleDecoration;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShapeHandleDecoration;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShapeHandleDecoration;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShapeHandleDecoration;->init()V

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

.method private initMainShapePath()V
    .registers 6

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShapeHandleDecoration;->mViewWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShapeHandleDecoration;->mViewHeight:I

    int-to-float v1, v1

    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShapeHandleDecoration;->mMainShapePath:Landroid/graphics/Path;

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShapeHandleDecoration;->mViewHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShapeHandleDecoration;->mMainShapePath:Landroid/graphics/Path;

    const/high16 v1, -0x3ccc0000    # -180.0f

    const/high16 v4, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v2, v1, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShapeHandleDecoration;->mMainShapePath:Landroid/graphics/Path;

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShapeHandleDecoration;->mViewHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShapeHandleDecoration;->mMainShapePath:Landroid/graphics/Path;

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShapeHandleDecoration;->mViewHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShapeHandleDecoration;->mMainShapePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private initShapePaint()V
    .registers 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShapeHandleDecoration;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShapeHandleDecoration;->mPanelColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private layout()V
    .registers 1

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShapeHandleDecoration;->initShapePaint()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShapeHandleDecoration;->initMainShapePath()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShapeHandleDecoration;->mMainShapePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShapeHandleDecoration;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShapeHandleDecoration;->mViewWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShapeHandleDecoration;->mViewHeight:I

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShapeHandleDecoration;->layout()V

    return-void
.end method
