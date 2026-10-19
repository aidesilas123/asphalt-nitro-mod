###### Class com.kidoz.sdk.api.picasso_related.RoundedTransformation (com.kidoz.sdk.api.picasso_related.RoundedTransformation)
.class public Lcom/kidoz/sdk/api/picasso_related/RoundedTransformation;
.super Ljava/lang/Object;
.source "RoundedTransformation.java"

# interfaces
.implements Lcom/squareup/imagelib/y;


# instance fields
.field private mRoundBottomLeft:Z

.field private mRoundBottomRight:Z

.field private mRoundTopLeft:Z

.field private mRoundTopRight:Z

.field private mTransformationTAG:Ljava/lang/String;

.field private final margin:I

.field private final radius:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NA"

    iput-object v0, p0, Lcom/kidoz/sdk/api/picasso_related/RoundedTransformation;->mTransformationTAG:Ljava/lang/String;

    iput p1, p0, Lcom/kidoz/sdk/api/picasso_related/RoundedTransformation;->radius:I

    iput p2, p0, Lcom/kidoz/sdk/api/picasso_related/RoundedTransformation;->margin:I

    return-void
.end method

.method public constructor <init>(IIZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NA"

    iput-object v0, p0, Lcom/kidoz/sdk/api/picasso_related/RoundedTransformation;->mTransformationTAG:Ljava/lang/String;

    iput p1, p0, Lcom/kidoz/sdk/api/picasso_related/RoundedTransformation;->radius:I

    iput p2, p0, Lcom/kidoz/sdk/api/picasso_related/RoundedTransformation;->margin:I

    iput-boolean p3, p0, Lcom/kidoz/sdk/api/picasso_related/RoundedTransformation;->mRoundTopLeft:Z

    return-void
.end method

.method private getRoundedCornerBitmap(Landroid/graphics/Bitmap;IZZZZ)Landroid/graphics/Bitmap;
    .registers 19

    move-object v0, p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    move v4, p2

    int-to-float v4, v4

    const/4 v7, 0x1

    invoke-virtual {v11, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v10, v5, v5, v5, v5}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const v5, -0xbdbdbe

    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v10, v6, v4, v4, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-eqz p3, :cond_45

    const/4 v5, 0x0

    const/4 v6, 0x0

    div-int/lit8 v4, v1, 0x2

    int-to-float v7, v4

    div-int/lit8 v4, v2, 0x2

    int-to-float v8, v4

    move-object v4, v10

    move-object v9, v11

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_45
    if-eqz p4, :cond_54

    div-int/lit8 v4, v1, 0x2

    int-to-float v5, v4

    const/4 v6, 0x0

    int-to-float v7, v1

    div-int/lit8 v4, v2, 0x2

    int-to-float v8, v4

    move-object v4, v10

    move-object v9, v11

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_54
    if-eqz p5, :cond_63

    const/4 v5, 0x0

    div-int/lit8 v4, v2, 0x2

    int-to-float v6, v4

    div-int/lit8 v4, v1, 0x2

    int-to-float v7, v4

    int-to-float v8, v2

    move-object v4, v10

    move-object v9, v11

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_63
    if-eqz p6, :cond_72

    div-int/lit8 v4, v1, 0x2

    int-to-float v5, v4

    div-int/lit8 v4, v2, 0x2

    int-to-float v6, v4

    int-to-float v7, v1

    int-to-float v8, v2

    move-object v4, v10

    move-object v9, v11

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_72
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v1, 0x0

    invoke-virtual {v10, p1, v1, v1, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eq v0, v3, :cond_85

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_85
    return-object v3
.end method

.method private roundAllCorners(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 11

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, p1, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/RectF;

    iget v4, p0, Lcom/kidoz/sdk/api/picasso_related/RoundedTransformation;->margin:I

    int-to-float v5, v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/kidoz/sdk/api/picasso_related/RoundedTransformation;->margin:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/kidoz/sdk/api/picasso_related/RoundedTransformation;->margin:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-direct {v3, v5, v4, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v4, p0, Lcom/kidoz/sdk/api/picasso_related/RoundedTransformation;->radius:I

    int-to-float v5, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v5, v4, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-eq p1, v1, :cond_47

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_47
    return-object v1
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/picasso_related/RoundedTransformation;->mTransformationTAG:Ljava/lang/String;

    return-object v0
.end method

.method public transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 10

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/picasso_related/RoundedTransformation;->mRoundTopLeft:Z

    if-nez v0, :cond_d

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/picasso_related/RoundedTransformation;->roundAllCorners(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "Transformation"

    iput-object v0, p0, Lcom/kidoz/sdk/api/picasso_related/RoundedTransformation;->mTransformationTAG:Ljava/lang/String;

    goto :goto_1d

    :cond_d
    iget v3, p0, Lcom/kidoz/sdk/api/picasso_related/RoundedTransformation;->radius:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/kidoz/sdk/api/picasso_related/RoundedTransformation;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;IZZZZ)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "Transformation2"

    iput-object v0, p0, Lcom/kidoz/sdk/api/picasso_related/RoundedTransformation;->mTransformationTAG:Ljava/lang/String;

    :goto_1d
    return-object p1
.end method
