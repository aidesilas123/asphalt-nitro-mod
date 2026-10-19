###### Class com.kidoz.sdk.api.ui_views.custom_drawables.XViewDrawable (com.kidoz.sdk.api.ui_views.custom_drawables.XViewDrawable)
.class public Lcom/kidoz/sdk/api/ui_views/custom_drawables/XViewDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "XViewDrawable.java"


# instance fields
.field private mDefaultColor:I

.field private mHeight:I

.field private mWidth:I

.field private mXPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/XViewDrawable;->mXPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/XViewDrawable;->mDefaultColor:I

    iput p2, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/XViewDrawable;->mDefaultColor:I

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/XViewDrawable;->init(Landroid/content/Context;)V

    return-void
.end method

.method private static getStrokeSizeByScreenLayout(Landroid/content/Context;)I
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x1

    const/4 v1, 0x5

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1e

    const/16 v1, 0x9

    goto :goto_1e

    :cond_1c
    const/16 v1, 0x8

    :cond_1e
    :goto_1e
    return v1
.end method

.method private init(Landroid/content/Context;)V
    .registers 5

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/XViewDrawable;->mXPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/XViewDrawable;->mXPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/XViewDrawable;->mDefaultColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/XViewDrawable;->mXPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/XViewDrawable;->getStrokeSizeByScreenLayout(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/XViewDrawable;->mXPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/XViewDrawable;->mXPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setDither(Z)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/XViewDrawable;->mHeight:I

    int-to-float v3, v0

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/XViewDrawable;->mWidth:I

    int-to-float v4, v0

    iget-object v6, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/XViewDrawable;->mXPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/XViewDrawable;->mWidth:I

    int-to-float v4, v0

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/XViewDrawable;->mHeight:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/XViewDrawable;->mXPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

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

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/XViewDrawable;->mWidth:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/XViewDrawable;->mHeight:I

    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/XViewDrawable;->mXPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/XViewDrawable;->mXPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
