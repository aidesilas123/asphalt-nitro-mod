###### Class com.gameloft.glads.AndroidWebView.o.a (com.gameloft.glads.AndroidWebView$o$a)
.class Lcom/gameloft/glads/AndroidWebView$o$a;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/AndroidWebView$o;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Lcom/gameloft/glads/AndroidWebView$o;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/AndroidWebView$o;Landroid/webkit/WebView;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/glads/AndroidWebView$o$a;->b:Lcom/gameloft/glads/AndroidWebView$o;

    iput-object p2, p0, Lcom/gameloft/glads/AndroidWebView$o$a;->a:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$o$a;->a:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
