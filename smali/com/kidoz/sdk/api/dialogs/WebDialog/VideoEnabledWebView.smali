###### Class com.kidoz.sdk.api.dialogs.WebDialog.VideoEnabledWebView (com.kidoz.sdk.api.dialogs.WebDialog.VideoEnabledWebView)
.class public Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;
.super Landroid/webkit/WebView;
.source "VideoEnabledWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView$VideoJavaScriptInterface;,
        Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView$ConfigurationChangeListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private addedJavascriptInterface:Z

.field private mConfigurationChangeListener:Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView$ConfigurationChangeListener;

.field private videoEnabledWebChromeClient:Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozWebChromeClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const-class p1, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;->TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;->init()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;->addedJavascriptInterface:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class p1, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;->TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;->init()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;->addedJavascriptInterface:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-class p1, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;->TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;->init()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;->addedJavascriptInterface:Z

    return-void
.end method

.method static synthetic access$000(Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;)Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozWebChromeClient;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;->videoEnabledWebChromeClient:Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozWebChromeClient;

    return-object p0
.end method

.method private addJavascriptInterface()V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;->addedJavascriptInterface:Z

    if-nez v0, :cond_11

    new-instance v0, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView$VideoJavaScriptInterface;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView$VideoJavaScriptInterface;-><init>(Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;)V

    const-string v1, "_VideoEnabledWebView"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;->addedJavascriptInterface:Z

    :cond_11
    return-void
.end method

.method private init()V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_e

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_e
    const/16 v2, 0x11

    if-lt v0, v2, :cond_19

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_19
    new-instance v0, Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozWebChromeClient;

    invoke-direct {v0}, Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozWebChromeClient;-><init>()V

    iput-object v0, p0, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;->videoEnabledWebChromeClient:Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozWebChromeClient;

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method


# virtual methods
.method public invokeJS(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;->addJavascriptInterface()V

    :try_start_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_e

    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_15

    :cond_e
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_11} :catch_12

    goto :goto_15

    :catch_12
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_15
    return-void
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;->addJavascriptInterface()V

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;->addJavascriptInterface()V

    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;->addJavascriptInterface()V

    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;->addJavascriptInterface()V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public loadVideo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>loadVideo: Domain = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nURL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:initVideoPlayer(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;->invokeJS(Ljava/lang/String;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/webkit/WebView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;->mConfigurationChangeListener:Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView$ConfigurationChangeListener;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView$ConfigurationChangeListener;->onConfigChange()V

    :cond_a
    return-void
.end method

.method public pauseVideo()V
    .registers 2

    const-string v0, "javascript:pause()"

    invoke-virtual {p0, v0}, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;->invokeJS(Ljava/lang/String;)V

    return-void
.end method

.method public refreshVideo()V
    .registers 2

    const-string v0, "javascript:refresh()"

    invoke-virtual {p0, v0}, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;->invokeJS(Ljava/lang/String;)V

    return-void
.end method

.method public requestCurrentVideoTime()V
    .registers 2

    const-string v0, "javascript:requestCurrentVideoTime()"

    invoke-virtual {p0, v0}, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;->invokeJS(Ljava/lang/String;)V

    return-void
.end method

.method public resumeVideo()V
    .registers 2

    const-string v0, "javascript:resume()"

    invoke-virtual {p0, v0}, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;->invokeJS(Ljava/lang/String;)V

    return-void
.end method

.method public seekTo(I)V
    .registers 5

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>VIDEO TIME: Seek to (in seconds) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 p1, p1, 0x3e8

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:seek(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;->invokeJS(Ljava/lang/String;)V

    return-void
.end method

.method public setOnConfigurationChangeListener(Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView$ConfigurationChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;->mConfigurationChangeListener:Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView$ConfigurationChangeListener;

    return-void
.end method

.method public stopVideo()V
    .registers 2

    const-string v0, "javascript:stop()"

    invoke-virtual {p0, v0}, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;->invokeJS(Ljava/lang/String;)V

    return-void
.end method
