###### Class com.gameloft.igp.IGPFreemiumActivity.i (com.gameloft.igp.IGPFreemiumActivity$i)
.class Lcom/gameloft/igp/IGPFreemiumActivity$i;
.super Landroid/webkit/WebViewClient;
.source "IGPFreemiumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/igp/IGPFreemiumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/igp/IGPFreemiumActivity;


# direct methods
.method constructor <init>(Lcom/gameloft/igp/IGPFreemiumActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    iget-object p2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {p2}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1100(Lcom/gameloft/igp/IGPFreemiumActivity;)V

    const-string p2, "javascript:window.Android.checkBackPressed(isBackPressed)"

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1000(Lcom/gameloft/igp/IGPFreemiumActivity;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object p2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    new-instance p3, Lcom/gameloft/igp/IGPFreemiumActivity$i$a;

    invoke-direct {p3, p0, p1}, Lcom/gameloft/igp/IGPFreemiumActivity$i$a;-><init>(Lcom/gameloft/igp/IGPFreemiumActivity$i;Landroid/webkit/WebView;)V

    invoke-virtual {p2, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 12

    const-string v0, "play:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, ""

    const/4 v4, 0x1

    if-eqz v1, :cond_46

    :try_start_c
    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "[?]"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v2

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2c} :catch_2d

    goto :goto_45

    :catch_2d
    nop

    iget-object p2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {p2}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1200(Lcom/gameloft/igp/IGPFreemiumActivity;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_45

    iget-object p2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {p2}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1200(Lcom/gameloft/igp/IGPFreemiumActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1202(Lcom/gameloft/igp/IGPFreemiumActivity;Ljava/lang/String;)Ljava/lang/String;

    :cond_45
    :goto_45
    return v4

    :cond_46
    const-string v0, "exit:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11b

    const-string v0, "unavailable:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    goto/16 :goto_11b

    :cond_58
    const-string v0, "market://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {p1, p2}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1300(Lcom/gameloft/igp/IGPFreemiumActivity;Ljava/lang/String;)V

    return v4

    :cond_66
    const-string v0, "amzn://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_74

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {p1, p2}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1400(Lcom/gameloft/igp/IGPFreemiumActivity;Ljava/lang/String;)V

    return v4

    :cond_74
    const-string v1, "www.amazon.com"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "https://"

    const-string v7, "http://"

    if-eqz v5, :cond_8e

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-virtual {p2, v7, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v6, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1400(Lcom/gameloft/igp/IGPFreemiumActivity;Ljava/lang/String;)V

    return v4

    :cond_8e
    const-string v5, "skt:"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a0

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-virtual {p2, v5, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1500(Lcom/gameloft/igp/IGPFreemiumActivity;Ljava/lang/String;)V

    return v4

    :cond_a0
    const-string v5, "link:"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c6

    invoke-virtual {p2, v5, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_c0

    iget-object p2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1400(Lcom/gameloft/igp/IGPFreemiumActivity;Ljava/lang/String;)V

    return v4

    :cond_c0
    iget-object p2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {p2, p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1600(Lcom/gameloft/igp/IGPFreemiumActivity;Ljava/lang/String;)V

    return v4

    :cond_c6
    const-string v0, "201205igp.gameloft.com/redir/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_115

    const-string v0, "ctg=PLAY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e9

    iget-object v1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    const-string v5, "t=bundle"

    const-string v6, "t=game"

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ctg=FRINSTALL&old_ctg=PLAY"

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1202(Lcom/gameloft/igp/IGPFreemiumActivity;Ljava/lang/String;)Ljava/lang/String;

    :cond_e9
    const-string v1, "type=SKTMARKET"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_114

    const-string v1, "&pp=1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_114

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10c

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1200(Lcom/gameloft/igp/IGPFreemiumActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1202(Lcom/gameloft/igp/IGPFreemiumActivity;Ljava/lang/String;)Ljava/lang/String;

    :cond_10c
    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v4

    :cond_114
    return v2

    :cond_115
    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {p1, p2}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1600(Lcom/gameloft/igp/IGPFreemiumActivity;Ljava/lang/String;)V

    return v4

    :cond_11b
    :goto_11b
    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-virtual {p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->b()V

    return v4
.end method
