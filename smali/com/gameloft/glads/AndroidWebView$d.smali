###### Class com.gameloft.glads.AndroidWebView.d (com.gameloft.glads.AndroidWebView$d)
.class Lcom/gameloft/glads/AndroidWebView$d;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/AndroidWebView;->EvaluateJavaScript(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/gameloft/glads/AndroidWebView;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/AndroidWebView;Ljava/lang/String;I)V
    .registers 4

    iput-object p1, p0, Lcom/gameloft/glads/AndroidWebView$d;->c:Lcom/gameloft/glads/AndroidWebView;

    iput-object p2, p0, Lcom/gameloft/glads/AndroidWebView$d;->a:Ljava/lang/String;

    iput p3, p0, Lcom/gameloft/glads/AndroidWebView$d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$d;->c:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/gameloft/glads/AndroidWebView$d;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/gameloft/glads/AndroidWebView$d;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "javascript:GLAdsV2.OnJavaScriptEvaluated(eval(\"%s\"), %d);"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
