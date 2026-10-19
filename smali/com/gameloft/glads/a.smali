###### Class com.gameloft.glads.a (com.gameloft.glads.a)
.class public Lcom/gameloft/glads/a;
.super Landroid/webkit/WebChromeClient;
.source "GLWebChromeClient.java"


# instance fields
.field a:Lcom/gameloft/glads/AndroidWebView;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/AndroidWebView;)V
    .registers 2

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object p1, p0, Lcom/gameloft/glads/a;->a:Lcom/gameloft/glads/AndroidWebView;

    return-void
.end method

.method private a(Landroid/webkit/WebView;Landroid/os/Message;)V
    .registers 7

    invoke-static {}, Lcom/gameloft/glads/Utils;->GetTime()J

    move-result-wide v0

    new-instance v2, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance p1, Lcom/gameloft/glads/a$a;

    invoke-direct {p1, p0, v0, v1}, Lcom/gameloft/glads/a$a;-><init>(Lcom/gameloft/glads/a;J)V

    invoke-virtual {v2, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/webkit/WebView$WebViewTransport;

    invoke-virtual {p1, v2}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .registers 2

    return-void
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .registers 5

    iget-object p2, p0, Lcom/gameloft/glads/a;->a:Lcom/gameloft/glads/AndroidWebView;

    iget-boolean p2, p2, Lcom/gameloft/glads/AndroidWebView;->openWithModalWebview:Z

    if-eqz p2, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    invoke-direct {p0, p1, p4}, Lcom/gameloft/glads/a;->a(Landroid/webkit/WebView;Landroid/os/Message;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .registers 3

    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    invoke-static {p2, p3}, Lcom/gameloft/glads/WebViewFileChooser;->ShowFileChooser(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result p1

    return p1
.end method

###### Class com.gameloft.glads.a.C0217a (com.gameloft.glads.a$a)
.class Lcom/gameloft/glads/a$a;
.super Landroid/webkit/WebViewClient;
.source "GLWebChromeClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/a;->a(Landroid/webkit/WebView;Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/gameloft/glads/a;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/a;J)V
    .registers 4

    iput-object p1, p0, Lcom/gameloft/glads/a$a;->b:Lcom/gameloft/glads/a;

    iput-wide p2, p0, Lcom/gameloft/glads/a$a;->a:J

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6

    iget-object p3, p0, Lcom/gameloft/glads/a$a;->b:Lcom/gameloft/glads/a;

    iget-object p3, p3, Lcom/gameloft/glads/a;->a:Lcom/gameloft/glads/AndroidWebView;

    iget-wide v0, p0, Lcom/gameloft/glads/a$a;->a:J

    invoke-virtual {p3, v0, v1, p2}, Lcom/gameloft/glads/AndroidWebView;->OnCreateWindow(JLjava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method
