###### Class com.gameloft.glads.AndroidWebView.a (com.gameloft.glads.AndroidWebView$a)
.class Lcom/gameloft/glads/AndroidWebView$a;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/AndroidWebView;->LoadHTMLString(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/gameloft/glads/AndroidWebView;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/AndroidWebView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/gameloft/glads/AndroidWebView$a;->c:Lcom/gameloft/glads/AndroidWebView;

    iput-object p2, p0, Lcom/gameloft/glads/AndroidWebView$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/gameloft/glads/AndroidWebView$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$a;->c:Lcom/gameloft/glads/AndroidWebView;

    iget-object v1, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    if-nez v1, :cond_7

    return-void

    :cond_7
    iget-object v2, p0, Lcom/gameloft/glads/AndroidWebView$a;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/gameloft/glads/AndroidWebView$a;->b:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
