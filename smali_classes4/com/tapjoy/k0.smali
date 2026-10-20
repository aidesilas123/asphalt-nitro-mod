###### Class com.tapjoy.k0 (com.tapjoy.k0)
.class public final Lcom/tapjoy/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/tapjoy/w;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/tapjoy/TJAdUnit;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJAdUnit;Landroid/content/Context;Lcom/tapjoy/w;Z)V
    .registers 5

    iput-object p1, p0, Lcom/tapjoy/k0;->d:Lcom/tapjoy/TJAdUnit;

    iput-object p2, p0, Lcom/tapjoy/k0;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/tapjoy/k0;->b:Lcom/tapjoy/w;

    iput-boolean p4, p0, Lcom/tapjoy/k0;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 15

    const-string v0, "Error loading ad unit content"

    iget-object v1, p0, Lcom/tapjoy/k0;->d:Lcom/tapjoy/TJAdUnit;

    iget-object v2, p0, Lcom/tapjoy/k0;->a:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "TJAdUnit"

    if-ne v3, v4, :cond_7a

    iget-boolean v3, v1, Lcom/tapjoy/TJAdUnit;->y:Z

    if-nez v3, :cond_7a

    if-eqz v2, :cond_7a

    const-string v3, "Constructing ad unit"

    invoke-static {v7, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v5, v1, Lcom/tapjoy/TJAdUnit;->y:Z

    :try_start_24
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Lcom/tapjoy/TJAdUnit;->h:Landroid/view/View;

    new-instance v3, Lcom/tapjoy/TJWebView;

    invoke-direct {v3, v2}, Lcom/tapjoy/TJWebView;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Lcom/tapjoy/TJAdUnit;->i:Lcom/tapjoy/TJWebView;

    iget-object v4, v1, Lcom/tapjoy/TJAdUnit;->I:Lcom/tapjoy/b;

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v3, v1, Lcom/tapjoy/TJAdUnit;->i:Lcom/tapjoy/TJWebView;

    iget-object v4, v1, Lcom/tapjoy/TJAdUnit;->J:Lcom/tapjoy/internal/j8;

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_3e} :catch_70

    new-instance v3, Landroid/widget/VideoView;

    invoke-direct {v3, v2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Lcom/tapjoy/TJAdUnit;->j:Landroid/widget/VideoView;

    invoke-virtual {v3, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v3, v1, Lcom/tapjoy/TJAdUnit;->j:Landroid/widget/VideoView;

    invoke-virtual {v3, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v3, v1, Lcom/tapjoy/TJAdUnit;->j:Landroid/widget/VideoView;

    invoke-virtual {v3, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v3, v1, Lcom/tapjoy/TJAdUnit;->j:Landroid/widget/VideoView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    new-instance v3, Lcom/tapjoy/l0;

    invoke-direct {v3, v1}, Lcom/tapjoy/l0;-><init>(Lcom/tapjoy/TJAdUnit;)V

    iput-object v3, v1, Lcom/tapjoy/TJAdUnit;->g:Lcom/tapjoy/l0;

    new-instance v4, Lcom/tapjoy/k;

    invoke-direct {v4, v3}, Lcom/tapjoy/k;-><init>(Lcom/tapjoy/t;)V

    iput-object v4, v1, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/k;

    instance-of v3, v2, Lcom/tapjoy/TJAdUnitActivity;

    if-eqz v3, :cond_7a

    check-cast v2, Lcom/tapjoy/TJAdUnitActivity;

    invoke-virtual {v1, v2}, Lcom/tapjoy/TJAdUnit;->w(Lcom/tapjoy/TJAdUnitActivity;)V

    goto :goto_7a

    :catch_70
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_7c

    :cond_7a
    :goto_7a
    iget-boolean v1, v1, Lcom/tapjoy/TJAdUnit;->y:Z

    :goto_7c
    if-nez v1, :cond_7f

    return-void

    :cond_7f
    const-string v1, "Loading ad unit content"

    invoke-static {v7, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/k0;->d:Lcom/tapjoy/TJAdUnit;

    iput-boolean v5, v1, Lcom/tapjoy/TJAdUnit;->w:Z

    :try_start_88
    iget-object v1, p0, Lcom/tapjoy/k0;->b:Lcom/tapjoy/w;

    invoke-virtual {v1}, Lcom/tapjoy/w;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b9

    iget-object v1, p0, Lcom/tapjoy/k0;->b:Lcom/tapjoy/w;

    invoke-virtual {v1}, Lcom/tapjoy/w;->n()Z

    move-result v1

    if-eqz v1, :cond_ab

    iget-object v1, p0, Lcom/tapjoy/k0;->d:Lcom/tapjoy/TJAdUnit;

    iget-object v1, v1, Lcom/tapjoy/TJAdUnit;->i:Lcom/tapjoy/TJWebView;

    iget-object v2, p0, Lcom/tapjoy/k0;->b:Lcom/tapjoy/w;

    invoke-virtual {v2}, Lcom/tapjoy/w;->j()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    goto :goto_ff

    :cond_ab
    iget-object v1, p0, Lcom/tapjoy/k0;->d:Lcom/tapjoy/TJAdUnit;

    iget-object v1, v1, Lcom/tapjoy/TJAdUnit;->i:Lcom/tapjoy/TJWebView;

    iget-object v2, p0, Lcom/tapjoy/k0;->b:Lcom/tapjoy/w;

    invoke-virtual {v2}, Lcom/tapjoy/w;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_ff

    :cond_b9
    iget-object v1, p0, Lcom/tapjoy/k0;->b:Lcom/tapjoy/w;

    invoke-virtual {v1}, Lcom/tapjoy/w;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e2

    iget-object v1, p0, Lcom/tapjoy/k0;->b:Lcom/tapjoy/w;

    invoke-virtual {v1}, Lcom/tapjoy/w;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e2

    iget-object v1, p0, Lcom/tapjoy/k0;->d:Lcom/tapjoy/TJAdUnit;

    iget-object v8, v1, Lcom/tapjoy/TJAdUnit;->i:Lcom/tapjoy/TJWebView;

    iget-object v1, p0, Lcom/tapjoy/k0;->b:Lcom/tapjoy/w;

    invoke-virtual {v1}, Lcom/tapjoy/w;->d()Ljava/lang/String;

    move-result-object v9

    iget-object v1, p0, Lcom/tapjoy/k0;->b:Lcom/tapjoy/w;

    invoke-virtual {v1}, Lcom/tapjoy/w;->f()Ljava/lang/String;

    move-result-object v10

    const-string v11, "text/html"

    const-string v12, "utf-8"

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ff

    :cond_e2
    new-instance v1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->b:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-direct {v1, v2, v0}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v7, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    iget-object v1, p0, Lcom/tapjoy/k0;->d:Lcom/tapjoy/TJAdUnit;

    iput-boolean v6, v1, Lcom/tapjoy/TJAdUnit;->w:Z
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_f0} :catch_f1

    goto :goto_ff

    :catch_f1
    new-instance v1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->b:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-direct {v1, v2, v0}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v7, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    iget-object v0, p0, Lcom/tapjoy/k0;->d:Lcom/tapjoy/TJAdUnit;

    iput-boolean v6, v0, Lcom/tapjoy/TJAdUnit;->w:Z

    :goto_ff
    iget-object v0, p0, Lcom/tapjoy/k0;->d:Lcom/tapjoy/TJAdUnit;

    iget-boolean v1, v0, Lcom/tapjoy/TJAdUnit;->w:Z

    if-eqz v1, :cond_10a

    iget-boolean v1, p0, Lcom/tapjoy/k0;->c:Z

    if-eqz v1, :cond_10a

    goto :goto_10b

    :cond_10a
    const/4 v5, 0x0

    :goto_10b
    iput-boolean v5, v0, Lcom/tapjoy/TJAdUnit;->x:Z

    return-void
.end method
