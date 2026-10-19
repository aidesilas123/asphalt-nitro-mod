###### Class com.json.adqualitysdk.sdk.i.aj (com.ironsource.adqualitysdk.sdk.i.aj)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/aj;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:[C = null

.field private static b:I = 0x0

.field private static c:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x69

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/aj;->a:[C

    return-void

    :array_a
    .array-data 2
        0x85s
        0x112s
        0x104s
        0x101s
        0x116s
        0x119s
        0x110s
        0x10ds
        0x10es
        0x10as
        0x10cs
        0x3bs
        0x6ds
        0x6bs
        0x72s
        0x6bs
        0x66s
        0x68s
        0x6es
        0x73s
        0x6cs
        0x6bs
        0x62s
        0x5bs
        0x64s
        0x64s
        0x67s
        0x77s
        0xe8s
        0xeas
        0xecs
        0xe4s
        0xe1s
        0xe1s
        0xd8s
        0xdfs
        0xe8s
        0xe9s
        0xf0s
        0xebs
        0xe5s
        0xe3s
        0xe8s
        0xeds
        0xees
        0x60s
        0xa5s
        0xads
        0xc8s
        0xc3s
        0xc1s
        0xc4s
        0xc4s
        0xc4s
        0xcds
        0xd0s
        0xc7s
        0xbfs
        0xc0s
        0xbfs
        0xc5s
        0xcds
        0xc7s
        0xc4s
        0xc3s
        0xbfs
        0xc6s
        0xcas
        0xaas
        0xb0s
        0xcbs
        0xc3s
        0xc9s
        0xcds
        0xc8s
        0xc6s
        0xc4s
        0xc6s
        0xc8s
        0xc3s
        0xc1s
        0xc4s
        0xc4s
        0xb4s
        0xbds
        0xd0s
        0xc7s
        0xbfs
        0xc0s
        0xbfs
        0xc5s
        0xcds
        0xb7s
        0xb4s
        0xc3s
        0xbfs
        0xc6s
        0xbas
        0x9as
        0xaes
        0xces
        0xc6s
        0xc9s
        0xces
        0xcbs
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

    sget-object v8, Lcom/ironsource/adqualitysdk/sdk/i/aj;->a:[C

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

.method public static ﻐ(Ljava/lang/Object;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .registers 13

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/aj;->b:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/aj;->c:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/16 v2, 0xd

    if-nez v0, :cond_11

    const/16 v0, 0x28

    goto :goto_13

    :cond_11
    const/16 v0, 0xd

    :goto_13
    const-string v3, "\u0000\u0001\u0001\u0000\u0001\u0000\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0000\u0000"

    const/16 v4, 0x10

    const/16 v5, 0xb

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v0, v2, :cond_49

    :try_start_1f
    new-array v0, v6, [I

    aput v5, v0, v9

    aput v4, v0, v8

    aput v9, v0, v1

    aput v7, v0, v7

    invoke-static {v9, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/aj;->a(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v8

    aput-object p2, v2, v8

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->ﻐ(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v9

    aput-object p2, v2, v9

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_72

    :cond_49
    new-array v0, v6, [I

    aput v5, v0, v9

    aput v4, v0, v8

    aput v9, v0, v1

    aput v7, v0, v7

    invoke-static {v9, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/aj;->a(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v9

    aput-object p2, v2, v8

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->ﻐ(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v9

    aput-object p2, v2, v8

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_72
    .catch Ljava/lang/IllegalAccessException; {:try_start_1f .. :try_end_72} :catch_8b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1f .. :try_end_72} :catch_8b

    :goto_72
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/aj;->c:I

    add-int/lit8 p0, p0, 0x47

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/aj;->b:I

    rem-int/2addr p0, v1

    const/16 p1, 0x1e

    if-eqz p0, :cond_82

    const/16 p0, 0x1e

    goto :goto_84

    :cond_82
    const/16 p0, 0x19

    :goto_84
    if-eq p0, p1, :cond_87

    return-void

    :cond_87
    const/4 p0, 0x0

    :try_start_88
    throw p0
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_89

    :catchall_89
    move-exception p0

    throw p0

    :catch_8b
    return-void
.end method

.method public static ｋ(Landroid/content/Context;)Ljava/lang/Object;
    .registers 12

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/aj;->b:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/aj;->c:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    const-string v4, "\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0000"

    const/16 v5, 0xa

    const/4 v6, 0x3

    const/16 v7, 0xa6

    const/16 v8, 0xb

    const/4 v9, 0x4

    const/4 v10, 0x0

    if-eqz v0, :cond_49

    :try_start_1e
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/aj;->ﾒ()Ljava/lang/Class;

    move-result-object v0

    new-array v9, v9, [I

    aput v2, v9, v2

    aput v8, v9, v3

    aput v7, v9, v1

    aput v5, v9, v6

    invoke-static {v2, v9, v4}, Lcom/ironsource/adqualitysdk/sdk/i/aj;->a(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p0, v5, v2

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->ﻐ(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    invoke-virtual {v0, v10, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_73

    :cond_49
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/aj;->ﾒ()Ljava/lang/Class;

    move-result-object v0

    new-array v9, v9, [I

    aput v2, v9, v2

    aput v8, v9, v3

    aput v7, v9, v1

    aput v5, v9, v6

    invoke-static {v3, v9, v4}, Lcom/ironsource/adqualitysdk/sdk/i/aj;->a(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p0, v4, v3

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->ﻐ(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-virtual {v0, v10, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_73
    .catch Ljava/lang/IllegalAccessException; {:try_start_1e .. :try_end_73} :catch_7d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1e .. :try_end_73} :catch_7d

    :goto_73
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/aj;->c:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/aj;->b:I

    rem-int/2addr v0, v1

    return-object p0

    :catch_7d
    return-object v10
.end method

.method public static ﾇ(Ljava/lang/Object;Landroid/content/BroadcastReceiver;)V
    .registers 13

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/aj;->c:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/aj;->b:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/16 v2, 0x36

    if-eqz v0, :cond_11

    const/16 v0, 0x36

    goto :goto_13

    :cond_11
    const/16 v0, 0x13

    :goto_13
    const-string v3, "\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0000\u0001"

    const/4 v4, 0x3

    const/16 v5, 0x7d

    const/16 v6, 0x12

    const/16 v7, 0x1b

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v0, v2, :cond_47

    :try_start_21
    new-array v0, v8, [I

    aput v7, v0, v9

    aput v6, v0, v10

    aput v5, v0, v1

    aput v9, v0, v4

    invoke-static {v10, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/aj;->a(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    new-array v2, v10, [Ljava/lang/Object;

    aput-object p1, v2, v9

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->ﻐ(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v10, [Ljava/lang/Object;

    aput-object p1, v2, v9

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6c

    :cond_47
    new-array v0, v8, [I

    aput v7, v0, v9

    aput v6, v0, v10

    aput v5, v0, v1

    aput v9, v0, v4

    invoke-static {v10, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/aj;->a(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    new-array v2, v9, [Ljava/lang/Object;

    aput-object p1, v2, v10

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->ﻐ(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v10, [Ljava/lang/Object;

    aput-object p1, v2, v10

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6c
    .catch Ljava/lang/IllegalAccessException; {:try_start_21 .. :try_end_6c} :catch_75
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_21 .. :try_end_6c} :catch_75

    :goto_6c
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/aj;->b:I

    add-int/lit8 p0, p0, 0xf

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/aj;->c:I

    rem-int/2addr p0, v1

    :catch_75
    return-void
.end method

.method public static ﾒ()Ljava/lang/Class;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/aj;->b:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/aj;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_2c

    const-string v2, "\u0000\u0001\u0000\u0001\u0000\u0000\u0001\u0001\u0000\u0001\u0001\u0000\u0000\u0001\u0001\u0000\u0001\u0000\u0000\u0001\u0000\u0000\u0001\u0000\u0000\u0000\u0001\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0001\u0001\u0000\u0001\u0001\u0000\u0000\u0001\u0001\u0000\u0001\u0000\u0000\u0001\u0000\u0000\u0001\u0000\u0000\u0000\u0001\u0001\u0000\u0001"

    invoke-static {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/aj;->a(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->ｋ(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/aj;->c:I

    add-int/lit8 v1, v1, 0x1d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/aj;->b:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    nop

    :array_2c
    .array-data 4
        0x2d
        0x3c
        0x5d
        0x20
    .end array-data
.end method
