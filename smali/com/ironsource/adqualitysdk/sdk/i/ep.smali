###### Class com.json.adqualitysdk.sdk.i.ep (com.ironsource.adqualitysdk.sdk.i.ep)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ep;
.super Lcom/ironsource/adqualitysdk/sdk/i/eg;
.source ""


# static fields
.field private static j:C = '\u010a'

.field private static k:C = '\u0b54'

.field private static l:C = '\u88f4'

.field private static m:C = '\u9743'

.field private static n:I = 0x0

.field private static o:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/do;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/eg;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    return-void
.end method

.method private static d(Ljava/lang/String;I)Ljava/lang/String;
    .registers 13

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_6
    check-cast p0, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/o;->ﾇ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    array-length v1, p0

    new-array v1, v1, [C

    const/4 v2, 0x0

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/o;->ﻛ:I

    const/4 v3, 0x2

    new-array v3, v3, [C

    :goto_14
    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/o;->ﻛ:I

    array-length v5, p0

    if-ge v4, v5, :cond_76

    aget-char v5, p0, v4

    aput-char v5, v3, v2

    add-int/lit8 v4, v4, 0x1

    aget-char v4, p0, v4

    const/4 v5, 0x1

    aput-char v4, v3, v5

    const v4, 0xe370

    const/4 v6, 0x0

    :goto_28
    const/16 v7, 0x10

    if-ge v6, v7, :cond_65

    aget-char v7, v3, v5

    aget-char v8, v3, v2

    add-int/2addr v8, v4

    aget-char v9, v3, v2

    shl-int/lit8 v9, v9, 0x4

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/ep;->l:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    aget-char v9, v3, v2

    ushr-int/lit8 v9, v9, 0x5

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/ep;->m:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    sub-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v5

    aget-char v7, v3, v2

    aget-char v8, v3, v5

    add-int/2addr v8, v4

    aget-char v9, v3, v5

    shl-int/lit8 v9, v9, 0x4

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/ep;->j:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    aget-char v9, v3, v5

    ushr-int/lit8 v9, v9, 0x5

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/ep;->k:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    sub-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    const v7, 0x9e37

    sub-int/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    :cond_65
    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/o;->ﻛ:I

    aget-char v6, v3, v2

    aput-char v6, v1, v4

    add-int/lit8 v6, v4, 0x1

    aget-char v5, v3, v5

    aput-char v5, v1, v6

    add-int/lit8 v4, v4, 0x2

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/o;->ﻛ:I

    goto :goto_14

    :cond_76
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_b .. :try_end_7c} :catchall_7d

    return-object p0

    :catchall_7d
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final ﻐ(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ep;->n:I

    const/16 v1, 0x57

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ep;->o:I

    rem-int/lit8 v0, v0, 0x2

    instance-of v0, p1, Ljava/lang/Double;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    if-eq v0, v3, :cond_17

    goto :goto_1b

    :cond_17
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_42

    :goto_1b
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    sub-double/2addr v3, p1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/ep;->n:I

    add-int/lit8 p2, p2, 0x65

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ep;->o:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_37

    const/16 p2, 0x36

    goto :goto_39

    :cond_37
    const/16 p2, 0x57

    :goto_39
    if-eq p2, v1, :cond_41

    const/16 p2, 0x5b

    :try_start_3d
    div-int/2addr p2, v2
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3f

    return-object p1

    :catchall_3f
    move-exception p1

    throw p1

    :cond_41
    return-object p1

    :cond_42
    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_5d

    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_4b

    goto :goto_4c

    :cond_4b
    const/4 v2, 0x1

    :goto_4c
    if-eq v2, v3, :cond_4f

    goto :goto_5d

    :cond_4f
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_5d
    :goto_5d
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final ﾇ()Ljava/lang/String;
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ep;->o:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ep;->n:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x43

    if-eqz v0, :cond_11

    const/16 v0, 0x16

    goto :goto_13

    :cond_11
    const/16 v0, 0x43

    :goto_13
    const/4 v2, 0x0

    const-string v3, "\ucfdd\u9c7f"

    const/4 v4, 0x1

    if-eq v0, v1, :cond_28

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1

    :goto_1f
    invoke-static {v3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ep;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    :cond_28
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    add-int/2addr v0, v4

    goto :goto_1f

    :goto_2e
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ep;->o:I

    add-int/lit8 v1, v1, 0x39

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ep;->n:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3b

    goto :goto_3c

    :cond_3b
    const/4 v2, 0x1

    :goto_3c
    if-eqz v2, :cond_3f

    return-object v0

    :cond_3f
    const/4 v0, 0x0

    :try_start_40
    throw v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_41

    :catchall_41
    move-exception v0

    throw v0
.end method
