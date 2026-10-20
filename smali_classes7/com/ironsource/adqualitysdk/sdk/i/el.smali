###### Class com.json.adqualitysdk.sdk.i.el (com.ironsource.adqualitysdk.sdk.i.el)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/el;
.super Lcom/ironsource/adqualitysdk/sdk/i/en;
.source ""


# static fields
.field private static j:J = 0x0L

.field private static k:I = 0x0

.field private static l:C = '\u4d62'

.field private static m:I = 0x0

.field private static n:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/do;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/en;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    return-void
.end method

.method private static g(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;
    .registers 11

    if-eqz p4, :cond_6

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    :cond_6
    check-cast p4, [C

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_e
    check-cast p1, [C

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_16
    check-cast p0, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/j;->ﻐ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1b
    invoke-virtual {p0}, [C->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    const/4 v1, 0x0

    aget-char v2, p0, v1

    xor-int/2addr p3, v2

    int-to-char p3, p3

    aput-char p3, p0, v1

    const/4 p3, 0x2

    aget-char v2, p1, p3

    int-to-char p2, p2

    add-int/2addr v2, p2

    int-to-char p2, v2

    aput-char p2, p1, p3

    array-length p2, p4

    new-array p3, p2, [C

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/j;->ﻛ:I

    :goto_3b
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/j;->ﻛ:I

    if-ge v1, p2, :cond_80

    add-int/lit8 v2, v1, 0x2

    rem-int/lit8 v2, v2, 0x4

    add-int/lit8 v3, v1, 0x3

    rem-int/lit8 v3, v3, 0x4

    rem-int/lit8 v1, v1, 0x4

    aget-char v1, p0, v1

    mul-int/lit16 v1, v1, 0x7fce

    aget-char v4, p1, v2

    add-int/2addr v1, v4

    const v4, 0xffff

    rem-int/2addr v1, v4

    int-to-char v1, v1

    sput-char v1, Lcom/ironsource/adqualitysdk/sdk/i/j;->ｋ:C

    aget-char v5, p0, v3

    mul-int/lit16 v5, v5, 0x7fce

    aget-char v2, p1, v2

    add-int/2addr v5, v2

    div-int/2addr v5, v4

    int-to-char v2, v5

    aput-char v2, p1, v3

    aput-char v1, p0, v3

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/j;->ﻛ:I

    aget-char v2, p4, v1

    aget-char v3, p0, v3

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/el;->j:J

    xor-long/2addr v2, v4

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/el;->k:I

    int-to-long v4, v4

    xor-long/2addr v2, v4

    sget-char v4, Lcom/ironsource/adqualitysdk/sdk/i/el;->l:C

    int-to-long v4, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/j;->ﻛ:I

    goto :goto_3b

    :cond_80
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p3}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_86
    .catchall {:try_start_1b .. :try_end_86} :catchall_87

    return-object p0

    :catchall_87
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method final d(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/el;->m:I

    add-int/lit8 v1, v0, 0x6d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/el;->n:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1f

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, p2, :cond_12

    const/4 p1, 0x0

    goto :goto_13

    :cond_12
    const/4 p1, 0x1

    :goto_13
    if-eq p1, v2, :cond_16

    return v2

    :cond_16
    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/el;->n:I

    rem-int/lit8 v0, v0, 0x2

    return v1

    :cond_1f
    const/4 p1, 0x0

    :try_start_20
    throw p1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_21

    :catchall_21
    move-exception p1

    throw p1
.end method

.method final e(I)Z
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/el;->n:I

    add-int/lit8 v1, v0, 0x5b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/el;->m:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_30

    const/16 v1, 0x17

    if-nez p1, :cond_13

    const/16 p1, 0x59

    goto :goto_15

    :cond_13
    const/16 p1, 0x17

    :goto_15
    const/4 v2, 0x0

    if-eq p1, v1, :cond_2f

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/el;->m:I

    rem-int/lit8 v0, v0, 0x2

    const/4 p1, 0x1

    if-eqz v0, :cond_25

    const/4 v0, 0x0

    goto :goto_26

    :cond_25
    const/4 v0, 0x1

    :goto_26
    if-eqz v0, :cond_29

    return p1

    :cond_29
    const/16 v0, 0x5c

    :try_start_2b
    div-int/2addr v0, v2
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2d

    return p1

    :catchall_2d
    move-exception p1

    throw p1

    :cond_2f
    return v2

    :cond_30
    const/4 p1, 0x0

    :try_start_31
    throw p1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception p1

    throw p1
.end method

.method final f(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/el;->n:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/el;->m:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/el;->m:I

    add-int/lit8 p2, p2, 0x45

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/el;->n:I

    rem-int/lit8 p2, p2, 0x2

    return p1
.end method

.method public final ﾇ()Ljava/lang/String;
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/el;->n:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/el;->m:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    const/4 v0, 0x1

    :goto_f
    const-string v1, "\u9ab4\u218a"

    const-string v2, ""

    const/4 v3, -0x1

    const-string v4, "\u0000\u0000\u0000\u0000"

    const-string v5, "\u7c4d\ua281\u27ea\ub211"

    if-eqz v0, :cond_28

    invoke-static {v2}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v3, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    add-int/lit16 v0, v0, 0x1127

    goto :goto_36

    :cond_28
    invoke-static {v2}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v0

    div-int/2addr v3, v0

    const/16 v0, 0x51e7

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    div-int/lit8 v2, v2, 0x63

    shl-int/2addr v0, v2

    :goto_36
    int-to-char v0, v0

    invoke-static {v5, v4, v3, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/el;->g(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
