###### Class com.kidoz.sdk.api.ui_views.interstitial.KidozAdActivity (com.kidoz.sdk.api.ui_views.interstitial.KidozAdActivity)
.class public Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;
.super Landroid/app/Activity;
.source "KidozAdActivity.java"


# static fields
.field public static final AD_TYPE_KEY:Ljava/lang/String; = "ad_type_key"

.field public static final DISABLE_BACK_KEY:Ljava/lang/String; = "disableBack"

.field public static final STYLE_ID_KEY:Ljava/lang/String; = "styleId"

.field public static final UNIQUE_PLACEMENT_ID_KEY:Ljava/lang/String; = "unique_placement_id_key"


# instance fields
.field isShowFailed:Z

.field private mAdType:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

.field protected mBgColor:I

.field private mHandler:Landroid/os/Handler;

.field protected mInnerContainer:Landroid/widget/RelativeLayout;

.field private mIsBackDisabled:Z

.field private mIsFirstLaunch:Z

.field private mIsImmersive:Z

.field private mPreviousOrientation:I

.field private mUniquePlacementId:Ljava/lang/String;

.field protected mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mBgColor:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mIsImmersive:Z

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mIsFirstLaunch:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mIsBackDisabled:Z

    const-string v1, "-1"

    iput-object v1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mUniquePlacementId:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->isShowFailed:Z

    return-void
.end method

.method private applyImmersiveMode()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_10

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    goto :goto_36

    :cond_10
    const/16 v1, 0x12

    if-ge v0, v1, :cond_21

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_36

    :cond_21
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity$2;-><init>(Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    :goto_36
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mIsBackDisabled:Z

    if-nez v0, :cond_7

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_7
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-ge p1, v0, :cond_1b

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity$1;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity$1;-><init>(Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1b
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :try_start_3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->i(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->o(Ljava/lang/Object;)V

    :cond_14
    const p1, 0x1030011

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x1000000

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_d6

    const-string v0, "unique_placement_id_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mUniquePlacementId:Ljava/lang/String;

    const-string v0, "styleId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "disableBack"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mIsBackDisabled:Z

    const-string v1, "ad_type_key"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mAdType:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mUniquePlacementId:Ljava/lang/String;

    if-eqz p1, :cond_64

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlManager;->getIntrstDefaultHtmlView(Ljava/lang/String;)Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    goto :goto_67

    :cond_64
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_67
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    if-eqz p1, :cond_d2

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->getWidgetType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8d

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->getWidgetType()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_INTERSTITIAL_REWARDED:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/general/enums/WidgetType;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8d

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/general/enums/WidgetType;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->setWidgetType(Ljava/lang/String;)V

    goto :goto_98

    :cond_8d
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_INTERSTITIAL:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/general/enums/WidgetType;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->setWidgetType(Ljava/lang/String;)V

    :goto_98
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->setStyleID(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {p1, p0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->setInFocusActivityContext(Landroid/content/Context;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-ge p1, v0, :cond_ae

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/widget/RelativeLayout;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_ae
    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-direct {p1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mInnerContainer:Landroid/widget/RelativeLayout;

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mBgColor:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mInnerContainer:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mInnerContainer:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_dd

    :cond_d2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_dd

    :cond_d6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d9} :catch_da

    goto :goto_dd

    :catch_da
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_dd
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    if-eqz v0, :cond_13

    :try_start_4
    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->stopVastAd()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_7

    :catch_7
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->destroy()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mInnerContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_13
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mUniquePlacementId:Ljava/lang/String;

    const-string v1, "-1"

    if-eq v0, v1, :cond_2c

    new-instance v0, Lcom/kidoz/sdk/api/general/EventMessage;

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->INTERSTITIAL_AD_CLOSE:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    invoke-direct {v0, v1}, Lcom/kidoz/sdk/api/general/EventMessage;-><init>(Lcom/kidoz/sdk/api/general/EventMessage$MessageType;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mUniquePlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/general/EventMessage;->setAdditionalParam(Ljava/lang/String;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->k(Ljava/lang/Object;)V

    :cond_2c
    iget-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->isShowFailed:Z

    if-nez v0, :cond_43

    new-instance v0, Lcom/kidoz/sdk/api/general/EventMessage;

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->CLOSED:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    invoke-direct {v0, v1}, Lcom/kidoz/sdk/api/general/EventMessage;-><init>(Lcom/kidoz/sdk/api/general/EventMessage$MessageType;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mUniquePlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/general/EventMessage;->setAdditionalParam(Ljava/lang/String;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->k(Ljava/lang/Object;)V

    :cond_43
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->i(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_55

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->q(Ljava/lang/Object;)V

    :cond_55
    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mPreviousOrientation:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mInnerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onHandleEvent(Lcom/kidoz/sdk/api/general/EventMessage;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/k;
    .end annotation

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/EventMessage;->getMessageType()Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    move-result-object v0

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->CLOSE_FULL_SCREEN_AD:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    if-ne v0, v1, :cond_1e

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/EventMessage;->isFlag()Z

    move-result p1

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->isShowFailed:Z

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_29

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_29

    :cond_1e
    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/EventMessage;->getMessageType()Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    move-result-object p1

    sget-object v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->PARENTAL_DIALOG_CLOSE:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    if-ne p1, v0, :cond_29

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->onResume()V

    :cond_29
    :goto_29
    return-void
.end method

.method protected onPause()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    if-eqz v0, :cond_d

    :try_start_a
    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->pauseVastAd()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_d

    :catch_d
    :cond_d
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 5

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mPreviousOrientation:I

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    if-eqz v0, :cond_4a

    iget-boolean v1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mIsFirstLaunch:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_22

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mIsFirstLaunch:Z

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity$3;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity$3;-><init>(Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_25

    :cond_22
    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->resumeVastAd()V

    :goto_25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_3e

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity$4;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity$4;-><init>(Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4a

    :cond_3e
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity$5;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity$5;-><init>(Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4a
    :goto_4a
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mIsImmersive:Z

    if-eqz p1, :cond_c

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->applyImmersiveMode()V

    :cond_c
    return-void
.end method
