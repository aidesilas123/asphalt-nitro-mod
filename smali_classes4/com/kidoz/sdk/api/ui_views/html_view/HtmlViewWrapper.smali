###### Class com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper (com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper)
.class public Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;
.super Landroid/widget/RelativeLayout;
.source "HtmlViewWrapper.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/html_view/HtmlJavaScriptInterafce;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$BannerLoadJSInterface;,
        Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$AdState;,
        Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$IOnInitFinishedListener;,
        Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$BannerShowJSInterface;,
        Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$BannerInvokeUrlInterface;
    }
.end annotation


# static fields
.field private static final JS_OBJECT_NAME:Ljava/lang/String; = "KidozAndroid"

.field protected static final LOADING_PROGRESS_DEFAULT_RATIO:F = 0.35f

.field protected static final ON_AD_FAILED_TO_LOAD:I = 0x9

.field protected static final ON_AD_FAILED_TO_START:I = 0xc

.field protected static final ON_AD_IMPRESSION:I = 0xd

.field protected static final ON_AD_LOADED:I = 0x5

.field protected static final ON_AD_STARTED:I = 0xb

.field protected static final ON_AD_STATE_CHANGE:I = 0x8

.field protected static final ON_CLOSE:I = 0x3

.field protected static final ON_LOAD_FINISHED:I = 0x0

.field protected static final ON_LOAD_STARTED:I = 0x1

.field protected static final ON_RECEIVED_ERROR:I = 0x4

.field protected static final ON_REWARDED:I = 0x6

.field protected static final ON_REWARDED_STARTED:I = 0x7

.field protected static final ON_VIEW_READY:I = 0x2

.field protected static final ON_VIEW_READY_2:I = 0xa

.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private blockClick:Z

.field protected mAdState:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$AdState;

.field protected mAllowClickHandling:Z

.field private mAllowJSResize:Z

.field private mBannerInvokeUrlInterface:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$BannerInvokeUrlInterface;

.field private mBannerLoadJSInterface:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$BannerLoadJSInterface;

.field private mBannerShowJSInterface:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$BannerShowJSInterface;

.field protected mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

.field protected mEventHandler:Landroid/os/Handler;

.field protected mExecutionHandler:Landroid/os/Handler;

.field protected mHtmlPageUrl:Ljava/lang/String;

.field protected mHtmlWeViewListener:Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;

.field protected mInFocusActivityContext:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsShowClose:Z

.field private mLastOverloadUrl:Ljava/lang/String;

.field protected mLoadingProgressView:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;

.field private mPreviousOrientation:I

.field protected mSdkInitListener:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$IOnInitFinishedListener;

.field protected mStyleId:Ljava/lang/String;

.field protected mViewPagerItemClickListener:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$ViewPagerItemClickListener;

.field public mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView;

.field protected mWidgetType:Ljava/lang/String;

.field public webViewInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mWidgetType:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mAllowClickHandling:Z

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mLastOverloadUrl:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mIsShowClose:Z

    sget-object p1, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$AdState;->AD_STOPED:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$AdState;

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mAdState:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$AdState;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mAllowJSResize:Z

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->blockClick:Z

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->webViewInitialized:Z

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mExecutionHandler:Landroid/os/Handler;

    :try_start_24
    invoke-direct {p0, p2}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->initView(Z)V

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->webViewInitialized:Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_29} :catch_29

    :catch_29
    return-void
.end method

.method static synthetic access$000(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mAllowJSResize:Z

    return p0
.end method

.method static synthetic access$100(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->blockClick:Z

    return p0
.end method

.method static synthetic access$202(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mLastOverloadUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->onAdFailedToLoad(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$BannerLoadJSInterface;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mBannerLoadJSInterface:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$BannerLoadJSInterface;

    return-object p0
.end method

.method private initHandler()V
    .registers 3

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$1;-><init>(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mEventHandler:Landroid/os/Handler;

    return-void
.end method

.method private initProgressLoadingView()V
    .registers 3

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mLoadingProgressView:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;

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

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mLoadingProgressView:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;

    invoke-virtual {p0, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initView(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->initHandler()V

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->initWebView(Z)V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->initProgressLoadingView()V

    return-void
.end method

.method private initWebView(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView;

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->clearCache()V

    :cond_10
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView;

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$2;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$2;-><init>(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)V

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView;->setWebViewVisibilityListener(Lcom/kidoz/sdk/api/players/web_player/WebViewVisibilityListener;)V

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->applyJavaScriptInterfaces()V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView;

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$3;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$3;-><init>(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView;

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozWebChromeClient;

    invoke-direct {v0}, Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozWebChromeClient;-><init>()V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3c
    .catchall {:try_start_0 .. :try_end_3c} :catchall_3d

    return-void

    :catchall_3d
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to init WebView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->TAG:Ljava/lang/String;

    const-string v1, "**************************************************************"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private synthetic lambda$notifyAdFailedToStart$1(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mBannerShowJSInterface:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$BannerShowJSInterface;

    invoke-interface {v0, p1, p2}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$BannerShowJSInterface;->onError(ILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$notifyAdImpression$2()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mBannerShowJSInterface:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$BannerShowJSInterface;

    invoke-interface {v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$BannerShowJSInterface;->onImpression()V

    return-void
.end method

.method private synthetic lambda$notifyAdStarted$0()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mBannerShowJSInterface:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$BannerShowJSInterface;

    invoke-interface {v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$BannerShowJSInterface;->onSuccess()V

    return-void
.end method

.method private onAdFailedToLoad(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mBannerLoadJSInterface:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$BannerLoadJSInterface;

    if-nez v0, :cond_16

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_20

    :cond_16
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mExecutionHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$26;

    invoke-direct {v1, p0, p1, p2}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$26;-><init>(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_20
    return-void
.end method

.method private onGetDonePlayback()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mExecutionHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$14;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$14;-><init>(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onGetParentalLockState(Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->isParentalLockActive(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mExecutionHandler:Landroid/os/Handler;

    new-instance v2, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$15;

    invoke-direct {v2, p0, p1, v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$15;-><init>(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_14
    return-void
.end method

.method private setAndApplyExternalProperties(Lorg/json/JSONObject;)V
    .registers 4

    if-eqz p1, :cond_26

    const-string v0, "webview_properties"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView;

    if-eqz v1, :cond_1d

    invoke-virtual {v1, v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView;->applyProperties(Lorg/json/JSONObject;)V

    :cond_1d
    const/4 v0, 0x0

    const-string v1, "showClose"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mIsShowClose:Z

    :cond_26
    return-void
.end method


# virtual methods
.method public synthetic a(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->lambda$notifyAdFailedToStart$1(ILjava/lang/String;)V

    return-void
.end method

.method protected applyJavaScriptInterfaces()V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView;

    const-string v1, "KidozAndroid"

    invoke-virtual {v0, p0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic b()V
    .registers 1

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->lambda$notifyAdImpression$2()V

    return-void
.end method

.method public synthetic c()V
    .registers 1

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->lambda$notifyAdStarted$0()V

    return-void
.end method

.method public clearCache()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView;

    if-eqz v0, :cond_d

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    :cond_d
    return-void
.end method

.method public clearHtmlView()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView;

    invoke-virtual {v1, v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView;->setWebViewVisibilityListener(Lcom/kidoz/sdk/api/players/web_player/WebViewVisibilityListener;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_17
    .catchall {:try_start_1 .. :try_end_10} :catchall_11

    goto :goto_17

    :catchall_11
    move-exception v1

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView;

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mInFocusActivityContext:Ljava/lang/ref/SoftReference;

    throw v1

    :catch_17
    :goto_17
    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView;

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mInFocusActivityContext:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public forwardToGooglePlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->blockClick:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual/range {p0 .. p6}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->onForwardToGooglePlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getLastOverloadUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mLastOverloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->onGetLocalParam(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_1f

    :catch_4
    move-exception p1

    sget-object p2, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HtmlViewWrapper | onStoreLocalParameter | error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f
    return-void
.end method

.method public getParams()Ljava/lang/String;
    .registers 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    new-instance v2, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;

    invoke-direct {v2}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;-><init>()V

    invoke-static {}, Lcom/kidoz/sdk/api/KidozSDK;->getPublisherID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->setPublisherId(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;

    move-result-object v3

    invoke-static {}, Lcom/kidoz/sdk/api/KidozSDK;->getAuthToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->setAuthToken(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;

    move-result-object v3

    invoke-static {}, Lcom/kidoz/sdk/api/KidozSDK;->getAppId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_28

    invoke-static {}, Lcom/kidoz/sdk/api/KidozSDK;->getAppId()Ljava/lang/String;

    move-result-object v4

    goto :goto_2c

    :cond_28
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    :goto_2c
    invoke-virtual {v3, v4}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->setPackageId(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;

    move-result-object v3

    const-string v4, "4"

    invoke-virtual {v3, v4}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->setSdkVersion(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;

    move-result-object v3

    invoke-static {}, Lcom/kidoz/sdk/api/KidozSDK;->getSDKVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->setActualSdkVersion(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->setOsVersion(I)Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;

    move-result-object v3

    const-string v4, "android"

    invoke-virtual {v3, v4}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->setOsType(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;

    move-result-object v3

    sget-object v4, Lcom/kidoz/sdk/api/general/utils/ConstantDef;->EXTENSION_TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->setExtensionType(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;

    move-result-object v3

    sget-object v4, Lcom/kidoz/sdk/api/general/utils/ConstantDef;->EXTENSION_VERSION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->setExtensionVersion(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/Utils;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->setNetworkType(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/Utils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->setAppVersionCode(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/Utils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->setAppVersionName(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/Utils;->getDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->setDeviceType(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->setDeviceLang(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/Utils;->getSessionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->setDeviceHash(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->setManufacturer(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->setModel(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;

    move-result-object v3

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->getWebViewVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->setWebviewVersion(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getDeviceScreenSizeInInches(Landroid/content/Context;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->setScreenSize(D)Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScreenDpi(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->setDpi(F)Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScreenCategory(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->setScreenCategory(I)Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/Utils;->getCarrierName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->setCarrierName(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->setResolutionHeight(I)Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;

    move-result-object v3

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v1}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->setResolutionWidth(I)Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mWidgetType:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->setWidgetType(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;

    move-result-object v1

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->getCacheBuster()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->setCacheBuster(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/TestUtils;->isTestApp()Z

    move-result v1

    if-eqz v1, :cond_e4

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/TestUtils;->getOverrideWaterfallUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->setOverrideWaterfallUrl(Ljava/lang/String;)V

    :cond_e4
    invoke-virtual {v2}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->build()Lcom/kidoz/sdk/api/general/utils/KidozParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/general/utils/KidozParams;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentalLockStatus(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->onGetParentalLockState(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_1f

    :catch_4
    move-exception p1

    sget-object v0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HtmlViewWrapper | onStoreLocalParameter | error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f
    return-void
.end method

.method public getWidgetType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mWidgetType:Ljava/lang/String;

    return-object v0
.end method

.method protected handleOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p2}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->openGooglePlayStore(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public hideBanner()V
    .registers 2

    const-string v0, "javascript:hideBanner();"

    invoke-virtual {p0, v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->invokeJSfunction(Ljava/lang/String;)V

    return-void
.end method

.method public hideLoadingProgressView()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mLoadingProgressView:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;->stopLoadingAnimation()V

    :cond_7
    return-void
.end method

.method protected invokeAboutClick()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mExecutionHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$7;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$7;-><init>(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected invokeInitiateWebViewProperties(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mExecutionHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$10;

    invoke-direct {v1, p0, p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$10;-><init>(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public invokeJSfunction(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mExecutionHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$22;

    invoke-direct {v1, p0, p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$22;-><init>(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_24

    :catch_b
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HtmlViewWrapper | invokeJS exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;)V

    :goto_24
    return-void
.end method

.method protected invokeMaximizedClick()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mExecutionHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$9;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$9;-><init>(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected invokeOnImpressionServed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mExecutionHandler:Landroid/os/Handler;

    new-instance v7, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$5;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$5;-><init>(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected invokeOnSimulateClick(Ljava/lang/String;I)V
    .registers 5

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mExecutionHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$6;-><init>(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method protected invokeParentalClick()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mExecutionHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$8;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$8;-><init>(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected invokeSetDeviceOrientation(I)V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mInFocusActivityContext:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mInFocusActivityContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mExecutionHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$17;

    invoke-direct {v1, p0, p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$17;-><init>(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1e
    return-void
.end method

.method public invokeUrl(Ljava/lang/String;Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$BannerInvokeUrlInterface;)V
    .registers 4

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mBannerInvokeUrlInterface:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$BannerInvokeUrlInterface;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "javascript:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->invokeJSfunction(Ljava/lang/String;)V

    return-void
.end method

.method public isShowClose()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mIsShowClose:Z

    return v0
.end method

.method public loadBanner(Lorg/json/JSONObject;Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$BannerLoadJSInterface;)V
    .registers 4

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mBannerLoadJSInterface:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$BannerLoadJSInterface;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "javascript:loadBanner("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->invokeJSfunction(Ljava/lang/String;)V

    return-void
.end method

.method public loadContent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:loadContent(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\',\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->invokeJSfunction(Ljava/lang/String;)V

    return-void
.end method

.method public loadHtml(Ljava/lang/String;)V
    .registers 9

    const-string v0, "?"

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->setBlockClick(Z)V

    :try_start_6
    invoke-static {}, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;->getInstance()Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;->hasCache(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_63

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p1, v2}, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;->addCacheAsync(Ljava/lang/String;Ljava/lang/String;Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory$CacheWebViewFactoryCallBack;)V

    const-string v1, ""

    iput-object v1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mLastOverloadUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mHtmlPageUrl:Ljava/lang/String;

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/TestUtils;->isMultiEnv()Z

    move-result v1

    if-nez v1, :cond_29

    const-string v1, "http://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    return-void

    :cond_29
    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mHtmlPageUrl:Ljava/lang/String;

    if-eqz v1, :cond_80

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mHtmlPageUrl:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_5b

    :cond_4b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_5b
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView;

    if-eqz v0, :cond_80

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_80

    :cond_63
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView;

    if-eqz v0, :cond_80

    invoke-virtual {v1, p1}, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;->getCache(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/cache/WebViewData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kidoz/sdk/api/general/cache/WebViewData;->getWebUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1}, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;->getCache(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/cache/WebViewData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/cache/WebViewData;->getWebViewContent()Ljava/lang/String;

    move-result-object v3

    const-string v4, "text/html"

    const-string v5, "utf-8"

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_80} :catch_80

    :catch_80
    :cond_80
    :goto_80
    return-void
.end method

.method public notifyAdFailedToLoad(ILjava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->onAdFailedToLoad(ILjava/lang/String;)V

    return-void
.end method

.method public notifyAdFailedToStart(ILjava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mBannerShowJSInterface:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$BannerShowJSInterface;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mExecutionHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/html_view/c;

    invoke-direct {v1, p0, p1, p2}, Lcom/kidoz/sdk/api/ui_views/html_view/c;-><init>(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_20

    :cond_f
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xc

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_20
    return-void
.end method

.method public notifyAdImpression()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mBannerShowJSInterface:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$BannerShowJSInterface;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mExecutionHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/html_view/a;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/html_view/a;-><init>(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_16

    :cond_f
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mEventHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_16
    return-void
.end method

.method public notifyAdLoaded(Z)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mBannerLoadJSInterface:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$BannerLoadJSInterface;

    if-nez v0, :cond_13

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1d

    :cond_13
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mExecutionHandler:Landroid/os/Handler;

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$21;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$21;-><init>(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1d
    return-void
.end method

.method public notifyAdStarted()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mBannerShowJSInterface:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$BannerShowJSInterface;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mExecutionHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/html_view/b;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/html_view/b;-><init>(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_16

    :cond_f
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mEventHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_16
    return-void
.end method

.method public onAdStateChanged(I)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "HtmlViewWrapper ********************************** onAttachedToWindow"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "HtmlViewWrapper ********************************** onDetachedFromWindow"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onDone()V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->onGetDonePlayback()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_1f

    :catch_4
    move-exception v0

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HtmlViewWrapper | onStoreLocalParameter | error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f
    return-void
.end method

.method protected onForwardToGooglePlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 18

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/TestUtils;->isMultiEnv()Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "http://"

    move-object v5, p3

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    :cond_10
    move-object v5, p3

    :cond_11
    move-object v0, p0

    iget-object v9, v0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mExecutionHandler:Landroid/os/Handler;

    new-instance v10, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$16;

    move-object v1, v10

    move-object v2, p0

    move-object/from16 v3, p6

    move-object v4, p2

    move-object v5, p3

    move-object v6, p1

    move-object v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$16;-><init>(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onGetLocalParam(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mWidgetType:Ljava/lang/String;

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mHtmlPageUrl:Ljava/lang/String;

    invoke-static {v0, v1, v2, p2}, Lcom/kidoz/sdk/api/general/utils/SdkCookieManager;->loadData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_f

    goto :goto_11

    :cond_f
    const-string p1, "kidozReturnedValue"

    :goto_11
    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mEventHandler:Landroid/os/Handler;

    new-instance v2, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$13;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$13;-><init>(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onHandleLocalUiThreadedEvents(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_a6

    :pswitch_5
    goto/16 :goto_a5

    :pswitch_7
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mHtmlWeViewListener:Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;->onAdImpression()V

    goto/16 :goto_a5

    :pswitch_e
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mHtmlWeViewListener:Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;

    if-eqz v0, :cond_1b

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;->onAdFailedToStart(ILjava/lang/String;)V

    :cond_1b
    invoke-virtual {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->clearCache()V

    goto/16 :goto_a5

    :pswitch_20
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mHtmlWeViewListener:Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;->onAdStarted()V

    goto/16 :goto_a5

    :pswitch_27
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mHtmlWeViewListener:Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;

    if-eqz p1, :cond_a5

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;->onViewReady2()V

    goto/16 :goto_a5

    :pswitch_30
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mHtmlWeViewListener:Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;

    if-eqz v0, :cond_a5

    new-instance v1, Lcom/kidoz/sdk/api/general/KidozError;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Lcom/kidoz/sdk/api/general/KidozError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;->onAdFailedToLoad(Lcom/kidoz/sdk/api/general/KidozError;)V

    goto/16 :goto_a5

    :pswitch_44
    :try_start_44
    invoke-static {}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$AdState;->values()[Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$AdState;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mAdState:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$AdState;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4e} :catch_4f

    goto :goto_50

    :catch_4f
    nop

    :goto_50
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mHtmlWeViewListener:Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;

    if-eqz p1, :cond_a5

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mAdState:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$AdState;

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;->onAdStateChanged(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$AdState;)V

    goto :goto_a5

    :pswitch_5a
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mHtmlWeViewListener:Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;

    if-eqz p1, :cond_a5

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;->onRewarded()V

    goto :goto_a5

    :pswitch_62
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mHtmlWeViewListener:Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;

    if-eqz v0, :cond_a5

    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_6c

    goto :goto_6d

    :cond_6c
    const/4 v1, 0x0

    :goto_6d
    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;->onAdLoaded(Z)V

    goto :goto_a5

    :pswitch_71
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mHtmlWeViewListener:Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;

    if-eqz p1, :cond_a5

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;->onErrorReceived()V

    goto :goto_a5

    :pswitch_79
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mHtmlWeViewListener:Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;

    if-eqz p1, :cond_80

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;->onClose()V

    :cond_80
    invoke-virtual {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->clearCache()V

    goto :goto_a5

    :pswitch_84
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mHtmlWeViewListener:Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;

    if-eqz p1, :cond_a5

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;->onViewReady()V

    goto :goto_a5

    :pswitch_8c
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mHtmlWeViewListener:Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;

    if-eqz p1, :cond_a5

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;->onHtmlStartLoading()V

    goto :goto_a5

    :pswitch_94
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mHtmlWeViewListener:Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;

    if-eqz p1, :cond_9b

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;->onHtmlFinishedLoading()V

    :cond_9b
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mSdkInitListener:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$IOnInitFinishedListener;

    if-eqz p1, :cond_a5

    invoke-interface {p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$IOnInitFinishedListener;->onInitFinished()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mSdkInitListener:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$IOnInitFinishedListener;

    :cond_a5
    :goto_a5
    return-void

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_94
        :pswitch_8c
        :pswitch_84
        :pswitch_79
        :pswitch_71
        :pswitch_62
        :pswitch_5a
        :pswitch_5
        :pswitch_44
        :pswitch_30
        :pswitch_27
        :pswitch_20
        :pswitch_e
        :pswitch_7
    .end packed-switch
.end method

.method public onInitWebViewWithProperties(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->invokeInitiateWebViewProperties(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_27

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInitWebViewWithProperties error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;)V

    :cond_27
    :goto_27
    return-void
.end method

.method public onInvokeAboutClick()V
    .registers 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->invokeAboutClick()V

    return-void
.end method

.method public onInvokeCloseClick()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mEventHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected onInvokeConversionServed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 18

    move-object v8, p0

    iget-object v9, v8, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mExecutionHandler:Landroid/os/Handler;

    new-instance v10, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$11;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object v5, p2

    move-object v6, p3

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$11;-><init>(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInvokeMaximize()V
    .registers 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->invokeMaximizedClick()V

    return-void
.end method

.method public onInvokeParentalClick()V
    .registers 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->invokeParentalClick()V

    return-void
.end method

.method protected onInvokeSendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    if-eqz p2, :cond_15

    if-eqz p3, :cond_15

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mExecutionHandler:Landroid/os/Handler;

    new-instance v8, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$18;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$18;-><init>(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_15
    return-void
.end method

.method public onInvokeUrlResponse(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mBannerInvokeUrlInterface:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$BannerInvokeUrlInterface;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$BannerInvokeUrlInterface;->onResponse(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method protected onRequestStoreLocalParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mExecutionHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$12;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$12;-><init>(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRewarded()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onRewardedVideoStarted()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    return-void
.end method

.method public onSendConversionEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    invoke-virtual/range {p0 .. p6}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->onInvokeConversionServed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_1f

    :catch_4
    move-exception p1

    sget-object p2, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "HtmlViewWrapper | onStoreLocalParameter | error: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f
    return-void
.end method

.method public onSendImpressionEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->invokeOnImpressionServed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_27

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_27

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onSendImpressionEvent: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;)V

    :cond_27
    :goto_27
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3eb33333    # 0.35f

    mul-float p1, p1, p2

    float-to-int p1, p1

    iget-object p2, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mLoadingProgressView:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;

    if-eqz p2, :cond_26

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p2, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mLoadingProgressView:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p2, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mLoadingProgressView:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;->setCircleWidthRelativeToSize(F)V

    :cond_26
    return-void
.end method

.method public onStoreLocalParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->onRequestStoreLocalParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_1f

    :catch_4
    move-exception p1

    sget-object p2, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HtmlViewWrapper | onStoreLocalParameter | error: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f
    return-void
.end method

.method protected onToggleLoadingState(Z)V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mLoadingProgressView:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mExecutionHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$19;

    invoke-direct {v1, p0, p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$19;-><init>(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method public onViewReady()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mEventHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onViewReady2()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mEventHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected openGooglePlayInBackground(Ljava/lang/String;)V
    .registers 10

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mInFocusActivityContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_e

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_e
    move-object v1, v0

    new-instance v2, Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-direct {v2}, Lcom/kidoz/sdk/api/structure/ContentItem;-><init>()V

    sget-object v0, Lcom/kidoz/sdk/api/general/enums/ContentType;->PROMOTED_PLAY_APPLICATION:Lcom/kidoz/sdk/api/general/enums/ContentType;

    invoke-virtual {v2, v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->setContentType(Lcom/kidoz/sdk/api/general/enums/ContentType;)V

    invoke-virtual {v2, p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->setData(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->setId(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mWidgetType:Ljava/lang/String;

    iget-object v4, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mStyleId:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->handleContentItemClick(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;IZLcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnHandleClickListener;)V

    return-void
.end method

.method protected openGooglePlayInForground(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mInFocusActivityContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_e

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_e
    new-instance v1, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$4;

    invoke-direct {v1, p0, p1, v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$4;-><init>(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->checkForParentalLock(Landroid/content/Context;Lcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnParentalLockStatusListener;)V

    return-void
.end method

.method protected openGooglePlayStore(Ljava/lang/String;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    if-eqz v0, :cond_53

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getContentType()Lcom/kidoz/sdk/api/general/enums/ContentType;

    move-result-object v0

    if-eqz v0, :cond_53

    sget-object v0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$27;->$SwitchMap$com$kidoz$sdk$api$general$enums$ContentType:[I

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getContentType()Lcom/kidoz/sdk/api/general/enums/ContentType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4f

    const/4 v2, 0x2

    if-eq v0, v2, :cond_22

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->openGooglePlayInForground(Ljava/lang/String;)V

    goto :goto_72

    :cond_22
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getJSONitem()Lorg/json/JSONArray;

    move-result-object v0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_57

    if-eqz v0, :cond_4b

    :try_start_2a
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getJSONitem()Lorg/json/JSONArray;

    move-result-object v0

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "cpi_play"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-ne v0, v1, :cond_43

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->openGooglePlayInBackground(Ljava/lang/String;)V

    goto :goto_72

    :cond_43
    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->openGooglePlayInForground(Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_46} :catch_47

    goto :goto_72

    :catch_47
    :try_start_47
    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->openGooglePlayInForground(Ljava/lang/String;)V

    goto :goto_72

    :cond_4b
    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->openGooglePlayInForground(Ljava/lang/String;)V

    goto :goto_72

    :cond_4f
    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->openGooglePlayInBackground(Ljava/lang/String;)V

    goto :goto_72

    :cond_53
    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->openGooglePlayInForground(Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_56} :catch_57

    goto :goto_72

    :catch_57
    move-exception p1

    sget-object v0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error when trying to open google start for promoted app: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_72
    return-void
.end method

.method public pauseVastAd()V
    .registers 2

    const-string v0, "javascript:pauseVastAd();"

    invoke-virtual {p0, v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->invokeJSfunction(Ljava/lang/String;)V

    return-void
.end method

.method public pauseWebView()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_7
    return-void
.end method

.method public playVideo(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mExecutionHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$24;

    invoke-direct {v1, p0, p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$24;-><init>(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reloadHtml()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mHtmlPageUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->loadHtml(Ljava/lang/String;)V

    return-void
.end method

.method public requestFocusOff()V
    .registers 3

    const-string v0, "javascript:toonsWebApi.appBackground()"

    invoke-virtual {p0, v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->invokeJSfunction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:kidozOnFocusOff(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->invokeJSfunction(Ljava/lang/String;)V

    :cond_28
    return-void
.end method

.method public requestFocusOn(Z)V
    .registers 7

    const-string v0, "javascript:toonsWebApi.appForeground()"

    invoke-virtual {p0, v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->invokeJSfunction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    if-eqz v0, :cond_62

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getJSONitem()Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_e
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\""

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1d} :catch_1d

    :catch_1d
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:kidozOnFocusOn(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v2}, Lcom/kidoz/sdk/api/structure/ContentItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mWidgetType:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getRealViewIndex()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->invokeJSfunction(Ljava/lang/String;)V

    :cond_62
    return-void
.end method

.method public requestMaximize()V
    .registers 2

    const-string v0, "javascript:kidozOnMaximize();"

    invoke-virtual {p0, v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->invokeJSfunction(Ljava/lang/String;)V

    return-void
.end method

.method public requestMinimize()V
    .registers 2

    const-string v0, "javascript:kidozOnMinimize();"

    invoke-virtual {p0, v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->invokeJSfunction(Ljava/lang/String;)V

    return-void
.end method

.method public requestVastAds(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:requestAds(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->invokeJSfunction(Ljava/lang/String;)V

    return-void
.end method

.method public requestWidgetClose(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:kidozOnWidgetClose(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->invokeJSfunction(Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method public requestWidgetOpen(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:kidozOnWidgetOpen(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->invokeJSfunction(Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method public resize(FF)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mExecutionHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$25;

    invoke-direct {v1, p0, p1, p2}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$25;-><init>(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;FF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public resumeVastAd()V
    .registers 2

    const-string v0, "javascript:resumeVastAd();"

    invoke-virtual {p0, v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->invokeJSfunction(Ljava/lang/String;)V

    return-void
.end method

.method public resumeWebView()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_7
    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-virtual/range {p0 .. p5}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->onInvokeSendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendURLEvent(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mInFocusActivityContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->getSdkApiInstance(Landroid/content/Context;)Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mInFocusActivityContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->callGetURL(Landroid/content/Context;Ljava/lang/String;Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;)V

    return-void
.end method

.method public setAllowJSResize(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mAllowJSResize:Z

    return-void
.end method

.method public setBlockClick(Z)V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->blockClick:Z

    return-void
.end method

.method public setData(Lcom/kidoz/sdk/api/structure/ContentItem;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mHtmlPageUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getExtraParameters()Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->setAndApplyExternalProperties(Lorg/json/JSONObject;)V

    return-void
.end method

.method public setDeviceOrientation(I)V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->invokeSetDeviceOrientation(I)V

    return-void
.end method

.method public setHtmlWebViewListener(Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mHtmlWeViewListener:Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;

    return-void
.end method

.method public setInFocusActivityContext(Landroid/content/Context;)V
    .registers 5

    if-eqz p1, :cond_32

    :try_start_2
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_32

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mPreviousOrientation:I

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mInFocusActivityContext:Ljava/lang/ref/SoftReference;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_17

    goto :goto_32

    :catch_17
    move-exception p1

    sget-object v0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInFocusActivityContext | exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    :goto_32
    return-void
.end method

.method protected setParentalLockState(Z)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:kidozOnParentalLockStateChanged(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->invokeJSfunction(Ljava/lang/String;)V

    return-void
.end method

.method public setSdkInitListener(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$IOnInitFinishedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mSdkInitListener:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$IOnInitFinishedListener;

    return-void
.end method

.method public setStyleID(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mStyleId:Ljava/lang/String;

    return-void
.end method

.method public setViewPagerItemClickListener(Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$ViewPagerItemClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mViewPagerItemClickListener:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$ViewPagerItemClickListener;

    return-void
.end method

.method public setWidgetType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mWidgetType:Ljava/lang/String;

    return-void
.end method

.method public showBanner(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$BannerShowJSInterface;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mBannerShowJSInterface:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$BannerShowJSInterface;

    const-string p1, "javascript:showBanner();"

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->invokeJSfunction(Ljava/lang/String;)V

    return-void
.end method

.method public showLoadingProgressView()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mLoadingProgressView:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;->startLoadingAnimation()V

    :cond_7
    return-void
.end method

.method public simulateClick(Ljava/lang/String;I)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->invokeOnSimulateClick(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_12

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_12

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;)V

    :cond_12
    :goto_12
    return-void
.end method

.method protected startAboutKidozDialog()V
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScreenSize(Landroid/content/Context;Z)I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v1, v1, v3

    float-to-int v1, v1

    const/4 v4, 0x0

    aput v1, v0, v4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScreenSize(Landroid/content/Context;Z)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v3

    float-to-int v1, v1

    aput v1, v0, v2

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mInFocusActivityContext:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_3d

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3d

    new-instance v1, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mInFocusActivityContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;-><init>(Landroid/content/Context;[I)V

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/general/BaseDialog;->openDialog()V

    :cond_3d
    return-void
.end method

.method public startAd()V
    .registers 2

    const-string v0, "javascript:startAd();"

    invoke-virtual {p0, v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->invokeJSfunction(Ljava/lang/String;)V

    return-void
.end method

.method protected startParentalLockDialog()V
    .registers 5

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mInFocusActivityContext:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mInFocusActivityContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$20;

    invoke-direct {v2, p0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$20;-><init>(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)V

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v0, v1, v3, v3, v2}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->startParentalDialog(Landroid/content/Context;ZFFLcom/kidoz/sdk/api/dialogs/ParentalLockDialog$IOnParentalDialogListener;)Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->updateLockIcon()V

    :cond_20
    return-void
.end method

.method public startVastAd()V
    .registers 2

    const-string v0, "javascript:startVastAd();"

    invoke-virtual {p0, v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->invokeJSfunction(Ljava/lang/String;)V

    return-void
.end method

.method public stopAd()V
    .registers 2

    const-string v0, "javascript:stopAd();"

    invoke-virtual {p0, v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->invokeJSfunction(Ljava/lang/String;)V

    return-void
.end method

.method public stopAndReleaseWebView()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView;->stopAndReleaseWebView()V

    :cond_7
    return-void
.end method

.method public stopVastAd()V
    .registers 2

    const-string v0, "javascript:stopVastAd();"

    invoke-virtual {p0, v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->invokeJSfunction(Ljava/lang/String;)V

    return-void
.end method

.method public toggleLoadingState(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->onToggleLoadingState(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_23

    :catch_8
    move-exception p1

    sget-object v0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error when trying to parse isLoading parameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_23
    return-void
.end method

.method public toggleWidgetState(Z)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mEventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$23;

    invoke-direct {v1, p0, p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$23;-><init>(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;Z)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected updateLockIcon()V
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->isParentalLockActive(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    invoke-virtual {p0, v1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->setParentalLockState(Z)V

    goto :goto_2f

    :cond_f
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->setParentalLockState(Z)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_2f

    :catch_14
    move-exception v0

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->TAG:Ljava/lang/String;

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

    :goto_2f
    return-void
.end method
