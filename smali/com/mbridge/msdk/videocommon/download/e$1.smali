###### Class com.mbridge.msdk.videocommon.download.e.AnonymousClass1 (com.mbridge.msdk.videocommon.download.e$1)
.class final Lcom/mbridge/msdk/videocommon/download/e$1;
.super Lcom/mbridge/msdk/foundation/same/e/a;
.source "DownLoadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/videocommon/download/e;->a(Ljava/lang/String;Lcom/mbridge/msdk/videocommon/download/g$c;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/videocommon/download/g$c;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Z


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/videocommon/download/g$c;Ljava/lang/String;Z)V
    .registers 4

    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/e$1;->a:Lcom/mbridge/msdk/videocommon/download/g$c;

    iput-object p2, p0, Lcom/mbridge/msdk/videocommon/download/e$1;->e:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/mbridge/msdk/videocommon/download/e$1;->f:Z

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/same/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 12

    const-string v0, "DownLoadUtils"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_4
    iget-object v3, p0, Lcom/mbridge/msdk/videocommon/download/e$1;->a:Lcom/mbridge/msdk/videocommon/download/g$c;

    if-eqz v3, :cond_b

    invoke-interface {v3}, Lcom/mbridge/msdk/videocommon/download/g$c;->a()V

    :cond_b
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/mbridge/msdk/videocommon/download/e$1;->e:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    const/16 v4, 0x7530

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/16 v4, 0x4e20

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "response code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/mbridge/msdk/foundation/tools/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_80

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_42} :catch_ab
    .catchall {:try_start_4 .. :try_end_42} :catchall_a7

    const/16 v5, 0x1800

    :try_start_44
    new-array v5, v5, [B

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4b} :catch_7d
    .catchall {:try_start_44 .. :try_end_4b} :catchall_79

    :goto_4b
    :try_start_4b
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_56

    invoke-virtual {v6, v5, v1, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_4b

    :cond_56
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    if-eqz v5, :cond_6f

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_60} :catch_75
    .catchall {:try_start_4b .. :try_end_60} :catchall_147

    :try_start_60
    iget-boolean v7, p0, Lcom/mbridge/msdk/videocommon/download/e$1;->f:Z

    if-nez v7, :cond_6a

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_69} :catch_6c
    .catchall {:try_start_60 .. :try_end_69} :catchall_147

    goto :goto_71

    :cond_6a
    move-object v7, v2

    goto :goto_71

    :catch_6c
    move-exception v3

    move-object v7, v2

    goto :goto_b0

    :cond_6f
    move-object v5, v2

    move-object v7, v5

    :goto_71
    const/4 v8, 0x1

    const-string v9, ""

    goto :goto_96

    :catch_75
    move-exception v3

    move-object v5, v2

    move-object v7, v5

    goto :goto_b0

    :catchall_79
    move-exception v0

    move-object v6, v2

    goto/16 :goto_148

    :catch_7d
    move-exception v3

    move-object v5, v2

    goto :goto_ae

    :cond_80
    :try_start_80
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "responseCode is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_91} :catch_ab
    .catchall {:try_start_80 .. :try_end_91} :catchall_a7

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    const/4 v8, 0x0

    :goto_96
    :try_start_96
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_99} :catch_a5
    .catchall {:try_start_96 .. :try_end_99} :catchall_147

    if-eqz v4, :cond_9e

    :try_start_9b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_9e
    if-eqz v6, :cond_a3

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_a3} :catch_d2

    :cond_a3
    move v1, v8

    goto :goto_e1

    :catch_a5
    move-exception v3

    goto :goto_b0

    :catchall_a7
    move-exception v0

    move-object v6, v2

    goto/16 :goto_149

    :catch_ab
    move-exception v3

    move-object v4, v2

    move-object v5, v4

    :goto_ae
    move-object v6, v5

    move-object v7, v6

    :goto_b0
    :try_start_b0
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getStringFromUrl failed "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cc
    .catchall {:try_start_b0 .. :try_end_cc} :catchall_147

    if-eqz v4, :cond_d4

    :try_start_ce
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_d4

    :catch_d2
    move-exception v0

    goto :goto_da

    :cond_d4
    :goto_d4
    if-eqz v6, :cond_e1

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d9} :catch_d2

    goto :goto_e1

    :goto_da
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    :cond_e1
    :goto_e1
    if-eqz v1, :cond_f6

    :try_start_e3
    iget-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/e$1;->f:Z

    if-eqz v0, :cond_f6

    if-eqz v5, :cond_f6

    array-length v0, v5

    if-lez v0, :cond_f6

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/e$1;->a:Lcom/mbridge/msdk/videocommon/download/g$c;

    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/e$1;->e:Ljava/lang/String;

    invoke-interface {v0, v2, v5, v1}, Lcom/mbridge/msdk/videocommon/download/g$c;->a(Ljava/lang/String;[BLjava/lang/String;)V

    goto :goto_146

    :catchall_f4
    move-exception v0

    goto :goto_12f

    :cond_f6
    if-eqz v1, :cond_116

    invoke-static {v7}, Lcom/mbridge/msdk/foundation/tools/ak;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_116

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_116

    const-string v0, "<mbridgeloadend></mbridgeloadend>"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_116

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/e$1;->a:Lcom/mbridge/msdk/videocommon/download/g$c;

    if-eqz v0, :cond_146

    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/e$1;->e:Ljava/lang/String;

    invoke-interface {v0, v7, v5, v1}, Lcom/mbridge/msdk/videocommon/download/g$c;->a(Ljava/lang/String;[BLjava/lang/String;)V

    goto :goto_146

    :cond_116
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/e$1;->a:Lcom/mbridge/msdk/videocommon/download/g$c;

    if-eqz v0, :cond_146

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content write failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/videocommon/download/g$c;->a(Ljava/lang/String;)V
    :try_end_12e
    .catchall {:try_start_e3 .. :try_end_12e} :catchall_f4

    goto :goto_146

    :goto_12f
    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_136

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_136
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/e$1;->a:Lcom/mbridge/msdk/videocommon/download/g$c;

    if-eqz v1, :cond_146

    :try_start_13a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/mbridge/msdk/videocommon/download/g$c;->a(Ljava/lang/String;)V
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_13a .. :try_end_141} :catch_142

    goto :goto_146

    :catch_142
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_146
    :goto_146
    return-void

    :catchall_147
    move-exception v0

    :goto_148
    move-object v2, v4

    :goto_149
    if-eqz v2, :cond_151

    :try_start_14b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_151

    :catch_14f
    move-exception v1

    goto :goto_157

    :cond_151
    :goto_151
    if-eqz v6, :cond_15d

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_156
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_156} :catch_14f

    goto :goto_15d

    :goto_157
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :cond_15d
    :goto_15d
    throw v0
.end method

.method public final b()V
    .registers 1

    return-void
.end method
