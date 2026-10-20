###### Class com.json.adqualitysdk.sdk.i.go (com.ironsource.adqualitysdk.sdk.i.go)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/go;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/gd;


# static fields
.field private static a:[I = null

.field private static b:I = 0x0

.field private static c:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/go;->a:[I

    return-void

    :array_a
    .array-data 4
        -0xfda7786
        -0x715cd55f
        -0x82c2804
        0x3022caf4
        0x224ec44c
        -0x50c403ea
        -0x3f163ff6
        -0x4860b460
        0x35afedc2
        -0x7d2c7b62
        -0x7b4bd62a
        -0x52fedb00
        0x19988047
        -0x17114816
        0x16cea57c
        0x27f6e492
        0x4eb032ce
        -0x2530d306
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([II)Ljava/lang/String;
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

    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/go;->a:[I

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


# virtual methods
.method public final ﻐ()Ljava/lang/Class;
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/go;->c:I

    add-int/lit8 v1, v0, 0x67

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/go;->b:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_10

    const/4 v1, 0x0

    goto :goto_11

    :cond_10
    const/4 v1, 0x1

    :goto_11
    const/4 v4, 0x0

    if-eqz v1, :cond_27

    const-class v1, Lcom/qq/e/comm/managers/GDTAdSdk;

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/go;->b:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_21

    const/4 v2, 0x1

    :cond_21
    if-eq v2, v3, :cond_24

    return-object v1

    :cond_24
    :try_start_24
    throw v4
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_25

    :catchall_25
    move-exception v0

    throw v0

    :cond_27
    const-class v0, Lcom/qq/e/comm/managers/GDTAdSdk;

    :try_start_29
    throw v4
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception v0

    throw v0
.end method

.method public final ﻛ()Ljava/lang/String;
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/go;->c:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/go;->b:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_3c

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1f

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/go;->a([II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/go;->b:I

    add-int/lit8 v1, v1, 0x25

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/go;->c:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v3, 0x1

    if-nez v1, :cond_31

    const/4 v1, 0x1

    goto :goto_32

    :cond_31
    const/4 v1, 0x0

    :goto_32
    if-eq v1, v3, :cond_35

    return-object v0

    :cond_35
    const/16 v1, 0x24

    :try_start_37
    div-int/2addr v1, v2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_39

    return-object v0

    :catchall_39
    move-exception v0

    throw v0

    nop

    :array_3c
    .array-data 4
        0x50132428
        0x74537a52    # 6.7019994E31f
        0x7b13e380
        -0x6e9ed54b
        0x725b7b3c
        0x35a87f7c
        -0x4476e9dd
        0x30cb2b55
        -0x589dc0d2
        0x67675c76
        0x458e45c2
        0x25c79fb6
        0x7118a007
        0x630a9bb9
        0x41dd5465
        -0x2283ec6b
    .end array-data
.end method

.method public final ｋ()Lcom/ironsource/adqualitysdk/sdk/i/iw$e;
    .registers 10

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/iw$e;

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_50

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    shr-int/lit8 v2, v2, 0x16

    rsub-int/lit8 v2, v2, 0x12

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/go;->a([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_68

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    add-int/2addr v8, v2

    invoke-static {v3, v8}, Lcom/ironsource/adqualitysdk/sdk/i/go;->a([II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/iw$e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/go;->b:I

    add-int/lit8 v1, v1, 0x43

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/go;->c:I

    rem-int/2addr v1, v2

    const/16 v2, 0x3a

    if-nez v1, :cond_43

    const/16 v1, 0x51

    goto :goto_45

    :cond_43
    const/16 v1, 0x3a

    :goto_45
    if-eq v1, v2, :cond_4e

    const/16 v1, 0x30

    :try_start_49
    div-int/lit8 v1, v1, 0x0
    :try_end_4b
    .catchall {:try_start_49 .. :try_end_4b} :catchall_4c

    return-object v0

    :catchall_4c
    move-exception v0

    throw v0

    :cond_4e
    return-object v0

    nop

    :array_50
    .array-data 4
        0x53a6ece4
        -0x6264ff4e
        0x49ff558e
        0x2e16e31c
        0x55da03c7
        -0x369491b1
        -0x3bac98ee
        0x24427749
        0x62397e81
        0x5fe91044
    .end array-data

    :array_68
    .array-data 4
        -0x157fbbfd
        0x45851357
    .end array-data
.end method

.method public final ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/az;
    .registers 5

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/bx;

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_36

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x7

    invoke-static {v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/go;->a([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/bx;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/go;->c:I

    add-int/lit8 v1, v1, 0x7b

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/go;->b:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v3, 0x1e

    if-eqz v1, :cond_2b

    const/16 v1, 0x2d

    goto :goto_2d

    :cond_2b
    const/16 v1, 0x1e

    :goto_2d
    if-eq v1, v3, :cond_35

    const/16 v1, 0x47

    :try_start_31
    div-int/2addr v1, v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_33

    return-object v0

    :catchall_33
    move-exception v0

    throw v0

    :cond_35
    return-object v0

    :array_36
    .array-data 4
        -0x9a26c45
        -0x3e5088b3
        0x2bfa2917
        -0x1cf470f9
    .end array-data
.end method

.method public final ﾒ()Ljava/lang/String;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/go;->b:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/go;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_38

    const/16 v1, 0x30

    const-string v2, ""

    invoke-static {v2, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x6

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/go;->a([II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/go;->c:I

    add-int/lit8 v1, v1, 0x37

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/go;->b:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_30

    const/4 v1, 0x0

    goto :goto_31

    :cond_30
    const/4 v1, 0x1

    :goto_31
    if-eqz v1, :cond_34

    return-object v0

    :cond_34
    const/4 v0, 0x0

    :try_start_35
    throw v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_36

    :catchall_36
    move-exception v0

    throw v0

    :array_38
    .array-data 4
        -0x9a26c45
        -0x3e5088b3
        0x2bfa2917
        -0x1cf470f9
    .end array-data
.end method
