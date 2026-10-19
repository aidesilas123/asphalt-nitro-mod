###### Class com.tapjoy.x (com.tapjoy.x)
.class public final Lcom/tapjoy/x;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/tapjoy/y;


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tapjoy/x;->a:Lcom/tapjoy/y;

    iget-object p1, p1, Lcom/tapjoy/y;->k:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/tapjoy/x;->a:Lcom/tapjoy/y;

    iget-object p1, p1, Lcom/tapjoy/y;->n:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_20

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p1, p0, Lcom/tapjoy/x;->a:Lcom/tapjoy/y;

    iget-object p1, p1, Lcom/tapjoy/y;->n:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_20
    iget-object p1, p0, Lcom/tapjoy/x;->a:Lcom/tapjoy/y;

    invoke-virtual {p1}, Lcom/tapjoy/y;->c()V

    :cond_25
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    iget-object p1, p0, Lcom/tapjoy/x;->a:Lcom/tapjoy/y;

    iget-object p1, p1, Lcom/tapjoy/y;->k:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/tapjoy/x;->a:Lcom/tapjoy/y;

    iget-object p1, p1, Lcom/tapjoy/y;->o:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/tapjoy/TapjoyUrlFormatter;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/tapjoy/x;->a:Lcom/tapjoy/y;

    iget-object p1, p1, Lcom/tapjoy/y;->n:Landroid/widget/ProgressBar;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_1d
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "onPageStarted: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TJSplitWebView"

    invoke-static {p2, p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onReceivedError: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " firstUrl:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/tapjoy/x;->a:Lcom/tapjoy/y;

    iget-object p2, p2, Lcom/tapjoy/y;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TJSplitWebView"

    invoke-static {p2, p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tapjoy/x;->a:Lcom/tapjoy/y;

    iget-boolean p2, p1, Lcom/tapjoy/y;->r:Z

    const/4 p3, 0x1

    if-ne p2, p3, :cond_2a

    invoke-virtual {p1}, Lcom/tapjoy/y;->e()V

    goto :goto_3a

    :cond_2a
    iget-object p1, p1, Lcom/tapjoy/y;->d:Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    iget-object p1, p0, Lcom/tapjoy/x;->a:Lcom/tapjoy/y;

    iget-object p1, p1, Lcom/tapjoy/y;->i:Lcom/tapjoy/k;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lcom/tapjoy/k;->d(Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .registers 4

    iget-object p1, p0, Lcom/tapjoy/x;->a:Lcom/tapjoy/y;

    iget-object p1, p1, Lcom/tapjoy/y;->a:Lcom/tapjoy/TJWebView;

    const/4 p2, 0x0

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_19

    iget-object v0, p0, Lcom/tapjoy/x;->a:Lcom/tapjoy/y;

    iget-object v0, v0, Lcom/tapjoy/y;->a:Lcom/tapjoy/TJWebView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_19
    iget-object p1, p0, Lcom/tapjoy/x;->a:Lcom/tapjoy/y;

    iget-object p1, p1, Lcom/tapjoy/y;->a:Lcom/tapjoy/TJWebView;

    invoke-virtual {p1}, Lcom/tapjoy/TJWebView;->destroy()V

    iget-object p1, p0, Lcom/tapjoy/x;->a:Lcom/tapjoy/y;

    iput-object p2, p1, Lcom/tapjoy/y;->a:Lcom/tapjoy/TJWebView;

    :cond_24
    iget-object p1, p0, Lcom/tapjoy/x;->a:Lcom/tapjoy/y;

    iget-object p1, p1, Lcom/tapjoy/y;->i:Lcom/tapjoy/k;

    if-eqz p1, :cond_31

    invoke-virtual {p1}, Lcom/tapjoy/k;->a()V

    iget-object p1, p0, Lcom/tapjoy/x;->a:Lcom/tapjoy/y;

    iput-object p2, p1, Lcom/tapjoy/y;->i:Lcom/tapjoy/k;

    :cond_31
    new-instance p1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object p2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->b:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v0, "WebView rendering process exited while instantiating a WebViewClient unexpectedly"

    invoke-direct {p1, p2, v0}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    const-string p2, "TJSplitWebView"

    invoke-static {p2, p1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 6

    iget-object v0, p0, Lcom/tapjoy/x;->a:Lcom/tapjoy/y;

    iget-object v1, v0, Lcom/tapjoy/y;->f:Ljava/lang/String;

    iget-object v0, v0, Lcom/tapjoy/y;->g:Landroid/net/Uri;

    if-eqz v1, :cond_28

    if-eqz v0, :cond_28

    if-eqz p2, :cond_28

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/tapjoy/x;->a:Lcom/tapjoy/y;

    iget-object v0, v0, Lcom/tapjoy/y;->j:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/tapjoy/x;->a:Lcom/tapjoy/y;

    iget-object v0, v0, Lcom/tapjoy/y;->i:Lcom/tapjoy/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/tapjoy/k;->d(Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_28
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 7

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "shouldOverrideUrlLoading: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TJSplitWebView"

    invoke-static {v0, p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_47

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_47

    if-eqz v1, :cond_47

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    :cond_35
    iget-object v2, p0, Lcom/tapjoy/x;->a:Lcom/tapjoy/y;

    iget-object v2, v2, Lcom/tapjoy/y;->h:Ljava/util/HashSet;

    if-eqz v2, :cond_41

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    :cond_41
    iget-object p1, p0, Lcom/tapjoy/x;->a:Lcom/tapjoy/y;

    iput-object p2, p1, Lcom/tapjoy/y;->e:Ljava/lang/String;

    const/4 p1, 0x0

    return p1

    :cond_47
    :try_start_47
    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p2, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/tapjoy/x;->a:Lcom/tapjoy/y;

    iget-object p1, p1, Lcom/tapjoy/y;->j:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/tapjoy/x;->a:Lcom/tapjoy/y;

    iget-object p1, p1, Lcom/tapjoy/y;->k:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_70

    iget-object p1, p0, Lcom/tapjoy/x;->a:Lcom/tapjoy/y;

    iget-object p1, p1, Lcom/tapjoy/y;->i:Lcom/tapjoy/k;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lcom/tapjoy/k;->d(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_67} :catch_68

    goto :goto_70

    :catch_68
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_70
    :goto_70
    const/4 p1, 0x1

    return p1
.end method
