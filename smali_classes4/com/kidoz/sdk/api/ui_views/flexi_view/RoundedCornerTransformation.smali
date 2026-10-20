###### Class com.kidoz.sdk.api.ui_views.flexi_view.RoundedCornerTransformation (com.kidoz.sdk.api.ui_views.flexi_view.RoundedCornerTransformation)
.class public Lcom/kidoz/sdk/api/ui_views/flexi_view/RoundedCornerTransformation;
.super Ljava/lang/Object;
.source "RoundedCornerTransformation.java"

# interfaces
.implements Lcom/squareup/imagelib/y;


# instance fields
.field private mBorder:I

.field private mBorderColor:Ljava/lang/String;

.field private mContainerSize:I

.field private mFillColor:Ljava/lang/String;

.field private mRoundingCorners:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;II)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/RoundedCornerTransformation;->mBorder:I

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/RoundedCornerTransformation;->mRoundingCorners:I

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/RoundedCornerTransformation;->mContainerSize:I

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/RoundedCornerTransformation;->mBorder:I

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/RoundedCornerTransformation;->mBorderColor:Ljava/lang/String;

    iput p4, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/RoundedCornerTransformation;->mRoundingCorners:I

    iput p5, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/RoundedCornerTransformation;->mContainerSize:I

    iput-object p3, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/RoundedCornerTransformation;->mFillColor:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .registers 2

    const-string v0, "roundedFlexiTransform"

    return-object v0
.end method

.method public transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 14

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/RoundedCornerTransformation;->mContainerSize:I

    invoke-static {p1, v0, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, -0x1

    :try_start_1f
    iget-object v4, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/RoundedCornerTransformation;->mFillColor:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_28} :catch_29

    goto :goto_2c

    :catch_29
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    :goto_2c
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v6, Landroid/graphics/RectF;

    iget v7, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/RoundedCornerTransformation;->mBorder:I

    add-int/lit8 v8, v7, 0x0

    int-to-float v8, v8

    add-int/lit8 v7, v7, 0x0

    int-to-float v7, v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    add-int/lit8 v9, v9, 0x0

    iget v10, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/RoundedCornerTransformation;->mBorder:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    add-int/lit8 v10, v10, 0x0

    iget v11, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/RoundedCornerTransformation;->mBorder:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-direct {v6, v8, v7, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v7, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/RoundedCornerTransformation;->mRoundingCorners:I

    int-to-float v8, v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v8, v7, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    new-instance v8, Landroid/graphics/BitmapShader;

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v8, v0, v9, v9}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v4, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/RoundedCornerTransformation;->mRoundingCorners:I

    int-to-float v8, v4

    int-to-float v4, v4

    invoke-virtual {v5, v6, v8, v4, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v4, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/RoundedCornerTransformation;->mBorder:I

    if-eqz v4, :cond_a4

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v4, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/RoundedCornerTransformation;->mBorder:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :try_start_90
    iget-object v4, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/RoundedCornerTransformation;->mBorderColor:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_99} :catch_9a

    goto :goto_9d

    :catch_9a
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    :goto_9d
    iget v3, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/RoundedCornerTransformation;->mRoundingCorners:I

    int-to-float v4, v3

    int-to-float v3, v3

    invoke-virtual {v5, v6, v4, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_a4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_ad

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_ad
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_b6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b6
    return-object v1
.end method
