###### Class com.gameloft.glads.AndroidWebView.g (com.gameloft.glads.AndroidWebView$g)
.class Lcom/gameloft/glads/AndroidWebView$g;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/AndroidWebView;->RemoveButton(I)V
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

    iput-object p1, p0, Lcom/gameloft/glads/AndroidWebView$g;->b:Lcom/gameloft/glads/AndroidWebView;

    iput p2, p0, Lcom/gameloft/glads/AndroidWebView$g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$g;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v1, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    if-nez v1, :cond_7

    return-void

    :cond_7
    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->buttons:Ljava/util/HashMap;

    iget v1, p0, Lcom/gameloft/glads/AndroidWebView$g;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_1e

    iget-object v1, p0, Lcom/gameloft/glads/AndroidWebView$g;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v1, v1, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->removeView(Landroid/view/View;)V

    :cond_1e
    return-void
.end method
