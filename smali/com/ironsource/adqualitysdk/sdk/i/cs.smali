###### Class com.json.adqualitysdk.sdk.i.cs (com.ironsource.adqualitysdk.sdk.i.cs)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/cs;
.super Lcom/ironsource/adqualitysdk/sdk/i/cx;
.source ""


# static fields
.field private static h:[I = null

.field private static i:[C = null

.field private static j:I = 0x0

.field private static k:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/cs;->h:[I

    const/16 v0, 0x28

    new-array v0, v0, [C

    fill-array-data v0, :array_3c

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/cs;->i:[C

    return-void

    nop

    :array_14
    .array-data 4
        -0x35a722e0    # -3553096.0f
        0x79374eeb
        0x1ee1ed25
        -0x72d9a71d
        0x207b7890
        0x2ce1bf94
        -0x36dae61b
        -0x58507b7a
        0x8ce488a
        -0x5c5c6811
        0x1941f441
        0x395e8db7
        0x54d6c808
        0x16558db8
        0xc4d1bfb
        -0x78468df5
        0x4a69004b    # 3817490.8f
        -0x56fe3ba7
    .end array-data

    :array_3c
    .array-data 2
        0x6ds
        0xcbs
        0xcds
        0xd8s
        0xdcs
        0xdas
        0xd3s
        0xcbs
        0xc5s
        0xd2s
        0xd3s
        0xd1s
        0xc6s
        0xa3s
        0xb0s
        0xd7s
        0xd8s
        0xdbs
        0xd7s
        0xd0s
        0xd8s
        0xd7s
        0xaes
        0xb6s
        0xdds
        0xdds
        0xdfs
        0xc8s
        0xc8s
        0xd8s
        0xd6s
        0xd6s
        0xd9s
        0xe0s
        0xdbs
        0xc7s
        0xcas
        0xd7s
        0xd7s
        0xc8s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;-><init>()V

    return-void
.end method

.method private static d(Ljava/util/List;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;I)Z"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_46

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, p1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    if-eqz v0, :cond_45

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    rem-int/lit8 v0, v0, 0x2

    const-class v0, Ljava/lang/Boolean;

    invoke-static {p0, p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/16 p1, 0x1f

    if-eqz p0, :cond_36

    const/16 p0, 0x1f

    goto :goto_37

    :cond_36
    const/4 p0, 0x6

    :goto_37
    if-eq p0, p1, :cond_3a

    goto :goto_45

    :cond_3a
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    add-int/lit8 p0, p0, 0x67

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    rem-int/lit8 p0, p0, 0x2

    return v1

    :cond_45
    :goto_45
    return v2

    :cond_46
    invoke-interface {p0}, Ljava/util/List;->size()I

    const/4 p0, 0x0

    :try_start_4a
    throw p0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_4b

    :catchall_4b
    move-exception p0

    throw p0
.end method

.method private static e([II)Ljava/lang/String;
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

    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/cs;->h:[I

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

.method static synthetic f(Ljava/util/List;[Ljava/lang/Object;)Ljava/util/List;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x34

    if-eqz v0, :cond_11

    const/16 v0, 0x34

    goto :goto_13

    :cond_11
    const/16 v0, 0xa

    :goto_13
    invoke-static {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cs;->h(Ljava/util/List;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    if-eq v0, v1, :cond_1a

    goto :goto_1e

    :cond_1a
    const/16 p1, 0x29

    :try_start_1c
    div-int/lit8 p1, p1, 0x0
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_29

    :goto_1e
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    add-int/lit8 p1, p1, 0x49

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0

    :catchall_29
    move-exception p0

    throw p0
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

    sget-object v8, Lcom/ironsource/adqualitysdk/sdk/i/cs;->i:[C

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

.method private static varargs h(Ljava/util/List;[Ljava/lang/Object;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_f

    const/4 v2, 0x0

    goto :goto_10

    :cond_f
    const/4 v2, 0x1

    :goto_10
    if-eq v2, v1, :cond_2a

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    add-int/lit8 v2, v2, 0x4d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 p1, 0x1

    :goto_20
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-ne p1, v1, :cond_26

    goto :goto_2a

    :cond_26
    const/4 p0, 0x0

    :try_start_27
    throw p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception p0

    throw p0

    :cond_2a
    :goto_2a
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    add-int/lit8 p0, p0, 0x45

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    rem-int/lit8 p0, p0, 0x2

    return-object v0
.end method

.method public static ﬤ(Ljava/util/List;)Landroid/webkit/WebViewClient;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/webkit/WebViewClient;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    const-class v0, Landroid/webkit/WebView;

    invoke-static {p0, v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/webkit/WebView;

    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->ﾇ(Landroid/webkit/WebView;)Landroid/webkit/WebViewClient;

    move-result-object p0

    return-object p0
.end method

.method public static טּ(Ljava/util/List;)Landroid/webkit/WebChromeClient;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/webkit/WebChromeClient;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    const-class v0, Landroid/webkit/WebView;

    invoke-static {p0, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/webkit/WebView;

    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->ｋ(Landroid/webkit/WebView;)Landroid/webkit/WebChromeClient;

    move-result-object p0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method

.method public static ﭖ(Ljava/util/List;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    rem-int/lit8 v0, v0, 0x2

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/gy;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ironsource/adqualitysdk/sdk/i/gy;

    const/16 v0, 0x46

    if-eqz p0, :cond_1a

    const/16 v2, 0x46

    goto :goto_1c

    :cond_1a
    const/16 v2, 0x57

    :goto_1c
    if-eq v2, v0, :cond_3b

    const/4 p0, 0x0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0x27

    if-eqz v0, :cond_30

    const/16 v0, 0x2c

    goto :goto_32

    :cond_30
    const/16 v0, 0x27

    :goto_32
    if-eq v0, v2, :cond_3a

    const/16 v0, 0x34

    :try_start_36
    div-int/2addr v0, v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_38

    return-object p0

    :catchall_38
    move-exception p0

    throw p0

    :cond_3a
    return-object p0

    :cond_3b
    invoke-interface {p0}, Lcom/ironsource/adqualitysdk/sdk/i/gy;->ﾇ()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static ﭴ(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-class v0, Ljava/lang/Object;

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    add-int/lit8 v1, v1, 0x35

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_12

    const/4 v1, 0x0

    goto :goto_13

    :cond_12
    const/4 v1, 0x1

    :goto_13
    invoke-static {p0, v3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/jv;->ﾒ(Ljava/lang/Object;)Z

    move-result p0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    rem-int/lit8 v0, v0, 0x2

    return p0
.end method

.method public static ﭸ(Ljava/util/List;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    rem-int/lit8 v0, v0, 0x2

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/jn;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ironsource/adqualitysdk/sdk/i/jn;

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/jn;->ﾒ()V

    const/4 p0, 0x0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_26

    const/4 v0, 0x0

    goto :goto_27

    :cond_26
    const/4 v0, 0x1

    :goto_27
    if-eq v0, v2, :cond_2f

    const/16 v0, 0x4d

    :try_start_2b
    div-int/2addr v0, v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2d

    return-object p0

    :catchall_2d
    move-exception p0

    throw p0

    :cond_2f
    return-object p0
.end method

.method public static ﮉ(Ljava/util/List;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/jn;

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    add-int/lit8 v1, v1, 0x41

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x38

    if-nez v1, :cond_13

    const/16 v1, 0x38

    goto :goto_14

    :cond_13
    const/4 v1, 0x6

    :goto_14
    if-eq v1, v2, :cond_21

    const/4 v1, 0x0

    :goto_17
    invoke-static {p0, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ironsource/adqualitysdk/sdk/i/jn;

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/jn;->ﻛ()V

    goto :goto_23

    :cond_21
    const/4 v1, 0x1

    goto :goto_17

    :goto_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public static ﮌ(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/jn;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/ironsource/adqualitysdk/sdk/i/jn;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    rem-int/lit8 v0, v0, 0x2

    const-class v0, Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/webkit/WebView;

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_3a

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    rsub-int/lit8 v2, v6, 0xa

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cs;->e([II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jn;->ﻛ(Landroid/webkit/WebView;Ljava/lang/String;Z)Lcom/ironsource/adqualitysdk/sdk/i/jn;

    move-result-object p0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0

    :array_3a
    .array-data 4
        -0x26a8c67f
        -0x65c9637b
        -0x43d2dfbb
        -0xcd517de
        -0x7807bca9
        0x6c09a20b
    .end array-data
.end method

.method public static ﱡ(Ljava/util/List;)Landroid/view/View$OnTouchListener;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/view/View$OnTouchListener;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    rem-int/lit8 v0, v0, 0x2

    const-class v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/jp;->ﻛ(Landroid/view/View;)Landroid/view/View$OnTouchListener;

    move-result-object p0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    if-eq v0, v2, :cond_2a

    return-object p0

    :cond_2a
    const/16 v0, 0x4a

    :try_start_2c
    div-int/2addr v0, v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2e

    return-object p0

    :catchall_2e
    move-exception p0

    throw p0
.end method

.method public static ﻐ(Ljava/util/List;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    const-class v1, Lcom/ironsource/adqualitysdk/sdk/i/ij;

    invoke-static {p0, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ironsource/adqualitysdk/sdk/i/ij;

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/iy;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/iy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/iy;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ij;)V

    const/4 p0, 0x0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method

.method public static ｋ(Ljava/util/List;)Landroid/view/View$OnClickListener;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/view/View$OnClickListener;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x50

    if-nez v0, :cond_11

    const/16 v0, 0x2d

    goto :goto_13

    :cond_11
    const/16 v0, 0x50

    :goto_13
    const/4 v2, 0x0

    const-class v0, Landroid/view/View;

    invoke-static {p0, v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/jp;->ｋ(Landroid/view/View;)Landroid/view/View$OnClickListener;

    move-result-object p0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method

.method public static ﾒ(Ljava/util/List;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    const-class v1, Lcom/ironsource/adqualitysdk/sdk/i/ij;

    invoke-static {p0, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ironsource/adqualitysdk/sdk/i/ij;

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/iy;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/iy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/iy;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/ij;)V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    add-int/lit8 p0, p0, 0x43

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    rem-int/lit8 p0, p0, 0x2

    const/16 v0, 0x17

    if-nez p0, :cond_2b

    const/16 p0, 0x17

    goto :goto_2d

    :cond_2b
    const/16 p0, 0x27

    :goto_2d
    const/4 v1, 0x0

    if-eq p0, v0, :cond_31

    return-object v1

    :cond_31
    :try_start_31
    throw v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception p0

    throw p0
.end method


# virtual methods
.method public final ﮐ(Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/dr;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/adqualitysdk/sdk/i/cj;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ironsource/adqualitysdk/sdk/i/dr;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    const-class v2, Lcom/ironsource/adqualitysdk/sdk/i/dn;

    invoke-static {p2, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/ironsource/adqualitysdk/sdk/i/dn;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->c(Ljava/util/List;I)Ljava/util/List;

    move-result-object v4

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cs;->d(Ljava/util/List;I)Z

    move-result v5

    new-instance p2, Lcom/ironsource/adqualitysdk/sdk/i/cs$j;

    move-object v2, p2

    move-object v3, p0

    move-object v7, p3

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/ironsource/adqualitysdk/sdk/i/cs$j;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/cs;Ljava/util/List;ZLcom/ironsource/adqualitysdk/sdk/i/dn;Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1e} :catch_36

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    add-int/lit8 p1, p1, 0x5

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    rem-int/2addr p1, v0

    const/16 p3, 0x56

    if-eqz p1, :cond_2e

    const/16 p1, 0x56

    goto :goto_30

    :cond_2e
    const/16 p1, 0x35

    :goto_30
    if-eq p1, p3, :cond_33

    return-object p2

    :cond_33
    :try_start_33
    throw v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_34

    :catchall_34
    move-exception p1

    throw p1

    :catch_36
    move-exception p2

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﱡ()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x14

    new-array p3, p3, [I

    fill-array-data p3, :array_56

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x25

    invoke-static {p3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cs;->e([II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cn;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :array_56
    .array-data 4
        0x594db24c
        -0x626f6312
        0x1b4b9d09
        0x384df016
        0x7fcadc42
        0x73992a42
        -0x637c2153
        0x77621d3e
        0x5aad194d
        0x660e01de
        0x3d49658
        -0x67939a20
        -0x405ef4ec
        -0x37546169
        0x606f1d43    # 6.8920006E19f
        0x6f101dc8
        -0x71ea4402
        -0x27ff1e32
        -0x9bf3ca1
        -0x251f98
    .end array-data
.end method

.method public final ﮐ(Ljava/util/List;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/gz$e;

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    add-int/lit8 v1, v1, 0x55

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    if-eq v1, v4, :cond_2d

    const-class v1, Landroid/media/MediaPlayer;

    invoke-static {p1, v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    invoke-static {p1, v4, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/gz$e;

    invoke-static {p1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cs;->d(Ljava/util/List;I)Z

    move-result p1

    if-eqz p1, :cond_2a

    const/4 v3, 0x1

    :cond_2a
    if-eqz v3, :cond_46

    goto :goto_42

    :cond_2d
    const-class v1, Landroid/media/MediaPlayer;

    invoke-static {p1, v4, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    invoke-static {p1, v3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/gz$e;

    const/4 v3, 0x5

    invoke-static {p1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/cs;->d(Ljava/util/List;I)Z

    move-result p1

    if-eqz p1, :cond_46

    :goto_42
    invoke-static {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jp;->ﻐ(Landroid/media/MediaPlayer;Lcom/ironsource/adqualitysdk/sdk/i/gz$e;)V

    goto :goto_4e

    :cond_46
    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/cs$q;

    invoke-direct {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cs$q;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/gz$e;)V

    invoke-static {v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jp;->ﻐ(Landroid/media/MediaPlayer;Lcom/ironsource/adqualitysdk/sdk/i/gz$e;)V

    :goto_4e
    const/4 p1, 0x0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    rem-int/2addr v0, v2

    return-object p1
.end method

.method public final ﱟ(Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/dr;)Ljava/lang/Object;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/adqualitysdk/sdk/i/cj;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ironsource/adqualitysdk/sdk/i/dr;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/dn;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_4
    invoke-static {p2, v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/ironsource/adqualitysdk/sdk/i/dn;

    const/4 v3, 0x1

    invoke-static {p2, v3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/ironsource/adqualitysdk/sdk/i/dn;

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->c(Ljava/util/List;I)Ljava/util/List;

    move-result-object v8

    const/4 v4, 0x3

    invoke-static {p2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cs;->d(Ljava/util/List;I)Z

    move-result v9

    new-instance p2, Lcom/ironsource/adqualitysdk/sdk/i/cs$a;

    move-object v4, p2

    move-object v5, p0

    move-object v10, p3

    move-object v11, p1

    invoke-direct/range {v4 .. v11}, Lcom/ironsource/adqualitysdk/sdk/i/cs$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/cs;Lcom/ironsource/adqualitysdk/sdk/i/dn;Lcom/ironsource/adqualitysdk/sdk/i/dn;Ljava/util/List;ZLcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_26} :catch_38

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    add-int/lit8 p1, p1, 0x19

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_32

    const/4 v2, 0x1

    :cond_32
    if-nez v2, :cond_35

    return-object p2

    :cond_35
    :try_start_35
    throw v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_36

    :catchall_36
    move-exception p1

    throw p1

    :catch_38
    move-exception p2

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﱡ()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x16

    new-array p3, p3, [I

    fill-array-data p3, :array_58

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x2a

    invoke-static {p3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cs;->e([II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cn;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :array_58
    .array-data 4
        0x594db24c
        -0x626f6312
        0x1b4b9d09
        0x384df016
        0x7fcadc42
        0x73992a42
        -0x637c2153
        0x77621d3e
        -0x50155419
        0x5308ef98
        -0x536b9b0d
        -0x54a9d025
        0x625020dd
        0x49727793
        0x63991364
        0x4bf0ef98    # 3.1579952E7f
        -0x2696be67
        0x72cac85f
        0x458e4bb4
        -0x1f14df49
        0x7fab5d3a
        -0x1e2fcfd0
    .end array-data
.end method

.method public final ﱟ(Ljava/util/List;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    const-class v1, Landroid/media/MediaPlayer;

    invoke-static {p1, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    const-class v2, Lcom/ironsource/adqualitysdk/sdk/i/gx$d;

    invoke-static {p1, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/gx$d;

    const/4 v2, 0x2

    invoke-static {p1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cs;->d(Ljava/util/List;I)Z

    move-result p1

    const/16 v3, 0x4c

    if-eqz p1, :cond_1e

    const/16 p1, 0xf

    goto :goto_20

    :cond_1e
    const/16 p1, 0x4c

    :goto_20
    if-eq p1, v3, :cond_38

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    add-int/lit8 p1, p1, 0x7

    rem-int/lit16 v3, p1, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    rem-int/2addr p1, v2

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jp;->ﾇ(Landroid/media/MediaPlayer;Lcom/ironsource/adqualitysdk/sdk/i/gx$d;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    add-int/lit8 p1, p1, 0x31

    :goto_32
    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    rem-int/2addr p1, v2

    goto :goto_45

    :cond_38
    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/cs$m;

    invoke-direct {p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cs$m;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/gx$d;)V

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jp;->ﾇ(Landroid/media/MediaPlayer;Lcom/ironsource/adqualitysdk/sdk/i/gx$d;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    add-int/lit8 p1, p1, 0x23

    goto :goto_32

    :goto_45
    const/4 p1, 0x0

    return-object p1
.end method

.method public final ﱡ(Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/dr;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/adqualitysdk/sdk/i/cj;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ironsource/adqualitysdk/sdk/i/dr;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    const-class v1, Lcom/ironsource/adqualitysdk/sdk/i/dn;

    invoke-static {p2, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/ironsource/adqualitysdk/sdk/i/dn;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->c(Ljava/util/List;I)Ljava/util/List;

    move-result-object v6

    new-instance p2, Lcom/ironsource/adqualitysdk/sdk/i/cs$i;

    move-object v1, p2

    move-object v2, p0

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/adqualitysdk/sdk/i/cs$i;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/cs;Lcom/ironsource/adqualitysdk/sdk/i/dn;Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_23

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    add-int/lit8 p1, p1, 0x49

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    rem-int/lit8 p1, p1, 0x2

    return-object p2

    :catch_23
    move-exception p2

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﱡ()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x18

    new-array p3, p3, [I

    fill-array-data p3, :array_44

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    rsub-int/lit8 v0, v0, 0x2e

    invoke-static {p3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cs;->e([II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cn;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1

    :array_44
    .array-data 4
        0x594db24c
        -0x626f6312
        0x1b4b9d09
        0x384df016
        0x7fcadc42
        0x73992a42
        0x38c10c8d
        0xcea6703
        -0x402405bf
        0xa23571c
        0x114b9190
        -0x6f2daa32
        0x4e2ec1f2    # 7.329865E8f
        0x93ef54d
        0x6ad789bd
        0xe075ecf
        0x4b654ffd    # 1.5028221E7f
        0x6f229eb5
        0xa1a5e41
        -0x679eeee5
        0x458e4bb4
        -0x1f14df49
        0x7fab5d3a
        -0x1e2fcfd0
    .end array-data
.end method

.method public final ﺙ(Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/dr;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/adqualitysdk/sdk/i/cj;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ironsource/adqualitysdk/sdk/i/dr;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    const-class v1, Lcom/ironsource/adqualitysdk/sdk/i/dn;

    invoke-static {p2, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/ironsource/adqualitysdk/sdk/i/dn;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->c(Ljava/util/List;I)Ljava/util/List;

    move-result-object v7

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cs;->d(Ljava/util/List;I)Z

    move-result v3

    new-instance p2, Lcom/ironsource/adqualitysdk/sdk/i/cs$p;

    move-object v1, p2

    move-object v2, p0

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/ironsource/adqualitysdk/sdk/i/cs$p;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/cs;ZLcom/ironsource/adqualitysdk/sdk/i/dn;Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_27

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    add-int/lit8 p1, p1, 0x1d

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    rem-int/2addr p1, v0

    return-object p2

    :catch_27
    move-exception p2

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﱡ()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x10

    new-array v0, p3, [I

    fill-array-data v0, :array_48

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v1

    shr-int/lit8 p3, v1, 0x10

    rsub-int/lit8 p3, p3, 0x20

    invoke-static {v0, p3}, Lcom/ironsource/adqualitysdk/sdk/i/cs;->e([II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cn;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1

    :array_48
    .array-data 4
        0x594db24c
        -0x626f6312
        0x1b4b9d09
        0x384df016
        0x7fcadc42
        0x73992a42
        -0x2112f2f9
        -0x12a0b38b
        -0x6327655a
        -0x6399bec
        -0x55ddb2a1
        0x35e5e3f0
        0x4b587f77    # 1.4188407E7f
        0x41f55d1c
        0x4d7dbe2c    # 2.6606867E8f
        0x18884566
    .end array-data
.end method

.method public final ﺙ(Ljava/util/List;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-class v0, Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    const-class v2, Lcom/ironsource/adqualitysdk/sdk/i/ha$c;

    const/4 v3, 0x1

    invoke-static {p1, v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/adqualitysdk/sdk/i/ha$c;

    const/4 v4, 0x2

    invoke-static {p1, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cs;->d(Ljava/util/List;I)Z

    move-result p1

    if-eqz p1, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x1

    :goto_1b
    if-eqz v1, :cond_2f

    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/cs$b;

    invoke-direct {p1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cs$b;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ha$c;)V

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jp;->ﻛ(Landroid/media/MediaPlayer;Lcom/ironsource/adqualitysdk/sdk/i/ha$c;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    add-int/lit8 p1, p1, 0x2f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    :goto_2d
    rem-int/2addr p1, v4

    goto :goto_44

    :cond_2f
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    add-int/lit8 p1, p1, 0x3d

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    rem-int/2addr p1, v4

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jp;->ﻛ(Landroid/media/MediaPlayer;Lcom/ironsource/adqualitysdk/sdk/i/ha$c;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    add-int/lit8 p1, p1, 0x47

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    goto :goto_2d

    :goto_44
    const/4 p1, 0x0

    return-object p1
.end method

.method public final ﻏ(Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/dr;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/adqualitysdk/sdk/i/cj;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ironsource/adqualitysdk/sdk/i/dr;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    const-class v1, Lcom/ironsource/adqualitysdk/sdk/i/dn;

    invoke-static {p2, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/ironsource/adqualitysdk/sdk/i/dn;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->c(Ljava/util/List;I)Ljava/util/List;

    move-result-object v6

    new-instance p2, Lcom/ironsource/adqualitysdk/sdk/i/cs$h;

    move-object v1, p2

    move-object v2, p0

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/adqualitysdk/sdk/i/cs$h;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/cs;Lcom/ironsource/adqualitysdk/sdk/i/dn;Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_23

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    add-int/lit8 p1, p1, 0x71

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    rem-int/lit8 p1, p1, 0x2

    return-object p2

    :catch_23
    move-exception p2

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﱡ()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x18

    new-array p3, p3, [I

    fill-array-data p3, :array_44

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x30

    invoke-static {p3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cs;->e([II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cn;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1

    :array_44
    .array-data 4
        0x594db24c
        -0x626f6312
        0x1b4b9d09
        0x384df016
        0x7fcadc42
        0x73992a42
        0x38c10c8d
        0xcea6703
        -0x402405bf
        0xa23571c
        0x114b9190
        -0x6f2daa32
        0x4e2ec1f2    # 7.329865E8f
        0x93ef54d
        0x460e5fc3
        -0x4eb94a82
        0x6ad789bd
        0xe075ecf
        -0x691a0961
        0x1ce4f623
        -0x33824d5f    # -6.6505348E7f
        0x4901ade3
        -0x47488f58
        -0x2cac612e
    .end array-data
.end method

.method public final ﻏ(Ljava/util/List;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-class v0, Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    const-class v2, Lcom/ironsource/adqualitysdk/sdk/i/he$a;

    const/4 v3, 0x1

    invoke-static {p1, v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/adqualitysdk/sdk/i/he$a;

    const/4 v4, 0x2

    invoke-static {p1, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cs;->d(Ljava/util/List;I)Z

    move-result p1

    const/4 v5, 0x4

    if-eqz p1, :cond_1c

    const/4 p1, 0x4

    goto :goto_1e

    :cond_1c
    const/16 p1, 0x50

    :goto_1e
    if-eq p1, v5, :cond_29

    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/cs$l;

    invoke-direct {p1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cs$l;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/he$a;)V

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jp;->ﻐ(Landroid/media/MediaPlayer;Lcom/ironsource/adqualitysdk/sdk/i/he$a;)V

    goto :goto_35

    :cond_29
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    add-int/lit8 p1, p1, 0x31

    rem-int/lit16 v5, p1, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    rem-int/2addr p1, v4

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jp;->ﻐ(Landroid/media/MediaPlayer;Lcom/ironsource/adqualitysdk/sdk/i/he$a;)V

    :goto_35
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    add-int/lit8 p1, p1, 0x1f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    rem-int/2addr p1, v4

    if-nez p1, :cond_41

    goto :goto_42

    :cond_41
    const/4 v1, 0x1

    :goto_42
    const/4 p1, 0x0

    if-eqz v1, :cond_46

    return-object p1

    :cond_46
    :try_start_46
    throw p1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_47

    :catchall_47
    move-exception p1

    throw p1
.end method

.method public final ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/dr;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/adqualitysdk/sdk/i/cj;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ironsource/adqualitysdk/sdk/i/dr;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    const-class v1, Lcom/ironsource/adqualitysdk/sdk/i/dn;

    invoke-static {p2, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/ironsource/adqualitysdk/sdk/i/dn;

    const/4 v1, 0x1

    invoke-static {p2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->c(Ljava/util/List;I)Ljava/util/List;

    move-result-object v7

    new-instance p2, Lcom/ironsource/adqualitysdk/sdk/i/cs$f;

    move-object v2, p2

    move-object v3, p0

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/ironsource/adqualitysdk/sdk/i/cs$f;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/cs;Lcom/ironsource/adqualitysdk/sdk/i/dn;Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_23

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    add-int/lit8 p1, p1, 0x27

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    rem-int/lit8 p1, p1, 0x2

    return-object p2

    :catch_23
    move-exception p2

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﱡ()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x12

    new-array p3, p3, [I

    fill-array-data p3, :array_44

    const-string v1, ""

    invoke-static {v1, v0}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x22

    invoke-static {p3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cs;->e([II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cn;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1

    :array_44
    .array-data 4
        0x594db24c
        -0x626f6312
        0x1b4b9d09
        0x384df016
        0x7fcadc42
        0x73992a42
        0x7a3172c
        0xf535f46
        -0x6f67a5f9
        0x187afd
        0x677403ef
        -0x1e9971c8
        -0x1fdd1577
        0x7cf7d828
        0x458e4bb4
        -0x1f14df49
        0x7fab5d3a
        -0x1e2fcfd0
    .end array-data
.end method

.method public final ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/dr;)Lcom/ironsource/adqualitysdk/sdk/i/ij;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/adqualitysdk/sdk/i/cj;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ironsource/adqualitysdk/sdk/i/dr;",
            ")",
            "Lcom/ironsource/adqualitysdk/sdk/i/ij;"
        }
    .end annotation

    const/4 v0, 0x0

    const-class v1, Lcom/ironsource/adqualitysdk/sdk/i/dn;

    invoke-static {p2, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/dn;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xf

    const/4 v4, 0x1

    if-le v2, v4, :cond_1a

    const/16 v2, 0xf

    goto :goto_1c

    :cond_1a
    const/16 v2, 0x42

    :goto_1c
    if-eq v2, v3, :cond_1f

    goto :goto_3e

    :cond_1f
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    add-int/lit8 v2, v2, 0x7

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    rem-int/lit8 v2, v2, 0x2

    const-class v2, Ljava/util/List;

    invoke-static {p2, v4, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    add-int/lit8 p2, p2, 0x1f

    rem-int/lit16 v2, p2, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    rem-int/lit8 p2, p2, 0x2

    :goto_3e
    if-eqz v0, :cond_46

    new-instance p2, Lcom/ironsource/adqualitysdk/sdk/i/cs$k;

    invoke-direct {p2, v1, v0, p3, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cs$k;-><init>(Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/dn;Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)V

    return-object p2

    :cond_46
    const/4 p1, 0x0

    return-object p1
.end method

.method public final ﻛ(Ljava/util/List;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v0, 0x0

    const-class v2, Landroid/view/View;

    invoke-static {p1, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v2, 0x1

    const-class v3, Lcom/ironsource/adqualitysdk/sdk/i/hb$a;

    invoke-static {p1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/adqualitysdk/sdk/i/hb$a;

    invoke-static {p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cs;->d(Ljava/util/List;I)Z

    move-result p1

    const/16 v3, 0x16

    if-eqz p1, :cond_27

    const/16 p1, 0x16

    goto :goto_29

    :cond_27
    const/16 p1, 0x4b

    :goto_29
    if-eq p1, v3, :cond_3d

    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/cs$g;

    invoke-direct {p1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cs$g;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/hb$a;)V

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jp;->ﻐ(Landroid/view/View;Lcom/ironsource/adqualitysdk/sdk/i/hb$a;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    add-int/lit8 p1, p1, 0x41

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    rem-int/2addr p1, v1

    goto :goto_40

    :cond_3d
    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jp;->ﻐ(Landroid/view/View;Lcom/ironsource/adqualitysdk/sdk/i/hb$a;)V

    :goto_40
    const/4 p1, 0x0

    return-object p1
.end method

.method public final ｋ(Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/dr;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/adqualitysdk/sdk/i/cj;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ironsource/adqualitysdk/sdk/i/dr;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    const-class v2, Lcom/ironsource/adqualitysdk/sdk/i/dn;

    const/4 v3, 0x0

    invoke-static {p2, v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/ironsource/adqualitysdk/sdk/i/dn;

    invoke-static {p2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->c(Ljava/util/List;I)Ljava/util/List;

    move-result-object v9

    new-instance p2, Lcom/ironsource/adqualitysdk/sdk/i/cs$d;

    move-object v4, p2

    move-object v5, p0

    move-object v7, p3

    move-object v8, p1

    invoke-direct/range {v4 .. v9}, Lcom/ironsource/adqualitysdk/sdk/i/cs$d;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/cs;Lcom/ironsource/adqualitysdk/sdk/i/dn;Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_19} :catch_2c

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    add-int/lit8 p1, p1, 0x25

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_26

    const/4 v1, 0x0

    :cond_26
    if-eqz v1, :cond_29

    return-object p2

    :cond_29
    :try_start_29
    throw v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception p1

    throw p1

    :catch_2c
    move-exception p2

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﱡ()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x4

    new-array p3, p3, [I

    fill-array-data p3, :array_46

    const-string v2, "\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0001"

    invoke-static {v1, p3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cs;->g(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cn;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    nop

    :array_46
    .array-data 4
        0x0
        0x28
        0x6d
        0x1c
    .end array-data
.end method

.method public final ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/adqualitysdk/sdk/i/cj;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const-class v0, Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {p2, v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    const/4 v4, 0x1

    invoke-static {p2, v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v1, :cond_22

    const/4 v5, 0x0

    goto :goto_23

    :cond_22
    const/4 v5, 0x1

    :goto_23
    if-eqz v5, :cond_27

    const/4 v5, 0x0

    goto :goto_33

    :cond_27
    const-class v5, Ljava/lang/Boolean;

    invoke-static {p2, v1, v5}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    :goto_33
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_3b

    goto :goto_3c

    :cond_3b
    const/4 v2, 0x1

    :goto_3c
    if-eqz v2, :cond_43

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    goto :goto_54

    :cond_43
    const-class v2, Ljava/lang/String;

    invoke-static {p2, v7, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    add-int/lit8 v2, v2, 0x69

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    rem-int/2addr v2, v1

    :goto_54
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/cs$o;

    invoke-direct {v1, p0, p2, v5, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cs$o;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/cs;Ljava/lang/String;ZLcom/ironsource/adqualitysdk/sdk/i/cj;)V

    invoke-static {v0, v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jv;->ﻐ(Ljava/lang/Class;Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/jv$a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/dr;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/adqualitysdk/sdk/i/cj;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ironsource/adqualitysdk/sdk/i/dr;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    const-class v1, Lcom/ironsource/adqualitysdk/sdk/i/dn;

    invoke-static {p2, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/ironsource/adqualitysdk/sdk/i/dn;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->c(Ljava/util/List;I)Ljava/util/List;

    move-result-object v6

    new-instance p2, Lcom/ironsource/adqualitysdk/sdk/i/cs$n;

    move-object v1, p2

    move-object v2, p0

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/adqualitysdk/sdk/i/cs$n;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/cs;Lcom/ironsource/adqualitysdk/sdk/i/dn;Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_23

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    add-int/lit8 p1, p1, 0x47

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    rem-int/lit8 p1, p1, 0x2

    return-object p2

    :catch_23
    move-exception p2

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﱡ()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x12

    new-array p3, p3, [I

    fill-array-data p3, :array_44

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    shr-int/lit8 v0, v0, 0x16

    add-int/lit8 v0, v0, 0x22

    invoke-static {p3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cs;->e([II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cn;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1

    :array_44
    .array-data 4
        0x594db24c
        -0x626f6312
        0x1b4b9d09
        0x384df016
        0x7fcadc42
        0x73992a42
        0x7a3172c
        0xf535f46
        -0x6f67a5f9
        0x187afd
        -0x2a368a2
        0x13db627b
        -0xeb6269f
        -0x15e2f317
        0x458e4bb4
        -0x1f14df49
        0x7fab5d3a
        -0x1e2fcfd0
    .end array-data
.end method

.method public final ﾇ(Ljava/util/List;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/hc$c;

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    add-int/lit8 v1, v1, 0x7d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    goto :goto_13

    :cond_12
    const/4 v1, 0x1

    :goto_13
    if-eqz v1, :cond_2a

    const-class v1, Landroid/view/View;

    invoke-static {p1, v4, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {p1, v3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/hc$c;

    invoke-static {p1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cs;->d(Ljava/util/List;I)Z

    move-result p1

    if-eqz p1, :cond_47

    goto :goto_43

    :cond_2a
    const-class v1, Landroid/view/View;

    invoke-static {p1, v4, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {p1, v4, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/hc$c;

    const/4 v5, 0x3

    invoke-static {p1, v5}, Lcom/ironsource/adqualitysdk/sdk/i/cs;->d(Ljava/util/List;I)Z

    move-result p1

    if-eqz p1, :cond_40

    goto :goto_41

    :cond_40
    const/4 v4, 0x1

    :goto_41
    if-eq v4, v3, :cond_47

    :goto_43
    invoke-static {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jp;->ﻐ(Landroid/view/View;Lcom/ironsource/adqualitysdk/sdk/i/hc$c;)V

    goto :goto_4f

    :cond_47
    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/cs$e;

    invoke-direct {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cs$e;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/hc$c;)V

    invoke-static {v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jp;->ﻐ(Landroid/view/View;Lcom/ironsource/adqualitysdk/sdk/i/hc$c;)V

    :goto_4f
    const/4 p1, 0x0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    rem-int/2addr v0, v2

    return-object p1
.end method

.method public final ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/dr;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/adqualitysdk/sdk/i/cj;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ironsource/adqualitysdk/sdk/i/dr;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    const-class v2, Lcom/ironsource/adqualitysdk/sdk/i/dn;

    invoke-static {p2, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/ironsource/adqualitysdk/sdk/i/dn;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->c(Ljava/util/List;I)Ljava/util/List;

    move-result-object v7

    new-instance p2, Lcom/ironsource/adqualitysdk/sdk/i/cs$c;

    move-object v2, p2

    move-object v3, p0

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/ironsource/adqualitysdk/sdk/i/cs$c;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/cs;Lcom/ironsource/adqualitysdk/sdk/i/dn;Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_19} :catch_32

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cs;->k:I

    add-int/lit8 p1, p1, 0x49

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lcom/ironsource/adqualitysdk/sdk/i/cs;->j:I

    rem-int/lit8 p1, p1, 0x2

    const/16 p3, 0x45

    if-eqz p1, :cond_2a

    const/16 p1, 0x45

    goto :goto_2c

    :cond_2a
    const/16 p1, 0x35

    :goto_2c
    if-eq p1, p3, :cond_2f

    return-object p2

    :cond_2f
    :try_start_2f
    throw v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p1

    throw p1

    :catch_32
    move-exception p2

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﱡ()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x16

    new-array p3, p3, [I

    fill-array-data p3, :array_54

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    rsub-int/lit8 v0, v0, 0x2d

    invoke-static {p3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cs;->e([II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cn;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :array_54
    .array-data 4
        0x594db24c
        -0x626f6312
        0x1b4b9d09
        0x384df016
        0x7fcadc42
        0x73992a42
        0x38c10c8d
        0xcea6703
        -0x402405bf
        0xa23571c
        0x114b9190
        -0x6f2daa32
        0x4e2ec1f2    # 7.329865E8f
        0x93ef54d
        -0x1c14bf6f
        -0x1ec0215c
        0x4b35971
        0x7b31b711
        -0x33824d5f    # -6.6505348E7f
        0x4901ade3
        -0x47488f58
        -0x2cac612e
    .end array-data
.end method
