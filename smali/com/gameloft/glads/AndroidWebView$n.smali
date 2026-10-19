###### Class com.gameloft.glads.AndroidWebView.n (com.gameloft.glads.AndroidWebView$n)
.class Lcom/gameloft/glads/AndroidWebView$n;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/AndroidWebView;->PresentFullScreen(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/gameloft/glads/AndroidWebView;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/AndroidWebView;I)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/glads/AndroidWebView$n;->b:Lcom/gameloft/glads/AndroidWebView;

    iput p2, p0, Lcom/gameloft/glads/AndroidWebView$n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$n;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v1, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    if-nez v1, :cond_7

    return-void

    :cond_7
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/gameloft/glads/AndroidWebView;->isPresentingFullScreen:Z

    invoke-virtual {v0}, Lcom/gameloft/glads/AndroidWebView;->GetLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$n;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->bringToFront()V

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$n;->b:Lcom/gameloft/glads/AndroidWebView;

    iget v1, p0, Lcom/gameloft/glads/AndroidWebView$n;->a:I

    invoke-virtual {v0, v1}, Lcom/gameloft/glads/AndroidWebView;->SetOrientation(I)V

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$n;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method
