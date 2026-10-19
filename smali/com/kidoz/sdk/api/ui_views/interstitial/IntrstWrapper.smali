###### Class com.kidoz.sdk.api.ui_views.interstitial.IntrstWrapper (com.kidoz.sdk.api.ui_views.interstitial.IntrstWrapper)
.class public Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;
.super Ljava/lang/Object;
.source "IntrstWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;,
        Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$InnerHelperInterface;,
        Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;
    }
.end annotation


# static fields
.field protected static final REQUEST_FILTER_TIMEOUT:I = 0x1388

.field protected static mInstance:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;


# instance fields
.field private MAX_TIME_TO_BLOCK:I

.field private error:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;

.field private lastTryRequestTimeStamp:J

.field protected mActivity:Landroid/app/Activity;

.field protected mAdRequestType:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

.field protected mBackButtonDisabled:Z

.field protected mContentData:Lcom/kidoz/sdk/api/structure/ContentData;

.field private mContentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kidoz/sdk/api/structure/ContentItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mContentLogicLoader:Lcom/kidoz/sdk/api/general/ContentLogicLoader;

.field private mCurrentIndex:I

.field protected mInnerHelperInterface:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$InnerHelperInterface;

.field private final mInstanceId:Ljava/lang/String;

.field protected mIsInitializationFinished:Z

.field protected mIsLoadRequested:Z

.field protected mIsLoadRequestedWhileNotReady:Z

.field protected mIsLoaded:Z

.field private mIsLocal:Z

.field protected mIsShowRequested:Z

.field protected mLaunchLock:Ljava/util/concurrent/locks/Lock;

.field protected mLoadRequestTM:J

.field protected mProperties:Lorg/json/JSONObject;

.field protected mStyleId:Ljava/lang/String;

.field private mUniquePlacementHelper:Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper;

.field private mViewState:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;

.field private omSessionAdapter:Lcom/kidoz/sdk/omid/c;

.field protected raceConditionLock:Ljava/util/concurrent/locks/Lock;

.field private requestTryNum:J

.field private uniquePlacementId:Ljava/lang/String;

.field protected webView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mContentList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mIsInitializationFinished:Z

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mIsLoaded:Z

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mIsShowRequested:Z

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mIsLoadRequested:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mLoadRequestTM:J

    sget-object v3, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;->INTERSTITIAL:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    iput-object v3, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mAdRequestType:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    new-instance v3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v3, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->raceConditionLock:Ljava/util/concurrent/locks/Lock;

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mIsLocal:Z

    const/16 v0, 0x1e

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->MAX_TIME_TO_BLOCK:I

    iput-wide v1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->lastTryRequestTimeStamp:J

    iput-wide v1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->requestTryNum:J

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->setStateClosed()V

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mInstanceId:Ljava/lang/String;

    new-instance p1, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper;

    invoke-direct {p1}, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper;-><init>()V

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mUniquePlacementHelper:Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->uniquePlacementId:Ljava/lang/String;

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mUniquePlacementHelper:Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper;

    new-instance p2, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$2;

    invoke-direct {p2, p0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$2;-><init>(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)V

    invoke-virtual {p1, p2}, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper;->setInternalInterstitialListener(Lcom/kidoz/sdk/api/general/UniquePlacement/UniqueInterstitialListener;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->i(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5b

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->o(Ljava/lang/Object;)V

    :cond_5b
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mLaunchLock:Ljava/util/concurrent/locks/Lock;

    invoke-static {}, Lcom/kidoz/sdk/api/KidozSDK;->isInitialised()Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_6c

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->validateLayoutAndAssets()V

    :cond_6c
    new-instance p1, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$3;

    invoke-direct {p1, p0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$3;-><init>(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)V

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mInnerHelperInterface:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$InnerHelperInterface;

    new-instance p1, Lcom/kidoz/sdk/api/general/ContentLogicLoader;

    new-instance p2, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$4;

    invoke-direct {p2, p0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$4;-><init>(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)V

    invoke-direct {p1, p2}, Lcom/kidoz/sdk/api/general/ContentLogicLoader;-><init>(Lcom/kidoz/sdk/api/general/ContentLogicLoader$IOnContentDataReadyCallback;)V

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mContentLogicLoader:Lcom/kidoz/sdk/api/general/ContentLogicLoader;

    return-void
.end method

.method static synthetic access$000(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;Lcom/kidoz/sdk/api/general/EventMessage$MessageType;Lcom/kidoz/sdk/api/general/KidozError;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->sendEventToEventBusWithError(Lcom/kidoz/sdk/api/general/EventMessage$MessageType;Lcom/kidoz/sdk/api/general/KidozError;)V

    return-void
.end method

.method static synthetic access$100(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)J
    .registers 3

    iget-wide v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->requestTryNum:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;Lcom/kidoz/sdk/api/general/KidozError;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->onLoadFailed(Lcom/kidoz/sdk/api/general/KidozError;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->setNegativeResponse(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)V
    .registers 1

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->safeStartOMSession()V

    return-void
.end method

.method static synthetic access$1300(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)V
    .registers 1

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->setStateLoaded()V

    return-void
.end method

.method static synthetic access$1400(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)V
    .registers 1

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->setPositiveResponse()V

    return-void
.end method

.method static synthetic access$1500(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)Z
    .registers 1

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->hasAnotherInterstitial()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)V
    .registers 1

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->loadNextInterstitial()V

    return-void
.end method

.method static synthetic access$1700(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->closeFullScreenAd(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)V
    .registers 1

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->safeFinishOMSession()V

    return-void
.end method

.method static synthetic access$300(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)V
    .registers 1

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->setStateClosed()V

    return-void
.end method

.method static synthetic access$400(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mIsLocal:Z

    return p0
.end method

.method static synthetic access$500(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;Lcom/kidoz/sdk/api/general/EventMessage$MessageType;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->sendEventToEventBus(Lcom/kidoz/sdk/api/general/EventMessage$MessageType;)V

    return-void
.end method

.method static synthetic access$600(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mContentList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$602(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mContentList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$700(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)I
    .registers 1

    iget p0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mCurrentIndex:I

    return p0
.end method

.method static synthetic access$702(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;I)I
    .registers 2

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$800(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;Lcom/kidoz/sdk/api/structure/ContentItem;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->getUrlFromContent(Lcom/kidoz/sdk/api/structure/ContentItem;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->prepareWebViewWithLink(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private declared-synchronized canBlockCall()Z
    .registers 12

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->getMaxThrottleTime()I

    move-result v0

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->MAX_TIME_TO_BLOCK:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_55

    const/4 v1, 0x0

    if-lez v0, :cond_53

    const-wide/16 v2, 0x0

    :try_start_c
    iget-wide v4, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->requestTryNum:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_3e

    iget-wide v4, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->lastTryRequestTimeStamp:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_19

    goto :goto_3e

    :cond_19
    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->getTimeStamp()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->lastTryRequestTimeStamp:J

    sub-long/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    iget-wide v8, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->requestTryNum:J

    long-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-long v6, v6

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->MAX_TIME_TO_BLOCK:I

    int-to-long v8, v0

    cmp-long v10, v6, v8

    if-lez v10, :cond_32

    int-to-long v6, v0

    :cond_32
    cmp-long v0, v4, v6

    if-gez v0, :cond_51

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->error:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;

    invoke-direct {p0, v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->sendErrorResponse(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3b} :catch_45
    .catchall {:try_start_c .. :try_end_3b} :catchall_55

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_3e
    :goto_3e
    :try_start_3e
    const-string v0, "not blocking waterfall"

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printWarningLog(Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_43} :catch_45
    .catchall {:try_start_3e .. :try_end_43} :catchall_55

    monitor-exit p0

    return v1

    :catch_45
    move-exception v0

    :try_start_46
    iput-wide v2, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->requestTryNum:J

    iput-wide v2, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->lastTryRequestTimeStamp:J

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printWarningLog(Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_46 .. :try_end_51} :catchall_55

    :cond_51
    monitor-exit p0

    return v1

    :cond_53
    monitor-exit p0

    return v1

    :catchall_55
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private closeFullScreenAd(Z)V
    .registers 3

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->safeFinishOMSession()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->setStateClosed()V

    sget-object v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->CLOSE_FULL_SCREEN_AD:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    invoke-direct {p0, v0, p1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->sendEventToEventBus(Lcom/kidoz/sdk/api/general/EventMessage$MessageType;Z)V

    return-void
.end method

.method private getMaxThrottleTime()I
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mActivity:Landroid/app/Activity;

    const/16 v1, 0x1e

    if-nez v0, :cond_7

    return v1

    :cond_7
    invoke-static {}, Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;->getInstance()Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;->loadAppProperties()Lcom/kidoz/sdk/api/general/utils/PropertiesObj;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->getMaxThrottleTime()I

    move-result v1

    :cond_15
    return v1
.end method

.method private getTimeStamp()J
    .registers 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getUrlFromContent(Lcom/kidoz/sdk/api/structure/ContentItem;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;->getInstance()Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;->loadAppProperties()Lcom/kidoz/sdk/api/general/utils/PropertiesObj;

    move-result-object v1

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getHTMLUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4f

    if-eqz v1, :cond_4f

    sget-object v2, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$6;->$SwitchMap$com$kidoz$sdk$api$general$enums$HtmlType:[I

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getHtmlType()Lcom/kidoz/sdk/api/general/enums/HtmlType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_49

    const/4 v2, 0x3

    if-eq p1, v2, :cond_42

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3b

    const/4 v2, 0x5

    if-eq p1, v2, :cond_34

    const/4 v2, 0x6

    if-eq p1, v2, :cond_2d

    goto :goto_4f

    :cond_2d
    const-string p1, "javascript"

    invoke-virtual {v1, p1}, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->getInterstitialDefaultLinkForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4f

    :cond_34
    const-string p1, "super_awesome"

    invoke-virtual {v1, p1}, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->getInterstitialDefaultLinkForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4f

    :cond_3b
    const-string p1, "double_click"

    invoke-virtual {v1, p1}, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->getInterstitialDefaultLinkForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4f

    :cond_42
    const-string p1, "mraid"

    invoke-virtual {v1, p1}, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->getInterstitialDefaultLinkForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4f

    :cond_49
    const-string p1, "vast"

    invoke-virtual {v1, p1}, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->getInterstitialDefaultLinkForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4f} :catch_4f

    :catch_4f
    :cond_4f
    :goto_4f
    return-object v0
.end method

.method private hasAnotherInterstitial()Z
    .registers 4

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mCurrentIndex:I

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    return v2
.end method

.method private isStateClosed()Z
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mViewState:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;->CLOSED:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;

    const-string v2, "KidozInterstitial"

    if-ne v0, v1, :cond_f

    const-string v0, "isStateClosed = true"

    invoke-static {v2, v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printWarningLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_f
    const-string v0, "isStateClosed = false"

    invoke-static {v2, v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printWarningLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private isStateLoaded()Z
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mViewState:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;->LOADED:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;

    const-string v2, "KidozInterstitial"

    if-ne v0, v1, :cond_f

    const-string v0, "isStateLoaded = true"

    invoke-static {v2, v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printWarningLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_f
    const-string v0, "isStateLoaded = false"

    invoke-static {v2, v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printWarningLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private isStateLoading()Z
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mViewState:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;->LOADING:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;

    const-string v2, "KidozInterstitial"

    if-ne v0, v1, :cond_f

    const-string v0, "isStateLoading = true"

    invoke-static {v2, v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printWarningLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_f
    const-string v0, "isStateLoading = false"

    invoke-static {v2, v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printWarningLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private isStateShowing()Z
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mViewState:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;->SHOWING:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;

    const-string v2, "KidozInterstitial"

    if-ne v0, v1, :cond_f

    const-string v0, "isStateShowing = true"

    invoke-static {v2, v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printWarningLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_f
    const-string v0, "isStateShowing = false"

    invoke-static {v2, v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printWarningLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private loadNextInterstitial()V
    .registers 3

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mCurrentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mCurrentIndex:I

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-direct {p0, v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->getUrlFromContent(Lcom/kidoz/sdk/api/structure/ContentItem;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;->getInstance()Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;->loadAppProperties()Lcom/kidoz/sdk/api/general/utils/PropertiesObj;

    move-result-object v1

    if-nez v0, :cond_22

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->getInterstitialHtmlLink()Ljava/lang/String;

    move-result-object v0

    :cond_22
    if-eqz v0, :cond_34

    invoke-direct {p0, v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->prepareWebViewWithLink(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    new-instance v0, Lcom/kidoz/sdk/api/general/KidozError;

    sget-object v1, Lcom/kidoz/sdk/api/general/KidozError$Type;->loadFailedWebViewInit:Lcom/kidoz/sdk/api/general/KidozError$Type;

    invoke-direct {v0, v1}, Lcom/kidoz/sdk/api/general/KidozError;-><init>(Lcom/kidoz/sdk/api/general/KidozError$Type;)V

    invoke-direct {p0, v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->onLoadFailed(Lcom/kidoz/sdk/api/general/KidozError;)V

    :cond_34
    return-void
.end method

.method private onLoadFailed(Lcom/kidoz/sdk/api/general/KidozError;)V
    .registers 3

    sget-object v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;->LOAD_FAILED:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;

    invoke-direct {p0, v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->setNegativeResponse(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;)V

    sget-object v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->LOAD_FAILED:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    invoke-direct {p0, v0, p1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->sendEventToEventBusWithError(Lcom/kidoz/sdk/api/general/EventMessage$MessageType;Lcom/kidoz/sdk/api/general/KidozError;)V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->setStateClosed()V

    return-void
.end method

.method private declared-synchronized prepareWebViewWithLink(Ljava/lang/String;)Z
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->webView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    if-eqz v0, :cond_9

    iget-boolean v0, v0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->webViewInitialized:Z

    if-nez v0, :cond_16

    :cond_9
    invoke-virtual {p0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->generateHtmlView()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->webView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;-><init>(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)V

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->setHtmlWebViewListener(Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;)V

    :cond_16
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mAdRequestType:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    if-eqz v0, :cond_2a

    sget-object v1, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;->REWARDED_VIDEO:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    if-ne v0, v1, :cond_2a

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->webView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_INTERSTITIAL_REWARDED:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/general/enums/WidgetType;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->setWidgetType(Ljava/lang/String;)V

    goto :goto_35

    :cond_2a
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->webView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_INTERSTITIAL:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/general/enums/WidgetType;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->setWidgetType(Ljava/lang/String;)V

    :goto_35
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->webView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->loadHtml(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->webView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    iget-boolean p1, p1, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->webViewInitialized:Z
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_40

    monitor-exit p0

    return p1

    :catchall_40
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private safeFinishOMSession()V
    .registers 3

    const-string v0, "Kidoz_OMID"

    const-string v1, "safeFinishOMSession"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->omSessionAdapter:Lcom/kidoz/sdk/omid/c;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Lcom/kidoz/sdk/omid/c;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->omSessionAdapter:Lcom/kidoz/sdk/omid/c;

    :cond_11
    return-void
.end method

.method private safeStartOMSession()V
    .registers 3

    const-string v0, "Kidoz_OMID"

    const-string v1, "safeStartOMSession"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->omSessionAdapter:Lcom/kidoz/sdk/omid/c;

    if-eqz v0, :cond_c

    return-void

    :cond_c
    sget-object v0, Lcom/kidoz/sdk/omid/b;->b:Lcom/kidoz/sdk/omid/a;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->webView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    iget-object v1, v1, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView;

    invoke-interface {v0, v1}, Lcom/kidoz/sdk/omid/a;->a(Landroid/webkit/WebView;)Lcom/kidoz/sdk/omid/c;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->omSessionAdapter:Lcom/kidoz/sdk/omid/c;

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Lcom/kidoz/sdk/omid/c;->start()V

    :cond_1d
    return-void
.end method

.method private sendErrorResponse(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;)V
    .registers 6

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$1;

    invoke-direct {v1, p0, p1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$1;-><init>(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private sendEventToEventBus(Lcom/kidoz/sdk/api/general/EventMessage$MessageType;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->sendEventToEventBus(Lcom/kidoz/sdk/api/general/EventMessage$MessageType;Z)V

    return-void
.end method

.method private sendEventToEventBus(Lcom/kidoz/sdk/api/general/EventMessage$MessageType;Z)V
    .registers 4

    new-instance v0, Lcom/kidoz/sdk/api/general/EventMessage;

    invoke-direct {v0, p1}, Lcom/kidoz/sdk/api/general/EventMessage;-><init>(Lcom/kidoz/sdk/api/general/EventMessage$MessageType;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->uniquePlacementId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/general/EventMessage;->setAdditionalParam(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/kidoz/sdk/api/general/EventMessage;->setFlag(Z)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->k(Ljava/lang/Object;)V

    return-void
.end method

.method private sendEventToEventBusWithError(Lcom/kidoz/sdk/api/general/EventMessage$MessageType;Lcom/kidoz/sdk/api/general/KidozError;)V
    .registers 4

    new-instance v0, Lcom/kidoz/sdk/api/general/EventMessage;

    invoke-direct {v0, p1}, Lcom/kidoz/sdk/api/general/EventMessage;-><init>(Lcom/kidoz/sdk/api/general/EventMessage$MessageType;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->uniquePlacementId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/general/EventMessage;->setAdditionalParam(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/kidoz/sdk/api/general/EventMessage;->setError(Lcom/kidoz/sdk/api/general/KidozError;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->k(Ljava/lang/Object;)V

    return-void
.end method

.method private declared-synchronized setNegativeResponse(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->requestTryNum:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->requestTryNum:J

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->getTimeStamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->lastTryRequestTimeStamp:J

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->error:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setPositiveResponse()V
    .registers 3

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_3
    iput-wide v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->requestTryNum:J

    iput-wide v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->lastTryRequestTimeStamp:J
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setStateClosed()V
    .registers 3

    const-string v0, "KidozInterstitial"

    const-string v1, "setStateClosed"

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printWarningLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;->CLOSED:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mViewState:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;

    return-void
.end method

.method private setStateLoaded()V
    .registers 3

    const-string v0, "KidozInterstitial"

    const-string v1, "setStateLoaded"

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printWarningLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;->LOADED:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mViewState:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;

    return-void
.end method

.method private setStateLoading()V
    .registers 3

    const-string v0, "KidozInterstitial"

    const-string v1, "setStateLoading"

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printWarningLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;->LOADING:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mViewState:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;

    return-void
.end method

.method private setStateShowing()V
    .registers 3

    const-string v0, "KidozInterstitial"

    const-string v1, "setStateShowing"

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printWarningLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;->SHOWING:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mViewState:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;

    return-void
.end method

.method private validateLayoutAndAssets()V
    .registers 3

    invoke-static {}, Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;->getInstance()Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;

    move-result-object v0

    sget-object v1, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;->loadProperties(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mProperties:Lorg/json/JSONObject;

    if-eqz v0, :cond_17

    const-string v1, "style_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mStyleId:Ljava/lang/String;

    goto :goto_21

    :cond_17
    sget-object v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;->LOAD_FAILED:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;

    invoke-direct {p0, v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->setNegativeResponse(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;)V

    sget-object v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->LOAD_FAILED:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    invoke-direct {p0, v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->sendEventToEventBus(Lcom/kidoz/sdk/api/general/EventMessage$MessageType;)V

    :goto_21
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->q(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mUniquePlacementHelper:Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mUniquePlacementHelper:Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper;

    return-void
.end method

.method protected generateHtmlView()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->uniquePlacementId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlManager;->initIntrstDefaultHtmlView(Landroid/content/Context;Ljava/lang/String;)Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->webView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    return-void
.end method

.method public getAdType()Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mAdRequestType:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    return-object v0
.end method

.method public getHelperInterface()Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$InnerHelperInterface;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mInnerHelperInterface:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$InnerHelperInterface;

    return-object v0
.end method

.method public getIsLocal()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mIsLocal:Z

    return v0
.end method

.method public getPlacementHelper()Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mUniquePlacementHelper:Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper;

    return-object v0
.end method

.method public isInterstitialLoaded()Z
    .registers 2

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->isStateLoaded()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized load(Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->isStateShowing()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_52

    if-eqz v0, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->isStateLoading()Z

    move-result v0
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_52

    if-eqz v0, :cond_11

    monitor-exit p0

    return-void

    :cond_11
    :try_start_11
    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->isStateLoaded()Z

    move-result v0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_52

    if-eqz v0, :cond_19

    monitor-exit p0

    return-void

    :cond_19
    :try_start_19
    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->canBlockCall()Z

    move-result v0

    if-nez v0, :cond_50

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mIsShowRequested:Z

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mAdRequestType:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    sget-object v1, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;->INTERSTITIAL:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    if-ne p1, v1, :cond_3a

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mContentLogicLoader:Lcom/kidoz/sdk/api/general/ContentLogicLoader;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_INTERSTITIAL:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    invoke-virtual {v2}, Lcom/kidoz/sdk/api/general/enums/WidgetType;->getStringValue()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mStyleId:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/kidoz/sdk/api/general/ContentLogicLoader;->loadWaterfall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b

    :cond_3a
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mContentLogicLoader:Lcom/kidoz/sdk/api/general/ContentLogicLoader;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_INTERSTITIAL_REWARDED:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    invoke-virtual {v2}, Lcom/kidoz/sdk/api/general/enums/WidgetType;->getStringValue()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mStyleId:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/kidoz/sdk/api/general/ContentLogicLoader;->loadWaterfall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4b
    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mCurrentIndex:I

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->setStateLoading()V
    :try_end_50
    .catchall {:try_start_19 .. :try_end_50} :catchall_52

    :cond_50
    monitor-exit p0

    return-void

    :catchall_52
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onHandleEvent(Lcom/kidoz/sdk/api/general/EventMessage;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/k;
    .end annotation

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/EventMessage;->getMessageType()Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    move-result-object p1

    sget-object v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->INIT_SDK:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    if-ne p1, v0, :cond_b

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->validateLayoutAndAssets()V

    :cond_b
    return-void
.end method

.method protected declared-synchronized openView()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mLaunchLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_62

    if-eqz v0, :cond_60

    :try_start_9
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "styleId"

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mStyleId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "unique_placement_id_key"

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->uniquePlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "disableBack"

    iget-boolean v2, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mBackButtonDisabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x30020000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->setStateShowing()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_34} :catch_3c
    .catchall {:try_start_9 .. :try_end_34} :catchall_3a

    :try_start_34
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mLaunchLock:Ljava/util/concurrent/locks/Lock;

    :goto_36
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_62

    goto :goto_60

    :catchall_3a
    move-exception v0

    goto :goto_5a

    :catch_3c
    move-exception v0

    :try_start_3d
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KidozInterstitial"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->setStateClosed()V

    sget-object v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->ON_AD_FAILED_TO_SHOW:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    new-instance v1, Lcom/kidoz/sdk/api/general/KidozError;

    const/16 v2, 0x2904

    const-string v3, "Failed to launch activity"

    invoke-direct {v1, v2, v3}, Lcom/kidoz/sdk/api/general/KidozError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->sendEventToEventBusWithError(Lcom/kidoz/sdk/api/general/EventMessage$MessageType;Lcom/kidoz/sdk/api/general/KidozError;)V
    :try_end_57
    .catchall {:try_start_3d .. :try_end_57} :catchall_3a

    :try_start_57
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mLaunchLock:Ljava/util/concurrent/locks/Lock;

    goto :goto_36

    :goto_5a
    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mLaunchLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
    :try_end_60
    .catchall {:try_start_57 .. :try_end_60} :catchall_62

    :cond_60
    :goto_60
    monitor-exit p0

    return-void

    :catchall_62
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAdType(Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mAdRequestType:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    return-void
.end method

.method public setIsLocalRequest(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mIsLocal:Z

    return-void
.end method

.method public declared-synchronized show()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->isStateLoaded()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mIsShowRequested:Z

    if-nez v0, :cond_19

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mIsShowRequested:Z

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->openView()V

    goto :goto_19

    :cond_12
    const-string v0, "KidozInterstitial"

    const-string v1, "Interstitial Ad is not loaded! Please call loadAd() first."

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printWarningLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    :cond_19
    :goto_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

###### Class com.kidoz.sdk.api.ui_views.interstitial.IntrstWrapper.AnonymousClass1 (com.kidoz.sdk.api.ui_views.interstitial.IntrstWrapper$1)
.class Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$1;
.super Ljava/lang/Object;
.source "IntrstWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->sendErrorResponse(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

.field final synthetic val$error:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$1;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$1;->val$error:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$1;->val$error:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;

    const-string v1, "blocking waterfall LOAD_FAILED try = "

    if-eqz v0, :cond_65

    sget-object v2, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$6;->$SwitchMap$com$kidoz$sdk$api$ui_views$interstitial$IntrstWrapper$LastError:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_15

    goto :goto_8b

    :cond_15
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$1;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->LOAD_FAILED:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    new-instance v2, Lcom/kidoz/sdk/api/general/KidozError;

    sget-object v3, Lcom/kidoz/sdk/api/general/KidozError$Type;->noOffer:Lcom/kidoz/sdk/api/general/KidozError$Type;

    invoke-direct {v2, v3}, Lcom/kidoz/sdk/api/general/KidozError;-><init>(Lcom/kidoz/sdk/api/general/KidozError$Type;)V

    invoke-static {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$000(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;Lcom/kidoz/sdk/api/general/EventMessage$MessageType;Lcom/kidoz/sdk/api/general/KidozError;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "blocking waterfall NO_OFFERS try = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$1;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-static {v1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$100(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printWarningLog(Ljava/lang/String;)V

    goto :goto_8b

    :cond_3e
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$1;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    sget-object v2, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->LOAD_FAILED:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    new-instance v3, Lcom/kidoz/sdk/api/general/KidozError;

    sget-object v4, Lcom/kidoz/sdk/api/general/KidozError$Type;->loadFailed:Lcom/kidoz/sdk/api/general/KidozError$Type;

    invoke-direct {v3, v4}, Lcom/kidoz/sdk/api/general/KidozError;-><init>(Lcom/kidoz/sdk/api/general/KidozError$Type;)V

    invoke-static {v0, v2, v3}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$000(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;Lcom/kidoz/sdk/api/general/EventMessage$MessageType;Lcom/kidoz/sdk/api/general/KidozError;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$1;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-static {v1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$100(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printWarningLog(Ljava/lang/String;)V

    goto :goto_8b

    :cond_65
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$1;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    sget-object v2, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->LOAD_FAILED:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    new-instance v3, Lcom/kidoz/sdk/api/general/KidozError;

    sget-object v4, Lcom/kidoz/sdk/api/general/KidozError$Type;->loadFailed:Lcom/kidoz/sdk/api/general/KidozError$Type;

    invoke-direct {v3, v4}, Lcom/kidoz/sdk/api/general/KidozError;-><init>(Lcom/kidoz/sdk/api/general/KidozError$Type;)V

    invoke-static {v0, v2, v3}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$000(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;Lcom/kidoz/sdk/api/general/EventMessage$MessageType;Lcom/kidoz/sdk/api/general/KidozError;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$1;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-static {v1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$100(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printWarningLog(Ljava/lang/String;)V

    :goto_8b
    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.interstitial.IntrstWrapper.AnonymousClass2 (com.kidoz.sdk.api.ui_views.interstitial.IntrstWrapper$2)
.class Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$2;
.super Ljava/lang/Object;
.source "IntrstWrapper.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/UniquePlacement/UniqueInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;-><init>(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$2;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterstitialClose()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$2;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$200(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$2;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$300(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$2;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mInnerHelperInterface:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$InnerHelperInterface;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$InnerHelperInterface;->onAdClose()V

    :cond_13
    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.interstitial.IntrstWrapper.AnonymousClass3 (com.kidoz.sdk.api.ui_views.interstitial.IntrstWrapper$3)
.class Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$3;
.super Ljava/lang/Object;
.source "IntrstWrapper.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$InnerHelperInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;-><init>(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$3;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClose()V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$3;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mIsShowRequested:Z

    iput-boolean v1, v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mIsLoaded:Z

    iget-object v1, v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mAdRequestType:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    if-eqz v1, :cond_1d

    sget-object v2, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;->REWARDED_VIDEO:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    if-ne v1, v2, :cond_1d

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_INTERSTITIAL_REWARDED:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/general/enums/WidgetType;->getStringValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/kidoz/sdk/api/general/utils/StorageLife;->WIDGET:Lcom/kidoz/sdk/api/general/utils/StorageLife;

    invoke-static {v0, v1, v2}, Lcom/kidoz/sdk/api/general/utils/SdkCookieManager;->resetStorage(Landroid/content/Context;Ljava/lang/String;Lcom/kidoz/sdk/api/general/utils/StorageLife;)V

    goto :goto_2a

    :cond_1d
    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_INTERSTITIAL:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/general/enums/WidgetType;->getStringValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/kidoz/sdk/api/general/utils/StorageLife;->WIDGET:Lcom/kidoz/sdk/api/general/utils/StorageLife;

    invoke-static {v0, v1, v2}, Lcom/kidoz/sdk/api/general/utils/SdkCookieManager;->resetStorage(Landroid/content/Context;Ljava/lang/String;Lcom/kidoz/sdk/api/general/utils/StorageLife;)V

    :goto_2a
    return-void
.end method

.method public onAdOpen()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$3;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$400(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$3;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->ON_AD_SHOWN:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$500(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;Lcom/kidoz/sdk/api/general/EventMessage$MessageType;)V

    :cond_f
    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.interstitial.IntrstWrapper.AnonymousClass4 (com.kidoz.sdk.api.ui_views.interstitial.IntrstWrapper$4)
.class Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$4;
.super Ljava/lang/Object;
.source "IntrstWrapper.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/ContentLogicLoader$IOnContentDataReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;-><init>(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$4;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReady(Lcom/kidoz/sdk/api/structure/ContentData;)V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$4;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    iput-object p1, v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mContentData:Lcom/kidoz/sdk/api/structure/ContentData;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$602(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$4;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$600(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentData;->getContentDataItems()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$4;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$600(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_69

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$4;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$702(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;I)I

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$4;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$600(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$4;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$700(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kidoz/sdk/api/structure/ContentItem;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$4;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-static {v0, p1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$800(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;Lcom/kidoz/sdk/api/structure/ContentItem;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;->getInstance()Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;->loadAppProperties()Lcom/kidoz/sdk/api/general/utils/PropertiesObj;

    move-result-object v0

    if-nez p1, :cond_53

    if-eqz v0, :cond_53

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->getInterstitialHtmlLink()Ljava/lang/String;

    move-result-object p1

    :cond_53
    if-eqz p1, :cond_69

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$4;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-static {v0, p1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$900(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_69

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$4;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    new-instance v0, Lcom/kidoz/sdk/api/general/KidozError;

    sget-object v1, Lcom/kidoz/sdk/api/general/KidozError$Type;->loadFailedWebViewInit:Lcom/kidoz/sdk/api/general/KidozError$Type;

    invoke-direct {v0, v1}, Lcom/kidoz/sdk/api/general/KidozError;-><init>(Lcom/kidoz/sdk/api/general/KidozError$Type;)V

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$1000(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;Lcom/kidoz/sdk/api/general/KidozError;)V

    :cond_69
    return-void
.end method

.method public onLoadContentFailed()V
    .registers 5

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$4;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;->LOAD_FAILED:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$1100(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$4;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->LOAD_FAILED:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    new-instance v2, Lcom/kidoz/sdk/api/general/KidozError;

    sget-object v3, Lcom/kidoz/sdk/api/general/KidozError$Type;->loadFailedBadResponse:Lcom/kidoz/sdk/api/general/KidozError$Type;

    invoke-direct {v2, v3}, Lcom/kidoz/sdk/api/general/KidozError;-><init>(Lcom/kidoz/sdk/api/general/KidozError$Type;)V

    invoke-static {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$000(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;Lcom/kidoz/sdk/api/general/EventMessage$MessageType;Lcom/kidoz/sdk/api/general/KidozError;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$4;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$300(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)V

    return-void
.end method

.method public onNoContentOffers()V
    .registers 5

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$4;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;->NO_OFFERS:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$1100(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$4;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->NO_OFFERS:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    new-instance v2, Lcom/kidoz/sdk/api/general/KidozError;

    sget-object v3, Lcom/kidoz/sdk/api/general/KidozError$Type;->noOffer:Lcom/kidoz/sdk/api/general/KidozError$Type;

    invoke-direct {v2, v3}, Lcom/kidoz/sdk/api/general/KidozError;-><init>(Lcom/kidoz/sdk/api/general/KidozError$Type;)V

    invoke-static {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$000(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;Lcom/kidoz/sdk/api/general/EventMessage$MessageType;Lcom/kidoz/sdk/api/general/KidozError;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$4;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$300(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)V

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.interstitial.IntrstWrapper.AnonymousClass5 (com.kidoz.sdk.api.ui_views.interstitial.IntrstWrapper$5)
.class Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;
.super Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;
.source "IntrstWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->prepareWebViewWithLink(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/kidoz/sdk/api/general/KidozError;)V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$200(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$1500(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$1600(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)V

    goto :goto_23

    :cond_13
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mIsLoaded:Z

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$400(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-static {v0, p1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$1000(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;Lcom/kidoz/sdk/api/general/KidozError;)V

    :cond_23
    :goto_23
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    iget-object v0, p1, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mAdRequestType:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    if-eqz v0, :cond_39

    sget-object v1, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;->REWARDED_VIDEO:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    if-ne v0, v1, :cond_39

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->webView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    sget-object v0, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_INTERSTITIAL_REWARDED:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/general/enums/WidgetType;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->setWidgetType(Ljava/lang/String;)V

    goto :goto_44

    :cond_39
    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->webView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    sget-object v0, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_INTERSTITIAL:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/general/enums/WidgetType;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->setWidgetType(Ljava/lang/String;)V

    :goto_44
    return-void
.end method

.method public onAdFailedToStart(ILjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->ON_AD_FAILED_TO_SHOW:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    new-instance v2, Lcom/kidoz/sdk/api/general/KidozError;

    invoke-direct {v2, p1, p2}, Lcom/kidoz/sdk/api/general/KidozError;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$000(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;Lcom/kidoz/sdk/api/general/EventMessage$MessageType;Lcom/kidoz/sdk/api/general/KidozError;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$1700(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;Z)V

    return-void
.end method

.method public onAdImpression()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->ON_AD_IMPRESSION:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$500(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;Lcom/kidoz/sdk/api/general/EventMessage$MessageType;)V

    return-void
.end method

.method public onAdLoaded(Z)V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    iput-boolean p1, v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mBackButtonDisabled:Z

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mIsLoadRequested:Z

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$1300(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$400(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)Z

    move-result p1

    if-nez p1, :cond_1f

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$1400(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    sget-object v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->READY:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$500(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;Lcom/kidoz/sdk/api/general/EventMessage$MessageType;)V

    goto :goto_24

    :cond_1f
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->show()V

    :goto_24
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    iget-object v0, p1, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mAdRequestType:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    if-eqz v0, :cond_3a

    sget-object v1, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;->REWARDED_VIDEO:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    if-ne v0, v1, :cond_3a

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->webView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    sget-object v0, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_INTERSTITIAL_REWARDED:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/general/enums/WidgetType;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->setWidgetType(Ljava/lang/String;)V

    goto :goto_45

    :cond_3a
    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->webView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    sget-object v0, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_INTERSTITIAL:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/general/enums/WidgetType;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->setWidgetType(Ljava/lang/String;)V

    :goto_45
    return-void
.end method

.method public onAdStarted()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->ON_AD_SHOWN:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$500(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;Lcom/kidoz/sdk/api/general/EventMessage$MessageType;)V

    return-void
.end method

.method public onClose()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$1700(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;Z)V

    return-void
.end method

.method public onHtmlFinishedLoading()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$1200(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)V

    invoke-super {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;->onHtmlFinishedLoading()V

    return-void
.end method

.method public onRewarded()V
    .registers 3

    invoke-super {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;->onRewarded()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->REWARDED:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$500(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;Lcom/kidoz/sdk/api/general/EventMessage$MessageType;)V

    return-void
.end method

.method public onViewReady()V
    .registers 4

    invoke-super {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;->onViewReady()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$600(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-static {v1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$700(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)I

    move-result v1

    if-le v0, v1, :cond_47

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$600(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-static {v1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$700(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kidoz/sdk/api/structure/ContentItem;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    iget-object v1, v1, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mContentData:Lcom/kidoz/sdk/api/structure/ContentData;

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/structure/ContentData;->getmKeysMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getJSONitem()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    iget-object v2, v2, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->webView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {v2, v1, v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->loadContent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_47
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mIsInitializationFinished:Z

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.interstitial.IntrstWrapper.AnonymousClass6 (com.kidoz.sdk.api.ui_views.interstitial.IntrstWrapper$6)
.class synthetic Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$6;
.super Ljava/lang/Object;
.source "IntrstWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$kidoz$sdk$api$general$enums$HtmlType:[I

.field static final synthetic $SwitchMap$com$kidoz$sdk$api$ui_views$interstitial$IntrstWrapper$LastError:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    invoke-static {}, Lcom/kidoz/sdk/api/general/enums/HtmlType;->values()[Lcom/kidoz/sdk/api/general/enums/HtmlType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$6;->$SwitchMap$com$kidoz$sdk$api$general$enums$HtmlType:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/kidoz/sdk/api/general/enums/HtmlType;->NONE:Lcom/kidoz/sdk/api/general/enums/HtmlType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$6;->$SwitchMap$com$kidoz$sdk$api$general$enums$HtmlType:[I

    sget-object v3, Lcom/kidoz/sdk/api/general/enums/HtmlType;->VAST:Lcom/kidoz/sdk/api/general/enums/HtmlType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v2, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$6;->$SwitchMap$com$kidoz$sdk$api$general$enums$HtmlType:[I

    sget-object v3, Lcom/kidoz/sdk/api/general/enums/HtmlType;->MRAID:Lcom/kidoz/sdk/api/general/enums/HtmlType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v2, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$6;->$SwitchMap$com$kidoz$sdk$api$general$enums$HtmlType:[I

    sget-object v3, Lcom/kidoz/sdk/api/general/enums/HtmlType;->DOUBLE_CLICK:Lcom/kidoz/sdk/api/general/enums/HtmlType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x4

    aput v4, v2, v3
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v2, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$6;->$SwitchMap$com$kidoz$sdk$api$general$enums$HtmlType:[I

    sget-object v3, Lcom/kidoz/sdk/api/general/enums/HtmlType;->SUPER_AWESOME:Lcom/kidoz/sdk/api/general/enums/HtmlType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x5

    aput v4, v2, v3
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v2, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$6;->$SwitchMap$com$kidoz$sdk$api$general$enums$HtmlType:[I

    sget-object v3, Lcom/kidoz/sdk/api/general/enums/HtmlType;->JAVASCRIPT:Lcom/kidoz/sdk/api/general/enums/HtmlType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x6

    aput v4, v2, v3
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    invoke-static {}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;->values()[Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$6;->$SwitchMap$com$kidoz$sdk$api$ui_views$interstitial$IntrstWrapper$LastError:[I

    :try_start_52
    sget-object v3, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;->LOAD_FAILED:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_5a} :catch_5a

    :catch_5a
    :try_start_5a
    sget-object v1, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$6;->$SwitchMap$com$kidoz$sdk$api$ui_views$interstitial$IntrstWrapper$LastError:[I

    sget-object v2, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;->NO_OFFERS:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_64} :catch_64

    :catch_64
    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.interstitial.IntrstWrapper.InnerHelperInterface (com.kidoz.sdk.api.ui_views.interstitial.IntrstWrapper$InnerHelperInterface)
.class public interface abstract Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$InnerHelperInterface;
.super Ljava/lang/Object;
.source "IntrstWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InnerHelperInterface"
.end annotation


# virtual methods
.method public abstract onAdClose()V
.end method

.method public abstract onAdOpen()V
.end method

###### Class com.kidoz.sdk.api.ui_views.interstitial.IntrstWrapper.LastError (com.kidoz.sdk.api.ui_views.interstitial.IntrstWrapper$LastError)
.class final enum Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;
.super Ljava/lang/Enum;
.source "IntrstWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LastError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;

.field public static final enum LOAD_FAILED:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;

.field public static final enum NO_OFFERS:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;


# direct methods
.method private static synthetic $values()[Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;->LOAD_FAILED:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;->NO_OFFERS:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;

    const-string v1, "LOAD_FAILED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;->LOAD_FAILED:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;

    const-string v1, "NO_OFFERS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;->NO_OFFERS:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;

    invoke-static {}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;->$values()[Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;

    move-result-object v0

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;->$VALUES:[Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;
    .registers 2

    const-class v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;

    return-object p0
.end method

.method public static values()[Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;
    .registers 1

    sget-object v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;->$VALUES:[Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;

    invoke-virtual {v0}, [Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;

    return-object v0
.end method

###### Class com.kidoz.sdk.api.ui_views.interstitial.IntrstWrapper.VIEW_STATE (com.kidoz.sdk.api.ui_views.interstitial.IntrstWrapper$VIEW_STATE)
.class public final enum Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;
.super Ljava/lang/Enum;
.source "IntrstWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VIEW_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;

.field public static final enum CLOSED:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;

.field public static final enum LOADED:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;

.field public static final enum LOADING:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;

.field public static final enum SHOWING:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;


# direct methods
.method private static synthetic $values()[Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;->CLOSED:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;->LOADING:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;->LOADED:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;->SHOWING:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;

    const-string v1, "CLOSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;->CLOSED:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;

    const-string v1, "LOADING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;->LOADING:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;

    const-string v1, "LOADED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;->LOADED:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;

    const-string v1, "SHOWING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;->SHOWING:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;

    invoke-static {}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;->$values()[Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;

    move-result-object v0

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;->$VALUES:[Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;
    .registers 2

    const-class v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;

    return-object p0
.end method

.method public static values()[Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;
    .registers 1

    sget-object v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;->$VALUES:[Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;

    invoke-virtual {v0}, [Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$VIEW_STATE;

    return-object v0
.end method
