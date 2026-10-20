###### Class com.fyber.inneractive.sdk.web.s (com.fyber.inneractive.sdk.web.s)
.class public Lcom/fyber/inneractive/sdk/web/s;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:I

.field public final d:I

.field public e:Lcom/fyber/inneractive/sdk/web/f;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/web/f;ZIII)V
    .registers 6

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/s;->e:Lcom/fyber/inneractive/sdk/web/f;

    iput-boolean p2, p0, Lcom/fyber/inneractive/sdk/web/s;->a:Z

    iput p3, p0, Lcom/fyber/inneractive/sdk/web/s;->b:I

    iput p4, p0, Lcom/fyber/inneractive/sdk/web/s;->c:I

    iput p5, p0, Lcom/fyber/inneractive/sdk/web/s;->d:I

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 8

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    sget p1, Lcom/fyber/inneractive/sdk/util/IAlog;->a:I

    const/4 p1, 0x2

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "RESOURCES"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v3, 0x0

    const-string v4, "%s %s"

    invoke-static {v1, v3, v4, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(ILjava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/s;->e:Lcom/fyber/inneractive/sdk/web/f;

    if-eqz v0, :cond_3f

    check-cast v0, Lcom/fyber/inneractive/sdk/web/d;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3f

    const-string v3, "http://"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-static {}, Lcom/fyber/inneractive/sdk/util/p;->a()Z

    move-result v3

    if-nez v3, :cond_3f

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    aput-object p2, p1, v1

    const-string p2, "%s Found a portential unsecure resource url: %s"

    invoke-static {p2, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3f
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/web/s;->e:Lcom/fyber/inneractive/sdk/web/f;

    if-eqz p2, :cond_a

    invoke-interface {p2, p1}, Lcom/fyber/inneractive/sdk/web/f;->a(Landroid/webkit/WebView;)V

    :cond_a
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/web/s;->e:Lcom/fyber/inneractive/sdk/web/f;

    if-eqz p1, :cond_d

    invoke-interface {p1, p2}, Lcom/fyber/inneractive/sdk/web/f;->a(I)V

    :cond_d
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "onWebViewRenderProcessGone called for web view! %s"

    invoke-static {p1, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    :cond_10
    new-array p1, v0, [Ljava/lang/Object;

    if-eqz p2, :cond_1c

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result p2

    if-eqz p2, :cond_1c

    const/4 p2, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p2, 0x0

    :goto_1d
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "onWebViewRenderProcessGone detail: did crash = %s"

    invoke-static {p2, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/web/s;->e:Lcom/fyber/inneractive/sdk/web/f;

    if-eqz p1, :cond_38

    check-cast p1, Lcom/fyber/inneractive/sdk/web/d;

    iget-object p2, p1, Lcom/fyber/inneractive/sdk/web/d;->g:Lcom/fyber/inneractive/sdk/web/d0;

    if-eqz p2, :cond_35

    invoke-interface {p2}, Lcom/fyber/inneractive/sdk/web/d0;->b()V

    :cond_35
    invoke-virtual {p1, v0}, Lcom/fyber/inneractive/sdk/web/d;->b(Z)V

    :cond_38
    return v0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .registers 12

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/web/s;->a:Z

    if-eqz v0, :cond_d5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_d5

    if-eqz p2, :cond_d5

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getMethod()Ljava/lang/String;

    sget-object v0, Lcom/fyber/inneractive/sdk/web/z;->c:Lcom/fyber/inneractive/sdk/web/z;

    iget v1, p0, Lcom/fyber/inneractive/sdk/web/s;->b:I

    iget v2, p0, Lcom/fyber/inneractive/sdk/web/s;->c:I

    iget v3, p0, Lcom/fyber/inneractive/sdk/web/s;->d:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_cf

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_cf

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v6, "http"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_cf

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    const-string v6, "GET"

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_cf

    iget-object v4, v0, Lcom/fyber/inneractive/sdk/web/z;->a:Lcom/fyber/inneractive/sdk/web/x;

    new-instance v6, Lcom/fyber/inneractive/sdk/web/b0;

    invoke-direct {v6, p2}, Lcom/fyber/inneractive/sdk/web/b0;-><init>(Landroid/webkit/WebResourceRequest;)V

    invoke-virtual {v4, v6}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fyber/inneractive/sdk/web/a0;

    if-eqz v4, :cond_5c

    invoke-virtual {v4}, Lcom/fyber/inneractive/sdk/web/a0;->b()Landroid/webkit/WebResourceResponse;

    move-result-object v5

    goto/16 :goto_cf

    :cond_5c
    :try_start_5c
    new-instance v4, Ljava/net/URL;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/net/MalformedURLException; {:try_start_5c .. :try_end_69} :catch_6a

    goto :goto_6b

    :catch_6a
    move-object v4, v5

    :goto_6b
    if-eqz v4, :cond_cf

    sget-object v6, Lcom/fyber/inneractive/sdk/util/d;->b:Lcom/fyber/inneractive/sdk/util/d;

    invoke-virtual {v6}, Lcom/fyber/inneractive/sdk/util/d;->b()Ljava/nio/ByteBuffer;

    move-result-object v6

    const/4 v7, 0x0

    :try_start_74
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_7a
    .catchall {:try_start_74 .. :try_end_7a} :catchall_8a

    :try_start_7a
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-static {p2, v4}, Lcom/fyber/inneractive/sdk/web/z;->a(Landroid/webkit/WebResourceRequest;Ljava/net/HttpURLConnection;)V
    :try_end_87
    .catchall {:try_start_7a .. :try_end_87} :catchall_88

    goto :goto_8b

    :catchall_88
    nop

    goto :goto_8b

    :catchall_8a
    move-object v4, v5

    :goto_8b
    if-eqz v4, :cond_cf

    invoke-virtual {v4, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v4, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    move-object v1, v5

    :goto_94
    if-lez v3, :cond_a4

    :try_start_96
    invoke-static {v4, v6}, Lcom/fyber/inneractive/sdk/web/z;->a(Ljava/net/HttpURLConnection;Ljava/nio/ByteBuffer;)Lcom/fyber/inneractive/sdk/web/a0;

    move-result-object v1
    :try_end_9a
    .catch Ljava/net/UnknownHostException; {:try_start_96 .. :try_end_9a} :catch_9d
    .catch Ljava/net/SocketTimeoutException; {:try_start_96 .. :try_end_9a} :catch_9d
    .catchall {:try_start_96 .. :try_end_9a} :catchall_9b

    goto :goto_9e

    :catchall_9b
    const/4 v3, 0x0

    goto :goto_9e

    :catch_9d
    nop

    :goto_9e
    if-eqz v1, :cond_a1

    goto :goto_a4

    :cond_a1
    add-int/lit8 v3, v3, -0x1

    goto :goto_94

    :cond_a4
    :goto_a4
    if-eqz v1, :cond_c5

    :try_start_a6
    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/web/a0;->a()Z

    move-result v2

    if-eqz v2, :cond_b6

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/z;->a:Lcom/fyber/inneractive/sdk/web/x;

    new-instance v2, Lcom/fyber/inneractive/sdk/web/b0;

    invoke-direct {v2, p2}, Lcom/fyber/inneractive/sdk/web/b0;-><init>(Landroid/webkit/WebResourceRequest;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b6
    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/web/a0;->b()Landroid/webkit/WebResourceResponse;

    move-result-object v5
    :try_end_ba
    .catchall {:try_start_a6 .. :try_end_ba} :catchall_c5

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    sget-object v0, Lcom/fyber/inneractive/sdk/util/d;->b:Lcom/fyber/inneractive/sdk/util/d;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/util/d;->a:Ljava/util/Queue;

    invoke-interface {v0, v6}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_cf

    :catchall_c5
    :cond_c5
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    sget-object v0, Lcom/fyber/inneractive/sdk/util/d;->b:Lcom/fyber/inneractive/sdk/util/d;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/util/d;->a:Ljava/util/Queue;

    invoke-interface {v0, v6}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_cf
    :goto_cf
    if-eqz v5, :cond_d2

    return-object v5

    :cond_d2
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    :cond_d5
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/s;->e:Lcom/fyber/inneractive/sdk/web/f;

    if-eqz v0, :cond_f

    invoke-interface {v0, p1, p2}, Lcom/fyber/inneractive/sdk/web/f;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method
