###### Class com.kidoz.sdk.api.ui_views.custom_drawables.VideoUnitDrawable (com.kidoz.sdk.api.ui_views.custom_drawables.VideoUnitDrawable)
.class public Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "VideoUnitDrawable.java"


# instance fields
.field private mDefaultBgRadius:F

.field private mHeight:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mRectF:Landroid/graphics/RectF;

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 15

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mPaint:Landroid/graphics/Paint;

    const-string v1, "#7297A3"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const v2, 0x3d4ccccd    # 0.05f

    const-string v3, "#90C3D4"

    const/16 v4, 0x15

    if-lt v0, v4, :cond_4c

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mWidth:I

    int-to-float v8, v0

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mHeight:I

    int-to-float v9, v0

    iget v11, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mDefaultBgRadius:F

    iget-object v12, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v10, v11

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v5, 0x0

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mWidth:I

    int-to-float v7, v0

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mHeight:I

    int-to-float v3, v0

    int-to-float v0, v0

    mul-float v0, v0, v2

    sub-float v8, v3, v0

    iget v10, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mDefaultBgRadius:F

    iget-object v11, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v9, v10

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_8d

    :cond_4c
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mRectF:Landroid/graphics/RectF;

    iget v4, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mDefaultBgRadius:F

    iget-object v5, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mRectF:Landroid/graphics/RectF;

    iget v3, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mHeight:I

    int-to-float v5, v4

    int-to-float v4, v4

    mul-float v4, v4, v2

    sub-float/2addr v5, v4

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mRectF:Landroid/graphics/RectF;

    iget v3, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mDefaultBgRadius:F

    iget-object v4, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v3, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mHeight:I

    int-to-float v4, v4

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mRectF:Landroid/graphics/RectF;

    iget v3, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mHeight:I

    int-to-float v4, v4

    invoke-virtual {v0, v2, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_8d
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v2, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mHeight:I

    int-to-float v6, v2

    const-string v2, "#614C45"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    const-string v2, "#FAC7B6"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mPaint:Landroid/graphics/Paint;

    const-string v1, "#362A25"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mPaint:Landroid/graphics/Paint;

    const v1, 0x3df5c28f    # 0.12f

    iget v2, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mWidth:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mHeight:I

    int-to-float v2, v1

    const v3, 0x3dcccccd    # 0.1f

    int-to-float v1, v1

    mul-float v1, v1, v3

    sub-float/2addr v2, v1

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mPaint:Landroid/graphics/Paint;

    const-string v3, "KIDOZ TV"

    invoke-virtual {p1, v3, v0, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mWidth:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mHeight:I

    new-instance p1, Landroid/graphics/RectF;

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mHeight:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {p1, v2, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mRectF:Landroid/graphics/RectF;

    iget p1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mWidth:I

    int-to-float p1, p1

    const v0, 0x3dcccccd    # 0.1f

    mul-float p1, p1, v0

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mDefaultBgRadius:F

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mPath:Landroid/graphics/Path;

    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mPath:Landroid/graphics/Path;

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mHeight:I

    int-to-float v3, v2

    int-to-float v2, v2

    const v4, 0x3d4ccccd    # 0.05f

    mul-float v2, v2, v4

    sub-float/2addr v3, v2

    div-float/2addr v3, v1

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mPath:Landroid/graphics/Path;

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mWidth:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget v2, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mHeight:I

    int-to-float v3, v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    sub-float/2addr v3, v2

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mPath:Landroid/graphics/Path;

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mWidth:I

    int-to-float v2, v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    sub-float/2addr v2, v0

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/VideoUnitDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
