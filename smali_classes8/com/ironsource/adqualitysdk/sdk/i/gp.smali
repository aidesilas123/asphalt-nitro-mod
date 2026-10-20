###### Class com.json.adqualitysdk.sdk.i.gp (com.ironsource.adqualitysdk.sdk.i.gp)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/gp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/gd;


# static fields
.field private static a:I = 0x5f

.field private static b:I = 0x0

.field private static c:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/gp;->a:I

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
.method public final ﻐ()Ljava/lang/Class;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/gp;->c:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/gp;->b:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x11

    if-eqz v0, :cond_11

    const/16 v0, 0x11

    goto :goto_13

    :cond_11
    const/16 v0, 0x14

    :goto_13
    if-eq v0, v1, :cond_18

    const-class v0, Lnet/pubnative/lite/sdk/HyBid;

    return-object v0

    :cond_18
    const-class v0, Lnet/pubnative/lite/sdk/HyBid;

    const/4 v0, 0x0

    :try_start_1b
    throw v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1c

    :catchall_1c
    move-exception v0

    throw v0
.end method

.method public final ﻛ()Ljava/lang/String;
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/gp;->b:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/gp;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    rsub-int v1, v1, 0xbf

    const-string v2, ""

    invoke-static {v2, v2, v0, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, 0x1c

    const-string v4, "\uffce\u0013\u0004\u000b\uffce\uffe8\u0019\uffe2\t\u0004\u000e\u0005\u0014\uffce\u0010\u0015\u0002\u000e\u0001\u0014\t\u0016\u0005\uffce\u000c\t\u0014\u0005"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/gp;->a(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/gp;->b:I

    add-int/lit8 v1, v1, 0x61

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/gp;->c:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public final ｋ()Lcom/ironsource/adqualitysdk/sdk/i/iw$e;
    .registers 12

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/iw$e;

    const-string v1, ""

    invoke-static {v1}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v1

    add-int/lit16 v1, v1, 0xc9

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v2

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-string v8, "\ufff8\u000b\u0000\r\ufffc\ufffa\u0006\u0005\u0005\ufffc\ufffa\u000b\u0006\t\n\uffc6\u0007\u000c\ufff9\u0005"

    const-string v9, "\u0006\uffff\ufffd"

    cmp-long v10, v2, v5

    add-int/lit8 v10, v10, 0x4

    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x14

    invoke-static {v1, v7, v10, v2, v8}, Lcom/ironsource/adqualitysdk/sdk/i/gp;->a(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v7, v7}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v2

    add-int/lit16 v2, v2, 0x90

    invoke-static {v7}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    shr-int/lit8 v3, v3, 0x6

    rsub-int/lit8 v3, v3, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    cmp-long v10, v7, v5

    add-int/lit8 v10, v10, 0x2

    invoke-static {v2, v4, v3, v10, v9}, Lcom/ironsource/adqualitysdk/sdk/i/gp;->a(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/iw$e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/gp;->b:I

    add-int/lit8 v1, v1, 0x51

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/gp;->c:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public final ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/az;
    .registers 7

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/bt;

    const/16 v1, 0x30

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    add-int/lit16 v1, v1, 0xcc

    const/4 v4, 0x1

    invoke-static {v2, v3, v3}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    const v5, 0x1000009

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    add-int/2addr v3, v5

    const-string v5, "\ufffd\u0008\ufff5\u0002\ufff6\t\u0004\ufff9\n"

    invoke-static {v1, v4, v2, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/gp;->a(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/bt;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/gp;->c:I

    add-int/lit8 v1, v1, 0x2d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/gp;->b:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x1c

    if-eqz v1, :cond_3a

    const/16 v1, 0x1a

    goto :goto_3c

    :cond_3a
    const/16 v1, 0x1c

    :goto_3c
    if-ne v1, v2, :cond_3f

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

.method public final ﾒ()Ljava/lang/String;
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/gp;->b:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/gp;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    const-string v3, "\ufffd\u0008\ufff5\u0002\ufff6\t\u0004\ufff9\n"

    const-string v4, ""

    if-eqz v0, :cond_33

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v0

    const/4 v5, 0x0

    cmpl-float v0, v0, v5

    add-int/lit16 v0, v0, 0xcb

    const/16 v5, 0x30

    invoke-static {v4, v5, v2, v2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x6

    invoke-static {v2, v2}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x9

    invoke-static {v0, v1, v4, v5, v3}, Lcom/ironsource/adqualitysdk/sdk/i/gp;->a(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4f

    :cond_33
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v0

    const/high16 v5, 0x40000000    # 2.0f

    cmpl-float v0, v0, v5

    add-int/lit16 v0, v0, 0x20a

    const/16 v5, 0x64

    invoke-static {v4, v5, v2, v2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v4

    add-int/lit8 v4, v4, 0x5a

    invoke-static {v1, v1}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x6f

    invoke-static {v0, v2, v4, v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/gp;->a(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4f
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/gp;->b:I

    add-int/lit8 v1, v1, 0x33

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/gp;->c:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v3, 0x21

    if-nez v1, :cond_64

    const/16 v1, 0x43

    goto :goto_66

    :cond_64
    const/16 v1, 0x21

    :goto_66
    if-eq v1, v3, :cond_6e

    const/16 v1, 0x12

    :try_start_6a
    div-int/2addr v1, v2
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_6c

    return-object v0

    :catchall_6c
    move-exception v0

    throw v0

    :cond_6e
    return-object v0
.end method
