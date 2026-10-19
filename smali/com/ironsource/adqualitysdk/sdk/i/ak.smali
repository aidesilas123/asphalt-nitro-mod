###### Class com.json.adqualitysdk.sdk.i.ak (com.ironsource.adqualitysdk.sdk.i.ak)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ak;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:I = 0x10

.field private static b:I = 0x0

.field private static c:I = 0x1


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityDeviceIdType;

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ak;->d:Ljava/lang/String;

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    rsub-int/lit8 v1, v1, 0x61

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    rsub-int/lit8 v2, v2, 0x6

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-wide/16 v7, -0x1

    const-string v9, "\ufff4\u0002\u000e\u0003\ufffe\ufffd\u0003"

    cmp-long v10, v3, v7

    add-int/lit8 v10, v10, 0x6

    invoke-static {v1, v6, v2, v10, v9}, Lcom/ironsource/adqualitysdk/sdk/i/ak;->a(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ak;->e:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/ironsource/adqualitysdk/sdk/i/ak;->f:Z

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ak;->g:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/ironsource/adqualitysdk/sdk/i/ak;->h:Z

    iput-boolean v5, p0, Lcom/ironsource/adqualitysdk/sdk/i/ak;->k:Z

    return-void
.end method

.method private static a(IZIILjava/lang/String;)Ljava/lang/String;
    .registers 11

    if-eqz p4, :cond_6

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    :cond_6
    check-cast p4, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﻐ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    new-array v1, p3, [C

    const/4 v2, 0x0

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    :goto_10
    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    if-ge v3, p3, :cond_2f

    aget-char v3, p4, v3

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾇ:I

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾇ:I

    add-int/2addr v4, p0

    int-to-char v4, v4

    aput-char v4, v1, v3

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    aget-char v4, v1, v3

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/ak;->a:I

    sub-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    goto :goto_10

    :cond_2f
    if-lez p2, :cond_46

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾒ:I

    new-array p0, p3, [C

    invoke-static {v1, v2, p0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾒ:I

    sub-int p4, p3, p2

    invoke-static {p0, v2, v1, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾒ:I

    sub-int p4, p3, p2

    invoke-static {p0, p2, v1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_46
    if-eqz p1, :cond_5e

    new-array p0, p3, [C

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    :goto_4c
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    if-ge p1, p3, :cond_5d

    sub-int p2, p3, p1

    add-int/lit8 p2, p2, -0x1

    aget-char p2, v1, p2

    aput-char p2, p0, p1

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    goto :goto_4c

    :cond_5d
    move-object v1, p0

    :cond_5e
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_b .. :try_end_64} :catchall_65

    return-object p0

    :catchall_65
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final ﱟ()V
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ak;->c:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ak;->b:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ak;->k:Z

    add-int/lit8 v1, v1, 0x15

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ak;->c:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method

.method public final ﱡ()Lcom/ironsource/adqualitysdk/sdk/ISAdQualityDeviceIdType;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ak;->b:I

    add-int/lit8 v1, v0, 0x21

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ak;->c:I

    rem-int/lit8 v1, v1, 0x2

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ak;->i:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityDeviceIdType;

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ak;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0x20

    if-nez v0, :cond_1b

    const/16 v0, 0x1e

    goto :goto_1d

    :cond_1b
    const/16 v0, 0x20

    :goto_1d
    if-eq v0, v2, :cond_26

    const/16 v0, 0x16

    :try_start_21
    div-int/lit8 v0, v0, 0x0
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_24

    return-object v1

    :catchall_24
    move-exception v0

    throw v0

    :cond_26
    return-object v1
.end method

.method public final ﺙ()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ak;->b:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ak;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eq v0, v1, :cond_16

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ak;->j:Ljava/util/Map;

    goto :goto_1b

    :cond_16
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ak;->j:Ljava/util/Map;

    const/16 v1, 0xe

    :try_start_1a
    div-int/2addr v1, v2
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_1c

    :goto_1b
    return-object v0

    :catchall_1c
    move-exception v0

    throw v0
.end method

.method public final ﻏ()Z
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ak;->b:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ak;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    if-ne v0, v1, :cond_15

    iget-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ak;->k:Z

    return v0

    :cond_15
    const/4 v0, 0x0

    :try_start_16
    throw v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_17

    :catchall_17
    move-exception v0

    throw v0
.end method

.method public final ﻐ()Ljava/lang/String;
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ak;->b:I

    add-int/lit8 v1, v0, 0x11

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ak;->c:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_10

    const/4 v1, 0x0

    goto :goto_11

    :cond_10
    const/4 v1, 0x1

    :goto_11
    const/4 v4, 0x0

    if-ne v1, v3, :cond_28

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ak;->d:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/ak;->c:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_21

    goto :goto_22

    :cond_21
    const/4 v2, 0x1

    :goto_22
    if-eqz v2, :cond_25

    return-object v1

    :cond_25
    :try_start_25
    throw v4
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_26

    :catchall_26
    move-exception v0

    throw v0

    :cond_28
    :try_start_28
    throw v4
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception v0

    throw v0
.end method

.method public final ﻐ(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityDeviceIdType;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ak;->b:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ak;->c:I

    rem-int/lit8 v0, v0, 0x2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ak;->i:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityDeviceIdType;

    add-int/lit8 v1, v1, 0x73

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/ak;->b:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method

.method public final ﻐ(Z)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ak;->b:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ak;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x21

    if-nez v0, :cond_11

    const/16 v0, 0x27

    goto :goto_13

    :cond_11
    const/16 v0, 0x21

    :goto_13
    iput-boolean p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ak;->h:Z

    if-ne v0, v1, :cond_18

    return-void

    :cond_18
    const/4 p1, 0x0

    :try_start_19
    throw p1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception p1

    throw p1
.end method

.method public final ﻛ(Ljava/lang/String;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ak;->b:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ak;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x40

    if-nez v0, :cond_11

    const/16 v0, 0x54

    goto :goto_13

    :cond_11
    const/16 v0, 0x40

    :goto_13
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ak;->g:Ljava/lang/String;

    if-eq v0, v1, :cond_1d

    const/4 p1, 0x3

    :try_start_18
    div-int/lit8 p1, p1, 0x0
    :try_end_1a
    .catchall {:try_start_18 .. :try_end_1a} :catchall_1b

    goto :goto_1d

    :catchall_1b
    move-exception p1

    throw p1

    :cond_1d
    :goto_1d
    return-void
.end method

.method public final ﻛ(Z)V
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ak;->c:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ak;->b:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    iput-boolean p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ak;->f:Z

    if-eq v0, v1, :cond_16

    goto :goto_19

    :cond_16
    const/16 p1, 0x50

    :try_start_18
    div-int/2addr p1, v2
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_1a

    :goto_19
    return-void

    :catchall_1a
    move-exception p1

    throw p1
.end method

.method public final ﻛ()Z
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ak;->b:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ak;->c:I

    rem-int/lit8 v0, v0, 0x2

    iget-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ak;->f:Z

    const/16 v2, 0x39

    add-int/2addr v1, v2

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ak;->b:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v3, 0x53

    if-eqz v1, :cond_1b

    const/16 v2, 0x53

    :cond_1b
    if-eq v2, v3, :cond_1e

    return v0

    :cond_1e
    const/4 v0, 0x0

    :try_start_1f
    throw v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_20

    :catchall_20
    move-exception v0

    throw v0
.end method

.method public final ｋ()Ljava/lang/String;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ak;->c:I

    add-int/lit8 v1, v0, 0x27

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ak;->b:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    if-nez v1, :cond_1c

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ak;->g:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ak;->b:I

    rem-int/lit8 v0, v0, 0x2

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

.method public final declared-synchronized ｋ(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ak;->c:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ak;->b:I

    rem-int/lit8 v0, v0, 0x2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ak;->e:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x7d

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/ak;->c:I

    rem-int/lit8 v1, v1, 0x2
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_25

    const/16 p1, 0x23

    if-nez v1, :cond_1b

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1b
    const/16 v0, 0x23

    :goto_1d
    if-ne v0, p1, :cond_21

    monitor-exit p0

    return-void

    :cond_21
    const/4 p1, 0x0

    :try_start_22
    throw p1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_23

    :catchall_23
    move-exception p1

    :try_start_24
    throw p1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_25

    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized ﾇ()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    :try_start_1
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ak;->c:I

    add-int/lit8 v1, v0, 0x2b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ak;->b:I

    rem-int/lit8 v1, v1, 0x2

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ak;->e:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ak;->b:I

    rem-int/lit8 v0, v0, 0x2
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-object v1

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final ﾇ(Ljava/lang/String;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ak;->b:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ak;->c:I

    rem-int/lit8 v0, v0, 0x2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ak;->d:Ljava/lang/String;

    add-int/lit8 v1, v1, 0xf

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/ak;->b:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method

.method public final ﾇ(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ak;->c:I

    add-int/lit8 v1, v0, 0x1b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ak;->b:I

    rem-int/lit8 v1, v1, 0x2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ak;->j:Ljava/util/Map;

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/ak;->b:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    if-nez p1, :cond_1c

    return-void

    :cond_1c
    const/4 p1, 0x0

    :try_start_1d
    throw p1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception p1

    throw p1
.end method

.method public final ﾒ()Z
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ak;->b:I

    add-int/lit8 v1, v0, 0x5d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ak;->c:I

    rem-int/lit8 v1, v1, 0x2

    iget-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ak;->h:Z

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ak;->c:I

    rem-int/lit8 v0, v0, 0x2

    return v1
.end method
