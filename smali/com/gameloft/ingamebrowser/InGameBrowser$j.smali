###### Class com.gameloft.ingamebrowser.InGameBrowser.j (com.gameloft.ingamebrowser.InGameBrowser$j)
.class Lcom/gameloft/ingamebrowser/InGameBrowser$j;
.super Landroid/webkit/WebViewClient;
.source "InGameBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/ingamebrowser/InGameBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "j"
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/ingamebrowser/InGameBrowser;


# direct methods
.method constructor <init>(Lcom/gameloft/ingamebrowser/InGameBrowser;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$j;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$j;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-static {v0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$2200(Lcom/gameloft/ingamebrowser/InGameBrowser;)V

    :try_start_5
    invoke-static {}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$2800()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    invoke-static {}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$2500()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_31

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "javascript:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$2800()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_31} :catch_31

    :catch_31
    :cond_31
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    invoke-static {}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$2400()Z

    move-result p1

    if-eqz p1, :cond_23

    invoke-static {}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$2500()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_23

    invoke-static {}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$2500()Ljava/lang/String;

    move-result-object p1

    const-string p3, ""

    invoke-virtual {p2, p1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$2600(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$j;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-static {p1}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$100(Lcom/gameloft/ingamebrowser/InGameBrowser;)V

    return-void

    :cond_23
    iget-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$j;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-static {p1}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$2700(Lcom/gameloft/ingamebrowser/InGameBrowser;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object p2, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$j;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    new-instance p3, Lcom/gameloft/ingamebrowser/InGameBrowser$j$a;

    invoke-direct {p3, p0, p1}, Lcom/gameloft/ingamebrowser/InGameBrowser$j$a;-><init>(Lcom/gameloft/ingamebrowser/InGameBrowser$j;Landroid/webkit/WebView;)V

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

    invoke-static {}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$2400()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x1

    if-eqz v0, :cond_26

    invoke-static {}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$2500()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_25

    invoke-static {}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$2500()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$2600(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$j;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-static {p1}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$100(Lcom/gameloft/ingamebrowser/InGameBrowser;)V

    return v3

    :cond_25
    return v1

    :cond_26
    const-string v0, "exit:checkreward:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$2902(Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$j;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-static {p1}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$100(Lcom/gameloft/ingamebrowser/InGameBrowser;)V

    return v3

    :cond_3b
    const-string v0, "checkreward:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$2902(Ljava/lang/String;)Ljava/lang/String;

    return v3

    :cond_4b
    const-string v0, "play:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_74

    :try_start_53
    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "[?]"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v1

    iget-object p2, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$j;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-virtual {p2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$j;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_73} :catch_73

    :catch_73
    return v3

    :cond_74
    const-string v0, "mailto:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_86

    :try_start_7c
    invoke-static {p2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$j;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_85} :catch_85

    :catch_85
    return v3

    :cond_86
    const-string v0, "goto:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8f

    return v3

    :cond_8f
    const-string v0, "exit:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_128

    const-string v0, "unavailable:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    goto/16 :goto_128

    :cond_a1
    const-string v0, "market://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_af

    iget-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$j;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-static {p1, p2}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$3000(Lcom/gameloft/ingamebrowser/InGameBrowser;Ljava/lang/String;)V

    return v3

    :cond_af
    const-string v0, "amzn://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_bd

    iget-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$j;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-static {p1, p2}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$3100(Lcom/gameloft/ingamebrowser/InGameBrowser;Ljava/lang/String;)V

    return v3

    :cond_bd
    const-string v4, "www.amazon.com"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "https://"

    const-string v7, "http://"

    if-eqz v5, :cond_d7

    iget-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$j;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-virtual {p2, v7, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v6, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$3100(Lcom/gameloft/ingamebrowser/InGameBrowser;Ljava/lang/String;)V

    return v3

    :cond_d7
    const-string v5, "skt:"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e9

    iget-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$j;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-virtual {p2, v5, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$3200(Lcom/gameloft/ingamebrowser/InGameBrowser;Ljava/lang/String;)V

    return v3

    :cond_e9
    const-string v5, "link:"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10d

    invoke-virtual {p2, v5, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_109

    iget-object p2, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$j;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$3100(Lcom/gameloft/ingamebrowser/InGameBrowser;Ljava/lang/String;)V

    return v3

    :cond_109
    invoke-static {p1}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$3300(Ljava/lang/String;)V

    return v3

    :cond_10d
    const-string v0, "/redir/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_127

    const-string v0, "type=SKTMARKET"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_127

    const-string v0, "&pp=1"

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v3

    :cond_127
    return v1

    :cond_128
    :goto_128
    iget-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$j;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-static {p1}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$100(Lcom/gameloft/ingamebrowser/InGameBrowser;)V

    return v3
.end method
