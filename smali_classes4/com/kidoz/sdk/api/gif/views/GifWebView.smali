###### Class com.kidoz.sdk.api.gif.views.GifWebView (com.kidoz.sdk.api.gif.views.GifWebView)
.class public Lcom/kidoz/sdk/api/gif/views/GifWebView;
.super Landroid/webkit/WebView;
.source "GifWebView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
