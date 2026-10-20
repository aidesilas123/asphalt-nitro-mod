###### Class com.json.wd (com.ironsource.wd)
.class Lcom/ironsource/wd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/ironsource/q3;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/ironsource/vd;

.field private final b:Ljava/lang/String;

.field private c:J


# direct methods
.method constructor <init>(Lcom/ironsource/vd;Ljava/lang/String;J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/wd;->a:Lcom/ironsource/vd;

    iput-object p2, p0, Lcom/ironsource/wd;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/ironsource/wd;->c:J

    return-void
.end method


# virtual methods
.method a([BLjava/lang/String;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->saveFile([BLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a()Lcom/ironsource/q3;
    .registers 10

    const-string v0, "FileWorkerThread"

    iget-wide v1, p0, Lcom/ironsource/wd;->c:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_e

    const-wide/16 v1, 0x1

    iput-wide v1, p0, Lcom/ironsource/wd;->c:J

    :cond_e
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_10
    int-to-long v3, v1

    iget-wide v5, p0, Lcom/ironsource/wd;->c:J

    const/16 v7, 0x3f1

    cmp-long v8, v3, v5

    if-gez v8, :cond_3d

    iget-object v2, p0, Lcom/ironsource/wd;->a:Lcom/ironsource/vd;

    invoke-virtual {v2}, Lcom/ironsource/vd;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/wd;->a:Lcom/ironsource/vd;

    invoke-virtual {v3}, Lcom/ironsource/vd;->a()I

    move-result v3

    iget-object v4, p0, Lcom/ironsource/wd;->a:Lcom/ironsource/vd;

    invoke-virtual {v4}, Lcom/ironsource/vd;->c()I

    move-result v4

    invoke-virtual {p0, v2, v1, v3, v4}, Lcom/ironsource/wd;->b(Ljava/lang/String;III)Lcom/ironsource/q3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/q3;->b()I

    move-result v3

    const/16 v4, 0x3f0

    if-eq v3, v4, :cond_3a

    if-eq v3, v7, :cond_3a

    goto :goto_3d

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_3d
    :goto_3d
    if-eqz v2, :cond_d8

    invoke-virtual {v2}, Lcom/ironsource/q3;->a()[B

    move-result-object v1

    if-eqz v1, :cond_d8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/wd;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ironsource/wd;->a:Lcom/ironsource/vd;

    invoke-virtual {v4}, Lcom/ironsource/vd;->b()Lcom/ironsource/q6;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ironsource/wd;->a:Lcom/ironsource/vd;

    invoke-virtual {v5}, Lcom/ironsource/vd;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "tmp_"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ironsource/wd;->a:Lcom/ironsource/vd;

    invoke-virtual {v3}, Lcom/ironsource/vd;->b()Lcom/ironsource/q6;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :try_start_8c
    invoke-virtual {v2}, Lcom/ironsource/q3;->a()[B

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/ironsource/wd;->a([BLjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_9c

    const/16 v1, 0x3ee

    invoke-virtual {v2, v1}, Lcom/ironsource/q3;->a(I)V

    goto :goto_d8

    :cond_9c
    invoke-virtual {p0, v3, v1}, Lcom/ironsource/wd;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d8

    const/16 v1, 0x3f6

    invoke-virtual {v2, v1}, Lcom/ironsource/q3;->a(I)V
    :try_end_a7
    .catch Ljava/io/FileNotFoundException; {:try_start_8c .. :try_end_a7} :catch_d3
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_a7} :catch_bd
    .catch Ljava/lang/Error; {:try_start_8c .. :try_end_a7} :catch_a8

    goto :goto_d8

    :catch_a8
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ba

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ba
    const/16 v0, 0x3fb

    goto :goto_d5

    :catch_bd
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_cf

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_cf
    invoke-virtual {v2, v7}, Lcom/ironsource/q3;->a(I)V

    goto :goto_d8

    :catch_d3
    const/16 v0, 0x3fa

    :goto_d5
    invoke-virtual {v2, v0}, Lcom/ironsource/q3;->a(I)V

    :cond_d8
    :goto_d8
    return-object v2
.end method

.method b(Ljava/lang/String;III)Lcom/ironsource/q3;
    .registers 11

    const-string v0, "FileWorkerThread"

    new-instance v1, Lcom/ironsource/q3;

    invoke-direct {v1}, Lcom/ironsource/q3;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v1, p1}, Lcom/ironsource/q3;->a(Ljava/lang/String;)V

    const/16 p1, 0x3ef

    invoke-virtual {v1, p1}, Lcom/ironsource/q3;->a(I)V

    return-object v1

    :cond_16
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_18
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->toURI()Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_26
    .catch Ljava/net/MalformedURLException; {:try_start_18 .. :try_end_26} :catch_12e
    .catch Ljava/net/URISyntaxException; {:try_start_18 .. :try_end_26} :catch_120
    .catch Ljava/net/SocketTimeoutException; {:try_start_18 .. :try_end_26} :catch_112
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_26} :catch_104
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_26} :catch_c2
    .catch Ljava/lang/Error; {:try_start_18 .. :try_end_26} :catch_9b
    .catchall {:try_start_18 .. :try_end_26} :catchall_98

    :try_start_26
    const-string v5, "GET"

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v4, p4}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v4}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 p3, 0xc8

    if-lt v3, p3, :cond_59

    const/16 p3, 0x190

    if-lt v3, p3, :cond_41

    goto :goto_59

    :cond_41
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ironsource/wd;->d(Ljava/io/InputStream;)[B

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/ironsource/q3;->a([B)V

    goto :goto_7f

    :catch_4d
    nop

    goto/16 :goto_105

    :catch_50
    nop

    goto/16 :goto_113

    :catch_53
    nop

    goto/16 :goto_121

    :catch_56
    nop

    goto/16 :goto_12f

    :cond_59
    :goto_59
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " RESPONSE CODE: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " URL: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " ATTEMPT: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7d
    .catch Ljava/net/MalformedURLException; {:try_start_26 .. :try_end_7d} :catch_56
    .catch Ljava/net/URISyntaxException; {:try_start_26 .. :try_end_7d} :catch_53
    .catch Ljava/net/SocketTimeoutException; {:try_start_26 .. :try_end_7d} :catch_50
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_7d} :catch_4d
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_7d} :catch_94
    .catch Ljava/lang/Error; {:try_start_26 .. :try_end_7d} :catch_90
    .catchall {:try_start_26 .. :try_end_7d} :catchall_8d

    const/16 v3, 0x3f3

    :goto_7f
    if-eqz v2, :cond_84

    :try_start_81
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_84
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_87
    .catchall {:try_start_81 .. :try_end_87} :catchall_88

    goto :goto_ba

    :catchall_88
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_ba

    :catchall_8d
    move-exception p2

    goto/16 :goto_ec

    :catch_90
    move-exception p2

    move-object p3, v2

    move-object v2, v4

    goto :goto_9d

    :catch_94
    move-exception p2

    move-object p3, v2

    move-object v2, v4

    goto :goto_c4

    :catchall_98
    move-exception p2

    move-object v4, v2

    goto :goto_ec

    :catch_9b
    move-exception p2

    move-object p3, v2

    :goto_9d
    const/16 v3, 0x3fb

    :try_start_9f
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_b0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b0
    .catchall {:try_start_9f .. :try_end_b0} :catchall_e9

    :cond_b0
    if-eqz p3, :cond_b5

    :try_start_b2
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    :cond_b5
    if-eqz v2, :cond_ba

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_ba
    .catchall {:try_start_b2 .. :try_end_ba} :catchall_88

    :cond_ba
    :goto_ba
    invoke-virtual {v1, p1}, Lcom/ironsource/q3;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/ironsource/q3;->a(I)V

    goto/16 :goto_141

    :catch_c2
    move-exception p2

    move-object p3, v2

    :goto_c4
    :try_start_c4
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_d5

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d5
    .catchall {:try_start_c4 .. :try_end_d5} :catchall_e9

    :cond_d5
    const/16 p2, 0x3f1

    if-eqz p3, :cond_df

    :try_start_d9
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    goto :goto_df

    :catchall_dd
    move-exception p3

    goto :goto_e5

    :cond_df
    :goto_df
    if-eqz v2, :cond_13b

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e4
    .catchall {:try_start_d9 .. :try_end_e4} :catchall_dd

    goto :goto_13b

    :goto_e5
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_13b

    :catchall_e9
    move-exception p2

    move-object v4, v2

    move-object v2, p3

    :goto_ec
    if-eqz v2, :cond_f4

    :try_start_ee
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_f4

    :catchall_f2
    move-exception p3

    goto :goto_fa

    :cond_f4
    :goto_f4
    if-eqz v4, :cond_fd

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f9
    .catchall {:try_start_ee .. :try_end_f9} :catchall_f2

    goto :goto_fd

    :goto_fa
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_fd
    :goto_fd
    invoke-virtual {v1, p1}, Lcom/ironsource/q3;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/ironsource/q3;->a(I)V

    throw p2

    :catch_104
    move-object v4, v2

    :goto_105
    const/16 p2, 0x3fa

    if-eqz v2, :cond_10c

    :try_start_109
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_10c
    if-eqz v4, :cond_13b

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_13b

    :catch_112
    move-object v4, v2

    :goto_113
    const/16 p2, 0x3f0

    if-eqz v2, :cond_11a

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_11a
    if-eqz v4, :cond_13b

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_13b

    :catch_120
    move-object v4, v2

    :goto_121
    const/16 p2, 0x3f2

    if-eqz v2, :cond_128

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_128
    if-eqz v4, :cond_13b

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_13b

    :catch_12e
    move-object v4, v2

    :goto_12f
    const/16 p2, 0x3ec

    if-eqz v2, :cond_136

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_136
    if-eqz v4, :cond_13b

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_13b
    .catchall {:try_start_109 .. :try_end_13b} :catchall_dd

    :cond_13b
    :goto_13b
    invoke-virtual {v1, p1}, Lcom/ironsource/q3;->a(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/ironsource/q3;->a(I)V

    :goto_141
    return-object v1
.end method

.method c(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ironsource/wd;->a()Lcom/ironsource/q3;

    move-result-object v0

    return-object v0
.end method

.method d(Ljava/io/InputStream;)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x2000

    new-array v2, v1, [B

    :goto_9
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_15

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    :cond_15
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method
