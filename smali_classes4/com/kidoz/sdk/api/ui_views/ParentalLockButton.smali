###### Class com.kidoz.sdk.api.ui_views.ParentalLockButton (com.kidoz.sdk.api.ui_views.ParentalLockButton)
.class public Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;
.super Landroid/widget/ImageView;
.source "ParentalLockButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/ui_views/ParentalLockButton$ParentalLockButtonListener;
    }
.end annotation


# instance fields
.field private mAnimationType:I

.field private mBluePaint:Landroid/graphics/Paint;

.field private mHeight:I

.field private mIsImageFilesExist:Z

.field private mIsLockActive:Z

.field private mIsLockStateChanged:Z

.field private mLockActiveImageFile:Ljava/io/File;

.field private mLockOpenRectF:Landroid/graphics/RectF;

.field private mLockUnActiveImageFile:Ljava/io/File;

.field private mOrangePaint:Landroid/graphics/Paint;

.field private mParentalLockButtonListener:Lcom/kidoz/sdk/api/ui_views/ParentalLockButton$ParentalLockButtonListener;

.field private mRectF:Landroid/graphics/RectF;

.field private mWhitePaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Lcom/kidoz/sdk/api/ui_views/ParentalLockButton$ParentalLockButtonListener;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mParentalLockButtonListener:Lcom/kidoz/sdk/api/ui_views/ParentalLockButton$ParentalLockButtonListener;

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mLockActiveImageFile:Ljava/io/File;

    iput-object p3, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mLockUnActiveImageFile:Ljava/io/File;

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;)Lcom/kidoz/sdk/api/ui_views/ParentalLockButton$ParentalLockButtonListener;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mParentalLockButtonListener:Lcom/kidoz/sdk/api/ui_views/ParentalLockButton$ParentalLockButtonListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;)I
    .registers 1

    iget p0, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mAnimationType:I

    return p0
.end method

.method private initImageParameters()V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScaleFactor(Landroid/content/Context;)F

    move-result v0

    const/16 v1, 0xb2

    iput v1, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mWidth:I

    const/16 v1, 0x80

    iput v1, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mHeight:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mAnimationType:I

    iget-boolean v2, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mIsImageFilesExist:Z

    if-eqz v2, :cond_2f

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mLockActiveImageFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mWidth:I

    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mHeight:I

    :cond_2f
    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mWidth:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mWidth:I

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mHeight:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mHeight:I

    return-void
.end method

.method private initOnClickAnimation()V
    .registers 2

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton$1;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton$1;-><init>(Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initPaints()V
    .registers 4

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mWhitePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mWhitePaint:Landroid/graphics/Paint;

    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mBluePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mBluePaint:Landroid/graphics/Paint;

    const-string v2, "#04a0e1"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mOrangePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mOrangePaint:Landroid/graphics/Paint;

    const-string v2, "#e59024"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mWhitePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1, v0}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private initRectF()V
    .registers 6

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mWidth:I

    int-to-float v1, v0

    const v2, 0x3eb536a7

    mul-float v1, v1, v2

    iget v2, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mHeight:I

    int-to-float v3, v2

    const v4, 0x3ef0f0f1

    mul-float v3, v3, v4

    int-to-float v0, v0

    const v4, 0x3f12b256

    mul-float v0, v0, v4

    int-to-float v2, v2

    const v4, 0x3f2f0f0f

    mul-float v2, v2, v4

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v1, v3, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mRectF:Landroid/graphics/RectF;

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mWidth:I

    int-to-float v1, v0

    const v2, 0x3f04508a

    mul-float v1, v1, v2

    iget v2, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mHeight:I

    int-to-float v3, v2

    const v4, 0x3ec78788

    mul-float v3, v3, v4

    int-to-float v0, v0

    const v4, 0x3f19e33c

    mul-float v0, v0, v4

    int-to-float v2, v2

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v2, v2, v4

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v1, v3, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mLockOpenRectF:Landroid/graphics/RectF;

    return-void
.end method

.method private initView()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mLockActiveImageFile:Ljava/io/File;

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mLockUnActiveImageFile:Ljava/io/File;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-ne v0, v1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    iput-boolean v1, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mIsImageFilesExist:Z

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->initImageParameters()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->initPaints()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->initRectF()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->initOnClickAnimation()V

    return-void
.end method

.method private loadImage()V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mIsLockStateChanged:Z

    if-ne v0, v1, :cond_49

    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mIsLockStateChanged:Z

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mIsLockActive:Z

    if-ne v0, v1, :cond_2e

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mLockActiveImageFile:Ljava/io/File;

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-ne v0, v1, :cond_49

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/picasso_related/PicassoOk;->getPicasso(Landroid/content/Context;)Lcom/squareup/imagelib/Picasso;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mLockActiveImageFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/squareup/imagelib/Picasso;->j(Ljava/io/File;)Lcom/squareup/imagelib/t;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/imagelib/t;->g(Landroid/widget/ImageView;)V

    goto :goto_49

    :cond_2e
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mLockUnActiveImageFile:Ljava/io/File;

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-ne v0, v1, :cond_49

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/picasso_related/PicassoOk;->getPicasso(Landroid/content/Context;)Lcom/squareup/imagelib/Picasso;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mLockUnActiveImageFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/squareup/imagelib/Picasso;->j(Ljava/io/File;)Lcom/squareup/imagelib/t;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/imagelib/t;->g(Landroid/widget/ImageView;)V

    :cond_49
    :goto_49
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 17

    move-object v0, p0

    move-object/from16 v7, p1

    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v1, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mIsImageFilesExist:Z

    if-nez v1, :cond_203

    const v1, 0x3dda9b53

    iget v2, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mWidth:I

    int-to-float v3, v2

    mul-float v3, v3, v1

    iget v1, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mHeight:I

    int-to-float v4, v1

    const/4 v8, 0x0

    mul-float v4, v4, v8

    const v5, 0x3df19e34

    int-to-float v2, v2

    mul-float v5, v5, v2

    int-to-float v1, v1

    const v9, 0x3f23c3c4

    mul-float v6, v1, v9

    iget-object v10, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mWhitePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const v1, 0x3f564ac9

    iget v2, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mWidth:I

    int-to-float v3, v2

    mul-float v3, v3, v1

    iget v1, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mHeight:I

    int-to-float v4, v1

    mul-float v4, v4, v8

    const v5, 0x3f592b25

    int-to-float v2, v2

    mul-float v5, v5, v2

    int-to-float v1, v1

    const v10, 0x3ee96969

    mul-float v6, v1, v10

    iget-object v11, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mWhitePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mHeight:I

    int-to-float v2, v1

    const v11, 0x3e9e1e1e

    mul-float v2, v2, v11

    const v3, 0x3f439873

    iget v4, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mWidth:I

    int-to-float v4, v4

    mul-float v4, v4, v3

    const v3, 0x3f30f0f1

    int-to-float v1, v1

    mul-float v1, v1, v3

    iget-object v3, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mWhitePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const v1, 0x3e43c3c4

    iget v2, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mHeight:I

    int-to-float v3, v2

    mul-float v3, v3, v1

    const v1, 0x3e1592b2

    iget v4, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mWidth:I

    int-to-float v4, v4

    mul-float v4, v4, v1

    const v1, 0x3f4f0f0f

    int-to-float v2, v2

    mul-float v2, v2, v1

    iget-object v1, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mWhitePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v2, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const v1, 0x3eb9f9fa

    iget v2, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mHeight:I

    int-to-float v3, v2

    mul-float v3, v3, v1

    const v1, 0x3ed92b25

    iget v4, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mWidth:I

    int-to-float v4, v4

    mul-float v4, v4, v1

    const v1, 0x3f0c3c3c

    int-to-float v2, v2

    mul-float v2, v2, v1

    iget-object v1, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mWhitePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v2, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const v1, 0x3e26d4db

    iget v2, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mWidth:I

    int-to-float v3, v2

    mul-float v3, v3, v1

    const v1, 0x3f4d2d2d

    iget v4, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mHeight:I

    int-to-float v5, v4

    mul-float v5, v5, v1

    const v1, 0x3f49592b

    int-to-float v2, v2

    mul-float v6, v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v2, v4

    mul-float v12, v2, v1

    iget-object v13, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mWhitePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v3

    move v3, v5

    move v4, v6

    move v5, v12

    move-object v6, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mWhitePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x40400000    # 3.0f

    const v4, -0x838384

    invoke-virtual {v1, v2, v8, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget v1, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mHeight:I

    int-to-float v2, v1

    mul-float v2, v2, v11

    const v3, 0x3eebdd7c

    iget v4, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mWidth:I

    int-to-float v4, v4

    mul-float v4, v4, v3

    const v3, 0x3f078788

    int-to-float v1, v1

    mul-float v1, v1, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    const/high16 v11, -0x3dcc0000    # -45.0f

    invoke-virtual {v7, v11, v4, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v5, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mWhitePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v1, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mWhitePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v8, v8, v8, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    invoke-virtual {v7, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-boolean v1, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mIsLockActive:Z

    const/4 v2, 0x1

    const v3, 0x3f169697

    const v4, 0x3f02e05c

    const v5, 0x3ed1fa3f

    const v6, 0x3d8a8a8a

    const v8, 0x3df87878

    const v12, 0x3ee3c3c4

    const v13, 0x3eed4daa

    if-ne v1, v2, :cond_15b

    iget v1, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mHeight:I

    int-to-float v2, v1

    mul-float v2, v2, v8

    iget v8, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mWidth:I

    int-to-float v8, v8

    mul-float v8, v8, v13

    int-to-float v1, v1

    mul-float v1, v1, v12

    iget-object v11, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mBluePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v1, v2, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mHeight:I

    int-to-float v2, v1

    mul-float v2, v2, v6

    iget v6, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mWidth:I

    int-to-float v6, v6

    mul-float v6, v6, v13

    int-to-float v1, v1

    mul-float v1, v1, v12

    iget-object v8, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mWhitePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v6, v1, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mWidth:I

    int-to-float v2, v1

    mul-float v2, v2, v5

    iget v5, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mHeight:I

    int-to-float v6, v5

    mul-float v6, v6, v10

    int-to-float v1, v1

    mul-float v4, v4, v1

    int-to-float v1, v5

    mul-float v5, v1, v3

    iget-object v8, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mWhitePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v6

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1b6

    :cond_15b
    iget v1, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mHeight:I

    int-to-float v2, v1

    mul-float v2, v2, v8

    iget v8, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mWidth:I

    int-to-float v8, v8

    mul-float v8, v8, v13

    int-to-float v1, v1

    mul-float v1, v1, v12

    iget-object v14, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mOrangePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v1, v2, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mHeight:I

    int-to-float v2, v1

    mul-float v2, v2, v6

    iget v6, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mWidth:I

    int-to-float v6, v6

    mul-float v6, v6, v13

    int-to-float v1, v1

    mul-float v1, v1, v12

    iget-object v8, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mWhitePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v6, v1, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mWidth:I

    int-to-float v2, v1

    mul-float v2, v2, v5

    iget v5, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mHeight:I

    int-to-float v6, v5

    mul-float v6, v6, v10

    int-to-float v1, v1

    mul-float v4, v4, v1

    int-to-float v1, v5

    mul-float v5, v1, v3

    iget-object v8, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mWhitePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v6

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const v1, 0x3f0f19e3

    iget v2, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mWidth:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    iget v1, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mHeight:I

    int-to-float v1, v1

    mul-float v1, v1, v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    invoke-virtual {v7, v11, v2, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v1, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mLockOpenRectF:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mWhitePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {v7, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_1b6
    const v1, 0x3cb81703

    iget v2, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mWidth:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    iget-object v1, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mRectF:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mBluePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const v1, 0x3d078788

    iget v2, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mHeight:I

    int-to-float v3, v2

    mul-float v3, v3, v1

    iget v1, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mWidth:I

    int-to-float v1, v1

    mul-float v1, v1, v13

    const v4, 0x3f0e1e1e

    int-to-float v2, v2

    mul-float v2, v2, v4

    iget-object v4, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mWhitePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const v1, 0x3ee8fd20

    iget v2, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mWidth:I

    int-to-float v3, v2

    mul-float v3, v3, v1

    const v1, 0x3f12d2d3

    iget v4, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mHeight:I

    int-to-float v5, v4

    mul-float v5, v5, v1

    const v1, 0x3ef19e34

    int-to-float v2, v2

    mul-float v6, v2, v1

    int-to-float v1, v4

    mul-float v8, v1, v9

    iget-object v9, v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mWhitePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v3

    move v3, v5

    move v4, v6

    move v5, v8

    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_206

    :cond_203
    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->loadImage()V

    :goto_206
    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    iget p1, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mWidth:I

    iget p2, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setIsLockActive(Z)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mIsLockStateChanged:Z

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->mIsLockActive:Z

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
