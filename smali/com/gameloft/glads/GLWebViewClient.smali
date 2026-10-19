###### Class com.gameloft.glads.GLWebViewClient (com.gameloft.glads.GLWebViewClient)
.class public Lcom/gameloft/glads/GLWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "GLWebViewClient.java"


# instance fields
.field a:Lcom/gameloft/glads/AndroidWebView;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/AndroidWebView;)V
    .registers 2

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p1, p0, Lcom/gameloft/glads/GLWebViewClient;->a:Lcom/gameloft/glads/AndroidWebView;

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/gameloft/glads/GLWebViewClient;->a:Lcom/gameloft/glads/AndroidWebView;

    invoke-virtual {p1}, Lcom/gameloft/glads/AndroidWebView;->OnFinishLoad()V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/gameloft/glads/GLWebViewClient;->a:Lcom/gameloft/glads/AndroidWebView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gameloft/glads/AndroidWebView;->OnFailedLoad(Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    iget-object p1, p0, Lcom/gameloft/glads/GLWebViewClient;->a:Lcom/gameloft/glads/AndroidWebView;

    invoke-virtual {p1}, Lcom/gameloft/glads/AndroidWebView;->OnWebViewCrashed()V

    const/4 p1, 0x1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6

    const-string v0, "mwvparams:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    iget-object p1, p0, Lcom/gameloft/glads/GLWebViewClient;->a:Lcom/gameloft/glads/AndroidWebView;

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/gameloft/glads/AndroidWebView;->modalWebviewParams:Ljava/lang/String;

    return v2

    :cond_14
    iget-object v0, p0, Lcom/gameloft/glads/GLWebViewClient;->a:Lcom/gameloft/glads/AndroidWebView;

    invoke-virtual {v0, p2}, Lcom/gameloft/glads/AndroidWebView;->ShouldOpenURL(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    return v2

    :cond_1d
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
