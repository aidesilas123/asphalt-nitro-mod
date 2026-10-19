###### Class com.kidoz.sdk.api.ui_views.TitleView (com.kidoz.sdk.api.ui_views.TitleView)
.class public Lcom/kidoz/sdk/api/ui_views/TitleView;
.super Landroid/widget/RelativeLayout;
.source "TitleView.java"


# instance fields
.field private mHeight:I

.field private mImageFile:Ljava/io/File;

.field private mImageView:Landroid/widget/ImageView;

.field private mTitle:Landroid/widget/TextView;

.field private mWhitePaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mImageFile:Ljava/io/File;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/TitleView;->initView()V

    return-void
.end method

.method private initImageParameters()V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScaleFactor(Landroid/content/Context;)F

    move-result v0

    const/16 v1, 0x2c6

    iput v1, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mWidth:I

    const/16 v1, 0x8c

    iput v1, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mHeight:I

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mImageFile:Ljava/io/File;

    if-eqz v1, :cond_33

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_33

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mImageFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v2, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mWidth:I

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mHeight:I

    :cond_33
    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mWidth:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mWidth:I

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mHeight:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mHeight:I

    return-void
.end method

.method private initImageView()V
    .registers 4

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mWidth:I

    iget v2, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initPaints()V
    .registers 4

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mWhitePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mWhitePaint:Landroid/graphics/Paint;

    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mWhitePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1, v0}, Landroid/widget/RelativeLayout;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private initTitle()V
    .registers 6

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mTitle:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mTitle:Landroid/widget/TextView;

    const-string v2, "#04a0e1"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mTitle:Landroid/widget/TextView;

    iget v2, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mHeight:I

    int-to-float v2, v2

    const v3, 0x3eb6db6e

    mul-float v2, v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mTitle:Landroid/widget/TextView;

    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mTitle:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mTitle:Landroid/widget/TextView;

    const-string v2, "#666666"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v4, v4, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initView()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setWillNotDraw(Z)V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/TitleView;->initImageParameters()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/TitleView;->initPaints()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/TitleView;->initImageView()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/TitleView;->initTitle()V

    return-void
.end method

.method private loadImage()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mImageFile:Ljava/io/File;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_26

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/picasso_related/PicassoOk;->getPicasso(Landroid/content/Context;)Lcom/squareup/imagelib/Picasso;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mImageFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/squareup/imagelib/Picasso;->j(Ljava/io/File;)Lcom/squareup/imagelib/t;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/imagelib/t;->g(Landroid/widget/ImageView;)V

    :cond_26
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mImageFile:Ljava/io/File;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_12

    :cond_e
    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/TitleView;->loadImage()V

    goto :goto_7e

    :cond_12
    :goto_12
    const v0, 0x3e1ea5dc

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mWidth:I

    int-to-float v2, v1

    mul-float v2, v2, v0

    const v0, 0x3df52ee0

    int-to-float v1, v1

    mul-float v1, v1, v0

    const v0, 0x3ddb6db7

    iget v3, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mHeight:I

    int-to-float v3, v3

    mul-float v3, v3, v0

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mWhitePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const v0, 0x3e70e9fd

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mWidth:I

    int-to-float v2, v1

    mul-float v2, v2, v0

    const v0, 0x3eae3b3f

    int-to-float v1, v1

    mul-float v1, v1, v0

    const v0, -0x41b796ad    # -0.19571428f

    iget v3, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mHeight:I

    int-to-float v3, v3

    mul-float v3, v3, v0

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mWhitePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const v0, 0x3e70edaf

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mWidth:I

    int-to-float v2, v1

    mul-float v2, v2, v0

    const v0, 0x3f17a814

    int-to-float v1, v1

    mul-float v1, v1, v0

    const v0, -0x41ba2609

    iget v3, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mHeight:I

    int-to-float v3, v3

    mul-float v3, v3, v0

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mWhitePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const v0, 0x3e06212c

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mWidth:I

    int-to-float v2, v1

    mul-float v2, v2, v0

    const v0, 0x3f5e77b5

    int-to-float v1, v1

    mul-float v1, v1, v0

    const v0, -0x41d7c57c

    iget v3, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mHeight:I

    int-to-float v3, v3

    mul-float v3, v3, v0

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mWhitePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_7e
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result p4

    invoke-virtual {p2, p1, p1, p3, p4}, Landroid/view/View;->layout(IIII)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget p2, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mWidth:I

    int-to-float p3, p2

    const p4, 0x3d21884b

    mul-float p3, p3, p4

    float-to-int p3, p3

    iget p4, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mHeight:I

    int-to-float p4, p4

    const p5, 0x3e124925

    mul-float p4, p4, p5

    float-to-int p4, p4

    int-to-float p2, p2

    const p5, 0x3f3cef6a

    mul-float p2, p2, p5

    float-to-int p2, p2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result p5

    invoke-virtual {p1, p3, p4, p2, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    iget p1, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mWidth:I

    iget p2, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/widget/RelativeLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleColor(I)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/TitleView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
