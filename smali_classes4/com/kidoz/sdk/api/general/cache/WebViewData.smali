###### Class com.kidoz.sdk.api.general.cache.WebViewData (com.kidoz.sdk.api.general.cache.WebViewData)
.class public Lcom/kidoz/sdk/api/general/cache/WebViewData;
.super Ljava/lang/Object;
.source "WebViewData.java"


# instance fields
.field private webUrl:Ljava/lang/String;

.field private webViewContent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/cache/WebViewData;->webUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/kidoz/sdk/api/general/cache/WebViewData;->webViewContent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBaseURL()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/general/cache/WebViewData;->isValidURL()Z

    move-result v0

    if-eqz v0, :cond_2a

    :try_start_6
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/cache/WebViewData;->webUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_29
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_29} :catch_2a

    goto :goto_2c

    :catch_2a
    :cond_2a
    const-string v0, ""

    :goto_2c
    return-object v0
.end method

.method public getWebUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/cache/WebViewData;->webUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWebViewContent()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/cache/WebViewData;->webViewContent:Ljava/lang/String;

    return-object v0
.end method

.method public hasData()Z
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/cache/WebViewData;->webViewContent:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string v1, ""

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public isValidURL()Z
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/cache/WebViewData;->webUrl:Ljava/lang/String;

    if-eqz v0, :cond_24

    const-string v1, ""

    if-eq v0, v1, :cond_24

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/cache/WebViewData;->webUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_22
    const/4 v0, 0x1

    return v0

    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method public setWebUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/cache/WebViewData;->webUrl:Ljava/lang/String;

    return-void
.end method

.method public setWebViewContent(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/cache/WebViewData;->webViewContent:Ljava/lang/String;

    return-void
.end method
