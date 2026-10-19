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

###### Class com.gameloft.android2d.iap.utils.MyWebView.a (com.gameloft.android2d.iap.utils.MyWebView$a)
.class Lcom/gameloft/android2d/iap/utils/MyWebView$a;
.super Ljava/lang/Object;
.source "MyWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/utils/MyWebView;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/utils/MyWebView;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/utils/MyWebView;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$a;->a:Lcom/gameloft/android2d/iap/utils/MyWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$a;->a:Lcom/gameloft/android2d/iap/utils/MyWebView;

    const v1, 0x7f0a0506

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    invoke-static {v0, v1}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$002(Lcom/gameloft/android2d/iap/utils/MyWebView;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$a;->a:Lcom/gameloft/android2d/iap/utils/MyWebView;

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$000(Lcom/gameloft/android2d/iap/utils/MyWebView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$100()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/billings/a;->t()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1202fe

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x3

    const-string v3, "&error="

    const/4 v4, 0x1

    if-eqz v1, :cond_90

    if-eqz v0, :cond_16b

    const v1, 0x7f1203bd

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_46

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_16b

    :cond_46
    iget-object v3, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$a;->a:Lcom/gameloft/android2d/iap/utils/MyWebView;

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$200(Lcom/gameloft/android2d/iap/utils/MyWebView;)Z

    move-result v3

    if-nez v3, :cond_16b

    iget-object v3, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$a;->a:Lcom/gameloft/android2d/iap/utils/MyWebView;

    invoke-static {v3, v4}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$202(Lcom/gameloft/android2d/iap/utils/MyWebView;Z)Z

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_79

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$300()Ljava/util/HashMap;

    move-result-object v0

    const v1, 0x7f1203ac

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->saveWAPPurchaseID(Ljava/lang/String;)V

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$100()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/billings/a;->l()V

    goto :goto_89

    :cond_79
    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$a;->a:Lcom/gameloft/android2d/iap/utils/MyWebView;

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$400(Lcom/gameloft/android2d/iap/utils/MyWebView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->parseIntNumber(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    :goto_89
    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$a;->a:Lcom/gameloft/android2d/iap/utils/MyWebView;

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$500(Lcom/gameloft/android2d/iap/utils/MyWebView;)V

    goto/16 :goto_16b

    :cond_90
    iget-object v1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$a;->a:Lcom/gameloft/android2d/iap/utils/MyWebView;

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$000(Lcom/gameloft/android2d/iap/utils/MyWebView;)Landroid/webkit/WebView;

    move-result-object v1

    const v5, 0x7f1203bc

    invoke-static {v5}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->findAll(Ljava/lang/String;)I

    move-result v1

    const-string v5, "&id="

    const v6, 0x7f1203be

    if-nez v1, :cond_d1

    if-eqz v0, :cond_16b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_d1

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_d1

    const-string v1, "?error="

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_16b

    :cond_d1
    iget-object v1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$a;->a:Lcom/gameloft/android2d/iap/utils/MyWebView;

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$200(Lcom/gameloft/android2d/iap/utils/MyWebView;)Z

    move-result v1

    if-nez v1, :cond_16b

    iget-object v1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$a;->a:Lcom/gameloft/android2d/iap/utils/MyWebView;

    invoke-static {v1, v4}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$202(Lcom/gameloft/android2d/iap/utils/MyWebView;Z)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_119

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$a;->a:Lcom/gameloft/android2d/iap/utils/MyWebView;

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$600(Lcom/gameloft/android2d/iap/utils/MyWebView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->saveWAPPurchaseID(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$a;->a:Lcom/gameloft/android2d/iap/utils/MyWebView;

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$700(Lcom/gameloft/android2d/iap/utils/MyWebView;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x27

    invoke-static {v0, v1}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_SaveInfo(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gameloft/android2d/iap/utils/MyWebView$a$a;

    invoke-direct {v1, p0}, Lcom/gameloft/android2d/iap/utils/MyWebView$a$a;-><init>(Lcom/gameloft/android2d/iap/utils/MyWebView$a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_166

    :cond_119
    const v1, 0x7f1203ba

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_15f

    const v1, 0x7f1203bb

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_15f

    const v1, 0x7f1203bf

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_141

    goto :goto_15f

    :cond_141
    const-string v1, "error=E00007"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_157

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/16 v0, -0x64

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAP_CallBack;->IAP_OnPurchaseRequestCancelCallback()V

    goto :goto_166

    :cond_157
    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/4 v0, -0x5

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    goto :goto_166

    :cond_15f
    :goto_15f
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$300()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gameloft/android2d/iap/IAPLib;->CheckWPLimitation(Ljava/lang/String;Ljava/util/HashMap;)V

    :goto_166
    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$a;->a:Lcom/gameloft/android2d/iap/utils/MyWebView;

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$500(Lcom/gameloft/android2d/iap/utils/MyWebView;)V

    :cond_16b
    :goto_16b
    return-void
.end method

###### Class com.gameloft.android2d.iap.utils.MyWebView.a.RunnableC0216a (com.gameloft.android2d.iap.utils.MyWebView$a$a)
.class Lcom/gameloft/android2d/iap/utils/MyWebView$a$a;
.super Ljava/lang/Object;
.source "MyWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/utils/MyWebView$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/utils/MyWebView$a;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/utils/MyWebView$a;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$a$a;->a:Lcom/gameloft/android2d/iap/utils/MyWebView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$100()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gameloft/android2d/iap/billings/a;->k(Z)V

    return-void
.end method

###### Class com.gameloft.android2d.iap.utils.MyWebView.b (com.gameloft.android2d.iap.utils.MyWebView$b)
.class Lcom/gameloft/android2d/iap/utils/MyWebView$b;
.super Landroid/webkit/WebViewClient;
.source "MyWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/android2d/iap/utils/MyWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Landroid/app/ProgressDialog;

.field b:Lcom/gameloft/android2d/iap/utils/MyWebView;

.field final synthetic c:Lcom/gameloft/android2d/iap/utils/MyWebView;


# direct methods
.method public constructor <init>(Lcom/gameloft/android2d/iap/utils/MyWebView;Lcom/gameloft/android2d/iap/utils/MyWebView;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$b;->c:Lcom/gameloft/android2d/iap/utils/MyWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$b;->a:Landroid/app/ProgressDialog;

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$b;->b:Lcom/gameloft/android2d/iap/utils/MyWebView;

    iput-object p2, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$b;->b:Lcom/gameloft/android2d/iap/utils/MyWebView;

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$b;->c:Lcom/gameloft/android2d/iap/utils/MyWebView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$1002(Lcom/gameloft/android2d/iap/utils/MyWebView;Z)Z

    :try_start_6
    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$b;->a:Landroid/app/ProgressDialog;

    if-nez p1, :cond_14

    new-instance p1, Landroid/app/ProgressDialog;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$b;->c:Lcom/gameloft/android2d/iap/utils/MyWebView;

    invoke-direct {p1, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$b;->a:Landroid/app/ProgressDialog;

    goto :goto_1a

    :cond_14
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$b;->a:Landroid/app/ProgressDialog;

    :goto_1a
    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$b;->b:Lcom/gameloft/android2d/iap/utils/MyWebView;

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/MyWebView;->e()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$b;->c:Lcom/gameloft/android2d/iap/utils/MyWebView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$1002(Lcom/gameloft/android2d/iap/utils/MyWebView;Z)Z

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$b;->a:Landroid/app/ProgressDialog;

    if-nez p1, :cond_13

    new-instance p1, Landroid/app/ProgressDialog;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$b;->c:Lcom/gameloft/android2d/iap/utils/MyWebView;

    invoke-direct {p1, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$b;->a:Landroid/app/ProgressDialog;

    :cond_13
    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$b;->a:Landroid/app/ProgressDialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$b;->a:Landroid/app/ProgressDialog;

    const p2, 0x7f120018

    invoke-static {p2}, Lcom/gameloft/android2d/iap/utils/SUtils;->getLocalizedString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :try_start_25
    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$b;->a:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2a} :catch_2a

    :catch_2a
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$b;->a:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$b;->a:Landroid/app/ProgressDialog;

    :cond_d
    const/4 p1, 0x3

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/4 p1, -0x1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$b;->c:Lcom/gameloft/android2d/iap/utils/MyWebView;

    invoke-static {p1}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$500(Lcom/gameloft/android2d/iap/utils/MyWebView;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result p1

    const/4 p2, 0x3

    const/4 p3, 0x4

    if-eq p1, p3, :cond_16

    invoke-static {p2}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/16 p1, -0x1a

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$b;->c:Lcom/gameloft/android2d/iap/utils/MyWebView;

    invoke-static {p1}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$500(Lcom/gameloft/android2d/iap/utils/MyWebView;)V

    goto :goto_23

    :cond_16
    invoke-static {p2}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/16 p1, -0x19

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$b;->c:Lcom/gameloft/android2d/iap/utils/MyWebView;

    invoke-static {p1}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$500(Lcom/gameloft/android2d/iap/utils/MyWebView;)V

    :goto_23
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$100()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/billings/a;->t()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f1202fe

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_82

    if-eqz p2, :cond_82

    const-string p1, "sms:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_82

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const-string v1, "?body="

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$b;->c:Lcom/gameloft/android2d/iap/utils/MyWebView;

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p2, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$802(Lcom/gameloft/android2d/iap/utils/MyWebView;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$b;->c:Lcom/gameloft/android2d/iap/utils/MyWebView;

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$902(Lcom/gameloft/android2d/iap/utils/MyWebView;Ljava/lang/String;)Ljava/lang/String;

    :try_start_40
    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$b;->c:Lcom/gameloft/android2d/iap/utils/MyWebView;

    invoke-static {p1}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$900(Lcom/gameloft/android2d/iap/utils/MyWebView;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "utf-8"

    invoke-static {p2, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$902(Lcom/gameloft/android2d/iap/utils/MyWebView;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_40 .. :try_end_4f} :catch_50

    goto :goto_51

    :catch_50
    nop

    :goto_51
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x16

    if-le p1, p2, :cond_76

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$b;->b:Lcom/gameloft/android2d/iap/utils/MyWebView;

    const-string p2, "android.permission.SEND_SMS"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_6b

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$b;->b:Lcom/gameloft/android2d/iap/utils/MyWebView;

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_80

    :cond_6b
    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$b;->c:Lcom/gameloft/android2d/iap/utils/MyWebView;

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/MyWebView;->f()V

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$b;->c:Lcom/gameloft/android2d/iap/utils/MyWebView;

    invoke-static {p1}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$500(Lcom/gameloft/android2d/iap/utils/MyWebView;)V

    goto :goto_80

    :cond_76
    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$b;->c:Lcom/gameloft/android2d/iap/utils/MyWebView;

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/MyWebView;->f()V

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$b;->c:Lcom/gameloft/android2d/iap/utils/MyWebView;

    invoke-static {p1}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$500(Lcom/gameloft/android2d/iap/utils/MyWebView;)V

    :goto_80
    const/4 p1, 0x1

    return p1

    :cond_82
    return v0
.end method
