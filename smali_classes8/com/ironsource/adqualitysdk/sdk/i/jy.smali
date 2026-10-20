###### Class com.json.adqualitysdk.sdk.i.jy (com.ironsource.adqualitysdk.sdk.i.jy)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/jy;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Ljava/lang/ref/WeakReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ironsource/adqualitysdk/sdk/i/ba;",
            ">;"
        }
    .end annotation
.end field

.field private static b:J = 0x7db4a6a295adca07L

.field private static c:I = 0x0

.field private static d:C = '\u0000'

.field private static e:I = 0x0

.field private static f:I = 0x1


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

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    const-string v0, ""

    const-string v1, "\uca07\u95ad\ua6a2\u7db4"

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/jy;->f:I

    add-int/lit8 v2, v2, 0x2f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/jy;->e:I

    rem-int/lit8 v2, v2, 0x2

    :try_start_e
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    return-void

    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u6164\u98dc\u3372\u37b7"

    const v3, 0x7298dc61

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5, v4, v4}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v6

    cmpl-float v6, v6, v4

    sub-int/2addr v3, v6

    const v6, 0xb733

    invoke-static {v5, v5}, Landroid/view/View;->resolveSize(II)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-char v6, v6

    const-string v7, "\u5b3a"

    invoke-static {p2, v1, v3, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->b(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6bb8\u24cf\ub86a\u9f1d"

    const v6, 0x6a24cf6a

    const/16 v7, 0x30

    invoke-static {v0, v7, v5}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    int-to-char v7, v7

    const-string v8, "\u6ba6\u7b17\u4751\u0ec2\uc509\ucc65\u9bfa\u8d94\ue618\u8913\ud21d"

    invoke-static {v3, v1, v6, v7, v8}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->b(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u2110\ue12e\u7173\u6e51"

    const v6, 0x73e12e21

    invoke-static {v5, v5}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    rsub-int v7, v7, 0x5171

    int-to-char v7, v7

    const-string v8, "\u53cb\u66ed\u022e\u6758\u974c\ud897\u905b\u95e0\ue1dd\u74e0\u5a94\u70be\u9d3f"

    invoke-static {v3, v1, v6, v7, v8}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->b(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ｋ(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_d9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u02da\u8b63\ua5c5\u2dd1"

    const v6, -0x3a749cff

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v7

    cmpl-float v4, v7, v4

    add-int/2addr v4, v6

    const v6, 0xd1a5

    invoke-static {v5, v5}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-char v6, v6

    const-string v7, "\u6e61"

    invoke-static {v3, v1, v4, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->b(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_cf
    .catchall {:try_start_e .. :try_end_cf} :catchall_fd

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/jy;->f:I

    add-int/lit8 v1, v1, 0x4b

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/jy;->e:I

    rem-int/lit8 v1, v1, 0x2

    :cond_d9
    :try_start_d9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ｋ(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/jy;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/ba;

    if-eqz v0, :cond_ee

    const/4 v5, 0x1

    :cond_ee
    if-eqz v5, :cond_fd

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/ba;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f3
    .catchall {:try_start_d9 .. :try_end_f3} :catchall_fd

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/jy;->e:I

    add-int/lit8 p0, p0, 0x15

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/jy;->f:I

    rem-int/lit8 p0, p0, 0x2

    :catchall_fd
    :cond_fd
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;
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

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/jy;->b:J

    xor-long/2addr v2, v4

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/jy;->c:I

    int-to-long v4, v4

    xor-long/2addr v2, v4

    sget-char v4, Lcom/ironsource/adqualitysdk/sdk/i/jy;->d:C

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

.method private static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .registers 13

    sget p4, Lcom/ironsource/adqualitysdk/sdk/i/jy;->e:I

    add-int/lit8 p4, p4, 0x75

    rem-int/lit16 v0, p4, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/jy;->f:I

    rem-int/lit8 p4, p4, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    :try_start_12
    invoke-static/range {v0 .. v7}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lorg/json/JSONObject;ZZZ)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_2f

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/jy;->f:I

    add-int/lit8 p0, p0, 0x1f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/jy;->e:I

    rem-int/lit8 p0, p0, 0x2

    const/16 p1, 0x2e

    if-eqz p0, :cond_26

    const/16 p0, 0x1a

    goto :goto_28

    :cond_26
    const/16 p0, 0x2e

    :goto_28
    if-ne p0, p1, :cond_2b

    return-void

    :cond_2b
    const/4 p0, 0x0

    :try_start_2c
    throw p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    throw p0

    :catchall_2f
    return-void
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lorg/json/JSONObject;ZZZ)V
    .registers 20

    move-object v1, p0

    const-string v0, ""

    const-string v2, "\uca07\u95ad\ua6a2\u7db4"

    const/4 v3, 0x0

    if-eqz p5, :cond_9d

    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\u6164\u98dc\u3372\u37b7"

    const v6, 0x7298dc62

    invoke-static {v3, v3}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    add-int/2addr v11, v6

    const v6, 0xb733

    invoke-static {v0, v0, v3, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-char v6, v6

    const-string v7, "\u5b3a"

    invoke-static {v5, v2, v11, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->b(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\u7a5c\u0244\u3262\u6365"

    const v8, 0x6202447a

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v9

    shr-int/lit8 v9, v9, 0x10

    sub-int/2addr v8, v9

    invoke-static {v0, v3}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    int-to-char v0, v0

    const-string v9, "\u881c\u0b56\ub57d\u78c3\ufa7f\uc7c0\u9e43"

    invoke-static {v7, v2, v8, v0, v9}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->b(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u4280\ubaa0\u1d12\u8f8e"

    const v7, 0x11baa042

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    sub-int/2addr v7, v8

    const v8, 0x8ded

    const/16 v9, 0x30

    invoke-static {v9}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v9

    add-int/2addr v9, v8

    int-to-char v8, v9

    const-string v9, "\ufc4f"

    invoke-static {v0, v2, v7, v8, v9}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->b(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, p3

    move/from16 v5, p7

    invoke-static {p0, v0, p3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾇ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    :try_end_92
    .catchall {:try_start_8 .. :try_end_92} :catchall_c9

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jy;->e:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/jy;->f:I

    rem-int/lit8 v0, v0, 0x2

    goto :goto_a1

    :cond_9d
    move-object v6, p1

    move-object v5, p2

    move-object v2, p3

    move-object v4, v5

    :goto_a1
    :try_start_a1
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/jy;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/ba;

    const/4 v5, 0x1

    if-eqz v0, :cond_ad

    const/4 v3, 0x1

    :cond_ad
    if-eq v3, v5, :cond_b0

    goto :goto_c9

    :cond_b0
    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, v4

    move-object v4, v5

    move-object/from16 v5, p4

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/ironsource/adqualitysdk/sdk/i/ba;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V
    :try_end_bf
    .catchall {:try_start_a1 .. :try_end_bf} :catchall_c9

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jy;->e:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jy;->f:I

    rem-int/lit8 v0, v0, 0x2

    :catchall_c9
    :goto_c9
    return-void
.end method

.method public static ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jy;->e:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jy;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    :try_start_b
    invoke-static {p0, p1, p2, p3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_27

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/jy;->f:I

    add-int/lit8 p0, p0, 0x3d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/jy;->e:I

    rem-int/lit8 p0, p0, 0x2

    const/4 p1, 0x1

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    if-eq p0, p1, :cond_21

    return-void

    :cond_21
    const/16 p0, 0x5d

    :try_start_23
    div-int/2addr p0, v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception p0

    throw p0

    :catchall_27
    return-void
.end method

.method public static ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jy;->e:I

    const/16 v1, 0x25

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/jy;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    :try_start_c
    invoke-static {p0, p1, p2, p3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ｋ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_25

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/jy;->f:I

    add-int/lit8 p0, p0, 0xd

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/jy;->e:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1c

    const/4 v1, 0x0

    :cond_1c
    if-eqz v1, :cond_1f

    return-void

    :cond_1f
    const/16 p0, 0x45

    :try_start_21
    div-int/2addr p0, v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_23

    return-void

    :catchall_23
    move-exception p0

    throw p0

    :catchall_25
    return-void
.end method

.method public static ｋ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V
    .registers 13

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jy;->f:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jy;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x1b

    if-eqz v0, :cond_11

    const/16 v0, 0x57

    goto :goto_13

    :cond_11
    const/16 v0, 0x1b

    :goto_13
    if-eq v0, v1, :cond_1f

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    :try_start_1b
    invoke-static/range {v2 .. v7}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V

    goto :goto_28

    :cond_1f
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_28

    :catchall_28
    :goto_28
    return-void
.end method

.method public static ﾇ(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 5

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    if-eq v0, v2, :cond_21

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jy;->f:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/jy;->e:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    if-nez v1, :cond_1d

    return-object p0

    :cond_1d
    const/4 p0, 0x0

    :try_start_1e
    throw p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception p0

    throw p0

    :cond_21
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jy;->e:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jy;->f:I

    rem-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public static ﾇ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jy;->e:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jy;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x17

    if-nez v0, :cond_11

    const/16 v0, 0x17

    goto :goto_13

    :cond_11
    const/16 v0, 0x4c

    :goto_13
    if-eq v0, v1, :cond_19

    :try_start_15
    invoke-static {p0, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    :cond_19
    invoke-static {p0, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x50

    div-int/lit8 p0, p0, 0x0
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_20

    :catchall_20
    :goto_20
    return-void
.end method

.method public static ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ba;)V
    .registers 2

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/jy;->a:Ljava/lang/ref/WeakReference;

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/jy;->e:I

    add-int/lit8 p0, p0, 0x73

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/jy;->f:I

    rem-int/lit8 p0, p0, 0x2

    const/4 v0, 0x1

    if-nez p0, :cond_16

    const/4 p0, 0x0

    goto :goto_17

    :cond_16
    const/4 p0, 0x1

    :goto_17
    if-ne p0, v0, :cond_1a

    return-void

    :cond_1a
    const/4 p0, 0x0

    :try_start_1b
    throw p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1c

    :catchall_1c
    move-exception p0

    throw p0
.end method

.method public static ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lorg/json/JSONObject;Z)V
    .registers 15

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jy;->e:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jy;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v8, p5

    :try_start_12
    invoke-static/range {v1 .. v8}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lorg/json/JSONObject;ZZZ)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_2b

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/jy;->e:I

    add-int/lit8 p0, p0, 0x71

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/jy;->f:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_23

    const/4 p0, 0x1

    goto :goto_24

    :cond_23
    const/4 p0, 0x0

    :goto_24
    if-nez p0, :cond_27

    return-void

    :cond_27
    const/4 p0, 0x0

    :try_start_28
    throw p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception p0

    throw p0

    :catchall_2b
    return-void
.end method

.method public static ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V
    .registers 15

    const-string v0, ""

    const-string v1, "\uca07\u95ad\ua6a2\u7db4"

    if-eqz p3, :cond_42

    sget p3, Lcom/ironsource/adqualitysdk/sdk/i/jy;->e:I

    add-int/lit8 p3, p3, 0x67

    rem-int/lit16 v2, p3, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/jy;->f:I

    rem-int/lit8 p3, p3, 0x2

    :try_start_10
    invoke-static {p0, p1, p5}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ｋ(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_81

    const/4 p3, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_19

    const/4 v3, 0x0

    goto :goto_1a

    :cond_19
    const/4 v3, 0x1

    :goto_1a
    if-eq v3, p3, :cond_4f

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/jy;->e:I

    add-int/lit8 v3, v3, 0x33

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/jy;->f:I

    rem-int/lit8 v3, v3, 0x2

    :try_start_26
    const-string v3, "\u7610\u94f8\u7f7d\u6b93"

    const/16 v4, 0x30

    invoke-static {v0, v4, v2, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v4

    add-int/2addr v4, p3

    invoke-static {v0, v2, v2}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result p3

    int-to-char p3, p3

    const-string v0, "\u1830\uadc6\ude5e\ud29c\uff32\uc831\u9516\u7280"

    invoke-static {v3, v1, v4, p3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->b(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3, p2, p5}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾇ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    goto :goto_4f

    :cond_42
    invoke-static {p0, p1, p2, p5}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾇ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    :try_end_45
    .catchall {:try_start_26 .. :try_end_45} :catchall_81

    sget p3, Lcom/ironsource/adqualitysdk/sdk/i/jy;->e:I

    add-int/lit8 p3, p3, 0x17

    rem-int/lit16 v0, p3, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/jy;->f:I

    rem-int/lit8 p3, p3, 0x2

    :cond_4f
    :goto_4f
    :try_start_4f
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5d42\uf85e\ucfd6\u19ca"

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    int-to-char v3, v3

    const-string v4, "\u541e\uccf6\u34e3\u9599\u6f0f\u527a\u39a7\uc83a\u8fbc\u7aa8"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->b(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v7, p4

    move v8, p5

    invoke-static/range {v1 .. v8}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lorg/json/JSONObject;ZZZ)V
    :try_end_81
    .catchall {:try_start_4f .. :try_end_81} :catchall_81

    :catchall_81
    return-void
.end method
