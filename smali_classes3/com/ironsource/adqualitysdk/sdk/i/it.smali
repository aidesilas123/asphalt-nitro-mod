###### Class com.json.adqualitysdk.sdk.i.it (com.ironsource.adqualitysdk.sdk.i.it)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/it;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:[C = null

.field private static b:[I = null

.field private static c:I = 0x0

.field private static d:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x89

    new-array v0, v0, [C

    fill-array-data v0, :array_14

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/it;->a:[C

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_a2

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/it;->b:[I

    return-void

    nop

    :array_14
    .array-data 2
        0x27s
        0x59s
        0x6cs
        0x64s
        0x64s
        0x6es
        0x6as
        0x6fs
        0x10s
        0x49s
        0x6cs
        0x69s
        0x69s
        0x66s
        0x6bs
        0x6as
        0x43s
        0x48s
        0x6fs
        0x71s
        0x73s
        0x4as
        0x49s
        0x6bs
        0x6bs
        0x73s
        0x6ds
        0x6cs
        0x73s
        0x57s
        0x2ds
        0x32s
        0x5bs
        0x72s
        0x70s
        0x70s
        0x10s
        0x2ds
        0x57s
        0x73s
        0x6cs
        0x6ds
        0x73s
        0x6bs
        0x6bs
        0x49s
        0x4as
        0x6cs
        0x66s
        0x43s
        0x43s
        0x6as
        0x6bs
        0x66s
        0x69s
        0x69s
        0x6cs
        0x49s
        0x49s
        0x70s
        0x70s
        0x72s
        0x5bs
        0x39s
        0x71s
        0x6as
        0x56s
        0x4fs
        0x34s
        0x6as
        0x6fs
        0x6es
        0x59s
        0x5ds
        0x72s
        0x75s
        0x70s
        0x6ds
        0x75s
        0x54s
        0x3ds
        0x5ds
        0x6cs
        0x6ds
        0x83s
        0x102s
        0x107s
        0x106s
        0x27s
        0x4fs
        0x52s
        0x53s
        0x7bs
        0x10cs
        0x121s
        0x124s
        0x11fs
        0x11cs
        0x124s
        0x103s
        0xf3s
        0x119s
        0x127s
        0x11ds
        0x1ds
        0x4fs
        0x6bs
        0x73s
        0x71s
        0x6ds
        0x69s
        0x65s
        0x6ds
        0x71s
        0x6fs
        0x71s
        0x51s
        0x4fs
        0x71s
        0x74s
        0x71s
        0x57s
        0x30s
        0x44s
        0x68s
        0x67s
        0x6cs
        0x75s
        0x6fs
        0x6fs
        0x5bs
        0x5cs
        0x77s
        0x70s
        0x4cs
        0x54s
        0xd6s
    .end array-data

    nop

    :array_a2
    .array-data 4
        0x4c18f5ff    # 4.0097788E7f
        -0x3fd01806
        0x7b8c3de7
        -0x3c04201
        -0x7fce833
        -0x397b7254
        -0x43d5ba73
        0x655681c5
        -0x6bae2add
        0x2ef999be
        -0x55e1ae3d
        -0x5b32f4c6
        -0x4675bc75
        0x42631cb8
        0x5d9d2e96
        -0x5b0849c7
        -0x2c875a48
        0x66031da8
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/jr;->ﻛ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x4

    new-array v3, p0, [I

    fill-array-data v3, :array_58

    const-string v4, ""

    invoke-static {v4}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x7

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/it;->b([II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p0, p0, [I

    fill-array-data p0, :array_64

    const-string v0, "\u0001\u0001"

    invoke-static {v2, p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/it;->g(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/it;->c:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/it;->d:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0

    :array_58
    .array-data 4
        0xcc6d101
        -0x17687d2d
        -0x49e7b99a
        0x5b713f1f
    .end array-data

    :array_64
    .array-data 4
        0x87
        0x2
        0x87
        0x0
    .end array-data
.end method

.method private static b([II)Ljava/lang/String;
    .registers 14

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾇ:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x4

    :try_start_4
    new-array v1, v1, [C

    array-length v2, p0

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    new-array v2, v2, [C

    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/it;->b:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    const/4 v5, 0x0

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾒ:I

    :goto_16
    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾒ:I

    array-length v7, p0

    if-ge v6, v7, :cond_bc

    aget v7, p0, v6

    const/16 v8, 0x10

    shr-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v1, v5

    aget v7, p0, v6

    int-to-char v7, v7

    aput-char v7, v1, v3

    add-int/lit8 v7, v6, 0x1

    aget v7, p0, v7

    shr-int/2addr v7, v8

    int-to-char v7, v7

    const/4 v9, 0x2

    aput-char v7, v1, v9

    add-int/lit8 v6, v6, 0x1

    aget v6, p0, v6

    int-to-char v6, v6

    const/4 v7, 0x3

    aput-char v6, v1, v7

    aget-char v6, v1, v5

    shl-int/2addr v6, v8

    aget-char v10, v1, v3

    add-int/2addr v6, v10

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    aget-char v6, v1, v9

    shl-int/2addr v6, v8

    aget-char v10, v1, v7

    add-int/2addr v6, v10

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ([I)V

    const/4 v6, 0x0

    :goto_4d
    if-ge v6, v8, :cond_6a

    sget v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    aget v11, v4, v6

    xor-int/2addr v10, v11

    sput v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    invoke-static {v10}, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾇ(I)I

    move-result v10

    sget v11, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    xor-int/2addr v10, v11

    sput v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    sget v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    sget v11, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    sput v11, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    sput v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_4d

    :cond_6a
    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    sget v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    sput v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    aget v8, v4, v8

    xor-int/2addr v6, v8

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    const/16 v8, 0x11

    aget v8, v4, v8

    xor-int/2addr v6, v8

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    ushr-int/lit8 v8, v6, 0x10

    int-to-char v8, v8

    aput-char v8, v1, v5

    int-to-char v6, v6

    aput-char v6, v1, v3

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    ushr-int/lit8 v8, v6, 0x10

    int-to-char v8, v8

    aput-char v8, v1, v9

    int-to-char v6, v6

    aput-char v6, v1, v7

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ([I)V

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾒ:I

    shl-int/lit8 v8, v6, 0x1

    aget-char v10, v1, v5

    aput-char v10, v2, v8

    shl-int/lit8 v8, v6, 0x1

    add-int/2addr v8, v3

    aget-char v10, v1, v3

    aput-char v10, v2, v8

    shl-int/lit8 v8, v6, 0x1

    add-int/2addr v8, v9

    aget-char v9, v1, v9

    aput-char v9, v2, v8

    shl-int/lit8 v8, v6, 0x1

    add-int/2addr v8, v7

    aget-char v7, v1, v7

    aput-char v7, v2, v8

    add-int/lit8 v6, v6, 0x2

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾒ:I

    goto/16 :goto_16

    :cond_bc
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v5, p1}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_c2
    .catchall {:try_start_4 .. :try_end_c2} :catchall_c3

    return-object p0

    :catchall_c3
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static c(Ljava/io/Closeable;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/it;->d:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/it;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eq v0, v2, :cond_16

    if-eqz p0, :cond_22

    goto :goto_1f

    :cond_16
    const/16 v0, 0x17

    :try_start_18
    div-int/2addr v0, v1

    if-eqz p0, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x1

    :goto_1d
    if-eq v1, v2, :cond_22

    :goto_1f
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_2c

    :cond_22
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/it;->c:I

    add-int/lit8 p0, p0, 0xf

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/it;->d:I

    rem-int/lit8 p0, p0, 0x2

    :catchall_2c
    return-void
.end method

.method private static d(Ljava/lang/String;)Z
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/it;->c:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/it;->d:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x100

    const/16 v1, 0x1a

    if-le p0, v0, :cond_17

    const/16 p0, 0xb

    goto :goto_19

    :cond_17
    const/16 p0, 0x1a

    :goto_19
    const/4 v0, 0x1

    if-eq p0, v1, :cond_1d

    return v0

    :cond_1d
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/it;->d:I

    add-int/lit8 p0, p0, 0x55

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/it;->c:I

    rem-int/lit8 p0, p0, 0x2

    const/4 v1, 0x0

    if-eqz p0, :cond_2c

    const/4 p0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p0, 0x0

    :goto_2d
    if-eq p0, v0, :cond_30

    return v1

    :cond_30
    const/16 p0, 0x52

    :try_start_32
    div-int/2addr p0, v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_34

    return v1

    :catchall_34
    move-exception p0

    throw p0
.end method

.method private static e(Ljava/net/HttpURLConnection;Lorg/json/JSONObject;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/it;->c:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/it;->d:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "\u0000\u0001\u0000\u0001\u0001"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-nez v0, :cond_32

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/it;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [I

    fill-array-data v0, :array_8c

    invoke-static {v3, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/it;->g(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/it;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2e

    const/4 p1, 0x0

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x1

    :goto_2f
    if-eq p1, v3, :cond_72

    goto :goto_4d

    :cond_32
    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/it;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [I

    fill-array-data v0, :array_98

    invoke-static {v2, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/it;->g(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/it;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_72

    :goto_4d
    new-array p1, v4, [I

    fill-array-data p1, :array_a4

    const-string v1, "\u0000\u0001\u0001\u0001\u0000\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0000\u0001\u0001\u0000"

    invoke-static {v2, p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/it;->g(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    new-array v1, v4, [I

    fill-array-data v1, :array_b0

    const-string v2, "\u0000\u0001\u0001\u0001"

    invoke-static {v3, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/it;->g(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/it;->i([B)[B

    move-result-object v0

    :cond_72
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/it;->d:I

    add-int/lit8 p0, p0, 0x2d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/it;->c:I

    rem-int/lit8 p0, p0, 0x2

    const/16 p1, 0x1e

    if-eqz p0, :cond_83

    const/16 p0, 0x3f

    goto :goto_85

    :cond_83
    const/16 p0, 0x1e

    :goto_85
    if-ne p0, p1, :cond_88

    return-object v0

    :cond_88
    const/4 p0, 0x0

    :try_start_89
    throw p0
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_8a

    :catchall_8a
    move-exception p0

    throw p0

    :array_8c
    .array-data 4
        0x3f
        0x5
        0x1d
        0x0
    .end array-data

    :array_98
    .array-data 4
        0x3f
        0x5
        0x1d
        0x0
    .end array-data

    :array_a4
    .array-data 4
        0x44
        0x10
        0x4
        0x4
    .end array-data

    :array_b0
    .array-data 4
        0x54
        0x4
        0x96
        0x0
    .end array-data
.end method

.method private static f(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 13

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_4
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_7c

    :try_start_8
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_79

    :try_start_12
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_77

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/it;->d:I

    add-int/lit8 v6, v6, 0x29

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/ironsource/adqualitysdk/sdk/i/it;->c:I

    rem-int/2addr v6, v1

    :goto_20
    :try_start_20
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_77

    if-eqz v6, :cond_5e

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/it;->d:I

    add-int/lit8 v7, v7, 0x65

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/ironsource/adqualitysdk/sdk/i/it;->c:I

    rem-int/2addr v7, v1

    if-eqz v7, :cond_33

    const/4 v7, 0x1

    goto :goto_34

    :cond_33
    const/4 v7, 0x0

    :goto_34
    if-eqz v7, :cond_49

    :try_start_36
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    const/16 v8, 0x31

    div-int/2addr v8, v3

    const/16 v8, 0x12

    if-lez v7, :cond_44

    const/16 v7, 0x12

    goto :goto_46

    :cond_44
    const/16 v7, 0xe

    :goto_46
    if-eq v7, v8, :cond_55

    goto :goto_5a

    :cond_49
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_51

    const/4 v7, 0x1

    goto :goto_52

    :cond_51
    const/4 v7, 0x0

    :goto_52
    if-eq v7, v2, :cond_55

    goto :goto_5a

    :cond_55
    const/16 v7, 0xd

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_5a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_20

    :cond_5e
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_62
    .catchall {:try_start_36 .. :try_end_62} :catchall_77

    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/it;->c(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/it;->c(Ljava/io/Closeable;)V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/it;->c:I

    add-int/lit8 p0, p0, 0x57

    rem-int/lit16 v3, p0, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/it;->d:I

    rem-int/2addr p0, v1

    if-eqz p0, :cond_74

    return-object v2

    :cond_74
    :try_start_74
    throw v0
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_75

    :catchall_75
    move-exception p0

    throw p0

    :catchall_77
    move-exception v5

    goto :goto_7f

    :catchall_79
    move-exception v5

    move-object v4, v0

    goto :goto_7f

    :catchall_7c
    move-exception v5

    move-object p0, v0

    move-object v4, p0

    :goto_7f
    const/4 v6, 0x4

    :try_start_80
    new-array v7, v6, [I

    aput v3, v7, v3

    const/16 v8, 0x8

    aput v8, v7, v2

    aput v3, v7, v1

    const/4 v9, 0x3

    aput v3, v7, v9

    const-string v10, "\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001"

    invoke-static {v3, v7, v10}, Lcom/ironsource/adqualitysdk/sdk/i/it;->g(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0xc

    new-array v10, v10, [I

    const v11, 0x4758293d

    aput v11, v10, v3

    const v3, -0x4b1552e1

    aput v3, v10, v2

    const v2, -0x1701f0d7

    aput v2, v10, v1

    const v1, 0x371cc174

    aput v1, v10, v9

    const v1, -0x5ce12b25

    aput v1, v10, v6

    const/4 v1, 0x5

    const v2, -0x4ce22003

    aput v2, v10, v1

    const/4 v1, 0x6

    const v2, 0xb1feae3

    aput v2, v10, v1

    const/4 v1, 0x7

    const v2, 0x44403df7

    aput v2, v10, v1

    const v1, -0x73782aeb

    aput v1, v10, v8

    const/16 v1, 0x9

    const v2, -0x64945484

    aput v2, v10, v1

    const/16 v1, 0xa

    const v2, 0x550dfe82

    aput v2, v10, v1

    const/16 v1, 0xb

    const v2, 0x12fb38d2

    aput v2, v10, v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0x16

    invoke-static {v10, v1}, Lcom/ironsource/adqualitysdk/sdk/i/it;->b([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1, v5}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_f3
    .catchall {:try_start_80 .. :try_end_f3} :catchall_fa

    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/it;->c(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/it;->c(Ljava/io/Closeable;)V

    return-object v0

    :catchall_fa
    move-exception v0

    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/it;->c(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/it;->c(Ljava/io/Closeable;)V

    throw v0
.end method

.method private static g(Z[ILjava/lang/String;)Ljava/lang/String;
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

    sget-object v8, Lcom/ironsource/adqualitysdk/sdk/i/it;->a:[C

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

.method private static h(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_30

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    add-int/2addr v6, v0

    invoke-static {v1, v6}, Lcom/ironsource/adqualitysdk/sdk/i/it;->b([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/it;->d:I

    add-int/lit8 v1, v1, 0x73

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/it;->c:I

    rem-int/2addr v1, v0

    return-object p0

    nop

    :array_30
    .array-data 4
        -0x5a1d3e6d
        -0x45c9e8a8
    .end array-data
.end method

.method private static i([B)[B
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_3d
    .catchall {:try_start_1 .. :try_end_b} :catchall_3b

    :try_start_b
    invoke-virtual {v2, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_38
    .catchall {:try_start_b .. :try_end_14} :catchall_35

    :try_start_14
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_18} :catch_3d
    .catchall {:try_start_14 .. :try_end_18} :catchall_3b

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/it;->d:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/it;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x16

    if-eqz v0, :cond_29

    const/16 v0, 0x16

    goto :goto_2b

    :cond_29
    const/16 v0, 0x1b

    :goto_2b
    if-eq v0, v1, :cond_2e

    return-object p0

    :cond_2e
    const/16 v0, 0x41

    :try_start_30
    div-int/lit8 v0, v0, 0x0
    :try_end_32
    .catchall {:try_start_30 .. :try_end_32} :catchall_33

    return-object p0

    :catchall_33
    move-exception p0

    throw p0

    :catchall_35
    move-exception p0

    move-object v0, v2

    goto :goto_44

    :catch_38
    move-exception p0

    move-object v0, v2

    goto :goto_3e

    :catchall_3b
    move-exception p0

    goto :goto_44

    :catch_3d
    move-exception p0

    :goto_3e
    :try_start_3e
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_3b

    :goto_44
    if-eqz v0, :cond_49

    :try_start_46
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_49

    :catch_49
    :cond_49
    throw p0
.end method

.method private static j(Ljava/net/HttpURLConnection;[B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->connect()V

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_2b

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/it;->c(Ljava/io/Closeable;)V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/it;->d:I

    add-int/lit8 p0, p0, 0x75

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/it;->c:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_23

    const/4 p0, 0x0

    goto :goto_24

    :cond_23
    const/4 p0, 0x1

    :goto_24
    if-eqz p0, :cond_27

    return-void

    :cond_27
    const/4 p0, 0x0

    :try_start_28
    throw p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception p0

    throw p0

    :catchall_2b
    move-exception p0

    throw p0
.end method

.method private static k(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_6e

    const/4 v2, 0x1

    const-string v3, "\u0001\u0001\u0000\u0001"

    invoke-static {v2, v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/it;->g(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    new-array v1, v0, [I

    fill-array-data v1, :array_7a

    const/4 v3, 0x0

    const-string v4, "\u0000\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001"

    invoke-static {v3, v1, v4}, Lcom/ironsource/adqualitysdk/sdk/i/it;->g(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [I

    fill-array-data v0, :array_86

    const-string v4, "\u0001\u0001\u0001\u0000\u0000\u0001\u0000\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0000\u0001\u0000\u0001"

    invoke-static {v3, v0, v4}, Lcom/ironsource/adqualitysdk/sdk/i/it;->g(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/net/URLConnection;->setUseCaches(Z)V

    invoke-virtual {p0, v2}, Ljava/net/URLConnection;->setDoInput(Z)V

    invoke-virtual {p0, v2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const v0, 0xea60

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/it;->c:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/it;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x2d

    if-nez v0, :cond_64

    const/16 v0, 0x2d

    goto :goto_66

    :cond_64
    const/16 v0, 0x34

    :goto_66
    if-eq v0, v1, :cond_69

    return-object p0

    :cond_69
    const/4 p0, 0x0

    :try_start_6a
    throw p0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_6b

    :catchall_6b
    move-exception p0

    throw p0

    nop

    :array_6e
    .array-data 4
        0x58
        0x4
        0x0
        0x2
    .end array-data

    :array_7a
    .array-data 4
        0x5c
        0xc
        0xb3
        0x0
    .end array-data

    :array_86
    .array-data 4
        0x68
        0x1f
        0x3
        0x1
    .end array-data
.end method

.method public static ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/ip;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_13

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/it;->d:I

    add-int/lit8 p0, p0, 0x6d

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/it;->c:I

    rem-int/lit8 p0, p0, 0x2

    const/4 p0, 0x0

    return-object p0

    :cond_13
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ip;->ｋ()Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/it;->c:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/it;->d:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method

.method public static ﻛ(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/ip;
    .registers 11

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/it;->k(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/it;->e(Ljava/net/HttpURLConnection;Lorg/json/JSONObject;)[B

    move-result-object p0

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jt;->ﾒ()J

    move-result-wide v1

    invoke-static {p1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/it;->j(Ljava/net/HttpURLConnection;[B)V

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/it;->f(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v6
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_57

    const/16 p0, 0x190

    const/4 v3, 0x1

    if-lt v5, p0, :cond_23

    const/4 p0, 0x0

    goto :goto_24

    :cond_23
    const/4 p0, 0x1

    :goto_24
    if-eq p0, v3, :cond_41

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/it;->c:I

    add-int/lit8 p0, p0, 0x13

    rem-int/lit16 v7, p0, 0x80

    sput v7, Lcom/ironsource/adqualitysdk/sdk/i/it;->d:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_34

    const/4 p0, 0x0

    goto :goto_35

    :cond_34
    const/4 p0, 0x1

    :goto_35
    if-eq p0, v3, :cond_3e

    :try_start_37
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    const/16 p0, 0x44

    div-int/2addr p0, v0

    goto :goto_41

    :cond_3e
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_41
    :goto_41
    new-instance p0, Lcom/ironsource/adqualitysdk/sdk/i/ip;

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jt;->ﾒ()J

    move-result-wide v7

    sub-long/2addr v7, v1

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/ironsource/adqualitysdk/sdk/i/ip;-><init>(Ljava/lang/String;ILjava/lang/String;J)V
    :try_end_4c
    .catchall {:try_start_37 .. :try_end_4c} :catchall_57

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/it;->d:I

    add-int/lit8 p1, p1, 0x6b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/it;->c:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0

    :catchall_57
    move-exception p0

    const/4 p1, 0x4

    new-array v1, p1, [I

    fill-array-data v1, :array_90

    const-string v2, "\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001"

    invoke-static {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/it;->g(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array p1, p1, [I

    fill-array-data p1, :array_9c

    const-string v3, "\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0000\u0001\u0000\u0000\u0000\u0000\u0001\u0000\u0000\u0001\u0001\u0000\u0001\u0001"

    invoke-static {v0, p1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/it;->g(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0

    nop

    :array_90
    .array-data 4
        0x0
        0x8
        0x0
        0x0
    .end array-data

    :array_9c
    .array-data 4
        0x8
        0x1c
        0x0
        0x17
    .end array-data
.end method

.method public static ﾇ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/ip;
    .registers 9

    :try_start_0
    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/it;->h(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p0

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jt;->ﾒ()J

    move-result-wide v0

    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/it;->f(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_44

    const/16 v2, 0x190

    const/16 v6, 0x11

    if-lt v4, v2, :cond_1d

    const/16 v2, 0x2c

    goto :goto_1f

    :cond_1d
    const/16 v2, 0x11

    :goto_1f
    if-eq v2, v6, :cond_2e

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/it;->c:I

    add-int/lit8 v2, v2, 0x3b

    rem-int/lit16 v6, v2, 0x80

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/it;->d:I

    rem-int/lit8 v2, v2, 0x2

    :try_start_2b
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2e
    new-instance p0, Lcom/ironsource/adqualitysdk/sdk/i/ip;

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jt;->ﾒ()J

    move-result-wide v6

    sub-long/2addr v6, v0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/ironsource/adqualitysdk/sdk/i/ip;-><init>(Ljava/lang/String;ILjava/lang/String;J)V
    :try_end_39
    .catchall {:try_start_2b .. :try_end_39} :catchall_44

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/it;->c:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/it;->d:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0

    :catchall_44
    move-exception p0

    const/4 v0, 0x0

    const/4 v1, 0x4

    new-array v2, v1, [I

    fill-array-data v2, :array_7e

    const-string v3, "\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001"

    invoke-static {v0, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/it;->g(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    new-array v1, v1, [I

    fill-array-data v1, :array_8a

    const-string v4, "\u0000\u0000\u0000\u0001\u0000\u0000\u0000\u0000\u0001\u0000\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0000\u0001"

    invoke-static {v3, v1, v4}, Lcom/ironsource/adqualitysdk/sdk/i/it;->g(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0

    :array_7e
    .array-data 4
        0x0
        0x8
        0x0
        0x0
    .end array-data

    :array_8a
    .array-data 4
        0x24
        0x1b
        0x0
        0x0
    .end array-data
.end method
