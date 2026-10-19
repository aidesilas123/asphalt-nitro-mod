###### Class com.gameloft.android2d.iap.utils.MyWebView (com.gameloft.android2d.iap.utils.MyWebView)
.class public Lcom/gameloft/android2d/iap/utils/MyWebView;
.super Landroid/app/Activity;
.source "MyWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gameloft/android2d/iap/utils/MyWebView$b;
    }
.end annotation


# static fields
.field private static a:Lcom/gameloft/android2d/iap/billings/a;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:Landroid/webkit/WebView;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gameloft/android2d/iap/utils/MyWebView;->c:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/MyWebView;->d:Landroid/webkit/WebView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gameloft/android2d/iap/utils/MyWebView;->e:Z

    iput-boolean v0, p0, Lcom/gameloft/android2d/iap/utils/MyWebView;->f:Z

    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/MyWebView;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView;->d:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "&error="

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    iget-object v2, p0, Lcom/gameloft/android2d/iap/utils/MyWebView;->d:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "&message="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$000(Lcom/gameloft/android2d/iap/utils/MyWebView;)Landroid/webkit/WebView;
    .registers 1

    iget-object p0, p0, Lcom/gameloft/android2d/iap/utils/MyWebView;->d:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$002(Lcom/gameloft/android2d/iap/utils/MyWebView;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView;->d:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$100()Lcom/gameloft/android2d/iap/billings/a;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/utils/MyWebView;->a:Lcom/gameloft/android2d/iap/billings/a;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/gameloft/android2d/iap/utils/MyWebView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView;->f:Z

    return p1
.end method

.method static synthetic access$200(Lcom/gameloft/android2d/iap/utils/MyWebView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/gameloft/android2d/iap/utils/MyWebView;->e:Z

    return p0
.end method

.method static synthetic access$202(Lcom/gameloft/android2d/iap/utils/MyWebView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView;->e:Z

    return p1
.end method

.method static synthetic access$300()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/utils/MyWebView;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/gameloft/android2d/iap/utils/MyWebView;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/gameloft/android2d/iap/utils/MyWebView;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/gameloft/android2d/iap/utils/MyWebView;)V
    .registers 1

    invoke-direct {p0}, Lcom/gameloft/android2d/iap/utils/MyWebView;->d()V

    return-void
.end method

.method static synthetic access$600(Lcom/gameloft/android2d/iap/utils/MyWebView;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/gameloft/android2d/iap/utils/MyWebView;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/gameloft/android2d/iap/utils/MyWebView;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/gameloft/android2d/iap/utils/MyWebView;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$802(Lcom/gameloft/android2d/iap/utils/MyWebView;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/gameloft/android2d/iap/utils/MyWebView;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gameloft/android2d/iap/utils/MyWebView;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Lcom/gameloft/android2d/iap/utils/MyWebView;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView;->h:Ljava/lang/String;

    return-object p1
.end method

.method private b()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/MyWebView;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView;->d:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "&id="

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/gameloft/android2d/iap/utils/MyWebView;->d:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&trxid="

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/MyWebView;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView;->d:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "&trxid="

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    iget-object v2, p0, Lcom/gameloft/android2d/iap/utils/MyWebView;->d:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&v="

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/MyWebView;->d:Landroid/webkit/WebView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_7

    :catch_7
    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static startWebView(Lcom/gameloft/android2d/iap/billings/a;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gameloft/android2d/iap/billings/a;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sput-object p0, Lcom/gameloft/android2d/iap/utils/MyWebView;->a:Lcom/gameloft/android2d/iap/billings/a;

    sput-object p1, Lcom/gameloft/android2d/iap/utils/MyWebView;->b:Ljava/lang/String;

    sput-object p2, Lcom/gameloft/android2d/iap/utils/MyWebView;->c:Ljava/util/HashMap;

    new-instance p0, Landroid/content/Intent;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Lcom/gameloft/android2d/iap/utils/MyWebView;

    invoke-direct {p0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public e()V
    .registers 2

    new-instance v0, Lcom/gameloft/android2d/iap/utils/MyWebView$a;

    invoke-direct {v0, p0}, Lcom/gameloft/android2d/iap/utils/MyWebView$a;-><init>(Lcom/gameloft/android2d/iap/utils/MyWebView;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f()V
    .registers 7

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/gameloft/android2d/iap/utils/MyWebView;->h:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    sget-object v0, Lcom/gameloft/android2d/iap/utils/MyWebView;->c:Ljava/util/HashMap;

    const v1, 0x7f1203ac

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->saveWAPPurchaseID(Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/android2d/iap/utils/MyWebView;->a:Lcom/gameloft/android2d/iap/billings/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/gameloft/android2d/iap/billings/a;->m(J)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView;->e:Z

    const v0, 0x7f0d00cd

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const v0, 0x7f0a0506

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/MyWebView;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/MyWebView;->d:Landroid/webkit/WebView;

    const-string v1, "searchBoxJavaBridge_"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/MyWebView;->d:Landroid/webkit/WebView;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/MyWebView;->d:Landroid/webkit/WebView;

    const-string v1, "accessibilityTraversal"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/MyWebView;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView;->d:Landroid/webkit/WebView;

    sget-object v0, Lcom/gameloft/android2d/iap/utils/MyWebView;->b:Ljava/lang/String;

    sget-object v1, Lcom/gameloft/android2d/iap/utils/MyWebView;->c:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView;->d:Landroid/webkit/WebView;

    new-instance v0, Lcom/gameloft/android2d/iap/utils/MyWebView$b;

    invoke-direct {v0, p0, p0}, Lcom/gameloft/android2d/iap/utils/MyWebView$b;-><init>(Lcom/gameloft/android2d/iap/utils/MyWebView;Lcom/gameloft/android2d/iap/utils/MyWebView;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/MyWebView;->d:Landroid/webkit/WebView;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/MyWebView;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2d

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/MyWebView;->d:Landroid/webkit/WebView;

    if-eqz v0, :cond_2d

    iget-boolean v1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView;->f:Z

    if-nez v1, :cond_2d

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-nez p1, :cond_26

    iget-boolean p1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView;->e:Z

    if-nez p1, :cond_2b

    const/16 p1, 0xa

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/16 p1, -0x64

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAP_CallBack;->IAP_OnPurchaseRequestCancelCallback()V

    invoke-direct {p0}, Lcom/gameloft/android2d/iap/utils/MyWebView;->d()V

    goto :goto_2b

    :cond_26
    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView;->d:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    :cond_2b
    :goto_2b
    const/4 p1, 0x1

    return p1

    :cond_2d
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    const/4 p1, 0x0

    aget-object p2, p2, p1

    const-string v0, "android.permission.SEND_SMS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    aget p1, p3, p1

    if-nez p1, :cond_13

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/MyWebView;->f()V

    goto :goto_16

    :cond_13
    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->showWarningPermissionDialog(Ljava/lang/String;)V

    :cond_16
    :goto_16
    invoke-direct {p0}, Lcom/gameloft/android2d/iap/utils/MyWebView;->d()V

    return-void
.end method
