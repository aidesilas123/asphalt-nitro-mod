###### Class com.kidoz.sdk.api.PanelView (com.kidoz.sdk.api.PanelView)
.class public Lcom/kidoz/sdk/api/PanelView;
.super Landroid/widget/RelativeLayout;
.source "PanelView.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAbstractPanelView:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

.field private mHandlePosition:Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;

.field private mIOnPanelViewEventListener:Lcom/kidoz/sdk/api/interfaces/IOnPanelViewEventListener;

.field private mKidozPlayerEventHelper:Lcom/kidoz/sdk/api/interfaces/KidozPlayerEventHelper;

.field private mKidozPlayerListener:Lcom/kidoz/sdk/api/interfaces/KidozPlayerListener;

.field private mPanelType:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

.field private mVisibilityRequest:Z

.field private raceConditionLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/kidoz/sdk/api/PanelView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kidoz/sdk/api/PanelView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;->BOTTOM:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    iput-object p1, p0, Lcom/kidoz/sdk/api/PanelView;->mPanelType:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    sget-object p1, Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;->START:Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;

    iput-object p1, p0, Lcom/kidoz/sdk/api/PanelView;->mHandlePosition:Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kidoz/sdk/api/PanelView;->mIOnPanelViewEventListener:Lcom/kidoz/sdk/api/interfaces/IOnPanelViewEventListener;

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/kidoz/sdk/api/PanelView;->raceConditionLock:Ljava/util/concurrent/locks/Lock;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/PanelView;->mVisibilityRequest:Z

    invoke-direct {p0}, Lcom/kidoz/sdk/api/PanelView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;->BOTTOM:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    iput-object p1, p0, Lcom/kidoz/sdk/api/PanelView;->mPanelType:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    sget-object p1, Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;->START:Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;

    iput-object p1, p0, Lcom/kidoz/sdk/api/PanelView;->mHandlePosition:Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kidoz/sdk/api/PanelView;->mIOnPanelViewEventListener:Lcom/kidoz/sdk/api/interfaces/IOnPanelViewEventListener;

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/kidoz/sdk/api/PanelView;->raceConditionLock:Ljava/util/concurrent/locks/Lock;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/PanelView;->mVisibilityRequest:Z

    invoke-direct {p0}, Lcom/kidoz/sdk/api/PanelView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p1, Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;->BOTTOM:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    iput-object p1, p0, Lcom/kidoz/sdk/api/PanelView;->mPanelType:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    sget-object p1, Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;->START:Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;

    iput-object p1, p0, Lcom/kidoz/sdk/api/PanelView;->mHandlePosition:Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kidoz/sdk/api/PanelView;->mIOnPanelViewEventListener:Lcom/kidoz/sdk/api/interfaces/IOnPanelViewEventListener;

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/kidoz/sdk/api/PanelView;->raceConditionLock:Ljava/util/concurrent/locks/Lock;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/PanelView;->mVisibilityRequest:Z

    invoke-direct {p0}, Lcom/kidoz/sdk/api/PanelView;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/kidoz/sdk/api/PanelView;)Lcom/kidoz/sdk/api/interfaces/KidozPlayerListener;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/PanelView;->mKidozPlayerListener:Lcom/kidoz/sdk/api/interfaces/KidozPlayerListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kidoz/sdk/api/PanelView;)Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/PanelView;->mAbstractPanelView:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kidoz/sdk/api/PanelView;)V
    .registers 1

    invoke-direct {p0}, Lcom/kidoz/sdk/api/PanelView;->buildPanelView()V

    return-void
.end method

.method private buildPanelView()V
    .registers 4

    invoke-static {}, Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;->getInstance()Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;

    move-result-object v0

    sget-object v1, Lcom/kidoz/sdk/api/PanelView;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;->loadProperties(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_32

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/kidoz/sdk/api/PanelView;->mAbstractPanelView:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    iget-object v0, p0, Lcom/kidoz/sdk/api/PanelView;->mPanelType:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    if-eqz v0, :cond_22

    iget-object v2, p0, Lcom/kidoz/sdk/api/PanelView;->mHandlePosition:Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;

    if-eqz v2, :cond_22

    invoke-virtual {v1, v0, v2}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->setPanelConfiguration(Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;)V

    :cond_22
    iget-object v0, p0, Lcom/kidoz/sdk/api/PanelView;->mIOnPanelViewEventListener:Lcom/kidoz/sdk/api/interfaces/IOnPanelViewEventListener;

    if-eqz v0, :cond_2b

    iget-object v1, p0, Lcom/kidoz/sdk/api/PanelView;->mAbstractPanelView:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    invoke-virtual {v1, v0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->setOnPanelViewEventListener(Lcom/kidoz/sdk/api/interfaces/IOnPanelViewEventListener;)V

    :cond_2b
    iget-object v0, p0, Lcom/kidoz/sdk/api/PanelView;->mAbstractPanelView:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    iget-boolean v1, p0, Lcom/kidoz/sdk/api/PanelView;->mVisibilityRequest:Z

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->setPanelEnabled(Z)V

    :cond_32
    iget-object v0, p0, Lcom/kidoz/sdk/api/PanelView;->mKidozPlayerEventHelper:Lcom/kidoz/sdk/api/interfaces/KidozPlayerEventHelper;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/interfaces/KidozPlayerEventHelper;->register()V

    :cond_39
    iget-object v0, p0, Lcom/kidoz/sdk/api/PanelView;->mAbstractPanelView:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    if-eqz v0, :cond_43

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/PanelView;->setAnotherInterface()V

    :cond_43
    return-void
.end method

.method private initView()V
    .registers 4

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->i(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->o(Ljava/lang/Object;)V

    :cond_11
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/kidoz/sdk/api/KidozSDK;->isInitialised()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_28

    invoke-direct {p0}, Lcom/kidoz/sdk/api/PanelView;->validateLayoutAndAssets()V

    :cond_28
    new-instance v0, Lcom/kidoz/sdk/api/interfaces/KidozPlayerEventHelper;

    new-instance v1, Lcom/kidoz/sdk/api/PanelView$1;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/PanelView$1;-><init>(Lcom/kidoz/sdk/api/PanelView;)V

    sget-object v2, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_PANEL:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/interfaces/KidozPlayerEventHelper;-><init>(Lcom/kidoz/sdk/api/interfaces/KidozPlayerEventHelper$IPlayerListener;Lcom/kidoz/sdk/api/general/enums/WidgetType;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/PanelView;->mKidozPlayerEventHelper:Lcom/kidoz/sdk/api/interfaces/KidozPlayerEventHelper;

    return-void
.end method

.method private setAnotherInterface()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/kidoz/sdk/api/PanelView;->mAbstractPanelView:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    new-instance v1, Lcom/kidoz/sdk/api/PanelView$3;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/PanelView$3;-><init>(Lcom/kidoz/sdk/api/PanelView;)V

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->setAnotherInterface(Lcom/kidoz/sdk/api/interfaces/AnotherInterface;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_c

    :catch_c
    return-void
.end method

.method private validateLayoutAndAssets()V
    .registers 3

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->q(Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/kidoz/sdk/api/PanelView;->raceConditionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_32

    :try_start_19
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/kidoz/sdk/api/PanelView$2;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/PanelView$2;-><init>(Lcom/kidoz/sdk/api/PanelView;)V

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->parseStyleAsync(Landroid/content/Context;Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil$ParserAsyncTask$IOnStyleParseListener;)V
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_2b

    iget-object v0, p0, Lcom/kidoz/sdk/api/PanelView;->raceConditionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_32

    :catchall_2b
    move-exception v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/PanelView;->raceConditionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_32
    :goto_32
    return-void
.end method


# virtual methods
.method public collapsePanelView()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/PanelView;->mAbstractPanelView:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->collapsePanelView()V

    :cond_7
    return-void
.end method

.method public expandPanelView()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/PanelView;->mAbstractPanelView:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->expandPanelView()V

    :cond_7
    return-void
.end method

.method public getIsPanelViewExpanded()Z
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/PanelView;->mAbstractPanelView:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->getPanelViewState()Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;

    move-result-object v0

    sget-object v2, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;->OPEN:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;

    if-ne v0, v2, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1
.end method

.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/PanelView;->mKidozPlayerEventHelper:Lcom/kidoz/sdk/api/interfaces/KidozPlayerEventHelper;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/interfaces/KidozPlayerEventHelper;->register()V

    :cond_a
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    :try_start_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->q(Ljava/lang/Object;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_13

    :catch_12
    nop

    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/kidoz/sdk/api/PanelView;->mKidozPlayerEventHelper:Lcom/kidoz/sdk/api/interfaces/KidozPlayerEventHelper;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/interfaces/KidozPlayerEventHelper;->unRegister()V

    :cond_1a
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onHandleEvent(Lcom/kidoz/sdk/api/general/EventMessage;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/k;
    .end annotation

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/EventMessage;->getMessageType()Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    move-result-object p1

    sget-object v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->INIT_SDK:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    if-ne p1, v0, :cond_b

    invoke-direct {p0}, Lcom/kidoz/sdk/api/PanelView;->validateLayoutAndAssets()V

    :cond_b
    return-void
.end method

.method public setKidozPlayerListener(Lcom/kidoz/sdk/api/interfaces/KidozPlayerListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/PanelView;->mKidozPlayerListener:Lcom/kidoz/sdk/api/interfaces/KidozPlayerListener;

    return-void
.end method

.method public setOnPanelViewEventListener(Lcom/kidoz/sdk/api/interfaces/IOnPanelViewEventListener;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/PanelView;->mIOnPanelViewEventListener:Lcom/kidoz/sdk/api/interfaces/IOnPanelViewEventListener;

    iget-object v0, p0, Lcom/kidoz/sdk/api/PanelView;->mAbstractPanelView:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->setOnPanelViewEventListener(Lcom/kidoz/sdk/api/interfaces/IOnPanelViewEventListener;)V

    :cond_9
    return-void
.end method

.method public setPanelAutoExpand(FF)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setPanelAutoExpand(FFF)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setPanelColor(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setPanelConfiguration(Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;)V
    .registers 5

    sget-object v0, Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;->LEFT:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    if-eq p1, v0, :cond_1c

    sget-object v0, Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;->RIGHT:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    if-eq p1, v0, :cond_1c

    iput-object p1, p0, Lcom/kidoz/sdk/api/PanelView;->mPanelType:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    iput-object p2, p0, Lcom/kidoz/sdk/api/PanelView;->mHandlePosition:Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;

    iget-object v0, p0, Lcom/kidoz/sdk/api/PanelView;->mAbstractPanelView:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    if-eqz v0, :cond_1b

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;->TOP:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    if-eq p1, v1, :cond_18

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;->BOTTOM:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    if-ne p1, v1, :cond_1b

    :cond_18
    invoke-virtual {v0, p1, p2}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->setPanelConfiguration(Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;)V

    :cond_1b
    return-void

    :cond_1c
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Please use PANEL_TYPE.TOP or PANEL_TYPE.BOTTOM (LEFT & RIGHT are deprecated)"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setVisibility(I)V
    .registers 4

    const/4 v0, 0x4

    const/16 v1, 0x8

    if-ne p1, v1, :cond_6

    const/4 p1, 0x4

    :cond_6
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-ne p1, v0, :cond_19

    iget-object p1, p0, Lcom/kidoz/sdk/api/PanelView;->mAbstractPanelView:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    const/4 v0, 0x0

    if-eqz p1, :cond_16

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->setPanelEnabled(Z)V

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/PanelView;->mVisibilityRequest:Z

    goto :goto_24

    :cond_16
    iput-boolean v0, p0, Lcom/kidoz/sdk/api/PanelView;->mVisibilityRequest:Z

    goto :goto_24

    :cond_19
    iget-object p1, p0, Lcom/kidoz/sdk/api/PanelView;->mAbstractPanelView:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    const/4 v0, 0x1

    if-eqz p1, :cond_22

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->setPanelEnabled(Z)V

    goto :goto_24

    :cond_22
    iput-boolean v0, p0, Lcom/kidoz/sdk/api/PanelView;->mVisibilityRequest:Z

    :goto_24
    return-void
.end method
