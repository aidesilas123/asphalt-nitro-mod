###### Class com.json.adqualitysdk.sdk.i.ai (com.ironsource.adqualitysdk.sdk.i.ai)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ai;
.super Lcom/ironsource/adqualitysdk/sdk/i/jk;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adqualitysdk/sdk/i/ai$e;
    }
.end annotation


# static fields
.field private static h:C = '\u2025'

.field private static i:C = '\u512f'

.field private static j:C = '\ufb0b'

.field private static k:C = '\u1fc5'

.field private static l:I = -0x42e1f667

.field private static m:I = 0x79

.field private static n:I = 0xeccbe2e

.field private static o:[B = null

.field private static p:[S = null

.field private static q:I = 0x0

.field private static r:I = 0x1


# instance fields
.field private s:Ljava/lang/String;

.field private t:I

.field private u:I

.field private v:I

.field private w:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x4f

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ai;->o:[B

    return-void

    :array_a
    .array-data 1
        0x6dt
        0x2ct
        0x25t
        0x33t
        0x79t
        0x74t
        0x2dt
        0x29t
        -0x46t
        -0x45t
        -0x2et
        -0x6t
        0x1ct
        0x25t
        -0x1at
        0x13t
        0x16t
        -0x4t
        0x1et
        0x52t
        -0x3at
        0x6t
        0x12t
        0x2t
        0x20t
        0x9t
        0x0t
        0x1ct
        0x50t
        -0x45t
        0x10t
        0xat
        0xdt
        0x3at
        0x17t
        0x0t
        0x18t
        0x2dt
        -0xet
        0x13t
        0x24t
        0x7t
        0x56t
        0x59t
        0x3ft
        0x61t
        -0x6bt
        0x1t
        0x4bt
        -0x5ct
        0x8t
        0x55t
        0x3et
        0x56t
        0x4bt
        0x51t
        0x62t
        0x45t
        -0x64t
        0x9t
        0x49t
        0x55t
        0x55t
        0x50t
        0x53t
        -0x6ft
        -0x2t
        0x53t
        0x4dt
        0x50t
        0x5dt
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/ironsource/adqualitysdk/sdk/i/ak;ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/jk;-><init>(Landroid/content/Context;Lcom/ironsource/adqualitysdk/sdk/i/ak;)V

    iput p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai;->t:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai;->u:I

    const/4 p2, 0x1

    iput p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai;->v:I

    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai;->s:Ljava/lang/String;

    new-instance p2, Landroid/os/HandlerThread;

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x17

    const-string p3, "\u1dc3\u31d9\u22ca\u6123\u739b\udb73\u73e2\ucb5d\ud316\uc804\u7692\ua577\u312c\ubde8\u7720\u945a\uf749\ua991\u4f8e\ub49e\u58a3\uccf5\u5416\u348a"

    invoke-static {p3, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ai;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai;->w:Landroid/os/Handler;

    return-void
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/String;
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

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/ai;->j:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    aget-char v9, v3, v2

    ushr-int/lit8 v9, v9, 0x5

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/ai;->k:C

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

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/ai;->h:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    aget-char v9, v3, v5

    ushr-int/lit8 v9, v9, 0x5

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/ai;->i:C

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

.method static synthetic c(Lcom/ironsource/adqualitysdk/sdk/i/ai;)I
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ai;->r:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ai;->q:I

    rem-int/lit8 v0, v0, 0x2

    iget v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai;->v:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai;->v:I

    add-int/lit8 v1, v1, 0xf

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lcom/ironsource/adqualitysdk/sdk/i/ai;->r:I

    rem-int/lit8 v1, v1, 0x2

    const/16 p0, 0x5f

    if-nez v1, :cond_1f

    const/16 v1, 0x26

    goto :goto_21

    :cond_1f
    const/16 v1, 0x5f

    :goto_21
    if-eq v1, p0, :cond_2a

    const/16 p0, 0x33

    :try_start_25
    div-int/lit8 p0, p0, 0x0
    :try_end_27
    .catchall {:try_start_25 .. :try_end_27} :catchall_28

    return v0

    :catchall_28
    move-exception p0

    throw p0

    :cond_2a
    return v0
.end method

.method static synthetic d(Lcom/ironsource/adqualitysdk/sdk/i/ai;)I
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ai;->q:I

    add-int/lit8 v1, v0, 0x1d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ai;->r:I

    rem-int/lit8 v1, v1, 0x2

    iget p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai;->v:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ai;->r:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0xf

    if-nez v0, :cond_1b

    const/16 v0, 0x51

    goto :goto_1d

    :cond_1b
    const/16 v0, 0xf

    :goto_1d
    if-ne v0, v1, :cond_20

    return p0

    :cond_20
    const/4 p0, 0x0

    :try_start_21
    throw p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception p0

    throw p0
.end method

.method static synthetic e(Lcom/ironsource/adqualitysdk/sdk/i/ai;)I
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ai;->q:I

    add-int/lit8 v1, v0, 0x2b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ai;->r:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x62

    if-nez v1, :cond_11

    const/16 v1, 0x3c

    goto :goto_13

    :cond_11
    const/16 v1, 0x62

    :goto_13
    if-eq v1, v2, :cond_1c

    iget v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai;->u:I

    div-int/lit8 v2, v1, 0x0

    :goto_19
    iput v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai;->u:I

    goto :goto_21

    :cond_1c
    iget v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai;->u:I

    add-int/lit8 v2, v1, 0x1

    goto :goto_19

    :goto_21
    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 p0, v0, 0x80

    sput p0, Lcom/ironsource/adqualitysdk/sdk/i/ai;->r:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2d

    const/4 p0, 0x0

    goto :goto_2e

    :cond_2d
    const/4 p0, 0x1

    :goto_2e
    if-eqz p0, :cond_31

    return v1

    :cond_31
    const/4 p0, 0x0

    :try_start_32
    throw p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    :catchall_33
    move-exception p0

    throw p0
.end method

.method private declared-synchronized f(Lorg/json/JSONObject;)V
    .registers 10

    monitor-enter p0

    :try_start_1
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ai;->q:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ai;->r:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ja;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/ja;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ja;->ｋ()Lcom/ironsource/adqualitysdk/sdk/i/ie;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ie;->ﻛ()I

    move-result v1

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ie;->ｋ()I

    move-result v2

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ie;->ﾇ()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ie;->ﻐ()J

    move-result-wide v5

    invoke-static/range {v1 .. v6}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->ﾇ(IIJJ)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_ba

    const/4 v1, 0x0

    :try_start_28
    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    rsub-int/lit8 v2, v6, -0x6f

    const v3, -0xeccbdc2

    invoke-static {v1, v1}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    invoke-static {v1}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    rsub-int/lit8 v5, v5, -0x12

    int-to-short v5, v5

    const v6, 0x42e1f689

    invoke-static {v1, v1}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v7

    add-int/2addr v7, v6

    invoke-static {v2, v3, v4, v5, v7}, Lcom/ironsource/adqualitysdk/sdk/i/ai;->h(IIBSI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5e
    .catch Lorg/json/JSONException; {:try_start_28 .. :try_end_5e} :catch_74
    .catchall {:try_start_28 .. :try_end_5e} :catchall_ba

    :try_start_5e
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ai;->r:I

    add-int/lit8 p1, p1, 0x77

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ai;->q:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_ba

    if-eqz p1, :cond_6b

    goto :goto_6c

    :cond_6b
    const/4 v1, 0x1

    :goto_6c
    if-eqz v1, :cond_70

    monitor-exit p0

    return-void

    :cond_70
    const/4 p1, 0x0

    :try_start_71
    throw p1
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_72

    :catchall_72
    move-exception p1

    :try_start_73
    throw p1

    :catch_74
    move-exception p1

    const-string v0, "\u1dc3\u31d9\u22ca\u6123\u739b\udb73\u73e2\ucb5d\ud316\uc804\u7692\ua577\u312c\ubde8\u7720\u945a\uf749\ua991\u4f8e\ub49e\u58a3\uccf5\u5416\u348a"

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x17

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ai;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v2}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v2

    rsub-int/lit8 v2, v2, -0x5c

    const v3, -0xeccbdc9

    const-string v4, ""

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    int-to-byte v3, v3

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    rsub-int/lit8 v5, v5, -0x50

    int-to-short v5, v5

    const v6, 0x42e1f691

    invoke-static {v1, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    add-int/2addr v1, v6

    invoke-static {v2, v4, v3, v5, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ai;->h(IIBSI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b8
    .catchall {:try_start_73 .. :try_end_b8} :catchall_ba

    monitor-exit p0

    return-void

    :catchall_ba
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private g()I
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ai;->q:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ai;->r:I

    rem-int/lit8 v0, v0, 0x2

    iget v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai;->u:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_12

    const/4 v4, 0x0

    goto :goto_13

    :cond_12
    const/4 v4, 0x1

    :goto_13
    if-eqz v4, :cond_16

    return v0

    :cond_16
    add-int/lit8 v1, v1, 0x61

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ai;->q:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v0, 0x4d

    if-eqz v1, :cond_25

    const/16 v1, 0x4d

    goto :goto_27

    :cond_25
    const/16 v1, 0x49

    :goto_27
    if-eq v1, v0, :cond_2a

    return v3

    :cond_2a
    return v2
.end method

.method private static h(IIBSI)Ljava/lang/String;
    .registers 12

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﺙ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ai;->m:I

    add-int/2addr p0, v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p0, v3, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    :goto_13
    if-eqz v3, :cond_2a

    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/ai;->o:[B

    if-eqz p0, :cond_21

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/ai;->l:I

    add-int/2addr v6, p4

    aget-byte p0, p0, v6

    add-int/2addr p0, v2

    int-to-byte p0, p0

    goto :goto_2a

    :cond_21
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/ai;->p:[S

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/ai;->l:I

    add-int/2addr v6, p4

    aget-short p0, p0, v6

    add-int/2addr p0, v2

    int-to-short p0, p0

    :cond_2a
    :goto_2a
    if-lez p0, :cond_89

    add-int/2addr p4, p0

    add-int/lit8 p4, p4, -0x2

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ai;->l:I

    add-int/2addr p4, v2

    if-eqz v3, :cond_35

    const/4 v4, 0x1

    :cond_35
    add-int/2addr p4, v4

    sput p4, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾇ:I

    sput-byte p2, Lcom/ironsource/adqualitysdk/sdk/i/n;->ｋ:B

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/ai;->n:I

    add-int/2addr p1, p2

    int-to-char p1, p1

    sput-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻐ:C

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻐ:C

    sput-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻛ:C

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾒ:I

    :goto_49
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾒ:I

    if-ge p1, p0, :cond_89

    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/ai;->o:[B

    if-eqz p1, :cond_65

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾇ:I

    add-int/lit8 p4, p2, -0x1

    sput p4, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾇ:I

    aget-byte p1, p1, p2

    sget-char p2, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻛ:C

    add-int/2addr p1, p3

    int-to-byte p1, p1

    sget-byte p4, Lcom/ironsource/adqualitysdk/sdk/i/n;->ｋ:B

    xor-int/2addr p1, p4

    add-int/2addr p2, p1

    int-to-char p1, p2

    sput-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻐ:C

    goto :goto_7a

    :cond_65
    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/ai;->p:[S

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾇ:I

    add-int/lit8 p4, p2, -0x1

    sput p4, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾇ:I

    aget-short p1, p1, p2

    sget-char p2, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻛ:C

    add-int/2addr p1, p3

    int-to-short p1, p1

    sget-byte p4, Lcom/ironsource/adqualitysdk/sdk/i/n;->ｋ:B

    xor-int/2addr p1, p4

    add-int/2addr p2, p1

    int-to-char p1, p2

    sput-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻐ:C

    :goto_7a
    sget-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻐ:C

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻐ:C

    sput-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻛ:C

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾒ:I

    add-int/2addr p1, v5

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾒ:I

    goto :goto_49

    :cond_89
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_3 .. :try_end_8e} :catchall_8f

    return-object p0

    :catchall_8f
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final ｋ(Lorg/json/JSONObject;ZZZ)Lorg/json/JSONObject;
    .registers 24
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_3
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jt;->ﻐ()J

    move-result-wide v2

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jt;->ﾒ()J

    move-result-wide v4

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1cb

    invoke-super/range {p0 .. p4}, Lcom/ironsource/adqualitysdk/sdk/i/jk;->ｋ(Lorg/json/JSONObject;ZZZ)Lorg/json/JSONObject;

    move-result-object v6

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    :try_start_13
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﱟ:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v11

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﱟ:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    cmp-long v13, v11, v8

    if-nez v13, :cond_24

    goto :goto_54

    :cond_24
    sub-long v13, v2, v11

    sub-long v13, v4, v13

    const-string v15, "\ub7c5\u45d4\u613b\u05fc"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    cmp-long v18, v16, v8

    rsub-int/lit8 v7, v18, 0x4

    invoke-static {v15, v7}, Lcom/ironsource/adqualitysdk/sdk/i/ai;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "\u60b7\udc22\u672e\ud34c"

    invoke-static {v10, v0, v0}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v3

    cmpl-float v3, v3, v0

    rsub-int/lit8 v3, v3, 0x3

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ai;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-wide v2, v11

    move-wide v4, v13

    :goto_54
    const-string v7, "\u6114\ue22a\u613b\u05fc"

    const-string v11, ""

    const-string v12, ""

    invoke-static {v11, v12, v10}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v11

    rsub-int/lit8 v11, v11, 0x3

    invoke-static {v7, v11}, Lcom/ironsource/adqualitysdk/sdk/i/ai;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v7, v2, v8

    add-int/lit8 v7, v7, -0x78

    const v2, -0xeccbdb9

    invoke-static {v10}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    invoke-static {v10, v10}, Landroid/view/View;->resolveSize(II)I

    move-result v11

    add-int/lit8 v11, v11, -0x6e

    int-to-short v11, v11

    const v12, 0x42e1f667

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v13

    shr-int/lit8 v13, v13, 0x10

    add-int/2addr v13, v12

    invoke-static {v7, v3, v2, v11, v13}, Lcom/ironsource/adqualitysdk/sdk/i/ai;->h(IIBSI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    rsub-int/lit8 v2, v2, -0x75

    invoke-static {v10, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    const v4, -0xeccbdbb

    add-int/2addr v3, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v11

    cmp-long v5, v11, v8

    add-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    invoke-static {v10}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v7

    rsub-int/lit8 v7, v7, -0x31

    int-to-short v7, v7

    const v11, 0x42e1f668

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v12

    shr-int/lit8 v12, v12, 0x10

    add-int/2addr v12, v11

    invoke-static {v2, v3, v5, v7, v12}, Lcom/ironsource/adqualitysdk/sdk/i/ai;->h(IIBSI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/ironsource/adqualitysdk/sdk/i/ai;->s:Ljava/lang/String;

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, ""

    const/16 v3, 0x30

    invoke-static {v2, v3}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v2

    add-int/lit8 v2, v2, -0x75

    const v3, -0xeccbdbc

    const-string v5, ""

    invoke-static {v5}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v3, v5

    const-string v5, ""

    invoke-static {v5}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v5

    int-to-byte v5, v5

    invoke-static {v10}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v7

    cmpl-float v0, v7, v0

    rsub-int/lit8 v0, v0, -0x7e

    int-to-short v0, v0

    const v7, 0x42e1f66a

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v11

    cmp-long v13, v11, v8

    add-int/2addr v13, v7

    invoke-static {v2, v3, v5, v0, v13}, Lcom/ironsource/adqualitysdk/sdk/i/ai;->h(IIBSI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/ai;->t:I

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {v10, v10}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    rsub-int/lit8 v0, v0, -0x76

    invoke-static {v10, v10}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v2

    add-int/2addr v2, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    rsub-int/lit8 v4, v4, -0x2e

    int-to-short v4, v4

    const v5, 0x42e1f66d

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v7

    shr-int/lit8 v7, v7, 0x8

    add-int/2addr v7, v5

    invoke-static {v0, v2, v3, v4, v7}, Lcom/ironsource/adqualitysdk/sdk/i/ai;->h(IIBSI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Lcom/ironsource/adqualitysdk/sdk/i/ai;->g()I

    move-result v2

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->丫()Z

    move-result v0

    if-eqz v0, :cond_17c

    const-string v0, ""

    invoke-static {v0}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x74

    const v2, -0xeccbdcb

    invoke-static {v10, v10}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-byte v3, v3

    invoke-static {v10, v10}, Landroid/view/View;->resolveSize(II)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x3e

    int-to-short v4, v4

    const v5, 0x42e1f66f

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v7

    add-int/2addr v7, v5

    invoke-static {v0, v2, v3, v4, v7}, Lcom/ironsource/adqualitysdk/sdk/i/ai;->h(IIBSI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_17c
    if-eqz p3, :cond_1ca

    invoke-direct {v1, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ai;->f(Lorg/json/JSONObject;)V
    :try_end_181
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_181} :catch_182

    goto :goto_1ca

    :catch_182
    move-exception v0

    const-string v2, "\u1dc3\u31d9\u22ca\u6123\u739b\udb73\u73e2\ucb5d\ud316\uc804\u7692\ua577\u312c\ubde8\u7720\u945a\uf749\ua991\u4f8e\ub49e\u58a3\uccf5\u5416\u348a"

    const-string v3, ""

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x17

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ai;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v3, v10}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v3

    add-int/lit8 v3, v3, -0x61

    const v4, -0xeccbde9

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v10, v10}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v11

    cmp-long v5, v11, v8

    const/4 v7, 0x1

    add-int/2addr v5, v7

    int-to-byte v5, v5

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    add-int/lit8 v7, v7, -0xd

    int-to-short v7, v7

    const v8, 0x42e1f672

    invoke-static {v10, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {v3, v4, v5, v7, v8}, Lcom/ironsource/adqualitysdk/sdk/i/ai;->h(IIBSI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1ca
    :goto_1ca
    return-object v6

    :catchall_1cb
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final ｋ(Lorg/json/JSONArray;ZLcom/ironsource/adqualitysdk/sdk/i/ai$e;)V
    .registers 6

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai;->w:Landroid/os/Handler;

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ai$b;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/ironsource/adqualitysdk/sdk/i/ai$b;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ai;ZLorg/json/JSONArray;Lcom/ironsource/adqualitysdk/sdk/i/ai$e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ai;->r:I

    add-int/lit8 p1, p1, 0x27

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/ai;->q:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final declared-synchronized ﾒ(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZLcom/ironsource/adqualitysdk/sdk/i/ai$e;)V
    .registers 15

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai;->w:Landroid/os/Handler;

    new-instance v8, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ai;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZLcom/ironsource/adqualitysdk/sdk/i/ai$e;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ai;->r:I

    add-int/lit8 p1, p1, 0x41

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/ai;->q:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_29

    if-eqz p1, :cond_20

    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    if-nez p1, :cond_25

    monitor-exit p0

    return-void

    :cond_25
    const/4 p1, 0x0

    :try_start_26
    throw p1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_27

    :catchall_27
    move-exception p1

    :try_start_28
    throw p1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.ai.a (com.ironsource.adqualitysdk.sdk.i.ai$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ai$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ai;->ﾒ(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZLcom/ironsource/adqualitysdk/sdk/i/ai$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static d:[I = null

.field private static e:I = 0x0

.field private static f:I = 0x1


# instance fields
.field private synthetic g:Ljava/lang/String;

.field private synthetic h:Lorg/json/JSONObject;

.field private synthetic i:Lorg/json/JSONObject;

.field private synthetic j:Z

.field final synthetic k:Lcom/ironsource/adqualitysdk/sdk/i/ai$e;

.field private synthetic l:Lcom/ironsource/adqualitysdk/sdk/i/ai;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->d:[I

    return-void

    :array_a
    .array-data 4
        0x45616d7e
        -0x30a60be3
        -0x635c3fc5
        0x5ae12b83
        0x22221914
        -0x7c0cd96c
        0x36b7ed8b
        -0x5055557d
        0x6c28f1f8
        0x2ba3ef6b
        -0x6b0a0a47
        0x469c55ef
        0x547ce983
        0x793143d4
        -0x7889f10e
        0x6d9c499f
        0x57696c5c
        -0x37d5acf6
    .end array-data
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ai;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZLcom/ironsource/adqualitysdk/sdk/i/ai$e;)V
    .registers 7

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->l:Lcom/ironsource/adqualitysdk/sdk/i/ai;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->h:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->i:Lorg/json/JSONObject;

    iput-boolean p5, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->j:Z

    iput-object p6, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->k:Lcom/ironsource/adqualitysdk/sdk/i/ai$e;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method

.method private static b([II)Ljava/lang/String;
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

    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->d:[I

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
.method public final ﻛ()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->g:Ljava/lang/String;

    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_138

    const-string v2, ""

    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0xd

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->b([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    const/4 v0, 0x1

    :goto_24
    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v0, v1, :cond_46

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->f:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->e:I

    rem-int/2addr v0, v4

    if-eqz v0, :cond_35

    const/4 v0, 0x0

    goto :goto_36

    :cond_35
    const/4 v0, 0x1

    :goto_36
    if-ne v0, v1, :cond_3e

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->l:Lcom/ironsource/adqualitysdk/sdk/i/ai;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ai;->e(Lcom/ironsource/adqualitysdk/sdk/i/ai;)I

    goto :goto_46

    :cond_3e
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->l:Lcom/ironsource/adqualitysdk/sdk/i/ai;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ai;->e(Lcom/ironsource/adqualitysdk/sdk/i/ai;)I

    :try_start_43
    throw v3
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_44

    :catchall_44
    move-exception v0

    throw v0

    :cond_46
    :goto_46
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->l:Lcom/ironsource/adqualitysdk/sdk/i/ai;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ai;->d(Lcom/ironsource/adqualitysdk/sdk/i/ai;)I

    move-result v0

    iget-object v5, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->l:Lcom/ironsource/adqualitysdk/sdk/i/ai;

    invoke-static {v5}, Lcom/ironsource/adqualitysdk/sdk/i/ai;->c(Lcom/ironsource/adqualitysdk/sdk/i/ai;)I

    iget-object v5, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->h:Lorg/json/JSONObject;

    invoke-static {v5}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->ﾒ(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    new-array v6, v4, [I

    fill-array-data v6, :array_14c

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    const/4 v8, 0x4

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->b([II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->g:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-array v6, v4, [I

    fill-array-data v6, :array_154

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    add-int/2addr v7, v4

    invoke-static {v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->b([II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_15c

    const v6, -0xfffff7

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v0, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->b([II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->i:Lorg/json/JSONObject;

    const/16 v7, 0x31

    if-eqz v6, :cond_a7

    const/16 v9, 0x30

    goto :goto_a9

    :cond_a7
    const/16 v9, 0x31

    :goto_a9
    if-eq v9, v7, :cond_de

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->f:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v7, v0, 0x80

    sput v7, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->e:I

    rem-int/2addr v0, v4

    if-eqz v0, :cond_cd

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﻛ:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ᖺ:Ljava/lang/String;

    iget-object v7, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->i:Lorg/json/JSONObject;

    invoke-virtual {v7, v6, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v3, 0x12

    :try_start_c9
    div-int/2addr v3, v2
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_cb

    goto :goto_de

    :catchall_cb
    move-exception v0

    throw v0

    :cond_cd
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﻛ:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ᖺ:Ljava/lang/String;

    iget-object v6, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->i:Lorg/json/JSONObject;

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_de
    :goto_de
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f9

    new-array v0, v4, [I

    fill-array-data v0, :array_16c

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/graphics/PointF;->length(FF)F

    move-result v3

    cmpl-float v2, v3, v2

    add-int/2addr v2, v8

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->b([II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :cond_f9
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﾇ:Ljava/lang/String;

    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ｋ:Ljava/lang/String;

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10b

    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ｋ:Ljava/lang/String;

    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_10b
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->l:Lcom/ironsource/adqualitysdk/sdk/i/ai;

    iget-boolean v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->j:Z

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->g:Ljava/lang/String;

    new-array v4, v8, [I

    fill-array-data v4, :array_174

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    add-int/lit8 v6, v6, 0x7

    invoke-static {v4, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->b([II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0, v5, v2, v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/jk;->ｋ(Lorg/json/JSONObject;ZZZ)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ai$a$a;

    invoke-direct {v1, p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ai$a$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ai$a;Lorg/json/JSONObject;)V

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    return-void

    nop

    :array_138
    .array-data 4
        0x4be5aff3    # 3.0105574E7f
        -0x385d0b4
        0x7f158e6e
        0x499bd830    # 1276678.0f
        -0x7aa56461
        0x4a43f785    # 3210721.2f
        0x6366fa1
        0x2f11c6d3
    .end array-data

    :array_14c
    .array-data 4
        0x688e71eb
        -0x37d3944
    .end array-data

    :array_154
    .array-data 4
        0x47a66018    # 85184.19f
        0x6caa1356
    .end array-data

    :array_15c
    .array-data 4
        0x2799ed11
        0x5480049b
        0x220d07c4
        0x430949cb
        -0x48fae678
        -0x420b4ed
    .end array-data

    :array_16c
    .array-data 4
        0x1756eef1
        -0xf6b848e
    .end array-data

    :array_174
    .array-data 4
        -0x7012b9fb
        0x7136ff0c
        -0x24c60f6b
        -0x49d1e539
    .end array-data
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.ai.a.C0335a (com.ironsource.adqualitysdk.sdk.i.ai$a$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ai$a$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->ﻛ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Lorg/json/JSONObject;

.field private synthetic e:Lcom/ironsource/adqualitysdk/sdk/i/ai$a;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ai$a;Lorg/json/JSONObject;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a$a;->e:Lcom/ironsource/adqualitysdk/sdk/i/ai$a;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a$a;->d:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a$a;->e:Lcom/ironsource/adqualitysdk/sdk/i/ai$a;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->k:Lcom/ironsource/adqualitysdk/sdk/i/ai$e;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a$a;->d:Lorg/json/JSONObject;

    invoke-interface {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ai$e;->onEventGenerated(Lorg/json/JSONObject;)V

    return-void
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.ai.b (com.ironsource.adqualitysdk.sdk.i.ai$b)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ai$b;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ai;->ｋ(Lorg/json/JSONArray;ZLcom/ironsource/adqualitysdk/sdk/i/ai$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static d:I = 0x81

.field private static e:I = 0x0

.field private static f:I = 0x1


# instance fields
.field private synthetic g:Z

.field private synthetic h:Lorg/json/JSONArray;

.field final synthetic i:Lcom/ironsource/adqualitysdk/sdk/i/ai$e;

.field private synthetic j:Lcom/ironsource/adqualitysdk/sdk/i/ai;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ai;ZLorg/json/JSONArray;Lcom/ironsource/adqualitysdk/sdk/i/ai$e;)V
    .registers 5

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$b;->j:Lcom/ironsource/adqualitysdk/sdk/i/ai;

    iput-boolean p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$b;->g:Z

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$b;->h:Lorg/json/JSONArray;

    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$b;->i:Lcom/ironsource/adqualitysdk/sdk/i/ai$e;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method

.method private static b(IZIILjava/lang/String;)Ljava/lang/String;
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

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/ai$b;->d:I

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
.method public final ﻛ()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, ""

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ai$b;->e:I

    add-int/lit8 v1, v1, 0x57

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ai$b;->f:I

    rem-int/lit8 v1, v1, 0x2

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$b;->j:Lcom/ironsource/adqualitysdk/sdk/i/ai;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$b;->g:Z

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/ironsource/adqualitysdk/sdk/i/jk;->ｋ(Lorg/json/JSONObject;ZZZ)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x1

    :try_start_17
    invoke-static {v0, v4, v4}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v3

    rsub-int v3, v3, 0xef

    invoke-static {v4}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    add-int/lit8 v5, v5, 0x2

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x6

    const-string v7, "\u0008\ufff7\u0005\u0006\u0000\ufff7"

    invoke-static {v3, v2, v5, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/ai$b;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$b;->h:Lorg/json/JSONArray;

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_3d} :catch_48

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ai$b;->e:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ai$b;->f:I

    rem-int/lit8 v0, v0, 0x2

    goto :goto_8a

    :catch_48
    move-exception v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v5

    shr-int/lit8 v5, v5, 0x8

    add-int/lit16 v5, v5, 0xe8

    const v6, 0x1000006

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    add-int/2addr v7, v6

    invoke-static {v0}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x18

    const-string v8, "\ufffe\u000b\ufffa\r\u0008\u000b\uffda\u0007\ufffa\u0005\u0012\r\u0002\ufffc\u000c\uffde\u000f\ufffe\u0007\r\uffe0\ufffe\u0007"

    invoke-static {v5, v4, v7, v6, v8}, Lcom/ironsource/adqualitysdk/sdk/i/ai$b;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x30

    invoke-static {v0, v6, v4, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v0

    add-int/lit16 v0, v0, 0xe4

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    invoke-static {v4, v4, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x18

    const-string v7, "\r\u0010\u0010\uffe3\uffff\u0012\u0003\uffeb\u0012\u000c\u0003\u0014\u0003\uffbe\u0005\u000c\u0007\u0012\uffff\u0003\u0010\u0001\uffbe\u0010"

    invoke-static {v0, v2, v6, v4, v7}, Lcom/ironsource/adqualitysdk/sdk/i/ai$b;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_8a
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ai$b$a;

    invoke-direct {v0, p0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ai$b$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ai$b;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    return-void
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.ai.b.a (com.ironsource.adqualitysdk.sdk.i.ai$b$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ai$b$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ai$b;->ﻛ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Lorg/json/JSONObject;

.field private synthetic e:Lcom/ironsource/adqualitysdk/sdk/i/ai$b;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ai$b;Lorg/json/JSONObject;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$b$a;->e:Lcom/ironsource/adqualitysdk/sdk/i/ai$b;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$b$a;->d:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$b$a;->e:Lcom/ironsource/adqualitysdk/sdk/i/ai$b;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ai$b;->i:Lcom/ironsource/adqualitysdk/sdk/i/ai$e;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$b$a;->d:Lorg/json/JSONObject;

    invoke-interface {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ai$e;->onEventGenerated(Lorg/json/JSONObject;)V

    return-void
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.ai.e (com.ironsource.adqualitysdk.sdk.i.ai$e)
.class public interface abstract Lcom/ironsource/adqualitysdk/sdk/i/ai$e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "e"
.end annotation


# virtual methods
.method public abstract onEventGenerated(Lorg/json/JSONObject;)V
.end method
