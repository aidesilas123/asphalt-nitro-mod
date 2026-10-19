###### Class com.kidoz.sdk.api.ui_views.parental_lock.AssetView (com.kidoz.sdk.api.ui_views.parental_lock.AssetView)
.class public Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;
.super Landroid/widget/FrameLayout;
.source "AssetView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;,
        Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$MyWebView;,
        Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;
    }
.end annotation


# instance fields
.field private mAnimatedGifDrawable:Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

.field private mGifViewContainer:Landroid/widget/FrameLayout;

.field private mImageView:Landroid/widget/ImageView;

.field private mIsAssetLoaded:Z

.field private mTransformations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/squareup/imagelib/y;",
            ">;"
        }
    .end annotation
.end field

.field private mWebPwebView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$MyWebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mTransformations:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mAnimatedGifDrawable:Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mTransformations:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mAnimatedGifDrawable:Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mTransformations:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mAnimatedGifDrawable:Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mTransformations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mIsAssetLoaded:Z

    return p0
.end method

.method static synthetic access$202(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mIsAssetLoaded:Z

    return p1
.end method

.method static synthetic access$300(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->setAssetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)V
    .registers 1

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->cleanGifFromMemory()V

    return-void
.end method

.method static synthetic access$500(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)V
    .registers 1

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->addGifContainer()V

    return-void
.end method

.method static synthetic access$600(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)Lcom/kidoz/sdk/api/gif/views/GifDecoderView;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mAnimatedGifDrawable:Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    return-object p0
.end method

.method static synthetic access$602(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;Lcom/kidoz/sdk/api/gif/views/GifDecoderView;)Lcom/kidoz/sdk/api/gif/views/GifDecoderView;
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mAnimatedGifDrawable:Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)Landroid/widget/FrameLayout;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mGifViewContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private addGifContainer()V
    .registers 4

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mGifViewContainer:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private cleanGifFromMemory()V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mAnimatedGifDrawable:Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->stop()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mAnimatedGifDrawable:Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->clean()V

    iput-object v1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mAnimatedGifDrawable:Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    :cond_f
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mGifViewContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mGifViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mGifViewContainer:Landroid/widget/FrameLayout;

    :cond_20
    return-void
.end method

.method private cleanWebpFromMemory()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mWebPwebView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$MyWebView;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mWebPwebView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$MyWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mWebPwebView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$MyWebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mWebPwebView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$MyWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->pauseTimers()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mWebPwebView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$MyWebView;

    :cond_1c
    return-void
.end method

.method private clearTrasnformations()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mTransformations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private generateWebPAnimatableWebView()Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$MyWebView;
    .registers 6

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$MyWebView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$MyWebView;-><init>(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setClipToPadding(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDrawingCacheBackgroundColor(I)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setScrollbarFadingEnabled(Z)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollContainer(Z)V

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/webkit/WebView;->setPadding(IIII)V

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_72

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_72
    return-object v0
.end method

.method private handleGifResource(Ljava/io/File;Landroid/graphics/drawable/Drawable;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;Ljava/lang/String;)V
    .registers 11

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;-><init>(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;Ljava/io/File;Landroid/graphics/drawable/Drawable;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;Ljava/lang/String;)V

    return-void
.end method

.method private handleOtherResource(Landroid/graphics/drawable/Drawable;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mIsAssetLoaded:Z

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->setAssetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_d

    iget-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mIsAssetLoaded:Z

    invoke-interface {p2, p1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;->onAssetLoaded(Z)V

    :cond_d
    return-void
.end method

.method private handlePngResource(Ljava/io/File;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/picasso_related/PicassoOk;->getPicasso(Landroid/content/Context;)Lcom/squareup/imagelib/Picasso;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/imagelib/Picasso;->j(Ljava/io/File;)Lcom/squareup/imagelib/t;

    move-result-object p1

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/squareup/imagelib/t;->k(II)Lcom/squareup/imagelib/t;

    invoke-virtual {p1}, Lcom/squareup/imagelib/t;->j()Lcom/squareup/imagelib/t;

    invoke-virtual {p1}, Lcom/squareup/imagelib/t;->a()Lcom/squareup/imagelib/t;

    :cond_31
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mTransformations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/squareup/imagelib/t;->m(Ljava/util/List;)Lcom/squareup/imagelib/t;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$3;

    invoke-direct {v1, p0, p2}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$3;-><init>(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V

    invoke-virtual {p1, v0, v1}, Lcom/squareup/imagelib/t;->h(Landroid/widget/ImageView;Lcom/squareup/imagelib/e;)V

    return-void
.end method

.method private handleWebpResource(Landroid/graphics/drawable/Drawable;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;Ljava/lang/String;)V
    .registers 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_41

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->isWebViewSupportWebP()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->generateWebPAnimatableWebView()Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$MyWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mWebPwebView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$MyWebView;

    const/4 v1, 0x0

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->loadImageToWebPwebView(Ljava/lang/String;)V

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mIsAssetLoaded:Z

    :cond_33
    iget-boolean p3, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mIsAssetLoaded:Z

    if-nez p3, :cond_3a

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->setAssetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3a
    if-eqz p2, :cond_41

    iget-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mIsAssetLoaded:Z

    invoke-interface {p2, p1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;->onAssetLoaded(Z)V

    :cond_41
    return-void
.end method

.method private initView()V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setDrawingCacheBackgroundColor(I)V

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setId(I)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private loadImageToWebPwebView(Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mWebPwebView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$MyWebView;

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<html><head><style type=\'text/css\'> img {max-width: 100%;height:initial;} margin: 0; padding: 0 </style></head><body style=\'margin:0;padding:0;\' ><img src=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"/></body></html>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mWebPwebView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$MyWebView;

    const/4 v6, 0x0

    const-string v2, ""

    const-string v4, "text/html"

    const-string v5, "utf-8"

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method private setAssetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_c

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_11

    :cond_c
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_11
    return-void
.end method


# virtual methods
.method public addTransformation(Lcom/squareup/imagelib/y;)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mTransformations:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public getIsAssetLoaded()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mIsAssetLoaded:Z

    return v0
.end method

.method public loadAsset(Ljava/io/File;Landroid/graphics/drawable/Drawable;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->loadCorrectAsset(Ljava/io/File;Landroid/graphics/drawable/Drawable;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V

    return-void
.end method

.method public loadAsset(Ljava/io/File;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->loadCorrectAsset(Ljava/io/File;Landroid/graphics/drawable/Drawable;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V

    return-void
.end method

.method public loadAsset(Ljava/lang/String;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/picasso_related/PicassoOk;->getPicasso(Landroid/content/Context;)Lcom/squareup/imagelib/Picasso;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/imagelib/Picasso;->k(Ljava/lang/String;)Lcom/squareup/imagelib/t;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_33

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/squareup/imagelib/t;->k(II)Lcom/squareup/imagelib/t;

    invoke-virtual {v0}, Lcom/squareup/imagelib/t;->j()Lcom/squareup/imagelib/t;

    invoke-virtual {v0}, Lcom/squareup/imagelib/t;->a()Lcom/squareup/imagelib/t;

    :cond_33
    invoke-virtual {v0}, Lcom/squareup/imagelib/t;->i()Lcom/squareup/imagelib/t;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mTransformations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/squareup/imagelib/t;->m(Ljava/util/List;)Lcom/squareup/imagelib/t;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$1;-><init>(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;Ljava/lang/String;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V

    invoke-virtual {v0, v1}, Lcom/squareup/imagelib/t;->e(Lcom/squareup/imagelib/e;)V

    return-void
.end method

.method public loadCorrectAsset(Ljava/io/File;Landroid/graphics/drawable/Drawable;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V
    .registers 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mIsAssetLoaded:Z

    if-eqz p2, :cond_8

    invoke-direct {p0, p2}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->setAssetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    if-eqz p1, :cond_7c

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6b

    const-string v1, ".PNG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6b

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6b

    const-string v1, ".JPG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    goto :goto_6b

    :cond_35
    const-string v1, ".gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_67

    const-string v1, ".GIF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_46

    goto :goto_67

    :cond_46
    const-string p1, ".webp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_63

    const-string p1, ".WEBP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_63

    const-string p1, ".webP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5f

    goto :goto_63

    :cond_5f
    invoke-direct {p0, p2, p3}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->handleOtherResource(Landroid/graphics/drawable/Drawable;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V

    goto :goto_83

    :cond_63
    :goto_63
    invoke-direct {p0, p2, p3, v0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->handleWebpResource(Landroid/graphics/drawable/Drawable;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;Ljava/lang/String;)V

    goto :goto_83

    :cond_67
    :goto_67
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->handleGifResource(Ljava/io/File;Landroid/graphics/drawable/Drawable;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;Ljava/lang/String;)V

    goto :goto_83

    :cond_6b
    :goto_6b
    invoke-direct {p0, p1, p3}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->handlePngResource(Ljava/io/File;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V

    goto :goto_83

    :cond_6f
    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mIsAssetLoaded:Z

    invoke-direct {p0, p2}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->setAssetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p3, :cond_83

    iget-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mIsAssetLoaded:Z

    invoke-interface {p3, p1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;->onAssetLoaded(Z)V

    goto :goto_83

    :cond_7c
    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mIsAssetLoaded:Z

    if-eqz p3, :cond_83

    invoke-interface {p3, v0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;->onAssetLoaded(Z)V

    :cond_83
    :goto_83
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->cleanGifFromMemory()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->cleanWebpFromMemory()V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mAnimatedGifDrawable:Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mAnimatedGifDrawable:Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_1c

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mAnimatedGifDrawable:Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->start()V

    :cond_1c
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mAnimatedGifDrawable:Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    if-eqz p1, :cond_18

    if-nez p2, :cond_15

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_18

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mAnimatedGifDrawable:Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->start()V

    goto :goto_18

    :cond_15
    invoke-virtual {p1}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->stop()V

    :cond_18
    :goto_18
    return-void
.end method

.method public pauseGifAnim()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mAnimatedGifDrawable:Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->pause()V

    :cond_7
    return-void
.end method

.method public prefetchAsset(Ljava/lang/String;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/picasso_related/PicassoOk;->getPicasso(Landroid/content/Context;)Lcom/squareup/imagelib/Picasso;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/imagelib/Picasso;->k(Ljava/lang/String;)Lcom/squareup/imagelib/t;

    move-result-object p1

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/squareup/imagelib/t;->k(II)Lcom/squareup/imagelib/t;

    invoke-virtual {p1}, Lcom/squareup/imagelib/t;->j()Lcom/squareup/imagelib/t;

    invoke-virtual {p1}, Lcom/squareup/imagelib/t;->a()Lcom/squareup/imagelib/t;

    :cond_31
    invoke-virtual {p1}, Lcom/squareup/imagelib/t;->i()Lcom/squareup/imagelib/t;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mTransformations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/squareup/imagelib/t;->m(Ljava/util/List;)Lcom/squareup/imagelib/t;

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$2;

    invoke-direct {v0, p0, p2}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$2;-><init>(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V

    invoke-virtual {p1, v0}, Lcom/squareup/imagelib/t;->e(Lcom/squareup/imagelib/e;)V

    return-void
.end method

.method public resumeGifAnim()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mAnimatedGifDrawable:Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->resume()V

    :cond_7
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public startGifAnim()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mAnimatedGifDrawable:Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mAnimatedGifDrawable:Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->start()V

    :cond_f
    return-void
.end method

.method public stopGifAnim()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->mAnimatedGifDrawable:Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->stop()V

    :cond_7
    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.parental_lock.AssetView.AnonymousClass1 (com.kidoz.sdk.api.ui_views.parental_lock.AssetView$1)
.class Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$1;
.super Ljava/lang/Object;
.source "AssetView.java"

# interfaces
.implements Lcom/squareup/imagelib/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->loadAsset(Ljava/lang/String;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

.field final synthetic val$loadedListener:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;Ljava/lang/String;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V
    .registers 4

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$1;->val$loadedListener:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$202(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;Z)Z

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$1;->val$loadedListener:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$200(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;->onAssetLoaded(Z)V

    :cond_13
    return-void
.end method

.method public onSuccess()V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/picasso_related/PicassoOk;->getPicasso(Landroid/content/Context;)Lcom/squareup/imagelib/Picasso;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/squareup/imagelib/Picasso;->k(Ljava/lang/String;)Lcom/squareup/imagelib/t;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$000(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$000(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$000(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$000(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {v2}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$000(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/squareup/imagelib/t;->k(II)Lcom/squareup/imagelib/t;

    invoke-virtual {v0}, Lcom/squareup/imagelib/t;->j()Lcom/squareup/imagelib/t;

    invoke-virtual {v0}, Lcom/squareup/imagelib/t;->a()Lcom/squareup/imagelib/t;

    :cond_4d
    invoke-virtual {v0}, Lcom/squareup/imagelib/t;->i()Lcom/squareup/imagelib/t;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$100(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/imagelib/t;->m(Ljava/util/List;)Lcom/squareup/imagelib/t;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$000(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/imagelib/t;->g(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$202(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;Z)Z

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$1;->val$loadedListener:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;

    if-eqz v0, :cond_75

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$200(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;->onAssetLoaded(Z)V

    :cond_75
    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.parental_lock.AssetView.AnonymousClass2 (com.kidoz.sdk.api.ui_views.parental_lock.AssetView$2)
.class Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$2;
.super Ljava/lang/Object;
.source "AssetView.java"

# interfaces
.implements Lcom/squareup/imagelib/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->prefetchAsset(Ljava/lang/String;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

.field final synthetic val$loadedListener:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$2;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$2;->val$loadedListener:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$2;->val$loadedListener:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;->onAssetLoaded(Z)V

    :cond_8
    return-void
.end method

.method public onSuccess()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$2;->val$loadedListener:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;->onAssetLoaded(Z)V

    :cond_8
    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.parental_lock.AssetView.AnonymousClass3 (com.kidoz.sdk.api.ui_views.parental_lock.AssetView$3)
.class Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$3;
.super Ljava/lang/Object;
.source "AssetView.java"

# interfaces
.implements Lcom/squareup/imagelib/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->handlePngResource(Ljava/io/File;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

.field final synthetic val$loadedListener:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$3;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$3;->val$loadedListener:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$3;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$202(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;Z)Z

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$3;->val$loadedListener:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$3;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$200(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;->onAssetLoaded(Z)V

    :cond_13
    return-void
.end method

.method public onSuccess()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$3;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$300(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$3;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$202(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;Z)Z

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$3;->val$loadedListener:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;

    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$3;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$200(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;->onAssetLoaded(Z)V

    :cond_19
    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.parental_lock.AssetView.HandleGifResource (com.kidoz.sdk.api.ui_views.parental_lock.AssetView$HandleGifResource)
.class Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;
.super Ljava/lang/Object;
.source "AssetView.java"

# interfaces
.implements Lcom/kidoz/sdk/api/gif/views/GifDecoderView$IGifDecoderViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HandleGifResource"
.end annotation


# instance fields
.field mDefaultImage:Landroid/graphics/drawable/Drawable;

.field mFile:Ljava/io/File;

.field mLoadedListener:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;

.field mPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;


# direct methods
.method public constructor <init>(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;Ljava/io/File;Landroid/graphics/drawable/Drawable;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->mFile:Ljava/io/File;

    iput-object p3, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->mDefaultImage:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->mLoadedListener:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;

    iput-object p5, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->mPath:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->run()V

    return-void
.end method


# virtual methods
.method public gifDecoderViewReady()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$600(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$700(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$600(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$300(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$600(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->start()V

    :cond_26
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$202(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;Z)Z

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->mLoadedListener:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;

    if-eqz v0, :cond_39

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$200(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;->onAssetLoaded(Z)V

    :cond_39
    return-void
.end method

.method public run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$400(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$500(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)V

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    new-instance v2, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0, p0}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;-><init>(Landroid/content/Context;Ljava/io/InputStream;Lcom/kidoz/sdk/api/gif/views/GifDecoderView$IGifDecoderViewCallback;)V

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$602(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;Lcom/kidoz/sdk/api/gif/views/GifDecoderView;)Lcom/kidoz/sdk/api/gif/views/GifDecoderView;
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_5c

    :catch_22
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   path: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$202(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;Z)Z

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->mDefaultImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4f

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {v1, v0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$300(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;Landroid/graphics/drawable/Drawable;)V

    :cond_4f
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->mLoadedListener:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;

    if-eqz v0, :cond_5c

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$200(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;->onAssetLoaded(Z)V

    :cond_5c
    :goto_5c
    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.parental_lock.AssetView.IOnAssetLoadedListener (com.kidoz.sdk.api.ui_views.parental_lock.AssetView$IOnAssetLoadedListener)
.class public interface abstract Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;
.super Ljava/lang/Object;
.source "AssetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IOnAssetLoadedListener"
.end annotation


# virtual methods
.method public abstract onAssetLoaded(Z)V
.end method

###### Class com.kidoz.sdk.api.ui_views.parental_lock.AssetView.MyWebView (com.kidoz.sdk.api.ui_views.parental_lock.AssetView$MyWebView)
.class Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$MyWebView;
.super Landroid/webkit/WebView;
.source "AssetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyWebView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;


# direct methods
.method public constructor <init>(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$MyWebView;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_13

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_13
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
