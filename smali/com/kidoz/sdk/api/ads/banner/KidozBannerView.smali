###### Class com.kidoz.sdk.api.ads.banner.KidozBannerView (com.kidoz.sdk.api.ads.banner.KidozBannerView)
.class public Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;
.super Landroid/widget/RelativeLayout;
.source "KidozBannerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;
    }
.end annotation


# static fields
.field private static final ACTIVITY_CONTEXT_REQUIRED:Ljava/lang/String; = "KidozBanner | Kidoz requires Activity context to show a banner."

.field private static final BANNER_BACKGROUND_COLOR:I = 0x0

.field private static final BANNER_RATIO:F = 6.4f

.field private static final ERROR_REQUESTED_LOAD_EMPTY_URL:Ljava/lang/String; = "KidozBanner | Kidoz banner requested to load empty url."

.field private static final TAG:Ljava/lang/String;

.field private static final VIEW_HIERARCHY_MODE_WITHOUT_FLAG:Ljava/lang/String; = "Unable to add overlay banner. If you\'re trying to add this banner to your view hierarchy, please call setLayoutWithoutShowing() first."


# instance fields
.field private frameLayout:Landroid/widget/FrameLayout;

.field private mActivity:Landroid/app/Activity;

.field private mBannerPosition:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

.field private mCallback:Lcom/kidoz/sdk/api/ads/banner/BannerAdCallback;

.field private mHtmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

.field private mKidozBannerPresenter:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

.field private mLayoutWithoutShowing:Z

.field private mSmartBanner:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mSmartBanner:Z

    return p0
.end method

.method static synthetic access$100(Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;)V
    .registers 1

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->setHtmlViewWrapperLPs()V

    return-void
.end method

.method private createBannerPresenter()V
    .registers 2

    new-instance v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;-><init>(Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mKidozBannerPresenter:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    return-void
.end method

.method private createBannerWebView()V
    .registers 4

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mHtmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mHtmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->setInFocusActivityContext(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mHtmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->setAllowJSResize(Z)V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->setHtmlViewWrapperLPs()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mHtmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mKidozBannerPresenter:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->getHtmlWebViewInterface()Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->setHtmlWebViewListener(Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;)V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->setBannerBackground()V

    new-instance v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$2;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$2;-><init>(Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private getBannerDimensions()Landroid/graphics/Point;
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/Utils;->getScreenSizeTemp(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v1, v0

    const v2, 0x40cccccd    # 6.4f

    div-float/2addr v1, v2

    float-to-int v1, v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method private getRealBannerDimensions()Landroid/graphics/Point;
    .registers 4

    const/high16 v0, 0x43a00000    # 320.0f

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->convertDpToPixel(F)F

    move-result v0

    float-to-int v0, v0

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v1}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->convertDpToPixel(F)F

    move-result v1

    float-to-int v1, v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method private getSmartBannerDimensions()Landroid/graphics/Point;
    .registers 16

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/Utils;->getScreenSizeTemp(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v0

    const v3, 0x40cccccd    # 6.4f

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getDensityDpi(Landroid/content/Context;)F

    move-result v3

    float-to-int v3, v3

    const/16 v4, 0x20

    const/16 v5, 0x190

    if-gt v3, v5, :cond_20

    const/16 v2, 0x20

    :cond_20
    const/16 v6, 0x2d0

    const/16 v7, 0x32

    if-le v3, v5, :cond_2a

    if-gt v3, v6, :cond_2a

    const/16 v2, 0x32

    :cond_2a
    const/16 v5, 0x5a

    if-le v3, v6, :cond_30

    const/16 v2, 0x5a

    :cond_30
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getDeviceScreenSizeInInches(Landroid/content/Context;)D

    move-result-wide v8

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScreenOrientation(Landroid/app/Activity;)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getIsTablet(Landroid/content/Context;)Z

    move-result v6

    const/4 v10, 0x2

    if-eqz v6, :cond_8b

    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    const-wide/high16 v13, 0x401c000000000000L    # 7.0

    if-ne v3, v1, :cond_6e

    cmpg-double v1, v8, v13

    if-gez v1, :cond_58

    goto :goto_98

    :cond_58
    cmpl-double v1, v8, v13

    if-ltz v1, :cond_65

    cmpg-double v1, v8, v11

    if-gez v1, :cond_65

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_98

    :cond_65
    cmpl-double v1, v8, v11

    if-ltz v1, :cond_98

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_98

    :cond_6e
    if-ne v3, v10, :cond_98

    cmpg-double v1, v8, v13

    if-gez v1, :cond_75

    goto :goto_98

    :cond_75
    cmpl-double v1, v8, v13

    if-ltz v1, :cond_82

    cmpg-double v1, v8, v11

    if-gez v1, :cond_82

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_98

    :cond_82
    cmpl-double v1, v8, v11

    if-ltz v1, :cond_98

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_98

    :cond_8b
    if-ne v3, v1, :cond_92

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_98

    :cond_92
    if-ne v3, v10, :cond_98

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_98
    :goto_98
    new-instance v1, Landroid/graphics/Point;

    int-to-float v2, v2

    invoke-static {v2}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->convertDpToPixel(F)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v1, v0, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method private init(Landroid/content/Context;)V
    .registers 3

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_a

    const-string p1, "KidozBanner | Kidoz requires Activity context to show a banner."

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;)V

    return-void

    :cond_a
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mActivity:Landroid/app/Activity;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mLayoutWithoutShowing:Z

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->createBannerPresenter()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->createBannerWebView()V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mKidozBannerPresenter:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->init()V

    return-void
.end method

.method private layout()V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mHtmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mHtmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_17
    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mHtmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    return-void
.end method

.method private setBannerBackground()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mHtmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    return-void
.end method

.method private setHtmlViewWrapperLPs()V
    .registers 10

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mSmartBanner:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->getSmartBannerDimensions()Landroid/graphics/Point;

    move-result-object v0

    goto :goto_d

    :cond_9
    invoke-direct {p0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->getRealBannerDimensions()Landroid/graphics/Point;

    move-result-object v0

    :goto_d
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0xf

    const/16 v4, 0xb

    const/16 v5, 0x9

    const/16 v6, 0xc

    const/16 v7, 0xa

    if-eqz v2, :cond_42

    iget-object v2, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2, v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2, v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_47

    :cond_42
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_47
    const/16 v0, 0xe

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mBannerPosition:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    if-eqz v0, :cond_83

    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$3;->$SwitchMap$com$kidoz$sdk$api$ads$banner$KidozBannerView$Position:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_8a

    goto :goto_83

    :pswitch_5c
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_83

    :pswitch_63
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_83

    :pswitch_6a
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_83

    :pswitch_71
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_83

    :pswitch_78
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_83

    :pswitch_7c
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_83

    :pswitch_80
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_83
    :goto_83
    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    nop

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_80
        :pswitch_7c
        :pswitch_78
        :pswitch_71
        :pswitch_6a
        :pswitch_63
        :pswitch_5c
    .end packed-switch
.end method

.method private setHtmlViewWrapperLPs2()V
    .registers 10

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mSmartBanner:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->getSmartBannerDimensions()Landroid/graphics/Point;

    move-result-object v0

    goto :goto_d

    :cond_9
    invoke-direct {p0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->getRealBannerDimensions()Landroid/graphics/Point;

    move-result-object v0

    :goto_d
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mHtmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0xf

    const/16 v4, 0xb

    const/16 v5, 0x9

    const/16 v6, 0xc

    const/16 v7, 0xa

    if-eqz v2, :cond_42

    iget-object v2, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mHtmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2, v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2, v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_47

    :cond_42
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_47
    const/16 v0, 0xe

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mBannerPosition:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    if-eqz v0, :cond_83

    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$3;->$SwitchMap$com$kidoz$sdk$api$ads$banner$KidozBannerView$Position:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_8a

    goto :goto_83

    :pswitch_5c
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_83

    :pswitch_63
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_83

    :pswitch_6a
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_83

    :pswitch_71
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_83

    :pswitch_78
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_83

    :pswitch_7c
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_83

    :pswitch_80
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_83
    :goto_83
    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mHtmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    nop

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_80
        :pswitch_7c
        :pswitch_78
        :pswitch_71
        :pswitch_6a
        :pswitch_63
        :pswitch_5c
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mHtmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->destroy()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public declared-synchronized hide()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->hideInternal()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mKidozBannerPresenter:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mHtmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->developerCalledHide(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected hideInternal()V
    .registers 4

    const-string v0, "KidozBannerPresenter | hideInternal() 0"

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mLayoutWithoutShowing:Z

    if-nez v0, :cond_3a

    const-string v0, "KidozBannerPresenter | hideInternal() 1"

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1e

    const-string v1, "KidozBannerPresenter | hideInternal() 2"

    invoke-static {v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1e
    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mHtmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2d

    iget-object v1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mHtmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2d
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mHtmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3a
    return-void
.end method

.method public invokeUrlInWebView(Ljava/lang/String;Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$BannerInvokeUrlInterface;)V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mHtmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->invokeUrl(Ljava/lang/String;Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$BannerInvokeUrlInterface;)V

    return-void
.end method

.method public declared-synchronized isShowing()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mKidozBannerPresenter:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->isShowing()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized load()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mHtmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    iget-boolean v1, v0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->webViewInitialized:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mKidozBannerPresenter:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    invoke-virtual {v1, v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->load(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)V

    goto :goto_1b

    :cond_d
    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mCallback:Lcom/kidoz/sdk/api/ads/banner/BannerAdCallback;

    if-eqz v0, :cond_1b

    new-instance v1, Lcom/kidoz/sdk/api/general/KidozError;

    sget-object v2, Lcom/kidoz/sdk/api/general/KidozError$Type;->loadFailedWebViewInit:Lcom/kidoz/sdk/api/general/KidozError$Type;

    invoke-direct {v1, v2}, Lcom/kidoz/sdk/api/general/KidozError;-><init>(Lcom/kidoz/sdk/api/general/KidozError$Type;)V

    invoke-interface {v0, v1}, Lcom/kidoz/sdk/api/ads/AdViewCallback;->onAdFailedToLoad(Lcom/kidoz/sdk/api/general/KidozError;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    :cond_1b
    :goto_1b
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected nativeShow()V
    .registers 3

    const-string v0, "KidozBannerPresenter | nativeShow() 0"

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mLayoutWithoutShowing:Z

    if-nez v0, :cond_2b

    const-string v0, "KidozBannerPresenter | nativeShow() 1"

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;)V

    :try_start_e
    const-string v0, "KidozBannerPresenter | nativeShow() 2"

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1e
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_1e} :catch_1f

    goto :goto_2b

    :catch_1f
    const-string v0, "KidozBannerPresenter | nativeShow() 3"

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;)V

    sget-object v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->TAG:Ljava/lang/String;

    const-string v1, "Unable to add overlay banner. If you\'re trying to add this banner to your view hierarchy, please call setLayoutWithoutShowing() first."

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    :goto_2b
    invoke-direct {p0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->layout()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->layout()V

    return-void
.end method

.method public declared-synchronized setBannerPosition(Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mBannerPosition:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->setHtmlViewWrapperLPs()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setKidozBannerListener(Lcom/kidoz/sdk/api/ads/banner/BannerAdCallback;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mCallback:Lcom/kidoz/sdk/api/ads/banner/BannerAdCallback;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mKidozBannerPresenter:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    new-instance v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$1;

    invoke-direct {v1, p0, p1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$1;-><init>(Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;Lcom/kidoz/sdk/api/ads/banner/BannerAdCallback;)V

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->setBannerListener(Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setLayoutWithoutShowing()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mLayoutWithoutShowing:Z

    return-void
.end method

.method public declared-synchronized setSmartBanner(Z)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mSmartBanner:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized show()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mKidozBannerPresenter:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mHtmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->show(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startBannerWebLogic(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p1, "KidozBanner | Kidoz banner requested to load empty url."

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;)V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mHtmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_BANNER:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/general/enums/WidgetType;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->setWidgetType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mHtmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->loadHtml(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized stopLoading()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->mHtmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

###### Class com.kidoz.sdk.api.ads.banner.KidozBannerView.AnonymousClass1 (com.kidoz.sdk.api.ads.banner.KidozBannerView$1)
.class Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$1;
.super Ljava/lang/Object;
.source "KidozBannerView.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->setKidozBannerListener(Lcom/kidoz/sdk/api/ads/banner/BannerAdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

.field final synthetic val$callback:Lcom/kidoz/sdk/api/ads/banner/BannerAdCallback;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;Lcom/kidoz/sdk/api/ads/banner/BannerAdCallback;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$1;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    iput-object p2, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$1;->val$callback:Lcom/kidoz/sdk/api/ads/banner/BannerAdCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBannerClose()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$1;->val$callback:Lcom/kidoz/sdk/api/ads/banner/BannerAdCallback;

    invoke-interface {v0}, Lcom/kidoz/sdk/api/ads/AdViewCallback;->onAdClosed()V

    return-void
.end method

.method public onBannerError(Lcom/kidoz/sdk/api/general/KidozError;)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$1;->val$callback:Lcom/kidoz/sdk/api/ads/banner/BannerAdCallback;

    invoke-interface {v0, p1}, Lcom/kidoz/sdk/api/ads/AdViewCallback;->onAdFailedToLoad(Lcom/kidoz/sdk/api/general/KidozError;)V

    return-void
.end method

.method public onBannerImpression()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$1;->val$callback:Lcom/kidoz/sdk/api/ads/banner/BannerAdCallback;

    invoke-interface {v0}, Lcom/kidoz/sdk/api/ads/AdViewCallback;->onAdImpression()V

    return-void
.end method

.method public onBannerReady()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$1;->val$callback:Lcom/kidoz/sdk/api/ads/banner/BannerAdCallback;

    invoke-interface {v0}, Lcom/kidoz/sdk/api/ads/AdViewCallback;->onAdLoaded()V

    return-void
.end method

.method public onBannerShowFailed(Lcom/kidoz/sdk/api/general/KidozError;)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$1;->val$callback:Lcom/kidoz/sdk/api/ads/banner/BannerAdCallback;

    invoke-interface {v0, p1}, Lcom/kidoz/sdk/api/ads/AdViewCallback;->onAdFailedToShow(Lcom/kidoz/sdk/api/general/KidozError;)V

    return-void
.end method

.method public onBannerShowSuccess()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$1;->val$callback:Lcom/kidoz/sdk/api/ads/banner/BannerAdCallback;

    invoke-interface {v0}, Lcom/kidoz/sdk/api/ads/AdViewCallback;->onAdShown()V

    return-void
.end method

###### Class com.kidoz.sdk.api.ads.banner.KidozBannerView.AnonymousClass2 (com.kidoz.sdk.api.ads.banner.KidozBannerView$2)
.class Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$2;
.super Ljava/lang/Object;
.source "KidozBannerView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->createBannerWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$2;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    iget-object p1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$2;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->access$000(Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$2;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->access$100(Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;)V

    :cond_d
    return-void
.end method

###### Class com.kidoz.sdk.api.ads.banner.KidozBannerView.AnonymousClass3 (com.kidoz.sdk.api.ads.banner.KidozBannerView$3)
.class synthetic Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$3;
.super Ljava/lang/Object;
.source "KidozBannerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$kidoz$sdk$api$ads$banner$KidozBannerView$Position:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->values()[Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$3;->$SwitchMap$com$kidoz$sdk$api$ads$banner$KidozBannerView$Position:[I

    :try_start_9
    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->CENTER:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$3;->$SwitchMap$com$kidoz$sdk$api$ads$banner$KidozBannerView$Position:[I

    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->TOP_CENTER:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$3;->$SwitchMap$com$kidoz$sdk$api$ads$banner$KidozBannerView$Position:[I

    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->BOTTOM_CENTER:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$3;->$SwitchMap$com$kidoz$sdk$api$ads$banner$KidozBannerView$Position:[I

    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->TOP_LEFT:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$3;->$SwitchMap$com$kidoz$sdk$api$ads$banner$KidozBannerView$Position:[I

    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->TOP_RIGHT:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$3;->$SwitchMap$com$kidoz$sdk$api$ads$banner$KidozBannerView$Position:[I

    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->BOTTOM_LEFT:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$3;->$SwitchMap$com$kidoz$sdk$api$ads$banner$KidozBannerView$Position:[I

    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->BOTTOM_RIGHT:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    return-void
.end method

###### Class com.kidoz.sdk.api.ads.banner.KidozBannerView.Position (com.kidoz.sdk.api.ads.banner.KidozBannerView$Position)
.class public final enum Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;
.super Ljava/lang/Enum;
.source "KidozBannerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Position"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

.field public static final enum BOTTOM_CENTER:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

.field public static final enum BOTTOM_LEFT:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

.field public static final enum BOTTOM_RIGHT:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

.field public static final enum CENTER:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

.field public static final enum TOP_CENTER:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

.field public static final enum TOP_LEFT:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

.field public static final enum TOP_RIGHT:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;


# direct methods
.method private static synthetic $values()[Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;
    .registers 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->CENTER:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->TOP_LEFT:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->TOP_CENTER:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->TOP_RIGHT:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->BOTTOM_LEFT:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->BOTTOM_RIGHT:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->BOTTOM_CENTER:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    const-string v1, "CENTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->CENTER:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    new-instance v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    const-string v1, "TOP_LEFT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->TOP_LEFT:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    new-instance v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    const-string v1, "TOP_CENTER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->TOP_CENTER:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    new-instance v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    const-string v1, "TOP_RIGHT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->TOP_RIGHT:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    new-instance v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    const-string v1, "BOTTOM_LEFT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->BOTTOM_LEFT:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    new-instance v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    const-string v1, "BOTTOM_RIGHT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->BOTTOM_RIGHT:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    new-instance v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    const-string v1, "BOTTOM_CENTER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->BOTTOM_CENTER:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    invoke-static {}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->$values()[Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    move-result-object v0

    sput-object v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->$VALUES:[Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;
    .registers 2

    const-class v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    return-object p0
.end method

.method public static values()[Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;
    .registers 1

    sget-object v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->$VALUES:[Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    invoke-virtual {v0}, [Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    return-object v0
.end method
