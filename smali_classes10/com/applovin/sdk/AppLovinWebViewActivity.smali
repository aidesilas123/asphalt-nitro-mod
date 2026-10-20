###### Class com.applovin.sdk.AppLovinWebViewActivity (com.applovin.sdk.AppLovinWebViewActivity)
.class public Lcom/applovin/sdk/AppLovinWebViewActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/sdk/AppLovinWebViewActivity$EventListener;
    }
.end annotation


# static fields
.field public static final EVENT_DISMISSED_VIA_BACK_BUTTON:Ljava/lang/String; = "dismissed_via_back_button"

.field public static final INTENT_EXTRA_KEY_IMMERSIVE_MODE_ON:Ljava/lang/String; = "immersive_mode_on"

.field public static final INTENT_EXTRA_KEY_LOAD_URL:Ljava/lang/String; = "load_url"

.field public static final INTENT_EXTRA_KEY_SDK_KEY:Ljava/lang/String; = "sdk_key"

.field public static final URI_PATH_WEBVIEW_EVENT:Ljava/lang/String; = "webview_event"


# instance fields
.field private final aZB:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private aZC:Ljava/lang/String;

.field private aZD:Lcom/applovin/sdk/AppLovinWebViewActivity$EventListener;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/applovin/sdk/AppLovinWebViewActivity;->aZB:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private S(Lcom/applovin/impl/sdk/n;)V
    .registers 4

    const-string v0, "WebView Activity"

    invoke-static {p0, v0}, Lcom/applovin/impl/sdk/utils/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/sdk/AppLovinWebViewActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_e

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_e
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/applovin/sdk/AppLovinWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/applovin/sdk/AppLovinWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/applovin/sdk/AppLovinWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/applovin/sdk/AppLovinWebViewActivity;->webView:Landroid/webkit/WebView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/applovin/sdk/AppLovinWebViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/applovin/sdk/AppLovinWebViewActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/applovin/sdk/AppLovinWebViewActivity$1;-><init>(Lcom/applovin/sdk/AppLovinWebViewActivity;Lcom/applovin/impl/sdk/n;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/sdk/AppLovinWebViewActivity;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .registers 2

    iput-object p1, p0, Lcom/applovin/sdk/AppLovinWebViewActivity;->webView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/sdk/AppLovinWebViewActivity;)Lcom/applovin/sdk/AppLovinWebViewActivity$EventListener;
    .registers 1

    iget-object p0, p0, Lcom/applovin/sdk/AppLovinWebViewActivity;->aZD:Lcom/applovin/sdk/AppLovinWebViewActivity$EventListener;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/sdk/AppLovinWebViewActivity;Lcom/applovin/impl/sdk/n;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/sdk/AppLovinWebViewActivity;->S(Lcom/applovin/impl/sdk/n;)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/sdk/AppLovinWebViewActivity;)Landroid/webkit/WebView;
    .registers 1

    iget-object p0, p0, Lcom/applovin/sdk/AppLovinWebViewActivity;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic c(Lcom/applovin/sdk/AppLovinWebViewActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/applovin/sdk/AppLovinWebViewActivity;->aZB:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic d(Lcom/applovin/sdk/AppLovinWebViewActivity;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/applovin/sdk/AppLovinWebViewActivity;->aZC:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public loadUrl(Ljava/lang/String;Lcom/applovin/sdk/AppLovinWebViewActivity$EventListener;)V
    .registers 4

    iput-object p2, p0, Lcom/applovin/sdk/AppLovinWebViewActivity;->aZD:Lcom/applovin/sdk/AppLovinWebViewActivity$EventListener;

    iput-object p1, p0, Lcom/applovin/sdk/AppLovinWebViewActivity;->aZC:Ljava/lang/String;

    iget-object p2, p0, Lcom/applovin/sdk/AppLovinWebViewActivity;->aZB:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p2, p0, Lcom/applovin/sdk/AppLovinWebViewActivity;->webView:Landroid/webkit/WebView;

    if-eqz p2, :cond_11

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/sdk/AppLovinWebViewActivity;->aZD:Lcom/applovin/sdk/AppLovinWebViewActivity$EventListener;

    if-eqz v0, :cond_9

    const-string v1, "dismissed_via_back_button"

    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinWebViewActivity$EventListener;->onReceivedEvent(Ljava/lang/String;)V

    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "sdk_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string p1, "AppLovinWebViewActivity"

    const-string v0, "No SDK key specified"

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/x;->H(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1e
    new-instance v0, Lcom/applovin/sdk/AppLovinSdkSettings;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/applovin/sdk/AppLovinSdkSettings;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinSdk;->a()Lcom/applovin/impl/sdk/n;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/applovin/sdk/AppLovinWebViewActivity;->S(Lcom/applovin/impl/sdk/n;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "immersive_mode_on"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_50

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1706

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_50
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "load_url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/sdk/AppLovinWebViewActivity;->aZC:Ljava/lang/String;

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_69

    iget-object p1, p0, Lcom/applovin/sdk/AppLovinWebViewActivity;->webView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/applovin/sdk/AppLovinWebViewActivity;->aZC:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_69
    return-void
.end method
