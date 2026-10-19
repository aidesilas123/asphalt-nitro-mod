###### Class com.kidoz.sdk.api.ui_views.one_item_view.OneItemFamilyView (com.kidoz.sdk.api.ui_views.one_item_view.OneItemFamilyView)
.class public Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;
.super Landroid/widget/RelativeLayout;
.source "OneItemFamilyView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnRefreshListener;,
        Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$PlaybackState;,
        Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnOneItemActionListener;,
        Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;
    }
.end annotation


# static fields
.field protected static final ITEM_CONTAINER_STROKE_WIDTH:I = 0x4

.field protected static final LOADING_PROGRESS_DEFAULT_RATIO:F = 0.35f


# instance fields
.field protected AUTO_SCROLL_DELAY:I

.field protected mAdapter:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;

.field private mAnotherInterface:Lcom/kidoz/sdk/api/interfaces/AnotherInterface;

.field protected mContentDisplayed:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurrentItemInView:Lcom/kidoz/sdk/api/structure/ContentItem;

.field protected mCurrentViewPagerIndexInFocus:I

.field protected mHeight:I

.field protected mHtmlDefaultView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

.field protected mHtmlSpecialView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

.field protected mIsEnabled:Z

.field protected mLoadingProgressView:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;

.field private mLock:Ljava/util/concurrent/locks/Lock;

.field protected mMaximizeBtn:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

.field protected mMaximizeBtnUrl:Ljava/lang/String;

.field protected mMaximizedViewDialog:Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog;

.field protected mOneItemActionListener:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnOneItemActionListener;

.field protected mPlaybackState:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$PlaybackState;

.field protected mPreviousViewPagerIndexInFocus:I

.field protected mProperties:Lorg/json/JSONObject;

.field private mRefreshListener:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnRefreshListener;

.field protected mStyleId:Ljava/lang/String;

.field protected mThumbContainerBgColor:I

.field public mViewPager:Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;

.field public mViewPagerCardContainerView:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;

.field protected mViewPagerItemClickListener:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$ViewPagerItemClickListener;

.field protected mWidgetType:Ljava/lang/String;

.field protected mWidth:I

.field private staticHandler:Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnOneItemActionListener;)V
    .registers 7

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x2ee0

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->AUTO_SCROLL_DELAY:I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mContentDisplayed:Ljava/util/HashMap;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mIsEnabled:Z

    sget-object v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$PlaybackState;->STOPED:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$PlaybackState;

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mPlaybackState:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$PlaybackState;

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mCurrentViewPagerIndexInFocus:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mPreviousViewPagerIndexInFocus:I

    new-instance p1, Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->staticHandler:Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mLock:Ljava/util/concurrent/locks/Lock;

    iput-object p4, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mProperties:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mWidgetType:Ljava/lang/String;

    iput-object p3, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mStyleId:Ljava/lang/String;

    iput-object p5, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mOneItemActionListener:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnOneItemActionListener;

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->applyStyleProperties()V

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->initView()V

    new-instance p1, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$1;

    invoke-direct {p1, p0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$1;-><init>(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;)V

    invoke-static {p0, p1}, Lcom/kidoz/sdk/api/general/utils/Utils;->setOnGlobalLayoutFinishListener(Landroid/view/View;Lcom/kidoz/sdk/api/general/utils/Utils$OnGlobalLayoutFinishedListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->refreshNextViewItem(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;)Lcom/kidoz/sdk/api/interfaces/AnotherInterface;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mAnotherInterface:Lcom/kidoz/sdk/api/interfaces/AnotherInterface;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;)Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnRefreshListener;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mRefreshListener:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnRefreshListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;)Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->staticHandler:Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    return-object p0
.end method

.method private applyListenerToDefaultHtmlView()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mHtmlDefaultView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    if-eqz v0, :cond_c

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$2;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$2;-><init>(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;)V

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->setHtmlWebViewListener(Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;)V

    :cond_c
    return-void
.end method

.method private applyListenerToSpecialHtmlView()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mHtmlSpecialView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    if-eqz v0, :cond_c

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$3;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$3;-><init>(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;)V

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->setHtmlWebViewListener(Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;)V

    :cond_c
    return-void
.end method

.method private initHtmlDefaultWebView()V
    .registers 1

    return-void
.end method

.method private initHtmlSpecialWebView()V
    .registers 4

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mHtmlSpecialView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->setInFocusActivityContext(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mHtmlSpecialView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mWidgetType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->setWidgetType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mHtmlSpecialView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mStyleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->setStyleID(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->applyListenerToSpecialHtmlView()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mHtmlSpecialView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private initLoadingProgressView()V
    .registers 5

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mLoadingProgressView:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/Utils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3eb33333    # 0.35f

    mul-float v0, v0, v1

    float-to-int v0, v0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mLoadingProgressView:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mViewPagerCardContainerView:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getId()I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mViewPagerCardContainerView:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getId()I

    move-result v2

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initMaximizeButton()V
    .registers 5

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mMaximizeBtn:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mViewPagerCardContainerView:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mViewPagerCardContainerView:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mMaximizeBtn:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p0, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mMaximizeBtn:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mMaximizeBtn:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$4;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$4;-><init>(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mMaximizeBtn:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mMaximizeBtnUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->getAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->loadAsset(Ljava/io/File;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V

    return-void
.end method

.method private initPagerContainerCard()V
    .registers 4

    new-instance v0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mViewPagerCardContainerView:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mViewPagerCardContainerView:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->setRadius(F)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mViewPagerCardContainerView:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mThumbContainerBgColor:I

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->setCardBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mViewPagerCardContainerView:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;

    invoke-virtual {p0, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initViewPager()V
    .registers 5

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mViewPager:Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->AUTO_SCROLL_DELAY:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->setInterval(J)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mViewPager:Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$6;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$6;-><init>(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mViewPager:Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setId(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mViewPager:Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v2, v3}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mViewPager:Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mViewPagerCardContainerView:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;

    invoke-virtual {v2, v1, v1, v1, v1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->setContentPadding(IIII)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mViewPagerCardContainerView:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mViewPager:Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private refreshNextViewItem(I)V
    .registers 7

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mAdapter:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->getRealCount()I

    move-result v0

    if-lez v0, :cond_118

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mAdapter:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->getRealCount()I

    move-result v0

    rem-int v0, p1, v0

    iget-boolean v1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mIsEnabled:Z

    if-eqz v1, :cond_118

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->stopAutoScroll()V

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mCurrentViewPagerIndexInFocus:I

    invoke-direct {p0, v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->sendImpressionLog(I)V

    iget p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mPreviousViewPagerIndexInFocus:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_60

    iget v2, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mCurrentViewPagerIndexInFocus:I

    if-eq p1, v2, :cond_60

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mAdapter:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;

    invoke-virtual {v2}, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->getRealCount()I

    move-result v3

    rem-int/2addr p1, v3

    invoke-virtual {v2, p1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->getContentItem(I)Lcom/kidoz/sdk/api/structure/ContentItem;

    move-result-object p1

    if-eqz p1, :cond_4b

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getContentType()Lcom/kidoz/sdk/api/general/enums/ContentType;

    move-result-object v2

    sget-object v3, Lcom/kidoz/sdk/api/general/enums/ContentType;->HTML:Lcom/kidoz/sdk/api/general/enums/ContentType;

    if-ne v2, v3, :cond_4b

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getIsNonDefaultHtml()Z

    move-result p1

    if-eqz p1, :cond_46

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mHtmlSpecialView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->clearHtmlView()V

    goto :goto_4b

    :cond_46
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mHtmlDefaultView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->requestFocusOff()V

    :cond_4b
    :goto_4b
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mViewPager:Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;

    iget v2, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mPreviousViewPagerIndexInFocus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5e

    check-cast p1, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->clearActiveWebView()V

    :cond_5e
    iput v1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mPreviousViewPagerIndexInFocus:I

    :cond_60
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mAdapter:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->getContentItem(I)Lcom/kidoz/sdk/api/structure/ContentItem;

    move-result-object p1

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mCurrentItemInView:Lcom/kidoz/sdk/api/structure/ContentItem;

    const/4 v0, 0x4

    if-eqz p1, :cond_fb

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getContentType()Lcom/kidoz/sdk/api/general/enums/ContentType;

    move-result-object p1

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/ContentType;->HTML:Lcom/kidoz/sdk/api/general/enums/ContentType;

    if-ne p1, v1, :cond_fb

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mViewPager:Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mCurrentViewPagerIndexInFocus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_118

    check-cast p1, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mCurrentItemInView:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getIsNonDefaultHtml()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_b6

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mHtmlSpecialView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {p1, v1}, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->setActiveWebView(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mHtmlDefaultView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mHtmlSpecialView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mHtmlSpecialView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->clearHtmlView()V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mHtmlSpecialView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mCurrentItemInView:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {p1, v1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->setData(Lcom/kidoz/sdk/api/structure/ContentItem;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mHtmlSpecialView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->reloadHtml()V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mOneItemActionListener:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnOneItemActionListener;

    if-eqz p1, :cond_e3

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;->RESTART_ANY_ANIMATION:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;

    invoke-interface {p1, v1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnOneItemActionListener;->onAction(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;)V

    goto :goto_e3

    :cond_b6
    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mHtmlSpecialView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mHtmlDefaultView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    if-eqz v1, :cond_da

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mCurrentItemInView:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v1, v3}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->setData(Lcom/kidoz/sdk/api/structure/ContentItem;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mHtmlDefaultView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {p1, v1}, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->setActiveWebView(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mHtmlDefaultView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->staticHandler:Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$5;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$5;-><init>(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;)V

    const-wide/16 v3, 0x64

    invoke-virtual {p1, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_da
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mOneItemActionListener:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnOneItemActionListener;

    if-eqz p1, :cond_e3

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;->STOP_ANY_ANIMATION:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;

    invoke-interface {p1, v1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnOneItemActionListener;->onAction(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;)V

    :cond_e3
    :goto_e3
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mCurrentItemInView:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getShouldDisplayMaximizeButton()Z

    move-result p1

    if-eqz p1, :cond_f1

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mMaximizeBtn:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_f6

    :cond_f1
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mMaximizeBtn:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_f6
    iget p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mCurrentViewPagerIndexInFocus:I

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mPreviousViewPagerIndexInFocus:I

    goto :goto_118

    :cond_fb
    invoke-virtual {p0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->startAutoScroll()V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mHtmlDefaultView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    if-eqz p1, :cond_105

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_105
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mHtmlSpecialView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mMaximizeBtn:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mOneItemActionListener:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnOneItemActionListener;

    if-eqz p1, :cond_118

    sget-object v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;->RESTART_ANY_ANIMATION:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;

    invoke-interface {p1, v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnOneItemActionListener;->onAction(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;)V

    :cond_118
    :goto_118
    return-void
.end method

.method private sendImpressionLog(I)V
    .registers 13

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mAdapter:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->getContentItem(I)Lcom/kidoz/sdk/api/structure/ContentItem;

    move-result-object v0

    if-eqz v0, :cond_7f

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mContentDisplayed:Ljava/util/HashMap;

    if-eqz v1, :cond_7f

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7f

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getIsAvoidAutoImpression()Z

    move-result v1

    if-nez v1, :cond_7f

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->isPromoted()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_46

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mWidgetType:Ljava/lang/String;

    iget-object v5, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mStyleId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getAdvertiserID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getId()Ljava/lang/String;

    move-result-object v9

    const-string v6, "Impression"

    move v10, p1

    invoke-virtual/range {v2 .. v10}, Lcom/kidoz/events/EventManager;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    goto :goto_64

    :cond_46
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mWidgetType:Ljava/lang/String;

    iget-object v5, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mStyleId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getId()Ljava/lang/String;

    move-result-object v8

    const-string v6, "Impression"

    move v9, p1

    invoke-virtual/range {v2 .. v9}, Lcom/kidoz/events/EventManager;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    :goto_64
    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mContentDisplayed:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getThirdPartyImpressionBeacon()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7f

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getThirdPartyImpressionBeacon()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient;->makeAsyncGet(Ljava/lang/String;Landroid/content/ContentValues;)V

    :cond_7f
    return-void
.end method


# virtual methods
.method protected applyStyleProperties()V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mProperties:Lorg/json/JSONObject;

    if-eqz v0, :cond_2b

    const/4 v1, 0x0

    const-string v2, "htmlMaximizeBtn"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mMaximizeBtnUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mProperties:Lorg/json/JSONObject;

    const/16 v1, 0xc

    const-string v2, "swapContentRefreshRateSec"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->AUTO_SCROLL_DELAY:I

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mProperties:Lorg/json/JSONObject;

    const-string v1, "thumbBgColor"

    const-string v2, "#ccffffff"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mThumbContainerBgColor:I

    :cond_2b
    return-void
.end method

.method public clearContent()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mContentDisplayed:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mAdapter:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->clearContent()V

    :cond_c
    return-void
.end method

.method public declared-synchronized handleVisibilityChange(I)V
    .registers 3

    monitor-enter p0

    if-nez p1, :cond_19

    :try_start_3
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mHtmlSpecialView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->setInFocusActivityContext(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mHtmlDefaultView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->setInFocusActivityContext(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->startPlaybackAction()V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_24

    goto :goto_27

    :cond_19
    const/4 p1, 0x1

    :try_start_1a
    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->stopPlaybackAction(Z)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->staticHandler:Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_23} :catch_27
    .catchall {:try_start_1a .. :try_end_23} :catchall_24

    goto :goto_27

    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1

    :catch_27
    :goto_27
    monitor-exit p0

    return-void
.end method

.method protected initView()V
    .registers 1

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->initPagerContainerCard()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->initViewPager()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->initHtmlDefaultWebView()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->initHtmlSpecialWebView()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->initLoadingProgressView()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->initMaximizeButton()V

    return-void
.end method

.method public invokeWidgetClose()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mHtmlDefaultView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mWidgetType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->requestWidgetClose(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public invokeWidgetOpen()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mHtmlDefaultView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mWidgetType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->requestWidgetOpen(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mAdapter:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->isAdapterEmpty()Z

    move-result v0

    return v0
.end method

.method public nextPagerItem()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mViewPager:Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->i(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->o(Ljava/lang/Object;)V

    :cond_14
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->q(Ljava/lang/Object;)V

    :cond_14
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mHtmlSpecialView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->stopAndReleaseWebView()V

    :cond_1b
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->staticHandler:Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onHandleEvent(Lcom/kidoz/sdk/api/general/EventMessage;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/k;
    .end annotation

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/EventMessage;->getMessageType()Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    move-result-object v0

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->HTML_FULL_VIEW_CLOSE:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    if-ne v0, v1, :cond_1f

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/EventMessage;->getAdditionalParam()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/EventMessage;->getAdditionalParam()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mWidgetType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->onMaximizedScreenPlayerViewClosed()V

    :cond_1f
    return-void
.end method

.method protected onMaximizedScreenPlayerViewClosed()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mCurrentItemInView:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getIsNonDefaultHtml()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->applyListenerToSpecialHtmlView()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mHtmlSpecialView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->reloadHtml()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mOneItemActionListener:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnOneItemActionListener;

    if-eqz v0, :cond_59

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;->RESTART_ANY_ANIMATION:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;

    invoke-interface {v0, v1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnOneItemActionListener;->onAction(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;)V

    goto :goto_59

    :cond_1a
    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->applyListenerToDefaultHtmlView()V

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mCurrentViewPagerIndexInFocus:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_50

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mViewPager:Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_59

    check-cast v0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mHtmlDefaultView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->setActiveWebView(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mHtmlDefaultView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->requestMinimize()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mCurrentItemInView:Lcom/kidoz/sdk/api/structure/ContentItem;

    if-eqz v0, :cond_59

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getContentType()Lcom/kidoz/sdk/api/general/enums/ContentType;

    move-result-object v0

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/ContentType;->HTML:Lcom/kidoz/sdk/api/general/enums/ContentType;

    if-eq v0, v1, :cond_59

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mOneItemActionListener:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnOneItemActionListener;

    if-eqz v0, :cond_59

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;->RESTART_ANY_ANIMATION:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;

    invoke-interface {v0, v1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnOneItemActionListener;->onAction(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;)V

    goto :goto_59

    :cond_50
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mOneItemActionListener:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnOneItemActionListener;

    if-eqz v0, :cond_59

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;->RESTART_ANY_ANIMATION:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;

    invoke-interface {v0, v1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnOneItemActionListener;->onAction(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;)V

    :cond_59
    :goto_59
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p2, p2

    const p3, 0x3eb33333    # 0.35f

    mul-float p2, p2, p3

    float-to-int p2, p2

    iget-object p3, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mLoadingProgressView:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p3, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mLoadingProgressView:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p2, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mLoadingProgressView:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;->setCircleWidthRelativeToSize(F)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-virtual {p0, p2}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->handleVisibilityChange(I)V

    return-void
.end method

.method protected openMaximizedDialogVew(Lcom/kidoz/sdk/api/structure/ContentItem;)V
    .registers 7

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->stopAutoScroll()V

    if-eqz p1, :cond_38

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getIsNonDefaultHtml()Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mWidgetType:Ljava/lang/String;

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mStyleId:Ljava/lang/String;

    iget-object v4, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mHtmlSpecialView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mMaximizedViewDialog:Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog;

    goto :goto_2e

    :cond_1d
    new-instance v0, Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mWidgetType:Ljava/lang/String;

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mStyleId:Ljava/lang/String;

    iget-object v4, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mHtmlDefaultView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mMaximizedViewDialog:Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog;

    :goto_2e
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mMaximizedViewDialog:Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog;

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog;->loadHtmlView(Lcom/kidoz/sdk/api/structure/ContentItem;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mMaximizedViewDialog:Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog;->openDialog()V

    :cond_38
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mOneItemActionListener:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnOneItemActionListener;

    if-eqz p1, :cond_41

    sget-object v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;->STOP_ANY_ANIMATION:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;

    invoke-interface {p1, v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnOneItemActionListener;->onAction(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;)V

    :cond_41
    return-void
.end method

.method public previousItem()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mViewPager:Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public setAnotherInterface(Lcom/kidoz/sdk/api/interfaces/AnotherInterface;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mAnotherInterface:Lcom/kidoz/sdk/api/interfaces/AnotherInterface;

    return-void
.end method

.method public setContent(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/kidoz/sdk/api/structure/ContentItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mCurrentViewPagerIndexInFocus:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mPreviousViewPagerIndexInFocus:I

    :try_start_e
    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mContentDisplayed:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mAdapter:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;

    if-eqz v1, :cond_27

    invoke-virtual {v1, p1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->setContent(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mViewPager:Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1f} :catch_27
    .catchall {:try_start_e .. :try_end_1f} :catchall_20

    goto :goto_27

    :catchall_20
    move-exception p1

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :catch_27
    :cond_27
    :goto_27
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_2c
    return-void
.end method

.method public setOnRefreshDrawRequestListener(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnRefreshListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mRefreshListener:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnRefreshListener;

    return-void
.end method

.method public setOneItemEnableState(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mIsEnabled:Z

    return-void
.end method

.method public setViewPagerItemClickListener(Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$ViewPagerItemClickListener;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mViewPagerItemClickListener:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$ViewPagerItemClickListener;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mHtmlDefaultView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->setViewPagerItemClickListener(Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$ViewPagerItemClickListener;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mHtmlSpecialView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mViewPagerItemClickListener:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$ViewPagerItemClickListener;

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->setViewPagerItemClickListener(Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$ViewPagerItemClickListener;)V

    return-void
.end method

.method public showLoadingProgressView(Z)V
    .registers 2

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mLoadingProgressView:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;->startLoadingAnimation()V

    goto :goto_d

    :cond_8
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mLoadingProgressView:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;->stopLoadingAnimation()V

    :goto_d
    return-void
.end method

.method public startAutoScroll()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mViewPager:Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->isAutoScrollOn()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mViewPager:Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->AUTO_SCROLL_DELAY:I

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->startAutoScroll(I)V

    :cond_f
    return-void
.end method

.method public declared-synchronized startPlaybackAction()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_24

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mIsEnabled:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mPlaybackState:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$PlaybackState;

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$PlaybackState;->STOPED:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$PlaybackState;

    if-ne v0, v1, :cond_24

    sget-object v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$PlaybackState;->PLAYING:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$PlaybackState;

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mPlaybackState:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$PlaybackState;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mAdapter:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->getRealCount()I

    move-result v0

    if-lez v0, :cond_24

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mCurrentViewPagerIndexInFocus:I

    invoke-direct {p0, v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->refreshNextViewItem(I)V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    :cond_24
    monitor-exit p0

    return-void

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopAutoScroll()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mViewPager:Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->stopAutoScroll()V

    return-void
.end method

.method public declared-synchronized stopPlaybackAction(Z)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->stopAutoScroll()V

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mIsEnabled:Z

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mPlaybackState:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$PlaybackState;

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$PlaybackState;->PLAYING:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$PlaybackState;

    if-ne v0, v1, :cond_46

    sget-object v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$PlaybackState;->STOPED:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$PlaybackState;

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mPlaybackState:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$PlaybackState;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mAdapter:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->getRealCount()I

    move-result v0

    if-lez v0, :cond_46

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mAdapter:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mCurrentViewPagerIndexInFocus:I

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->getRealCount()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->getContentItem(I)Lcom/kidoz/sdk/api/structure/ContentItem;

    move-result-object v0

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getContentType()Lcom/kidoz/sdk/api/general/enums/ContentType;

    move-result-object v1

    sget-object v2, Lcom/kidoz/sdk/api/general/enums/ContentType;->HTML:Lcom/kidoz/sdk/api/general/enums/ContentType;

    if-ne v1, v2, :cond_46

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getIsNonDefaultHtml()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mHtmlSpecialView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->clearHtmlView()V

    goto :goto_46

    :cond_3f
    if-eqz p1, :cond_46

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mHtmlDefaultView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->requestFocusOff()V
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_48

    :cond_46
    :goto_46
    monitor-exit p0

    return-void

    :catchall_48
    move-exception p1

    monitor-exit p0

    throw p1
.end method
