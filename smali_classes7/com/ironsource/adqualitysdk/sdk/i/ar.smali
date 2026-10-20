###### Class com.json.adqualitysdk.sdk.i.ar (com.ironsource.adqualitysdk.sdk.i.ar)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ar;
.super Lcom/ironsource/adqualitysdk/sdk/i/ao$3;
.source ""


# static fields
.field private static c:J = 0x1c3f91c69596d2e7L

.field private static d:I = 0x6c

.field private static e:I = 0x0

.field private static f:I = 0x1


# instance fields
.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/as;)V
    .registers 7

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;-><init>()V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ar;->g:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    const-string v1, "\u4610\u51c8\ucb97\u4660\u835d\ub53f\u6e36\ucdfe\u0de3\u4f25\u3a8e"

    invoke-static {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ar;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    rsub-int v0, v0, 0xd8

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    rsub-int/lit8 v1, v1, 0x1

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v2, v2, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x9

    const-string v4, "\u0007\ufff9\u0000\ufff9\ufff7\u0008\u0006\u0003\u0002"

    invoke-static {v0, v3, v1, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ar;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->ｋ(Lcom/ironsource/adqualitysdk/sdk/i/as;)V

    return-void
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_6
    check-cast p0, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﾇ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sget-wide v1, Lcom/ironsource/adqualitysdk/sdk/i/ar;->c:J

    invoke-static {v1, v2, p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﾇ(J[CI)[C

    move-result-object p0

    const/4 p1, 0x4

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    :goto_14
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    array-length v2, p0

    if-ge v1, v2, :cond_3a

    add-int/lit8 v1, v1, -0x4

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ｋ:I

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    aget-char v2, p0, v1

    rem-int/lit8 v3, v1, 0x4

    aget-char v3, p0, v3

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/f;->ｋ:I

    int-to-long v4, v4

    sget-wide v6, Lcom/ironsource/adqualitysdk/sdk/i/ar;->c:J

    mul-long v4, v4, v6

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p0, v1

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    goto :goto_14

    :cond_3a
    new-instance v1, Ljava/lang/String;

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-direct {v1, p0, p1, v2}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_b .. :try_end_42} :catchall_43

    return-object v1

    :catchall_43
    move-exception p0

    monitor-exit v0

    throw p0
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

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/ar;->d:I

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
.method public final ﮐ()J
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ar;->f:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ar;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x32

    if-eqz v0, :cond_11

    const/16 v0, 0x32

    goto :goto_13

    :cond_11
    const/16 v0, 0x27

    :goto_13
    const/4 v2, 0x1

    const-string v3, "\u1ec9\u6b4b\u9caa\u1ebc\ub9d8\u7f2a"

    if-eq v0, v1, :cond_32

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->乁()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v2

    invoke-static {v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ar;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    :goto_2d
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_48

    :cond_32
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->乁()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v1

    rem-int/lit8 v1, v1, 0x5f

    div-int/2addr v2, v1

    invoke-static {v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ar;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x1

    goto :goto_2d

    :goto_48
    return-wide v0
.end method

.method public final ﱟ()J
    .registers 9

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ar;->f:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ar;->e:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/16 v2, 0x4c

    if-eqz v0, :cond_11

    const/16 v0, 0xf

    goto :goto_13

    :cond_11
    const/16 v0, 0x4c

    :goto_13
    const-string v3, "\u1223\uaea6\uda78\u1257\u7c32\u91a5"

    const-wide/16 v4, 0x0

    if-eq v0, v2, :cond_32

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->乁()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v2, 0x0

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v6

    ushr-int/2addr v2, v6

    :goto_25
    invoke-static {v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ar;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    goto :goto_3d

    :cond_32
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->乁()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v4, v5}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :goto_3d
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ar;->e:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/ar;->f:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_4a

    const/4 v0, 0x2

    goto :goto_4c

    :cond_4a
    const/16 v0, 0x1d

    :goto_4c
    if-eq v0, v1, :cond_4f

    return-wide v2

    :cond_4f
    const/4 v0, 0x0

    :try_start_50
    throw v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v0

    throw v0
.end method

.method public final ﱡ()Ljava/lang/String;
    .registers 15

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ar;->f:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ar;->e:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "\u4610\u51c8\ucb97\u4660\u835d\ub53f\u6e36\ucdfe\u0de3\u4f25\u3a8e"

    const-string v2, "\u0004\u0001\ufffb"

    const/4 v3, 0x3

    const/16 v4, 0x30

    const-wide/16 v5, 0x0

    const-string v7, ""

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_42

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->乁()Lorg/json/JSONObject;

    move-result-object v0

    const/16 v10, 0x26a9

    const/16 v11, 0x55

    invoke-static {v11}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v11

    shl-int/2addr v10, v11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    cmp-long v13, v11, v5

    mul-int/lit8 v13, v13, 0x2

    invoke-static {v7, v7, v8}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v11

    shr-int/2addr v3, v11

    invoke-static {v10, v8, v13, v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ar;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_6c

    goto :goto_7a

    :cond_42
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->乁()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v4}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v10

    add-int/lit16 v10, v10, 0xad

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    cmp-long v13, v11, v5

    rsub-int/lit8 v11, v13, 0x4

    invoke-static {v7, v7, v9}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v12

    add-int/2addr v12, v3

    invoke-static {v10, v9, v11, v12, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ar;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_69

    const/4 v2, 0x0

    goto :goto_6a

    :cond_69
    const/4 v2, 0x1

    :goto_6a
    if-eqz v2, :cond_7a

    :cond_6c
    invoke-static {v9, v9}, Landroid/view/View;->getDefaultSize(II)I

    move-result v0

    add-int/2addr v0, v8

    invoke-static {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ar;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7a
    :goto_7a
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ar;->f:I

    add-int/lit8 v2, v2, 0xb

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ar;->e:I

    rem-int/lit8 v2, v2, 0x2

    invoke-static {v7, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v2

    add-int/lit16 v2, v2, 0xdd

    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v3

    int-to-byte v3, v3

    neg-int v3, v3

    const/4 v4, 0x0

    invoke-static {v4, v4}, Landroid/graphics/PointF;->length(FF)F

    move-result v7

    const-string v10, "\u0000"

    cmpl-float v4, v7, v4

    add-int/2addr v4, v8

    invoke-static {v2, v9, v3, v4, v10}, Lcom/ironsource/adqualitysdk/sdk/i/ar;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v3

    cmp-long v7, v3, v5

    invoke-static {v1, v7}, Lcom/ironsource/adqualitysdk/sdk/i/ar;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ar;->e:I

    add-int/lit8 v1, v1, 0x29

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ar;->f:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_c1

    goto :goto_c2

    :cond_c1
    const/4 v9, 0x1

    :goto_c2
    if-ne v9, v8, :cond_c5

    return-object v0

    :cond_c5
    const/4 v0, 0x0

    :try_start_c6
    throw v0
    :try_end_c7
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_c7

    :catchall_c7
    move-exception v0

    throw v0
.end method

.method public final ﺙ()Ljava/lang/String;
    .registers 12

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->乁()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    add-int/lit16 v2, v2, 0xdd

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, 0x3

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/lit8 v4, v4, 0x3

    const-string v5, "\u0004\u0001\ufffb"

    invoke-static {v2, v1, v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ar;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2e

    const/4 v3, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v3, 0x0

    :goto_2f
    const-string v4, "\u0007\ufff9\u0000\ufff9\ufff7\u0008\u0006\u0003\u0002"

    const-wide/16 v5, 0x0

    if-eq v3, v2, :cond_5b

    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v0

    add-int/lit16 v0, v0, 0xd8

    invoke-static {v1}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v7

    cmp-long v3, v7, v5

    add-int/2addr v3, v2

    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v2

    add-int/lit8 v2, v2, 0x9

    invoke-static {v0, v1, v3, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ar;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ar;->f:I

    add-int/lit8 v1, v1, 0x55

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ar;->e:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :cond_5b
    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/ar;->e:I

    add-int/lit8 v3, v3, 0x25

    rem-int/lit16 v7, v3, 0x80

    sput v7, Lcom/ironsource/adqualitysdk/sdk/i/ar;->f:I

    rem-int/lit8 v3, v3, 0x2

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/2addr v3, v2

    const-string v2, "\u9b5d\u3a4c\u0108\u9b38\u1db7"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ar;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v3

    const/4 v7, 0x0

    const-string v8, ""

    cmpl-float v3, v3, v7

    rsub-int v3, v3, 0xd8

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v9

    cmp-long v7, v9, v5

    invoke-static {v8}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x9

    invoke-static {v3, v1, v7, v5, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ar;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﻏ()J
    .registers 12

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ar;->f:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ar;->e:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    const-wide/16 v4, 0x0

    const-string v6, "\u0000\u0001\u0000"

    const/4 v7, 0x0

    const-string v8, ""

    if-eq v0, v2, :cond_40

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->乁()Lorg/json/JSONObject;

    move-result-object v0

    const/16 v2, 0x30

    invoke-static {v8, v2, v3, v3}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    rsub-int v2, v2, 0xde

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v9

    cmpl-float v7, v9, v7

    add-int/2addr v7, v1

    invoke-static {v8}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x3

    invoke-static {v2, v3, v7, v8, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ar;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_37
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    goto :goto_61

    :cond_40
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->乁()Lorg/json/JSONObject;

    move-result-object v0

    const/16 v9, 0x56dc

    const/16 v10, 0x77

    invoke-static {v8, v10, v3, v2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v3

    shr-int v3, v9, v3

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v9

    cmpl-float v7, v9, v7

    rem-int v7, v1, v7

    invoke-static {v8}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v8

    rsub-int/lit8 v8, v8, 0x4

    invoke-static {v3, v2, v7, v8, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ar;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_37

    :goto_61
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ar;->f:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/ar;->e:I

    rem-int/2addr v0, v1

    return-wide v2
.end method

.method public final ﻐ()I
    .registers 10

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ar;->e:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ar;->f:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->乁()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    rsub-int v1, v1, 0xde

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const-string v7, "\u0001\u0004\ufffb"

    cmp-long v8, v2, v4

    add-int/lit8 v8, v8, 0x2

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x3

    invoke-static {v1, v6, v8, v2, v7}, Lcom/ironsource/adqualitysdk/sdk/i/ar;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x267a

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ar;->f:I

    add-int/lit8 v1, v1, 0x63

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ar;->e:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x36

    if-eqz v1, :cond_49

    const/16 v6, 0x36

    :cond_49
    if-eq v6, v2, :cond_4c

    return v0

    :cond_4c
    const/4 v0, 0x0

    :try_start_4d
    throw v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4e

    :catchall_4e
    move-exception v0

    throw v0
.end method

.method public final ﻛ()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->リ()Lcom/ironsource/adqualitysdk/sdk/i/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/as;->ﱟ()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->乁()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-string v7, ""

    const-string v8, "\ufff5\u0008\u0004"

    cmp-long v9, v2, v4

    rsub-int v2, v9, 0xdd

    const/4 v3, 0x1

    const/16 v4, 0x30

    invoke-static {v7, v4, v6, v6}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v4

    neg-int v4, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    rsub-int/lit8 v5, v5, 0x3

    invoke-static {v2, v3, v4, v5, v8}, Lcom/ironsource/adqualitysdk/sdk/i/ar;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->ﻐ(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ar;->e:I

    add-int/lit8 v1, v1, 0x6f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ar;->f:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public final ｋ()I
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ar;->f:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ar;->e:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->乁()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1

    const-string v2, "\u4b47\u40c9\u3625\u4b22\u925d\ude7c\u939f"

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ar;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ar;->g:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ar;->f:I

    add-int/lit8 v1, v1, 0x6b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ar;->e:I

    rem-int/lit8 v1, v1, 0x2

    return v0
.end method

.method public final ﾇ()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->リ()Lcom/ironsource/adqualitysdk/sdk/i/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/as;->ﻐ()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->乁()Lorg/json/JSONObject;

    move-result-object v1

    const/16 v2, 0x30

    const-string v3, ""

    invoke-static {v3, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v2

    rsub-int v2, v2, 0xdb

    const/4 v4, 0x0

    invoke-static {v3}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const-string v9, "\ufff6\u0004\u0008"

    cmp-long v10, v5, v7

    rsub-int/lit8 v5, v10, 0x4

    invoke-static {v2, v4, v3, v5, v9}, Lcom/ironsource/adqualitysdk/sdk/i/ar;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->ﻐ(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ar;->e:I

    add-int/lit8 v1, v1, 0x4f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ar;->f:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public final ﾒ()I
    .registers 10

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ar;->e:I

    const/16 v1, 0x31

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ar;->f:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->乁()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-string v7, "\ufffa\u0002\u0005"

    cmp-long v8, v2, v4

    rsub-int v2, v8, 0xd8

    const/4 v3, 0x1

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v5

    shr-int/lit8 v5, v5, 0x18

    add-int/lit8 v5, v5, 0x3

    invoke-static {v2, v3, v4, v5, v7}, Lcom/ironsource/adqualitysdk/sdk/i/ar;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x28

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ar;->f:I

    add-int/lit8 v2, v2, 0x6d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ar;->e:I

    rem-int/lit8 v2, v2, 0x2

    const/16 v3, 0x2f

    if-eqz v2, :cond_49

    const/4 v2, 0x4

    goto :goto_4b

    :cond_49
    const/16 v2, 0x2f

    :goto_4b
    if-eq v2, v3, :cond_51

    :try_start_4d
    div-int/2addr v1, v6
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4f

    return v0

    :catchall_4f
    move-exception v0

    throw v0

    :cond_51
    return v0
.end method
