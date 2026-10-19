###### Class com.tapjoy.b (com.tapjoy.b)
.class public final Lcom/tapjoy/b;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/tapjoy/TJAdUnit;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJAdUnit;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/b;->a:Lcom/tapjoy/TJAdUnit;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .registers 8

    const-string v0, "TJAdUnit"

    iget-object v1, p0, Lcom/tapjoy/b;->a:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_9
    iget-object v4, v1, Lcom/tapjoy/TJAdUnit;->i:Lcom/tapjoy/TJWebView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_49

    iget-object v1, v1, Lcom/tapjoy/TJAdUnit;->i:Lcom/tapjoy/TJWebView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "connectivity"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_49

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2f} :catch_33

    if-eqz v1, :cond_49

    const/4 v1, 0x1

    goto :goto_4a

    :catch_33
    move-exception v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception getting NetworkInfo: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_49
    const/4 v1, 0x0

    :goto_4a
    if-eqz v1, :cond_105

    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_54

    goto/16 :goto_105

    :cond_54
    iget-object v1, p0, Lcom/tapjoy/b;->a:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_59
    new-instance v1, Ljava/net/URL;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1
    :try_end_66
    .catch Ljava/net/MalformedURLException; {:try_start_59 .. :try_end_66} :catch_88

    if-eqz v1, :cond_6e

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_86

    :cond_6e
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getRedirectDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_86

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getPlacementURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->getRedirectDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_88

    :cond_86
    const/4 v1, 0x1

    goto :goto_89

    :catch_88
    :cond_88
    const/4 v1, 0x0

    :goto_89
    if-eqz v1, :cond_8c

    return v2

    :cond_8c
    iget-object v1, p0, Lcom/tapjoy/b;->a:Lcom/tapjoy/TJAdUnit;

    iget-object v1, v1, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/k;

    iget-boolean v1, v1, Lcom/tapjoy/k;->g:Z

    if-eqz v1, :cond_d7

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/tapjoy/b;->a:Lcom/tapjoy/TJAdUnit;

    iget-object p1, p1, Lcom/tapjoy/TJAdUnit;->i:Lcom/tapjoy/TJWebView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_104

    :try_start_b4
    iget-object p1, p0, Lcom/tapjoy/b;->a:Lcom/tapjoy/TJAdUnit;

    iget-object p1, p1, Lcom/tapjoy/TJAdUnit;->i:Lcom/tapjoy/TJWebView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_bf} :catch_c0

    return v3

    :catch_c0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Exception in loading URL. "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_104

    :cond_d7
    const-string v1, "javascript:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_104

    :try_start_df
    const-string v4, ""

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/tapjoy/b;->a:Lcom/tapjoy/TJAdUnit;

    iget-object v1, v1, Lcom/tapjoy/TJAdUnit;->i:Lcom/tapjoy/TJWebView;

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v4}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_ed} :catch_ee

    return v3

    :catch_ee
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Exception in evaluateJavascript. Device not supported. "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_104
    :goto_104
    return v2

    :cond_105
    :goto_105
    iget-object p1, p0, Lcom/tapjoy/b;->a:Lcom/tapjoy/TJAdUnit;

    iget-object p1, p1, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJAdUnitActivity;

    if-eqz p1, :cond_10e

    invoke-virtual {p1}, Lcom/tapjoy/TJActivity;->d()V

    :cond_10e
    return v3
.end method

.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onPageFinished: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TJAdUnit"

    invoke-static {p2, p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tapjoy/b;->a:Lcom/tapjoy/TJAdUnit;

    iget-boolean p2, p1, Lcom/tapjoy/TJAdUnit;->z:Z

    if-eqz p2, :cond_1a

    return-void

    :cond_1a
    iget-object p1, p1, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJAdUnitActivity;

    if-eqz p1, :cond_22

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/tapjoy/TJActivity;->c(Z)V

    :cond_22
    iget-object p1, p0, Lcom/tapjoy/b;->a:Lcom/tapjoy/TJAdUnit;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/tapjoy/TJAdUnit;->z:Z

    iget-boolean p2, p1, Lcom/tapjoy/TJAdUnit;->v:Z

    if-eqz p2, :cond_33

    iget-object p1, p1, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/k;

    if-nez p1, :cond_30

    goto :goto_33

    :cond_30
    invoke-virtual {p1}, Lcom/tapjoy/k;->e()V

    :cond_33
    :goto_33
    iget-object p1, p0, Lcom/tapjoy/b;->a:Lcom/tapjoy/TJAdUnit;

    iget-object p1, p1, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/k;

    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Lcom/tapjoy/k;->g()V

    :cond_3c
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "onPageStarted: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TJAdUnit"

    invoke-static {p2, p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tapjoy/b;->a:Lcom/tapjoy/TJAdUnit;

    iget-object p3, p1, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/k;

    if-eqz p3, :cond_32

    const/4 v0, 0x1

    iput-boolean v0, p3, Lcom/tapjoy/k;->g:Z

    const/4 v0, 0x0

    iput-boolean v0, p3, Lcom/tapjoy/k;->i:Z

    iput-boolean v0, p3, Lcom/tapjoy/k;->j:Z

    const-string p3, "detachVolumeListener"

    invoke-static {p2, p3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p1, Lcom/tapjoy/TJAdUnit;->p:Ljava/util/concurrent/ScheduledFuture;

    const/4 p3, 0x0

    if-eqz p2, :cond_30

    invoke-interface {p2, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iput-object p3, p1, Lcom/tapjoy/TJAdUnit;->p:Ljava/util/concurrent/ScheduledFuture;

    :cond_30
    iput-object p3, p1, Lcom/tapjoy/TJAdUnit;->q:Landroid/media/AudioManager;

    :cond_32
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TJAdUnit"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/b;->a:Lcom/tapjoy/TJAdUnit;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJAdUnitActivity;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/tapjoy/TJActivity;->d()V

    :cond_1c
    iget-object v0, p0, Lcom/tapjoy/b;->a:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->h()Lcom/tapjoy/internal/w6;

    move-result-object v0

    if-nez v0, :cond_28

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_28
    iget-object p1, p0, Lcom/tapjoy/b;->a:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {p1}, Lcom/tapjoy/TJAdUnit;->h()Lcom/tapjoy/internal/w6;

    const/4 p1, 0x0

    throw p1
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .registers 5

    new-instance p1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object p2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->b:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v0, "WebView rendering process exited while instantiating a WebViewClient unexpectedly"

    invoke-direct {p1, p2, v0}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    const-string p2, "TJAdUnit"

    invoke-static {p2, p1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    iget-object p1, p0, Lcom/tapjoy/b;->a:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {p1}, Lcom/tapjoy/TJAdUnit;->h()Lcom/tapjoy/internal/w6;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_8b

    iget-object p1, p0, Lcom/tapjoy/b;->a:Lcom/tapjoy/TJAdUnit;

    iget-object v0, p1, Lcom/tapjoy/TJAdUnit;->j:Landroid/widget/VideoView;

    const/4 v1, 0x1

    if-eqz v0, :cond_34

    iget-boolean p1, p1, Lcom/tapjoy/TJAdUnit;->n:Z

    if-nez p1, :cond_28

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result p1

    if-lez p1, :cond_34

    :cond_28
    iget-object p1, p0, Lcom/tapjoy/b;->a:Lcom/tapjoy/TJAdUnit;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/tapjoy/TJAdUnit;->n:Z

    iput-boolean v1, p1, Lcom/tapjoy/TJAdUnit;->m:Z

    const-string v0, "WebView loading while trying to play video."

    invoke-virtual {p1, v0}, Lcom/tapjoy/TJAdUnit;->d(Ljava/lang/String;)V

    :cond_34
    iget-object p1, p0, Lcom/tapjoy/b;->a:Lcom/tapjoy/TJAdUnit;

    iget-object p1, p1, Lcom/tapjoy/TJAdUnit;->h:Landroid/view/View;

    if-eqz p1, :cond_4d

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_49

    iget-object v0, p0, Lcom/tapjoy/b;->a:Lcom/tapjoy/TJAdUnit;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnit;->h:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_49
    iget-object p1, p0, Lcom/tapjoy/b;->a:Lcom/tapjoy/TJAdUnit;

    iput-object p2, p1, Lcom/tapjoy/TJAdUnit;->h:Landroid/view/View;

    :cond_4d
    iget-object p1, p0, Lcom/tapjoy/b;->a:Lcom/tapjoy/TJAdUnit;

    iget-object p1, p1, Lcom/tapjoy/TJAdUnit;->i:Lcom/tapjoy/TJWebView;

    if-eqz p1, :cond_74

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_62

    iget-object v0, p0, Lcom/tapjoy/b;->a:Lcom/tapjoy/TJAdUnit;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnit;->i:Lcom/tapjoy/TJWebView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_62
    iget-object p1, p0, Lcom/tapjoy/b;->a:Lcom/tapjoy/TJAdUnit;

    iget-object p1, p1, Lcom/tapjoy/TJAdUnit;->i:Lcom/tapjoy/TJWebView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Lcom/tapjoy/b;->a:Lcom/tapjoy/TJAdUnit;

    iget-object p1, p1, Lcom/tapjoy/TJAdUnit;->i:Lcom/tapjoy/TJWebView;

    invoke-virtual {p1}, Lcom/tapjoy/TJWebView;->destroy()V

    iget-object p1, p0, Lcom/tapjoy/b;->a:Lcom/tapjoy/TJAdUnit;

    iput-object p2, p1, Lcom/tapjoy/TJAdUnit;->i:Lcom/tapjoy/TJWebView;

    :cond_74
    iget-object p1, p0, Lcom/tapjoy/b;->a:Lcom/tapjoy/TJAdUnit;

    iget-object p1, p1, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/k;

    if-eqz p1, :cond_81

    invoke-virtual {p1}, Lcom/tapjoy/k;->a()V

    iget-object p1, p0, Lcom/tapjoy/b;->a:Lcom/tapjoy/TJAdUnit;

    iput-object p2, p1, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/k;

    :cond_81
    iget-object p1, p0, Lcom/tapjoy/b;->a:Lcom/tapjoy/TJAdUnit;

    iget-object p1, p1, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJAdUnitActivity;

    if-eqz p1, :cond_8a

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_8a
    return v1

    :cond_8b
    iget-object p1, p0, Lcom/tapjoy/b;->a:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {p1}, Lcom/tapjoy/TJAdUnit;->h()Lcom/tapjoy/internal/w6;

    throw p2
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 8

    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v0

    if-eqz v0, :cond_48

    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tapjoy/TapjoyCache;->f(Ljava/lang/String;)Lcom/tapjoy/TapjoyCachedAssetData;

    move-result-object v0

    if-eqz v0, :cond_48

    :try_start_10
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyCachedAssetData;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/webkit/WebResourceResponse;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyCachedAssetData;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_24} :catch_25

    goto :goto_26

    :catch_25
    const/4 v2, 0x0

    :goto_26
    if-eqz v2, :cond_48

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Reading request for "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " from cache -- localPath: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyCachedAssetData;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TJAdUnit"

    invoke-static {p2, p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_48
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .registers 3

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tapjoy/b;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p2}, Lcom/tapjoy/b;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
