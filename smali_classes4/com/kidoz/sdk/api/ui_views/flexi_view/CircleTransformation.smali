###### Class com.kidoz.sdk.api.ui_views.flexi_view.CircleTransformation (com.kidoz.sdk.api.ui_views.flexi_view.CircleTransformation)
.class public Lcom/kidoz/sdk/api/ui_views/flexi_view/CircleTransformation;
.super Ljava/lang/Object;
.source "CircleTransformation.java"

# interfaces
.implements Lcom/squareup/imagelib/y;


# instance fields
.field private mBorder:I

.field private mBorderColor:Ljava/lang/String;

.field private mContainerSize:I

.field private mFillColor:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/CircleTransformation;->mBorder:I

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/CircleTransformation;->mContainerSize:I

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/CircleTransformation;->mBorder:I

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/CircleTransformation;->mBorderColor:Ljava/lang/String;

    iput p4, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/CircleTransformation;->mContainerSize:I

    iput-object p3, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/CircleTransformation;->mFillColor:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .registers 2

    const-string v0, "circleFlexiTransform"

    return-object v0
.end method

.method public transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 14

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/CircleTransformation;->mContainerSize:I

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

    iget v2, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/CircleTransformation;->mBorder:I

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v2, :cond_2d

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    iget v5, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/CircleTransformation;->mBorder:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v2, v5

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    :goto_2e
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/4 v6, -0x1

    :try_start_34
    iget-object v7, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/CircleTransformation;->mFillColor:Ljava/lang/String;

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3d} :catch_3e

    goto :goto_41

    :catch_3e
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    :goto_41
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v8, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/CircleTransformation;->mBorder:I

    int-to-float v8, v8

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    sub-float/2addr v9, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v10, v3

    invoke-virtual {v8, v9, v10, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    new-instance v10, Landroid/graphics/BitmapShader;

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v10, v0, v11, v11}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {v9, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v9, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v3

    div-float/2addr v7, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v3

    div-float/2addr v10, v4

    invoke-virtual {v8, v7, v10, v2, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v4, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/CircleTransformation;->mBorder:I

    if-eqz v4, :cond_b7

    :try_start_92
    iget-object v4, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/CircleTransformation;->mBorderColor:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_9b} :catch_9c

    goto :goto_9f

    :catch_9c
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    :goto_9f
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v4, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v6, v3

    invoke-virtual {v8, v4, v6, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_b7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_c0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_c0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_c9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_c9
    return-object v1
.end method
