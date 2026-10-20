###### Class com.ironsource.adqualitysdk.sdk.i.ja.f (com.ironsource.adqualitysdk.sdk.i.ja$f)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ja$f;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ja;->o(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static d:I = 0x21dde890

.field private static e:I = 0x5d

.field private static f:I = 0x5fe662d4

.field private static g:[B = null

.field private static h:[S = null

.field private static i:I = 0x0

.field private static j:I = 0x1


# instance fields
.field private synthetic k:Landroid/view/MotionEvent;

.field private synthetic l:Lcom/ironsource/adqualitysdk/sdk/i/ja;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x5e

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ja$f;->g:[B

    return-void

    :array_a
    .array-data 1
        -0x43t
        0x67t
        -0x61t
        -0x6at
        0x61t
        0x68t
        0x77t
        -0x7ct
        0x68t
        -0x6et
        0x6ct
        -0x6ct
        0x64t
        0x6ft
        0x78t
        -0x7ft
        0x60t
        -0x75t
        0x63t
        0x7et
        -0x73t
        0x6et
        -0x66t
        -0x6at
        0x66t
        0x40t
        -0x2ct
        0x77t
        -0x36t
        -0x15t
        0x22t
        -0x23t
        0x3ft
        -0x21t
        0x29t
        0x29t
        -0x22t
        0x2ft
        0x2ct
        0x20t
        0x6ft
        -0x7ft
        0x23t
        -0x26t
        -0x2bt
        0x2at
        0x21t
        0x6et
        -0x6at
        -0x25t
        0x63t
        -0x80t
        -0x2dt
        0x2at
        0x63t
        -0x70t
        -0x2dt
        -0x3dt
        0x21t
        0x28t
        0x2et
        -0x2et
        -0x21t
        0x7et
        -0x80t
        0x2at
        0x25t
        -0x3dt
        0x3dt
        0x69t
        -0x6ct
        0x29t
        -0x3et
        0x2at
        0x37t
        -0x5bt
        0x63t
        -0x5ct
        -0x4dt
        0x5ct
        -0x49t
        0x5ft
        0x42t
        -0x41t
        -0x5at
        0x16t
        -0x15t
        0x5ct
        0x10t
        -0x9t
        0x5at
        -0x5ct
        0x59t
        0x74t
    .end array-data
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ja;Landroid/view/MotionEvent;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja$f;->l:Lcom/ironsource/adqualitysdk/sdk/i/ja;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja$f;->k:Landroid/view/MotionEvent;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method

.method private static b(IIBSI)Ljava/lang/String;
    .registers 12

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﺙ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ja$f;->e:I

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

    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/ja$f;->g:[B

    if-eqz p0, :cond_21

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/ja$f;->d:I

    add-int/2addr v6, p4

    aget-byte p0, p0, v6

    add-int/2addr p0, v2

    int-to-byte p0, p0

    goto :goto_2a

    :cond_21
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/ja$f;->h:[S

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/ja$f;->d:I

    add-int/2addr v6, p4

    aget-short p0, p0, v6

    add-int/2addr p0, v2

    int-to-short p0, p0

    :cond_2a
    :goto_2a
    if-lez p0, :cond_89

    add-int/2addr p4, p0

    add-int/lit8 p4, p4, -0x2

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ja$f;->d:I

    add-int/2addr p4, v2

    if-eqz v3, :cond_35

    const/4 v4, 0x1

    :cond_35
    add-int/2addr p4, v4

    sput p4, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾇ:I

    sput-byte p2, Lcom/ironsource/adqualitysdk/sdk/i/n;->ｋ:B

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/ja$f;->f:I

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

    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/ja$f;->g:[B

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
    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/ja$f;->h:[S

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
.method public final ﻛ()V
    .registers 19

    move-object/from16 v1, p0

    const-string v2, ""

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ja$f;->j:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ja$f;->i:I

    rem-int/lit8 v0, v0, 0x2

    const v3, -0x21dde843    # -2.920003E18f

    const v4, -0x5fe6628d

    const/16 v5, 0x30

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    :try_start_19
    iget-object v0, v1, Lcom/ironsource/adqualitysdk/sdk/i/ja$f;->k:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v10

    iget-object v0, v1, Lcom/ironsource/adqualitysdk/sdk/i/ja$f;->k:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v10, v11}, Lcom/ironsource/adqualitysdk/sdk/i/jx;->ﻐ(II)Z

    move-result v0

    if-eqz v0, :cond_47

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ie;

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jt;->ﻐ()J

    move-result-wide v12

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jt;->ﾒ()J

    move-result-wide v14

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/ironsource/adqualitysdk/sdk/i/ie;-><init>(IIJJ)V

    iget-object v9, v1, Lcom/ironsource/adqualitysdk/sdk/i/ja$f;->l:Lcom/ironsource/adqualitysdk/sdk/i/ja;

    invoke-static {v9, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ja;->g(Lcom/ironsource/adqualitysdk/sdk/i/ja;Lcom/ironsource/adqualitysdk/sdk/i/ie;)V

    return-void

    :cond_47
    invoke-static {v8}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x5e

    invoke-static {v8}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v12

    cmp-long v9, v12, v6

    sub-int v9, v4, v9

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v12

    shr-int/lit8 v12, v12, 0x8

    add-int/lit8 v12, v12, 0x65

    int-to-byte v12, v12

    const/high16 v13, -0x1000000

    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v14

    sub-int/2addr v13, v14

    int-to-short v13, v13

    const v14, -0x21dde890

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v15

    shr-int/lit8 v15, v15, 0x18

    sub-int/2addr v14, v15

    invoke-static {v0, v9, v12, v13, v14}, Lcom/ironsource/adqualitysdk/sdk/i/ja$f;->b(IIBSI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v12

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    rsub-int/lit8 v12, v12, -0x5e

    const v14, -0x5fe66280

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v15

    shr-int/lit8 v15, v15, 0x10

    add-int/2addr v15, v14

    invoke-static {v8, v13, v13}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v14

    cmpl-float v14, v14, v13

    add-int/lit8 v14, v14, 0x2c

    int-to-byte v14, v14

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v16

    shr-int/lit8 v4, v16, 0x18

    int-to-short v4, v4

    const v16, -0x21dde876

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v17

    cmpl-float v13, v17, v13

    sub-int v13, v16, v13

    invoke-static {v12, v15, v14, v4, v13}, Lcom/ironsource/adqualitysdk/sdk/i/ja$f;->b(IIBSI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v4

    rsub-int/lit8 v4, v4, -0x5e

    const v10, -0x5fe662a7

    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v12

    int-to-byte v12, v12

    add-int/2addr v12, v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    cmp-long v10, v13, v6

    rsub-int/lit8 v10, v10, -0x68

    int-to-byte v10, v10

    invoke-static {v8, v8}, Landroid/view/View;->getDefaultSize(II)I

    move-result v13

    int-to-short v13, v13

    const v14, -0x21dde845    # -2.9200024E18f

    invoke-static {v8, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v15

    add-int/2addr v15, v14

    invoke-static {v4, v12, v10, v13, v15}, Lcom/ironsource/adqualitysdk/sdk/i/ja$f;->b(IIBSI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    cmp-long v4, v10, v6

    add-int/lit8 v4, v4, -0x5f

    const v10, -0x5fe66256

    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v11

    add-int/2addr v11, v10

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v10

    shr-int/lit8 v10, v10, 0x10

    add-int/lit8 v10, v10, -0x1e

    int-to-byte v10, v10

    invoke-static {v2, v5, v8, v8}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    int-to-short v12, v12

    invoke-static {v8}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v13

    add-int/lit8 v13, v13, 0x14

    shr-int/lit8 v13, v13, 0x6

    sub-int v13, v3, v13

    invoke-static {v4, v11, v10, v12, v13}, Lcom/ironsource/adqualitysdk/sdk/i/ja$f;->b(IIBSI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_128
    .catchall {:try_start_19 .. :try_end_128} :catchall_143

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ja$f;->i:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ja$f;->j:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0x52

    if-nez v0, :cond_139

    const/16 v0, 0x52

    goto :goto_13b

    :cond_139
    const/16 v0, 0xf

    :goto_13b
    if-eq v0, v2, :cond_13e

    return-void

    :cond_13e
    const/4 v0, 0x0

    :try_start_13f
    throw v0
    :try_end_140
    .catchall {:try_start_13f .. :try_end_140} :catchall_140

    :catchall_140
    move-exception v0

    move-object v2, v0

    throw v2

    :catchall_143
    move-exception v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    rsub-int/lit8 v4, v4, -0x5e

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v9

    shr-int/lit8 v9, v9, 0x10

    const v10, -0x5fe6628d

    sub-int v9, v10, v9

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v10

    shr-int/lit8 v10, v10, 0x10

    rsub-int/lit8 v10, v10, 0x65

    int-to-byte v10, v10

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v11

    shr-int/lit8 v11, v11, 0x10

    int-to-short v11, v11

    const v12, -0x21dde891

    invoke-static {v2, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v13

    sub-int/2addr v12, v13

    invoke-static {v4, v9, v10, v11, v12}, Lcom/ironsource/adqualitysdk/sdk/i/ja$f;->b(IIBSI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v9

    shr-int/lit8 v9, v9, 0x8

    rsub-int/lit8 v9, v9, -0x5e

    const v10, -0x5fe6628e

    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v6

    add-int/2addr v6, v10

    invoke-static {v8, v8}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v7

    rsub-int/lit8 v7, v7, 0x59

    int-to-byte v7, v7

    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v10

    int-to-short v10, v10

    invoke-static {v2, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v2

    sub-int/2addr v3, v2

    invoke-static {v9, v6, v7, v10, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ja$f;->b(IIBSI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0, v8}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method
