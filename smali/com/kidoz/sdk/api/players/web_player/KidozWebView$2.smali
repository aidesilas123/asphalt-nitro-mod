###### Class com.kidoz.sdk.api.players.web_player.KidozWebView.AnonymousClass2 (com.kidoz.sdk.api.players.web_player.KidozWebView$2)
.class Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;
.super Landroid/webkit/WebViewClient;
.source "KidozWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->initWebChromeClient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "KIDOZ_LOG  - onPageStarted "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LEV"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 14

    new-instance v5, Lcom/kidoz/events/a;

    invoke-direct {v5}, Lcom/kidoz/events/a;-><init>()V

    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-static {p1}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->access$100(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)Lcom/kidoz/sdk/api/structure/ContentItem;

    move-result-object p1

    if-eqz p1, :cond_2b

    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-static {p1}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->access$100(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)Lcom/kidoz/sdk/api/structure/ContentItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ItemID"

    invoke-virtual {v5, v0, p1}, Lcom/kidoz/events/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-static {p1}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->access$100(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)Lcom/kidoz/sdk/api/structure/ContentItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getAdvertiserID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdvertiserID"

    invoke-virtual {v5, v0, p1}, Lcom/kidoz/events/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v0

    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/kidoz/events/EventManager;->a:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "0"

    const-string v3, ""

    const-string v6, "WebView Error"

    move-object v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/kidoz/events/EventManager;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kidoz/events/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 4

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/TestUtils;->isMultiEnv()Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "http://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance p1, Landroid/webkit/WebResourceResponse;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    :cond_15
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KIDOZ_LOG  - shouldOverrideUrlLoading "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LEV"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/TestUtils;->isMultiEnv()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_26

    const-string v0, "http://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    return v1

    :cond_26
    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-static {v0, p2}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->access$202(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->access$300(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldOverrideUrlLoading: url= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->access$400(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    move-result-object v0

    sget-object v2, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->ROVIO:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    if-ne v0, v2, :cond_54

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_54
    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->access$400(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    move-result-object v0

    sget-object v2, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->ONLINE_GAME:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    if-eq v0, v2, :cond_123

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->access$400(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    move-result-object v0

    sget-object v2, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->WEB_BROWSER:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    if-ne v0, v2, :cond_6a

    goto/16 :goto_123

    :cond_6a
    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->access$400(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    move-result-object v0

    sget-object v2, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->EXTERNAL_LINK:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    if-ne v0, v2, :cond_11f

    const-string v0, "market://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9a

    const-string v0, "start.google.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9a

    const-string v0, "play.google.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->access$600(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_95

    goto :goto_9a

    :cond_95
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_151

    :cond_9a
    :goto_9a
    :try_start_9a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "market://details?id="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->access$600(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->access$600(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_d1

    array-length v0, p2

    if-le v0, v1, :cond_d1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p2, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_d1
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-static {p1}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->access$700(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)Lcom/kidoz/sdk/api/players/web_player/KidozWebView$IOnLounchExternalAppFromRedirectListener;

    move-result-object p1

    if-eqz p1, :cond_f0

    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-static {p1}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->access$700(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)Lcom/kidoz/sdk/api/players/web_player/KidozWebView$IOnLounchExternalAppFromRedirectListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$IOnLounchExternalAppFromRedirectListener;->onLounch()V

    :cond_f0
    const/high16 p1, 0x10000000

    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-static {p1}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->access$800(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_fe} :catch_ff

    goto :goto_151

    :catch_ff
    move-exception p1

    iget-object p2, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-static {p2}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->access$300(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error when trying to open google start for promoted app: \n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_151

    :cond_11f
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_151

    :cond_123
    :goto_123
    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-static {p1, p2}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->access$500(Lcom/kidoz/sdk/api/players/web_player/KidozWebView;Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-ne p1, v1, :cond_150

    new-instance v3, Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-direct {v3}, Lcom/kidoz/sdk/api/structure/ContentItem;-><init>()V

    sget-object v0, Lcom/kidoz/sdk/api/general/enums/ContentType;->EXTERNAL_BROWSER_URL:Lcom/kidoz/sdk/api/general/enums/ContentType;

    invoke-virtual {v3, v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->setContentType(Lcom/kidoz/sdk/api/general/enums/ContentType;)V

    invoke-virtual {v3, v1}, Lcom/kidoz/sdk/api/structure/ContentItem;->setIsPromoted(Z)V

    invoke-virtual {v3, p2}, Lcom/kidoz/sdk/api/structure/ContentItem;->setData(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object p2, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_NONE:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    invoke-virtual {p2}, Lcom/kidoz/sdk/api/general/enums/WidgetType;->getStringValue()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v5, "0"

    invoke-static/range {v2 .. v8}, Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->handleContentItemClick(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;IZLcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnHandleClickListener;)V

    :cond_150
    move v1, p1

    :goto_151
    return v1
.end method
