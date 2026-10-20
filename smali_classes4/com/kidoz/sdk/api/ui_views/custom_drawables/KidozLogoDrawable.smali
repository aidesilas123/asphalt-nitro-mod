###### Class com.kidoz.sdk.api.ui_views.custom_drawables.KidozLogoDrawable (com.kidoz.sdk.api.ui_views.custom_drawables.KidozLogoDrawable)
.class public Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "KidozLogoDrawable.java"


# static fields
.field private static final CIRCLE_FIRST_LEVEL_VERTICAL_RATIO:F = 0.35f

.field private static final CIRCLE_FOURTH_LEVEL_VETICAL_RATIO:F = 0.58f

.field private static final CIRCLE_RADIUS_SIZE_RATIO:F = 0.16f

.field private static final CIRCLE_SECOND_LEVEL_HORIZONTAL_RATIO:F = 0.3f

.field private static final CIRCLE_SECOND_LEVEL_VERTICAL_RATIO:F = 0.45f

.field private static final CIRCLE_THIRD_LEVEL_HORIZONTAL_RATIO:F = 0.31f

.field private static final CIRCLE_THIRD_LEVEL_VERTICAL_RATIO:F = 0.62f


# instance fields
.field private mDefaultBgColor:I

.field private mDefaultBgRadius:F

.field private mHeight:I

.field private mLogoPaint:Landroid/graphics/Paint;

.field private mRectF:Landroid/graphics/RectF;

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mLogoPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mRectF:Landroid/graphics/RectF;

    const/4 v0, -0x1

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mDefaultBgColor:I

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->initRectF()V

    return-void
.end method

.method private initRectF()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mLogoPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 13

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mLogoPaint:Landroid/graphics/Paint;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_23

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mWidth:I

    int-to-float v6, v0

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mHeight:I

    int-to-float v7, v0

    iget v9, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mDefaultBgRadius:F

    iget-object v10, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mLogoPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v8, v9

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_2c

    :cond_23
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mDefaultBgRadius:F

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mLogoPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_2c
    const v0, 0x3e23d70a    # 0.16f

    iget v2, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mWidth:I

    int-to-float v2, v2

    mul-float v2, v2, v0

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mLogoPaint:Landroid/graphics/Paint;

    const-string v3, "#f8de46"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const v3, 0x3eb33333    # 0.35f

    iget v4, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mHeight:I

    int-to-float v4, v4

    mul-float v4, v4, v3

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mLogoPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mLogoPaint:Landroid/graphics/Paint;

    const-string v3, "#e13333"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mWidth:I

    int-to-float v0, v0

    const v3, 0x3e9eb852    # 0.31f

    mul-float v0, v0, v3

    iget v4, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mHeight:I

    int-to-float v4, v4

    const v5, 0x3f1eb852    # 0.62f

    mul-float v4, v4, v5

    iget-object v6, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mLogoPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v2, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mLogoPaint:Landroid/graphics/Paint;

    const-string v4, "#4aaed3"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mWidth:I

    int-to-float v4, v0

    int-to-float v0, v0

    mul-float v0, v0, v3

    sub-float/2addr v4, v0

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mHeight:I

    int-to-float v0, v0

    mul-float v0, v0, v5

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mLogoPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mLogoPaint:Landroid/graphics/Paint;

    const-string v3, "#f5f8a850"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mWidth:I

    int-to-float v0, v0

    const v3, 0x3e99999a    # 0.3f

    mul-float v0, v0, v3

    iget v4, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mHeight:I

    int-to-float v4, v4

    const v5, 0x3ee66666    # 0.45f

    mul-float v4, v4, v5

    iget-object v6, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mLogoPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v2, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mLogoPaint:Landroid/graphics/Paint;

    const-string v4, "#f5b0d63a"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mWidth:I

    int-to-float v4, v0

    int-to-float v0, v0

    mul-float v0, v0, v3

    sub-float/2addr v4, v0

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mHeight:I

    int-to-float v0, v0

    mul-float v0, v0, v5

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mLogoPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mLogoPaint:Landroid/graphics/Paint;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const v1, 0x3f147ae1    # 0.58f

    iget v3, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mHeight:I

    int-to-float v3, v3

    mul-float v3, v3, v1

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mLogoPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mWidth:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mHeight:I

    new-instance p1, Landroid/graphics/RectF;

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mHeight:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {p1, v2, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mRectF:Landroid/graphics/RectF;

    iget p1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mWidth:I

    int-to-float p1, p1

    const v0, 0x3dcccccd    # 0.1f

    mul-float p1, p1, v0

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mDefaultBgRadius:F

    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mLogoPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/KidozLogoDrawable;->mLogoPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
