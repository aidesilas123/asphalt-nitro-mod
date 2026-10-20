###### Class com.kidoz.sdk.api.general.cache.BaseDataRequest (com.kidoz.sdk.api.general.cache.BaseDataRequest)
.class public abstract Lcom/kidoz/sdk/api/general/cache/BaseDataRequest;
.super Ljava/lang/Object;
.source "BaseDataRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final IO_BUFFER_SIZE:I = 0x1000


# instance fields
.field private mContentValues:Landroid/content/ContentValues;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/cache/BaseDataRequest;->mUrl:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/cache/BaseDataRequest;->mContentValues:Landroid/content/ContentValues;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/cache/BaseDataRequest;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/kidoz/sdk/api/general/cache/BaseDataRequest;->mContentValues:Landroid/content/ContentValues;

    return-void
.end method

.method private readStream(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    .registers 7

    const/16 v0, 0x1000

    const/4 v1, 0x0

    :try_start_3
    new-array v0, v0, [B

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->available()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_e} :catch_37
    .catchall {:try_start_3 .. :try_end_e} :catchall_2b

    :try_start_e
    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    :goto_12
    if-lez v3, :cond_1d

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    goto :goto_12

    :cond_1d
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_21} :catch_38
    .catchall {:try_start_e .. :try_end_21} :catchall_28

    :try_start_21
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_27} :catch_27

    :catch_27
    return-object v0

    :catchall_28
    move-exception v0

    move-object v1, v2

    goto :goto_2c

    :catchall_2b
    move-exception v0

    :goto_2c
    if-eqz p1, :cond_31

    :try_start_2e
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V

    :cond_31
    if-eqz v1, :cond_36

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_36} :catch_36

    :catch_36
    :cond_36
    throw v0

    :catch_37
    move-object v2, v1

    :catch_38
    if-eqz p1, :cond_3d

    :try_start_3a
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V

    :cond_3d
    if-eqz v2, :cond_42

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_42} :catch_42

    :catch_42
    :cond_42
    return-object v1
.end method


# virtual methods
.method protected executePrivate()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/cache/BaseDataRequest;->mUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/cache/BaseDataRequest;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {p0, v0, v1}, Lcom/kidoz/sdk/api/general/cache/BaseDataRequest;->makeGetConnection(Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, v0}, Lcom/kidoz/sdk/api/general/cache/BaseDataRequest;->parseDataResult(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method

.method public executeRequest()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/general/cache/BaseDataRequest;->executePrivate()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public executeRequestAsync(Lcom/kidoz/sdk/api/general/cache/DataRequestResult;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kidoz/sdk/api/general/cache/DataRequestResult<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/kidoz/sdk/api/general/cache/BaseDataRequest$1;

    invoke-direct {v0, p0, p1}, Lcom/kidoz/sdk/api/general/cache/BaseDataRequest$1;-><init>(Lcom/kidoz/sdk/api/general/cache/BaseDataRequest;Lcom/kidoz/sdk/api/general/cache/DataRequestResult;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;->execute(Ljava/lang/Object;)V

    return-void
.end method

.method protected getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/cache/BaseDataRequest;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected makeGetConnection(Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_5c

    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result p1

    if-lez p1, :cond_5c

    const-string p1, "?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "="

    if-eqz v1, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_39
    :goto_39
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_39

    :cond_5c
    const/4 p1, 0x0

    :try_start_5d
    new-instance p2, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljava/net/HttpURLConnection;

    const-string v0, "GET"

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v0, "Content-length"

    const-string v1, "0"

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    const/16 v0, 0x2710

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v0, "Content-Type"

    const-string v1, "application/x-www-form-urlencoded"

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_aa

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lcom/kidoz/sdk/api/general/cache/BaseDataRequest;->readStream(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    goto :goto_ab

    :cond_aa
    move-object v0, p1

    :goto_ab
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_ae} :catch_af

    move-object p1, v0

    :catch_af
    return-object p1
.end method

.method protected abstract parseDataResult(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method protected setContentValues(Landroid/content/ContentValues;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/cache/BaseDataRequest;->mContentValues:Landroid/content/ContentValues;

    return-void
.end method

.method protected setUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/cache/BaseDataRequest;->mUrl:Ljava/lang/String;

    return-void
.end method
