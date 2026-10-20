###### Class com.json.adqualitysdk.sdk.i.jx (com.ironsource.adqualitysdk.sdk.i.jx)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/jx;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Lorg/json/JSONObject; = null

.field private static b:Lorg/json/JSONObject; = null

.field private static c:[C = null

.field private static d:C = '\u0000'

.field private static e:I = 0x0

.field private static f:I = 0x0

.field private static g:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f()V

    const/4 v0, 0x0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/jx;->a:Lorg/json/JSONObject;

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x1d

    if-nez v0, :cond_16

    const/4 v0, 0x6

    goto :goto_18

    :cond_16
    const/16 v0, 0x1d

    :goto_18
    if-eq v0, v1, :cond_21

    const/16 v0, 0x62

    :try_start_1c
    div-int/lit8 v0, v0, 0x0
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v0

    throw v0

    :cond_21
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a()Lorg/json/JSONObject;
    .registers 8

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/jx;

    monitor-enter v0

    :try_start_3
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    add-int/lit8 v1, v1, 0xf

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g:I

    rem-int/lit8 v1, v1, 0x2

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/jx;->a:Lorg/json/JSONObject;

    if-nez v1, :cond_6a

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/jx;->a:Lorg/json/JSONObject;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_6e

    :try_start_18
    const-string v2, ""

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    add-int/lit8 v2, v2, 0x79

    int-to-byte v2, v2

    const-string v3, "\u00ef"

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    const/4 v5, 0x1

    rsub-int/lit8 v4, v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/jx;->a:Lorg/json/JSONObject;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    shr-int/lit8 v2, v2, 0x16

    add-int/lit8 v2, v2, 0x77

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/2addr v4, v5

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    shr-int/lit8 v6, v6, 0x16

    add-int/2addr v6, v5

    const-string v7, "\u0000"

    invoke-static {v2, v5, v4, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->e(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_60
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_60} :catch_6a
    .catchall {:try_start_18 .. :try_end_60} :catchall_6e

    :try_start_60
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    add-int/lit8 v1, v1, 0x9

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g:I

    rem-int/lit8 v1, v1, 0x2

    :catch_6a
    :cond_6a
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/jx;->a:Lorg/json/JSONObject;
    :try_end_6c
    .catchall {:try_start_60 .. :try_end_6c} :catchall_6e

    monitor-exit v0

    return-object v1

    :catchall_6e
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized b()Lorg/json/JSONObject;
    .registers 4

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/jx;

    monitor-enter v0

    :try_start_3
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g:I

    add-int/lit8 v2, v1, 0x3

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    rem-int/lit8 v2, v2, 0x2

    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/jx;->b:Lorg/json/JSONObject;

    add-int/lit8 v1, v1, 0x4d

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    rem-int/lit8 v1, v1, 0x2
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    monitor-exit v0

    return-object v2

    :catchall_19
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static c()Lorg/json/JSONObject;
    .registers 2

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    if-ne v0, v1, :cond_1b

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->ﾒ(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :cond_1b
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->ﾒ(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    const/4 v0, 0x0

    :try_start_23
    throw v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_24

    :catchall_24
    move-exception v0

    throw v0
.end method

.method private static declared-synchronized d(Landroid/content/Context;)V
    .registers 10

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/jx;

    monitor-enter v0

    const/16 v1, 0x2d

    if-eqz p0, :cond_9

    const/4 v2, 0x3

    goto :goto_b

    :cond_9
    const/16 v2, 0x2d

    :goto_b
    const/16 v3, 0x2c

    const/4 v4, 0x0

    if-eq v2, v1, :cond_104

    :try_start_10
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    add-int/lit8 v1, v1, 0x29

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g:I

    rem-int/lit8 v1, v1, 0x2
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_102

    const/16 v1, 0x30

    :try_start_1c
    invoke-static {v4, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x61

    int-to-byte v2, v2

    const-string v5, "\u0005\u0002\u0000\u000b\n\u0001"

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x6

    invoke-static {v2, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    if-eqz v2, :cond_9d

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_3d
    .catchall {:try_start_1c .. :try_end_3d} :catchall_be

    const/16 v6, 0x1e

    const/4 v7, 0x1

    if-lt v5, v6, :cond_44

    const/4 v5, 0x0

    goto :goto_45

    :cond_44
    const/4 v5, 0x1

    :goto_45
    if-eq v5, v7, :cond_9d

    :try_start_47
    invoke-interface {v2}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v2
    :try_end_4f
    .catchall {:try_start_47 .. :try_end_4f} :catchall_68

    if-eqz v2, :cond_9d

    :try_start_51
    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    add-int/lit8 v5, v5, 0x51

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g:I

    rem-int/lit8 v5, v5, 0x2
    :try_end_5b
    .catchall {:try_start_51 .. :try_end_5b} :catchall_102

    :try_start_5b
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v5, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->j(II)V
    :try_end_66
    .catchall {:try_start_5b .. :try_end_66} :catchall_68

    monitor-exit v0

    return-void

    :catchall_68
    move-exception v2

    :try_start_69
    invoke-static {v4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x33

    int-to-byte v5, v5

    const-string v6, "\t\u0002\u0007\u0003\t\u0004\u0006\u0011\u0007\u0013\u00a6"

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    rsub-int/lit8 v7, v7, 0xb

    invoke-static {v5, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static {v6}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x16

    int-to-byte v6, v6

    const-string v7, "\u000f\u0010\r\t\u0010\u0011\u0002\u0000\u0011\u000c\u0000\u000f\r\u0000\u000b\u0017\u0016\n\u0002\u0000\u0007\u0008\u0000\u0016\u0000\u000f\r\u0003\u0006\u0004\r\u0016\r\t\u0016\u000e\u0005\u0002\u0000\u000b\n\u0001\u0013\u0016\u000b\u0017\t\u0015"

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    add-int/2addr v8, v1

    invoke-static {v6, v7, v8}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0
    :try_end_a1
    .catchall {:try_start_69 .. :try_end_a1} :catchall_be

    const/16 v2, 0x3a

    if-eqz p0, :cond_a8

    const/16 v5, 0x24

    goto :goto_aa

    :cond_a8
    const/16 v5, 0x3a

    :goto_aa
    if-eq v5, v2, :cond_104

    :try_start_ac
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    add-int/lit8 v2, v2, 0x27

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g:I

    rem-int/lit8 v2, v2, 0x2
    :try_end_b6
    .catchall {:try_start_ac .. :try_end_b6} :catchall_102

    :try_start_b6
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->m(Landroid/util/DisplayMetrics;)V
    :try_end_bd
    .catchall {:try_start_b6 .. :try_end_bd} :catchall_be

    goto :goto_104

    :catchall_be
    move-exception p0

    :try_start_bf
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x33

    int-to-byte v2, v2

    const-string v5, "\t\u0002\u0007\u0003\t\u0004\u0006\u0011\u0007\u0013\u00a6"

    const-string v6, ""

    invoke-static {v6, v1, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    invoke-static {v2, v5, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    shr-int/lit8 v2, v2, 0x6

    rsub-int/lit8 v2, v2, 0x71

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v5

    shr-int/lit8 v5, v5, 0x8

    add-int/lit8 v5, v5, 0x14

    invoke-static {v4}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x14

    shr-int/lit8 v6, v6, 0x6

    sub-int/2addr v3, v6

    const-string v6, "\uffeb\u0003\u0012\u0010\u0007\u0001\u0011\uffbe\u0004\u0010\r\u000b\uffbe\u0001\r\u000c\u0012\u0003\u0016\u0012\uffe3\u0010\u0010\r\u0010\uffbe\u0007\u000c\uffbe\u0005\u0003\u0012\u0012\u0007\u000c\u0005\uffbe\uffe2\u0007\u0011\u000e\n\uffff\u0017"

    invoke-static {v2, v4, v5, v3, v6}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->e(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_100
    .catchall {:try_start_bf .. :try_end_100} :catchall_102

    monitor-exit v0

    return-void

    :catchall_102
    move-exception p0

    goto :goto_120

    :cond_104
    :goto_104
    :try_start_104
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    add-int/lit8 p0, p0, 0x71

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g:I

    rem-int/lit8 p0, p0, 0x2
    :try_end_10e
    .catchall {:try_start_104 .. :try_end_10e} :catchall_102

    if-nez p0, :cond_113

    const/16 p0, 0x2c

    goto :goto_115

    :cond_113
    const/16 p0, 0x1c

    :goto_115
    if-eq p0, v3, :cond_119

    monitor-exit v0

    return-void

    :cond_119
    const/16 p0, 0x43

    :try_start_11b
    div-int/2addr p0, v4
    :try_end_11c
    .catchall {:try_start_11b .. :try_end_11c} :catchall_11e

    monitor-exit v0

    return-void

    :catchall_11e
    move-exception p0

    :try_start_11f
    throw p0
    :try_end_120
    .catchall {:try_start_11f .. :try_end_120} :catchall_102

    :goto_120
    monitor-exit v0

    throw p0
.end method

.method private static e(IZIILjava/lang/String;)Ljava/lang/String;
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

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/jx;->e:I

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

.method static f()V
    .registers 1

    const/4 v0, 0x6

    sput-char v0, Lcom/ironsource/adqualitysdk/sdk/i/jx;->d:C

    const/16 v0, 0x24

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/jx;->c:[C

    const/16 v0, 0xf

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/jx;->e:I

    return-void

    nop

    :array_12
    .array-data 2
        0x73s
        0x69s
        0x7as
        0x65s
        0x77s
        0x6es
        0x64s
        0x6fs
        0x44s
        0x76s
        0x63s
        0x55s
        0x74s
        0x6cs
        0x45s
        0x72s
        0x20s
        0x67s
        0x4ds
        0x66s
        0x6ds
        0x61s
        0x79s
        0x75s
        0x3as
        0x70s
        0x78s
        0x6bs
        0x68s
        0x62s
        0x6as
        0x7bs
        0x7cs
        0x7ds
        0x7es
        0x7fs
    .end array-data
.end method

.method private static g()I
    .registers 10

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x29

    if-eqz v0, :cond_11

    const/16 v0, 0x29

    goto :goto_13

    :cond_11
    const/16 v0, 0xe

    :goto_13
    const-string v2, "\u0000"

    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, ""

    if-eq v0, v1, :cond_42

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->i()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v7, v7, v6, v6}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x77

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    rsub-int/lit8 v6, v6, 0x1

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v7

    cmp-long v9, v7, v3

    invoke-static {v1, v5, v6, v9, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->e(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_39
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_5f

    :cond_42
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->i()Lorg/json/JSONObject;

    move-result-object v0

    const/16 v1, 0x22

    invoke-static {v7, v7, v5, v6}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v7

    rem-int/2addr v1, v7

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v7

    add-int/lit8 v7, v7, -0x53

    add-int/2addr v7, v6

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v8

    cmp-long v6, v8, v3

    invoke-static {v1, v5, v7, v6, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->e(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_39

    :goto_5f
    return v0
.end method

.method private static h(BLjava/lang/String;I)Ljava/lang/String;
    .registers 11

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_6
    check-cast p1, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﺙ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/jx;->c:[C

    sget-char v2, Lcom/ironsource/adqualitysdk/sdk/i/jx;->d:C

    new-array v3, p2, [C

    rem-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_1d

    add-int/lit8 p2, p2, -0x1

    aget-char v4, p1, p2

    sub-int/2addr v4, p0

    int-to-char v4, v4

    aput-char v4, v3, p2

    :cond_1d
    const/4 v4, 0x1

    if-le p2, v4, :cond_df

    const/4 v5, 0x0

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    :goto_23
    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    if-ge v5, p2, :cond_df

    aget-char v5, p1, v5

    sput-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻐ:C

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    add-int/2addr v5, v4

    aget-char v5, p1, v5

    sput-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾒ:C

    sget-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻐ:C

    sget-char v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾒ:C

    if-ne v5, v6, :cond_4b

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    sget-char v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻐ:C

    sub-int/2addr v6, p0

    int-to-char v6, v6

    aput-char v6, v3, v5

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    add-int/2addr v5, v4

    sget-char v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾒ:C

    sub-int/2addr v6, p0

    int-to-char v6, v6

    aput-char v6, v3, v5

    goto/16 :goto_d7

    :cond_4b
    sget-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻐ:C

    div-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    sget-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻐ:C

    rem-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    sget-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾒ:C

    div-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    sget-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾒ:C

    rem-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    if-ne v5, v6, :cond_8e

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    mul-int v5, v5, v2

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    add-int/2addr v5, v6

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    mul-int v6, v6, v2

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    add-int/2addr v6, v7

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    add-int/lit8 v7, v7, 0x1

    aget-char v5, v1, v6

    aput-char v5, v3, v7

    goto :goto_d7

    :cond_8e
    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    if-ne v5, v6, :cond_bd

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    mul-int v5, v5, v2

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    add-int/2addr v5, v6

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    mul-int v6, v6, v2

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    add-int/2addr v6, v7

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    add-int/lit8 v7, v7, 0x1

    aget-char v5, v1, v6

    aput-char v5, v3, v7

    goto :goto_d7

    :cond_bd
    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    mul-int v5, v5, v2

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    add-int/2addr v5, v6

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    mul-int v6, v6, v2

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    add-int/2addr v6, v7

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    add-int/lit8 v7, v7, 0x1

    aget-char v5, v1, v6

    aput-char v5, v3, v7

    :goto_d7
    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    add-int/lit8 v5, v5, 0x2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    goto/16 :goto_23

    :cond_df
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_e5
    .catchall {:try_start_b .. :try_end_e5} :catchall_e6

    return-object p0

    :catchall_e6
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static i()Lorg/json/JSONObject;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->ﾒ(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g:I

    add-int/lit8 v1, v1, 0x5d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    if-eq v1, v2, :cond_25

    return-object v0

    :cond_25
    const/4 v0, 0x0

    :try_start_26
    throw v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_27

    :catchall_27
    move-exception v0

    throw v0
.end method

.method private static j(II)V
    .registers 10

    const-string v0, ""

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g:I

    add-int/lit8 v2, v1, 0x23

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    const/4 v3, 0x2

    rem-int/2addr v2, v3

    if-lez p0, :cond_11

    const/16 v2, 0x2c

    goto :goto_12

    :cond_11
    const/4 v2, 0x2

    :goto_12
    if-eq v2, v3, :cond_aa

    add-int/lit8 v1, v1, 0x5

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    rem-int/2addr v1, v3

    const/16 v1, 0x26

    if-lez p1, :cond_22

    const/16 v2, 0x26

    goto :goto_24

    :cond_22
    const/16 v2, 0x57

    :goto_24
    if-eq v2, v1, :cond_28

    goto/16 :goto_aa

    :cond_28
    const/4 v1, 0x0

    :try_start_29
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x78

    int-to-byte v4, v4

    const-string v5, "\u00ef"

    invoke-static {v1, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    const/4 v7, 0x1

    rsub-int/lit8 v6, v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result p1

    add-int/lit8 p1, p1, 0x77

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    rsub-int/lit8 v4, v4, 0x1

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x1

    const-string v6, "\u0000"

    invoke-static {p1, v7, v4, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->e(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_69
    .catchall {:try_start_29 .. :try_end_69} :catchall_73

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g:I

    add-int/lit8 p0, p0, 0x63

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    rem-int/2addr p0, v3

    goto :goto_aa

    :catchall_73
    move-exception p0

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x33

    int-to-byte p1, p1

    invoke-static {v1, v1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v2

    rsub-int/lit8 v2, v2, 0xb

    const-string v3, "\t\u0002\u0007\u0003\t\u0004\u0006\u0011\u0007\u0013\u00a6"

    invoke-static {p1, v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x71

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0xb

    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x19

    const-string v4, "\u0011\u0001\u0010\u0003\u0003\u000c\uffbe\u0011\u0007\u0018\u0003\uffe3\u0010\u0010\r\u0010\uffbe\u0011\u0003\u0012\u0012\u0007\u000c\u0005\uffbe"

    invoke-static {v2, v1, v3, v0, v4}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->e(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_aa
    :goto_aa
    return-void
.end method

.method private static declared-synchronized k(Lorg/json/JSONObject;)V
    .registers 4

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/jx;

    monitor-enter v0

    :try_start_3
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g:I

    add-int/lit8 v1, v1, 0x39

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x1c

    if-eqz v1, :cond_14

    const/16 v1, 0x1c

    goto :goto_16

    :cond_14
    const/16 v1, 0x18

    :goto_16
    if-eq v1, v2, :cond_1c

    sput-object p0, Lcom/ironsource/adqualitysdk/sdk/i/jx;->b:Lorg/json/JSONObject;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_22

    monitor-exit v0

    return-void

    :cond_1c
    :try_start_1c
    sput-object p0, Lcom/ironsource/adqualitysdk/sdk/i/jx;->b:Lorg/json/JSONObject;
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_22

    const/4 p0, 0x0

    :try_start_1f
    throw p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_20

    :catchall_20
    move-exception p0

    :try_start_21
    throw p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static l()I
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->i()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x78

    int-to-byte v2, v2

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1

    const-string v3, "\u00ef"

    invoke-static {v2, v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g:I

    add-int/lit8 v1, v1, 0x3d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    rem-int/lit8 v1, v1, 0x2

    return v0
.end method

.method private static m(Landroid/util/DisplayMetrics;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    add-int/lit8 v1, v0, 0x4d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz p0, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    if-eqz v1, :cond_37

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x4c

    if-nez v0, :cond_20

    const/16 v0, 0x4c

    goto :goto_22

    :cond_20
    const/16 v0, 0x3f

    :goto_22
    if-eq v0, v1, :cond_2c

    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->j(II)V

    goto :goto_37

    :cond_2c
    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->j(II)V

    const/4 p0, 0x0

    :try_start_34
    throw p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_35

    :catchall_35
    move-exception p0

    throw p0

    :cond_37
    :goto_37
    return-void
.end method

.method public static ﻐ()Ljava/lang/String;
    .registers 2

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-eq v0, v1, :cond_15

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0

    :cond_15
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_18
    throw v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_19

    :catchall_19
    move-exception v0

    throw v0
.end method

.method public static ﻐ(Landroid/content/Context;Lorg/json/JSONObject;Z)V
    .registers 15

    const-string v0, ""

    const-wide/16 v1, 0x0

    const/16 v3, 0x30

    const/4 v4, 0x0

    :try_start_7
    invoke-static {v0, v3}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v5

    add-int/lit8 v5, v5, 0x7d

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v6

    shr-int/lit8 v6, v6, 0x8

    rsub-int/lit8 v6, v6, 0x8

    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v7

    int-to-byte v7, v7

    add-int/lit8 v7, v7, 0xd

    const-string v8, "\ufffc\u0007\ufff6\ufff8\u0001\u0001\u0002\ufff6\u000c\u0007\ufffc\t"

    const/4 v9, 0x1

    invoke-static {v5, v9, v6, v7, v8}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->e(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    const/4 v6, 0x0

    invoke-static {v6, v6}, Landroid/graphics/PointF;->length(FF)F

    move-result v7

    cmpl-float v7, v7, v6

    add-int/lit8 v7, v7, 0x65

    int-to-byte v7, v7

    const-string v8, "\u001a\u001d\u000b\u0001\u00ca"

    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v10

    rsub-int/lit8 v10, v10, 0x5

    invoke-static {v7, v8, v10}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    const/16 v7, 0x3e

    if-eqz v5, :cond_58

    const/16 v8, 0x3e

    goto :goto_5a

    :cond_58
    const/16 v8, 0x2b

    :goto_5a
    if-eq v8, v7, :cond_5e

    goto/16 :goto_1e1

    :cond_5e
    invoke-static {v0, v0, v4, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v7

    add-int/lit8 v7, v7, 0x7c

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    add-int/lit8 v8, v8, 0x4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    shr-int/lit8 v10, v10, 0x16

    rsub-int/lit8 v10, v10, 0x4

    const-string v11, "\u0000\ufff5\u0006\u0007"

    invoke-static {v7, v4, v8, v10, v11}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->e(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_8b
    .catchall {:try_start_7 .. :try_end_8b} :catchall_1e2

    const/16 v10, 0x52

    if-ne v7, v8, :cond_92

    const/16 v7, 0x3c

    goto :goto_94

    :cond_92
    const/16 v7, 0x52

    :goto_94
    if-eq v7, v10, :cond_1e1

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    add-int/lit8 v7, v7, 0x1f

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g:I

    rem-int/lit8 v7, v7, 0x2

    :try_start_a0
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    rsub-int/lit8 v7, v7, 0x35

    int-to-byte v7, v7

    const-string v8, "\u0017\u001a\r\u0018\u009e"

    invoke-static {v4}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x6

    invoke-static {v7, v8, v10}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v7

    rsub-int/lit8 v7, v7, 0x7b

    invoke-static {v4, v4}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v8

    add-int/lit8 v8, v8, 0x4

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v10

    rsub-int/lit8 v10, v10, 0x4

    const-string v11, "\u0001\ufff6\u0008\u0004"

    invoke-static {v7, v4, v8, v10, v11}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->e(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v7

    rsub-int/lit8 v7, v7, 0x79

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    rsub-int/lit8 v8, v8, 0x5

    invoke-static {v0, v3, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v10

    rsub-int/lit8 v10, v10, 0x4

    const-string v11, "\u0002\ufff7\u0008\u0005\ufffe"

    invoke-static {v7, v4, v8, v10, v11}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->e(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v8

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    rsub-int/lit8 v7, v7, 0x7b

    invoke-static {v4}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v8

    neg-int v8, v8

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v10

    shr-int/lit8 v10, v10, 0x8

    rsub-int/lit8 v10, v10, 0x4

    const-string v11, "\u0004\u0001\ufff6\u0007"

    invoke-static {v7, v4, v8, v10, v11}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->e(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v0}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x12

    int-to-byte v5, v5

    const-string v7, "\u0017\u001a\u0001\u000b"

    invoke-static {v0, v3, v4}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v8

    add-int/lit8 v8, v8, 0x5

    invoke-static {v5, v7, v8}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0xa

    int-to-byte v5, v5

    const-string v7, "\u0017\u001a\u000b\u0001"

    invoke-static {v4, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v8

    rsub-int/lit8 v8, v8, 0x4

    invoke-static {v5, v7, v8}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v4, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x74

    invoke-static {v0, v3, v4}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v7

    add-int/lit8 v7, v7, 0x3

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v8

    cmpl-float v6, v8, v6

    rsub-int/lit8 v6, v6, 0x5

    const-string v8, "\ufffd\u0008\ufffe\ufffe"

    invoke-static {v5, v9, v7, v6, v8}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->e(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_18f
    .catchall {:try_start_a0 .. :try_end_18f} :catchall_1e2

    if-eqz p2, :cond_193

    const/4 p2, 0x1

    goto :goto_194

    :cond_193
    const/4 p2, 0x0

    :goto_194
    if-eq p2, v9, :cond_197

    goto :goto_1e1

    :cond_197
    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    add-int/lit8 p2, p2, 0x61

    rem-int/lit16 v5, p2, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g:I

    rem-int/lit8 p2, p2, 0x2

    :try_start_1a1
    invoke-static {v4, v4}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v5

    cmp-long p2, v5, v1

    add-int/lit8 p2, p2, 0x5f

    int-to-byte p2, p2

    const-string v5, "\u0017\u001a\u0001\u0006"

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x4

    invoke-static {p2, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, p2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v0, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result p2

    rsub-int/lit8 p2, p2, 0x3f

    int-to-byte p2, p2

    const-string v5, "\u0017\u001a\u0001\u0000"

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v6

    cmp-long v8, v6, v1

    rsub-int/lit8 v6, v8, 0x5

    invoke-static {p2, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1e1
    .catchall {:try_start_1a1 .. :try_end_1e1} :catchall_1e2

    :cond_1e1
    :goto_1e1
    return-void

    :catchall_1e2
    move-exception p0

    invoke-static {v0, v3, v4, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x32

    int-to-byte p1, p1

    invoke-static {v4, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p2

    add-int/lit8 p2, p2, 0xb

    const-string v5, "\t\u0002\u0007\u0003\t\u0004\u0006\u0011\u0007\u0013\u00a6"

    invoke-static {p1, v5, p2}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-string p2, "\u000f\u0010\r\t\u0010\u0011\u0012\t\u0007\u0000\u000b\u0017\u000e\u0016\u000b\u0019\u0007\u0013\u0004\u000f\u0002\u0000\u0019\r\u0011\r\n\r\t\u000f\u0004\u0000\u00a2"

    cmp-long v7, v5, v1

    add-int/lit8 v7, v7, 0x2d

    int-to-byte v1, v7

    invoke-static {v0, v3, v4, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    invoke-static {v1, p2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static ﻐ(Lorg/json/JSONObject;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    rem-int/lit8 v0, v0, 0x2

    :try_start_a
    const-string v0, ""

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    add-int/lit8 v0, v0, 0x53

    int-to-byte v0, v0

    const-string v1, "\u0001\u0002\u0003\u0004"

    const/4 v2, 0x0

    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->i()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_2b} :catch_35

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    add-int/lit8 p0, p0, 0x53

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g:I

    rem-int/lit8 p0, p0, 0x2

    :catch_35
    return-void
.end method

.method public static ﻐ(II)Z
    .registers 6

    const/4 v0, 0x0

    if-ltz p0, :cond_43

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g:I

    add-int/lit8 v1, v1, 0xb

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x62

    if-eqz v1, :cond_14

    const/16 v1, 0x62

    goto :goto_16

    :cond_14
    const/16 v1, 0x34

    :goto_16
    if-eq v1, v2, :cond_1b

    if-ltz p1, :cond_43

    goto :goto_20

    :cond_1b
    const/16 v1, 0x26

    :try_start_1d
    div-int/2addr v1, v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_41

    if-ltz p1, :cond_43

    :goto_20
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->l()I

    move-result v1

    const/16 v2, 0x3a

    const/4 v3, 0x1

    if-gt p0, v1, :cond_2c

    const/16 p0, 0x3a

    goto :goto_2d

    :cond_2c
    const/4 p0, 0x1

    :goto_2d
    if-eq p0, v2, :cond_30

    goto :goto_43

    :cond_30
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g()I

    move-result p0

    if-gt p1, p0, :cond_43

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    add-int/lit8 p0, p0, 0x37

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g:I

    rem-int/lit8 p0, p0, 0x2

    return v3

    :catchall_41
    move-exception p0

    throw p0

    :cond_43
    :goto_43
    return v0
.end method

.method public static declared-synchronized ｋ(Landroid/app/Activity;)V
    .registers 4

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/jx;

    monitor-enter v0

    :try_start_3
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    add-int/lit8 v1, v1, 0x4f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2c

    const/16 v1, 0x1e

    if-eqz p0, :cond_15

    const/4 v2, 0x6

    goto :goto_17

    :cond_15
    const/16 v2, 0x1e

    :goto_17
    if-eq v2, v1, :cond_2a

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->d(Landroid/content/Context;)V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    add-int/lit8 p0, p0, 0x69

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g:I

    rem-int/lit8 p0, p0, 0x2
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_30

    :cond_2a
    monitor-exit v0

    return-void

    :cond_2c
    const/4 p0, 0x0

    :try_start_2d
    throw p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    :try_start_2f
    throw p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static ｋ(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 14

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :try_start_3
    invoke-static {v2}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x72

    int-to-byte v3, v3

    const-string v4, "\u0016\t\r\u0000\u0007\u0003\u0010\u0012"

    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    add-int/lit8 v5, v5, 0x8

    invoke-static {v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {p0, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    invoke-static {v2, v2}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x2f

    int-to-byte p0, p0

    const-string v4, "\u009c\u009c\u001b\u000f"

    const/16 v5, 0x30

    invoke-static {v5}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v5

    add-int/lit8 v5, v5, -0x2c

    invoke-static {p0, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    iget-wide v4, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v6, 0x100000

    div-long/2addr v4, v6

    invoke-virtual {p1, p0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {v2}, Landroid/os/Process;->getThreadPriority(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x14

    shr-int/lit8 p0, p0, 0x6

    rsub-int/lit8 p0, p0, 0x7c

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-static {v2}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    rsub-int/lit8 v8, v8, 0x4

    const-string v9, "\ufffb\u0000\u0000\u0007"

    invoke-static {p0, v2, v4, v8, v9}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->e(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    iget-wide v8, v3, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    div-long/2addr v8, v6

    invoke-virtual {p1, p0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-boolean p0, v3, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z
    :try_end_77
    .catchall {:try_start_3 .. :try_end_77} :catchall_10b

    if-eqz p0, :cond_7b

    const/4 p0, 0x0

    goto :goto_7c

    :cond_7b
    const/4 p0, 0x1

    :goto_7c
    const/4 v4, 0x2

    if-eq p0, v5, :cond_cf

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g:I

    add-int/lit8 p0, p0, 0xf

    rem-int/lit16 v8, p0, 0x80

    sput v8, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    rem-int/2addr p0, v4

    const-string v8, "\ufffd\ufffe\ufffe\u0008"

    const-string v9, ""

    if-eqz p0, :cond_b0

    :try_start_8e
    invoke-static {v9, v5, v5}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result p0

    add-int/lit8 p0, p0, 0x60

    invoke-static {v5, v5}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v9

    cmp-long v11, v9, v0

    rem-int v9, v4, v11

    invoke-static {v5, v5}, Landroid/view/View;->resolveSize(II)I

    move-result v10

    add-int/lit8 v10, v10, 0x4

    invoke-static {p0, v5, v9, v10, v8}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->e(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    iget-boolean v8, v3, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    :goto_ac
    invoke-virtual {p1, p0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_cf

    :cond_b0
    invoke-static {v9, v2, v2}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x7e

    invoke-static {v2, v2}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v9

    cmp-long v11, v9, v0

    add-int/lit8 v11, v11, 0x4

    invoke-static {v2, v2}, Landroid/view/View;->resolveSize(II)I

    move-result v9

    rsub-int/lit8 v9, v9, 0x4

    invoke-static {p0, v5, v11, v9, v8}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->e(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    iget-boolean v8, v3, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    goto :goto_ac

    :cond_cf
    :goto_cf
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-lt p0, v8, :cond_d7

    const/4 p0, 0x1

    goto :goto_d8

    :cond_d7
    const/4 p0, 0x0

    :goto_d8
    if-eq p0, v5, :cond_db

    goto :goto_101

    :cond_db
    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x7f

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v8

    shr-int/lit8 v8, v8, 0x16

    add-int/lit8 v8, v8, 0x4

    invoke-static {v2, v2}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v9

    cmp-long v11, v9, v0

    rsub-int/lit8 v9, v11, 0x3

    const-string v10, "\u0004\u0004\ufffd\ufffd"

    invoke-static {p0, v5, v8, v9, v10}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->e(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    iget-wide v8, v3, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    div-long/2addr v8, v6

    invoke-virtual {p1, p0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_101
    .catchall {:try_start_8e .. :try_end_101} :catchall_10b

    :goto_101
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    add-int/lit8 p0, p0, 0x35

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g:I

    rem-int/2addr p0, v4

    return-void

    :catchall_10b
    move-exception p0

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    const-string p1, "\t\u0002\u0007\u0003\t\u0004\u0006\u0011\u0007\u0013\u00a6"

    const-string v7, "\u000f\u0010\r\t\u0010\u0011\u000f\u0005\u008e\u008e\u0002\u0000\u000c\u0011\u0015\u0002\u0013\u0008\u0010\u0015\u0011\u0016\u0003\u0012\u000f\u0005\u001c\u000c"

    cmp-long v8, v3, v5

    add-int/lit8 v8, v8, 0x32

    int-to-byte v3, v8

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v4

    cmp-long v6, v4, v0

    add-int/lit8 v6, v6, 0xa

    invoke-static {v3, p1, v6}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, -0xffffe6

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x1c

    invoke-static {v1, v7, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static ｋ(Lorg/json/JSONObject;)V
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->c()Lorg/json/JSONObject;

    move-result-object v0

    const/16 v2, 0x21

    if-eqz v0, :cond_18

    const/16 v3, 0x22

    goto :goto_1a

    :cond_18
    const/16 v3, 0x21

    :goto_1a
    if-eq v3, v2, :cond_1f

    invoke-static {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->ﾇ(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_1f
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    add-int/lit8 p0, p0, 0xf

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g:I

    rem-int/lit8 p0, p0, 0x2

    const/4 v0, 0x1

    if-nez p0, :cond_2e

    const/4 p0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p0, 0x0

    :goto_2f
    if-eq p0, v0, :cond_32

    return-void

    :cond_32
    :try_start_32
    throw v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    :catchall_33
    move-exception p0

    throw p0

    :cond_35
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->c()Lorg/json/JSONObject;

    :try_start_38
    throw v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_39

    :catchall_39
    move-exception p0

    throw p0
.end method

.method public static ﾇ(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 10

    const-string v0, ""

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_4
    invoke-static {v0}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x69

    invoke-static {v0, v2}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0xb

    invoke-static {v2}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x14

    shr-int/lit8 v5, v5, 0x6

    rsub-int/lit8 v5, v5, 0x24

    const-string v6, "\u0019\u000c\u0017\uffd5\u000b\u0010\u0016\u0019\u000b\u0015\u0008\uffec\ufffb\uffe8\ufffb\ufffa\u0006\ufff0\uffed\ufff0\ufffe\u0006\ufffa\ufffa\uffec\uffea\uffea\uffe8\uffd5\u0015\u0016\u0010\u001a\u001a\u0010\u0014"

    invoke-static {v3, v1, v4, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->e(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/js;->ﻐ(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_e5

    if-eqz v3, :cond_2c

    const/4 v3, 0x0

    goto :goto_2d

    :cond_2c
    const/4 v3, 0x1

    :goto_2d
    if-eq v3, v1, :cond_e4

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g:I

    add-int/lit8 v3, v3, 0x1d

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    rem-int/lit8 v3, v3, 0x2

    :try_start_39
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    rsub-int/lit8 v3, v3, 0x14

    int-to-byte v3, v3

    const-string v5, "\u0005\u0002\u0019\u0007"

    const/16 v6, 0x30

    invoke-static {v0, v6, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x3

    invoke-static {v3, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int v3, v3, 0x80

    invoke-static {v2, v2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v5

    add-int/2addr v5, v1

    const v6, -0xfffffc

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    sub-int/2addr v6, v7

    const-string v7, "\u0006\u0003\u0002\ufff5"

    invoke-static {v3, v1, v5, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->e(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v5

    invoke-virtual {p1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v3

    sget-object v5, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    const/16 v6, 0x56

    if-ne v3, v5, :cond_92

    const/16 v3, 0x47

    goto :goto_94

    :cond_92
    const/16 v3, 0x56

    :goto_94
    if-eq v3, v6, :cond_e4

    invoke-static {v2, v4, v4}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v3

    cmpl-float v3, v3, v4

    add-int/lit8 v3, v3, 0x1b

    int-to-byte v3, v3

    const-string v5, "\u0001\u0016\u000c\u0003"

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    rsub-int/lit8 v6, v6, 0x4

    invoke-static {v3, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    invoke-virtual {p1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {v2}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v3

    cmpl-float v3, v3, v4

    rsub-int/lit8 v3, v3, 0x78

    int-to-byte v3, v3

    const-string v4, "\u0001\u0016\u0001\u0018"

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    rsub-int/lit8 v5, v5, 0x4

    invoke-static {v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result p0

    invoke-virtual {p1, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_da
    .catchall {:try_start_39 .. :try_end_da} :catchall_e5

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    add-int/lit8 p0, p0, 0x3f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g:I

    rem-int/lit8 p0, p0, 0x2

    :cond_e4
    return-void

    :catchall_e5
    move-exception p0

    invoke-static {v0}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x32

    int-to-byte p1, p1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0xb

    const-string v3, "\t\u0002\u0007\u0003\t\u0004\u0006\u0011\u0007\u0013\u00a6"

    invoke-static {p1, v3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x6d

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1f

    const-string v4, "\u0014\uffe7\u0016\u0010\u0007\u0018\u0007\uffc2\u0011\u0016\uffc2\u0011\u0008\u0010\u000b\uffc2\u000b\u0008\u000b\u0019\uffc2\t\u0010\u000b\u0006\u0006\u0003\uffc2\u0014\u0011\u0014"

    invoke-static {v0, v1, v3, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->e(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static ﾇ(Landroid/content/Intent;)V
    .registers 14

    const-string v0, "\u0004\u0006\u0013\u000fk"

    const-string v1, "\u000f\u0001\u000f\t\u00a9"

    const-string v2, "\u001f\u0013\u001d\u0017\u000f\u0005{"

    const-string v3, ""

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const/16 v5, 0x2b

    const/16 v6, 0x17

    if-eqz p0, :cond_16

    const/16 v7, 0x2b

    goto :goto_18

    :cond_16
    const/16 v7, 0x17

    :goto_18
    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v7, v6, :cond_16f

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    add-int/2addr v7, v5

    rem-int/lit16 v5, v7, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g:I

    rem-int/lit8 v7, v7, 0x2

    const-wide/16 v10, 0x0

    :try_start_27
    invoke-static {v3}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x17

    int-to-byte v5, v5

    invoke-static {v3, v3, v9}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v7

    add-int/lit8 v7, v7, 0x7

    invoke-static {v5, v2, v7}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_44

    const/4 v5, 0x1

    goto :goto_45

    :cond_44
    const/4 v5, 0x0

    :goto_45
    const/4 v7, -0x1

    if-eqz v5, :cond_61

    invoke-static {v9, v9}, Landroid/view/View;->getDefaultSize(II)I

    move-result v5

    sub-int/2addr v6, v5

    int-to-byte v5, v6

    invoke-static {v10, v11}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v6

    add-int/lit8 v6, v6, 0x7

    invoke-static {v5, v2, v6}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    goto :goto_62

    :cond_61
    const/4 v2, -0x1

    :goto_62
    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x24

    int-to-byte v5, v5

    const-string v6, "\u0018\u0011\u001f\u0013"

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v12

    shr-int/lit8 v12, v12, 0x8

    rsub-int/lit8 v12, v12, 0x4

    invoke-static {v5, v6, v12}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {v3, v9}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x3d

    int-to-byte v2, v2

    invoke-static {v9}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x4

    invoke-static {v2, v1, v5}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2
    :try_end_97
    .catchall {:try_start_27 .. :try_end_97} :catchall_125

    if-eqz v2, :cond_c1

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    add-int/lit8 v2, v2, 0x43

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g:I

    rem-int/lit8 v2, v2, 0x2

    :try_start_a3
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x3d

    int-to-byte v2, v2

    const v5, -0xfffffb

    invoke-static {v9, v9, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v2, v1, v5}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    goto :goto_c2

    :cond_c1
    const/4 v1, -0x1

    :goto_c2
    invoke-static {v3}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x5

    int-to-byte v2, v2

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    invoke-static {v2, v0, v5}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f6

    invoke-static {v9, v9}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    int-to-byte v2, v2

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x5

    invoke-static {v2, v0, v5}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    :cond_f6
    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result p0

    int-to-byte p0, p0

    rsub-int/lit8 p0, p0, 0x7c

    invoke-static {v3}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x3

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v2

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    add-int/lit8 v2, v2, 0x3

    const-string v5, "\ufff4\u0006\ufffe\u0008"

    invoke-static {p0, v9, v0, v2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->e(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    int-to-float v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    int-to-float v1, v7

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v4, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_124
    .catchall {:try_start_a3 .. :try_end_124} :catchall_125

    goto :goto_16f

    :catchall_125
    move-exception p0

    invoke-static {v9, v9}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x33

    int-to-byte v0, v0

    invoke-static {v3, v9, v9}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v1

    add-int/lit8 v1, v1, 0xb

    const-string v2, "\t\u0002\u0007\u0003\t\u0004\u0006\u0011\u0007\u0013\u00a6"

    invoke-static {v0, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v2

    const-string v5, "\u000f\u0010\r\t\u0010\u0011\u0012\t\u0007\u0000\u000b\u0017\u0011\u001c\u0012\u000f\u000f\u0000\u0010\u0015\u0011\u000e\t\u000f\u0001\u000f\u0004\u000c\r\u0006\u000c\"\u0001\u0006\u0000\u001d8"

    cmp-long v6, v2, v10

    rsub-int/lit8 v2, v6, 0x19

    int-to-byte v2, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int/lit8 v3, v3, 0x25

    invoke-static {v2, v5, v3}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_179

    :cond_16f
    :goto_16f
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g:I

    add-int/lit8 p0, p0, 0x51

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    rem-int/lit8 p0, p0, 0x2

    :goto_179
    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->k(Lorg/json/JSONObject;)V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g:I

    add-int/lit8 p0, p0, 0x75

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_189

    goto :goto_18a

    :cond_189
    const/4 v9, 0x1

    :goto_18a
    if-ne v9, v8, :cond_18d

    return-void

    :cond_18d
    const/4 p0, 0x0

    :try_start_18e
    throw p0
    :try_end_18f
    .catchall {:try_start_18e .. :try_end_18f} :catchall_18f

    :catchall_18f
    move-exception p0

    throw p0
.end method

.method public static ﾒ(Landroid/app/Application;)V
    .registers 4

    const/16 v0, 0x5e

    if-eqz p0, :cond_7

    const/16 v1, 0x5e

    goto :goto_9

    :cond_7
    const/16 v1, 0x53

    :goto_9
    const/4 v2, 0x0

    if-eq v1, v0, :cond_d

    goto :goto_25

    :cond_d
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x1

    :goto_1c
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->d(Landroid/content/Context;)V

    if-eqz v0, :cond_35

    :goto_25
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g:I

    add-int/lit8 p0, p0, 0x2d

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_32

    return-void

    :cond_32
    :try_start_32
    throw v2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    :catchall_33
    move-exception p0

    throw p0

    :cond_35
    :try_start_35
    throw v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_36

    :catchall_36
    move-exception p0

    throw p0
.end method

.method public static ﾒ(Lorg/json/JSONObject;)V
    .registers 15

    const-string v0, ""

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    add-int/lit8 v1, v1, 0x2b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_12

    const/4 v1, 0x0

    goto :goto_13

    :cond_12
    const/4 v1, 0x1

    :goto_13
    const-wide/16 v4, 0x0

    if-ne v1, v2, :cond_91

    :try_start_17
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_9c

    const-wide/16 v10, -0x1

    const/16 v12, 0x2e

    cmp-long v13, v1, v10

    if-eqz v13, :cond_2e

    const/16 v10, 0x54

    goto :goto_30

    :cond_2e
    const/16 v10, 0x2e

    :goto_30
    if-eq v10, v12, :cond_86

    sget v10, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    add-int/lit8 v10, v10, 0x2f

    rem-int/lit16 v11, v10, 0x80

    sput v11, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g:I

    rem-int/lit8 v10, v10, 0x2

    :try_start_3c
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v10

    sub-long v1, v10, v1

    long-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    sub-long/2addr v8, v6

    long-to-float v6, v8

    div-float/2addr v2, v6

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x33

    int-to-byte v2, v2

    const-string v6, "\u0000\u0005\u0001\u0018"

    invoke-static {v0}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x3

    invoke-static {v2, v6, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const v0, -0xffffc3

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    const-string v1, "\u0000\u0005\u000e\u001b"

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v6

    cmp-long v2, v6, v4

    rsub-int/lit8 v2, v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_86
    .catchall {:try_start_3c .. :try_end_86} :catchall_9c

    :cond_86
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/jx;->f:I

    add-int/lit8 p0, p0, 0x41

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/jx;->g:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :cond_91
    :try_start_91
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 p0, 0x0

    throw p0
    :try_end_9c
    .catchall {:try_start_91 .. :try_end_9c} :catchall_9c

    :catchall_9c
    move-exception p0

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    rsub-int/lit8 v0, v0, 0x33

    int-to-byte v0, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    rsub-int/lit8 v1, v1, 0xb

    const-string v2, "\t\u0002\u0007\u0003\t\u0004\u0006\u0011\u0007\u0013\u00a6"

    invoke-static {v0, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v1

    const-string v3, "\u000f\u0010\r\t\u0010\u0011\u000f\u0005\u00a1\u00a1\u0002\u0000\u000c\u0011\u0007\u001c\u0016\u0011\u0017\u0003\n\u000c\u0000\u0004\u0010\u0000\t\r\u001c\u000f\u0012\u0005\u0017\u000f\u0092"

    cmp-long v6, v1, v4

    add-int/lit8 v6, v6, 0x2d

    int-to-byte v1, v6

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v6

    cmp-long v2, v6, v4

    rsub-int/lit8 v2, v2, 0x24

    invoke-static {v1, v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
