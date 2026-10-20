###### Class com.kidoz.sdk.api.ui_views.AboutKidozWebViewContainer (com.kidoz.sdk.api.ui_views.AboutKidozWebViewContainer)
.class public Lcom/kidoz/sdk/api/ui_views/AboutKidozWebViewContainer;
.super Landroid/widget/RelativeLayout;
.source "AboutKidozWebViewContainer.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mHeight:I

.field private mPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-class p1, Lcom/kidoz/sdk/api/ui_views/AboutKidozWebViewContainer;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/AboutKidozWebViewContainer;->TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/AboutKidozWebViewContainer;->initView()V

    return-void
.end method

.method private initImageParameters()V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScreenSize(Landroid/content/Context;Z)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/AboutKidozWebViewContainer;->mHeight:I

    return-void
.end method

.method private initView()V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setWillNotDraw(Z)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/AboutKidozWebViewContainer;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/AboutKidozWebViewContainer;->mPaint:Landroid/graphics/Paint;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/AboutKidozWebViewContainer;->initImageParameters()V

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/AboutKidozWebViewContainer;->initImageParameters()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/AboutKidozWebViewContainer;->mWidth:I

    int-to-float v4, v0

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/AboutKidozWebViewContainer;->mHeight:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/kidoz/sdk/api/ui_views/AboutKidozWebViewContainer;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    iget p1, p0, Lcom/kidoz/sdk/api/ui_views/AboutKidozWebViewContainer;->mWidth:I

    iget p2, p0, Lcom/kidoz/sdk/api/ui_views/AboutKidozWebViewContainer;->mHeight:I

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4, p3, p3, p1, p2}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x41200000    # 10.0f

    invoke-static {p1, p2}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result p1

    iget p2, p0, Lcom/kidoz/sdk/api/ui_views/AboutKidozWebViewContainer;->mWidth:I

    mul-int/lit8 p3, p1, 0x3

    sub-int/2addr p2, p3

    mul-int/lit8 p3, p1, 0x2

    add-int p4, p2, p3

    add-int/2addr p3, p1

    const/4 p5, 0x1

    invoke-virtual {p0, p5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5, p2, p1, p4, p3}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/AboutKidozWebViewContainer;->mWidth:I

    iget p2, p0, Lcom/kidoz/sdk/api/ui_views/AboutKidozWebViewContainer;->mHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/widget/RelativeLayout;->setMeasuredDimension(II)V

    return-void
.end method
