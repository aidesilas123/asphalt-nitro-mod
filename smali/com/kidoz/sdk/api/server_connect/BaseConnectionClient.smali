###### Class com.kidoz.sdk.api.server_connect.BaseConnectionClient (com.kidoz.sdk.api.server_connect.BaseConnectionClient)
.class public Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient;
.super Ljava/lang/Object;
.source "BaseConnectionClient.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$IOnImageRequestCallback;,
        Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;
    }
.end annotation


# static fields
.field protected static DOMAIN:Ljava/lang/String; = "sdk.kidoz.net"

.field protected static final HTTP_SCHEME:Ljava/lang/String; = "https://"

.field protected static final KIDOZ_ANALITYCS_SERVER_URL:Ljava/lang/String; = "analytics.kidoz.net/parents/KidozRestMobile.php"

.field protected static final MAIN_API:Ljava/lang/String; = "/api/sdk"

.field protected static final SDK_API_URL:Ljava/lang/String; = "sdk-api.kidoz.net/api/"

.field protected static final TAG:Ljava/lang/String; = "BaseConnectionClient"

.field protected static WATERFALL_DOMAIN:Ljava/lang/String; = null

.field protected static WATERFALL_URL:Ljava/lang/String; = "/api/waterfall"

.field protected static mPublicherId:Ljava/lang/String;

.field protected static mSecurityToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static downloadAndSaveFile(Ljava/lang/String;Ljava/io/File;)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/TestUtils;->isMultiEnv()Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "http://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    return v0

    :cond_10
    sget-object v1, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Downloading file url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "Content-length"

    const-string v2, "0"

    invoke-virtual {p0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    const/16 v1, 0x2710

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Access-Key"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient;->mPublicherId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient;->mSecurityToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_a1

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x400

    new-array p1, p1, [B

    :goto_8f
    invoke-virtual {v1, p1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_99

    invoke-virtual {v2, p1, v0, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_8f

    :cond_99
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    const/4 p1, 0x1

    const/4 v0, 0x1

    :cond_a1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a4} :catch_a5

    goto :goto_c0

    :catch_a5
    move-exception p0

    sget-object p1, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error when trying download file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c0
    return v0
.end method

.method private static getPostDataString(Landroid/content/ContentValues;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v2, :cond_1e

    const/4 v2, 0x0

    goto :goto_23

    :cond_1e
    const-string v4, "&"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static initConnectionClient(Landroid/content/Context;)V
    .registers 1

    invoke-static {}, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient;->initCookieManager()V

    return-void
.end method

.method private static initCookieManager()V
    .registers 2

    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    sget-object v1, Ljava/net/CookiePolicy;->ACCEPT_ALL:Ljava/net/CookiePolicy;

    invoke-virtual {v0, v1}, Ljava/net/CookieManager;->setCookiePolicy(Ljava/net/CookiePolicy;)V

    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    return-void
.end method

.method public static makeAsyncGet(Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 4

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$1;

    invoke-direct {v1, p0, p1}, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$1;-><init>(Ljava/lang/String;Landroid/content/ContentValues;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static makeGetConnection(Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;
    .registers 10

    const-string v0, "User-Agent"

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/TestUtils;->isMultiEnv()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_12

    const-string v1, "http://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-object v2

    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz p1, :cond_84

    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v4

    if-lez v4, :cond_84

    const/16 v4, 0x3f

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gtz v4, :cond_2a

    const/4 v4, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v4, 0x0

    :goto_2b
    if-eqz v4, :cond_32

    const-string v5, "?"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_32
    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const-string v6, "="

    const-string v7, "&"

    if-nez v4, :cond_46

    invoke-virtual {p0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_63

    :cond_46
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_63

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_63
    :goto_63
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_84

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_63

    :cond_84
    :try_start_84
    new-instance v4, Ljava/net/URL;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    const-string v4, "GET"

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v4, "Content-length"

    const-string v5, "0"

    invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    const/16 v4, 0x2710

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v4, "Content-Type"

    const-string v5, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Access-Key"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient;->mPublicherId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient;->mSecurityToken:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_e3

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e3

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_110

    const/16 v0, 0xcc

    if-ne p1, v0, :cond_f3

    goto :goto_110

    :cond_f3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server response "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for request:\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;)V

    goto :goto_11e

    :cond_110
    :goto_110
    new-instance p0, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p0, v2, v3}, Lcom/kidoz/sdk/api/server_connect/StreamToStringConverter;->readStream(Ljava/io/BufferedInputStream;Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;Z)Ljava/lang/String;

    move-result-object p0

    move-object v2, p0

    :goto_11e
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_121
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_121} :catch_122

    goto :goto_13b

    :catch_122
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " \n IO Exception GET request! \n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;)V

    :goto_13b
    return-object v2
.end method

.method public static makePostConnection(Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;
    .registers 8

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/TestUtils;->isMultiEnv()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-object v1

    :cond_10
    :try_start_10
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const-string v0, "POST"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    const/16 v2, 0x2710

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    const-string v5, "UTF-8"

    invoke-direct {v4, v2, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-static {p1}, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient;->getPostDataString(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 v2, 0xc8

    if-ne p1, v2, :cond_7e

    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p1, v1, v0}, Lcom/kidoz/sdk/api/server_connect/StreamToStringConverter;->readStream(Ljava/io/BufferedInputStream;Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;Z)Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    :cond_7e
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_81} :catch_82

    goto :goto_9b

    :catch_82
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " \n IO Exception POST request! \n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;)V

    :goto_9b
    return-object v1
.end method

.method public static updateDomain(Ljava/lang/String;)V
    .registers 2

    if-eqz p0, :cond_c

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    sput-object p0, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient;->DOMAIN:Ljava/lang/String;

    :cond_c
    return-void
.end method

.method public static updateWaterfallDomain(Ljava/lang/String;)V
    .registers 2

    if-eqz p0, :cond_c

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    sput-object p0, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient;->WATERFALL_DOMAIN:Ljava/lang/String;

    :cond_c
    return-void
.end method

###### Class com.kidoz.sdk.api.server_connect.BaseConnectionClient.AnonymousClass1 (com.kidoz.sdk.api.server_connect.BaseConnectionClient$1)
.class Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$1;
.super Ljava/lang/Object;
.source "BaseConnectionClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient;->makeAsyncGet(Ljava/lang/String;Landroid/content/ContentValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$contentValues:Landroid/content/ContentValues;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$1;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$1;->val$contentValues:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$1;->val$url:Ljava/lang/String;

    iget-object v1, p0, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$1;->val$contentValues:Landroid/content/ContentValues;

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient;->makeGetConnection(Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    return-void
.end method

###### Class com.kidoz.sdk.api.server_connect.BaseConnectionClient.CONNECTION_TYPE (com.kidoz.sdk.api.server_connect.BaseConnectionClient$CONNECTION_TYPE)
.class public final enum Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;
.super Ljava/lang/Enum;
.source "BaseConnectionClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "CONNECTION_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;

.field public static final enum GET:Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;

.field public static final enum POST:Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;


# direct methods
.method private static synthetic $values()[Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;

    sget-object v1, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;->POST:Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;->GET:Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;

    const-string v1, "POST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;->POST:Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;

    new-instance v0, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;

    const-string v1, "GET"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;->GET:Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;

    invoke-static {}, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;->$values()[Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;

    move-result-object v0

    sput-object v0, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;->$VALUES:[Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;
    .registers 2

    const-class v0, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;
    .registers 1

    sget-object v0, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;->$VALUES:[Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;

    invoke-virtual {v0}, [Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;

    return-object v0
.end method

###### Class com.kidoz.sdk.api.server_connect.BaseConnectionClient.IOnImageRequestCallback (com.kidoz.sdk.api.server_connect.BaseConnectionClient$IOnImageRequestCallback)
.class public interface abstract Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$IOnImageRequestCallback;
.super Ljava/lang/Object;
.source "BaseConnectionClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IOnImageRequestCallback"
.end annotation


# virtual methods
.method public abstract onImageRecieved(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
