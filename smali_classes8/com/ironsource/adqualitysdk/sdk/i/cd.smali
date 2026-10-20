###### Class com.json.adqualitysdk.sdk.i.cd (com.ironsource.adqualitysdk.sdk.i.cd)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/cd;
.super Lcom/ironsource/adqualitysdk/sdk/i/az;
.source ""


# static fields
.field private static t:[I = null

.field private static u:[C = null

.field private static v:I = 0x0

.field private static w:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/cd;->t:[I

    const/16 v0, 0xdd

    new-array v0, v0, [C

    fill-array-data v0, :array_3c

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/cd;->u:[C

    return-void

    nop

    :array_14
    .array-data 4
        0x59adfde4
        -0x2dacc53a
        -0x31e27d93
        -0x76f6dd86
        0x33b6bc8b
        -0x3b2ddaf5
        -0x413d4d78
        0x2ddb8f1f
        -0x2b874b4e
        -0x24145283
        -0x766decdb
        -0x7bfd2624
        -0x141394a3
        -0x42be1272
        0x2c7dcc7c
        -0x29c33dbc
        0xca2d50
        -0xedc79ce
    .end array-data

    :array_3c
    .array-data 2
        0x82s
        0xfes
        0xfes
        0xecs
        0xe4s
        0xe4s
        0xecs
        0x8cs
        0x106s
        0x106s
        0x116s
        0x11cs
        0x121s
        0x126s
        0x121s
        0x10cs
        0x5bs
        0xb5s
        0xbas
        0xafs
        0xb0s
        0xc1s
        0xa9s
        0x37s
        0x67s
        0x51s
        0x53s
        0x52s
        0x59s
        0x6bs
        0x69s
        0x39s
        0x6bs
        0x69s
        0x69s
        0x6cs
        0x73s
        0x6es
        0x5as
        0x58s
        0x52s
        0x59s
        0x6bs
        0x69s
        0x6es
        0x67s
        0x51s
        0x20s
        0x59s
        0x6bs
        0x69s
        0x6es
        0x67s
        0x51s
        0x53s
        0x6fs
        0x71s
        0x5es
        0x5bs
        0x65s
        0xd9s
        0xefs
        0xf6s
        0xf1s
        0xf3s
        0xecs
        0xe7s
        0xefs
        0xf6s
        0x32s
        0x52s
        0x53s
        0x6cs
        0x6as
        0x51s
        0x106s
        0xf9s
        0x102s
        0xf9s
        0x108s
        0x107s
        0xfds
        0xe0s
        0xf8s
        0xd5s
        0xf9s
        0x107s
        0xf5s
        0xd6s
        0x69s
        0xc0s
        0xc5s
        0xd7s
        0xd3s
        0xd9s
        0xd8s
        0xd9s
        0xdds
        0xdas
        0xdes
        0xcbs
        0x28s
        0x5es
        0x66s
        0x62s
        0x64s
        0x69s
        0x69s
        0x69s
        0x71s
        0x95s
        0x118s
        0x118s
        0x12as
        0x12as
        0x131s
        0x12fs
        0x132s
        0x134s
        0x121s
        0x37s
        0x71s
        0x65s
        0x64s
        0x6bs
        0x52s
        0x53s
        0x68s
        0x69s
        0x94s
        0x12bs
        0x11fs
        0x11fs
        0x12bs
        0x124s
        0x123s
        0x122s
        0x118s
        0x118s
        0x11ds
        0x10cs
        0x111s
        0x124s
        0x121s
        0x33s
        0x6ds
        0x6es
        0x6bs
        0x61s
        0x5cs
        0x52s
        0x5as
        0x6cs
        0x33s
        0x66s
        0x6cs
        0x5as
        0x58s
        0x70s
        0x5cs
        0x56s
        0x33s
        0x66s
        0x6cs
        0x5bs
        0x52s
        0x62s
        0x65s
        0x66s
        0x63s
        0x61s
        0x67s
        0x68s
        0x5bs
        0x5bs
        0x6as
        0x6es
        0x66s
        0x62s
        0x64s
        0x69s
        0x69s
        0x69s
        0x71s
        0x64s
        0x63s
        0x6fs
        0x33s
        0x66s
        0x6cs
        0x64s
        0x5cs
        0x69s
        0x6es
        0x6es
        0x66s
        0x6as
        0x6cs
        0x5cs
        0x5cs
        0x6cs
        0x74s
        0x6es
        0x6bs
        0x6as
        0x6ds
        0x94s
        0x12es
        0x122s
        0x11bs
        0x12es
        0x12cs
        0x129s
        0x12bs
        0x124s
        0x124s
        0x11ds
        0x11fs
        0x126s
        0x124s
        0x12as
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/az;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic k(Lcom/vungle/ads/internal/model/AdPayload;)Lcom/vungle/ads/internal/model/AdPayload$AdUnit;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cd;->v:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cd;->w:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x53

    if-nez v0, :cond_11

    const/16 v0, 0x3f

    goto :goto_13

    :cond_11
    const/16 v0, 0x53

    :goto_13
    if-ne v0, v1, :cond_1a

    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->q(Lcom/vungle/ads/internal/model/AdPayload;)Lcom/vungle/ads/internal/model/AdPayload$AdUnit;

    move-result-object p0

    return-object p0

    :cond_1a
    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->q(Lcom/vungle/ads/internal/model/AdPayload;)Lcom/vungle/ads/internal/model/AdPayload$AdUnit;

    const/4 p0, 0x0

    :try_start_1e
    throw p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception p0

    throw p0
.end method

.method private static l(Lcom/vungle/ads/internal/model/AdPayload$AdUnit;)Ljava/lang/String;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cd;->w:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cd;->v:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/AdPayload$AdUnit;->getCampaign()Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cd;->v:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cd;->w:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method

.method private static m(Lcom/vungle/ads/internal/model/Placement;)Ljava/lang/String;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cd;->w:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cd;->v:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x8

    const/16 v2, 0x62

    if-eqz v0, :cond_13

    const/16 v0, 0x8

    goto :goto_15

    :cond_13
    const/16 v0, 0x62

    :goto_15
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/Placement;->getReferenceId()Ljava/lang/String;

    move-result-object p0

    if-eq v0, v2, :cond_20

    :try_start_1b
    div-int/lit8 v1, v1, 0x0
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_1e

    goto :goto_20

    :catchall_1e
    move-exception p0

    throw p0

    :cond_20
    :goto_20
    return-object p0
.end method

.method private static n(Lcom/vungle/ads/internal/model/AdPayload$AdUnit;)Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cd;->w:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cd;->v:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/AdPayload$AdUnit;->getTemplateSettings()Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;

    move-result-object p0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cd;->v:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cd;->w:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method

.method private static o(Lcom/vungle/ads/internal/model/AppNode;)Ljava/lang/String;
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cd;->w:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cd;->v:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    const/4 v3, 0x0

    if-eq v0, v2, :cond_2c

    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/AppNode;->getAppId()Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cd;->v:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/cd;->w:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_25

    goto :goto_26

    :cond_25
    const/4 v1, 0x1

    :goto_26
    if-ne v1, v2, :cond_29

    return-object p0

    :cond_29
    :try_start_29
    throw v3
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception p0

    throw p0

    :cond_2c
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/AppNode;->getAppId()Ljava/lang/String;

    :try_start_2f
    throw v3
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    throw p0
.end method

.method private static p([II)Ljava/lang/String;
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

    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/cd;->t:[I

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

.method private static q(Lcom/vungle/ads/internal/model/AdPayload;)Lcom/vungle/ads/internal/model/AdPayload$AdUnit;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cd;->v:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cd;->w:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    const/4 v2, 0x0

    if-eq v0, v1, :cond_2e

    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/AdPayload;->adUnit()Lcom/vungle/ads/internal/model/AdPayload$AdUnit;

    move-result-object p0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cd;->w:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cd;->v:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x3

    if-eqz v0, :cond_26

    const/4 v0, 0x3

    goto :goto_28

    :cond_26
    const/16 v0, 0x45

    :goto_28
    if-eq v0, v1, :cond_2b

    return-object p0

    :cond_2b
    :try_start_2b
    throw v2
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception p0

    throw p0

    :cond_2e
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/AdPayload;->adUnit()Lcom/vungle/ads/internal/model/AdPayload$AdUnit;

    :try_start_31
    throw v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception p0

    throw p0
.end method

.method static synthetic r(Lcom/vungle/ads/internal/model/AdPayload$AdUnit;)Ljava/lang/String;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cd;->v:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cd;->w:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->l(Lcom/vungle/ads/internal/model/AdPayload$AdUnit;)Ljava/lang/String;

    move-result-object p0

    if-eq v0, v1, :cond_18

    goto :goto_1b

    :cond_18
    const/16 v0, 0x26

    :try_start_1a
    div-int/2addr v0, v2
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_26

    :goto_1b
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cd;->v:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cd;->w:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0

    :catchall_26
    move-exception p0

    throw p0
.end method

.method static synthetic s(Lcom/vungle/ads/internal/model/AdPayload$CacheableReplacement;)Ljava/lang/String;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cd;->w:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cd;->v:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->x(Lcom/vungle/ads/internal/model/AdPayload$CacheableReplacement;)Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cd;->w:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cd;->v:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    if-eq v0, v1, :cond_21

    return-object p0

    :cond_21
    const/4 p0, 0x0

    :try_start_22
    throw p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_23

    :catchall_23
    move-exception p0

    throw p0
.end method

.method static synthetic t(Lcom/vungle/ads/internal/model/AppNode;)Ljava/lang/String;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cd;->w:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cd;->v:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->o(Lcom/vungle/ads/internal/model/AppNode;)Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cd;->v:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cd;->w:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method

.method static synthetic u(Lcom/vungle/ads/internal/model/Placement;)Ljava/lang/String;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cd;->v:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cd;->w:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    if-ne v0, v1, :cond_17

    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->m(Lcom/vungle/ads/internal/model/Placement;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_17
    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->m(Lcom/vungle/ads/internal/model/Placement;)Ljava/lang/String;

    const/4 p0, 0x0

    :try_start_1b
    throw p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1c

    :catchall_1c
    move-exception p0

    throw p0
.end method

.method static synthetic v(Lcom/vungle/ads/internal/model/AdPayload$AdUnit;)Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cd;->v:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cd;->w:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-eq v0, v1, :cond_17

    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->n(Lcom/vungle/ads/internal/model/AdPayload$AdUnit;)Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;

    move-result-object p0

    return-object p0

    :cond_17
    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->n(Lcom/vungle/ads/internal/model/AdPayload$AdUnit;)Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;

    const/4 p0, 0x0

    :try_start_1b
    throw p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1c

    :catchall_1c
    move-exception p0

    throw p0
.end method

.method private static w(Lcom/vungle/ads/internal/model/Placement;)Z
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cd;->v:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cd;->w:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/Placement;->isRewardedVideo()Z

    move-result p0

    if-eqz v0, :cond_17

    goto :goto_1a

    :cond_17
    const/16 v0, 0x43

    :try_start_19
    div-int/2addr v0, v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1b

    :goto_1a
    return p0

    :catchall_1b
    move-exception p0

    throw p0
.end method

.method private static x(Lcom/vungle/ads/internal/model/AdPayload$CacheableReplacement;)Ljava/lang/String;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cd;->v:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cd;->w:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x14

    if-nez v0, :cond_11

    const/16 v0, 0x42

    goto :goto_13

    :cond_11
    const/16 v0, 0x14

    :goto_13
    if-ne v0, v1, :cond_24

    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/AdPayload$CacheableReplacement;->getUrl()Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cd;->v:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cd;->w:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0

    :cond_24
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/AdPayload$CacheableReplacement;->getUrl()Ljava/lang/String;

    const/4 p0, 0x0

    :try_start_28
    throw p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception p0

    throw p0
.end method

.method private static y(Z[ILjava/lang/String;)Ljava/lang/String;
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

    sget-object v8, Lcom/ironsource/adqualitysdk/sdk/i/cd;->u:[C

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

.method static synthetic z(Lcom/vungle/ads/internal/model/Placement;)Z
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cd;->v:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cd;->w:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    if-ne v0, v1, :cond_17

    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->w(Lcom/vungle/ads/internal/model/Placement;)Z

    move-result p0

    return p0

    :cond_17
    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->w(Lcom/vungle/ads/internal/model/Placement;)Z

    const/4 p0, 0x0

    :try_start_1b
    throw p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1c

    :catchall_1c
    move-exception p0

    throw p0
.end method


# virtual methods
.method final j()Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/adqualitysdk/sdk/i/az$d;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x4

    new-array v3, v2, [I

    fill-array-data v3, :array_c8

    const-string v4, "\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001"

    invoke-static {v1, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->y(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/cd$d;

    invoke-direct {v3, p0}, Lcom/ironsource/adqualitysdk/sdk/i/cd$d;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/cd;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v2, [I

    fill-array-data v1, :array_d4

    const/4 v3, 0x0

    const-string v4, "\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0001"

    invoke-static {v3, v1, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->y(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/cd$c;

    invoke-direct {v4, p0}, Lcom/ironsource/adqualitysdk/sdk/i/cd$c;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/cd;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v2, [I

    fill-array-data v1, :array_e0

    const-string v4, "\u0001\u0000\u0001\u0001\u0000\u0000\u0001\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0000\u0000\u0000\u0001\u0000\u0001\u0001\u0000"

    invoke-static {v3, v1, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->y(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/cd$a;

    invoke-direct {v4, p0}, Lcom/ironsource/adqualitysdk/sdk/i/cd$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/cd;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_ec

    const/16 v4, 0x30

    const-string v5, ""

    invoke-static {v5, v4, v3, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v4

    rsub-int/lit8 v4, v4, 0xa

    invoke-static {v1, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->p([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/cd$b;

    invoke-direct {v4, p0}, Lcom/ironsource/adqualitysdk/sdk/i/cd$b;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/cd;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_fc

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const-string v8, "\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0000\u0000\u0001\u0000\u0001\u0001\u0001\u0000"

    const-string v9, "\u0001\u0000\u0001\u0001\u0000\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0000"

    cmp-long v10, v4, v6

    add-int/lit8 v10, v10, 0xd

    invoke-static {v1, v10}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->p([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/cd$e;

    invoke-direct {v4, p0}, Lcom/ironsource/adqualitysdk/sdk/i/cd$e;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/cd;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v2, [I

    fill-array-data v1, :array_110

    invoke-static {v3, v1, v8}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->y(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/cd$g;

    invoke-direct {v4, p0}, Lcom/ironsource/adqualitysdk/sdk/i/cd$g;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/cd;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v2, [I

    fill-array-data v1, :array_11c

    invoke-static {v3, v1, v9}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->y(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/cd$f;

    invoke-direct {v2, p0}, Lcom/ironsource/adqualitysdk/sdk/i/cd$f;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/cd;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/cd;->w:I

    add-int/lit8 v1, v1, 0x79

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cd;->v:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    nop

    :array_c8
    .array-data 4
        0x90
        0x9
        0x0
        0x1
    .end array-data

    :array_d4
    .array-data 4
        0x99
        0x8
        0x0
        0x0
    .end array-data

    :array_e0
    .array-data 4
        0xa1
        0x1a
        0x0
        0x0
    .end array-data

    :array_ec
    .array-data 4
        -0x10fb758
        0x2fd8c52f
        -0x54bc287d    # -6.9577E-13f
        0x1e4e455f
        -0x734cbf30
        -0x6103b1ea
    .end array-data

    :array_fc
    .array-data 4
        0x4dfefbc4    # 5.3473907E8f
        0x5ae48c8d
        0x57371d41
        0x4364a2d4
        0x1ac93965
        -0x24d7b3a2
        0x4df1bebf    # 5.0697622E8f
        0x77b4c63a
    .end array-data

    :array_110
    .array-data 4
        0xbb
        0x13
        0x0
        0x0
    .end array-data

    :array_11c
    .array-data 4
        0xce
        0xf
        0xc0
        0x0
    .end array-data
.end method

.method public final ﮐ()Ljava/lang/String;
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cd;->w:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cd;->v:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    :try_start_a
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/hq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ｋ()Lcom/ironsource/adqualitysdk/sdk/i/hs;

    move-result-object v0

    const-class v2, Lcom/vungle/ads/v0;

    const/16 v3, 0x8

    new-array v3, v3, [I

    const v4, -0x44c66309

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    const v6, -0x3ed4c806

    aput v6, v3, v4

    const v4, 0x5f36ddb8

    aput v4, v3, v1

    const/4 v4, 0x3

    const v6, 0x4e5571ed    # 8.952533E8f

    aput v6, v3, v4

    const/4 v4, 0x4

    const v6, -0x3cdcd43a    # -163.17099f

    aput v6, v3, v4

    const/4 v4, 0x5

    const v6, -0x623b0ce2

    aput v6, v3, v4

    const/4 v4, 0x6

    const v6, 0x312f0d1e

    aput v6, v3, v4

    const/4 v4, 0x7

    const v6, 0x62724962

    aput v6, v3, v4

    const-string v4, ""

    invoke-static {v4, v5}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v4

    add-int/lit8 v4, v4, 0xe

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->p([II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->ﻐ(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_5b
    .catchall {:try_start_a .. :try_end_5b} :catchall_65

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/cd;->w:I

    add-int/lit8 v2, v2, 0x31

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/cd;->v:I

    rem-int/2addr v2, v1

    return-object v0

    :catchall_65
    const/4 v0, 0x0

    return-object v0
.end method

.method final ｋ(Ljava/lang/String;)Ljava/lang/Class;
    .registers 19

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x12

    const/16 v5, 0x30

    const/16 v10, 0x14

    const/16 v11, 0x15

    const/4 v12, 0x6

    const/16 v13, 0xa

    const/16 v14, 0x10

    const-string v15, ""

    const/16 v1, 0xe

    const/16 v9, 0x8

    const/16 v16, 0x2

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_420

    goto/16 :goto_3d0

    :sswitch_24
    new-array v1, v8, [I

    fill-array-data v1, :array_4ce

    const-string v2, "\u0000\u0001\u0000\u0000\u0000\u0001"

    invoke-static {v6, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->y(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cd;->v:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cd;->w:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_49

    const/16 v1, 0x65

    goto/16 :goto_3d1

    :cond_49
    const/16 v1, 0xb

    goto/16 :goto_3d1

    :sswitch_4d
    new-array v1, v9, [I

    fill-array-data v1, :array_4da

    invoke-static {v7}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v2

    add-int/2addr v2, v14

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->p([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cd;->v:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cd;->w:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v0, 0x1a

    add-int/lit8 v1, v1, 0x7b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cd;->v:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v1, 0x1a

    goto/16 :goto_3d1

    :sswitch_7d
    new-array v1, v9, [I

    fill-array-data v1, :array_4ee

    const/4 v2, 0x0

    invoke-static {v7, v2, v2}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v4

    cmpl-float v2, v4, v2

    add-int/2addr v2, v14

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->p([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d0

    const/16 v1, 0xd

    goto/16 :goto_3d1

    :sswitch_9c
    new-array v1, v8, [I

    fill-array-data v1, :array_502

    const-string v2, "\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0000\u0001"

    invoke-static {v6, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->y(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cd;->w:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cd;->v:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_bf

    goto/16 :goto_20d

    :cond_bf
    const/4 v1, 0x4

    goto/16 :goto_3d1

    :sswitch_c2
    new-array v1, v8, [I

    fill-array-data v1, :array_50e

    const-string v2, "\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0001"

    invoke-static {v6, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->y(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cd;->w:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cd;->v:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x7

    goto/16 :goto_3d1

    :sswitch_e4
    new-array v1, v13, [I

    fill-array-data v1, :array_51a

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v2

    shr-int/2addr v2, v14

    add-int/2addr v2, v10

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->p([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_100

    const/16 v0, 0x3b

    goto :goto_102

    :cond_100
    const/16 v0, 0x31

    :goto_102
    const/16 v1, 0x31

    if-eq v0, v1, :cond_3d0

    const/16 v1, 0x10

    goto/16 :goto_3d1

    :sswitch_10a
    new-array v1, v8, [I

    fill-array-data v1, :array_532

    const-string v2, "\u0000\u0000\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000"

    invoke-static {v7, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->y(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cd;->v:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cd;->w:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_12d

    const/16 v9, 0x39

    :cond_12d
    const/16 v0, 0x39

    if-eq v9, v0, :cond_135

    const/16 v1, 0x1b

    goto/16 :goto_3d1

    :cond_135
    const/16 v1, 0x51

    goto/16 :goto_3d1

    :sswitch_139
    new-array v2, v9, [I

    fill-array-data v2, :array_53e

    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    add-int/2addr v4, v1

    invoke-static {v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->p([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_152

    goto :goto_154

    :cond_152
    const/16 v1, 0x3c

    :goto_154
    const/16 v0, 0x3c

    if-eq v1, v0, :cond_3d0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cd;->v:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cd;->w:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_168

    const/16 v1, 0x50

    goto/16 :goto_3d1

    :cond_168
    const/16 v1, 0x17

    goto/16 :goto_3d1

    :sswitch_16c
    new-array v1, v10, [I

    fill-array-data v1, :array_552

    invoke-static {v7}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x25

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->p([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cd;->v:I

    add-int/2addr v0, v6

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cd;->w:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    goto/16 :goto_3d1

    :sswitch_191
    new-array v1, v8, [I

    fill-array-data v1, :array_57e

    const-string v2, "\u0000\u0001\u0001\u0000\u0001\u0001\u0000\u0001\u0000\u0000"

    invoke-static {v7, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->y(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a7

    goto :goto_1a8

    :cond_1a7
    const/4 v7, 0x1

    :goto_1a8
    if-eq v7, v6, :cond_3d0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cd;->w:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cd;->v:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x9

    goto/16 :goto_3d1

    :sswitch_1b8
    new-array v1, v8, [I

    fill-array-data v1, :array_58a

    const-string v2, "\u0000\u0001\u0001\u0001\u0000\u0000\u0001"

    invoke-static {v6, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->y(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ce

    const/4 v7, 0x1

    :cond_1ce
    if-eqz v7, :cond_3d0

    const/4 v1, 0x5

    goto/16 :goto_3d1

    :sswitch_1d3
    new-array v1, v8, [I

    fill-array-data v1, :array_596

    const-string v2, "\u0001\u0000\u0001\u0001\u0001\u0001\u0000"

    invoke-static {v7, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->y(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1eb

    const/16 v0, 0x24

    goto :goto_1ed

    :cond_1eb
    const/16 v0, 0x61

    :goto_1ed
    const/16 v1, 0x61

    if-eq v0, v1, :cond_3d0

    const/4 v1, 0x2

    goto/16 :goto_3d1

    :sswitch_1f4
    new-array v1, v12, [I

    fill-array-data v1, :array_5a2

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v2

    shr-int/2addr v2, v9

    sub-int/2addr v13, v2

    invoke-static {v1, v13}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->p([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d0

    :goto_20d
    const/4 v1, 0x3

    goto/16 :goto_3d1

    :sswitch_210
    new-array v1, v8, [I

    fill-array-data v1, :array_5b2

    invoke-static {v6, v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->y(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_224

    const/4 v7, 0x1

    :cond_224
    if-eqz v7, :cond_3d0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cd;->v:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cd;->w:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_236

    const/16 v1, 0x1c

    goto/16 :goto_3d1

    :cond_236
    const/16 v1, 0xc

    goto/16 :goto_3d1

    :sswitch_23a
    new-array v2, v9, [I

    fill-array-data v2, :array_5be

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v4

    shr-int/2addr v4, v9

    add-int/2addr v4, v1

    invoke-static {v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->p([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d0

    const/16 v1, 0x11

    goto/16 :goto_3d1

    :sswitch_257
    new-array v1, v8, [I

    fill-array-data v1, :array_5d2

    const-string v2, "\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0001"

    invoke-static {v6, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->y(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d0

    const/16 v1, 0x8

    goto/16 :goto_3d1

    :sswitch_270
    new-array v2, v13, [I

    fill-array-data v2, :array_5de

    invoke-static {v15, v5, v7, v7}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v4

    add-int/2addr v4, v11

    invoke-static {v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->p([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d0

    goto/16 :goto_3d1

    :sswitch_28a
    new-array v1, v13, [I

    fill-array-data v1, :array_5f6

    invoke-static {v15, v15}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v2

    add-int/2addr v2, v4

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->p([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a3

    goto :goto_2a4

    :cond_2a3
    const/4 v7, 0x1

    :goto_2a4
    if-eqz v7, :cond_2a8

    goto/16 :goto_3d0

    :cond_2a8
    const/16 v1, 0x16

    goto/16 :goto_3d1

    :sswitch_2ac
    new-array v2, v9, [I

    fill-array-data v2, :array_60e

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v4

    shr-int/2addr v4, v14

    add-int/2addr v4, v1

    invoke-static {v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->p([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c8

    const/16 v0, 0x43

    goto :goto_2ca

    :cond_2c8
    const/16 v0, 0x33

    :goto_2ca
    const/16 v1, 0x43

    if-eq v0, v1, :cond_2d0

    goto/16 :goto_3d0

    :cond_2d0
    const/16 v1, 0x13

    goto/16 :goto_3d1

    :sswitch_2d4
    new-array v1, v8, [I

    fill-array-data v1, :array_622

    const-string v2, "\u0000\u0000\u0001\u0000\u0000\u0000\u0000\u0001\u0000"

    invoke-static {v7, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->y(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d0

    const/16 v1, 0x14

    goto/16 :goto_3d1

    :sswitch_2ed
    const/16 v1, 0xc

    new-array v1, v1, [I

    fill-array-data v1, :array_62e

    invoke-static {v15, v5, v7}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v2

    sub-int/2addr v11, v2

    invoke-static {v1, v11}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->p([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x53

    if-eqz v0, :cond_30a

    goto :goto_30c

    :cond_30a
    const/16 v12, 0x53

    :goto_30c
    if-eq v12, v1, :cond_3d0

    const/16 v1, 0x12

    goto/16 :goto_3d1

    :sswitch_312
    new-array v1, v8, [I

    fill-array-data v1, :array_64a

    const-string v2, "\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0000\u0001"

    invoke-static {v6, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->y(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d0

    const/16 v1, 0x15

    goto/16 :goto_3d1

    :sswitch_32b
    new-array v1, v8, [I

    fill-array-data v1, :array_656

    const-string v2, "\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0001"

    invoke-static {v6, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->y(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d0

    const/16 v1, 0x19

    goto/16 :goto_3d1

    :sswitch_344
    new-array v1, v8, [I

    fill-array-data v1, :array_662

    const-string v2, "\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0000\u0001\u0000\u0001\u0001"

    invoke-static {v6, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->y(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d0

    const/16 v1, 0xf

    goto/16 :goto_3d1

    :sswitch_35d
    const/16 v1, 0x16

    new-array v1, v1, [I

    fill-array-data v1, :array_66e

    invoke-static {v15}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x29

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->p([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d0

    const/16 v1, 0x18

    goto :goto_3d1

    :sswitch_37b
    new-array v1, v1, [I

    fill-array-data v1, :array_69e

    invoke-static {v15, v7}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    const/16 v4, 0x19

    rsub-int/lit8 v8, v2, 0x19

    invoke-static {v1, v8}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->p([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d0

    const/16 v1, 0xa

    goto :goto_3d1

    :sswitch_399
    new-array v1, v8, [I

    fill-array-data v1, :array_6be

    const-string v2, "\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0001"

    invoke-static {v6, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->y(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d0

    const/4 v1, 0x6

    goto :goto_3d1

    :sswitch_3b0
    new-array v1, v12, [I

    fill-array-data v1, :array_6ca

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v2, v4, v8

    const/16 v4, 0x9

    add-int/2addr v2, v4

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->p([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d0

    const/4 v1, 0x0

    goto :goto_3d1

    :cond_3d0
    :goto_3d0
    const/4 v1, -0x1

    :goto_3d1
    packed-switch v1, :pswitch_data_492

    return-object v3

    :pswitch_3d5
    const-class v0, Lcom/vungle/ads/internal/ui/VungleWebClient;

    return-object v0

    :pswitch_3d8
    const-class v0, Lcom/vungle/ads/internal/network/VungleApiClient;

    return-object v0

    :pswitch_3db
    const-class v0, Lcom/vungle/ads/VungleAds;

    return-object v0

    :pswitch_3de
    const-class v0, Lcom/vungle/ads/internal/ui/VungleActivity;

    return-object v0

    :pswitch_3e1
    const-class v0, Lcom/vungle/ads/x1;

    return-object v0

    :pswitch_3e4
    const-class v0, Lcom/vungle/ads/v1;

    return-object v0

    :pswitch_3e7
    const-class v0, Lcom/vungle/ads/internal/model/Placement;

    return-object v0

    :pswitch_3ea
    const-class v0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;

    return-object v0

    :pswitch_3ed
    const-class v0, Lcom/vungle/ads/g1;

    return-object v0

    :pswitch_3f0
    const-class v0, Lcom/vungle/ads/e1;

    return-object v0

    :pswitch_3f3
    const-class v0, Lcom/vungle/ads/b1;

    return-object v0

    :pswitch_3f6
    const-class v0, Lcom/vungle/ads/FullscreenAd;

    return-object v0

    :pswitch_3f9
    const-class v0, Lcom/vungle/ads/internal/model/AdPayload$CacheableReplacement;

    return-object v0

    :pswitch_3fc
    const-class v0, Lcom/vungle/ads/u0;

    return-object v0

    :pswitch_3ff
    const-class v0, Lcom/vungle/ads/t0;

    return-object v0

    :pswitch_402
    const-class v0, Lcom/vungle/ads/BaseAd;

    return-object v0

    :pswitch_405
    const-class v0, Lcom/vungle/ads/s0;

    return-object v0

    :pswitch_408
    const-class v0, Lcom/vungle/ads/BannerAdSize;

    return-object v0

    :pswitch_40b
    const-class v0, Lcom/vungle/ads/r0;

    return-object v0

    :pswitch_40e
    const-class v0, Lcom/vungle/ads/p0;

    return-object v0

    :pswitch_411
    const-class v0, Lcom/vungle/ads/internal/model/AppNode;

    return-object v0

    :pswitch_414
    const-class v0, Lcom/vungle/ads/internal/model/AdPayload;

    return-object v0

    :pswitch_417
    const-class v0, Lcom/vungle/ads/internal/AdInternal;

    return-object v0

    :pswitch_41a
    const-class v0, Lcom/vungle/ads/internal/model/AdAsset;

    return-object v0

    :pswitch_41d
    const-class v0, Lcom/vungle/ads/internal/ui/AdActivity;

    return-object v0

    :sswitch_data_420
    .sparse-switch
        -0x6d78938e -> :sswitch_3b0
        -0x6ac32f71 -> :sswitch_399
        -0x5d0a2941 -> :sswitch_37b
        -0x5910ad29 -> :sswitch_35d
        -0x55952aa2 -> :sswitch_344
        -0x4647c161 -> :sswitch_32b
        -0x24589b0f -> :sswitch_312
        -0x1db9b59d -> :sswitch_2ed
        -0x1dafcd3b -> :sswitch_2d4
        -0x1cffe0ef -> :sswitch_2ac
        -0x1778f33b -> :sswitch_28a
        -0x29c4b4a -> :sswitch_270
        0x125b4530 -> :sswitch_257
        0x1315208f -> :sswitch_23a
        0x13537fc8 -> :sswitch_210
        0x173b4020 -> :sswitch_1f4
        0x1ce3a46d -> :sswitch_1d3
        0x33e33ba3 -> :sswitch_1b8
        0x39549411 -> :sswitch_191
        0x3afff849 -> :sswitch_16c
        0x47de8a80 -> :sswitch_139
        0x480132ee -> :sswitch_10a
        0x55fdc032 -> :sswitch_e4
        0x59bdfa63 -> :sswitch_c2
        0x6daa2fcb -> :sswitch_9c
        0x6e7c6ecf -> :sswitch_7d
        0x73183534 -> :sswitch_4d
        0x762c8af4 -> :sswitch_24
    .end sparse-switch

    :pswitch_data_492
    .packed-switch 0x0
        :pswitch_41d
        :pswitch_41d
        :pswitch_41a
        :pswitch_417
        :pswitch_414
        :pswitch_411
        :pswitch_40e
        :pswitch_40b
        :pswitch_408
        :pswitch_405
        :pswitch_405
        :pswitch_402
        :pswitch_3ff
        :pswitch_3fc
        :pswitch_3f9
        :pswitch_3f6
        :pswitch_3f3
        :pswitch_3f0
        :pswitch_3ed
        :pswitch_3ea
        :pswitch_3e7
        :pswitch_3e4
        :pswitch_3e1
        :pswitch_3de
        :pswitch_3de
        :pswitch_3db
        :pswitch_3d8
        :pswitch_3d5
    .end packed-switch

    :array_4ce
    .array-data 4
        0x45
        0x6
        0x0
        0x6
    .end array-data

    :array_4da
    .array-data 4
        -0x39a7106
        0x1ac8e2af
        0x79561dd7
        0x55f121e5
        0x51e99a87
        0x23e35ec1
        0xceed8c0
        -0x113ab755
    .end array-data

    :array_4ee
    .array-data 4
        -0x9b2c324
        0x103582c6
        0x337c7ab8
        -0x10420650
        -0x20306b72
        0x4b428373    # 1.2747635E7f
        0x6114ce4c
        0x5fb6ae52
    .end array-data

    :array_502
    .array-data 4
        0x7
        0x9
        0xb4
        0x2
    .end array-data

    :array_50e
    .array-data 4
        0x1f
        0x10
        0x0
        0x0
    .end array-data

    :array_51a
    .array-data 4
        0x337c7ab8
        -0x10420650
        -0x20306b72
        0x4b428373    # 1.2747635E7f
        0x6114ce4c
        0x5fb6ae52
        -0x4ee33171
        0x3eef1afb
        0x4061f31
        0x4d379183    # 1.9248542E8f
    .end array-data

    :array_532
    .array-data 4
        0x81
        0xf
        0xba
        0x2
    .end array-data

    :array_53e
    .array-data 4
        -0x39a7106
        0x1ac8e2af
        -0x4c1cbf8c
        0x6adc555c
        0x28d0ec93
        0x38759706
        0x17f14839
        -0x5bcceba4
    .end array-data

    :array_552
    .array-data 4
        -0x6c70fc40
        0x66777a0
        0x75bff9f2
        0x15bcad7
        -0x86d2161
        0x377cdcdd
        -0x6adaec03
        0x379580b6
        -0x7c7526b1
        -0x10878cb5
        0x290c81c4
        0x5cddbc82
        0x79af01a7
        -0x38821cc9
        -0x497f1366
        -0x6120046b
        -0x6df0737c
        0x47349b50    # 46235.312f
        0x32f38ba2
        0x41c09d98
    .end array-data

    :array_57e
    .array-data 4
        0x3b
        0xa
        0x88
        0x0
    .end array-data

    :array_58a
    .array-data 4
        0x10
        0x7
        0x51
        0x0
    .end array-data

    :array_596
    .array-data 4
        0x0
        0x7
        0x92
        0x3
    .end array-data

    :array_5a2
    .array-data 4
        0x7ba54a89
        0x1e535bb9
        -0x43f5183b
        0x6f830e91
        0x3f94ab3e
        0x7c05c2e7
    .end array-data

    :array_5b2
    .array-data 4
        0x4b
        0xe
        0x94
        0xe
    .end array-data

    :array_5be
    .array-data 4
        0x2299ee38
        -0x636896e9
        -0x21365ef3
        0x206cc281
        -0x13d44bfb
        0x730c8001
        0x27faa702    # 6.957001E-15f
        0x6b92f124
    .end array-data

    :array_5d2
    .array-data 4
        0x2f
        0xc
        0x0
        0x7
    .end array-data

    :array_5de
    .array-data 4
        -0x26ebf815
        -0x5ceb613c
        0x5f1a0d2f
        0x15ed7d7c
        0x3309abb6
        0x45812aad
        0x57371d41
        0x4364a2d4
        0x1ac93965
        -0x24d7b3a2
    .end array-data

    :array_5f6
    .array-data 4
        -0x1c0e660d
        -0x40ef7228
        0x2ed798a0
        0xa06fe04
        0x41b0f0bf
        0x1a33a009
        -0xf758d01
        0x73b3420a
        -0x7a1ff222
        0x53e5b4d
    .end array-data

    :array_60e
    .array-data 4
        0x34ca1649
        0x3f029f
        0x585c9c47
        0x35dd2e28
        -0x3429cf9b    # -2.8074186E7f
        0x3d1a42c8
        -0x7a1ff222
        0x53e5b4d
    .end array-data

    :array_622
    .array-data 4
        0x65
        0x9
        0x0
        0x9
    .end array-data

    :array_62e
    .array-data 4
        0x2299ee38
        -0x636896e9
        -0x21365ef3
        0x206cc281
        -0x13d44bfb
        0x730c8001
        0x41b0f0bf
        0x1a33a009
        -0xf758d01
        0x73b3420a
        -0x7a1ff222
        0x53e5b4d
    .end array-data

    :array_64a
    .array-data 4
        0x6e
        0xa
        0xc6
        0x0
    .end array-data

    :array_656
    .array-data 4
        0x78
        0x9
        0x0
        0x3
    .end array-data

    :array_662
    .array-data 4
        0x59
        0xc
        0x6e
        0x0
    .end array-data

    :array_66e
    .array-data 4
        -0x6c70fc40
        0x66777a0
        0x75bff9f2
        0x15bcad7
        -0x86d2161
        0x377cdcdd
        -0x6adaec03
        0x379580b6
        -0x7c7526b1
        -0x10878cb5
        0x290c81c4
        0x5cddbc82
        -0xaf8989b
        0x699dad6
        0x6f16147e
        -0x1801fbf3
        0x461b83c9
        0x33caccf5
        -0x6df0737c
        0x47349b50    # 46235.312f
        0x32f38ba2
        0x41c09d98
    .end array-data

    :array_69e
    .array-data 4
        -0x6c70fc40
        0x66777a0
        0x75bff9f2
        0x15bcad7
        -0x86d2161
        0x377cdcdd
        -0xc2bb944
        -0x4e3b33df
        -0x28ca443d
        -0x1e601928
        0x2c6fba7c
        -0x9feba84
        0x2721318b
        0x38641b2c
    .end array-data

    :array_6be
    .array-data 4
        0x17
        0x8
        0x0
        0x3
    .end array-data

    :array_6ca
    .array-data 4
        -0x33f4ca34    # -3.6493104E7f
        -0xaec40de
        0x28d0ec93
        0x38759706
        0x17f14839
        -0x5bcceba4
    .end array-data
.end method

.method final ﾇ()Ljava/lang/String;
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cd;->w:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cd;->v:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v0, 0x0

    :try_start_b
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/az;->ﮐ()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [I

    const v4, -0x5547e9ee

    const/4 v5, 0x0

    aput v4, v3, v5

    const v4, 0x43bc33b9

    const/4 v6, 0x1

    aput v4, v3, v6

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cd;->p([II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5
    :try_end_31
    .catchall {:try_start_b .. :try_end_31} :catchall_43

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/cd;->v:I

    add-int/lit8 v3, v3, 0x3d

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/cd;->w:I

    rem-int/2addr v3, v1

    if-nez v3, :cond_3d

    const/4 v5, 0x1

    :cond_3d
    if-nez v5, :cond_40

    return-object v2

    :cond_40
    :try_start_40
    throw v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_41

    :catchall_41
    move-exception v0

    throw v0

    :catchall_43
    return-object v0
.end method
