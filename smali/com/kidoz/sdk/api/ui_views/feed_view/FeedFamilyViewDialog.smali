###### Class com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog (com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog)
.class public Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;
.super Lcom/kidoz/sdk/api/general/BaseDialog;
.source "FeedFamilyViewDialog.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private assentsCnt:I

.field private dataSet:Z

.field private gifReady:Z

.field private mAboutButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

.field private mAllowClickHandling:Z

.field private mAnimation:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

.field private mCloseBtnClickListener:Landroid/view/View$OnClickListener;

.field private mContentData:Lcom/kidoz/sdk/api/structure/ContentData;

.field private mExitButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

.field private mIsAutomaticInvocation:Z

.field private mLoadingProgressView:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;

.field private mNextButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

.field private mOnInterstitialViewEventListener:Lcom/kidoz/sdk/api/interfaces/IOnFeedViewEventListener;

.field public mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

.field private mParentalLockButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

.field private mPreviousButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

.field protected mProperties:Lorg/json/JSONObject;

.field private mRootView:Landroid/widget/RelativeLayout;

.field private mStyleId:Ljava/lang/String;

.field private mViewContainer:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/kidoz/sdk/api/interfaces/IOnFeedViewEventListener;ZLorg/json/JSONObject;)V
    .registers 7

    const v0, 0x1030011

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/kidoz/sdk/api/general/BaseDialog;-><init>(Landroid/content/Context;IZ)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mCloseBtnClickListener:Landroid/view/View$OnClickListener;

    iput-boolean v1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mAllowClickHandling:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mIsAutomaticInvocation:Z

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mStyleId:Ljava/lang/String;

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->assentsCnt:I

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->gifReady:Z

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->dataSet:Z

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mContentData:Lcom/kidoz/sdk/api/structure/ContentData;

    iput-object p4, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mProperties:Lorg/json/JSONObject;

    const-string p1, "style_id"

    invoke-virtual {p4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mStyleId:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mIsAutomaticInvocation:Z

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mOnInterstitialViewEventListener:Lcom/kidoz/sdk/api/interfaces/IOnFeedViewEventListener;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->initDialog()V

    return-void
.end method

.method static synthetic access$000(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mNextButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mPreviousButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mAllowClickHandling:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mAllowClickHandling:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mStyleId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->gifReady:Z

    return p1
.end method

.method static synthetic access$300(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mExitButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Landroid/view/View$OnClickListener;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mCloseBtnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mParentalLockButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)V
    .registers 1

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->updateLockIcon()V

    return-void
.end method

.method static synthetic access$700(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mAboutButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mAnimation:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Landroid/widget/RelativeLayout;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mViewContainer:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private animateOpen()V
    .registers 8

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mViewContainer:Landroid/widget/RelativeLayout;

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v5, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    new-instance v6, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$19;

    invoke-direct {v6, p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$19;-><init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)V

    const-wide/16 v1, 0x1f4

    const-wide/16 v3, 0x0

    invoke-static/range {v0 .. v6}, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->playGrowAnimation(Landroid/view/View;JJLandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    return-void
.end method

.method private applayViewContainerParams()V
    .registers 6

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScreenSize(Landroid/content/Context;Z)I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScreenSize(Landroid/content/Context;Z)I

    move-result v2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getIsTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_52

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v1, :cond_44

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_8f

    :cond_44
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    sub-int/2addr v2, v0

    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_8f

    :cond_52
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v1, :cond_79

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_8f

    :cond_79
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v0

    sub-int/2addr v2, v0

    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :goto_8f
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private applyAnimationLayoutParams()V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getIsTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_17

    int-to-float v1, v0

    const v2, 0x3ebb645a    # 0.366f

    goto :goto_1b

    :cond_17
    int-to-float v1, v0

    const v2, 0x3eb6c8b4    # 0.357f

    :goto_1b
    mul-float v1, v1, v2

    float-to-int v1, v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mAnimation:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private applyLoadingViewLayoutParams()V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3eb33333    # 0.35f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mLoadingProgressView:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;->setCircleWidthRelativeToSize(F)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mLoadingProgressView:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private applyNextButtonLayoutParams()V
    .registers 5

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v0, v0

    const v1, 0x3e2e147b    # 0.17f

    mul-float v1, v1, v0

    float-to-int v1, v1

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float v2, v2, v0

    float-to-int v2, v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xb

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const v1, 0x3edc28f6    # 0.43f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mNextButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private applyPreviousButtonLayoutParams()V
    .registers 5

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v0, v0

    const v1, 0x3e2e147b    # 0.17f

    mul-float v1, v1, v0

    float-to-int v1, v1

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float v2, v2, v0

    float-to-int v2, v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x9

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const v1, 0x3edc28f6    # 0.43f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mPreviousButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private applyViewPagerLayoutParams()V
    .registers 5

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v2, v0

    int-to-float v0, v2

    const/high16 v3, 0x40400000    # 3.0f

    mul-float v0, v0, v3

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v0, v3

    float-to-int v0, v0

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xe

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initAboutKidozButton()V
    .registers 9

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mAboutButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mAboutButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mProperties:Lorg/json/JSONObject;

    const-string v1, "aboutKidozAnimation"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_36

    sget-object v2, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->PRESS_IN_OUT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_36

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mAboutButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    new-instance v2, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13;

    invoke-direct {v2, p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13;-><init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_36
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScreenSize(Landroid/content/Context;Z)I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScreenSize(Landroid/content/Context;Z)I

    move-result v2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mProperties:Lorg/json/JSONObject;

    const-string v5, "aboutKidoz"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->getAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_ed

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_ed

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v1, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v1, v2, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v0, v0

    const v7, 0x3d75c28f    # 0.06f

    mul-float v0, v0, v7

    float-to-int v0, v0

    invoke-static {v6, v4, v0, v0}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScaledDimension(IIII)[I

    move-result-object v0

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    aget v3, v0, v3

    aget v0, v0, v1

    invoke-direct {v4, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x9

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xc

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mRootView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mAboutButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v0, v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mAboutButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mProperties:Lorg/json/JSONObject;

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->getAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$14;

    invoke-direct {v2, p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$14;-><init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->loadAsset(Ljava/io/File;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V

    :cond_ed
    return-void
.end method

.method private initAnimation()V
    .registers 5

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mAnimation:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mAnimation:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mViewContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mAnimation:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mAnimation:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mProperties:Lorg/json/JSONObject;

    const-string v3, "animationUrl"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->getAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$7;

    invoke-direct {v2, p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$7;-><init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->loadAsset(Ljava/io/File;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V

    return-void
.end method

.method private initDialog()V
    .registers 3

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->initRootView()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->initFamilyOneItemView()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->initLoadingProgressView()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->initNextAndPreviousButtons()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->initAnimation()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->initParentalLockButton()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->initAboutKidozButton()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->initExitButton()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->initKidozText()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->applayViewContainerParams()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->applyViewPagerLayoutParams()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->applyNextButtonLayoutParams()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->applyPreviousButtonLayoutParams()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->applyAnimationLayoutParams()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->applyLoadingViewLayoutParams()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->showLoadingProgressView(Z)V

    return-void
.end method

.method private initExitButton()V
    .registers 8

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mExitButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mExitButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mProperties:Lorg/json/JSONObject;

    const-string v1, "XBtnAnimation"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_36

    sget-object v2, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->PRESS_IN_OUT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_36

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mExitButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    new-instance v2, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$8;

    invoke-direct {v2, p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$8;-><init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_36
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScreenSize(Landroid/content/Context;Z)I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScreenSize(Landroid/content/Context;Z)I

    move-result v2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mProperties:Lorg/json/JSONObject;

    const-string v5, "xBtn"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->getAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_c8

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_c8

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v1, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v0, v0

    const v6, 0x3da3d70a    # 0.08f

    mul-float v0, v0, v6

    float-to-int v0, v0

    invoke-static {v5, v4, v0, v0}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScaledDimension(IIII)[I

    move-result-object v0

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    aget v3, v0, v3

    aget v0, v0, v1

    invoke-direct {v4, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x9

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mRootView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mExitButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v0, v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mExitButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$9;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$9;-><init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)V

    invoke-virtual {v0, v2, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->loadAsset(Ljava/io/File;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V

    :cond_c8
    return-void
.end method

.method private initFamilyOneItemView()V
    .registers 8

    new-instance v6, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v0, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_FEED:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/general/enums/WidgetType;->getStringValue()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mStyleId:Ljava/lang/String;

    iget-object v4, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mProperties:Lorg/json/JSONObject;

    new-instance v5, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$15;

    invoke-direct {v5, p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$15;-><init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)V

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnOneItemActionListener;)V

    iput-object v6, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$16;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$16;-><init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)V

    invoke-virtual {v6, v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->setOnRefreshDrawRequestListener(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnRefreshListener;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, -0x40000000    # -2.0f

    invoke-static {v2, v3}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mViewContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$17;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$17;-><init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)V

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->setViewPagerItemClickListener(Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$ViewPagerItemClickListener;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->setOneItemEnableState(Z)V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->setAnotherInterface()V

    return-void
.end method

.method private initKidozText()V
    .registers 5

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/general/utils/Utils;->spTOpx(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v2, v3}, Lcom/kidoz/sdk/api/general/utils/Utils;->spTOpx(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getIsTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2f

    goto :goto_30

    :cond_2f
    move v1, v2

    :goto_30
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mAboutButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getId()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mParentalLockButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getId()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xc

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :try_start_67
    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mProperties:Lorg/json/JSONObject;

    const-string v2, "labelText"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mProperties:Lorg/json/JSONObject;

    const-string v2, "labelColor"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_85} :catch_86

    goto :goto_a1

    :catch_86
    move-exception v0

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when trying to load label: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a1
    return-void
.end method

.method private initLoadingProgressView()V
    .registers 6

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mLoadingProgressView:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mLoadingProgressView:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getId()I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getId()I

    move-result v3

    const/4 v4, 0x6

    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getId()I

    move-result v3

    const/4 v4, 0x7

    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getId()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initNextAndPreviousButtons()V
    .registers 6

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mNextButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mNextButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mProperties:Lorg/json/JSONObject;

    const-string v1, "nextBtnAnimation"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_49

    sget-object v2, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->PRESS_LEFT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_37

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mNextButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    new-instance v2, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$1;

    invoke-direct {v2, p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$1;-><init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_49

    :cond_37
    sget-object v2, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->PRESS_IN_OUT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_49

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mNextButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    new-instance v2, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$2;

    invoke-direct {v2, p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$2;-><init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_49
    :goto_49
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mViewContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mNextButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mNextButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mProperties:Lorg/json/JSONObject;

    const-string v4, "nextBtn"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->getAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$3;

    invoke-direct {v3, p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$3;-><init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)V

    invoke-virtual {v0, v2, v3}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->loadAsset(Ljava/io/File;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mPreviousButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mPreviousButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setId(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mProperties:Lorg/json/JSONObject;

    const-string v2, "previousBtnAnimation"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b2

    sget-object v2, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->PRESS_RIGHT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_a0

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mPreviousButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$4;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$4;-><init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_b2

    :cond_a0
    sget-object v2, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->PRESS_IN_OUT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_b2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mPreviousButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$5;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$5;-><init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b2
    :goto_b2
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mViewContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mPreviousButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mPreviousButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mProperties:Lorg/json/JSONObject;

    const-string v3, "previousBtn"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->getAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$6;

    invoke-direct {v2, p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$6;-><init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->loadAsset(Ljava/io/File;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V

    return-void
.end method

.method private initParentalLockButton()V
    .registers 7

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mParentalLockButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mParentalLockButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mProperties:Lorg/json/JSONObject;

    const-string v1, "parentalLockAnimation"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_36

    sget-object v2, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->PRESS_IN_OUT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_36

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mParentalLockButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    new-instance v2, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$10;

    invoke-direct {v2, p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$10;-><init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_36
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScreenSize(Landroid/content/Context;Z)I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScreenSize(Landroid/content/Context;Z)I

    move-result v2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mProperties:Lorg/json/JSONObject;

    const-string v5, "parentalLockActive"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->getAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_c1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_c1

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v1, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v0, v0

    const v5, 0x3da3d70a    # 0.08f

    mul-float v0, v0, v5

    float-to-int v0, v0

    invoke-static {v2, v4, v0, v0}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScaledDimension(IIII)[I

    move-result-object v0

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    aget v3, v0, v3

    aget v0, v0, v1

    invoke-direct {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mRootView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mParentalLockButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->updateLockIcon()V

    :cond_c1
    return-void
.end method

.method private initRootView()V
    .registers 5

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mRootView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mProperties:Lorg/json/JSONObject;

    const-string v2, "bgRootColor"

    const-string v3, "#CC261304"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Lcom/kidoz/sdk/api/general/BaseDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mViewContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setAnotherInterface()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$18;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$18;-><init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)V

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->setAnotherInterface(Lcom/kidoz/sdk/api/interfaces/AnotherInterface;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method

.method private showLoadingProgressView(Z)V
    .registers 3

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mLoadingProgressView:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mLoadingProgressView:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;->startLoadingAnimation()V

    goto :goto_1a

    :cond_e
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mLoadingProgressView:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;->stopLoadingAnimation()V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mLoadingProgressView:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1a
    return-void
.end method

.method private updateLockIcon()V
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->isParentalLockActive(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mParentalLockButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mProperties:Lorg/json/JSONObject;

    const-string v3, "parentalLockActive"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->getAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$11;

    invoke-direct {v2, p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$11;-><init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->loadAsset(Ljava/io/File;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V

    goto :goto_5c

    :cond_26
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mParentalLockButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mProperties:Lorg/json/JSONObject;

    const-string v3, "parentalLockNotActive"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->getAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$12;

    invoke-direct {v2, p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$12;-><init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->loadAsset(Ljava/io/File;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_41

    goto :goto_5c

    :catch_41
    move-exception v0

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->TAG:Ljava/lang/String;

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
.method public closeDialog()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->gifReady:Z

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/general/BaseDialog;->mIsWaitingToOpen:Z

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->assentsCnt:I

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->invokeWidgetClose()V

    :cond_e
    invoke-super {p0}, Lcom/kidoz/sdk/api/general/BaseDialog;->closeDialog()V

    return-void
.end method

.method public getIsCanOpen()Z
    .registers 5

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mParentalLockButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4e

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mAboutButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mExitButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mAnimation:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mNextButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mPreviousButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    if-eqz v3, :cond_4e

    iget-boolean v3, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->gifReady:Z

    if-eqz v3, :cond_4e

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->getIsAssetLoaded()Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mAboutButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->getIsAssetLoaded()Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mExitButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->getIsAssetLoaded()Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mAnimation:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->getIsAssetLoaded()Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mNextButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->getIsAssetLoaded()Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mPreviousButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->getIsAssetLoaded()Z

    move-result v0

    if-eqz v0, :cond_4e

    const/4 v0, 0x1

    goto :goto_4f

    :cond_4e
    const/4 v0, 0x0

    :goto_4f
    if-eqz v0, :cond_56

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->gifReady:Z

    if-eqz v0, :cond_56

    goto :goto_57

    :cond_56
    const/4 v1, 0x0

    :goto_57
    return v1
.end method

.method public isWaitingToOpen()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/general/BaseDialog;->mIsWaitingToOpen:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/general/BaseDialog;->getMyHandlerInstance()Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/kidoz/sdk/api/general/BaseDialog;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/general/BaseDialog;->mIsWaitingToOpen:Z

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->gifReady:Z

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->assentsCnt:I

    return-void
.end method

.method protected onDialogFocusChange(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/kidoz/sdk/api/general/BaseDialog;->onDialogFocusChange(Z)V

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mAllowClickHandling:Z

    goto :goto_c

    :cond_9
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mAllowClickHandling:Z

    :goto_c
    return-void
.end method

.method protected onDialogWindowVisibilityChange(Z)V
    .registers 3

    invoke-super {p0, p1}, Lcom/kidoz/sdk/api/general/BaseDialog;->onDialogWindowVisibilityChange(Z)V

    if-nez p1, :cond_7

    const/4 p1, 0x4

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->handleVisibilityChange(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mAllowClickHandling:Z

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .registers 2

    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized openDialog()V
    .registers 12

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/kidoz/sdk/api/general/BaseDialog;->mIsWaitingToOpen:Z

    invoke-static {}, Lcom/kidoz/sdk/api/KidozSDK;->isInitialised()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_5a

    iget-boolean v1, p0, Lcom/kidoz/sdk/api/general/BaseDialog;->mIsWaitingToOpen:Z

    if-ne v1, v0, :cond_5a

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->getIsCanOpen()Z

    move-result v1

    if-ne v1, v0, :cond_5a

    invoke-super {p0}, Lcom/kidoz/sdk/api/general/BaseDialog;->openDialog()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->animateOpen()V

    new-instance v7, Lcom/kidoz/events/a;

    invoke-direct {v7}, Lcom/kidoz/events/a;-><init>()V

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mIsAutomaticInvocation:Z

    if-eqz v0, :cond_31

    const-string v0, "Open Type"

    const-string v1, "0"

    invoke-virtual {v7, v0, v1}, Lcom/kidoz/events/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    :cond_31
    const-string v0, "Open Type"

    const-string v1, "1"

    invoke-virtual {v7, v0, v1}, Lcom/kidoz/events/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_38
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/BaseDialog;->mCallingActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v2

    iget-object v3, p0, Lcom/kidoz/sdk/api/general/BaseDialog;->mCallingActivity:Landroid/app/Activity;

    sget-object v0, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_FEED:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/general/enums/WidgetType;->getStringValue()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mStyleId:Ljava/lang/String;

    sget v6, Lcom/kidoz/events/EventManager;->a:I

    const-string v8, "Sponsored Content"

    const-string v9, "Widget View"

    const-string v10, "Feed View"

    invoke-virtual/range {v2 .. v10}, Lcom/kidoz/events/EventManager;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kidoz/events/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->invokeWidgetOpen()V
    :try_end_5a
    .catchall {:try_start_2 .. :try_end_5a} :catchall_5c

    :cond_5a
    monitor-exit p0

    return-void

    :catchall_5c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public pauseAction(Z)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->stopPlaybackAction(Z)V

    :cond_7
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mAnimation:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->stopGifAnim()V

    :cond_e
    return-void
.end method

.method public resumeAction(Z)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->startPlaybackAction()V

    :cond_9
    return-void
.end method

.method public setContentData(Lcom/kidoz/sdk/api/structure/ContentData;)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentData;->getContentDataItems()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->setContent(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->showLoadingProgressView(Z)V

    return-void
.end method

.method public setOnCloseButtonClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mCloseBtnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnInterstitialViewEventListener(Lcom/kidoz/sdk/api/interfaces/IOnFeedViewEventListener;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mOnInterstitialViewEventListener:Lcom/kidoz/sdk/api/interfaces/IOnFeedViewEventListener;

    :cond_4
    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.AnonymousClass1 (com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog$1)
.class Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$1;
.super Ljava/lang/Object;
.source "FeedFamilyViewDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->initNextAndPreviousButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$1;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$1;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$000(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$1;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$000(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object p1

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$1$1;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$1$1;-><init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$1;)V

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->playPressLeftAnimation(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.AnonymousClass1.C03781 (com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog$1$1)
.class Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$1$1;
.super Ljava/lang/Object;
.source "FeedFamilyViewDialog.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$1;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$1;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$1$1;->this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$1$1;->this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$1;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$1;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$000(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$1$1;->this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$1;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$1;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->nextPagerItem()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.AnonymousClass10 (com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog$10)
.class Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$10;
.super Ljava/lang/Object;
.source "FeedFamilyViewDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->initParentalLockButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$10;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$10;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$500(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$10;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$500(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object p1

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$10$1;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$10$1;-><init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$10;)V

    const/16 v1, 0x96

    invoke-static {p1, v1, v0}, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->clickItemAnimation(Landroid/view/View;ILcom/kidoz/sdk/api/general/animations/GenAnimator$ViewAnimationListener;)Landroid/animation/AnimatorSet;

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.AnonymousClass10.AnonymousClass1 (com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog$10$1)
.class Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$10$1;
.super Ljava/lang/Object;
.source "FeedFamilyViewDialog.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/animations/GenAnimator$ViewAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$10;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$10;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$10;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$10$1;->this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .registers 5

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$10$1;->this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$10;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$10;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$500(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$10$1;->this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$10;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$10;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$10$1$1;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$10$1$1;-><init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$10$1;)V

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v0, v2, v3, v3, v1}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->startParentalDialog(Landroid/content/Context;ZFFLcom/kidoz/sdk/api/dialogs/ParentalLockDialog$IOnParentalDialogListener;)Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;

    return-void
.end method

.method public onAnimationStart()V
    .registers 1

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.AnonymousClass10.AnonymousClass1.C03791 (com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog$10$1$1)
.class Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$10$1$1;
.super Ljava/lang/Object;
.source "FeedFamilyViewDialog.java"

# interfaces
.implements Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$IOnParentalDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$10$1;->onAnimationEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$10$1;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$10$1;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$10$1$1;->this$2:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$10$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseDialog()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$10$1$1;->this$2:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$10$1;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$10$1;->this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$10;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$10;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$600(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)V

    return-void
.end method

.method public onInputPass(Z)V
    .registers 2

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$10$1$1;->this$2:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$10$1;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$10$1;->this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$10;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$10;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$600(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)V

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.AnonymousClass11 (com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog$11)
.class Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$11;
.super Ljava/lang/Object;
.source "FeedFamilyViewDialog.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->updateLockIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$11;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssetLoaded(Z)V
    .registers 2

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$11;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->openDialog()V

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.AnonymousClass12 (com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog$12)
.class Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$12;
.super Ljava/lang/Object;
.source "FeedFamilyViewDialog.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->updateLockIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$12;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssetLoaded(Z)V
    .registers 2

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$12;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->openDialog()V

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.AnonymousClass13 (com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog$13)
.class Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13;
.super Ljava/lang/Object;
.source "FeedFamilyViewDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->initAboutKidozButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$700(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$700(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object p1

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13$1;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13$1;-><init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13;)V

    const/16 v1, 0x96

    invoke-static {p1, v1, v0}, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->clickItemAnimation(Landroid/view/View;ILcom/kidoz/sdk/api/general/animations/GenAnimator$ViewAnimationListener;)Landroid/animation/AnimatorSet;

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.AnonymousClass13.AnonymousClass1 (com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog$13$1)
.class Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13$1;
.super Ljava/lang/Object;
.source "FeedFamilyViewDialog.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/animations/GenAnimator$ViewAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13$1;->this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .registers 6

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13$1;->this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$700(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13$1;->this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13;

    iget-object v2, v2, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScreenSize(Landroid/content/Context;Z)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    float-to-int v2, v2

    const/4 v4, 0x0

    aput v2, v0, v4

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13$1;->this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13;

    iget-object v2, v2, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScreenSize(Landroid/content/Context;Z)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    new-instance v1, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13$1;->this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13;

    iget-object v2, v2, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;-><init>(Landroid/content/Context;[I)V

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/general/BaseDialog;->openDialog()V

    return-void
.end method

.method public onAnimationStart()V
    .registers 1

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.AnonymousClass14 (com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog$14)
.class Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$14;
.super Ljava/lang/Object;
.source "FeedFamilyViewDialog.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->initAboutKidozButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$14;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssetLoaded(Z)V
    .registers 2

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$14;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->openDialog()V

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.AnonymousClass15 (com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog$15)
.class Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$15;
.super Ljava/lang/Object;
.source "FeedFamilyViewDialog.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnOneItemActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->initFamilyOneItemView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$15;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;)V
    .registers 3

    sget-object v0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$20;->$SwitchMap$com$kidoz$sdk$api$ui_views$one_item_view$OneItemFamilyView$OneItemAction:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_19

    const/4 v0, 0x2

    if-eq p1, v0, :cond_f

    goto :goto_22

    :cond_f
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$15;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$800(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->startGifAnim()V

    goto :goto_22

    :cond_19
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$15;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$800(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->stopGifAnim()V

    :goto_22
    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.AnonymousClass16 (com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog$16)
.class Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$16;
.super Ljava/lang/Object;
.source "FeedFamilyViewDialog.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->initFamilyOneItemView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$16;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshDrawRequest()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$16;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$900(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestFocus()Z

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$16;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$900(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->bringToFront()V

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.AnonymousClass17 (com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog$17)
.class Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$17;
.super Ljava/lang/Object;
.source "FeedFamilyViewDialog.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$ViewPagerItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->initFamilyOneItemView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$17;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickEnd(Lcom/kidoz/sdk/api/structure/ContentItem;I)V
    .registers 11

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$17;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$1000(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$17;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$1002(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;Z)Z

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$17;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v0, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_FEED:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/general/enums/WidgetType;->getStringValue()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$17;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$1100(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    new-instance v7, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$17$1;

    invoke-direct {v7, p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$17$1;-><init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$17;)V

    move-object v2, p1

    move v5, p2

    invoke-static/range {v1 .. v7}, Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->handleContentItemClick(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;IZLcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnHandleClickListener;)V

    :cond_2b
    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.AnonymousClass17.AnonymousClass1 (com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog$17$1)
.class Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$17$1;
.super Ljava/lang/Object;
.source "FeedFamilyViewDialog.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnHandleClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$17;->onClickEnd(Lcom/kidoz/sdk/api/structure/ContentItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$17;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$17;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$17$1;->this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRestoreClick()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$17$1;->this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$17;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$17;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$1002(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;Z)Z

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.AnonymousClass18 (com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog$18)
.class Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$18;
.super Ljava/lang/Object;
.source "FeedFamilyViewDialog.java"

# interfaces
.implements Lcom/kidoz/sdk/api/interfaces/AnotherInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->setAnotherInterface()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$18;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toggleWidgetState(Z)V
    .registers 5

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$18;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$300(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$18;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$500(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$18;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$700(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$18;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$000(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$18;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$100(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$18;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    iget-object v1, v0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    iget-object v1, v1, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mViewPager:Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;

    xor-int/lit8 v2, p1, 0x1

    iput-boolean v2, v1, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->mIsBlocked:Z

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.AnonymousClass19 (com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog$19)
.class Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$19;
.super Ljava/lang/Object;
.source "FeedFamilyViewDialog.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->animateOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$19;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.AnonymousClass2 (com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog$2)
.class Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$2;
.super Ljava/lang/Object;
.source "FeedFamilyViewDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->initNextAndPreviousButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$2;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$2;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$000(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$2;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$000(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object p1

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$2$1;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$2$1;-><init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$2;)V

    const/16 v1, 0x96

    invoke-static {p1, v1, v0}, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->clickItemAnimation(Landroid/view/View;ILcom/kidoz/sdk/api/general/animations/GenAnimator$ViewAnimationListener;)Landroid/animation/AnimatorSet;

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.AnonymousClass2.AnonymousClass1 (com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog$2$1)
.class Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$2$1;
.super Ljava/lang/Object;
.source "FeedFamilyViewDialog.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/animations/GenAnimator$ViewAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$2;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$2;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$2;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$2;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$000(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$2;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$2;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->nextPagerItem()V

    return-void
.end method

.method public onAnimationStart()V
    .registers 1

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.AnonymousClass20 (com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog$20)
.class synthetic Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$20;
.super Ljava/lang/Object;
.source "FeedFamilyViewDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$kidoz$sdk$api$ui_views$one_item_view$OneItemFamilyView$OneItemAction:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;->values()[Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$20;->$SwitchMap$com$kidoz$sdk$api$ui_views$one_item_view$OneItemFamilyView$OneItemAction:[I

    :try_start_9
    sget-object v1, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;->STOP_ANY_ANIMATION:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$20;->$SwitchMap$com$kidoz$sdk$api$ui_views$one_item_view$OneItemFamilyView$OneItemAction:[I

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;->RESTART_ANY_ANIMATION:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.AnonymousClass3 (com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog$3)
.class Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$3;
.super Ljava/lang/Object;
.source "FeedFamilyViewDialog.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->initNextAndPreviousButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$3;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssetLoaded(Z)V
    .registers 2

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$3;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->openDialog()V

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.AnonymousClass4 (com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog$4)
.class Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$4;
.super Ljava/lang/Object;
.source "FeedFamilyViewDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->initNextAndPreviousButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$4;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$4;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$100(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$4;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$100(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object p1

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$4$1;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$4$1;-><init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$4;)V

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->playPressRightAnimation(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.AnonymousClass4.AnonymousClass1 (com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog$4$1)
.class Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$4$1;
.super Ljava/lang/Object;
.source "FeedFamilyViewDialog.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$4;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$4;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$4$1;->this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$4$1;->this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$4;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$4;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$100(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$4$1;->this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$4;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$4;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->previousItem()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.AnonymousClass5 (com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog$5)
.class Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$5;
.super Ljava/lang/Object;
.source "FeedFamilyViewDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->initNextAndPreviousButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$5;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$5;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$100(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$5;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$100(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object p1

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$5$1;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$5$1;-><init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$5;)V

    const/16 v1, 0x96

    invoke-static {p1, v1, v0}, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->clickItemAnimation(Landroid/view/View;ILcom/kidoz/sdk/api/general/animations/GenAnimator$ViewAnimationListener;)Landroid/animation/AnimatorSet;

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.AnonymousClass5.AnonymousClass1 (com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog$5$1)
.class Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$5$1;
.super Ljava/lang/Object;
.source "FeedFamilyViewDialog.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/animations/GenAnimator$ViewAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$5;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$5;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$5$1;->this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$5$1;->this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$5;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$5;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$100(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$5$1;->this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$5;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$5;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->previousItem()V

    return-void
.end method

.method public onAnimationStart()V
    .registers 1

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.AnonymousClass6 (com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog$6)
.class Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$6;
.super Ljava/lang/Object;
.source "FeedFamilyViewDialog.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->initNextAndPreviousButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$6;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssetLoaded(Z)V
    .registers 2

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$6;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->openDialog()V

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.AnonymousClass7 (com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog$7)
.class Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$7;
.super Ljava/lang/Object;
.source "FeedFamilyViewDialog.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$7;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssetLoaded(Z)V
    .registers 3

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$7;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$202(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;Z)Z

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$7;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->openDialog()V

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.AnonymousClass8 (com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog$8)
.class Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$8;
.super Ljava/lang/Object;
.source "FeedFamilyViewDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->initExitButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$8;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$8;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$300(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$8;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$300(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object p1

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$8$1;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$8$1;-><init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$8;)V

    const/16 v1, 0x96

    invoke-static {p1, v1, v0}, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->clickItemAnimation(Landroid/view/View;ILcom/kidoz/sdk/api/general/animations/GenAnimator$ViewAnimationListener;)Landroid/animation/AnimatorSet;

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.AnonymousClass8.AnonymousClass1 (com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog$8$1)
.class Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$8$1;
.super Ljava/lang/Object;
.source "FeedFamilyViewDialog.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/animations/GenAnimator$ViewAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$8;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$8;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$8$1;->this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$8$1;->this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$8;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$8;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$300(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$8$1;->this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$8;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$8;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$400(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$8$1;->this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$8;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$8;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$400(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_22
    return-void
.end method

.method public onAnimationStart()V
    .registers 1

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.AnonymousClass9 (com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog$9)
.class Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$9;
.super Ljava/lang/Object;
.source "FeedFamilyViewDialog.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->initExitButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$9;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssetLoaded(Z)V
    .registers 2

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$9;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->openDialog()V

    return-void
.end method
