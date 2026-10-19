###### Class com.tapjoy.TJWebViewActivity (com.tapjoy.TJWebViewActivity)
.class public Lcom/tapjoy/TJWebViewActivity;
.super Lcom/tapjoy/TJActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TJWebViewActivity$a;
    }
.end annotation


# instance fields
.field public f:Landroid/view/View;

.field public g:Lcom/tapjoy/TJWebView;

.field public h:Lcom/tapjoy/k;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/tapjoy/TJActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .registers 5

    iget-object v0, p0, Lcom/tapjoy/TJWebViewActivity;->h:Lcom/tapjoy/k;

    if-eqz v0, :cond_29

    iget-boolean v0, v0, Lcom/tapjoy/k;->j:Z

    if-nez v0, :cond_29

    const-string v0, "TJWebViewActivity"

    const-string v1, "closeRequested"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TJWebViewActivity;->h:Lcom/tapjoy/k;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/tapjoy/k;->b(Ljava/lang/Boolean;)V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tapjoy/internal/u7;

    invoke-direct {v1, p0}, Lcom/tapjoy/internal/u7;-><init>(Lcom/tapjoy/TJWebViewActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_29
    return-void
.end method

.method public final e(Ljava/lang/String;)Z
    .registers 8

    const-string v0, "TJWebViewActivity"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_4
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_36

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1c} :catch_20

    if-eqz v3, :cond_36

    const/4 v3, 0x1

    goto :goto_37

    :catch_20
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception getting NetworkInfo: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    const/4 v3, 0x0

    :goto_37
    if-eqz v3, :cond_e5

    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_41

    goto/16 :goto_e5

    :cond_41
    :try_start_41
    new-instance v3, Ljava/net/URL;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3
    :try_end_4e
    .catch Ljava/net/MalformedURLException; {:try_start_41 .. :try_end_4e} :catch_70

    if-eqz v3, :cond_56

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6e

    :cond_56
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getRedirectDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6e

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getPlacementURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tapjoy/TapjoyUtil;->getRedirectDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_70

    :cond_6e
    const/4 v3, 0x1

    goto :goto_71

    :catch_70
    :cond_70
    const/4 v3, 0x0

    :goto_71
    if-eqz v3, :cond_74

    return v2

    :cond_74
    iget-object v3, p0, Lcom/tapjoy/TJWebViewActivity;->h:Lcom/tapjoy/k;

    iget-boolean v3, v3, Lcom/tapjoy/k;->g:Z

    if-eqz v3, :cond_b9

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v3, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/tapjoy/TJWebViewActivity;->g:Lcom/tapjoy/TJWebView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_e4

    :try_start_98
    iget-object p1, p0, Lcom/tapjoy/TJWebViewActivity;->g:Lcom/tapjoy/TJWebView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_a1} :catch_a2

    return v1

    :catch_a2
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

    goto :goto_e4

    :cond_b9
    const-string v3, "javascript:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e4

    :try_start_c1
    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/tapjoy/TJWebViewActivity;->g:Lcom/tapjoy/TJWebView;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_cd} :catch_ce

    return v1

    :catch_ce
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

    :cond_e4
    :goto_e4
    return v2

    :cond_e5
    :goto_e5
    invoke-virtual {p0}, Lcom/tapjoy/TJActivity;->d()V

    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/tapjoy/TJWebViewActivity;->h:Lcom/tapjoy/k;

    if-eqz p1, :cond_1b

    invoke-static {p0}, Lcom/tapjoy/internal/v8;->b(Landroid/app/Activity;)I

    move-result p1

    invoke-static {p0}, Lcom/tapjoy/internal/v8;->a(Landroid/app/Activity;)I

    move-result v0

    iget-object v1, p0, Lcom/tapjoy/TJWebViewActivity;->h:Lcom/tapjoy/k;

    if-le p1, v0, :cond_16

    const-string v2, "landscape"

    goto :goto_18

    :cond_16
    const-string v2, "portrait"

    :goto_18
    invoke-virtual {v1, v2, p1, v0}, Lcom/tapjoy/k;->k(Ljava/lang/String;II)V

    :cond_1b
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 14

    invoke-super {p0, p1}, Lcom/tapjoy/TJActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_11} :catch_12

    goto :goto_1d

    :catch_12
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TJDevice"

    invoke-static {v1, p1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    :goto_1d
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz p1, :cond_2b

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v3, p1

    if-lez v3, :cond_2b

    aget-object p1, p1, v1

    iget p1, p1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    goto :goto_2c

    :cond_2b
    const/4 p1, -0x1

    :goto_2c
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_7d

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_7d

    const-string v4, "url"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4e

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_4f

    :cond_4e
    move-object v4, v0

    :goto_4f
    const-string v5, "reuseHTML"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_66

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_67

    :cond_66
    const/4 v5, 0x0

    :goto_67
    const-string v6, "html"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7a

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :cond_7a
    move-object v8, v0

    move-object v7, v4

    goto :goto_80

    :cond_7d
    move-object v7, v0

    move-object v8, v7

    const/4 v5, 0x0

    :goto_80
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/TJWebViewActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/tapjoy/TJActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/tapjoy/TJWebViewActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    new-instance v0, Lcom/tapjoy/TJWebView;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/TJWebViewActivity;->g:Lcom/tapjoy/TJWebView;

    new-instance v1, Lcom/tapjoy/internal/v9;

    invoke-direct {v1, p0}, Lcom/tapjoy/internal/v9;-><init>(Lcom/tapjoy/TJWebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lcom/tapjoy/k;

    new-instance v1, Lcom/tapjoy/TJWebViewActivity$a;

    invoke-direct {v1, p0}, Lcom/tapjoy/TJWebViewActivity$a;-><init>(Lcom/tapjoy/TJWebViewActivity;)V

    invoke-direct {v0, v1}, Lcom/tapjoy/k;-><init>(Lcom/tapjoy/t;)V

    iput-object v0, p0, Lcom/tapjoy/TJWebViewActivity;->h:Lcom/tapjoy/k;

    if-eqz v5, :cond_be

    iget-object v6, p0, Lcom/tapjoy/TJWebViewActivity;->g:Lcom/tapjoy/TJWebView;

    const/4 v11, 0x0

    const-string v9, "text/html"

    const-string v10, "UTF-8"

    invoke-virtual/range {v6 .. v11}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c3

    :cond_be
    iget-object v0, p0, Lcom/tapjoy/TJWebViewActivity;->g:Lcom/tapjoy/TJWebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_c3
    iget-object v0, p0, Lcom/tapjoy/TJActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/tapjoy/TJWebViewActivity;->g:Lcom/tapjoy/TJWebView;

    invoke-virtual {v0, v1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/tapjoy/TJActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/tapjoy/TJActivity;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tapjoy/TJActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/tapjoy/TJActivity;->c:Lcom/tapjoy/TJCloseButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tapjoy/TJActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/PersistableBundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public final onDestroy()V
    .registers 4

    iget-object v0, p0, Lcom/tapjoy/TJActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/tapjoy/TJWebViewActivity;->g:Lcom/tapjoy/TJWebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    const-string v2, "about:blank"

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TJWebViewActivity;->g:Lcom/tapjoy/TJWebView;

    invoke-virtual {v0}, Lcom/tapjoy/TJWebView;->destroy()V

    iput-object v1, p0, Lcom/tapjoy/TJWebViewActivity;->g:Lcom/tapjoy/TJWebView;

    :cond_16
    iget-object v0, p0, Lcom/tapjoy/TJWebViewActivity;->h:Lcom/tapjoy/k;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/tapjoy/k;->c()V

    iput-object v1, p0, Lcom/tapjoy/TJWebViewActivity;->h:Lcom/tapjoy/k;

    :cond_1f
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public final onPause()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/tapjoy/TJWebViewActivity;->g:Lcom/tapjoy/TJWebView;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_a
    iget-object v0, p0, Lcom/tapjoy/TJWebViewActivity;->h:Lcom/tapjoy/k;

    if-eqz v0, :cond_17

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/k;->v(Z)V

    iget-object v0, p0, Lcom/tapjoy/TJWebViewActivity;->h:Lcom/tapjoy/k;

    invoke-virtual {v0}, Lcom/tapjoy/k;->t()V

    :cond_17
    return-void
.end method

.method public final onResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/tapjoy/TJWebViewActivity;->g:Lcom/tapjoy/TJWebView;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_a
    iget-object v0, p0, Lcom/tapjoy/TJWebViewActivity;->h:Lcom/tapjoy/k;

    if-eqz v0, :cond_17

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tapjoy/k;->v(Z)V

    iget-object v0, p0, Lcom/tapjoy/TJWebViewActivity;->h:Lcom/tapjoy/k;

    invoke-virtual {v0}, Lcom/tapjoy/k;->u()V

    :cond_17
    return-void
.end method

.method public final onStart()V
    .registers 1

    invoke-super {p0}, Lcom/tapjoy/TJActivity;->onStart()V

    return-void
.end method

.method public final onStop()V
    .registers 1

    invoke-super {p0}, Lcom/tapjoy/TJActivity;->onStop()V

    return-void
.end method

###### Class com.tapjoy.TJWebViewActivity.a (com.tapjoy.TJWebViewActivity$a)
.class public Lcom/tapjoy/TJWebViewActivity$a;
.super Lcom/tapjoy/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/tapjoy/TJWebViewActivity;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJWebViewActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/TJWebViewActivity$a;->a:Lcom/tapjoy/TJWebViewActivity;

    invoke-direct {p0}, Lcom/tapjoy/t;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/TJWebViewActivity$a;->a:Lcom/tapjoy/TJWebViewActivity;

    return-object v0
.end method

.method public c()Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/TJWebViewActivity$a;->a:Lcom/tapjoy/TJWebViewActivity;

    iget-object v0, v0, Lcom/tapjoy/TJWebViewActivity;->g:Lcom/tapjoy/TJWebView;

    return-object v0
.end method
