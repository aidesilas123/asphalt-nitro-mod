###### Class com.gameloft.glads.AndroidWebView.m (com.gameloft.glads.AndroidWebView$m)
.class Lcom/gameloft/glads/AndroidWebView$m;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/AndroidWebView;->StartWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/glads/AndroidWebView;

.field final synthetic b:Lcom/gameloft/glads/AndroidWebView;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/AndroidWebView;Lcom/gameloft/glads/AndroidWebView;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iput-object p2, p0, Lcom/gameloft/glads/AndroidWebView$m;->a:Lcom/gameloft/glads/AndroidWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    new-instance v1, Landroid/webkit/WebView;

    invoke-static {}, Lcom/gameloft/glads/Utils;->GetContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollContainer(Z)V

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    const/high16 v2, 0x2000000

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/gameloft/glads/GLWebViewClient;

    iget-object v4, p0, Lcom/gameloft/glads/AndroidWebView$m;->a:Lcom/gameloft/glads/AndroidWebView;

    invoke-direct {v3, v4}, Lcom/gameloft/glads/GLWebViewClient;-><init>(Lcom/gameloft/glads/AndroidWebView;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/gameloft/glads/a;

    iget-object v4, p0, Lcom/gameloft/glads/AndroidWebView$m;->a:Lcom/gameloft/glads/AndroidWebView;

    invoke-direct {v3, v4}, Lcom/gameloft/glads/a;-><init>(Lcom/gameloft/glads/AndroidWebView;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_ba

    iget-object v3, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v3, v3, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    iget-object v3, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v3, v3, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    :cond_ba
    const/16 v3, 0x15

    if-lt v0, v3, :cond_c9

    iget-object v3, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v3, v3, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_c9
    const/16 v3, 0x13

    if-lt v0, v3, :cond_d8

    iget-object v3, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v3, v3, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    :cond_d8
    const/16 v2, 0x11

    if-lt v0, v2, :cond_e7

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_e7
    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/gameloft/glads/AndroidWebView$m;->a:Lcom/gameloft/glads/AndroidWebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v1, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Lcom/gameloft/glads/AndroidWebView;->GetLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/gameloft/glads/Utils;->GetParentView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v1, v1, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/gameloft/glads/WebViewJavaScriptInterface;

    iget-object v2, p0, Lcom/gameloft/glads/AndroidWebView$m;->a:Lcom/gameloft/glads/AndroidWebView;

    invoke-direct {v1, v2}, Lcom/gameloft/glads/WebViewJavaScriptInterface;-><init>(Lcom/gameloft/glads/AndroidWebView;)V

    const-string v2, "GLAdsV2"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
