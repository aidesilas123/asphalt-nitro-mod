###### Class com.unity3d.services.core.cache.CacheThreadHandler (com.unity3d.services.core.cache.CacheThreadHandler)
.class Lcom/unity3d/services/core/cache/CacheThreadHandler;
.super Landroid/os/Handler;
.source "CacheThreadHandler.java"


# instance fields
.field private _active:Z

.field private _canceled:Z

.field private _currentRequest:Lcom/unity3d/services/core/request/WebRequest;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_canceled:Z

    iput-boolean v0, p0, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    return-void
.end method

.method private downloadFile(Ljava/lang/String;Ljava/lang/String;IIILjava/util/HashMap;ZLcom/unity3d/services/core/cache/CacheEventSender;)V
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;Z",
            "Lcom/unity3d/services/core/cache/CacheEventSender;",
            ")V"
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v0, p2

    move/from16 v1, p7

    move-object/from16 v13, p8

    const-string v12, "Error closing stream"

    iget-boolean v2, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_canceled:Z

    if-nez v2, :cond_38b

    if-eqz v15, :cond_38b

    if-nez v0, :cond_16

    goto/16 :goto_38b

    :cond_16
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, " to "

    if-eqz v1, :cond_4b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unity Ads cache: resuming download "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " at "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " bytes"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_65

    :cond_4b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unity Ads cache: start downloading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    :goto_65
    invoke-static {}, Lcom/unity3d/services/core/device/Device;->isActiveNetworkConnected()Z

    move-result v0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v8, 0x0

    if-nez v0, :cond_81

    const-string v0, "Unity Ads cache: download cancelled, no internet connection available"

    invoke-static {v0}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    sget-object v0, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    new-array v1, v11, [Ljava/lang/Object;

    sget-object v2, Lcom/unity3d/services/core/cache/CacheError;->NO_INTERNET:Lcom/unity3d/services/core/cache/CacheError;

    aput-object v2, v1, v8

    aput-object v15, v1, v10

    invoke-virtual {v13, v0, v1}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z

    return-void

    :cond_81
    iput-boolean v10, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v9, 0x0

    const/4 v6, 0x3

    :try_start_89
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_8e
    .catch Ljava/io/FileNotFoundException; {:try_start_89 .. :try_end_8e} :catch_322
    .catch Ljava/net/MalformedURLException; {:try_start_89 .. :try_end_8e} :catch_2dd
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8e} :catch_296
    .catch Ljava/lang/IllegalStateException; {:try_start_89 .. :try_end_8e} :catch_24f
    .catch Lcom/unity3d/services/core/request/NetworkIOException; {:try_start_89 .. :try_end_8e} :catch_208
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8e} :catch_1c1
    .catchall {:try_start_89 .. :try_end_8e} :catchall_1b4

    move/from16 v0, p3

    move/from16 v1, p4

    move-object/from16 v4, p6

    :try_start_94
    invoke-direct {v14, v15, v0, v1, v4}, Lcom/unity3d/services/core/cache/CacheThreadHandler;->getWebRequest(Ljava/lang/String;IILjava/util/HashMap;)Lcom/unity3d/services/core/request/WebRequest;

    move-result-object v0

    iput-object v0, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    new-instance v1, Lcom/unity3d/services/core/cache/CacheThreadHandler$1;

    move/from16 v4, p5

    invoke-direct {v1, v14, v13, v5, v4}, Lcom/unity3d/services/core/cache/CacheThreadHandler$1;-><init>(Lcom/unity3d/services/core/cache/CacheThreadHandler;Lcom/unity3d/services/core/cache/CacheEventSender;Ljava/io/File;I)V

    invoke-virtual {v0, v1}, Lcom/unity3d/services/core/request/WebRequest;->setProgressListener(Lcom/unity3d/services/core/request/IWebRequestProgressListener;)V

    iget-object v0, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    invoke-virtual {v0, v7}, Lcom/unity3d/services/core/request/WebRequest;->makeStreamRequest(Ljava/io/OutputStream;)J

    move-result-wide v16

    iput-boolean v8, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    iget-object v0, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    invoke-virtual {v0}, Lcom/unity3d/services/core/request/WebRequest;->getContentLength()J

    move-result-wide v18

    iget-object v0, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    invoke-virtual {v0}, Lcom/unity3d/services/core/request/WebRequest;->isCanceled()Z

    move-result v0

    iget-object v1, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    invoke-virtual {v1}, Lcom/unity3d/services/core/request/WebRequest;->getResponseCode()I

    move-result v20

    iget-object v1, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    invoke-virtual {v1}, Lcom/unity3d/services/core/request/WebRequest;->getResponseHeaders()Ljava/util/Map;

    move-result-object v21
    :try_end_c4
    .catch Ljava/io/FileNotFoundException; {:try_start_94 .. :try_end_c4} :catch_1a4
    .catch Ljava/net/MalformedURLException; {:try_start_94 .. :try_end_c4} :catch_194
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_c4} :catch_184
    .catch Ljava/lang/IllegalStateException; {:try_start_94 .. :try_end_c4} :catch_174
    .catch Lcom/unity3d/services/core/request/NetworkIOException; {:try_start_94 .. :try_end_c4} :catch_164
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_c4} :catch_154
    .catchall {:try_start_94 .. :try_end_c4} :catchall_143

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v22, v7

    const/4 v15, 0x3

    move-wide/from16 v6, v16

    move-object v15, v9

    move-wide/from16 v8, v18

    const/16 v17, 0x1

    move v10, v0

    const/16 v18, 0x2

    move/from16 v11, v20

    move-object/from16 v23, v12

    move-object/from16 v12, v21

    move-object/from16 v13, p8

    :try_start_dd
    invoke-direct/range {v1 .. v13}, Lcom/unity3d/services/core/cache/CacheThreadHandler;->postProcessDownload(JLjava/lang/String;Ljava/io/File;JJZILjava/util/Map;Lcom/unity3d/services/core/cache/CacheEventSender;)V
    :try_end_e0
    .catch Ljava/io/FileNotFoundException; {:try_start_dd .. :try_end_e0} :catch_13a
    .catch Ljava/net/MalformedURLException; {:try_start_dd .. :try_end_e0} :catch_131
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e0} :catch_128
    .catch Ljava/lang/IllegalStateException; {:try_start_dd .. :try_end_e0} :catch_11f
    .catch Lcom/unity3d/services/core/request/NetworkIOException; {:try_start_dd .. :try_end_e0} :catch_117
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_e0} :catch_10f
    .catchall {:try_start_dd .. :try_end_e0} :catchall_107

    iput-object v15, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    :try_start_e2
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_e5} :catch_e7

    goto/16 :goto_366

    :catch_e7
    move-exception v0

    move-object v1, v0

    move-object/from16 v2, v23

    invoke-static {v2, v1}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    sget-object v0, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/unity3d/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    aput-object p1, v2, v17

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v18

    move-object/from16 v1, p8

    invoke-virtual {v1, v0, v2}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z

    goto/16 :goto_366

    :catchall_107
    move-exception v0

    move-object/from16 v1, p8

    move-object/from16 v2, v23

    const/4 v3, 0x3

    const/4 v4, 0x0

    goto :goto_14f

    :catch_10f
    move-exception v0

    move-object/from16 v1, p8

    move-object/from16 v2, v23

    const/4 v3, 0x3

    const/4 v4, 0x0

    goto :goto_160

    :catch_117
    move-exception v0

    move-object/from16 v1, p8

    move-object/from16 v2, v23

    const/4 v3, 0x3

    const/4 v4, 0x0

    goto :goto_170

    :catch_11f
    move-exception v0

    move-object/from16 v1, p8

    move-object/from16 v2, v23

    const/4 v3, 0x3

    const/4 v4, 0x0

    goto/16 :goto_180

    :catch_128
    move-exception v0

    move-object/from16 v1, p8

    move-object/from16 v2, v23

    const/4 v3, 0x3

    const/4 v4, 0x0

    goto/16 :goto_190

    :catch_131
    move-exception v0

    move-object/from16 v1, p8

    move-object/from16 v2, v23

    const/4 v3, 0x3

    const/4 v4, 0x0

    goto/16 :goto_1a0

    :catch_13a
    move-exception v0

    move-object/from16 v1, p8

    move-object/from16 v2, v23

    const/4 v3, 0x3

    const/4 v4, 0x0

    goto/16 :goto_1b0

    :catchall_143
    move-exception v0

    move-object/from16 v22, v7

    move-object v15, v9

    move-object v2, v12

    move-object v1, v13

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x2

    :goto_14f
    move-object v5, v0

    move-object/from16 v9, v22

    goto/16 :goto_36a

    :catch_154
    move-exception v0

    move-object/from16 v22, v7

    move-object v15, v9

    move-object v2, v12

    move-object v1, v13

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x2

    :goto_160
    move-object/from16 v9, v22

    goto/16 :goto_1cb

    :catch_164
    move-exception v0

    move-object/from16 v22, v7

    move-object v15, v9

    move-object v2, v12

    move-object v1, v13

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x2

    :goto_170
    move-object/from16 v9, v22

    goto/16 :goto_212

    :catch_174
    move-exception v0

    move-object/from16 v22, v7

    move-object v15, v9

    move-object v2, v12

    move-object v1, v13

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x2

    :goto_180
    move-object/from16 v9, v22

    goto/16 :goto_259

    :catch_184
    move-exception v0

    move-object/from16 v22, v7

    move-object v15, v9

    move-object v2, v12

    move-object v1, v13

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x2

    :goto_190
    move-object/from16 v9, v22

    goto/16 :goto_2a0

    :catch_194
    move-exception v0

    move-object/from16 v22, v7

    move-object v15, v9

    move-object v2, v12

    move-object v1, v13

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x2

    :goto_1a0
    move-object/from16 v9, v22

    goto/16 :goto_2e7

    :catch_1a4
    move-exception v0

    move-object/from16 v22, v7

    move-object v15, v9

    move-object v2, v12

    move-object v1, v13

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x2

    :goto_1b0
    move-object/from16 v9, v22

    goto/16 :goto_32c

    :catchall_1b4
    move-exception v0

    move-object v15, v9

    move-object v2, v12

    move-object v1, v13

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x2

    :goto_1be
    move-object v5, v0

    goto/16 :goto_36a

    :catch_1c1
    move-exception v0

    move-object v15, v9

    move-object v2, v12

    move-object v1, v13

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x2

    :goto_1cb
    :try_start_1cb
    const-string v5, "Unknown error"

    invoke-static {v5, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    iput-boolean v4, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    sget-object v5, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    new-array v6, v3, [Ljava/lang/Object;

    sget-object v7, Lcom/unity3d/services/core/cache/CacheError;->UNKNOWN_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    aput-object v7, v6, v4

    aput-object p1, v6, v17

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v18

    invoke-virtual {v1, v5, v6}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z
    :try_end_1e5
    .catchall {:try_start_1cb .. :try_end_1e5} :catchall_367

    iput-object v15, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    if-eqz v9, :cond_366

    :try_start_1e9
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_1ec
    .catch Ljava/lang/Exception; {:try_start_1e9 .. :try_end_1ec} :catch_1ee

    goto/16 :goto_366

    :catch_1ee
    move-exception v0

    move-object v5, v0

    invoke-static {v2, v5}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    sget-object v0, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    new-array v2, v3, [Ljava/lang/Object;

    sget-object v3, Lcom/unity3d/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    aput-object v3, v2, v4

    aput-object p1, v2, v17

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v18

    invoke-virtual {v1, v0, v2}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z

    goto/16 :goto_366

    :catch_208
    move-exception v0

    move-object v15, v9

    move-object v2, v12

    move-object v1, v13

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x2

    :goto_212
    :try_start_212
    const-string v5, "Network error"

    invoke-static {v5, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    iput-boolean v4, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    sget-object v5, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    new-array v6, v3, [Ljava/lang/Object;

    sget-object v7, Lcom/unity3d/services/core/cache/CacheError;->NETWORK_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    aput-object v7, v6, v4

    aput-object p1, v6, v17

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v18

    invoke-virtual {v1, v5, v6}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z
    :try_end_22c
    .catchall {:try_start_212 .. :try_end_22c} :catchall_367

    iput-object v15, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    if-eqz v9, :cond_366

    :try_start_230
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_233
    .catch Ljava/lang/Exception; {:try_start_230 .. :try_end_233} :catch_235

    goto/16 :goto_366

    :catch_235
    move-exception v0

    move-object v5, v0

    invoke-static {v2, v5}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    sget-object v0, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    new-array v2, v3, [Ljava/lang/Object;

    sget-object v3, Lcom/unity3d/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    aput-object v3, v2, v4

    aput-object p1, v2, v17

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v18

    invoke-virtual {v1, v0, v2}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z

    goto/16 :goto_366

    :catch_24f
    move-exception v0

    move-object v15, v9

    move-object v2, v12

    move-object v1, v13

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x2

    :goto_259
    :try_start_259
    const-string v5, "Illegal state"

    invoke-static {v5, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    iput-boolean v4, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    sget-object v5, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    new-array v6, v3, [Ljava/lang/Object;

    sget-object v7, Lcom/unity3d/services/core/cache/CacheError;->ILLEGAL_STATE:Lcom/unity3d/services/core/cache/CacheError;

    aput-object v7, v6, v4

    aput-object p1, v6, v17

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v18

    invoke-virtual {v1, v5, v6}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z
    :try_end_273
    .catchall {:try_start_259 .. :try_end_273} :catchall_367

    iput-object v15, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    if-eqz v9, :cond_366

    :try_start_277
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_27a
    .catch Ljava/lang/Exception; {:try_start_277 .. :try_end_27a} :catch_27c

    goto/16 :goto_366

    :catch_27c
    move-exception v0

    move-object v5, v0

    invoke-static {v2, v5}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    sget-object v0, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    new-array v2, v3, [Ljava/lang/Object;

    sget-object v3, Lcom/unity3d/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    aput-object v3, v2, v4

    aput-object p1, v2, v17

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v18

    invoke-virtual {v1, v0, v2}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z

    goto/16 :goto_366

    :catch_296
    move-exception v0

    move-object v15, v9

    move-object v2, v12

    move-object v1, v13

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x2

    :goto_2a0
    :try_start_2a0
    const-string v5, "Couldn\'t request stream"

    invoke-static {v5, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    iput-boolean v4, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    sget-object v5, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    new-array v6, v3, [Ljava/lang/Object;

    sget-object v7, Lcom/unity3d/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    aput-object v7, v6, v4

    aput-object p1, v6, v17

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v18

    invoke-virtual {v1, v5, v6}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z
    :try_end_2ba
    .catchall {:try_start_2a0 .. :try_end_2ba} :catchall_367

    iput-object v15, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    if-eqz v9, :cond_366

    :try_start_2be
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_2c1
    .catch Ljava/lang/Exception; {:try_start_2be .. :try_end_2c1} :catch_2c3

    goto/16 :goto_366

    :catch_2c3
    move-exception v0

    move-object v5, v0

    invoke-static {v2, v5}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    sget-object v0, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    new-array v2, v3, [Ljava/lang/Object;

    sget-object v3, Lcom/unity3d/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    aput-object v3, v2, v4

    aput-object p1, v2, v17

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v18

    invoke-virtual {v1, v0, v2}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z

    goto/16 :goto_366

    :catch_2dd
    move-exception v0

    move-object v15, v9

    move-object v2, v12

    move-object v1, v13

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x2

    :goto_2e7
    :try_start_2e7
    const-string v5, "Malformed URL"

    invoke-static {v5, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    iput-boolean v4, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    sget-object v5, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    new-array v6, v3, [Ljava/lang/Object;

    sget-object v7, Lcom/unity3d/services/core/cache/CacheError;->MALFORMED_URL:Lcom/unity3d/services/core/cache/CacheError;

    aput-object v7, v6, v4

    aput-object p1, v6, v17

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v18

    invoke-virtual {v1, v5, v6}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z
    :try_end_301
    .catchall {:try_start_2e7 .. :try_end_301} :catchall_367

    iput-object v15, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    if-eqz v9, :cond_366

    :try_start_305
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_308
    .catch Ljava/lang/Exception; {:try_start_305 .. :try_end_308} :catch_309

    goto :goto_366

    :catch_309
    move-exception v0

    move-object v5, v0

    invoke-static {v2, v5}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    sget-object v0, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    new-array v2, v3, [Ljava/lang/Object;

    sget-object v3, Lcom/unity3d/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    aput-object v3, v2, v4

    aput-object p1, v2, v17

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v18

    invoke-virtual {v1, v0, v2}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z

    goto :goto_366

    :catch_322
    move-exception v0

    move-object v15, v9

    move-object v2, v12

    move-object v1, v13

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x2

    :goto_32c
    :try_start_32c
    const-string v5, "Couldn\'t create target file"

    invoke-static {v5, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    iput-boolean v4, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    sget-object v5, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    new-array v6, v3, [Ljava/lang/Object;

    sget-object v7, Lcom/unity3d/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    aput-object v7, v6, v4

    aput-object p1, v6, v17

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v18

    invoke-virtual {v1, v5, v6}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z
    :try_end_346
    .catchall {:try_start_32c .. :try_end_346} :catchall_367

    iput-object v15, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    if-eqz v9, :cond_366

    :try_start_34a
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_34d
    .catch Ljava/lang/Exception; {:try_start_34a .. :try_end_34d} :catch_34e

    goto :goto_366

    :catch_34e
    move-exception v0

    move-object v5, v0

    invoke-static {v2, v5}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    sget-object v0, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    new-array v2, v3, [Ljava/lang/Object;

    sget-object v3, Lcom/unity3d/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    aput-object v3, v2, v4

    aput-object p1, v2, v17

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v18

    invoke-virtual {v1, v0, v2}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z

    :cond_366
    :goto_366
    return-void

    :catchall_367
    move-exception v0

    goto/16 :goto_1be

    :goto_36a
    iput-object v15, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    if-eqz v9, :cond_38a

    :try_start_36e
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_371
    .catch Ljava/lang/Exception; {:try_start_36e .. :try_end_371} :catch_372

    goto :goto_38a

    :catch_372
    move-exception v0

    move-object v6, v0

    invoke-static {v2, v6}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    sget-object v0, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    new-array v2, v3, [Ljava/lang/Object;

    sget-object v3, Lcom/unity3d/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    aput-object v3, v2, v4

    aput-object p1, v2, v17

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v18

    invoke-virtual {v1, v0, v2}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z

    :cond_38a
    :goto_38a
    throw v5

    :cond_38b
    :goto_38b
    return-void
.end method

.method private getWebRequest(Ljava/lang/String;IILjava/util/HashMap;)Lcom/unity3d/services/core/request/WebRequest;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/unity3d/services/core/request/WebRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-eqz p4, :cond_a

    invoke-virtual {v3, p4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_a
    new-instance p4, Lcom/unity3d/services/core/request/WebRequest;

    const-string v2, "GET"

    move-object v0, p4

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/services/core/request/WebRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;II)V

    return-object p4
.end method

.method private postProcessDownload(JLjava/lang/String;Ljava/io/File;JJZILjava/util/Map;Lcom/unity3d/services/core/cache/CacheEventSender;)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "JJZI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/unity3d/services/core/cache/CacheEventSender;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v1, p12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v2, v2, p1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v6, p4

    invoke-virtual {v6, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v7

    if-nez v7, :cond_19

    const-string v7, "Unity Ads cache: could not set file readable!"

    invoke-static {v7}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    :cond_19
    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x6

    if-nez p9, :cond_77

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unity Ads cache: File "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " of "

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v13, p5

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " bytes downloaded in "

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "ms"

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    sget-object v6, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_END:Lcom/unity3d/services/core/cache/CacheEvent;

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v0, v11, v5

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v11, v4

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v11, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v11, v9

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v11, v8

    invoke-static/range {p11 .. p11}, Lcom/unity3d/services/core/api/Request;->getResponseHeadersMap(Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object v0

    aput-object v0, v11, v7

    invoke-virtual {v1, v6, v11}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z

    goto :goto_b9

    :cond_77
    move-wide/from16 v13, p5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unity Ads cache: downloading of "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " stopped"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    sget-object v6, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_STOPPED:Lcom/unity3d/services/core/cache/CacheEvent;

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v0, v11, v5

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v11, v4

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v11, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v11, v9

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v11, v8

    invoke-static/range {p11 .. p11}, Lcom/unity3d/services/core/api/Request;->getResponseHeadersMap(Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object v0

    aput-object v0, v11, v7

    invoke-virtual {v1, v6, v11}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z

    :goto_b9
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "target"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "connectTimeout"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "readTimeout"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "progressInterval"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "append"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "cacheEventSender"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Lcom/unity3d/services/core/cache/CacheEventSender;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v1

    if-lez v1, :cond_79

    const-string v1, "There are headers left in data, reading them"

    invoke-static {v1}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_77

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5f

    :cond_77
    move-object v8, v1

    goto :goto_7b

    :cond_79
    const/4 v0, 0x0

    move-object v8, v0

    :goto_7b
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz v9, :cond_89

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_91

    :cond_89
    if-nez v9, :cond_b7

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_b7

    :cond_91
    iput-boolean v2, p0, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    sget-object p1, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    sget-object v6, Lcom/unity3d/services/core/cache/CacheError;->FILE_STATE_WRONG:Lcom/unity3d/services/core/cache/CacheError;

    aput-object v6, v5, v2

    aput-object v3, v5, v1

    const/4 v1, 0x2

    aput-object v4, v5, v1

    const/4 v1, 0x3

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-virtual {v10, p1, v5}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z

    return-void

    :cond_b7
    iget p1, p1, Landroid/os/Message;->what:I

    if-eq p1, v1, :cond_bc

    goto :goto_c0

    :cond_bc
    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/unity3d/services/core/cache/CacheThreadHandler;->downloadFile(Ljava/lang/String;Ljava/lang/String;IIILjava/util/HashMap;ZLcom/unity3d/services/core/cache/CacheEventSender;)V

    :goto_c0
    return-void
.end method

.method public isActive()Z
    .registers 2

    iget-boolean v0, p0, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    return v0
.end method

.method public setCancelStatus(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_canceled:Z

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    if-eqz p1, :cond_e

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    invoke-virtual {p1}, Lcom/unity3d/services/core/request/WebRequest;->cancel()V

    :cond_e
    return-void
.end method
