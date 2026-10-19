###### Class com.kidoz.sdk.api.players.web_player.WebPlayerDialog (com.kidoz.sdk.api.players.web_player.WebPlayerDialog)
.class public Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;
.super Lcom/kidoz/sdk/api/general/BaseDialog;
.source "WebPlayerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface;
    }
.end annotation


# static fields
.field private static final CONTENT_ITEM_SAVE_STATE_KEY:Ljava/lang/String; = "CONTENT_ITEM_SAVE_STATE_KEY_WP"

.field private static final DEFAULT_TOP_BAR_COLOR:I

.field private static final TAG:Ljava/lang/String;

.field private static final WEB_PLAYER_RESOURCE_ID:I = 0x1

.field private static final WEB_PLAYER_TYPE_SAVE_STATE_KEY:Ljava/lang/String; = "WEB_PLAYER_TYPE_SAVE_STATE_KEY_WP"


# instance fields
.field private mConfigurationView:Lcom/kidoz/sdk/api/ui_views/web_unit_view/ConfigurationView;

.field private mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

.field private mHtmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

.field private mInnerContainer:Landroid/widget/RelativeLayout;

.field private mKidozTopBar:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

.field private mLabel:Ljava/lang/String;

.field private mStyleId:Ljava/lang/String;

.field private mWebPlayerType:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

.field private mWebPlayerView:Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;

.field private mWidgetType:Ljava/lang/String;

.field private staticHandler:Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "#36a7ec"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->DEFAULT_TOP_BAR_COLOR:I

    const-class v0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;Z)V
    .registers 8

    const v0, 0x1030011

    invoke-direct {p0, p1, v0, p6}, Lcom/kidoz/sdk/api/general/BaseDialog;-><init>(Landroid/content/Context;IZ)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mWidgetType:Ljava/lang/String;

    iput-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mStyleId:Ljava/lang/String;

    new-instance p1, Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p6

    invoke-direct {p1, p6}, Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->staticHandler:Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    if-eqz p5, :cond_21

    sget-object p1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->EXTERNAL_LINK:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    if-ne p5, p1, :cond_21

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    goto :goto_25

    :cond_21
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    :goto_25
    iput-object p2, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    iput-object p5, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mWebPlayerType:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    iput-object p3, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mWidgetType:Ljava/lang/String;

    iput-object p4, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mStyleId:Ljava/lang/String;

    new-instance p1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$1;

    invoke-direct {p1, p0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$1;-><init>(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mWebPlayerType:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mWebPlayerView:Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Lcom/kidoz/sdk/api/structure/ContentItem;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mWidgetType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mStyleId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mHtmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    return-object p0
.end method

.method static synthetic access$600(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->staticHandler:Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    return-object p0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addHtmlPlaybackView()V
    .registers 4

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/BaseDialog;->mCallingActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mHtmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/BaseDialog;->mCallingActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->setInFocusActivityContext(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mHtmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    new-instance v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$5;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$5;-><init>(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)V

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->setHtmlWebViewListener(Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mHtmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    iget-object v1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->setData(Lcom/kidoz/sdk/api/structure/ContentItem;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mHtmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->reloadHtml()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getIsUseNativeTopBar()Z

    move-result v0

    if-nez v0, :cond_53

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kidoz/sdk/api/general/utils/Utils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3d7bbbbc

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mInnerContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mHtmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_53
    return-void
.end method

.method private addWebPlayerView()V
    .registers 6

    new-instance v0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lcom/kidoz/sdk/api/general/BaseDialog;->mCallingActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mWebPlayerType:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    iget-object v4, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v4}, Lcom/kidoz/sdk/api/structure/ContentItem;->getIsUseNativeTopBar()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;-><init>(Landroid/view/Window;Landroid/content/Context;Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;Z)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mWebPlayerView:Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->getKidozWebView()Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    move-result-object v0

    new-instance v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface;-><init>(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)V

    const-string v2, "KidozAndroid"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mWebPlayerView:Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->getKidozWebView()Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    move-result-object v0

    new-instance v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface;-><init>(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)V

    const-string v2, "Bridge"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mWebPlayerView:Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->getKidozWebView()Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    move-result-object v0

    new-instance v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$6;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$6;-><init>(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)V

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->setWebViewVisibilityListener(Lcom/kidoz/sdk/api/players/web_player/WebViewVisibilityListener;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    if-eqz v0, :cond_9c

    const/4 v1, 0x0

    :try_start_46
    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getExtraParameters()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getExtraParameters()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "allowed_domains"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_8b

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_61
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_8b

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_6d} :catch_70

    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    :catch_70
    move-exception v0

    sget-object v2, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error when trying to gnerate website\'s allowed domains: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8b
    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mWebPlayerView:Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;

    iget-object v2, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v2}, Lcom/kidoz/sdk/api/structure/ContentItem;->getData()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v3}, Lcom/kidoz/sdk/api/structure/ContentItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->loadWebUrlWithAllowedDomains([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9c
    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mWebPlayerView:Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;

    new-instance v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$7;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$7;-><init>(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)V

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->setOnRemoveViewRequestListener(Lcom/kidoz/sdk/api/players/web_player/WebPlayerView$IOnRemoveViewRequestListener;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mInnerContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mWebPlayerView:Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initConfigurationView()V
    .registers 4

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/web_unit_view/ConfigurationView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$2;

    invoke-direct {v2, p0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$2;-><init>(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)V

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/web_unit_view/ConfigurationView;-><init>(Landroid/content/Context;Lcom/kidoz/sdk/api/ui_views/web_unit_view/ConfigurationView$ConfigurationViewInterface;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mConfigurationView:Lcom/kidoz/sdk/api/ui_views/web_unit_view/ConfigurationView;

    iget-object v1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mInnerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initDialogView()V
    .registers 5

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mInnerContainer:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/kidoz/sdk/api/general/BaseDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mWebPlayerType:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    sget-object v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->HTML_PLAYBACK:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    if-ne v0, v1, :cond_1e

    invoke-direct {p0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->addHtmlPlaybackView()V

    goto :goto_2a

    :cond_1e
    invoke-direct {p0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->addWebPlayerView()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mWebPlayerView:Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;

    if-eqz v0, :cond_2a

    iget-object v1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->setContentItem(Lcom/kidoz/sdk/api/structure/ContentItem;)V

    :cond_2a
    :goto_2a
    invoke-direct {p0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->initTopBar()V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setId(I)V

    iget-object v3, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mInnerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mWebPlayerView:Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;

    if-eqz v1, :cond_4e

    invoke-virtual {v1, v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->setFullScreenWebChromeClient(Landroid/view/ViewGroup;)V

    :cond_4e
    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mWebPlayerType:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    if-eqz v0, :cond_68

    sget-object v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->EXTERNAL_LINK:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    if-ne v0, v1, :cond_68

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mInnerContainer:Landroid/widget/RelativeLayout;

    const-string v1, "#77000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mKidozTopBar:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_6d

    :cond_68
    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mInnerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :goto_6d
    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mKidozTopBar:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    iget-object v1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->setTitle(Ljava/lang/String;)V

    goto :goto_88

    :cond_81
    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mKidozTopBar:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->setTitle(Ljava/lang/String;)V

    :goto_88
    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mWebPlayerType:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    if-eqz v0, :cond_af

    sget-object v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->ROVIO:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    if-ne v0, v1, :cond_af

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mWebPlayerView:Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;

    if-eqz v0, :cond_af

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_af

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iget-object v2, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mWebPlayerView:Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;

    invoke-virtual {v2}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->getKidozWebView()Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    :cond_af
    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mWebPlayerType:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    if-eqz v0, :cond_b7

    sget-object v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->ROVIO:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    if-eq v0, v1, :cond_bf

    :cond_b7
    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getIsUseNativeTopBar()Z

    move-result v0

    if-nez v0, :cond_c6

    :cond_bf
    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mKidozTopBar:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_c6
    invoke-direct {p0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->initConfigurationView()V

    return-void
.end method

.method private initTopBar()V
    .registers 6

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mWidgetType:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;-><init>(Landroid/content/Context;ZLjava/lang/String;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mKidozTopBar:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mKidozTopBar:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    sget v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->DEFAULT_TOP_BAR_COLOR:I

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->setTopBarBackgroundColor(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mKidozTopBar:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    new-instance v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$8;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$8;-><init>(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)V

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->setKidozTopBarListener(Lcom/kidoz/sdk/api/ui_views/KidozTopBar$KidozTopBarListener;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mKidozTopBar:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->showParentalLockIcon(Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mInnerContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mKidozTopBar:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public closeDialog()V
    .registers 3

    invoke-super {p0}, Lcom/kidoz/sdk/api/general/BaseDialog;->closeDialog()V

    new-instance v0, Lcom/kidoz/sdk/api/general/EventMessage;

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->WEB_PLAYER_DIALOG_CLOSED:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    invoke-direct {v0, v1}, Lcom/kidoz/sdk/api/general/EventMessage;-><init>(Lcom/kidoz/sdk/api/general/EventMessage$MessageType;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public dismiss()V
    .registers 4

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mWebPlayerType:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    if-eqz v0, :cond_2b

    sget-object v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->ROVIO:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    if-eq v0, v1, :cond_17

    sget-object v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->ONLINE_GAME:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    if-eq v0, v1, :cond_17

    sget-object v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->WEB_BROWSER:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    if-eq v0, v1, :cond_17

    sget-object v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->HTML_PLAYBACK:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    if-ne v0, v1, :cond_2b

    :cond_17
    new-instance v0, Lcom/kidoz/sdk/api/general/WidgetEventMessage;

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->PLAYER_CLOSE:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    iget-object v2, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mWidgetType:Ljava/lang/String;

    invoke-static {v2}, Lcom/kidoz/sdk/api/general/enums/WidgetType;->createFromString(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/enums/WidgetType;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/WidgetEventMessage;-><init>(Lcom/kidoz/sdk/api/general/EventMessage$MessageType;Lcom/kidoz/sdk/api/general/enums/WidgetType;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->k(Ljava/lang/Object;)V

    :cond_2b
    return-void
.end method

.method public invokeJSfunction(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mWebPlayerView:Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->staticHandler:Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    new-instance v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$9;

    invoke-direct {v1, p0, p1}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$9;-><init>(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mHtmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->staticHandler:Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    new-instance v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$10;

    invoke-direct {v1, p0, p1}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$10;-><init>(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1c

    :catch_1c
    :cond_1c
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1f

    const-string v0, "CONTENT_ITEM_SAVE_STATE_KEY_WP"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/kidoz/sdk/api/structure/ContentItem;

    iput-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    :cond_15
    const-string v0, "WEB_PLAYER_TYPE_SAVE_STATE_KEY_WP"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    iput-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mWebPlayerType:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    :cond_1f
    new-instance p1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$4;

    invoke-direct {p1, p0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$4;-><init>(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :try_start_27
    invoke-direct {p0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->initDialogView()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_46

    :catch_2b
    move-exception p1

    sget-object v0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error initDialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_46
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 10

    invoke-super {p0}, Lcom/kidoz/sdk/api/general/BaseDialog;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->staticHandler:Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mWebPlayerView:Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;

    if-eqz v0, :cond_2c

    :try_start_d
    invoke-virtual {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->releaseAndcloseView()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_2c

    :catch_11
    move-exception v0

    sget-object v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when trying to onDetach: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    :goto_2c
    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mHtmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    if-eqz v0, :cond_4f

    :try_start_30
    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->stopAndReleaseWebView()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_4f

    :catch_34
    move-exception v0

    sget-object v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when trying to mHtmlViewWrapper.stopAndReleaseWebView(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4f
    :goto_4f
    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mWebPlayerType:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    sget-object v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->EXTERNAL_LINK:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    if-eq v0, v1, :cond_84

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mWidgetType:Ljava/lang/String;

    iget-object v4, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mStyleId:Ljava/lang/String;

    sget v5, Lcom/kidoz/events/EventManager;->a:I

    iget-object v8, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mLabel:Ljava/lang/String;

    const-string v6, "Web Player"

    const-string v7, "Close Dialog"

    invoke-virtual/range {v1 .. v8}, Lcom/kidoz/events/EventManager;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mWidgetType:Ljava/lang/String;

    iget-object v3, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mStyleId:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/kidoz/events/EventManager;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    :cond_84
    return-void
.end method

.method protected onDialogVisibilityChange(I)V
    .registers 3

    invoke-super {p0, p1}, Lcom/kidoz/sdk/api/general/BaseDialog;->onDialogVisibilityChange(I)V

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->staticHandler:Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_b
    return-void
.end method

.method protected onDialogWindowVisibilityChange(Z)V
    .registers 3

    invoke-super {p0, p1}, Lcom/kidoz/sdk/api/general/BaseDialog;->onDialogWindowVisibilityChange(Z)V

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->staticHandler:Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_b
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .registers 4

    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mWebPlayerType:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    const-string v2, "WEB_PLAYER_TYPE_SAVE_STATE_KEY_WP"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_d
    return-object v0
.end method

.method protected onStart()V
    .registers 1

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    return-void
.end method

.method protected onStop()V
    .registers 1

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method

.method public openDialog()V
    .registers 11

    invoke-super {p0}, Lcom/kidoz/sdk/api/general/BaseDialog;->openDialog()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mWebPlayerType:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    sget-object v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->EXTERNAL_LINK:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    if-eq v0, v1, :cond_1d

    new-instance v0, Lcom/kidoz/sdk/api/general/WidgetEventMessage;

    sget-object v2, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->PLAYER_OPEN:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    iget-object v3, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mWidgetType:Ljava/lang/String;

    invoke-static {v3}, Lcom/kidoz/sdk/api/general/enums/WidgetType;->createFromString(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/enums/WidgetType;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/kidoz/sdk/api/general/WidgetEventMessage;-><init>(Lcom/kidoz/sdk/api/general/EventMessage$MessageType;Lcom/kidoz/sdk/api/general/enums/WidgetType;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/greenrobot/eventbus/EventBus;->k(Ljava/lang/Object;)V

    :cond_1d
    sget-object v0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$11;->$SwitchMap$com$kidoz$sdk$api$players$web_player$WebPlayerType:[I

    iget-object v2, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mWebPlayerType:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_46

    const/4 v2, 0x3

    if-eq v0, v2, :cond_41

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3c

    const/4 v2, 0x5

    if-eq v0, v2, :cond_37

    goto :goto_4f

    :cond_37
    const-string v0, "Rovio"

    iput-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mLabel:Ljava/lang/String;

    goto :goto_4f

    :cond_3c
    const-string v0, "Html"

    iput-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mLabel:Ljava/lang/String;

    goto :goto_4f

    :cond_41
    const-string v0, "Website"

    iput-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mLabel:Ljava/lang/String;

    goto :goto_4f

    :cond_46
    const-string v0, "Online Games Player"

    iput-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mLabel:Ljava/lang/String;

    goto :goto_4f

    :cond_4b
    const-string v0, "Web External Link"

    iput-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mLabel:Ljava/lang/String;

    :goto_4f
    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mWebPlayerType:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    if-eq v0, v1, :cond_90

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mWidgetType:Ljava/lang/String;

    iget-object v4, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mStyleId:Ljava/lang/String;

    sget v5, Lcom/kidoz/events/EventManager;->a:I

    iget-object v8, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mLabel:Ljava/lang/String;

    const-string v6, "Web Player"

    const-string v7, "Open Dialog"

    invoke-virtual/range {v1 .. v8}, Lcom/kidoz/events/EventManager;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v1

    iget-object v2, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mWidgetType:Ljava/lang/String;

    iget-object v3, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mStyleId:Ljava/lang/String;

    sget v4, Lcom/kidoz/events/EventManager;->b:I

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getName()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getId()Ljava/lang/String;

    move-result-object v9

    const-string v6, "Web Player"

    const-string v7, "View Duration"

    invoke-virtual/range {v1 .. v9}, Lcom/kidoz/events/EventManager;->k(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    :cond_90
    return-void
.end method

.method public setAutoCloseTimer()V
    .registers 5

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->mWebPlayerType:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    if-eqz v0, :cond_1a

    sget-object v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->EXTERNAL_LINK:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->staticHandler:Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->staticHandler:Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    new-instance v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$3;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$3;-><init>(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)V

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1a
    return-void
.end method

###### Class com.kidoz.sdk.api.players.web_player.WebPlayerDialog.AnonymousClass1 (com.kidoz.sdk.api.players.web_player.WebPlayerDialog$1)
.class Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$1;
.super Ljava/lang/Object;
.source "WebPlayerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;-><init>(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$1;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5

    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$1;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-static {p1}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$000(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    move-result-object p1

    const/4 p3, 0x1

    if-eqz p1, :cond_34

    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$1;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-static {p1}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$000(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    move-result-object p1

    sget-object v0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->ROVIO:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    if-ne p1, v0, :cond_34

    const/4 p1, 0x4

    if-ne p2, p1, :cond_34

    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$1;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-static {p1}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$100(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->getKidozWebView()Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-ne p1, p3, :cond_34

    :try_start_26
    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$1;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-static {p1}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$100(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->getKidozWebView()Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_33} :catch_34

    goto :goto_35

    :catch_34
    :cond_34
    const/4 p3, 0x0

    :goto_35
    return p3
.end method

###### Class com.kidoz.sdk.api.players.web_player.WebPlayerDialog.AnonymousClass10 (com.kidoz.sdk.api.players.web_player.WebPlayerDialog$10)
.class Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$10;
.super Ljava/lang/Object;
.source "WebPlayerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->invokeJSfunction(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

.field final synthetic val$function:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$10;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    iput-object p2, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$10;->val$function:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_15

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$10;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$500(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView;

    iget-object v1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$10;->val$function:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_30

    :cond_15
    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$10;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$500(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView;

    iget-object v1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$10;->val$function:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    goto :goto_30

    :catch_23
    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$10;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$500(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView;

    iget-object v1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$10;->val$function:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_30
    return-void
.end method

###### Class com.kidoz.sdk.api.players.web_player.WebPlayerDialog.AnonymousClass11 (com.kidoz.sdk.api.players.web_player.WebPlayerDialog$11)
.class synthetic Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$11;
.super Ljava/lang/Object;
.source "WebPlayerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$kidoz$sdk$api$players$web_player$WebPlayerType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->values()[Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$11;->$SwitchMap$com$kidoz$sdk$api$players$web_player$WebPlayerType:[I

    :try_start_9
    sget-object v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->EXTERNAL_LINK:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$11;->$SwitchMap$com$kidoz$sdk$api$players$web_player$WebPlayerType:[I

    sget-object v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->ONLINE_GAME:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$11;->$SwitchMap$com$kidoz$sdk$api$players$web_player$WebPlayerType:[I

    sget-object v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->WEB_BROWSER:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$11;->$SwitchMap$com$kidoz$sdk$api$players$web_player$WebPlayerType:[I

    sget-object v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->HTML_PLAYBACK:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$11;->$SwitchMap$com$kidoz$sdk$api$players$web_player$WebPlayerType:[I

    sget-object v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->ROVIO:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    return-void
.end method

###### Class com.kidoz.sdk.api.players.web_player.WebPlayerDialog.AnonymousClass2 (com.kidoz.sdk.api.players.web_player.WebPlayerDialog$2)
.class Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$2;
.super Ljava/lang/Object;
.source "WebPlayerDialog.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/web_unit_view/ConfigurationView$ConfigurationViewInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->initConfigurationView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewVisibilityChanged(Z)V
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    :try_start_3
    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    const-string v0, "javascript:toonsWebApi.appForeground()"

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->invokeJSfunction(Ljava/lang/String;)V

    goto :goto_12

    :cond_b
    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    const-string v0, "javascript:toonsWebApi.appBackground()"

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->invokeJSfunction(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_12} :catch_12

    :catch_12
    :goto_12
    return-void
.end method

###### Class com.kidoz.sdk.api.players.web_player.WebPlayerDialog.AnonymousClass3 (com.kidoz.sdk.api.players.web_player.WebPlayerDialog$3)
.class Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$3;
.super Ljava/lang/Object;
.source "WebPlayerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->setAutoCloseTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$3;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    :try_start_0
    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$3;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$100(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;

    move-result-object v0

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$3;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$100(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->getKidozWebView()Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    move-result-object v0

    if-eqz v0, :cond_72

    new-instance v6, Lcom/kidoz/events/a;

    invoke-direct {v6}, Lcom/kidoz/events/a;-><init>()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$3;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$200(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Lcom/kidoz/sdk/api/structure/ContentItem;

    move-result-object v0

    if-eqz v0, :cond_3f

    const-string v0, "ItemID"

    iget-object v1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$3;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-static {v1}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$200(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Lcom/kidoz/sdk/api/structure/ContentItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/kidoz/events/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AdvertiserID"

    iget-object v1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$3;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-static {v1}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$200(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Lcom/kidoz/sdk/api/structure/ContentItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getAdvertiserID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/kidoz/events/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$3;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v1

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$3;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$3;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$300(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$3;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$400(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/kidoz/events/EventManager;->a:I

    const-string v7, "WebView Error"

    const-string v8, "Error opening google start redirect"

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$3;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$100(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->getKidozWebView()Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->getLastOverloadUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v1 .. v9}, Lcom/kidoz/events/EventManager;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kidoz/events/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_72} :catch_72

    :catch_72
    :cond_72
    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$3;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->closeDialog()V

    return-void
.end method

###### Class com.kidoz.sdk.api.players.web_player.WebPlayerDialog.AnonymousClass4 (com.kidoz.sdk.api.players.web_player.WebPlayerDialog$4)
.class Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$4;
.super Ljava/lang/Object;
.source "WebPlayerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$4;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    return-void
.end method

###### Class com.kidoz.sdk.api.players.web_player.WebPlayerDialog.AnonymousClass5 (com.kidoz.sdk.api.players.web_player.WebPlayerDialog$5)
.class Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$5;
.super Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;
.source "WebPlayerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->addHtmlPlaybackView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$5;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .registers 2

    invoke-super {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;->onClose()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$5;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->closeDialog()V

    return-void
.end method

.method public onHtmlFinishedLoading()V
    .registers 2

    invoke-super {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;->onHtmlFinishedLoading()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$5;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$500(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->hideLoadingProgressView()V

    return-void
.end method

.method public onHtmlStartLoading()V
    .registers 2

    invoke-super {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;->onHtmlStartLoading()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$5;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$500(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->showLoadingProgressView()V

    return-void
.end method

###### Class com.kidoz.sdk.api.players.web_player.WebPlayerDialog.AnonymousClass6 (com.kidoz.sdk.api.players.web_player.WebPlayerDialog$6)
.class Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$6;
.super Ljava/lang/Object;
.source "WebPlayerDialog.java"

# interfaces
.implements Lcom/kidoz/sdk/api/players/web_player/WebViewVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->addWebPlayerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$6;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWebViewBecameVisible(Z)V
    .registers 3

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$6;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    const-string v0, "javascript:focus()"

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->invokeJSfunction(Ljava/lang/String;)V

    goto :goto_11

    :cond_a
    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$6;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    const-string v0, "javascript:blur()"

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->invokeJSfunction(Ljava/lang/String;)V

    :goto_11
    return-void
.end method

###### Class com.kidoz.sdk.api.players.web_player.WebPlayerDialog.AnonymousClass7 (com.kidoz.sdk.api.players.web_player.WebPlayerDialog$7)
.class Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$7;
.super Ljava/lang/Object;
.source "WebPlayerDialog.java"

# interfaces
.implements Lcom/kidoz/sdk/api/players/web_player/WebPlayerView$IOnRemoveViewRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->addWebPlayerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$7;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveView()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$7;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->closeDialog()V

    return-void
.end method

###### Class com.kidoz.sdk.api.players.web_player.WebPlayerDialog.AnonymousClass8 (com.kidoz.sdk.api.players.web_player.WebPlayerDialog$8)
.class Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$8;
.super Ljava/lang/Object;
.source "WebPlayerDialog.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/KidozTopBar$KidozTopBarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->initTopBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$8;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExitClicked(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$8;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->closeDialog()V

    return-void
.end method

###### Class com.kidoz.sdk.api.players.web_player.WebPlayerDialog.AnonymousClass9 (com.kidoz.sdk.api.players.web_player.WebPlayerDialog$9)
.class Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$9;
.super Ljava/lang/Object;
.source "WebPlayerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->invokeJSfunction(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

.field final synthetic val$function:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$9;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    iput-object p2, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$9;->val$function:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_17

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$9;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$100(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->getKidozWebView()Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$9;->val$function:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_36

    :cond_17
    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$9;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$100(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->getKidozWebView()Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$9;->val$function:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    goto :goto_36

    :catch_27
    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$9;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$100(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->getKidozWebView()Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$9;->val$function:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_36
    return-void
.end method

###### Class com.kidoz.sdk.api.players.web_player.WebPlayerDialog.WebPlayerJavaInterface (com.kidoz.sdk.api.players.web_player.WebPlayerDialog$WebPlayerJavaInterface)
.class Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface;
.super Ljava/lang/Object;
.source "WebPlayerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebPlayerJavaInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeWebView()V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$600(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    move-result-object v0

    new-instance v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface$2;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface$2;-><init>(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_2c

    :catch_f
    move-exception v0

    invoke-static {}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$700()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when trying to close web dialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2c
    return-void
.end method

.method public onInvokeCloseClick()V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$600(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    move-result-object v0

    new-instance v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface$1;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface$1;-><init>(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_2c

    :catch_f
    move-exception v0

    invoke-static {}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$700()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when trying to close web dialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2c
    return-void
.end method

###### Class com.kidoz.sdk.api.players.web_player.WebPlayerDialog.WebPlayerJavaInterface.AnonymousClass1 (com.kidoz.sdk.api.players.web_player.WebPlayerDialog$WebPlayerJavaInterface$1)
.class Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface$1;
.super Ljava/lang/Object;
.source "WebPlayerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface;->onInvokeCloseClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface$1;->this$1:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface$1;->this$1:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface;

    iget-object v0, v0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->closeDialog()V

    return-void
.end method

###### Class com.kidoz.sdk.api.players.web_player.WebPlayerDialog.WebPlayerJavaInterface.AnonymousClass2 (com.kidoz.sdk.api.players.web_player.WebPlayerDialog$WebPlayerJavaInterface$2)
.class Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface$2;
.super Ljava/lang/Object;
.source "WebPlayerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface;->closeWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface$2;->this$1:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface$2;->this$1:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface;

    iget-object v0, v0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->closeDialog()V

    return-void
.end method
