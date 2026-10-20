###### Class com.tapjoy.internal.q9 (com.tapjoy.internal.q9)
.class public final Lcom/tapjoy/internal/q9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tapjoy/h0;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/tapjoy/w0;


# direct methods
.method public constructor <init>(Lcom/tapjoy/w0;Lcom/tapjoy/h0;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/tapjoy/internal/q9;->c:Lcom/tapjoy/w0;

    iput-object p2, p0, Lcom/tapjoy/internal/q9;->a:Lcom/tapjoy/h0;

    iput-object p3, p0, Lcom/tapjoy/internal/q9;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    iget-object v0, p0, Lcom/tapjoy/internal/q9;->a:Lcom/tapjoy/h0;

    iget v0, v0, Lcom/tapjoy/h0;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_34

    iget-object v0, p0, Lcom/tapjoy/internal/q9;->c:Lcom/tapjoy/w0;

    iget-object v0, v0, Lcom/tapjoy/w0;->b:Lcom/tapjoy/TJOfferwallDiscoverView;

    iget-object v0, v0, Lcom/tapjoy/TJOfferwallDiscoverView;->c:Lcom/tapjoy/TJOfferwallDiscoverListener;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Lcom/tapjoy/TJOfferwallDiscoverListener;->requestSuccess()V

    :cond_13
    iget-object v0, p0, Lcom/tapjoy/internal/q9;->c:Lcom/tapjoy/w0;

    iget-object v0, v0, Lcom/tapjoy/w0;->b:Lcom/tapjoy/TJOfferwallDiscoverView;

    iget-object v1, p0, Lcom/tapjoy/internal/q9;->a:Lcom/tapjoy/h0;

    iput-object v1, v0, Lcom/tapjoy/TJOfferwallDiscoverView;->d:Lcom/tapjoy/h0;

    iget-object v2, v0, Lcom/tapjoy/TJOfferwallDiscoverView;->a:Lcom/tapjoy/TJWebView;

    if-eqz v2, :cond_2c

    iget-object v3, p0, Lcom/tapjoy/internal/q9;->b:Ljava/lang/String;

    iget-object v4, v1, Lcom/tapjoy/h0;->d:Ljava/lang/String;

    const/4 v7, 0x0

    const-string v5, "text/html"

    const-string v6, "charset=UTF-8"

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4d

    :cond_2c
    const-string v0, "TJOfferwallDiscoverView"

    const-string v1, "Webview is null"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4d

    :cond_34
    iget-object v1, p0, Lcom/tapjoy/internal/q9;->c:Lcom/tapjoy/w0;

    iget-object v1, v1, Lcom/tapjoy/w0;->b:Lcom/tapjoy/TJOfferwallDiscoverView;

    iget-object v1, v1, Lcom/tapjoy/TJOfferwallDiscoverView;->c:Lcom/tapjoy/TJOfferwallDiscoverListener;

    if-eqz v1, :cond_46

    new-instance v2, Lcom/tapjoy/r;

    const-string v3, "Unknown Error"

    invoke-direct {v2, v0, v3}, Lcom/tapjoy/r;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/tapjoy/TJOfferwallDiscoverListener;->requestFailure(Lcom/tapjoy/r;)V

    :cond_46
    iget-object v0, p0, Lcom/tapjoy/internal/q9;->c:Lcom/tapjoy/w0;

    iget-object v0, v0, Lcom/tapjoy/w0;->b:Lcom/tapjoy/TJOfferwallDiscoverView;

    invoke-virtual {v0}, Lcom/tapjoy/TJOfferwallDiscoverView;->a()V

    :goto_4d
    return-void
.end method
