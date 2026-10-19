###### Class com.gameloft.glads.WebViewJavaScriptInterface (com.gameloft.glads.WebViewJavaScriptInterface)
.class public Lcom/gameloft/glads/WebViewJavaScriptInterface;
.super Ljava/lang/Object;
.source "WebViewJavaScriptInterface.java"


# instance fields
.field view:Lcom/gameloft/glads/AndroidWebView;


# direct methods
.method public constructor <init>(Lcom/gameloft/glads/AndroidWebView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gameloft/glads/WebViewJavaScriptInterface;->view:Lcom/gameloft/glads/AndroidWebView;

    return-void
.end method


# virtual methods
.method public OnJavaScriptEvaluated(Ljava/lang/String;I)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/gameloft/glads/WebViewJavaScriptInterface;->view:Lcom/gameloft/glads/AndroidWebView;

    invoke-virtual {v0, p1, p2}, Lcom/gameloft/glads/AndroidWebView;->OnJavaScriptEvaluated(Ljava/lang/String;I)V

    return-void
.end method
