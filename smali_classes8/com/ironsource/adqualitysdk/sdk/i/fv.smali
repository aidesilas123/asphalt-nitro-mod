###### Class com.json.adqualitysdk.sdk.i.fv (com.ironsource.adqualitysdk.sdk.i.fv)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/fv;
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

    const/16 v0, 0x3a

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/fv;->a:[C

    return-void

    :array_a
    .array-data 2
        0x37s
        0x75s
        0x7as
        0x59s
        0x53s
        0x74s
        0x7cs
        0x7as
        0x79s
        0x7es
        0x7bs
        0x77s
        0x5as
        0x5cs
        0x77s
        0x73s
        0x58s
        0x43s
        0x64s
        0x7cs
        0x6as
        0x69s
        0x7es
        0x7bs
        0x77s
        0x6cs
        0x67s
        0x73s
        0x37s
        0x6es
        0x69s
        0x68s
        0x6bs
        0x6fs
        0x72s
        0x6ds
        0x6es
        0x70s
        0x68s
        0x48s
        0x51s
        0x72s
        0x70s
        0x71s
        0x6bs
        0x64s
        0x69s
        0x2fs
        0x5fs
        0x63s
        0x38s
        0x68s
        0x67s
        0x6bs
        0x6fs
        0x72s
        0x6ds
        0x6es
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

    sget-object v8, Lcom/ironsource/adqualitysdk/sdk/i/fv;->a:[C

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
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/fv;->b:I

    add-int/lit8 v1, v0, 0x69

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/fv;->c:I

    rem-int/lit8 v1, v1, 0x2

    const-class v1, Lcom/applovin/sdk/AppLovinSdk;

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/fv;->c:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_18

    const/4 v0, 0x0

    goto :goto_19

    :cond_18
    const/4 v0, 0x1

    :goto_19
    if-eqz v0, :cond_1c

    return-object v1

    :cond_1c
    const/4 v0, 0x0

    :try_start_1d
    throw v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception v0

    throw v0
.end method

.method public final ﻛ()Ljava/lang/String;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/fv;->b:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/fv;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_26

    const-string v2, "\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001"

    invoke-static {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/fv;->a(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/fv;->c:I

    add-int/lit8 v1, v1, 0x79

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/fv;->b:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :array_26
    .array-data 4
        0x0
        0x1c
        0xc
        0x0
    .end array-data
.end method

.method public final ｋ()Lcom/ironsource/adqualitysdk/sdk/i/iw$e;
    .registers 6

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/iw$e;

    const/4 v1, 0x1

    const/4 v2, 0x4

    new-array v3, v2, [I

    fill-array-data v3, :array_32

    const-string v4, "\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0001"

    invoke-static {v1, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/fv;->a(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v2, v2, [I

    fill-array-data v2, :array_3e

    const-string v4, "\u0000\u0000\u0001"

    invoke-static {v3, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/fv;->a(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/iw$e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/fv;->c:I

    add-int/lit8 v1, v1, 0x77

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/fv;->b:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    nop

    :array_32
    .array-data 4
        0x1c
        0x13
        0x0
        0x3
    .end array-data

    :array_3e
    .array-data 4
        0x2f
        0x3
        0x30
        0x2
    .end array-data
.end method

.method public final ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/az;
    .registers 5

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/be;

    const/4 v1, 0x1

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_22

    const-string v3, "\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0000"

    invoke-static {v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/fv;->a(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/be;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/fv;->b:I

    add-int/lit8 v1, v1, 0x11

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/fv;->c:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    nop

    :array_22
    .array-data 4
        0x32
        0x8
        0x0
        0x2
    .end array-data
.end method

.method public final ﾒ()Ljava/lang/String;
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/fv;->b:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/fv;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    const-string v2, "\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0000"

    const/4 v3, 0x4

    if-eq v0, v1, :cond_23

    new-array v0, v3, [I

    fill-array-data v0, :array_38

    invoke-static {v1, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/fv;->a(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1e
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :cond_23
    new-array v0, v3, [I

    fill-array-data v0, :array_44

    invoke-static {v1, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/fv;->a(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    :goto_2d
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/fv;->c:I

    add-int/lit8 v1, v1, 0x1d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/fv;->b:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :array_38
    .array-data 4
        0x32
        0x8
        0x0
        0x2
    .end array-data

    :array_44
    .array-data 4
        0x32
        0x8
        0x0
        0x2
    .end array-data
.end method
