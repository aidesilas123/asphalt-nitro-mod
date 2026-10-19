###### Class com.json.adqualitysdk.sdk.i.fy (com.ironsource.adqualitysdk.sdk.i.fy)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/fy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/gd;


# static fields
.field private static a:[C = null

.field private static b:I = 0x0

.field private static c:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x31

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/fy;->a:[C

    return-void

    :array_a
    .array-data 2
        0x37s
        0x69s
        0x61s
        0x62s
        0x6ds
        0x6fs
        0x67s
        0x4as
        0x4ds
        0x6es
        0x69s
        0x63s
        0x52s
        0x53s
        0x6ds
        0x6fs
        0x57s
        0x3as
        0x49s
        0x62s
        0x47s
        0x4fs
        0x71s
        0x4as
        0x93s
        0x94s
        0x9es
        0xa0s
        0x98s
        0x7bs
        0x82s
        0xa3s
        0xa1s
        0xa2s
        0x9cs
        0x95s
        0x9as
        0x9fs
        0x9fs
        0x9as
        0x18s
        0x2fs
        0x32s
        0x50s
        0xa8s
        0xaas
        0xa2s
        0xa0s
        0x9ds
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

    sget-object v8, Lcom/ironsource/adqualitysdk/sdk/i/fy;->a:[C

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


# virtual methods
.method public final ﻐ()Ljava/lang/Class;
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/fy;->c:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/fy;->b:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0x2a

    if-eqz v0, :cond_11

    const/16 v0, 0x3c

    goto :goto_13

    :cond_11
    const/16 v0, 0x2a

    :goto_13
    const/4 v3, 0x0

    if-ne v0, v2, :cond_2b

    const-class v0, Lcom/five_corp/ad/FiveAd;

    add-int/lit8 v1, v1, 0x6f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/fy;->c:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_24

    const/4 v1, 0x1

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    if-nez v1, :cond_28

    return-object v0

    :cond_28
    :try_start_28
    throw v3
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception v0

    throw v0

    :cond_2b
    const-class v0, Lcom/five_corp/ad/FiveAd;

    :try_start_2d
    throw v3
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception v0

    throw v0
.end method

.method public final ﻛ()Ljava/lang/String;
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/fy;->b:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/fy;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x4f

    if-nez v0, :cond_11

    const/16 v0, 0x4f

    goto :goto_13

    :cond_11
    const/16 v0, 0x5f

    :goto_13
    const-string v2, "\u0001\u0000\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0000\u0001\u0001\u0000\u0000"

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eq v0, v1, :cond_23

    new-array v0, v3, [I

    fill-array-data v0, :array_32

    invoke-static {v4, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/fy;->a(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    :cond_23
    new-array v0, v3, [I

    fill-array-data v0, :array_3e

    invoke-static {v4, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/fy;->a(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2c
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_32
    .array-data 4
        0x0
        0x17
        0x0
        0xb
    .end array-data

    :array_3e
    .array-data 4
        0x0
        0x17
        0x0
        0xb
    .end array-data
.end method

.method public final ｋ()Lcom/ironsource/adqualitysdk/sdk/i/iw$e;
    .registers 6

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/iw$e;

    const/4 v1, 0x4

    new-array v2, v1, [I

    fill-array-data v2, :array_30

    const/4 v3, 0x1

    const-string v4, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000"

    invoke-static {v3, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/fy;->a(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [I

    fill-array-data v1, :array_3c

    const-string v4, "\u0000\u0000\u0001"

    invoke-static {v3, v1, v4}, Lcom/ironsource/adqualitysdk/sdk/i/fy;->a(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/iw$e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/fy;->b:I

    add-int/lit8 v1, v1, 0x2b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/fy;->c:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :array_30
    .array-data 4
        0x17
        0x11
        0x31
        0x0
    .end array-data

    :array_3c
    .array-data 4
        0x28
        0x3
        0x0
        0x3
    .end array-data
.end method

.method public final ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/az;
    .registers 5

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/bm;

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_2c

    const/4 v2, 0x1

    const-string v3, "\u0000\u0001\u0001\u0001\u0000\u0001"

    invoke-static {v2, v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/fy;->a(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/bm;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/fy;->c:I

    add-int/lit8 v1, v1, 0x17

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/fy;->b:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_23

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    :goto_24
    if-nez v2, :cond_27

    return-object v0

    :cond_27
    const/4 v0, 0x0

    :try_start_28
    throw v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception v0

    throw v0

    nop

    :array_2c
    .array-data 4
        0x2b
        0x6
        0x3b
        0x4
    .end array-data
.end method

.method public final ﾒ()Ljava/lang/String;
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/fy;->c:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/fy;->b:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    const-string v3, "\u0000\u0001\u0001\u0001\u0000\u0001"

    const/4 v4, 0x4

    if-eqz v0, :cond_20

    new-array v0, v4, [I

    fill-array-data v0, :array_2e

    invoke-static {v2, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/fy;->a(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    :cond_20
    new-array v0, v4, [I

    fill-array-data v0, :array_3a

    invoke-static {v1, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/fy;->a(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_29
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_2e
    .array-data 4
        0x2b
        0x6
        0x3b
        0x4
    .end array-data

    :array_3a
    .array-data 4
        0x2b
        0x6
        0x3b
        0x4
    .end array-data
.end method
