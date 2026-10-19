###### Class com.gameloft.glads.AndroidWebView.p (com.gameloft.glads.AndroidWebView$p)
.class Lcom/gameloft/glads/AndroidWebView$p;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/AndroidWebView;->SetBounds(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/gameloft/glads/AndroidWebView;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/AndroidWebView;IIII)V
    .registers 6

    iput-object p1, p0, Lcom/gameloft/glads/AndroidWebView$p;->e:Lcom/gameloft/glads/AndroidWebView;

    iput p2, p0, Lcom/gameloft/glads/AndroidWebView$p;->a:I

    iput p3, p0, Lcom/gameloft/glads/AndroidWebView$p;->b:I

    iput p4, p0, Lcom/gameloft/glads/AndroidWebView$p;->c:I

    iput p5, p0, Lcom/gameloft/glads/AndroidWebView$p;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$p;->e:Lcom/gameloft/glads/AndroidWebView;

    iget-object v1, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    if-nez v1, :cond_7

    return-void

    :cond_7
    iget v2, p0, Lcom/gameloft/glads/AndroidWebView$p;->a:I

    iget v3, p0, Lcom/gameloft/glads/AndroidWebView$p;->b:I

    iget v4, p0, Lcom/gameloft/glads/AndroidWebView$p;->c:I

    iget v5, p0, Lcom/gameloft/glads/AndroidWebView$p;->d:I

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/gameloft/glads/AndroidWebView;->GetLayoutParams(IIII)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
