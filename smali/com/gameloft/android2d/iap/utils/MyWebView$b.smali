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
