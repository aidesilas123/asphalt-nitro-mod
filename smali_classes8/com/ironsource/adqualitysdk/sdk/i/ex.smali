###### Class com.json.adqualitysdk.sdk.i.ex (com.ironsource.adqualitysdk.sdk.i.ex)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ex;
.super Lcom/ironsource/adqualitysdk/sdk/i/eg;
.source ""


# static fields
.field private static j:[C = null

.field private static k:I = 0x0

.field private static l:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x15

    aput-char v2, v0, v1

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ex;->j:[C

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/do;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/eg;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    return-void
.end method

.method private static d(Z[ILjava/lang/String;)Ljava/lang/String;
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

    sget-object v8, Lcom/ironsource/adqualitysdk/sdk/i/ex;->j:[C

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
.method public final ﻐ(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .registers 7

    instance-of v0, p1, Ljava/lang/Double;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_57

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ex;->k:I

    add-int/lit8 v2, v0, 0x77

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ex;->l:I

    rem-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_52

    instance-of v2, p2, Ljava/lang/Double;

    if-eqz v2, :cond_1c

    goto :goto_57

    :cond_1c
    instance-of v1, p1, Ljava/lang/Long;

    if-nez v1, :cond_43

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ex;->l:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3e

    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_2f

    goto :goto_43

    :cond_2f
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    mul-int p1, p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_3e
    instance-of p1, p2, Ljava/lang/Long;

    :try_start_40
    throw v3
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_41

    :catchall_41
    move-exception p1

    throw p1

    :cond_43
    :goto_43
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    mul-long v0, v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_52
    instance-of p1, p2, Ljava/lang/Double;

    :try_start_54
    throw v3
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_55

    :catchall_55
    move-exception p1

    throw p1

    :cond_57
    :goto_57
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    mul-double v2, v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/ex;->l:I

    add-int/lit8 p2, p2, 0x69

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ex;->k:I

    rem-int/lit8 p2, p2, 0x2

    const/16 v0, 0x37

    if-eqz p2, :cond_76

    const/16 p2, 0x11

    goto :goto_78

    :cond_76
    const/16 p2, 0x37

    :goto_78
    if-eq p2, v0, :cond_80

    const/16 p2, 0x4f

    :try_start_7c
    div-int/2addr p2, v1
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7e

    return-object p1

    :catchall_7e
    move-exception p1

    throw p1

    :cond_80
    return-object p1
.end method

.method public final ﾇ()Ljava/lang/String;
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ex;->l:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ex;->k:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x12

    if-eqz v0, :cond_11

    const/16 v0, 0x1f

    goto :goto_13

    :cond_11
    const/16 v0, 0x12

    :goto_13
    const-string v2, "\u0000"

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eq v0, v1, :cond_23

    new-array v0, v3, [I

    fill-array-data v0, :array_3c

    invoke-static {v4, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ex;->d(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    :cond_23
    new-array v0, v3, [I

    fill-array-data v0, :array_48

    invoke-static {v4, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ex;->d(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2c
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ex;->l:I

    add-int/lit8 v1, v1, 0x69

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ex;->k:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    nop

    :array_3c
    .array-data 4
        0x0
        0x1
        0x0
        0x1
    .end array-data

    :array_48
    .array-data 4
        0x0
        0x1
        0x0
        0x1
    .end array-data
.end method
