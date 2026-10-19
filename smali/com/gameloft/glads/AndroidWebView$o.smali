###### Class com.gameloft.glads.AndroidWebView.o (com.gameloft.glads.AndroidWebView$o)
.class Lcom/gameloft/glads/AndroidWebView$o;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/AndroidWebView;->Release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/glads/AndroidWebView;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/AndroidWebView;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/glads/AndroidWebView$o;->a:Lcom/gameloft/glads/AndroidWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$o;->a:Lcom/gameloft/glads/AndroidWebView;

    invoke-virtual {v0}, Lcom/gameloft/glads/AndroidWebView;->CloseFullScreen()V

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$o;->a:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_c

    return-void

    :cond_c
    new-instance v1, Landroid/webkit/WebViewClient;

    invoke-direct {v1}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$o;->a:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-static {}, Lcom/gameloft/glads/Utils;->GetParentView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/glads/AndroidWebView$o;->a:Lcom/gameloft/glads/AndroidWebView;

    iget-object v1, v1, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$o;->a:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-static {}, Lcom/gameloft/glads/Utils;->GetParentView()Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Lcom/gameloft/glads/AndroidWebView$o$a;

    invoke-direct {v2, p0, v0}, Lcom/gameloft/glads/AndroidWebView$o$a;-><init>(Lcom/gameloft/glads/AndroidWebView$o;Landroid/webkit/WebView;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$o;->a:Lcom/gameloft/glads/AndroidWebView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    return-void
.end method
