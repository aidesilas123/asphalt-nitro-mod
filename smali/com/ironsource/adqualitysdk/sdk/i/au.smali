###### Class com.json.adqualitysdk.sdk.i.au (com.ironsource.adqualitysdk.sdk.i.au)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/au;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adqualitysdk/sdk/i/au$a;
    }
.end annotation


# static fields
.field private static a:I = 0x19635b10

.field private static b:I = 0x31

.field private static c:I = -0x284f2d62

.field private static d:[B = null

.field private static e:[S = null

.field private static f:I = 0x0

.field private static g:I = 0x1


# instance fields
.field private h:Lcom/ironsource/adqualitysdk/sdk/i/au$a;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x42

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/au;->d:[B

    return-void

    :array_a
    .array-data 1
        -0xbt
        -0x9t
        0x5t
        -0x8t
        0x11t
        0x2t
        -0x17t
        0x13t
        -0x11t
        0x7t
        0xdt
        0x1t
        0x8t
        0x3t
        0x7t
        0x3t
        -0x2t
        0x3t
        -0x8t
        -0x1t
        0x2ct
        -0x22t
        -0x7t
        0xat
        0x1t
        -0x12t
        0xat
        0x25t
        -0x2et
        0x3t
        -0x5t
        0x11t
        -0x2t
        -0x9t
        0x0t
        -0x1t
        0x2ct
        -0x7t
        0xat
        0x1t
        -0x12t
        0xat
        0x25t
        -0x20t
        -0x8t
        -0x9t
        0x6t
        0x7t
        -0xbt
        0x53t
        -0x4et
        0x5t
        0x49t
        -0x52t
        0x3t
        -0x3t
        0x0t
        0x2dt
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

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v0

    rsub-int/lit8 v0, v0, -0x2d

    const/4 v1, 0x0

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const v3, 0x274f2dd6

    sub-int/2addr v3, v2

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/high16 v4, -0x1000000

    sub-int/2addr v4, v2

    int-to-byte v2, v4

    invoke-static {v1}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v4

    int-to-short v4, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v5

    const v6, -0x19635b11

    const/4 v7, 0x0

    const v8, 0x284f2dd7

    const v9, -0x19635b0d

    cmpl-float v5, v5, v7

    add-int/2addr v5, v6

    invoke-static {v0, v3, v2, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/au;->a(IIBSI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/au;->b(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/au;->h:Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, -0x2f

    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v2

    int-to-byte v2, v2

    sub-int/2addr v8, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    invoke-static {v1, v1}, Landroid/view/View;->resolveSize(II)I

    move-result v3

    int-to-short v3, v3

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    sub-int/2addr v9, v1

    invoke-static {v0, v8, v2, v3, v9}, Lcom/ironsource/adqualitysdk/sdk/i/au;->a(IIBSI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/au;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/au;->i:Ljava/util/List;

    return-void
.end method

.method private static a(IIBSI)Ljava/lang/String;
    .registers 12

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﺙ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/au;->b:I

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

    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/au;->d:[B

    if-eqz p0, :cond_21

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/au;->a:I

    add-int/2addr v6, p4

    aget-byte p0, p0, v6

    add-int/2addr p0, v2

    int-to-byte p0, p0

    goto :goto_2a

    :cond_21
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/au;->e:[S

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/au;->a:I

    add-int/2addr v6, p4

    aget-short p0, p0, v6

    add-int/2addr p0, v2

    int-to-short p0, p0

    :cond_2a
    :goto_2a
    if-lez p0, :cond_89

    add-int/2addr p4, p0

    add-int/lit8 p4, p4, -0x2

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/au;->a:I

    add-int/2addr p4, v2

    if-eqz v3, :cond_35

    const/4 v4, 0x1

    :cond_35
    add-int/2addr p4, v4

    sput p4, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾇ:I

    sput-byte p2, Lcom/ironsource/adqualitysdk/sdk/i/n;->ｋ:B

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/au;->c:I

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

    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/au;->d:[B

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
    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/au;->e:[S

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

.method private static b(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/au$a;
    .registers 11

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v2, 0x585239d

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v2, :cond_a1

    const v2, 0x5948c31

    const-string v6, ""

    const-wide/16 v7, 0x0

    if-eq v1, v2, :cond_5e

    const v2, 0x5c74aff

    if-eq v1, v2, :cond_1d

    goto/16 :goto_d9

    :cond_1d
    const/16 v1, 0x30

    invoke-static {v6, v1, v5, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    rsub-int/lit8 v1, v1, -0x2d

    const v2, 0x284f2dc7

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    add-int/2addr v6, v2

    invoke-static {v5, v5}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v2

    int-to-byte v2, v2

    invoke-static {v7, v8}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v7

    int-to-short v7, v7

    const v8, -0x19635b0d

    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v9

    int-to-byte v9, v9

    sub-int/2addr v8, v9

    invoke-static {v1, v6, v2, v7, v8}, Lcom/ironsource/adqualitysdk/sdk/i/au;->a(IIBSI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/16 v1, 0x19

    if-eqz p0, :cond_55

    const/16 p0, 0x19

    goto :goto_57

    :cond_55
    const/16 p0, 0x40

    :goto_57
    if-eq p0, v1, :cond_5b

    goto/16 :goto_d9

    :cond_5b
    const/4 v0, 0x0

    goto/16 :goto_d9

    :cond_5e
    invoke-static {v5, v5}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v1

    cmp-long v9, v1, v7

    add-int/lit8 v9, v9, -0x2b

    const v1, 0x284f2dc4

    invoke-static {v5, v5}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    shr-int/lit8 v1, v1, 0x16

    int-to-byte v1, v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    int-to-short v7, v7

    const v8, -0x19635b05

    invoke-static {v6}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v6

    sub-int/2addr v8, v6

    invoke-static {v9, v2, v1, v7, v8}, Lcom/ironsource/adqualitysdk/sdk/i/au;->a(IIBSI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_93

    goto :goto_94

    :cond_93
    const/4 v5, 0x1

    :goto_94
    if-eq v5, v4, :cond_d9

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/au;->f:I

    add-int/lit8 p0, p0, 0x53

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/au;->g:I

    rem-int/2addr p0, v3

    const/4 v0, 0x2

    goto :goto_d9

    :cond_a1
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    rsub-int/lit8 v1, v1, -0x2c

    const v2, 0x284f2dc3

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    add-int/2addr v6, v2

    const/4 v2, 0x0

    invoke-static {v5, v2, v2}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v5

    cmpl-float v2, v5, v2

    int-to-byte v2, v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    shr-int/lit8 v5, v5, 0x16

    int-to-short v5, v5

    const v7, -0x19635b08

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v8

    shr-int/lit8 v8, v8, 0x18

    sub-int/2addr v7, v8

    invoke-static {v1, v6, v2, v5, v7}, Lcom/ironsource/adqualitysdk/sdk/i/au;->a(IIBSI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d9

    const/4 v0, 0x1

    :cond_d9
    :goto_d9
    if-eqz v0, :cond_f1

    if-eq v0, v4, :cond_ee

    if-eq v0, v3, :cond_eb

    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/au;->f:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/au;->g:I

    rem-int/2addr v0, v3

    return-object p0

    :cond_eb
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    return-object p0

    :cond_ee
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    return-object p0

    :cond_f1
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    return-object p0
.end method

.method private static c(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    if-eq v1, v2, :cond_13

    goto :goto_5d

    :cond_13
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/au;->g:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/au;->f:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, ""

    invoke-static {v0, v0, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    add-int/lit8 v0, v0, -0x30

    const v1, 0x284f2d8e

    invoke-static {v3, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v3}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v1

    rsub-int/lit8 v1, v1, -0x1

    int-to-byte v1, v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    int-to-short v4, v4

    const v5, -0x19635b00

    invoke-static {v3, v3}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v3

    add-int/2addr v3, v5

    invoke-static {v0, v2, v1, v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/au;->a(IIBSI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/au;->f:I

    add-int/lit8 p0, p0, 0x57

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/au;->g:I

    rem-int/lit8 p0, p0, 0x2

    :goto_5d
    return-object v0
.end method


# virtual methods
.method public final ﻐ(Ljava/lang/String;)Z
    .registers 13

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/au;->f:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/au;->g:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_c
    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/au$b;->a:[I

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/au;->h:Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v0, :cond_81

    if-eq v3, v1, :cond_7a

    const/4 v4, 0x3

    if-eq v3, v4, :cond_22

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3a

    goto/16 :goto_f2

    :cond_22
    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/au;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3a

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/au;->i:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jz;->ﾒ(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_39

    return v0

    :cond_39
    return v2

    :cond_3a
    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/au;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_40} :catch_8b

    if-lez v3, :cond_f2

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/au;->f:I

    add-int/lit8 v3, v3, 0x79

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/au;->g:I

    rem-int/2addr v3, v1

    if-nez v3, :cond_61

    :try_start_4d
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/au;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jz;->ﾒ(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_5d

    const/4 p1, 0x1

    goto :goto_5e

    :cond_5d
    const/4 p1, 0x0

    :goto_5e
    if-eqz p1, :cond_79

    goto :goto_78

    :cond_61
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/au;->i:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jz;->ﾒ(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/16 v1, 0x1f

    if-ltz p1, :cond_74

    const/16 p1, 0x34

    goto :goto_76

    :cond_74
    const/16 p1, 0x1f

    :goto_76
    if-eq p1, v1, :cond_79

    :goto_78
    return v0

    :cond_79
    return v2

    :cond_7a
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/au;->i:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_80} :catch_8b

    return p1

    :cond_81
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/au;->g:I

    add-int/lit8 p1, p1, 0x5d

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/au;->f:I

    rem-int/2addr p1, v1

    return v0

    :catch_8b
    move-exception p1

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    rsub-int/lit8 v1, v1, -0x1b

    const v3, 0x284f2da5

    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    shr-int/lit8 v3, v3, 0x16

    int-to-byte v3, v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const-string v9, ""

    cmp-long v10, v5, v7

    sub-int/2addr v0, v10

    int-to-short v0, v0

    const v5, -0x19635b00

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    sub-int/2addr v5, v6

    invoke-static {v1, v4, v3, v0, v5}, Lcom/ironsource/adqualitysdk/sdk/i/au;->a(IIBSI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x30

    invoke-static {v9, v1, v2, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    rsub-int/lit8 v1, v1, -0x1c

    const v3, 0x284f2da7

    invoke-static {v9, v9, v2, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v4

    int-to-byte v4, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    int-to-short v5, v5

    const v6, -0x19635aeb

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v7

    shr-int/lit8 v7, v7, 0x18

    add-int/2addr v7, v6

    invoke-static {v1, v3, v4, v5, v7}, Lcom/ironsource/adqualitysdk/sdk/i/au;->a(IIBSI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_f2
    :goto_f2
    return v2
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.au.a (com.ironsource.adqualitysdk.sdk.i.au$a)
.class final enum Lcom/ironsource/adqualitysdk/sdk/i/au$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/adqualitysdk/sdk/i/au$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/ironsource/adqualitysdk/sdk/i/au$a;

.field private static b:J = 0x0L

.field private static c:I = 0x0

.field private static d:I = 0x1

.field public static final enum ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/au$a;

.field public static final enum ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/au$a;

.field public static final enum ｋ:Lcom/ironsource/adqualitysdk/sdk/i/au$a;

.field public static final enum ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/au$a;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->e()V

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    add-int/lit16 v2, v2, 0x2f27

    const-string v3, "\u7441\u5b6b\u2a02"

    invoke-static {v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/au$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    const-string v3, ""

    invoke-static {v3, v3, v1, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v3

    rsub-int v3, v3, 0x480b

    const-string v4, "\u7441\u3c49\ue459\uac77\u5469"

    invoke-static {v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/au$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v7

    rsub-int v7, v7, 0x905

    const-string v8, "\u7442\u7d40\u6646\u6f40\u5043"

    invoke-static {v8, v7}, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-direct {v3, v7, v8}, Lcom/ironsource/adqualitysdk/sdk/i/au$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    new-instance v7, Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    const v9, 0xcd3c

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v10

    const/4 v12, 0x3

    const-string v13, "\u7445\ub965\uee3b\u13f4\u40a0"

    cmp-long v14, v10, v5

    add-int/2addr v14, v9

    invoke-static {v13, v14}, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5, v12}, Lcom/ironsource/adqualitysdk/sdk/i/au$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    aput-object v0, v5, v1

    aput-object v2, v5, v4

    aput-object v3, v5, v8

    aput-object v7, v5, v12

    sput-object v5, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->a:[Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->d:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->c:I

    rem-int/2addr v0, v8

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_6
    check-cast p0, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﻛ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ｋ:I

    array-length p1, p0

    new-array p1, p1, [C

    const/4 v1, 0x0

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﾒ:I

    :goto_13
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﾒ:I

    array-length v2, p0

    if-ge v1, v2, :cond_2e

    aget-char v2, p0, v1

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/h;->ｋ:I

    mul-int v3, v3, v1

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->b:J

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p1, v1

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﾒ:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﾒ:I

    goto :goto_13

    :cond_2e
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_b .. :try_end_34} :catchall_35

    return-object p0

    :catchall_35
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static e()V
    .registers 2

    const-wide v0, 0x61552dff79047400L    # 7.444183754800568E160

    sput-wide v0, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->b:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/au$a;
    .registers 4

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->d:I

    add-int/lit8 v1, v1, 0x43

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->c:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    if-eq v1, v2, :cond_1b

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    return-object p0

    :cond_1b
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    const/4 p0, 0x0

    :try_start_1f
    throw p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_20

    :catchall_20
    move-exception p0

    throw p0
.end method

.method public static values()[Lcom/ironsource/adqualitysdk/sdk/i/au$a;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->c:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    if-eqz v0, :cond_1b

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->a:[Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    invoke-virtual {v0}, [Lcom/ironsource/adqualitysdk/sdk/i/au$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    goto :goto_26

    :cond_1b
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->a:[Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    invoke-virtual {v0}, [Lcom/ironsource/adqualitysdk/sdk/i/au$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    const/16 v2, 0x14

    :try_start_25
    div-int/2addr v2, v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_27

    :goto_26
    return-object v0

    :catchall_27
    move-exception v0

    throw v0
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.au.b (com.ironsource.adqualitysdk.sdk.i.au$b)
.class final synthetic Lcom/ironsource/adqualitysdk/sdk/i/au$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->values()[Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/au$b;->a:[I

    :try_start_9
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/au$b;->a:[I

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/au$b;->a:[I

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/au$b;->a:[I

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method
