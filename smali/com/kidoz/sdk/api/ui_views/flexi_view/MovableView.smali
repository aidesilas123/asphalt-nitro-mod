###### Class com.kidoz.sdk.api.ui_views.flexi_view.MovableView (com.kidoz.sdk.api.ui_views.flexi_view.MovableView)
.class public Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;
.super Landroid/widget/RelativeLayout;
.source "MovableView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableActionListener;,
        Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableAssetReadyListener;
    }
.end annotation


# static fields
.field private static final CLOSE_BTN_RATIO:F = 0.32f

.field private static final FLEXI_DEFAULT_THUMB_RATIO:F = 0.25f

.field private static final PARENTAL_LOCK_RATIO:F = 0.32f

.field private static final SHADOW_LAYER_OVAL_OFFSET:F = 1.235f

.field private static final SHADOW_LAYER_RECTANGLE_OFFSET:F = 1.2f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActionListener:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableActionListener;

.field private mAnimateView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

.field private mBorderColor:Ljava/lang/String;

.field private mBrderWidth:F

.field private mCloseIconView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

.field private mCornersRadius:F

.field private mFillColor:Ljava/lang/String;

.field public mImageTransformation:Lcom/squareup/imagelib/y;

.field private mIsCircle:Z

.field private mLockIconView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

.field private mMainThumbnailView:Landroid/widget/ImageView;

.field private mPropertiesObject:Lorg/json/JSONObject;

.field private mShadowLayerView:Landroid/widget/ImageView;

.field private final mSyncObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableActionListener;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mImageTransformation:Lcom/squareup/imagelib/y;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mSyncObject:Ljava/lang/Object;

    iput-object p3, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mActionListener:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableActionListener;

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mPropertiesObject:Lorg/json/JSONObject;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;)Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableActionListener;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mActionListener:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableActionListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;)V
    .registers 1

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->updateLockIcon()V

    return-void
.end method

.method static synthetic access$200(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mSyncObject:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mAnimateView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mLockIconView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mCloseIconView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    return-object p0
.end method

.method private generateAndSetProperShadowBackground()V
    .registers 10

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mShadowLayerView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-boolean v2, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mIsCircle:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2f

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x3f9e147b    # 1.235f

    invoke-static {v2, v5}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v1, v2, v4, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_a2

    :cond_2f
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v4, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mCornersRadius:F

    iget v5, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mBrderWidth:F

    const/high16 v6, 0x40200000    # 2.5f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v2, v4}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v4, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mBrderWidth:F

    invoke-static {v2, v4}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x3f99999a    # 1.2f

    invoke-static {v4, v5}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v6, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mBrderWidth:F

    invoke-static {v4, v6}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v6

    add-int/2addr v4, v6

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v8, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mBrderWidth:F

    invoke-static {v6, v8}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v8, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mBrderWidth:F

    invoke-static {v7, v8}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v5

    sub-int/2addr v7, v5

    invoke-virtual {v1, v2, v4, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_a2
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setDither(Z)V

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v1, 0x7e

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_be

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mShadowLayerView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_c3

    :cond_be
    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mShadowLayerView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_c3
    return-void
.end method

.method private initAnimatedView(I)V
    .registers 4

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mAnimateView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mAnimateView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0xd

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mAnimateView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initBottomShadowLayerView(I)V
    .registers 4

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mShadowLayerView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mShadowLayerView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mMainThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result p1

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mMainThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result p1

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mMainThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result p1

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mMainThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result p1

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mShadowLayerView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initCloseView(II)V
    .registers 5

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mCloseIconView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mAnimateView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getId()I

    move-result p1

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mAnimateView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getId()I

    move-result p1

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-le p1, v1, :cond_3c

    const/16 p1, 0x13

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mAnimateView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_3c
    const/4 p1, 0x0

    invoke-virtual {v0, p1, p2, p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mCloseIconView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mCloseIconView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    new-instance p2, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$1;

    invoke-direct {p2, p0}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$1;-><init>(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initMainThumbView(I)V
    .registers 4

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mMainThumbnailView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mMainThumbnailView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0xd

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mMainThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initParentalLockView(II)V
    .registers 5

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mLockIconView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mAnimateView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getId()I

    move-result p1

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mAnimateView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getId()I

    move-result p1

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-le p1, v1, :cond_3d

    const/16 p1, 0x13

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mAnimateView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_3d
    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mLockIconView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mLockIconView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    new-instance p2, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2;

    invoke-direct {p2, p0}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2;-><init>(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .registers 9

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mPropertiesObject:Lorg/json/JSONObject;

    if-eqz v0, :cond_9b

    const-string v1, "flexiIsCircle"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_f

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    iput-boolean v2, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mIsCircle:Z

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mPropertiesObject:Lorg/json/JSONObject;

    const-string v2, "flexiBorderWidth"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    double-to-float v0, v5

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mBrderWidth:F

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mPropertiesObject:Lorg/json/JSONObject;

    const-string v2, "flexiCornerRadius"

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v0, v2

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mCornersRadius:F

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mPropertiesObject:Lorg/json/JSONObject;

    const-string v2, "flexiBorderClr"

    const-string v3, "#ffffff"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mBorderColor:Ljava/lang/String;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mPropertiesObject:Lorg/json/JSONObject;

    const-string v2, "flexiFillClr"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mFillColor:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/Utils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mPropertiesObject:Lorg/json/JSONObject;

    const-wide/high16 v3, 0x3fd0000000000000L    # 0.25

    const-string v5, "flexiThumbRatio"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v2, v2

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->initMainThumbView(I)V

    iget-boolean v2, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mIsCircle:Z

    if-nez v2, :cond_6a

    invoke-direct {p0, v0}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->initBottomShadowLayerView(I)V

    goto :goto_6d

    :cond_6a
    invoke-direct {p0, v0}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->initBottomShadowLayerView(I)V

    :goto_6d
    int-to-double v2, v0

    iget-object v4, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mPropertiesObject:Lorg/json/JSONObject;

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-string v7, "flexiAnimOverlayRatio"

    invoke-virtual {v4, v7, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    mul-double v2, v2, v4

    double-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->initAnimatedView(I)V

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v0

    const v3, 0x3ea3d70a    # 0.32f

    mul-float v0, v0, v3

    float-to-int v0, v0

    div-int/lit8 v3, v0, 0x2

    if-le v2, v3, :cond_8e

    sub-int v1, v2, v3

    :cond_8e
    invoke-direct {p0, v0, v1}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->initParentalLockView(II)V

    if-le v2, v3, :cond_95

    sub-int v1, v2, v3

    :cond_95
    invoke-direct {p0, v0, v1}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->initCloseView(II)V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->generateAndSetProperShadowBackground()V

    :cond_9b
    return-void
.end method

.method private updateLockIcon()V
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->isParentalLockActive(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mLockIconView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mPropertiesObject:Lorg/json/JSONObject;

    const-string v3, "flexiLockCloseBtn"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->getAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$7;

    invoke-direct {v2, p0}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$7;-><init>(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;)V

    invoke-virtual {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->loadAsset(Ljava/io/File;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V

    goto :goto_5c

    :cond_26
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mLockIconView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mPropertiesObject:Lorg/json/JSONObject;

    const-string v3, "flexiLockOpenBtn"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->getAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$8;

    invoke-direct {v2, p0}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$8;-><init>(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;)V

    invoke-virtual {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->loadAsset(Ljava/io/File;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_41

    goto :goto_5c

    :catch_41
    move-exception v0

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when trying to load parental lock image: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5c
    return-void
.end method


# virtual methods
.method public loadMainAsset(Ljava/lang/String;Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableAssetReadyListener;)V
    .registers 14

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mImageTransformation:Lcom/squareup/imagelib/y;

    if-nez v0, :cond_4a

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mIsCircle:Z

    if-eqz v0, :cond_24

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/flexi_view/CircleTransformation;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mBrderWidth:F

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mBorderColor:Ljava/lang/String;

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mFillColor:Ljava/lang/String;

    iget-object v4, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mMainThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kidoz/sdk/api/ui_views/flexi_view/CircleTransformation;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mImageTransformation:Lcom/squareup/imagelib/y;

    goto :goto_4a

    :cond_24
    new-instance v0, Lcom/kidoz/sdk/api/ui_views/flexi_view/RoundedCornerTransformation;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mBrderWidth:F

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v6

    iget-object v7, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mBorderColor:Ljava/lang/String;

    iget-object v8, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mFillColor:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mCornersRadius:F

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v9

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mMainThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v10

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/kidoz/sdk/api/ui_views/flexi_view/RoundedCornerTransformation;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mImageTransformation:Lcom/squareup/imagelib/y;

    :cond_4a
    :goto_4a
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/picasso_related/PicassoOk;->getPicasso(Landroid/content/Context;)Lcom/squareup/imagelib/Picasso;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/imagelib/Picasso;->k(Ljava/lang/String;)Lcom/squareup/imagelib/t;

    move-result-object p1

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mImageTransformation:Lcom/squareup/imagelib/y;

    invoke-virtual {p1, v0}, Lcom/squareup/imagelib/t;->l(Lcom/squareup/imagelib/y;)Lcom/squareup/imagelib/t;

    move-result-object p1

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mMainThumbnailView:Landroid/widget/ImageView;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$6;

    invoke-direct {v1, p0, p2}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$6;-><init>(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableAssetReadyListener;)V

    invoke-virtual {p1, v0, v1}, Lcom/squareup/imagelib/t;->h(Landroid/widget/ImageView;Lcom/squareup/imagelib/e;)V

    return-void
.end method

.method public loadSecondaryAssets(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableAssetReadyListener;)V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->isParentalLockActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mPropertiesObject:Lorg/json/JSONObject;

    const-string v1, "flexiLockCloseBtn"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_13
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mPropertiesObject:Lorg/json/JSONObject;

    const-string v1, "flexiLockOpenBtn"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1b
    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mLockIconView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->getAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v2, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$3;

    invoke-direct {v2, p0, p1}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$3;-><init>(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableAssetReadyListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->loadAsset(Ljava/io/File;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mCloseIconView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mPropertiesObject:Lorg/json/JSONObject;

    const-string v3, "flexiCloseBtn"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->getAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$4;

    invoke-direct {v2, p0, p1}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$4;-><init>(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableAssetReadyListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->loadAsset(Ljava/io/File;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mAnimateView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mPropertiesObject:Lorg/json/JSONObject;

    const-string v3, "flexiAnimOverlay"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->getAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$5;

    invoke-direct {v2, p0, p1}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$5;-><init>(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableAssetReadyListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->loadAsset(Ljava/io/File;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V

    return-void
.end method

.method public playOrStopTheGifAnimationIfExists(Z)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mAnimateView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    if-eqz v0, :cond_d

    if-eqz p1, :cond_a

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->resumeGifAnim()V

    goto :goto_d

    :cond_a
    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->pauseGifAnim()V

    :cond_d
    :goto_d
    return-void
.end method

.method public showCloseBtn(Z)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->mCloseIconView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    if-eqz v0, :cond_10

    if-eqz p1, :cond_b

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_10

    :cond_b
    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_10
    :goto_10
    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.flexi_view.MovableView.AnonymousClass1 (com.kidoz.sdk.api.ui_views.flexi_view.MovableView$1)
.class Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$1;
.super Ljava/lang/Object;
.source "MovableView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->initCloseView(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$1$1;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$1$1;-><init>(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$1;)V

    const/16 v1, 0x5f

    invoke-static {p1, v1, v0}, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->clickItemAnimation(Landroid/view/View;ILcom/kidoz/sdk/api/general/animations/GenAnimator$ViewAnimationListener;)Landroid/animation/AnimatorSet;

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.flexi_view.MovableView.AnonymousClass1.C03801 (com.kidoz.sdk.api.ui_views.flexi_view.MovableView$1$1)
.class Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$1$1;
.super Ljava/lang/Object;
.source "MovableView.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/animations/GenAnimator$ViewAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$1;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$1;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$1$1;->this$1:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$1$1;->this$1:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$1;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->access$000(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;)Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableActionListener;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$1$1;->this$1:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$1;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->access$000(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;)Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableActionListener;->onCloseClick()V

    :cond_15
    return-void
.end method

.method public onAnimationStart()V
    .registers 1

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.flexi_view.MovableView.AnonymousClass2 (com.kidoz.sdk.api.ui_views.flexi_view.MovableView$2)
.class Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2;
.super Ljava/lang/Object;
.source "MovableView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->initParentalLockView(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2;->this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2$1;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2$1;-><init>(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2;)V

    const/16 v1, 0x5f

    invoke-static {p1, v1, v0}, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->clickItemAnimation(Landroid/view/View;ILcom/kidoz/sdk/api/general/animations/GenAnimator$ViewAnimationListener;)Landroid/animation/AnimatorSet;

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.flexi_view.MovableView.AnonymousClass2.AnonymousClass1 (com.kidoz.sdk.api.ui_views.flexi_view.MovableView$2$1)
.class Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2$1;
.super Ljava/lang/Object;
.source "MovableView.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/animations/GenAnimator$ViewAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .registers 5

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2;->this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2$1$1;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2$1$1;-><init>(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2$1;)V

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v0, v2, v3, v3, v1}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->startParentalDialog(Landroid/content/Context;ZFFLcom/kidoz/sdk/api/dialogs/ParentalLockDialog$IOnParentalDialogListener;)Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;

    return-void
.end method

.method public onAnimationStart()V
    .registers 1

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.flexi_view.MovableView.AnonymousClass2.AnonymousClass1.C03811 (com.kidoz.sdk.api.ui_views.flexi_view.MovableView$2$1$1)
.class Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2$1$1;
.super Ljava/lang/Object;
.source "MovableView.java"

# interfaces
.implements Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$IOnParentalDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2$1;->onAnimationEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2$1;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2$1;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2$1$1;->this$2:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseDialog()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2$1$1;->this$2:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2$1;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2;->this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->access$100(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;)V

    return-void
.end method

.method public onInputPass(Z)V
    .registers 2

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2$1$1;->this$2:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2$1;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2;->this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->access$100(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;)V

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.flexi_view.MovableView.AnonymousClass3 (com.kidoz.sdk.api.ui_views.flexi_view.MovableView$3)
.class Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$3;
.super Ljava/lang/Object;
.source "MovableView.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->loadSecondaryAssets(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableAssetReadyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;

.field final synthetic val$listener:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableAssetReadyListener;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableAssetReadyListener;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$3;->this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$3;->val$listener:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableAssetReadyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssetLoaded(Z)V
    .registers 3

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$3;->this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->access$200(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_7
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$3;->this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->access$300(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->getIsAssetLoaded()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$3;->this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->access$400(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->getIsAssetLoaded()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$3;->this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->access$500(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->getIsAssetLoaded()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$3;->val$listener:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableAssetReadyListener;

    invoke-interface {v0}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableAssetReadyListener;->onAssetsReady()V

    :cond_30
    monitor-exit p1

    return-void

    :catchall_32
    move-exception v0

    monitor-exit p1
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_32

    throw v0
.end method

###### Class com.kidoz.sdk.api.ui_views.flexi_view.MovableView.AnonymousClass4 (com.kidoz.sdk.api.ui_views.flexi_view.MovableView$4)
.class Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$4;
.super Ljava/lang/Object;
.source "MovableView.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->loadSecondaryAssets(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableAssetReadyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;

.field final synthetic val$listener:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableAssetReadyListener;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableAssetReadyListener;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$4;->this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$4;->val$listener:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableAssetReadyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssetLoaded(Z)V
    .registers 3

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$4;->this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->access$200(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_7
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$4;->this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->access$300(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->getIsAssetLoaded()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$4;->this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->access$400(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->getIsAssetLoaded()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$4;->this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->access$500(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->getIsAssetLoaded()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$4;->val$listener:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableAssetReadyListener;

    invoke-interface {v0}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableAssetReadyListener;->onAssetsReady()V

    :cond_30
    monitor-exit p1

    return-void

    :catchall_32
    move-exception v0

    monitor-exit p1
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_32

    throw v0
.end method

###### Class com.kidoz.sdk.api.ui_views.flexi_view.MovableView.AnonymousClass5 (com.kidoz.sdk.api.ui_views.flexi_view.MovableView$5)
.class Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$5;
.super Ljava/lang/Object;
.source "MovableView.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->loadSecondaryAssets(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableAssetReadyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;

.field final synthetic val$listener:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableAssetReadyListener;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableAssetReadyListener;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$5;->this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$5;->val$listener:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableAssetReadyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssetLoaded(Z)V
    .registers 3

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$5;->this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->access$200(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_7
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$5;->this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->access$300(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->getIsAssetLoaded()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$5;->this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->access$400(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->getIsAssetLoaded()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$5;->this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->access$500(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->getIsAssetLoaded()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$5;->val$listener:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableAssetReadyListener;

    invoke-interface {v0}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableAssetReadyListener;->onAssetsReady()V

    :cond_30
    monitor-exit p1

    return-void

    :catchall_32
    move-exception v0

    monitor-exit p1
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_32

    throw v0
.end method

###### Class com.kidoz.sdk.api.ui_views.flexi_view.MovableView.AnonymousClass6 (com.kidoz.sdk.api.ui_views.flexi_view.MovableView$6)
.class Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$6;
.super Ljava/lang/Object;
.source "MovableView.java"

# interfaces
.implements Lcom/squareup/imagelib/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->loadMainAsset(Ljava/lang/String;Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableAssetReadyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;

.field final synthetic val$listener:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableAssetReadyListener;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableAssetReadyListener;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$6;->this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$6;->val$listener:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableAssetReadyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .registers 1

    return-void
.end method

.method public onSuccess()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$6;->val$listener:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableAssetReadyListener;

    invoke-interface {v0}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableAssetReadyListener;->onAssetsReady()V

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.flexi_view.MovableView.AnonymousClass7 (com.kidoz.sdk.api.ui_views.flexi_view.MovableView$7)
.class Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$7;
.super Ljava/lang/Object;
.source "MovableView.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->updateLockIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$7;->this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssetLoaded(Z)V
    .registers 2

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.flexi_view.MovableView.AnonymousClass8 (com.kidoz.sdk.api.ui_views.flexi_view.MovableView$8)
.class Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$8;
.super Ljava/lang/Object;
.source "MovableView.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->updateLockIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$8;->this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssetLoaded(Z)V
    .registers 2

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.flexi_view.MovableView.IMovableActionListener (com.kidoz.sdk.api.ui_views.flexi_view.MovableView$IMovableActionListener)
.class public interface abstract Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableActionListener;
.super Ljava/lang/Object;
.source "MovableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMovableActionListener"
.end annotation


# virtual methods
.method public abstract onCloseClick()V
.end method

###### Class com.kidoz.sdk.api.ui_views.flexi_view.MovableView.IMovableAssetReadyListener (com.kidoz.sdk.api.ui_views.flexi_view.MovableView$IMovableAssetReadyListener)
.class public interface abstract Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableAssetReadyListener;
.super Ljava/lang/Object;
.source "MovableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMovableAssetReadyListener"
.end annotation


# virtual methods
.method public abstract onAssetsReady()V
.end method
