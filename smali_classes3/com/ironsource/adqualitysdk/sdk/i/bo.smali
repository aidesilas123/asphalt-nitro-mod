###### Class com.json.adqualitysdk.sdk.i.bo (com.ironsource.adqualitysdk.sdk.i.bo)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/bo;
.super Lcom/ironsource/adqualitysdk/sdk/i/az;
.source ""


# static fields
.field private static t:[C = null

.field private static u:I = 0x0

.field private static v:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xc5

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/bo;->t:[C

    return-void

    :array_a
    .array-data 2
        0x7fs
        0x109s
        0x117s
        0x11es
        0x10as
        0x104s
        0x11ds
        0x125s
        0x116s
        0x126s
        0x11fs
        0x11fs
        0x128s
        0xf9s
        0x117s
        0xf4s
        0x12cs
        0x127s
        0x11cs
        0x129s
        0x11cs
        0x127s
        0x116s
        0xf4s
        0x121s
        0x118s
        0x118s
        0x70s
        0xe3s
        0xc5s
        0xc3s
        0xdds
        0xdbs
        0xe2s
        0xc4s
        0xc6s
        0xe1s
        0xdds
        0xc2s
        0xbds
        0xdds
        0xdfs
        0xe1s
        0xe6s
        0xe2s
        0xdcs
        0xbfs
        0xads
        0xc8s
        0xcbs
        0xd3s
        0xe6s
        0xe2s
        0xe5s
        0xe1s
        0xe0s
        0xe1s
        0xdbs
        0xdfs
        0xcds
        0xc8s
        0xe1s
        0xe4s
        0xe5s
        0xe5s
        0xe4s
        0xecs
        0xe1s
        0xdcs
        0xd1s
        0xdes
        0xd1s
        0xdcs
        0xcbs
        0xa9s
        0xccs
        0xa9s
        0xccs
        0xcds
        0xdbs
        0xc9s
        0xaas
        0xd4s
        0xd5s
        0xdcs
        0xb0s
        0x7fs
        0xf7s
        0xf6s
        0xfes
        0xf9s
        0xf5s
        0xd7s
        0xd5s
        0xefs
        0xeds
        0xf4s
        0xd6s
        0xd8s
        0xf3s
        0xefs
        0xd4s
        0xcfs
        0xefs
        0xf1s
        0xf3s
        0xf8s
        0xf4s
        0xees
        0xd1s
        0xc3s
        0xe6s
        0xf8s
        0xf4s
        0xdfs
        0xd9s
        0xf2s
        0xf4s
        0xecs
        0xdas
        0xdas
        0xdas
        0xdas
        0xf3s
        0xf6s
        0x49s
        0x92s
        0x96s
        0x95s
        0x98s
        0xa1s
        0x9es
        0x89s
        0x8cs
        0x99s
        0x80s
        0x86s
        0x9as
        0x93s
        0x85s
        0x26s
        0x5fs
        0x6bs
        0x69s
        0x69s
        0x6cs
        0x73s
        0x6es
        0x5as
        0x5fs
        0x6bs
        0x52s
        0x58s
        0x6cs
        0x65s
        0x37s
        0x69s
        0x6cs
        0x73s
        0x6es
        0x5as
        0x5fs
        0x6bs
        0x52s
        0x58s
        0x6cs
        0x65s
        0x57s
        0x59s
        0x64s
        0x62s
        0x63s
        0x6cs
        0x6bs
        0x6cs
        0x71s
        0x5bs
        0x5ds
        0x6bs
        0x7bs
        0xefs
        0xefs
        0xe3s
        0xdas
        0xe8s
        0xefs
        0xdbs
        0xd5s
        0xees
        0xe2s
        0xdds
        0xf1s
        0xf6s
        0xefs
        0xecs
        0xecs
        0xees
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/az;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static k(Z[ILjava/lang/String;)Ljava/lang/String;
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

    sget-object v8, Lcom/ironsource/adqualitysdk/sdk/i/bo;->t:[C

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

.method private static l(Ljp/maio/sdk/android/MaioAdsListenerInterface;)V
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bo;->u:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bo;->v:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x5c

    if-nez v0, :cond_11

    const/16 v0, 0x5c

    goto :goto_13

    :cond_11
    const/16 v0, 0x1f

    :goto_13
    invoke-static {p0}, Ljp/maio/sdk/android/MaioAds;->setMaioAdsListener(Ljp/maio/sdk/android/MaioAdsListenerInterface;)V

    if-eq v0, v1, :cond_19

    return-void

    :cond_19
    const/4 p0, 0x0

    :try_start_1a
    throw p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_1b

    :catchall_1b
    move-exception p0

    throw p0
.end method

.method static synthetic m(Ljp/maio/sdk/android/MaioAdsListenerInterface;)V
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bo;->v:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bo;->u:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/bo;->l(Ljp/maio/sdk/android/MaioAdsListenerInterface;)V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/bo;->u:I

    add-int/lit8 p0, p0, 0x9

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/bo;->v:I

    rem-int/lit8 p0, p0, 0x2

    const/16 v0, 0x12

    if-nez p0, :cond_1e

    const/16 p0, 0x12

    goto :goto_20

    :cond_1e
    const/16 p0, 0x30

    :goto_20
    if-eq p0, v0, :cond_23

    return-void

    :cond_23
    const/16 p0, 0x15

    :try_start_25
    div-int/lit8 p0, p0, 0x0
    :try_end_27
    .catchall {:try_start_25 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception p0

    throw p0
.end method


# virtual methods
.method final j()Ljava/util/Map;
    .registers 5
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

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_2a

    const-string v3, "\u0000\u0000\u0001\u0001\u0000\u0000\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001"

    invoke-static {v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/bo;->k(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/bo$a;

    invoke-direct {v2, p0}, Lcom/ironsource/adqualitysdk/sdk/i/bo$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/bo;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bo;->u:I

    add-int/lit8 v1, v1, 0x51

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bo;->v:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    nop

    :array_2a
    .array-data 4
        0xb3
        0x12
        0x83
        0x0
    .end array-data
.end method

.method final ｋ(Ljava/lang/String;)Ljava/lang/Class;
    .registers 9

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bo;->u:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bo;->v:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_10e

    goto/16 :goto_f7

    :sswitch_18
    new-array v1, v5, [I

    fill-array-data v1, :array_144

    const-string v2, "\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0000\u0000\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0000\u0001\u0000\u0000\u0000\u0001\u0001\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0001"

    invoke-static {v4, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/bo;->k(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    const/4 v4, 0x1

    :cond_2e
    if-eq v4, v6, :cond_32

    goto/16 :goto_f7

    :cond_32
    const/4 v1, 0x4

    goto/16 :goto_f8

    :sswitch_35
    new-array v1, v5, [I

    fill-array-data v1, :array_150

    invoke-static {v6, v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/bo;->k(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f7

    const/4 v1, 0x1

    goto/16 :goto_f8

    :sswitch_4b
    new-array v1, v5, [I

    fill-array-data v1, :array_15c

    invoke-static {v6, v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/bo;->k(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f7

    const/4 v1, 0x3

    goto/16 :goto_f8

    :sswitch_61
    new-array v2, v5, [I

    fill-array-data v2, :array_168

    const-string v4, "\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000"

    invoke-static {v6, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/bo;->k(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f7

    const/4 p1, 0x6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bo;->u:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bo;->v:I

    rem-int/2addr v0, v1

    const/4 v1, 0x6

    goto/16 :goto_f8

    :sswitch_83
    new-array v1, v5, [I

    fill-array-data v1, :array_174

    const-string v2, "\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0000\u0000\u0000\u0000"

    invoke-static {v6, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/bo;->k(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f7

    const/4 v1, 0x5

    goto :goto_f8

    :sswitch_9a
    new-array v2, v5, [I

    fill-array-data v2, :array_180

    const-string v5, "\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0001"

    invoke-static {v6, v2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/bo;->k(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b0

    const/4 v4, 0x1

    :cond_b0
    if-eq v4, v6, :cond_b3

    goto :goto_f7

    :cond_b3
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bo;->v:I

    add-int/lit8 p1, p1, 0x25

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/bo;->u:I

    rem-int/2addr p1, v1

    const/4 v1, 0x7

    goto :goto_f8

    :sswitch_be
    new-array v2, v5, [I

    fill-array-data v2, :array_18c

    const-string v5, "\u0000\u0000\u0000\u0001\u0000\u0000\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001"

    invoke-static {v4, v2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/bo;->k(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d4

    const/4 v4, 0x1

    :cond_d4
    if-eq v4, v6, :cond_f8

    goto :goto_f7

    :sswitch_d7
    new-array v2, v5, [I

    fill-array-data v2, :array_198

    const-string v5, "\u0001\u0000\u0000\u0000\u0000\u0001\u0001"

    invoke-static {v4, v2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/bo;->k(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f7

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bo;->v:I

    add-int/lit8 p1, p1, 0x3b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/bo;->u:I

    rem-int/2addr p1, v1

    const/4 v1, 0x0

    goto :goto_f8

    :cond_f7
    :goto_f7
    const/4 v1, -0x1

    :cond_f8
    :goto_f8
    packed-switch v1, :pswitch_data_130

    return-object v3

    :pswitch_fc
    const-class p1, Ljp/maio/sdk/android/MaioAdsListenerInterface;

    return-object p1

    :pswitch_ff
    const-class p1, Ljp/maio/sdk/android/MaioAdsListener;

    return-object p1

    :pswitch_102
    const-class p1, Ljp/maio/sdk/android/MaioAdsInstance;

    return-object p1

    :pswitch_105
    const-class p1, Ljp/maio/sdk/android/HtmlBasedAdActivity;

    return-object p1

    :pswitch_108
    const-class p1, Ljp/maio/sdk/android/AdFullscreenActivity;

    return-object p1

    :pswitch_10b
    const-class p1, Ljp/maio/sdk/android/MaioAds;

    return-object p1

    :sswitch_data_10e
    .sparse-switch
        -0x6b3eff8a -> :sswitch_d7
        -0x56bb8814 -> :sswitch_be
        -0x4db3b2f1 -> :sswitch_9a
        -0x3fc2dcd5 -> :sswitch_83
        -0x109cacb6 -> :sswitch_61
        0x154d491a -> :sswitch_4b
        0x6c71418d -> :sswitch_35
        0x721a4adb -> :sswitch_18
    .end sparse-switch

    :pswitch_data_130
    .packed-switch 0x0
        :pswitch_10b
        :pswitch_108
        :pswitch_108
        :pswitch_105
        :pswitch_105
        :pswitch_102
        :pswitch_ff
        :pswitch_fc
    .end packed-switch

    :array_144
    .array-data 4
        0x56
        0x27
        0x88
        0x4
    .end array-data

    :array_150
    .array-data 4
        0x7
        0x14
        0xb3
        0x9
    .end array-data

    :array_15c
    .array-data 4
        0x43
        0x13
        0x68
        0x13
    .end array-data

    :array_168
    .array-data 4
        0x8c
        0xf
        0x0
        0x1
    .end array-data

    :array_174
    .array-data 4
        0x7d
        0xf
        0x2e
        0x0
    .end array-data

    :array_180
    .array-data 4
        0x9b
        0x18
        0x0
        0xd
    .end array-data

    :array_18c
    .array-data 4
        0x1b
        0x28
        0x76
        0x0
    .end array-data

    :array_198
    .array-data 4
        0x0
        0x7
        0xb2
        0x0
    .end array-data
.end method

.method public final ﾇ()Ljava/lang/String;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bo;->v:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bo;->u:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Ljp/maio/sdk/android/MaioAds;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bo;->u:I

    add-int/lit8 v1, v1, 0x15

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bo;->v:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    if-nez v1, :cond_20

    return-object v0

    :cond_20
    const/4 v0, 0x0

    :try_start_21
    throw v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception v0

    throw v0
.end method
