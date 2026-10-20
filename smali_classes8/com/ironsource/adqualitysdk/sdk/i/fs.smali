###### Class com.json.adqualitysdk.sdk.i.fs (com.ironsource.adqualitysdk.sdk.i.fs)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/fs;
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

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/fs;->a:[I

    return-void

    :array_a
    .array-data 4
        0x488735ae
        -0x63846b8f
        -0x54c18e28
        -0x5db94f11
        0x30bafcc8
        0x1285e3cf
        -0x502fed25
        -0x7c7e5f4b
        -0x3c8ce389
        -0x8832b1f
        -0x82fe1f3
        -0x107becfe    # -8.175E28f
        0x21c78223
        0x643f6b26
        0x5aa31a2a
        0x56d955ca
        0x34e38cf
        0x65de8757
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

    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/fs;->a:[I

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
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/fs;->b:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/fs;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x5d

    if-nez v0, :cond_11

    const/16 v0, 0x31

    goto :goto_13

    :cond_11
    const/16 v0, 0x5d

    :goto_13
    if-ne v0, v1, :cond_18

    const-class v0, Lcom/adcolony/sdk/AdColony;

    return-object v0

    :cond_18
    const-class v0, Lcom/adcolony/sdk/AdColony;

    const/4 v0, 0x0

    :try_start_1b
    throw v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1c

    :catchall_1c
    move-exception v0

    throw v0
.end method

.method public final ﻛ()Ljava/lang/String;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/fs;->c:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/fs;->b:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    const-string v1, ""

    const/16 v2, 0xe

    if-eqz v0, :cond_27

    new-array v0, v2, [I

    fill-array-data v0, :array_3e

    const/16 v2, 0x2c

    invoke-static {v1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v1

    add-int/lit8 v1, v1, 0x3b

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/fs;->a([II)Ljava/lang/String;

    move-result-object v0

    goto :goto_38

    :cond_27
    new-array v0, v2, [I

    fill-array-data v0, :array_5e

    const/16 v2, 0x30

    invoke-static {v1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v1

    add-int/lit8 v1, v1, 0x1a

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/fs;->a([II)Ljava/lang/String;

    move-result-object v0

    :goto_38
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_3e
    .array-data 4
        -0x6179a8d0
        0xed325cd
        0x6e2e195f
        0x47c7c9c
        -0x32b9880b
        -0x38d2ed0d
        0x311a0b1e
        0x7469a5c5
        -0x1dd65aa8
        0x31cc2122
        0x7a867ce7
        0xf0b9dbd
        -0x3bb8db64
        0x4ac4c49d    # 6447694.5f
    .end array-data

    :array_5e
    .array-data 4
        -0x6179a8d0
        0xed325cd
        0x6e2e195f
        0x47c7c9c
        -0x32b9880b
        -0x38d2ed0d
        0x311a0b1e
        0x7469a5c5
        -0x1dd65aa8
        0x31cc2122
        0x7a867ce7
        0xf0b9dbd
        -0x3bb8db64
        0x4ac4c49d    # 6447694.5f
    .end array-data
.end method

.method public final ｋ()Lcom/ironsource/adqualitysdk/sdk/i/iw$e;
    .registers 8

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/iw$e;

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_3e

    const-string v2, ""

    const/16 v3, 0x30

    invoke-static {v2, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x12

    invoke-static {v1, v4}, Lcom/ironsource/adqualitysdk/sdk/i/fs;->a([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    new-array v5, v4, [I

    fill-array-data v5, :array_56

    const/4 v6, 0x0

    invoke-static {v2, v3, v6}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x2

    invoke-static {v5, v2}, Lcom/ironsource/adqualitysdk/sdk/i/fs;->a([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/iw$e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/fs;->b:I

    add-int/lit8 v1, v1, 0x65

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/fs;->c:I

    rem-int/2addr v1, v4

    return-object v0

    nop

    :array_3e
    .array-data 4
        0x4d912ba2    # 3.0444448E8f
        0x5251227b
        -0x518b121a
        0x5de20837
        -0x8db42d6
        0x2fd490ad
        0x18492540
        0x62a67383
        0x37424208
        -0x624d0c68
    .end array-data

    :array_56
    .array-data 4
        -0x5742c436
        0x3898dfbc
    .end array-data
.end method

.method public final ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/az;
    .registers 4

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/bc;

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_26

    const-string v2, ""

    invoke-static {v2, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/fs;->a([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/bc;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/fs;->b:I

    add-int/lit8 v1, v1, 0x25

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/fs;->c:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :array_26
    .array-data 4
        0x6e2e195f
        0x47c7c9c
        -0x32b9880b
        -0x38d2ed0d
    .end array-data
.end method

.method public final ﾒ()Ljava/lang/String;
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/fs;->c:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/fs;->b:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2e

    const/16 v1, 0x30

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x7

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/fs;->a([II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/fs;->c:I

    add-int/lit8 v1, v1, 0xd

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/fs;->b:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :array_2e
    .array-data 4
        0x6e2e195f
        0x47c7c9c
        -0x32b9880b
        -0x38d2ed0d
    .end array-data
.end method
