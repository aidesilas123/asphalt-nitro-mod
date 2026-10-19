###### Class com.gameloft.glads.AndroidWebView.b (com.gameloft.glads.AndroidWebView$b)
.class Lcom/gameloft/glads/AndroidWebView$b;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/AndroidWebView;->LoadURL(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/gameloft/glads/AndroidWebView;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/AndroidWebView;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/glads/AndroidWebView$b;->b:Lcom/gameloft/glads/AndroidWebView;

    iput-object p2, p0, Lcom/gameloft/glads/AndroidWebView$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$b;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v1, p0, Lcom/gameloft/glads/AndroidWebView$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
