###### Class com.kidoz.sdk.api.ui_views.ExitButton (com.kidoz.sdk.api.ui_views.ExitButton)
.class public Lcom/kidoz/sdk/api/ui_views/ExitButton;
.super Landroid/widget/ImageView;
.source "ExitButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/ui_views/ExitButton$ExitButtonListener;
    }
.end annotation


# instance fields
.field private mAnimationType:I

.field private mBackBtnImage:Ljava/io/File;

.field private mBluePaint:Landroid/graphics/Paint;

.field private mCloseBtnImage:Ljava/io/File;

.field private mExitButtonListener:Lcom/kidoz/sdk/api/ui_views/ExitButton$ExitButtonListener;

.field private mHeight:I

.field private mImageFile:Ljava/io/File;

.field private mIsUseBackButton:Z

.field private mRectF:Landroid/graphics/RectF;

.field private mWhitePaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Lcom/kidoz/sdk/api/ui_views/ExitButton$ExitButtonListener;Z)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mExitButtonListener:Lcom/kidoz/sdk/api/ui_views/ExitButton$ExitButtonListener;

    iput-boolean p5, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mIsUseBackButton:Z

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mBackBtnImage:Ljava/io/File;

    iput-object p3, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mCloseBtnImage:Ljava/io/File;

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/ExitButton;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/kidoz/sdk/api/ui_views/ExitButton;)Lcom/kidoz/sdk/api/ui_views/ExitButton$ExitButtonListener;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mExitButtonListener:Lcom/kidoz/sdk/api/ui_views/ExitButton$ExitButtonListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kidoz/sdk/api/ui_views/ExitButton;)I
    .registers 1

    iget p0, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mAnimationType:I

    return p0
.end method

.method private initImageFile()V
    .registers 2

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mIsUseBackButton:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mCloseBtnImage:Ljava/io/File;

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mImageFile:Ljava/io/File;

    goto :goto_d

    :cond_9
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mBackBtnImage:Ljava/io/File;

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mImageFile:Ljava/io/File;

    :goto_d
    return-void
.end method

.method private initImageParameters()V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScaleFactor(Landroid/content/Context;)F

    move-result v0

    const/16 v1, 0xb2

    iput v1, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mWidth:I

    const/16 v1, 0x80

    iput v1, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mHeight:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mAnimationType:I

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mImageFile:Ljava/io/File;

    if-eqz v2, :cond_35

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-ne v2, v1, :cond_35

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mImageFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mWidth:I

    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mHeight:I

    :cond_35
    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mWidth:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mWidth:I

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mHeight:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mHeight:I

    return-void
.end method

.method private initOnClickAnimation()V
    .registers 2

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/ExitButton$1;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/ui_views/ExitButton$1;-><init>(Lcom/kidoz/sdk/api/ui_views/ExitButton;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initPaints()V
    .registers 4

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mWhitePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mWhitePaint:Landroid/graphics/Paint;

    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mBluePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mBluePaint:Landroid/graphics/Paint;

    const-string v2, "#04a0e1"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mWhitePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1, v0}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private initRectF()V
    .registers 9

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mWidth:I

    int-to-float v1, v0

    const v2, 0x3ebaf75f

    mul-float v1, v1, v2

    iget v2, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mHeight:I

    int-to-float v3, v2

    const/high16 v4, 0x3ee00000    # 0.4375f

    mul-float v3, v3, v4

    int-to-float v4, v0

    const v5, 0x3f32564b

    mul-float v4, v4, v5

    int-to-float v5, v2

    const/high16 v6, 0x3f100000    # 0.5625f

    mul-float v5, v5, v6

    iget-boolean v6, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mIsUseBackButton:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_35

    const v1, 0x3ed1fa3f

    int-to-float v3, v0

    mul-float v1, v1, v3

    const/high16 v3, 0x3eec0000    # 0.4609375f

    int-to-float v4, v2

    mul-float v3, v3, v4

    const v4, 0x3f23f47f

    int-to-float v0, v0

    mul-float v4, v4, v0

    const/high16 v0, 0x3f0a0000    # 0.5390625f

    int-to-float v2, v2

    mul-float v5, v2, v0

    :cond_35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mRectF:Landroid/graphics/RectF;

    return-void
.end method

.method private initView()V
    .registers 1

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/ExitButton;->initImageFile()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/ExitButton;->initImageParameters()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/ExitButton;->initPaints()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/ExitButton;->initRectF()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/ExitButton;->initOnClickAnimation()V

    return-void
.end method

.method private loadImage()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mImageFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_24

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mImageFile:Ljava/io/File;

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/picasso_related/PicassoOk;->getPicasso(Landroid/content/Context;)Lcom/squareup/imagelib/Picasso;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mImageFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/squareup/imagelib/Picasso;->j(Ljava/io/File;)Lcom/squareup/imagelib/t;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/imagelib/t;->g(Landroid/widget/ImageView;)V

    :cond_24
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 11

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mImageFile:Ljava/io/File;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_13

    :cond_e
    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/ExitButton;->loadImage()V

    goto/16 :goto_18b

    :cond_13
    :goto_13
    const v0, 0x3e3dd7bb

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mWidth:I

    int-to-float v2, v1

    mul-float v2, v2, v0

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mHeight:I

    int-to-float v3, v0

    const/4 v6, 0x0

    mul-float v3, v3, v6

    const v4, 0x3e49592b

    int-to-float v1, v1

    mul-float v4, v4, v1

    const/high16 v1, 0x3ec40000    # 0.3828125f

    int-to-float v0, v0

    mul-float v5, v0, v1

    iget-object v7, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mWhitePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const v0, 0x3f68fd20

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mWidth:I

    int-to-float v2, v1

    mul-float v2, v2, v0

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mHeight:I

    int-to-float v3, v0

    mul-float v3, v3, v6

    const v4, 0x3f6bdd7c

    int-to-float v1, v1

    mul-float v4, v4, v1

    const/high16 v1, 0x3f240000    # 0.640625f

    int-to-float v0, v0

    mul-float v5, v0, v1

    iget-object v7, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mWhitePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mHeight:I

    int-to-float v1, v0

    const/high16 v7, 0x3ea80000    # 0.328125f

    mul-float v1, v1, v7

    iget v2, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mWidth:I

    int-to-float v2, v2

    const v3, 0x3e719e34

    mul-float v2, v2, v3

    const/high16 v4, 0x3f2c0000    # 0.671875f

    int-to-float v0, v0

    mul-float v0, v0, v4

    iget-object v4, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mWhitePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v0, 0x3e500000    # 0.203125f

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mHeight:I

    int-to-float v2, v1

    mul-float v2, v2, v0

    const v0, 0x3f5a9b53

    iget v4, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mWidth:I

    int-to-float v4, v4

    mul-float v4, v4, v0

    const/high16 v0, 0x3f4c0000    # 0.796875f

    int-to-float v1, v1

    mul-float v1, v1, v0

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mWhitePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v1, v2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const v0, 0x3ec5999a

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mHeight:I

    int-to-float v2, v1

    mul-float v2, v2, v0

    const v0, 0x3f11d91d

    iget v4, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mWidth:I

    int-to-float v4, v4

    mul-float v4, v4, v0

    const v0, 0x3f0547ae

    int-to-float v1, v1

    mul-float v1, v1, v0

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mWhitePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v1, v2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mWidth:I

    int-to-float v1, v0

    mul-float v1, v1, v3

    const/high16 v2, 0x3f4a0000    # 0.7890625f

    iget v3, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mHeight:I

    int-to-float v4, v3

    mul-float v2, v2, v4

    const v4, 0x3f5c0b81

    int-to-float v0, v0

    mul-float v4, v4, v0

    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v3, v3

    mul-float v5, v3, v0

    iget-object v8, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mWhitePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v4

    move v4, v5

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mWhitePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x40400000    # 3.0f

    const v3, -0x838384

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mHeight:I

    int-to-float v1, v0

    mul-float v1, v1, v7

    const v2, 0x3f05c0b8

    iget v3, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mWidth:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    int-to-float v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v0, v0, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    const/high16 v5, 0x42340000    # 45.0f

    invoke-virtual {p1, v5, v3, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v7, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mWhitePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v1, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mWhitePaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v6, v6, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mIsUseBackButton:Z

    if-nez v0, :cond_13b

    const v0, 0x3d211423

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mWidth:I

    int-to-float v2, v1

    mul-float v2, v2, v0

    const v0, 0x3f07f05a

    int-to-float v1, v1

    mul-float v1, v1, v0

    const v0, 0x3f000a3d

    iget v3, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mHeight:I

    int-to-float v3, v3

    mul-float v3, v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p1, v5, v1, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v4, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mRectF:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mBluePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v2, v2, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/high16 v4, -0x3dcc0000    # -45.0f

    invoke-virtual {p1, v4, v1, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mBluePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_18b

    :cond_13b
    const v0, 0x3ce61cc4

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mWidth:I

    int-to-float v3, v1

    mul-float v3, v3, v0

    const v0, 0x3ed1fa3f

    int-to-float v1, v1

    mul-float v1, v1, v0

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mHeight:I

    int-to-float v0, v0

    mul-float v0, v0, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-virtual {p1, v5, v1, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v5, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mRectF:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mBluePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v3, v3, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    const/high16 v5, -0x3e100000    # -30.0f

    invoke-virtual {p1, v5, v1, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mBluePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    const/high16 v0, 0x3d200000    # 0.0390625f

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mHeight:I

    int-to-float v3, v1

    mul-float v3, v3, v0

    const v0, 0x3eda9b53

    iget v4, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mWidth:I

    int-to-float v4, v4

    mul-float v4, v4, v0

    int-to-float v0, v1

    mul-float v0, v0, v2

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mBluePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v0, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_18b
    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    iget p1, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mWidth:I

    iget p2, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton;->mHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    return-void
.end method
