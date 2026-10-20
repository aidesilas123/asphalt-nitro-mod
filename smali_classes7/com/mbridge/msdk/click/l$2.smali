###### Class com.mbridge.msdk.click.l.AnonymousClass2 (com.mbridge.msdk.click.l$2)
.class final Lcom/mbridge/msdk/click/l$2;
.super Landroid/webkit/WebViewClient;
.source "WebViewSpider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/click/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/mbridge/msdk/click/l;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/click/l;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 5

    iput-object p1, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    iput-object p2, p0, Lcom/mbridge/msdk/click/l$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mbridge/msdk/click/l$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/mbridge/msdk/click/l$2;->c:Landroid/content/Context;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    :try_start_3
    const-string p2, "javascript:window.navigator.vibrate([]);"

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_d
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    :try_start_0
    const-string p3, "javascript:window.navigator.vibrate([]);"

    invoke-virtual {p1, p3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {p3}, Lcom/mbridge/msdk/click/l;->b(Lcom/mbridge/msdk/click/l;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_19

    iget-object p1, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {p1, v0}, Lcom/mbridge/msdk/click/l;->a(Lcom/mbridge/msdk/click/l;I)I

    iget-object p1, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {p1}, Lcom/mbridge/msdk/click/l;->c(Lcom/mbridge/msdk/click/l;)V

    return-void

    :cond_19
    iget-object p3, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    iput-boolean v0, p3, Lcom/mbridge/msdk/click/l;->c:Z

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTag()Ljava/lang/Object;

    move-result-object p3

    const/4 v0, 0x1

    if-nez p3, :cond_2a

    const-string p3, "has_first_started"

    invoke-virtual {p1, p3}, Landroid/webkit/WebView;->setTag(Ljava/lang/Object;)V

    goto :goto_2e

    :cond_2a
    iget-object p1, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    iput-boolean v0, p1, Lcom/mbridge/msdk/click/l;->b:Z

    :goto_2e
    invoke-static {}, Lcom/mbridge/msdk/click/l;->a()Ljava/lang/String;

    move-result-object p1

    monitor-enter p1
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_61

    :try_start_33
    iget-object p3, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {p3, p2}, Lcom/mbridge/msdk/click/l;->a(Lcom/mbridge/msdk/click/l;Ljava/lang/String;)Ljava/lang/String;

    iget-object p3, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {p3}, Lcom/mbridge/msdk/click/l;->d(Lcom/mbridge/msdk/click/l;)Lcom/mbridge/msdk/click/l$a;

    move-result-object p3

    if-eqz p3, :cond_57

    iget-object p3, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {p3}, Lcom/mbridge/msdk/click/l;->d(Lcom/mbridge/msdk/click/l;)Lcom/mbridge/msdk/click/l$a;

    move-result-object p3

    invoke-interface {p3, p2}, Lcom/mbridge/msdk/click/l$a;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_57

    iget-object p2, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {p2, v0}, Lcom/mbridge/msdk/click/l;->a(Lcom/mbridge/msdk/click/l;Z)Z

    iget-object p2, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {p2}, Lcom/mbridge/msdk/click/l;->c(Lcom/mbridge/msdk/click/l;)V

    goto :goto_5c

    :cond_57
    iget-object p2, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {p2}, Lcom/mbridge/msdk/click/l;->e(Lcom/mbridge/msdk/click/l;)V

    :goto_5c
    monitor-exit p1

    goto :goto_65

    :catchall_5e
    move-exception p2

    monitor-exit p1
    :try_end_60
    .catchall {:try_start_33 .. :try_end_60} :catchall_5e

    :try_start_60
    throw p2
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_61} :catch_61

    :catch_61
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_65
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-static {}, Lcom/mbridge/msdk/click/l;->a()Ljava/lang/String;

    move-result-object p4

    monitor-enter p4

    :try_start_5
    iget-object v0, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/click/l;->a(Lcom/mbridge/msdk/click/l;Z)Z

    iget-object v0, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {v0}, Lcom/mbridge/msdk/click/l;->j(Lcom/mbridge/msdk/click/l;)V

    iget-object v0, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {v0}, Lcom/mbridge/msdk/click/l;->c(Lcom/mbridge/msdk/click/l;)V

    monitor-exit p4
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_32

    iget-object p4, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {p4}, Lcom/mbridge/msdk/click/l;->d(Lcom/mbridge/msdk/click/l;)Lcom/mbridge/msdk/click/l$a;

    move-result-object p4

    if-eqz p4, :cond_31

    iget-object p4, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {p4}, Lcom/mbridge/msdk/click/l;->d(Lcom/mbridge/msdk/click/l;)Lcom/mbridge/msdk/click/l$a;

    move-result-object p4

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {v0}, Lcom/mbridge/msdk/click/l;->k(Lcom/mbridge/msdk/click/l;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, p2, p1, p3, v0}, Lcom/mbridge/msdk/click/l$a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    return-void

    :catchall_32
    move-exception p1

    :try_start_33
    monitor-exit p4
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p1
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 5

    :try_start_0
    sget-boolean p3, Lcom/mbridge/msdk/MBridgeConstans;->IS_SP_CBT_CF:Z

    if-eqz p3, :cond_9

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    :cond_9
    iget-object p2, p0, Lcom/mbridge/msdk/click/l$2;->a:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_30

    iget-object p2, p0, Lcom/mbridge/msdk/click/l$2;->b:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_30

    new-instance p2, Lcom/mbridge/msdk/foundation/same/report/p;

    iget-object p3, p0, Lcom/mbridge/msdk/click/l$2;->c:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/mbridge/msdk/foundation/same/report/p;-><init>(Landroid/content/Context;)V

    iget-object p3, p0, Lcom/mbridge/msdk/click/l$2;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/mbridge/msdk/click/l$2;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, v0, p1}, Lcom/mbridge/msdk/foundation/same/report/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_30

    :catch_2c
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_30
    :goto_30
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6

    invoke-static {}, Lcom/mbridge/msdk/click/l;->a()Ljava/lang/String;

    move-result-object p1

    monitor-enter p1

    :try_start_5
    iget-object v0, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mbridge/msdk/click/l;->c:Z

    invoke-static {v0}, Lcom/mbridge/msdk/click/l;->f(Lcom/mbridge/msdk/click/l;)V

    iget-object v0, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {v0}, Lcom/mbridge/msdk/click/l;->b(Lcom/mbridge/msdk/click/l;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object p2, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {p2}, Lcom/mbridge/msdk/click/l;->g(Lcom/mbridge/msdk/click/l;)V

    iget-object p2, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {p2}, Lcom/mbridge/msdk/click/l;->c(Lcom/mbridge/msdk/click/l;)V

    monitor-exit p1

    return v1

    :cond_21
    iget-object v0, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {v0, p2}, Lcom/mbridge/msdk/click/l;->a(Lcom/mbridge/msdk/click/l;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {v0}, Lcom/mbridge/msdk/click/l;->d(Lcom/mbridge/msdk/click/l;)Lcom/mbridge/msdk/click/l$a;

    move-result-object v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {v0}, Lcom/mbridge/msdk/click/l;->d(Lcom/mbridge/msdk/click/l;)Lcom/mbridge/msdk/click/l$a;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/mbridge/msdk/click/l$a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object p2, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {p2, v1}, Lcom/mbridge/msdk/click/l;->a(Lcom/mbridge/msdk/click/l;Z)Z

    iget-object p2, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {p2}, Lcom/mbridge/msdk/click/l;->g(Lcom/mbridge/msdk/click/l;)V

    iget-object p2, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {p2}, Lcom/mbridge/msdk/click/l;->c(Lcom/mbridge/msdk/click/l;)V

    monitor-exit p1

    return v1

    :cond_4b
    monitor-exit p1
    :try_end_4c
    .catchall {:try_start_5 .. :try_end_4c} :catchall_88

    iget-object p1, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {p1}, Lcom/mbridge/msdk/click/l;->h(Lcom/mbridge/msdk/click/l;)Z

    move-result p1

    if-eqz p1, :cond_7e

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {v0}, Lcom/mbridge/msdk/click/l;->i(Lcom/mbridge/msdk/click/l;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_74

    const-string v0, "Referer"

    iget-object v2, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {v2}, Lcom/mbridge/msdk/click/l;->i(Lcom/mbridge/msdk/click/l;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_74
    iget-object v0, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {v0}, Lcom/mbridge/msdk/click/l;->i(Lcom/mbridge/msdk/click/l;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_87

    :cond_7e
    iget-object p1, p0, Lcom/mbridge/msdk/click/l$2;->d:Lcom/mbridge/msdk/click/l;

    invoke-static {p1}, Lcom/mbridge/msdk/click/l;->i(Lcom/mbridge/msdk/click/l;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_87
    return v1

    :catchall_88
    move-exception p2

    :try_start_89
    monitor-exit p1
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    throw p2
.end method
