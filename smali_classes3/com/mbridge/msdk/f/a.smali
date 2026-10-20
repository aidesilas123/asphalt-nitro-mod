###### Class com.mbridge.msdk.f.a (com.mbridge.msdk.f.a)
.class public final Lcom/mbridge/msdk/f/a;
.super Ljava/lang/Object;
.source "AllTypeErrorMsgToCodeUtils.java"


# direct methods
.method public static a(ILjava/lang/String;)I
    .registers 6

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return p0

    :cond_7
    const-string v0, "errorCode: "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0xf

    const/16 v2, 0x10

    const/16 v3, 0xb

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_24

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_24
    const-string v0, "do not have sorceList"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    add-int/lit16 p0, p0, 0x258

    :goto_2e
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_237

    :cond_32
    const-string v0, "Network error,UnknownHostException"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    add-int/lit16 p0, p0, 0x258

    :goto_3c
    add-int/lit8 p0, p0, 0x2

    goto/16 :goto_237

    :cond_40
    const-string v0, "v3 is timeout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    add-int/lit16 p0, p0, 0x258

    :goto_4a
    add-int/lit8 p0, p0, 0x3

    goto/16 :goto_237

    :cond_4e
    const-string v0, "Current unit is loading!"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22e

    const-string v0, "current unit is loading"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    goto/16 :goto_22e

    :cond_60
    const-string v0, "Network error,I/O exception response null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    add-int/lit16 p0, p0, 0x258

    :goto_6a
    add-int/lit8 p0, p0, 0x5

    goto/16 :goto_237

    :cond_6e
    const-string v0, "Network error,ConnectException"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    add-int/lit16 p0, p0, 0x258

    :goto_78
    add-int/lit8 p0, p0, 0x6

    goto/16 :goto_237

    :cond_7c
    const-string v0, "Network error,socket timeout exception"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    add-int/lit16 p0, p0, 0x258

    :goto_86
    add-int/lit8 p0, p0, 0x7

    goto/16 :goto_237

    :cond_8a
    const-string v0, "Network error,disconnected network exception"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    add-int/lit16 p0, p0, 0x258

    :goto_94
    add-int/lit8 p0, p0, 0x8

    goto/16 :goto_237

    :cond_98
    const-string v0, "Network error,timeout exception"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    add-int/lit16 p0, p0, 0x258

    :goto_a2
    add-int/lit8 p0, p0, 0x9

    goto/16 :goto_237

    :cond_a6
    const-string v0, "Network error,please check state code"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b4

    add-int/lit16 p0, p0, 0x258

    :goto_b0
    add-int/lit8 p0, p0, 0xa

    goto/16 :goto_237

    :cond_b4
    const-string v0, "Network error,I/O exception contents null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c1

    add-int/lit16 p0, p0, 0x258

    :goto_be
    add-int/2addr p0, v3

    goto/16 :goto_237

    :cond_c1
    const-string v0, "Network unknown error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cf

    add-int/lit16 p0, p0, 0x258

    :goto_cb
    add-int/lit8 p0, p0, 0xc

    goto/16 :goto_237

    :cond_cf
    const-string v0, "Network error,I/O exception"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dd

    add-int/lit16 p0, p0, 0x258

    add-int/lit8 p0, p0, 0xd

    goto/16 :goto_237

    :cond_dd
    const-string v0, "web env is not support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_eb

    add-int/lit16 p0, p0, 0x258

    add-int/lit8 p0, p0, 0xe

    goto/16 :goto_237

    :cond_eb
    const-string v0, "Network error,unknown"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f8

    add-int/lit16 p0, p0, 0x258

    add-int/2addr p0, v1

    goto/16 :goto_237

    :cond_f8
    const-string v0, "Network error\uff0csslp exception"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_105

    add-int/lit16 p0, p0, 0x258

    add-int/2addr p0, v2

    goto/16 :goto_237

    :cond_105
    const-string v0, "Cast exception, return data"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_113

    add-int/lit16 p0, p0, 0x258

    add-int/lit8 p0, p0, 0x11

    goto/16 :goto_237

    :cond_113
    const-string v0, "REQUEST_TIMEOUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11f

    add-int/lit16 p0, p0, 0x2bc

    goto/16 :goto_2e

    :cond_11f
    const-string v0, "The server returns an exception"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12b

    add-int/lit16 p0, p0, 0x2bc

    goto/16 :goto_3c

    :cond_12b
    const-string v0, "APP ALREADY INSTALLED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22a

    const-string v0, "Need show campaign list is NULL!"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13d

    goto/16 :goto_22a

    :cond_13d
    const-string v0, "load no ad"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_149

    add-int/lit16 p0, p0, 0x2bc

    goto/16 :goto_230

    :cond_149
    const-string v0, "EXCEPTION_UNIT_NOT_FOUND_IN_APP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_155

    add-int/lit16 p0, p0, 0x2bc

    goto/16 :goto_6a

    :cond_155
    const-string v0, "EXCEPTION_UNIT_BIDDING_TYPE_ERROR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_161

    add-int/lit16 p0, p0, 0x2bc

    goto/16 :goto_78

    :cond_161
    const-string v0, "No video campaign"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16d

    add-int/lit16 p0, p0, 0x2bc

    goto/16 :goto_86

    :cond_16d
    const-string v0, "EXCEPTION_RETURN_EMPTY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_179

    add-int/lit16 p0, p0, 0x2bc

    goto/16 :goto_94

    :cond_179
    const-string v0, "EXCEPTION_APP_PLATFORM_ERROR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_185

    add-int/lit16 p0, p0, 0x2bc

    goto/16 :goto_a2

    :cond_185
    const-string v0, "EXCEPTION_SERVICE_REQUEST_OS_VERSION_REQUIRED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_191

    add-int/lit16 p0, p0, 0x2bc

    goto/16 :goto_b0

    :cond_191
    const-string v0, "banner res load failed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19d

    add-int/lit16 p0, p0, 0x320

    goto/16 :goto_2e

    :cond_19d
    const-string v0, "resource load timeout is tpl: false"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a9

    add-int/lit16 p0, p0, 0x320

    goto/16 :goto_3c

    :cond_1a9
    const-string v0, "resource download failed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b5

    add-int/lit16 p0, p0, 0x320

    goto/16 :goto_4a

    :cond_1b5
    const-string v0, "temp preload success but isReady false"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c1

    add-int/lit16 p0, p0, 0x320

    goto/16 :goto_230

    :cond_1c1
    const-string v0, "temp resource download failed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1cd

    add-int/lit16 p0, p0, 0x320

    goto/16 :goto_6a

    :cond_1cd
    const-string v0, "tpl temp resource download failed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d9

    add-int/lit16 p0, p0, 0x320

    goto/16 :goto_78

    :cond_1d9
    const-string v0, "resource load timeout is tpl: true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e5

    add-int/lit16 p0, p0, 0x320

    goto/16 :goto_86

    :cond_1e5
    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_226

    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f6

    goto :goto_226

    :cond_1f6
    const-string v0, "mraid resource write fail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_202

    add-int/lit16 p0, p0, 0x320

    goto/16 :goto_a2

    :cond_202
    const-string v0, "data save failed:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20e

    add-int/lit16 p0, p0, 0x320

    goto/16 :goto_b0

    :cond_20e
    const-string v0, "resource load timeout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21a

    add-int/lit16 p0, p0, 0x320

    goto/16 :goto_be

    :cond_21a
    const-string v0, "tpl temp preload failed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1
    :try_end_220
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_220} :catch_233

    if-eqz p1, :cond_237

    add-int/lit16 p0, p0, 0x320

    goto/16 :goto_cb

    :cond_226
    :goto_226
    add-int/lit16 p0, p0, 0x320

    goto/16 :goto_94

    :cond_22a
    :goto_22a
    add-int/lit16 p0, p0, 0x2bc

    goto/16 :goto_4a

    :cond_22e
    :goto_22e
    add-int/lit16 p0, p0, 0x258

    :goto_230
    add-int/lit8 p0, p0, 0x4

    goto :goto_237

    :catch_233
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_237
    :goto_237
    return p0
.end method
