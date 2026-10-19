###### Class com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView (com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView)
.class public abstract Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;
.super Landroid/widget/RelativeLayout;
.source "AbstractPanelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;
    }
.end annotation


# static fields
.field private static final FIRST_TIME_LAST_LAUNCH_KEY:Ljava/lang/String; = "fistTimeLastLounch"

.field private static final PANEL_SHARED_PREFERENCES:Ljava/lang/String; = "panel_shared_pref"

.field private static final TAG:Ljava/lang/String;

.field private static final TIME_MULT_FACTOR:I = 0x36ee80


# instance fields
.field public mAboutKidozButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

.field protected mAllowClickHandling:Z

.field protected mBottomBarContainer:Landroid/widget/RelativeLayout;

.field protected mBtnCloseBgUrl:Ljava/lang/String;

.field protected mBtnCloseFrgUrl:Ljava/lang/String;

.field protected mBtnOpenBgUrl:Ljava/lang/String;

.field protected mBtnOpenFrgUrl:Ljava/lang/String;

.field protected mBtnScaleSize:F

.field protected mContainer:Landroid/widget/RelativeLayout;

.field protected mContentItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kidoz/sdk/api/structure/ContentItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mContentLogicLoader:Lcom/kidoz/sdk/api/general/ContentLogicLoader;

.field protected mFirstLaunchOpenPeriod:F

.field protected mFirstLaunchOpenRepeatTimeFarme:F

.field protected mFirstLaunchStartDelay:F

.field protected mHandlePosition:Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;

.field protected mIOnPanelViewEventListener:Lcom/kidoz/sdk/api/interfaces/IOnPanelViewEventListener;

.field protected mInnerContainer:Landroid/widget/RelativeLayout;

.field protected mInterstitial:Lcom/kidoz/sdk/api/ui_views/interstitial/LocalIntrst;

.field protected mIsAnimationRunning:Z

.field protected mIsClicksBlocked:Z

.field protected mIsPanelPrepared:Z

.field protected mLabelColor:I

.field protected mLabelText:Ljava/lang/String;

.field private mLastInterceptTS:J

.field protected mLegacyBtnCloseUrl:Ljava/lang/String;

.field protected mLegacyBtnOpenSponsoredUrl:Ljava/lang/String;

.field protected mLegacyBtnOpenUrl:Ljava/lang/String;

.field public mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

.field protected mPanelBgColor:I

.field public mPanelHandle:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

.field protected mPanelState:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;

.field protected mPanelType:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

.field public mParentalLockButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

.field protected mPoweredByTextView:Landroid/widget/TextView;

.field protected mShadowView:Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView;

.field protected mSharedPreferences:Landroid/content/SharedPreferences;

.field protected mStaticHandler:Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

.field protected mStyleId:Ljava/lang/String;

.field protected mWidgetProperties:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;->BOTTOM:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelType:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    sget-object p1, Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;->START:Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mHandlePosition:Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mContentItems:Ljava/util/ArrayList;

    sget-object p1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;->CLOSED:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelState:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mAllowClickHandling:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mIsPanelPrepared:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mLastInterceptTS:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mLegacyBtnCloseUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mLegacyBtnOpenUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mLegacyBtnOpenSponsoredUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mBtnCloseBgUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mBtnCloseFrgUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mBtnOpenBgUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mBtnOpenFrgUrl:Ljava/lang/String;

    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mBtnScaleSize:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelBgColor:I

    const-string v0, ""

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mLabelText:Ljava/lang/String;

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mLabelColor:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mFirstLaunchOpenPeriod:F

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mFirstLaunchOpenRepeatTimeFarme:F

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mFirstLaunchStartDelay:F

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mStyleId:Ljava/lang/String;

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mWidgetProperties:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->prepareProperties()V

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;)V
    .registers 1

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->toggleAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->setParentalLocIConkState(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->prepareHandle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;)V
    .registers 1

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->openPanelForDefinedAmountOfTime()V

    return-void
.end method

.method static synthetic access$400(Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->expandPanelViewInternal(Z)V

    return-void
.end method

.method private expandPanelViewInternal(Z)V
    .registers 12

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mIsAnimationRunning:Z

    if-nez v0, :cond_69

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelState:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;->CLOSED:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;

    if-ne v0, v1, :cond_69

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_69

    new-instance v6, Lcom/kidoz/events/a;

    invoke-direct {v6}, Lcom/kidoz/events/a;-><init>()V

    const-string v0, "Open Type"

    if-eqz p1, :cond_1f

    const-string p1, "1"

    invoke-virtual {v6, v0, p1}, Lcom/kidoz/events/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    :cond_1f
    const-string p1, "0"

    invoke-virtual {v6, v0, p1}, Lcom/kidoz/events/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_24
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelType:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string v0, "Panel Type"

    invoke-virtual {v6, v0, p1}, Lcom/kidoz/events/a;->b(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object p1, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_PANEL:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/enums/WidgetType;->getStringValue()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mStyleId:Ljava/lang/String;

    sget v5, Lcom/kidoz/events/EventManager;->a:I

    const-string v7, "Sponsored Content"

    const-string v8, "Widget View"

    const-string v9, "Panel View"

    invoke-virtual/range {v1 .. v9}, Lcom/kidoz/events/EventManager;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kidoz/events/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->isParentalLockActive(Landroid/content/Context;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->setParentalLocIConkState(Z)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mContainer:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_69

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mInnerContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelType:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    new-instance v2, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$7;

    invoke-direct {v2, p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$7;-><init>(Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;)V

    invoke-static {p1, v0, v1, v2}, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->openPanelView(Landroid/view/View;Landroid/view/View;Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;Landroid/animation/Animator$AnimatorListener;)V

    :cond_69
    return-void
.end method

.method private initAboutKidozButton()V
    .registers 5

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mAboutKidozButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mAboutKidozButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mAboutKidozButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$4;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$4;-><init>(Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mAboutKidozButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mBottomBarContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mAboutKidozButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mAboutKidozButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mWidgetProperties:Lorg/json/JSONObject;

    const-string v3, "kidozIcon"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->getAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->loadAsset(Ljava/io/File;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V

    return-void
.end method

.method private initPanelContainer()V
    .registers 5

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mContainer:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->initShadowView()V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mInnerContainer:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setId(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mInnerContainer:Landroid/widget/RelativeLayout;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mInnerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mInnerContainer:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$1;

    invoke-direct {v2, p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$1;-><init>(Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mInnerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSoundEffectsEnabled(Z)V

    return-void
.end method

.method private initPanelHandleBtn()V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/Utils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mBtnScaleSize:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelType:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    new-instance v4, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$2;

    invoke-direct {v4, p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$2;-><init>(Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;)V

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;-><init>(Landroid/content/Context;Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;ILcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IOnPanelHandleClickListener;)V

    iput-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelHandle:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mBtnScaleSize:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_34

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_34
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelHandle:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelHandle:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initParentalLockButton()V
    .registers 4

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mParentalLockButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mParentalLockButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mParentalLockButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$3;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$3;-><init>(Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mParentalLockButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mBottomBarContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mParentalLockButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->isParentalLockActive(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->setParentalLocIConkState(Z)V

    return-void
.end method

.method private openPanelForDefinedAmountOfTime()V
    .registers 5

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "fistTimeLastLounch"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iget v2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mFirstLaunchStartDelay:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2a

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2a

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->getStaticHandler()Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    move-result-object v2

    new-instance v3, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$10;

    invoke-direct {v3, p0, v0, v1}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$10;-><init>(Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;J)V

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mFirstLaunchStartDelay:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v0, v0, v1

    float-to-long v0, v0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2a
    return-void
.end method

.method private prepareHandle(Ljava/lang/String;)V
    .registers 4

    new-instance p1, Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;

    invoke-direct {p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;-><init>()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mLegacyBtnCloseUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->getAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;->legacyBtnCloseAsset:Ljava/io/File;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mLegacyBtnOpenUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->getAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;->legacyBtnOpenAsset:Ljava/io/File;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mLegacyBtnOpenSponsoredUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->getAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;->legacyBtnDefaultOpenSponsoredAsset:Ljava/io/File;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mBtnOpenBgUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->getAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;->openBtnAssetBg:Ljava/io/File;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mBtnOpenFrgUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->getAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;->openBtnAssetFrg:Ljava/io/File;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mBtnCloseBgUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->getAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;->closeBtnAssetBg:Ljava/io/File;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mBtnCloseFrgUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->getAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;->closeBtnAssetFrg:Ljava/io/File;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelHandle:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8;-><init>(Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;)V

    invoke-virtual {v0, p1, v1}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->loadAssets(Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IonPanelHandlePreparedListener;)V

    return-void
.end method

.method private preparePanel()V
    .registers 2

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelBgColor:I

    invoke-virtual {p0, v0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->setPanelColor(I)V

    sget-object v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;->CLOSED:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelState:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mIsAnimationRunning:Z

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$9;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$9;-><init>(Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;)V

    invoke-static {p0, v0}, Lcom/kidoz/sdk/api/general/utils/Utils;->setOnGlobalLayoutFinishListener(Landroid/view/View;Lcom/kidoz/sdk/api/general/utils/Utils$OnGlobalLayoutFinishedListener;)V

    return-void
.end method

.method private resetPanelState()V
    .registers 9

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->initPanelViewsRules()V

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mIsPanelPrepared:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelState:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;->CLOSED:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;

    if-ne v0, v1, :cond_1f

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mContainer:Landroid/widget/RelativeLayout;

    const-wide/16 v3, 0x0

    iget-object v5, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mInnerContainer:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelType:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->closePanelView(Landroid/view/View;JLandroid/view/View;Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestFocus()Z

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->bringToFront()V

    :cond_1f
    return-void
.end method

.method private setParentalLocIConkState(Z)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mParentalLockButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mWidgetProperties:Lorg/json/JSONObject;

    const-string v3, "btnLockUrl"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->getAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->loadAsset(Ljava/io/File;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V

    goto :goto_2e

    :cond_19
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mParentalLockButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mWidgetProperties:Lorg/json/JSONObject;

    const-string v3, "btnUnlockUrl"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->getAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->loadAsset(Ljava/io/File;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V

    :goto_2e
    return-void
.end method

.method private toggleAnimation()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelState:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;->OPEN:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;

    if-ne v0, v1, :cond_a

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->collapsePanelView()V

    goto :goto_e

    :cond_a
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->expandPanelViewInternal(Z)V

    :goto_e
    return-void
.end method


# virtual methods
.method protected abstract clearPanelContent()V
.end method

.method public collapsePanelView()V
    .registers 9

    invoke-static {}, Lcom/kidoz/sdk/api/KidozSDK;->isInitialised()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mIsAnimationRunning:Z

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelState:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;->OPEN:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;

    if-ne v0, v1, :cond_22

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mContainer:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_22

    const-wide/16 v3, 0xc8

    iget-object v5, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mInnerContainer:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelType:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    new-instance v7, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$6;

    invoke-direct {v7, p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$6;-><init>(Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;)V

    invoke-static/range {v2 .. v7}, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->closePanelView(Landroid/view/View;JLandroid/view/View;Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;Landroid/animation/Animator$AnimatorListener;)V

    :cond_22
    return-void
.end method

.method public expandPanelView()V
    .registers 2

    invoke-static {}, Lcom/kidoz/sdk/api/KidozSDK;->isInitialised()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->expandPanelViewInternal(Z)V

    :cond_a
    return-void
.end method

.method public getPanelViewState()Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelState:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;

    return-object v0
.end method

.method protected getStaticHandler()Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mStaticHandler:Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    if-nez v0, :cond_f

    new-instance v0, Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mStaticHandler:Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    :cond_f
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mStaticHandler:Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    return-object v0
.end method

.method protected initBottomBar()V
    .registers 8

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mBottomBarContainer:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v1, v3}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mInnerContainer:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mBottomBarContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->initParentalLockButton()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->initAboutKidozButton()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScaleFactor(Landroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x428c0000    # 70.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mParentalLockButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mAboutKidozButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPoweredByTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mLabelText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPoweredByTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mLabelColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPoweredByTextView:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPoweredByTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPoweredByTextView:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPoweredByTextView:Landroid/widget/TextView;

    const/16 v5, 0x53

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPoweredByTextView:Landroid/widget/TextView;

    const-string v5, "#44000000"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v0, v3, v6, v6, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mAboutKidozButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getId()I

    move-result v2

    const/16 v5, 0x8

    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mParentalLockButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getId()I

    move-result v2

    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mAboutKidozButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v2, v3}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mBottomBarContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPoweredByTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected initContentLogicLoader()V
    .registers 3

    new-instance v0, Lcom/kidoz/sdk/api/general/ContentLogicLoader;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$5;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$5;-><init>(Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;)V

    invoke-direct {v0, v1}, Lcom/kidoz/sdk/api/general/ContentLogicLoader;-><init>(Lcom/kidoz/sdk/api/general/ContentLogicLoader$IOnContentDataReadyCallback;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mContentLogicLoader:Lcom/kidoz/sdk/api/general/ContentLogicLoader;

    return-void
.end method

.method protected abstract initInnerPanelView()V
.end method

.method protected abstract initPanelViewsRules()V
.end method

.method protected abstract initShadowView()V
.end method

.method protected initView()V
    .registers 1

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->initPanelContainer()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->initPanelHandleBtn()V

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->initInnerPanelView()V

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->initBottomBar()V

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->initPanelViewsRules()V

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->initContentLogicLoader()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->preparePanel()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected abstract onCollapsePanelAnimationEnded()V
.end method

.method protected abstract onContentDataLoadEnded()V
.end method

.method protected abstract onContentDataLoadFailed()V
.end method

.method protected abstract onContentDataLoadStarted()V
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->getStaticHandler()Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected abstract onExpandPanelAnimationStarted()V
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mLastInterceptTS:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_1b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mLastInterceptTS:J

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->getStaticHandler()Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1b
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected abstract onNoOffers()V
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-static {}, Lcom/kidoz/sdk/api/KidozSDK;->isInitialised()Z

    move-result p1

    if-eqz p1, :cond_21

    if-nez p2, :cond_c

    goto :goto_21

    :cond_c
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_21

    const/16 p1, 0x8

    if-eq p2, p1, :cond_19

    const/4 p1, 0x4

    if-ne p2, p1, :cond_21

    :cond_19
    invoke-virtual {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->getStaticHandler()Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_21
    :goto_21
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mAllowClickHandling:Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mAllowClickHandling:Z

    goto :goto_c

    :cond_9
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mAllowClickHandling:Z

    :goto_c
    return-void
.end method

.method protected prepareProperties()V
    .registers 6

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mWidgetProperties:Lorg/json/JSONObject;

    const-string v1, "style_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mStyleId:Ljava/lang/String;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mWidgetProperties:Lorg/json/JSONObject;

    const-string v1, "btnClosedUrl"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mLegacyBtnCloseUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mWidgetProperties:Lorg/json/JSONObject;

    const-string v1, "btnOpenedUrl"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mLegacyBtnOpenUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mWidgetProperties:Lorg/json/JSONObject;

    const-string v1, "btnOpenDefaultSponsoredUrl"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mLegacyBtnOpenSponsoredUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mWidgetProperties:Lorg/json/JSONObject;

    const-string v1, "btnScaleSize"

    const-wide v3, 0x3fc3333340000000L    # 0.15000000596046448

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mBtnScaleSize:F

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mWidgetProperties:Lorg/json/JSONObject;

    const-string v1, "labelText"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mLabelText:Ljava/lang/String;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mWidgetProperties:Lorg/json/JSONObject;

    const-string v1, "flOpenPeriodSec"

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mFirstLaunchOpenPeriod:F

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mWidgetProperties:Lorg/json/JSONObject;

    const-string v1, "flOpenStartDelaySec"

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mFirstLaunchStartDelay:F

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mWidgetProperties:Lorg/json/JSONObject;

    const-string v1, "flOpenEveryXhoursTF"

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mFirstLaunchOpenRepeatTimeFarme:F

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mWidgetProperties:Lorg/json/JSONObject;

    const-string v1, "panelCloseButtonBgImageURL"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mBtnCloseBgUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mWidgetProperties:Lorg/json/JSONObject;

    const-string v1, "panelCloseButtonFrgImageURL"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mBtnCloseFrgUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mWidgetProperties:Lorg/json/JSONObject;

    const-string v1, "panelOpenButtonBgImageURL"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mBtnOpenBgUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mWidgetProperties:Lorg/json/JSONObject;

    const-string v1, "panelOpenButtonFrgImageURL"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mBtnOpenFrgUrl:Ljava/lang/String;

    :try_start_90
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mWidgetProperties:Lorg/json/JSONObject;

    const-string v1, "panelBgClr"

    const-string v2, "#FFFFFF"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelBgColor:I
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_a0} :catch_a1

    goto :goto_a4

    :catch_a1
    const/4 v0, -0x1

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelBgColor:I

    :goto_a4
    :try_start_a4
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mWidgetProperties:Lorg/json/JSONObject;

    const-string v1, "labelColor"

    const-string v2, "#000000"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mLabelColor:I
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_b4} :catch_b5

    goto :goto_b9

    :catch_b5
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mLabelColor:I

    :goto_b9
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "panel_shared_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mWidgetProperties:Lorg/json/JSONObject;

    const-string v1, "lounchInterstitialOnOpen"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_ec

    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_dc

    goto :goto_ec

    :cond_dc
    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mInterstitial:Lcom/kidoz/sdk/api/ui_views/interstitial/LocalIntrst;

    if-nez v1, :cond_f1

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/interstitial/LocalIntrst;

    check-cast v0, Landroid/app/Activity;

    sget-object v2, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;->INTERSTITIAL:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    invoke-direct {v1, v0, v2}, Lcom/kidoz/sdk/api/ui_views/interstitial/LocalIntrst;-><init>(Landroid/app/Activity;Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;)V

    iput-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mInterstitial:Lcom/kidoz/sdk/api/ui_views/interstitial/LocalIntrst;

    goto :goto_f1

    :cond_ec
    :goto_ec
    const-string v0, "Context is null or not an Activity"

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;)V

    :cond_f1
    :goto_f1
    return-void
.end method

.method protected abstract setContentAndRefresh(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/kidoz/sdk/api/structure/ContentItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public setOnPanelViewEventListener(Lcom/kidoz/sdk/api/interfaces/IOnPanelViewEventListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mIOnPanelViewEventListener:Lcom/kidoz/sdk/api/interfaces/IOnPanelViewEventListener;

    return-void
.end method

.method public setPanelColor(I)V
    .registers 3

    if-eqz p1, :cond_4

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelBgColor:I

    :cond_4
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mInnerContainer:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_d

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelBgColor:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :cond_d
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelHandle:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    if-eqz p1, :cond_16

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelBgColor:I

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->setBaseColor(I)V

    :cond_16
    return-void
.end method

.method public setPanelConfiguration(Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;)V
    .registers 4

    invoke-static {}, Lcom/kidoz/sdk/api/KidozSDK;->isInitialised()Z

    move-result v0

    if-eqz v0, :cond_2c

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelType:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mHandlePosition:Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;

    iget-object p2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelHandle:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    invoke-virtual {p2, p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->setPanelType(Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;)V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->resetPanelState()V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mHandlePosition:Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;

    sget-object p2, Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;->NONE:Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;

    if-ne p1, p2, :cond_1f

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelHandle:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2c

    :cond_1f
    iget p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mBtnScaleSize:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelHandle:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public abstract setPanelEnabled(Z)V
.end method
