###### Class com.json.adqualitysdk.sdk.i.bk (com.ironsource.adqualitysdk.sdk.i.bk)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/bk;
.super Lcom/ironsource/adqualitysdk/sdk/i/az;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adqualitysdk/sdk/i/bk$j;
    }
.end annotation


# static fields
.field private static t:I = 0x36

.field private static u:J = -0x1fa4018754e3b967L

.field private static v:I = 0x0

.field private static w:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/az;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static A(IZIILjava/lang/String;)Ljava/lang/String;
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

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/bk;->t:I

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

.method private static B(Lcom/facebook/ads/AdView;)Ljava/lang/String;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bk;->v:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bk;->w:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/facebook/ads/AdView;->getPlacementId()Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bk;->w:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bk;->v:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x57

    if-eqz v0, :cond_1f

    const/16 v0, 0x18

    goto :goto_21

    :cond_1f
    const/16 v0, 0x57

    :goto_21
    if-eq v0, v1, :cond_2a

    const/16 v0, 0x58

    :try_start_25
    div-int/lit8 v0, v0, 0x0
    :try_end_27
    .catchall {:try_start_25 .. :try_end_27} :catchall_28

    return-object p0

    :catchall_28
    move-exception p0

    throw p0

    :cond_2a
    return-object p0
.end method

.method private static C(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_6
    check-cast p0, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﾇ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sget-wide v1, Lcom/ironsource/adqualitysdk/sdk/i/bk;->u:J

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

    sget-wide v6, Lcom/ironsource/adqualitysdk/sdk/i/bk;->u:J

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

.method static synthetic D(Lcom/facebook/ads/AdView;Lcom/facebook/ads/AdListener;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bk;->w:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bk;->v:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->q(Lcom/facebook/ads/AdView;Lcom/facebook/ads/AdListener;)V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/bk;->w:I

    add-int/lit8 p0, p0, 0x2b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/bk;->v:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    if-nez p0, :cond_1f

    return-void

    :cond_1f
    const/4 p0, 0x0

    :try_start_20
    throw p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_21

    :catchall_21
    move-exception p0

    throw p0
.end method

.method private static k()Ljava/lang/String;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bk;->w:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bk;->v:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x5e

    if-eqz v0, :cond_11

    const/16 v0, 0x4d

    goto :goto_13

    :cond_11
    const/16 v0, 0x5e

    :goto_13
    const-string v2, ""

    const-string v3, "\ub39a\ub3fc\u7953\u3fab\u8546\u0817\u360c\ue5a2\ua99c\u5f39\u22bf\u0be6\u8700\u44af\u44cb\ued50\ufcc4\uaa0a\u597d\uc731\uda5c\u8feb\u73e0\ud89c\u3001\uf563\u940e\ub279\u2d81\udb3b\uaebe\u97e5\u0b6b\uc09f\uc0da\u694e\u60cf\u2662"

    if-eq v0, v1, :cond_28

    const/4 v0, 0x4

    :goto_1a
    invoke-static {v2, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v0

    neg-int v0, v0

    invoke-static {v3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->C(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    :cond_28
    const/16 v0, 0x30

    goto :goto_1a

    :goto_2b
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bk;->w:I

    add-int/lit8 v1, v1, 0x6f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bk;->v:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method private static l()Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bk;->w:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bk;->v:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x17

    if-eqz v0, :cond_11

    const/16 v0, 0x17

    goto :goto_13

    :cond_11
    const/16 v0, 0x4a

    :goto_13
    if-eq v0, v1, :cond_1a

    invoke-static {}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->getDynamicLoader()Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    goto :goto_21

    :cond_1a
    invoke-static {}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->getDynamicLoader()Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    const/4 v1, 0x6

    :try_start_1f
    div-int/lit8 v1, v1, 0x0
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_2c

    :goto_21
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bk;->w:I

    add-int/lit8 v1, v1, 0x4d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bk;->v:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :catchall_2c
    move-exception v0

    throw v0
.end method

.method private static m()Ljava/lang/String;
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bk;->v:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bk;->w:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x16

    if-nez v0, :cond_11

    const/16 v0, 0x31

    goto :goto_13

    :cond_11
    const/16 v0, 0x16

    :goto_13
    const-string v2, "\u0005\ufffa\u000b\ufffe\ufffa\u000c\uffe9\u000e"

    const-string v3, ""

    const/4 v4, 0x0

    if-eq v0, v1, :cond_37

    const/16 v0, 0x5ee3

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    shr-int/2addr v0, v5

    invoke-static {v3, v4, v1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v3

    const/4 v4, 0x3

    ushr-int v3, v4, v3

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    shr-int/2addr v4, v5

    invoke-static {v0, v1, v3, v4, v2}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->A(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_50

    :cond_37
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v0

    rsub-int v0, v0, 0xa1

    invoke-static {v3, v4, v4}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v3

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    rsub-int/lit8 v3, v3, 0x9

    invoke-static {v0, v4, v1, v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->A(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_50
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic n(Lcom/facebook/ads/internal/adapters/AdAdapter;)Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bk;->v:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bk;->w:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->u(Lcom/facebook/ads/internal/adapters/AdAdapter;)Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object p0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bk;->w:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bk;->v:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x3c

    if-eqz v0, :cond_1f

    const/16 v0, 0x3c

    goto :goto_21

    :cond_1f
    const/16 v0, 0xc

    :goto_21
    if-eq v0, v1, :cond_24

    return-object p0

    :cond_24
    const/16 v0, 0x5b

    :try_start_26
    div-int/lit8 v0, v0, 0x0
    :try_end_28
    .catchall {:try_start_26 .. :try_end_28} :catchall_29

    return-object p0

    :catchall_29
    move-exception p0

    throw p0
.end method

.method static synthetic o()Ljava/lang/String;
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bk;->v:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bk;->w:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    const/4 v3, 0x0

    if-ne v0, v2, :cond_2c

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->m()Ljava/lang/String;

    move-result-object v0

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/bk;->v:I

    add-int/lit8 v4, v4, 0x45

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/bk;->w:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_25

    goto :goto_26

    :cond_25
    const/4 v1, 0x1

    :goto_26
    if-ne v1, v2, :cond_29

    return-object v0

    :cond_29
    :try_start_29
    throw v3
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception v0

    throw v0

    :cond_2c
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->m()Ljava/lang/String;

    :try_start_2f
    throw v3
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    :catchall_30
    move-exception v0

    throw v0
.end method

.method static synthetic p(Lcom/facebook/ads/AdView;)Ljava/lang/String;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bk;->w:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bk;->v:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x4d

    if-eqz v0, :cond_11

    const/16 v0, 0x4d

    goto :goto_13

    :cond_11
    const/16 v0, 0x28

    :goto_13
    const/4 v2, 0x0

    if-eq v0, v1, :cond_2f

    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->B(Lcom/facebook/ads/AdView;)Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bk;->v:I

    add-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bk;->w:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_28

    const/4 v0, 0x0

    goto :goto_29

    :cond_28
    const/4 v0, 0x1

    :goto_29
    if-ne v0, v1, :cond_2c

    return-object p0

    :cond_2c
    :try_start_2c
    throw v2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    throw p0

    :cond_2f
    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->B(Lcom/facebook/ads/AdView;)Ljava/lang/String;

    :try_start_32
    throw v2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    :catchall_33
    move-exception p0

    throw p0
.end method

.method private static q(Lcom/facebook/ads/AdView;Lcom/facebook/ads/AdListener;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bk;->w:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bk;->v:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x5d

    if-eqz v0, :cond_11

    const/16 v0, 0x5d

    goto :goto_13

    :cond_11
    const/16 v0, 0x3e

    :goto_13
    invoke-virtual {p0, p1}, Lcom/facebook/ads/AdView;->setAdListener(Lcom/facebook/ads/AdListener;)V

    if-eq v0, v1, :cond_23

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/bk;->w:I

    add-int/lit8 p0, p0, 0x49

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/bk;->v:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :cond_23
    const/4 p0, 0x0

    :try_start_24
    throw p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_25

    :catchall_25
    move-exception p0

    throw p0
.end method

.method private static r(Lcom/facebook/ads/InterstitialAd;Lcom/facebook/ads/InterstitialAdListener;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bk;->v:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bk;->w:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-virtual {p0, p1}, Lcom/facebook/ads/InterstitialAd;->setAdListener(Lcom/facebook/ads/InterstitialAdListener;)V

    if-nez v0, :cond_15

    return-void

    :cond_15
    const/4 p0, 0x0

    :try_start_16
    throw p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_17

    :catchall_17
    move-exception p0

    throw p0
.end method

.method static synthetic s()Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bk;->v:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bk;->w:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->l()Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    const/4 v2, 0x4

    :try_start_17
    div-int/2addr v2, v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_19

    goto :goto_1f

    :catchall_19
    move-exception v0

    throw v0

    :cond_1b
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->l()Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    :goto_1f
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bk;->w:I

    add-int/lit8 v1, v1, 0x7b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bk;->v:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method static synthetic t(Lcom/facebook/ads/Ad;)Ljava/lang/String;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bk;->w:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bk;->v:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->y(Lcom/facebook/ads/Ad;)Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bk;->v:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bk;->w:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    if-eq v0, v1, :cond_21

    return-object p0

    :cond_21
    const/4 p0, 0x0

    :try_start_22
    throw p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_23

    :catchall_23
    move-exception p0

    throw p0
.end method

.method private static u(Lcom/facebook/ads/internal/adapters/AdAdapter;)Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bk;->v:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bk;->w:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    if-ne v0, v1, :cond_17

    invoke-interface {p0}, Lcom/facebook/ads/internal/adapters/AdAdapter;->getPlacementType()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object p0

    return-object p0

    :cond_17
    invoke-interface {p0}, Lcom/facebook/ads/internal/adapters/AdAdapter;->getPlacementType()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    const/4 p0, 0x0

    :try_start_1b
    throw p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1c

    :catchall_1c
    move-exception p0

    throw p0
.end method

.method static synthetic v()Ljava/lang/String;
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bk;->w:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bk;->v:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    if-eqz v0, :cond_18

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    :cond_18
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->k()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x27

    :try_start_1e
    div-int/2addr v3, v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_35

    :goto_1f
    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/bk;->w:I

    add-int/lit8 v3, v3, 0x37

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/bk;->v:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2c

    const/4 v1, 0x0

    :cond_2c
    if-eqz v1, :cond_2f

    return-object v0

    :cond_2f
    const/16 v1, 0xb

    :try_start_31
    div-int/2addr v1, v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_33

    return-object v0

    :catchall_33
    move-exception v0

    throw v0

    :catchall_35
    move-exception v0

    throw v0
.end method

.method static synthetic w(Lcom/ironsource/adqualitysdk/sdk/i/bk;Ljava/util/WeakHashMap;Lcom/ironsource/adqualitysdk/sdk/i/ch;)Ljava/util/WeakHashMap;
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bk;->w:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bk;->v:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    invoke-direct {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->x(Ljava/util/WeakHashMap;Lcom/ironsource/adqualitysdk/sdk/i/ch;)Ljava/util/WeakHashMap;

    move-result-object p0

    if-eq v0, v1, :cond_1d

    const/16 p1, 0xb

    :try_start_19
    div-int/2addr p1, v2
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1b

    goto :goto_1d

    :catchall_1b
    move-exception p0

    throw p0

    :cond_1d
    :goto_1d
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bk;->w:I

    add-int/lit8 p1, p1, 0x33

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/bk;->v:I

    rem-int/lit8 p1, p1, 0x2

    const/16 p2, 0x49

    if-eqz p1, :cond_2e

    const/16 p1, 0x50

    goto :goto_30

    :cond_2e
    const/16 p1, 0x49

    :goto_30
    if-eq p1, p2, :cond_38

    const/16 p1, 0x61

    :try_start_34
    div-int/2addr p1, v2
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_36

    return-object p0

    :catchall_36
    move-exception p0

    throw p0

    :cond_38
    return-object p0
.end method

.method private x(Ljava/util/WeakHashMap;Lcom/ironsource/adqualitysdk/sdk/i/ch;)Ljava/util/WeakHashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/ironsource/adqualitysdk/sdk/i/ch;",
            ")",
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/bk$j;

    invoke-direct {v0, p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/bk$j;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/bk;Ljava/util/WeakHashMap;Lcom/ironsource/adqualitysdk/sdk/i/ch;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bk;->w:I

    add-int/lit8 p1, p1, 0x53

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/bk;->v:I

    rem-int/lit8 p1, p1, 0x2

    return-object v0
.end method

.method private static y(Lcom/facebook/ads/Ad;)Ljava/lang/String;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bk;->v:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bk;->w:I

    rem-int/lit8 v0, v0, 0x2

    invoke-interface {p0}, Lcom/facebook/ads/Ad;->getPlacementId()Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bk;->w:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bk;->v:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method

.method static synthetic z(Lcom/facebook/ads/InterstitialAd;Lcom/facebook/ads/InterstitialAdListener;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bk;->w:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bk;->v:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->r(Lcom/facebook/ads/InterstitialAd;Lcom/facebook/ads/InterstitialAdListener;)V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/bk;->v:I

    add-int/lit8 p0, p0, 0x3f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/bk;->w:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method


# virtual methods
.method final j()Ljava/util/Map;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/adqualitysdk/sdk/i/az$d;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v3

    const-wide/16 v7, 0x0

    const-string v10, ""

    const-string v11, "\ufff3\u0006\u0002\u0014\u0004\u0002\u0011\uffed\t\ufffe\u0000\u0002\n\u0002\u000b\u0011\uffe6\u0001\uffe3\u000f\u000c\n\uffde\u0001"

    const-string v12, "\u0002\u0004\u0001\uffde\n\u000c\u000f\uffe3\u0001\uffe6\u0011\u000b\u0002\n\u0002\u0000\ufffe\t\uffed\u0011"

    const-string v13, "\uffff\r\u000c\uffff\u0008\uffff\u000e\r\u0003\uffe6\ufffe\uffdb\u000e"

    const-string v14, "\u000e\ufffd\u0002\ufffe\u0007\ufffc\ufffe\uffe7\ufffe\r\u0010\u0008\u000b\u0004\uffda\ufffc\r\u0002\u000f\u0002\r\u0012\uffef\u0002\ufffe\u0010\uffed\u0012\t\ufffe\uffe4\ufffe\u0012\u0000\ufffe\r\uffda"

    const-string v15, "\uffff\u0001\u0013\uffff\uffe5\n\u000f\u0005\u000c\ufffb\uffe7\ufffe\u000c\ufffb\uffdd\ufffe\u0008\uffdf\u0013\u000e\u0003\u0010\u0003\u000e\ufffd\uffdb\u0005\u000c\t\u0011\u000e\uffff\uffe8\uffff\ufffd\u0008\uffff\u0003\ufffe\u000f\uffdb\u000e"

    const-string v9, "\u0001\uffe4\ufffc\uffd9\u0004\ufff9\u000c\u0001\u000c\u000b\n\ufffd\u000c\u0006\uffe1\u000c\ufffd\u000b\n\ufffd\u0006\ufffd\u000c\u000b"

    const-string v5, "\u44a9\u44ce\u1d4f\u5bb3\u5432\ud974\u70ff\ua370\u5eb4\u3b20\uf3c5\u4d32\u7008\u20b1\u9584\uab8c\u0be4\uce12\u8809\u81f5"

    const-string v6, "\u0710\u0777\u48f7\u0e0b\u08ac\u85ea\u7426\ua7bd\u1d18\u6e97\uaf59\u49f7\u33b5\u750f\uc938\uaf5a\u4868\u9bb7\ud482\u852f"

    const-string v2, "\u40c0\u40a3\ud84d\u9ea6\u0889\u85de\u3056\ue3fc\u5ad0\ufe3e\uaf4b\u0d91\u7446\ue5a6\uc907\ueb06\u0f9a\u0b06\ud496\uc16f\u2907\u2eea\ufe2a\udecc\uc37c\u544a\u19dc\ub42b\uded5\u7a36\u2373"

    move-object/from16 v18, v2

    cmp-long v2, v3, v7

    rsub-int v2, v2, 0x98

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v17

    const/16 v16, 0x0

    cmpl-float v17, v17, v16

    add-int/lit8 v7, v17, 0x17

    invoke-static {v2, v3, v4, v7, v11}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->A(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/bk$b;

    invoke-direct {v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/bk$b;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/bk;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v2

    int-to-byte v2, v2

    rsub-int v2, v2, 0x98

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int/lit8 v3, v3, 0x2

    const/16 v4, 0x30

    const/4 v7, 0x0

    invoke-static {v10, v4, v7, v7}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v8

    rsub-int/lit8 v4, v8, 0x13

    const/4 v8, 0x1

    invoke-static {v2, v8, v3, v4, v12}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->A(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/bk$e;

    invoke-direct {v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/bk$e;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/bk;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10, v7, v7}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v2

    rsub-int v2, v2, 0x9c

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, 0x2

    invoke-static {v7}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v11

    const-wide/16 v7, 0x0

    cmp-long v4, v11, v7

    rsub-int/lit8 v4, v4, 0xd

    const/4 v11, 0x1

    invoke-static {v2, v11, v3, v4, v13}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->A(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/bk$f;

    invoke-direct {v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/bk$f;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/bk;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v2

    rsub-int v2, v2, 0x9c

    invoke-static {v7, v8}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x20

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    rsub-int/lit8 v4, v4, 0x25

    const/4 v7, 0x0

    invoke-static {v2, v7, v3, v4, v14}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->A(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/bk$d;

    invoke-direct {v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/bk$d;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/bk;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v7, v2, v2}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v3

    cmpl-float v2, v3, v2

    add-int/lit16 v2, v2, 0x9c

    const/16 v3, 0x30

    invoke-static {v10, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    invoke-static {v10, v3, v7, v7}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x29

    const/4 v8, 0x1

    invoke-static {v2, v8, v4, v3, v15}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->A(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/bk$c;

    invoke-direct {v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/bk$c;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/bk;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v2

    const-wide/16 v7, 0x0

    cmp-long v4, v2, v7

    rsub-int v2, v4, 0x9e

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    rsub-int/lit8 v3, v3, 0x12

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/lit8 v4, v4, 0x18

    const/4 v7, 0x1

    invoke-static {v2, v7, v3, v4, v9}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->A(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/bk$i;

    invoke-direct {v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/bk$i;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/bk;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v2

    neg-int v2, v2

    invoke-static {v5, v2}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->C(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/bk$g;

    invoke-direct {v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/bk$g;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/bk;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v2

    int-to-byte v2, v2

    neg-int v2, v2

    invoke-static {v6, v2}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->C(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/bk$h;

    invoke-direct {v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/bk$h;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/bk;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v3

    neg-int v3, v3

    move-object/from16 v4, v18

    invoke-static {v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->C(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/bk$a;

    invoke-direct {v4, v1}, Lcom/ironsource/adqualitysdk/sdk/i/bk$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/bk;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/bk;->v:I

    add-int/lit8 v3, v3, 0x4f

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/bk;->w:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_163

    goto :goto_164

    :cond_163
    const/4 v2, 0x1

    :goto_164
    if-eqz v2, :cond_167

    return-object v0

    :cond_167
    const/4 v0, 0x0

    :try_start_168
    throw v0
    :try_end_169
    .catchall {:try_start_168 .. :try_end_169} :catchall_169

    :catchall_169
    move-exception v0

    move-object v2, v0

    throw v2
.end method

.method final ｋ(Ljava/lang/String;)Ljava/lang/Class;
    .registers 21

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/16 v4, 0x47

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/16 v8, 0x14

    const/16 v10, 0x8

    const/16 v11, 0x16

    const/16 v12, 0xf

    const/16 v13, 0x30

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x2

    const-string v1, ""

    const/16 v18, 0x10

    const/4 v3, 0x1

    const/4 v9, 0x0

    sparse-switch v2, :sswitch_data_402

    goto/16 :goto_3aa

    :sswitch_25
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    const-string v5, "\u1776\u1738\u9c11\udae9\uce49\u430f\uce0c\u1dae\u0d64\uba71\u699e\uf3e5"

    cmp-long v6, v1, v3

    invoke-static {v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->C(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3aa

    const/16 v1, 0x11

    goto/16 :goto_3ab

    :sswitch_41
    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v3

    const-string v2, "\ua33b\ua375\u5189\u1771\u3849\ub50f\ud591\u0633\ub929\u77e9\u9f9e\ue878\u97a5\u6c79\uf9d6\u0ed7"

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->C(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3aa

    const/16 v1, 0x12

    goto/16 :goto_3ab

    :sswitch_5a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-string v3, "\u0016\u0005\uffe1\u0004\uffe2\u0001\u0013\u0005\uffee\u0001\u0014\t"

    cmp-long v4, v1, v15

    add-int/lit16 v4, v4, 0x95

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    sub-int/2addr v10, v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    rsub-int/lit8 v1, v1, 0xc

    invoke-static {v4, v9, v10, v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->A(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3aa

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bk;->v:I

    add-int/lit8 v1, v0, 0x17

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bk;->w:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_90

    const/16 v1, 0x2e

    goto :goto_92

    :cond_90
    const/16 v1, 0xf

    :goto_92
    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bk;->w:I

    rem-int/lit8 v0, v0, 0x2

    goto/16 :goto_3ab

    :sswitch_9c
    invoke-static {v1, v13, v9}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v2

    rsub-int v2, v2, 0x95

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x2

    invoke-static {v1, v9}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v1

    sub-int/2addr v5, v1

    const-string v1, "\u0004\uffe1\u0017\u0005\t\ufff6"

    invoke-static {v2, v3, v4, v5, v1}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->A(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    goto :goto_bf

    :cond_be
    const/4 v3, 0x0

    :goto_bf
    if-eqz v3, :cond_3aa

    const/4 v1, 0x4

    goto/16 :goto_3ab

    :sswitch_c4
    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    rsub-int v1, v1, 0x94

    invoke-static/range {v15 .. v16}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v2

    sub-int/2addr v12, v2

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x17

    const-string v3, "\u0004\u0011\u0011\r\uffd0\u0003\u0006\u0015\uffd0\uffe3\u0006\ufff8\u000b\u0007\u0019\u0005\u0011\u000f\uffd0\u0008\u0003\u0005\u0007"

    invoke-static {v1, v9, v12, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->A(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ea

    const/16 v0, 0x2e

    goto :goto_ec

    :cond_ea
    const/16 v0, 0x47

    :goto_ec
    if-eq v0, v4, :cond_3aa

    const/4 v1, 0x5

    goto/16 :goto_3ab

    :sswitch_f1
    invoke-static {v9, v9}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    sub-int/2addr v3, v1

    const-string v1, "\u683e\u6870\uae7a\ue882\u1072\u9d34\u79f5\uaa57\u722c\u881a\ub7a6\u4419\u5c98\u938d\ud1ed\ua2b6\u2753\u7d23"

    invoke-static {v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->C(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3aa

    const/16 v1, 0x10

    goto/16 :goto_3ab

    :sswitch_10a
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v1

    shr-int/2addr v1, v10

    rsub-int/lit8 v1, v1, 0x1

    const-string v2, "\u6022\u6063\uca9d\u8c60\u81df\u0cac\ue0dd\u3372\u7a27\ueced\u263d\udd38\u5498"

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->C(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3aa

    const/4 v1, 0x1

    goto/16 :goto_3ab

    :sswitch_124
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    const-string v5, "\ud492\ud4c6\u2427\u62fc\uffb1\u72cd\u1764\uc4ce\uce82\u0268\u5851\u2a84\ue01b\u19f9\u3e1c\ucc38\u9bdf\uf752\u23a7\ue658\ubd71\ud2bd\u093e\uf9f4\u5716"

    cmp-long v6, v1, v3

    invoke-static {v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->C(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3aa

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bk;->v:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bk;->w:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x15

    goto/16 :goto_3ab

    :sswitch_14a
    invoke-static {v9, v9}, Landroid/view/View;->getDefaultSize(II)I

    move-result v1

    add-int/lit16 v1, v1, 0x9a

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    add-int/2addr v2, v7

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v5

    shr-int/2addr v5, v10

    add-int/lit8 v5, v5, 0xa

    const-string v6, "\u0005\uffe8\u0000\uffdd\u000e\u0001\n\u0001\u0010\u000f"

    invoke-static {v1, v3, v2, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->A(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16d

    goto :goto_16f

    :cond_16d
    const/16 v4, 0x1c

    :goto_16f
    const/16 v0, 0x1c

    if-eq v4, v0, :cond_3aa

    const/4 v1, 0x3

    goto/16 :goto_3ab

    :sswitch_176
    invoke-static {v9, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    rsub-int v2, v2, 0x9c

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v3

    add-int/2addr v3, v5

    invoke-static {v1, v13, v9}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    add-int/2addr v1, v8

    const-string v4, "\u000c\t\u0006\u0006\uffff\u000c\uffde\u0003\r\n\u0006\ufffb\u0013\uffdb\ufffe\uffdd\t\u0008\u000e"

    invoke-static {v2, v9, v3, v1, v4}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->A(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_198

    const/16 v6, 0x23

    :cond_198
    const/16 v0, 0x23

    if-eq v6, v0, :cond_19e

    goto/16 :goto_3aa

    :cond_19e
    const/4 v1, 0x7

    goto/16 :goto_3ab

    :sswitch_1a1
    invoke-static {v1, v1, v9, v9}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v1

    sub-int/2addr v3, v1

    const-string v1, "\ue34c\ue30d\u9fb0\ud95c\uf107\u7c51\u7224\ua186\uf94d\ub9cf\u56f2\u4fcc\ud7ca\ua258\u3089\ua962\uac0f\u4ceb\u2d32\u8330\u8abf\u6901\u07ac\u9cab\u60d1\u13a5\ue058"

    invoke-static {v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->C(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3aa

    const/16 v1, 0xc

    goto/16 :goto_3ab

    :sswitch_1ba
    invoke-static {v1, v13, v9}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    neg-int v1, v1

    const-string v2, "\u3fc7\u3f86\ub5d0\uf32d\u15e2\u9895\ub19f\u6226\u25d1\u93bf\ub206"

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->C(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d2

    const/16 v0, 0x2d

    goto :goto_1d4

    :cond_1d2
    const/16 v0, 0x22

    :goto_1d4
    const/16 v1, 0x22

    if-eq v0, v1, :cond_3aa

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bk;->v:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bk;->w:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    goto/16 :goto_3ab

    :sswitch_1e5
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/lit16 v2, v2, 0x9a

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v4

    const-string v5, "\ufffd\uffff\u000b\uffe8\u000e\u0001\u0003\ufffd\n\ufffd\uffe9\u0010\u000f\ufffd\uffff\u0000\ufffd\u000b\u000e\uffde\u0008"

    cmpl-float v4, v4, v14

    sub-int/2addr v6, v4

    invoke-static {v1, v9, v9}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v1

    add-int/lit8 v1, v1, 0x15

    invoke-static {v2, v3, v6, v1, v5}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->A(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3aa

    const/16 v1, 0x16

    goto/16 :goto_3ab

    :sswitch_20e
    const v1, 0x1000001

    invoke-static {v9, v9, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    add-int/2addr v2, v1

    const-string v1, "\u28e0\u28a9\uc6f5\u8002\u7195\ufcd3\ub081\u632f\u32f6\ue08c\ud677\u8d69\u1c5c\ufb0a\ub00e\u6bd0\u678d\u15a3"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->C(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_227

    goto :goto_228

    :cond_227
    const/4 v3, 0x0

    :goto_228
    if-eqz v3, :cond_3aa

    const/16 v1, 0x9

    goto/16 :goto_3ab

    :sswitch_22e
    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    add-int/lit16 v1, v1, 0x9a

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v2

    shr-int/2addr v2, v10

    rsub-int/lit8 v2, v2, 0xf

    invoke-static {v9, v9}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v3

    sub-int/2addr v12, v3

    const-string v3, "\uffdd\u0000\uffec\u0008\ufffd\uffff\u0001\t\u0001\n\u0010\ufff0\u0015\u000c\u0001"

    invoke-static {v1, v9, v2, v12, v3}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->A(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3aa

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bk;->v:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bk;->w:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x6

    goto/16 :goto_3ab

    :sswitch_25d
    invoke-static {v1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    rsub-int v1, v1, 0x88

    invoke-static/range {v15 .. v16}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v2

    neg-int v2, v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    shr-int/2addr v4, v11

    rsub-int/lit8 v4, v4, 0x2

    const-string v5, "\u0012\uffef"

    invoke-static {v1, v9, v2, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->A(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_280

    goto :goto_281

    :cond_280
    const/4 v3, 0x0

    :goto_281
    if-eqz v3, :cond_3aa

    const/4 v1, 0x0

    goto/16 :goto_3ab

    :sswitch_286
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    sub-int/2addr v3, v1

    const-string v1, "\u1bd3\u1b81\u06cd\u4031\uc396\u4ed3\uda00\u09aa\u01c5\u20a8\u6465\ue7e1\u2f4d\u3b39\u0208\u015c\u5490\ud5b5\u1fac"

    invoke-static {v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->C(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3aa

    const/16 v1, 0xb

    goto/16 :goto_3ab

    :sswitch_2a1
    invoke-static {v9, v9}, Landroid/view/View;->getDefaultSize(II)I

    move-result v1

    rsub-int v1, v1, 0x9d

    invoke-static {v14, v14}, Landroid/graphics/PointF;->length(FF)F

    move-result v2

    const-string v4, "\ufffe\r\u0007\uffe2\u000b\ufffe\u0007\ufffe\r\u000c\u0002\uffe5\ufffd\uffda\u0005\ufffa\u0002\r\u0002\r\u000c\u000b"

    cmpl-float v2, v2, v14

    add-int/2addr v2, v7

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    shr-int/2addr v5, v11

    sub-int/2addr v11, v5

    invoke-static {v1, v3, v2, v11, v4}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->A(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c5

    const/4 v9, 0x1

    :cond_2c5
    if-eq v9, v3, :cond_2c9

    goto/16 :goto_3aa

    :cond_2c9
    const/16 v1, 0x8

    goto/16 :goto_3ab

    :sswitch_2cd
    const v1, -0xffff65

    invoke-static {v9, v9, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x10

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/2addr v3, v8

    const-string v4, "\u0008\u0004\ufffe\uffe7\n\ufffc\uffff\u0000\r\uffe1\ufffc\ufffe\u000f\n\r\u0014\uffdf\u0014\t\ufffc"

    invoke-static {v1, v9, v2, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->A(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3aa

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bk;->w:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bk;->v:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    goto/16 :goto_3ab

    :sswitch_302
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    rsub-int v1, v1, 0x9e

    invoke-static {v9, v14, v14}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v2

    const-string v4, "\ufffd\u0001\uffee\u000b\u000b\ufffd\n\uffff\u0007\n\uffe8\n\ufff9\u0004\r\ufffb\n\u0001\uffdb\u000f"

    cmpl-float v2, v2, v14

    const/16 v5, 0x13

    rsub-int/lit8 v2, v2, 0x13

    invoke-static {v9, v9}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v6

    cmp-long v9, v6, v15

    rsub-int/lit8 v9, v9, 0x13

    invoke-static {v1, v3, v2, v9, v4}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->A(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3aa

    const/16 v1, 0x14

    goto/16 :goto_3ab

    :sswitch_330
    invoke-static {v1, v9}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v2

    rsub-int v2, v2, 0x99

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x12

    invoke-static {v1, v13, v9, v9}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x27

    const-string v4, "\u000b\u0000\u0002\uffeb\u0002\u0011\u0014\u000c\u000f\u0008\uffde\u0000\u0011\u0006\u0013\u0006\u0011\u0016\u0000\u000c\n\uffcb\u0003\ufffe\u0000\u0002\uffff\u000c\u000c\u0008\uffcb\ufffe\u0001\u0010\uffcb\uffde\u0012\u0001\u0006\u0002"

    invoke-static {v2, v9, v3, v1, v4}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->A(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3aa

    const/16 v1, 0xd

    goto :goto_3ab

    :sswitch_355
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v1

    const-string v3, "\u0005\u0000\u0001\u000b\uffdd\u0000\uffe8\u0005\u000f\u0010\u0001\n\u0001\u000e\uffee\u0001\u0013\ufffd\u000e\u0000\u0001\u0000\ufff2"

    cmp-long v4, v1, v15

    add-int/lit16 v4, v4, 0x99

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/16 v2, 0xe

    add-int/2addr v1, v2

    invoke-static/range {v15 .. v16}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v2

    sub-int/2addr v11, v2

    invoke-static {v4, v9, v1, v11, v3}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->A(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3aa

    const/16 v1, 0xa

    goto :goto_3ab

    :sswitch_37c
    const/16 v5, 0x13

    invoke-static {v13}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v1

    add-int/lit8 v1, v1, 0x6b

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x10

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v6

    const-string v4, "\r\u0000\t\u0000\u000f\u000e\u0004\uffe7\uffff\uffdc\u0000\u0011\u0004\u000f\ufffc\uffe9"

    cmp-long v8, v6, v15

    add-int/2addr v8, v12

    invoke-static {v1, v3, v2, v8, v4}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->A(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a4

    goto :goto_3a5

    :cond_3a4
    const/4 v9, 0x1

    :goto_3a5
    if-eq v9, v3, :cond_3aa

    const/16 v1, 0x13

    goto :goto_3ab

    :cond_3aa
    :goto_3aa
    const/4 v1, -0x1

    :goto_3ab
    packed-switch v1, :pswitch_data_460

    const/4 v0, 0x0

    return-object v0

    :pswitch_3b0
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/aj;->ﾒ()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :pswitch_3b5
    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/bk$j;

    return-object v0

    :pswitch_3b8
    const-class v0, Lcom/facebook/ads/internal/view/component/CircularProgressView;

    return-object v0

    :pswitch_3bb
    const-class v0, Lcom/facebook/ads/NativeAdListener;

    return-object v0

    :pswitch_3be
    const-class v0, Lcom/facebook/ads/NativeAdView;

    return-object v0

    :pswitch_3c1
    const-class v0, Lcom/facebook/ads/NativeAd;

    return-object v0

    :pswitch_3c4
    const-class v0, Lcom/facebook/ads/NativeBannerAd;

    return-object v0

    :pswitch_3c7
    const-class v0, Lcom/facebook/ads/NativeAdBase;

    return-object v0

    :pswitch_3ca
    const-class v0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;

    return-object v0

    :pswitch_3cd
    const-class v0, Lcom/facebook/ads/AudienceNetworkActivity;

    return-object v0

    :pswitch_3d0
    const-class v0, Lcom/facebook/ads/RewardedVideoAd;

    return-object v0

    :pswitch_3d3
    const-class v0, Lcom/facebook/ads/RewardedVideoAdListener;

    return-object v0

    :pswitch_3d6
    const-class v0, Lcom/facebook/ads/InterstitialAd;

    return-object v0

    :pswitch_3d9
    const-class v0, Lcom/facebook/ads/InterstitialAdListener;

    return-object v0

    :pswitch_3dc
    const-class v0, Lcom/facebook/ads/internal/DisplayAdController;

    return-object v0

    :pswitch_3df
    const-class v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0

    :pswitch_3e2
    const-class v0, Lcom/facebook/ads/AdView;

    return-object v0

    :pswitch_3e5
    const-class v0, Lcom/facebook/ads/AdListener;

    return-object v0

    :pswitch_3e8
    const-class v0, Lcom/facebook/ads/AdError;

    return-object v0

    :pswitch_3eb
    const-class v0, Lcom/facebook/ads/internal/adapters/AdAdapter;

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bk;->w:I

    add-int/lit8 v1, v1, 0x2f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bk;->v:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3fa

    return-object v0

    :cond_3fa
    const/4 v0, 0x0

    :try_start_3fb
    throw v0
    :try_end_3fc
    .catchall {:try_start_3fb .. :try_end_3fc} :catchall_3fc

    :catchall_3fc
    move-exception v0

    move-object v1, v0

    throw v1

    :pswitch_3ff
    const-class v0, Lcom/facebook/ads/Ad;

    return-object v0

    :sswitch_data_402
    .sparse-switch
        -0x7d991e72 -> :sswitch_37c
        -0x5e7ee53c -> :sswitch_355
        -0x5a3cb580 -> :sswitch_330
        -0x4aebd52f -> :sswitch_302
        -0x1de17068 -> :sswitch_2cd
        -0x1db9b59d -> :sswitch_2a1
        -0x64d1e10 -> :sswitch_286
        0x843 -> :sswitch_25d
        0x1140083c -> :sswitch_22e
        0x1315208f -> :sswitch_20e
        0x19fad117 -> :sswitch_1e5
        0x1d1b8b85 -> :sswitch_1ba
        0x1fe88099 -> :sswitch_1a1
        0x2100dde1 -> :sswitch_176
        0x45783e17 -> :sswitch_14a
        0x49bd9a8e -> :sswitch_124
        0x57faf18c -> :sswitch_10a
        0x6d9be5c6 -> :sswitch_f1
        0x71c14cc1 -> :sswitch_c4
        0x7494dd88 -> :sswitch_9c
        0x794ca0ab -> :sswitch_5a
        0x7955d47f -> :sswitch_41
        0x7dc912ba -> :sswitch_25
    .end sparse-switch

    :pswitch_data_460
    .packed-switch 0x0
        :pswitch_3ff
        :pswitch_3eb
        :pswitch_3e8
        :pswitch_3e5
        :pswitch_3e2
        :pswitch_3e2
        :pswitch_3df
        :pswitch_3dc
        :pswitch_3d9
        :pswitch_3d6
        :pswitch_3d3
        :pswitch_3d0
        :pswitch_3cd
        :pswitch_3cd
        :pswitch_3ca
        :pswitch_3c7
        :pswitch_3c4
        :pswitch_3c1
        :pswitch_3be
        :pswitch_3bb
        :pswitch_3b8
        :pswitch_3b5
        :pswitch_3b0
    .end packed-switch
.end method

.method public final ﾇ()Ljava/lang/String;
    .registers 9

    const-class v0, Ljava/lang/String;

    const-string v1, ""

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/bk;->w:I

    add-int/lit8 v2, v2, 0x29

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/bk;->v:I

    rem-int/lit8 v2, v2, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_11
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/hq;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/hj;

    move-result-object v5

    const-class v6, Lcom/facebook/ads/internal/settings/AdSdkVersion;

    invoke-virtual {v5, v6, v0}, Lcom/ironsource/adqualitysdk/sdk/i/hj;->ﾇ(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_11 .. :try_end_25} :catchall_3d

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bk;->v:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bk;->w:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_33

    const/4 v0, 0x0

    goto :goto_34

    :cond_33
    const/4 v0, 0x1

    :goto_34
    if-eq v0, v2, :cond_3c

    const/16 v0, 0x24

    :try_start_38
    div-int/2addr v0, v4
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_3a

    return-object v5

    :catchall_3a
    move-exception v0

    throw v0

    :cond_3c
    return-object v5

    :catchall_3d
    :try_start_3d
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/hq;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/hj;

    move-result-object v5

    const-class v6, Lcom/facebook/ads/internal/settings/AdSdkVersion;

    invoke-virtual {v5, v6, v0}, Lcom/ironsource/adqualitysdk/sdk/i/hj;->ﾇ(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_51
    .catchall {:try_start_3d .. :try_end_51} :catchall_52

    return-object v0

    :catchall_52
    :try_start_52
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/hq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ｋ()Lcom/ironsource/adqualitysdk/sdk/i/hs;

    move-result-object v0

    const-class v5, Lcom/facebook/ads/BuildConfig;

    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v6

    rsub-int v6, v6, 0x82

    invoke-static {v1, v1, v4, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-static {v4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0xb

    const-string v7, "\u0010\u0012\uffde\uffe2\uffdf\u0011\uffe2\u0018\u0010\u000f\u0018"

    invoke-static {v6, v2, v1, v4, v7}, Lcom/ironsource/adqualitysdk/sdk/i/bk;->A(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->ﻐ(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_7c
    .catchall {:try_start_52 .. :try_end_7c} :catchall_7d

    return-object v0

    :catchall_7d
    return-object v3
.end method
