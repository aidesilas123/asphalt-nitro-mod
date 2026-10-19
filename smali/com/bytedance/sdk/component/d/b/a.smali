###### Class com.bytedance.sdk.component.d.b.a (com.bytedance.sdk.component.d.b.a)
.class public Lcom/bytedance/sdk/component/d/b/a;
.super Ljava/lang/Object;
.source "DefaultHttpClient.java"

# interfaces
.implements Lcom/bytedance/sdk/component/d/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/component/d/d<",
        "Lcom/bytedance/sdk/component/d/b/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_11

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_11

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_34
    return-object v0
.end method


# virtual methods
.method public synthetic a(Lcom/bytedance/sdk/component/d/e;)Lcom/bytedance/sdk/component/d/f;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/d/b/a;->b(Lcom/bytedance/sdk/component/d/e;)Lcom/bytedance/sdk/component/d/b/d;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/bytedance/sdk/component/d/e;)Lcom/bytedance/sdk/component/d/b/d;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/d/e;",
            ")",
            "Lcom/bytedance/sdk/component/d/b/d<",
            "[B>;"
        }
    .end annotation

    const-string v0, "InternalHttpClient"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_4
    new-instance v3, Ljava/net/URL;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/d/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    const-string v4, "GET"

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v4, 0x1388

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_27
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_27} :catch_8d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_27} :catch_6c
    .catchall {:try_start_4 .. :try_end_27} :catchall_69

    const/16 v5, 0x400

    :try_start_29
    new-array v5, v5, [B

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_30
    .catch Ljava/net/MalformedURLException; {:try_start_29 .. :try_end_30} :catch_66
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_30} :catch_63
    .catchall {:try_start_29 .. :try_end_30} :catchall_60

    :goto_30
    :try_start_30
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3b

    invoke-virtual {v6, v5, v1, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_30

    :cond_3b
    const/16 v1, 0xc8

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5
    :try_end_41
    .catch Ljava/net/MalformedURLException; {:try_start_30 .. :try_end_41} :catch_5d
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_41} :catch_5a
    .catchall {:try_start_30 .. :try_end_41} :catchall_b9

    :try_start_41
    invoke-interface {p1}, Lcom/bytedance/sdk/component/d/e;->b()Z

    move-result p1

    if-eqz p1, :cond_4c

    invoke-direct {p0, v3}, Lcom/bytedance/sdk/component/d/b/a;->a(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object p1
    :try_end_4b
    .catch Ljava/net/MalformedURLException; {:try_start_41 .. :try_end_4b} :catch_58
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_4b} :catch_56
    .catchall {:try_start_41 .. :try_end_4b} :catchall_b9

    move-object v2, p1

    :cond_4c
    invoke-static {v4}, Lcom/bytedance/sdk/component/d/c/c/b;->a(Ljava/io/Closeable;)V

    invoke-static {v6}, Lcom/bytedance/sdk/component/d/c/c/b;->a(Ljava/io/Closeable;)V

    const-string p1, "success"

    goto/16 :goto_b3

    :catch_56
    move-exception p1

    goto :goto_70

    :catch_58
    move-exception p1

    goto :goto_91

    :catch_5a
    move-exception p1

    move-object v5, v2

    goto :goto_70

    :catch_5d
    move-exception p1

    move-object v5, v2

    goto :goto_91

    :catchall_60
    move-exception p1

    move-object v6, v2

    goto :goto_ba

    :catch_63
    move-exception p1

    move-object v5, v2

    goto :goto_6f

    :catch_66
    move-exception p1

    move-object v5, v2

    goto :goto_90

    :catchall_69
    move-exception p1

    move-object v6, v2

    goto :goto_bb

    :catch_6c
    move-exception p1

    move-object v4, v2

    move-object v5, v4

    :goto_6f
    move-object v6, v5

    :goto_70
    :try_start_70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_ad

    :catch_8d
    move-exception p1

    move-object v4, v2

    move-object v5, v4

    :goto_90
    move-object v6, v5

    :goto_91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MalformedURLException:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object p1
    :try_end_ad
    .catchall {:try_start_70 .. :try_end_ad} :catchall_b9

    :goto_ad
    invoke-static {v4}, Lcom/bytedance/sdk/component/d/c/c/b;->a(Ljava/io/Closeable;)V

    invoke-static {v6}, Lcom/bytedance/sdk/component/d/c/c/b;->a(Ljava/io/Closeable;)V

    :goto_b3
    new-instance v0, Lcom/bytedance/sdk/component/d/b/d;

    invoke-direct {v0, v1, v5, p1, v2}, Lcom/bytedance/sdk/component/d/b/d;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0

    :catchall_b9
    move-exception p1

    :goto_ba
    move-object v2, v4

    :goto_bb
    invoke-static {v2}, Lcom/bytedance/sdk/component/d/c/c/b;->a(Ljava/io/Closeable;)V

    invoke-static {v6}, Lcom/bytedance/sdk/component/d/c/c/b;->a(Ljava/io/Closeable;)V

    throw p1
.end method
