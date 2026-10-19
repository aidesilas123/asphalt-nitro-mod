###### Class com.json.adqualitysdk.sdk.i.jq (com.ironsource.adqualitysdk.sdk.i.jq)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/jq;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:[C = null

.field private static b:I = 0x0

.field private static c:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x58

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/jq;->a:[C

    return-void

    :array_a
    .array-data 2
        0x74s
        0xe1s
        0x35s
        0x74s
        0x7ds
        0x77s
        0x6fs
        0x32s
        0x66s
        0x6fs
        0x72s
        0x74s
        0xe7s
        0xe8s
        0xe1s
        0xe0s
        0xe2s
        0xe0s
        0xe0s
        0xcds
        0xd4s
        0xe8s
        0xe0s
        0xe4s
        0xd4s
        0xbfs
        0xbes
        0xc2s
        0xdds
        0xeds
        0xe5s
        0xe1s
        0xdds
        0xe2s
        0xdas
        0xd1s
        0xc9s
        0xa1s
        0xdes
        0xdes
        0xd3s
        0xe6s
        0xe5s
        0xe0s
        0xdbs
        0x92s
        0xe6s
        0xe5s
        0xe4s
        0xdbs
        0xd8s
        0x92s
        0xd9s
        0xe0s
        0xdbs
        0xd6s
        0xd6s
        0xd3s
        0x92s
        0xe4s
        0xe1s
        0xe4s
        0xe4s
        0xb7s
        0xe0s
        0xe1s
        0xe5s
        0xdcs
        0x92s
        0xe1s
        0xe6s
        0x92s
        0xd7s
        0xdfs
        0xdbs
        0xe6s
        0x92s
        0xd7s
        0xe6s
        0xd3s
        0xd6s
        0xe2s
        0xe7s
        0x92s
        0xe6s
        0xe5s
        0xd3s
        0xdes
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Z[ILjava/lang/String;)Ljava/lang/String;
    .registers 15

    if-eqz p2, :cond_8

    const-string v0, "ISO-8859-1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    :cond_8
    check-cast p2, [B

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﻛ:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_e
    aget v2, p1, v1

    const/4 v3, 0x1

    aget v4, p1, v3

    const/4 v5, 0x2

    aget v6, p1, v5

    const/4 v7, 0x3

    aget v7, p1, v7

    sget-object v8, Lcom/ironsource/adqualitysdk/sdk/i/jq;->a:[C

    new-array v9, v4, [C

    invoke-static {v8, v2, v9, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p2, :cond_47

    new-array v2, v4, [C

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    const/4 v8, 0x0

    :goto_27
    sget v10, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    if-ge v10, v4, :cond_46

    aget-byte v11, p2, v10

    if-ne v11, v3, :cond_38

    aget-char v11, v9, v10

    shl-int/2addr v11, v3

    add-int/2addr v11, v3

    sub-int/2addr v11, v8

    int-to-char v8, v11

    aput-char v8, v2, v10

    goto :goto_3f

    :cond_38
    aget-char v11, v9, v10

    shl-int/2addr v11, v3

    sub-int/2addr v11, v8

    int-to-char v8, v11

    aput-char v8, v2, v10

    :goto_3f
    aget-char v8, v2, v10

    add-int/lit8 v10, v10, 0x1

    sput v10, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    goto :goto_27

    :cond_46
    move-object v9, v2

    :cond_47
    if-lez v7, :cond_56

    new-array p2, v4, [C

    invoke-static {v9, v1, p2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v2, v4, v7

    invoke-static {p2, v1, v9, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2, v7, v9, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_56
    if-eqz p0, :cond_6d

    new-array p0, v4, [C

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    :goto_5c
    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    if-ge p2, v4, :cond_6c

    sub-int v2, v4, p2

    sub-int/2addr v2, v3

    aget-char v2, v9, v2

    aput-char v2, p0, p2

    add-int/lit8 p2, p2, 0x1

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    goto :goto_5c

    :cond_6c
    move-object v9, p0

    :cond_6d
    if-lez v6, :cond_82

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    :goto_71
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    if-ge p0, v4, :cond_82

    aget-char p2, v9, p0

    aget v1, p1, v5

    sub-int/2addr p2, v1

    int-to-char p2, p2

    aput-char p2, v9, p0

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    goto :goto_71

    :cond_82
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v9}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_88
    .catchall {:try_start_e .. :try_end_88} :catchall_89

    return-object p0

    :catchall_89
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static ﻛ(Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/ax;ZLcom/ironsource/adqualitysdk/sdk/i/ak;)Lorg/json/JSONObject;
    .registers 14

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_b

    const/4 p2, 0x1

    goto :goto_c

    :cond_b
    const/4 p2, 0x0

    :goto_c
    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x2

    if-eqz p2, :cond_4c

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/jq;->b:I

    add-int/2addr p2, v4

    rem-int/lit16 v8, p2, 0x80

    sput v8, Lcom/ironsource/adqualitysdk/sdk/i/jq;->c:I

    rem-int/2addr p2, v7

    const-string v8, "\u0000\u0001"

    const/16 v9, 0x75

    if-nez p2, :cond_37

    :try_start_21
    new-array p2, v6, [I

    aput v2, p2, v2

    aput v7, p2, v1

    aput v9, p2, v7

    aput v2, p2, v5

    invoke-static {v2, p2, v8}, Lcom/ironsource/adqualitysdk/sdk/i/jq;->a(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_4c

    :cond_37
    new-array p2, v6, [I

    aput v2, p2, v2

    aput v7, p2, v1

    aput v9, p2, v7

    aput v2, p2, v5

    invoke-static {v1, p2, v8}, Lcom/ironsource/adqualitysdk/sdk/i/jq;->a(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_4c
    :goto_4c
    invoke-virtual {p3}, Lcom/ironsource/adqualitysdk/sdk/i/ak;->ﻏ()Z

    move-result p2

    if-eqz p2, :cond_6b

    new-array p2, v6, [I

    aput v7, p2, v2

    aput v4, p2, v1

    const/16 p3, 0x9

    aput p3, p2, v7

    aput v2, p2, v5

    const-string p3, "\u0000\u0000\u0001\u0001\u0001"

    invoke-static {v2, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/jq;->a(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_6b
    new-array p2, v6, [I

    const/4 p3, 0x7

    aput p3, p2, v2

    aput v6, p2, v1

    aput v2, p2, v7

    aput v6, p2, v5

    const-string p3, "\u0000\u0001\u0000\u0001"

    invoke-static {v1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/jq;->a(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_83
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_83} :catch_84

    goto :goto_a4

    :catch_84
    move-exception p0

    new-array p2, v6, [I

    fill-array-data p2, :array_c6

    const-string p3, "\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0001"

    invoke-static {v1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/jq;->a(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    new-array p3, v6, [I

    fill-array-data p3, :array_d2

    invoke-static {v1, p3, v3}, Lcom/ironsource/adqualitysdk/sdk/i/jq;->a(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a4
    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->ﾇ()Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->ﾇ(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->ｋ()Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->ﾇ(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/jq;->b:I

    add-int/lit8 p0, p0, 0x29

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/jq;->c:I

    rem-int/2addr p0, v7

    if-nez p0, :cond_be

    goto :goto_bf

    :cond_be
    const/4 v1, 0x0

    :goto_bf
    if-nez v1, :cond_c2

    return-object v0

    :cond_c2
    :try_start_c2
    throw v3
    :try_end_c3
    .catchall {:try_start_c2 .. :try_end_c3} :catchall_c3

    :catchall_c3
    move-exception p0

    throw p0

    nop

    :array_c6
    .array-data 4
        0xb
        0x1a
        0x77
        0x0
    .end array-data

    :array_d2
    .array-data 4
        0x25
        0x33
        0x72
        0x1b
    .end array-data
.end method
