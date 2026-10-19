###### Class com.kidoz.sdk.api.ads.banner.KidozBannerPresenter (com.kidoz.sdk.api.ads.banner.KidozBannerPresenter)
.class public Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;
.super Ljava/lang/Object;
.source "KidozBannerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;,
        Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$BannerStyleListener;
    }
.end annotation


# static fields
.field private static final BANNER_LOAD_FAILED_EMPTY_URL:Ljava/lang/String; = "Kidoz cannot load banner content. Configuration url is empty."

.field private static final BANNER_LOAD_FAILED_STYLE_ERROR:Ljava/lang/String; = "Kidoz cannot load banner content. Style parsing failed."

.field private static final SDK_NOT_INIT:Ljava/lang/String; = "SDK not initialized"

.field public static final TAG:Ljava/lang/String; = "KidozBannerPresenter"

.field private static final VIEW_ALREADY_LOADED:Ljava/lang/String; = "Kidoz banner already loaded, no need to load again."

.field private static final VIEW_ALREADY_LOADING:Ljava/lang/String; = "Kidoz banner already loading, please wait."

.field private static final VIEW_ALREADY_SHOWING:Ljava/lang/String; = "Kidoz banner is already showing"

.field private static final VIEW_INIT_FAILED:Ljava/lang/String; = "Banner init timeout"

.field private static final VIEW_IN_ERROR_STATE_CANNOT_SHOW:Ljava/lang/String; = "Cannot show banner, banner is in ERROR state."

.field private static final VIEW_NOTHING_TO_HIDE:Ljava/lang/String; = "Kidoz banner not shown, there is nothing to hide."

.field private static final VIEW_NOT_LOADED_PLEASE_LOAD:Ljava/lang/String; = "Kidoz banner not loaded, please load before showing."

.field private static final VIEW_STILL_LOADING_PLEASE_WAIT:Ljava/lang/String; = "Kidoz banner is still loading, please wait for load to finish."


# instance fields
.field private mBannerHtmlUrl:Ljava/lang/String;

.field private mDidGetOnViewReady:Z

.field mHandler:Landroid/os/Handler;

.field private mHtmlWebViewListener:Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;

.field private mKidozBannerListener:Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;

.field private mKidozBannerView:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

.field private mProperties:Lorg/json/JSONObject;

.field private mViewState:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;


# direct methods
.method public constructor <init>(Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;->CLOSED:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    iput-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->mViewState:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    iput-object p1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->mKidozBannerView:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->mDidGetOnViewReady:Z

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;)V
    .registers 1

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->extractParamsFromConfig()V

    return-void
.end method

.method static synthetic access$100(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->mBannerHtmlUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->mViewState:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    return-object p1
.end method

.method static synthetic access$300(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->mKidozBannerView:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;)Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->mKidozBannerListener:Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->mDidGetOnViewReady:Z

    return p0
.end method

.method static synthetic access$502(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->mDidGetOnViewReady:Z

    return p1
.end method

.method static synthetic access$600(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->internalLoad(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)V

    return-void
.end method

.method static synthetic access$700(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->waitForViewReady(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;I)V

    return-void
.end method

.method private extractParamsFromConfig()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->mProperties:Lorg/json/JSONObject;

    if-eqz v0, :cond_c

    const-string v1, "html_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->mBannerHtmlUrl:Ljava/lang/String;

    :cond_c
    return-void
.end method

.method private internalLoad(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)V
    .registers 4

    sget-object v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;->LOADING:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    iput-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->mViewState:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "internalLoad() | calling html.loadBanner, mProperties = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->mProperties:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KidozBannerPresenter"

    invoke-static {v1, v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->mProperties:Lorg/json/JSONObject;

    new-instance v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$4;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$4;-><init>(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;)V

    invoke-virtual {p1, v0, v1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->loadBanner(Lorg/json/JSONObject;Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$BannerLoadJSInterface;)V

    return-void
.end method

.method private isSDKConfigRelevantParsingDone()Z
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->mProperties:Lorg/json/JSONObject;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private validateAndLoadAssets(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$BannerStyleListener;)V
    .registers 4

    const-string v0, "KidozBannerPresenter"

    const-string v1, "validateAndLoadAssets() | start"

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;->getInstance()Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;->loadProperties(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->mProperties:Lorg/json/JSONObject;

    if-eqz v1, :cond_1e

    if-eqz p1, :cond_28

    const-string v1, "validateAndLoadAssets() | parse success"

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$BannerStyleListener;->onStyleSuccess()V

    goto :goto_28

    :cond_1e
    const-string v1, "validateAndLoadAssets() | parse failed"

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_28

    invoke-interface {p1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$BannerStyleListener;->onStyleError()V

    :cond_28
    :goto_28
    return-void
.end method

.method private validateSDKAndStartBannerWebLogic()V
    .registers 2

    new-instance v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$1;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$1;-><init>(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;)V

    invoke-direct {p0, v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->validateAndLoadAssets(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$BannerStyleListener;)V

    return-void
.end method

.method private waitForViewReady(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;I)V
    .registers 5

    if-lez p2, :cond_f

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$2;-><init>(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;I)V

    const-wide/16 p1, 0x3e8

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1d

    :cond_f
    iget-object p1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->mKidozBannerListener:Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;

    new-instance p2, Lcom/kidoz/sdk/api/general/KidozError;

    const/16 v0, 0x28a0

    const-string v1, "Banner init timeout"

    invoke-direct {p2, v0, v1}, Lcom/kidoz/sdk/api/general/KidozError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;->onBannerError(Lcom/kidoz/sdk/api/general/KidozError;)V

    :goto_1d
    return-void
.end method


# virtual methods
.method public developerCalledHide(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)V
    .registers 4

    invoke-static {}, Lcom/kidoz/sdk/api/KidozSDK;->isInitialised()Z

    move-result v0

    if-nez v0, :cond_c

    const-string p1, "SDK not initialized"

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;)V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->mViewState:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;->SHOWING:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    if-eq v0, v1, :cond_18

    const-string p1, "Kidoz banner not shown, there is nothing to hide."

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;)V

    return-void

    :cond_18
    sget-object v0, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_BANNER:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/general/enums/WidgetType;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->requestWidgetClose(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->hideBanner()V

    return-void
.end method

.method public getBannerListener()Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->mKidozBannerListener:Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;

    return-object v0
.end method

.method public getHtmlWebViewInterface()Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->mHtmlWebViewListener:Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;

    if-nez v0, :cond_b

    new-instance v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$5;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$5;-><init>(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->mHtmlWebViewListener:Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;

    :cond_b
    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->mHtmlWebViewListener:Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;

    return-object v0
.end method

.method public init()V
    .registers 2

    sget-object v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;->CLOSED:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    iput-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->mViewState:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    const-string v0, "KidozBannerPresenter | banner init()"

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/kidoz/sdk/api/KidozSDK;->isInitialised()Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "KidozBannerPresenter | sdk not init yet, registering event."

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->i(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->o(Ljava/lang/Object;)V

    :cond_25
    return-void

    :cond_26
    invoke-direct {p0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->validateSDKAndStartBannerWebLogic()V

    return-void
.end method

.method public isShowing()Z
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->mViewState:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;->SHOWING:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public load(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)V
    .registers 5

    invoke-static {}, Lcom/kidoz/sdk/api/KidozSDK;->isInitialised()Z

    move-result v0

    const/16 v1, 0x28a0

    if-nez v0, :cond_1a

    const-string p1, "SDK not initialized"

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->mKidozBannerListener:Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;

    if-eqz v0, :cond_19

    new-instance v2, Lcom/kidoz/sdk/api/general/KidozError;

    invoke-direct {v2, v1, p1}, Lcom/kidoz/sdk/api/general/KidozError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;->onBannerError(Lcom/kidoz/sdk/api/general/KidozError;)V

    :cond_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->mViewState:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    sget-object v2, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;->SHOWING:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    if-ne v0, v2, :cond_32

    const-string p1, "Kidoz banner is already showing"

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->mKidozBannerListener:Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;

    if-eqz v0, :cond_31

    new-instance v2, Lcom/kidoz/sdk/api/general/KidozError;

    invoke-direct {v2, v1, p1}, Lcom/kidoz/sdk/api/general/KidozError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;->onBannerError(Lcom/kidoz/sdk/api/general/KidozError;)V

    :cond_31
    return-void

    :cond_32
    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;->LOADING:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    if-ne v0, v1, :cond_3c

    const-string p1, "Kidoz banner already loading, please wait."

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;)V

    return-void

    :cond_3c
    const-string v0, "KidozBannerPresenter | Load 6"

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->mViewState:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;->LOADED:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    if-ne v0, v1, :cond_54

    const-string p1, "Kidoz banner already loaded, no need to load again."

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->mKidozBannerListener:Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;

    if-eqz p1, :cond_53

    invoke-interface {p1}, Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;->onBannerReady()V

    :cond_53
    return-void

    :cond_54
    iget-boolean v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->mDidGetOnViewReady:Z

    if-eqz v0, :cond_5c

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->internalLoad(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)V

    goto :goto_61

    :cond_5c
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->waitForViewReady(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;I)V

    :goto_61
    return-void
.end method

.method protected notifyBannerImpression()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->mKidozBannerListener:Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;->onBannerImpression()V

    :cond_7
    return-void
.end method

.method protected notifyBannerShowFailed(ILjava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->mKidozBannerListener:Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;

    if-eqz v0, :cond_23

    new-instance v1, Lcom/kidoz/sdk/api/general/KidozError;

    invoke-direct {v1, p1, p2}, Lcom/kidoz/sdk/api/general/KidozError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;->onBannerShowFailed(Lcom/kidoz/sdk/api/general/KidozError;)V

    :cond_23
    return-void
.end method

.method protected notifyBannerShown()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->mKidozBannerListener:Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;->onBannerShowSuccess()V

    :cond_7
    return-void
.end method

.method public onHandleEvent(Lcom/kidoz/sdk/api/general/EventMessage;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/k;
    .end annotation

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/EventMessage;->getMessageType()Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    move-result-object p1

    sget-object v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->INIT_SDK:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    if-ne p1, v0, :cond_21

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->i(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->q(Ljava/lang/Object;)V

    :cond_19
    const-string p1, "KidozBanner | Kidoz wasn\'t init when presenter was built. calling init() from eventbus after sdk init"

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->init()V

    :cond_21
    return-void
.end method

.method public setBannerListener(Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->mKidozBannerListener:Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;

    return-void
.end method

.method public show(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)V
    .registers 5

    invoke-static {}, Lcom/kidoz/sdk/api/KidozSDK;->isInitialised()Z

    move-result v0

    const/16 v1, 0x2904

    if-nez v0, :cond_1a

    const-string p1, "SDK not initialized"

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->mKidozBannerListener:Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;

    if-eqz v0, :cond_19

    new-instance v2, Lcom/kidoz/sdk/api/general/KidozError;

    invoke-direct {v2, v1, p1}, Lcom/kidoz/sdk/api/general/KidozError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;->onBannerShowFailed(Lcom/kidoz/sdk/api/general/KidozError;)V

    :cond_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->mViewState:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    sget-object v2, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;->ERROR:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    if-ne v0, v2, :cond_32

    const-string p1, "Cannot show banner, banner is in ERROR state."

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->mKidozBannerListener:Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;

    if-eqz v0, :cond_31

    new-instance v2, Lcom/kidoz/sdk/api/general/KidozError;

    invoke-direct {v2, v1, p1}, Lcom/kidoz/sdk/api/general/KidozError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;->onBannerShowFailed(Lcom/kidoz/sdk/api/general/KidozError;)V

    :cond_31
    return-void

    :cond_32
    sget-object v2, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;->CLOSED:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    if-ne v0, v2, :cond_48

    const-string p1, "Kidoz banner not loaded, please load before showing."

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->mKidozBannerListener:Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;

    if-eqz v0, :cond_47

    new-instance v2, Lcom/kidoz/sdk/api/general/KidozError;

    invoke-direct {v2, v1, p1}, Lcom/kidoz/sdk/api/general/KidozError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;->onBannerShowFailed(Lcom/kidoz/sdk/api/general/KidozError;)V

    :cond_47
    return-void

    :cond_48
    sget-object v2, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;->LOADING:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    if-ne v0, v2, :cond_5c

    const-string p1, "Kidoz banner is still loading, please wait for load to finish."

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->mKidozBannerListener:Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;

    new-instance v2, Lcom/kidoz/sdk/api/general/KidozError;

    invoke-direct {v2, v1, p1}, Lcom/kidoz/sdk/api/general/KidozError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;->onBannerShowFailed(Lcom/kidoz/sdk/api/general/KidozError;)V

    return-void

    :cond_5c
    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;->SHOWING:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    if-ne v0, v1, :cond_66

    const-string p1, "Kidoz banner is already showing"

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;)V

    return-void

    :cond_66
    new-instance v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$3;

    invoke-direct {v0, p0, p1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$3;-><init>(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)V

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->showBanner(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$BannerShowJSInterface;)V

    return-void
.end method

###### Class com.kidoz.sdk.api.ads.banner.KidozBannerPresenter.AnonymousClass1 (com.kidoz.sdk.api.ads.banner.KidozBannerPresenter$1)
.class Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$1;
.super Ljava/lang/Object;
.source "KidozBannerPresenter.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$BannerStyleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->validateSDKAndStartBannerWebLogic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$1;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private startBannerWebLogic()V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$1;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->access$100(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "view.load("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KidozBannerPresenter"

    invoke-static {v2, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$1;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    invoke-static {v1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->access$300(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->startBannerWebLogic(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onStyleError()V
    .registers 5

    const-string v0, "Kidoz cannot load banner content. Style parsing failed."

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$1;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    sget-object v2, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;->ERROR:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->access$202(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$1;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    invoke-static {v1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->access$400(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;)Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;

    move-result-object v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$1;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    invoke-static {v1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->access$400(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;)Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;

    move-result-object v1

    new-instance v2, Lcom/kidoz/sdk/api/general/KidozError;

    const/16 v3, 0x28a0

    invoke-direct {v2, v3, v0}, Lcom/kidoz/sdk/api/general/KidozError;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;->onBannerError(Lcom/kidoz/sdk/api/general/KidozError;)V

    :cond_24
    return-void
.end method

.method public onStyleSuccess()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$1;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->access$000(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$1;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->access$100(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "Kidoz cannot load banner content. Configuration url is empty."

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$1;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;->ERROR:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->access$202(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    return-void

    :cond_1e
    invoke-direct {p0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$1;->startBannerWebLogic()V

    return-void
.end method

###### Class com.kidoz.sdk.api.ads.banner.KidozBannerPresenter.AnonymousClass2 (com.kidoz.sdk.api.ads.banner.KidozBannerPresenter$2)
.class Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$2;
.super Ljava/lang/Object;
.source "KidozBannerPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->waitForViewReady(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

.field final synthetic val$htmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

.field final synthetic val$numOfRetries:I


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;I)V
    .registers 4

    iput-object p1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$2;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    iput-object p2, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$2;->val$htmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    iput p3, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$2;->val$numOfRetries:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$2;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->access$500(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$2;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$2;->val$htmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->access$600(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)V

    goto :goto_1b

    :cond_10
    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$2;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$2;->val$htmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    iget v2, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$2;->val$numOfRetries:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->access$700(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;I)V

    :goto_1b
    return-void
.end method

###### Class com.kidoz.sdk.api.ads.banner.KidozBannerPresenter.AnonymousClass3 (com.kidoz.sdk.api.ads.banner.KidozBannerPresenter$3)
.class Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$3;
.super Ljava/lang/Object;
.source "KidozBannerPresenter.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$BannerShowJSInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->show(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

.field final synthetic val$htmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$3;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    iput-object p2, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$3;->val$htmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KidozBannerPresenter | Show onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$3;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;->ERROR:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->access$202(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$3;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->notifyBannerShowFailed(ILjava/lang/String;)V

    return-void
.end method

.method public onImpression()V
    .registers 2

    const-string v0, "KidozBannerPresenter | Show onImpression()"

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$3;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->notifyBannerImpression()V

    return-void
.end method

.method public onSuccess()V
    .registers 3

    const-string v0, "KidozBannerPresenter | Show onSuccess()"

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$3;->val$htmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_BANNER:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/general/enums/WidgetType;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->requestWidgetOpen(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$3;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;->SHOWING:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->access$202(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$3;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->access$300(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->nativeShow()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$3;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->notifyBannerShown()V

    return-void
.end method

###### Class com.kidoz.sdk.api.ads.banner.KidozBannerPresenter.AnonymousClass4 (com.kidoz.sdk.api.ads.banner.KidozBannerPresenter$4)
.class Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$4;
.super Ljava/lang/Object;
.source "KidozBannerPresenter.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$BannerLoadJSInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->internalLoad(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$4;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/kidoz/sdk/api/general/KidozError;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "internalLoad() | error: = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KidozBannerPresenter"

    invoke-static {v1, v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$4;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;->ERROR:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->access$202(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$4;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->access$400(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;)Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$4;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->access$400(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;)Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;->onBannerError(Lcom/kidoz/sdk/api/general/KidozError;)V

    :cond_2e
    return-void
.end method

.method public onSuccess()V
    .registers 3

    const-string v0, "KidozBannerPresenter"

    const-string v1, "internalLoad() | onSuccess()"

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$4;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;->LOADED:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->access$202(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$4;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->access$400(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;)Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$4;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->access$400(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;)Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;->onBannerReady()V

    :cond_1f
    return-void
.end method

###### Class com.kidoz.sdk.api.ads.banner.KidozBannerPresenter.AnonymousClass5 (com.kidoz.sdk.api.ads.banner.KidozBannerPresenter$5)
.class Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$5;
.super Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;
.source "KidozBannerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->getHtmlWebViewInterface()Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$5;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .registers 3

    invoke-super {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;->onClose()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$5;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;->CLOSED:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->access$202(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$5;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->access$300(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->hideInternal()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$5;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->access$400(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;)Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$5;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->access$400(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;)Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;->onBannerClose()V

    :cond_24
    return-void
.end method

.method public onErrorReceived()V
    .registers 5

    invoke-super {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;->onErrorReceived()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$5;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;->ERROR:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->access$202(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$5;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->access$400(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;)Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$5;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->access$400(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;)Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;

    move-result-object v0

    new-instance v1, Lcom/kidoz/sdk/api/general/KidozError;

    const/16 v2, 0x28a0

    const-string v3, "Error received"

    invoke-direct {v1, v2, v3}, Lcom/kidoz/sdk/api/general/KidozError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;->onBannerError(Lcom/kidoz/sdk/api/general/KidozError;)V

    :cond_24
    const-string v0, "KidozBanner | IOnHtmlWebViewInterface | onErrorReceived()"

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;)V

    return-void
.end method

.method public onHtmlFinishedLoading()V
    .registers 2

    invoke-super {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;->onHtmlFinishedLoading()V

    const-string v0, "KidozBanner | IOnHtmlWebViewInterface | onHtmlFinishedLoading()"

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;)V

    return-void
.end method

.method public onViewReady()V
    .registers 3

    invoke-super {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;->onViewReady()V

    const-string v0, "KidozBanner | IOnHtmlWebViewInterface | onViewReady()"

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$5;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->access$502(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;Z)Z

    return-void
.end method

###### Class com.kidoz.sdk.api.ads.banner.KidozBannerPresenter.BannerStyleListener (com.kidoz.sdk.api.ads.banner.KidozBannerPresenter$BannerStyleListener)
.class interface abstract Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$BannerStyleListener;
.super Ljava/lang/Object;
.source "KidozBannerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "BannerStyleListener"
.end annotation


# virtual methods
.method public abstract onStyleError()V
.end method

.method public abstract onStyleSuccess()V
.end method

###### Class com.kidoz.sdk.api.ads.banner.KidozBannerPresenter.VIEW_STATE (com.kidoz.sdk.api.ads.banner.KidozBannerPresenter$VIEW_STATE)
.class public final enum Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;
.super Ljava/lang/Enum;
.source "KidozBannerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VIEW_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

.field public static final enum CLOSED:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

.field public static final enum ERROR:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

.field public static final enum HIDDEN:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

.field public static final enum LOADED:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

.field public static final enum LOADING:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

.field public static final enum SHOWING:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;


# direct methods
.method private static synthetic $values()[Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;
    .registers 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;->LOADING:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;->LOADED:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;->SHOWING:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;->CLOSED:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;->ERROR:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;->HIDDEN:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    const-string v1, "LOADING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;->LOADING:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    new-instance v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    const-string v1, "LOADED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;->LOADED:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    new-instance v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    const-string v1, "SHOWING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;->SHOWING:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    new-instance v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    const-string v1, "CLOSED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;->CLOSED:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    new-instance v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    const-string v1, "ERROR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;->ERROR:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    new-instance v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    const-string v1, "HIDDEN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;->HIDDEN:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    invoke-static {}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;->$values()[Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    move-result-object v0

    sput-object v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;->$VALUES:[Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;
    .registers 2

    const-class v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    return-object p0
.end method

.method public static values()[Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;
    .registers 1

    sget-object v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;->$VALUES:[Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    invoke-virtual {v0}, [Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    return-object v0
.end method
