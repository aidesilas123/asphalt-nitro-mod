###### Class com.ironsource.adqualitysdk.sdk.i.ad.a (com.ironsource.adqualitysdk.sdk.i.ad$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ad$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ji;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ad;->f()Lcom/ironsource/adqualitysdk/sdk/i/ji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static a:J = -0x653b4e5f193b7e2cL

.field private static b:[C = null

.field private static c:J = 0x0L

.field private static d:I = 0x0

.field private static e:I = 0x1


# instance fields
.field private synthetic f:Lcom/ironsource/adqualitysdk/sdk/i/ad;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x65

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->b:[C

    const-wide v0, -0x66cf0c8d7dfa5998L

    sput-wide v0, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->c:J

    return-void

    nop

    :array_12
    .array-data 2
        0x73s
        -0x59e4s
        0x4cb2s
        -0xca5s
        -0x663fs
        0x406bs
        0x73s
        -0x59e4s
        0x4cb2s
        -0xca5s
        -0x663fs
        0x406cs
        -0x7e55s
        0x27d6s
        -0x3298s
        0x65s
        -0x59e6s
        0x4cbds
        -0xcb5s
        -0x6639s
        0x65s
        -0x59e6s
        0x4cb3s
        -0xca9s
        -0x663cs
        0x406ds
        0x77s
        -0x59e2s
        0x4cb3s
        0xd8ds
        -0x5429s
        0x4168s
        -0x14cs
        -0x6beds
        0x4db7s
        -0x1423s
        -0x7ebds
        0x3efes
        -0x2bc6s
        -0x7255s
        0x2bccs
        -0x3ea2s
        0x7efes
        0x140fs
        -0x3250s
        0x5cc5s
        -0x566s
        0x1022s
        -0x5029s
        -0x3aaes
        0x1ca8s
        -0x456ds
        -0x2fd6s
        0x6fa5s
        -0x7ab7s
        -0x231cs
        0x7a91s
        -0x6ff2s
        0x2fafs
        0x4510s
        -0x6305s
        0x3a6cs
        0x5001s
        -0x104ds
        0x553s
        0x5c80s
        -0x59es
        0x1003s
        -0x5049s
        -0x3ad2s
        0x1c92s
        -0x45d0s
        0x45s
        -0x59e6s
        0x4ca2s
        -0xca9s
        -0x662es
        0x4028s
        -0x19eds
        -0x7356s
        0x3325s
        -0x2637s
        -0x7f9cs
        0x2611s
        -0x3372s
        0x732fs
        0x1990s
        -0x3f91s
        0x66e3s
        0xc8bs
        -0x4c90s
        0x59dds
        0x56s
        -0x5913s
        0x4c9es
        -0xcd4s
        -0x6620s
        0x4042s
        -0x191ds
        -0x7369s
        0x330es
    .end array-data
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ad;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(IIC)Ljava/lang/String;
    .registers 12

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/e;->ｋ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-array v1, p0, [C

    const/4 v2, 0x0

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/e;->ﾒ:I

    :goto_8
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/e;->ﾒ:I

    if-ge v2, p0, :cond_24

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->b:[C

    add-int v4, p1, v2

    aget-char v3, v3, v4

    int-to-long v3, v3

    int-to-long v5, v2

    sget-wide v7, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->c:J

    mul-long v5, v5, v7

    xor-long/2addr v3, v5

    int-to-long v5, p2

    xor-long/2addr v3, v5

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/e;->ﾒ:I

    goto :goto_8

    :cond_24
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_2b

    return-object p0

    :catchall_2b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static b(Ljava/lang/String;I)Ljava/lang/String;
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

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->a:J

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

.method private c(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 11

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :try_start_8
    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﬤ:Ljava/lang/String;

    invoke-virtual {v0, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lcom/ironsource/adqualitysdk/sdk/i/ib;->טּ:Ljava/lang/String;

    invoke-static {v3, v3}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x1a

    invoke-static {v1, v2}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v6

    int-to-char v6, v6

    invoke-static {v4, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->a(IIC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﮐ:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_34} :catch_56

    const/4 p2, 0x1

    if-eqz p3, :cond_39

    const/4 p3, 0x1

    goto :goto_3a

    :cond_39
    const/4 p3, 0x0

    :goto_3a
    if-eqz p3, :cond_a9

    sget p3, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->d:I

    add-int/lit8 p3, p3, 0x51

    rem-int/lit16 v4, p3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->e:I

    rem-int/lit8 p3, p3, 0x2

    :try_start_46
    sget-object p3, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﱡ:Ljava/lang/String;

    invoke-virtual {v0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_4b
    .catch Lorg/json/JSONException; {:try_start_46 .. :try_end_4b} :catch_56

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->d:I

    add-int/lit8 p2, p2, 0x51

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->e:I

    rem-int/lit8 p2, p2, 0x2

    goto :goto_a9

    :catch_56
    move-exception p2

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result p3

    rsub-int/lit8 p3, p3, 0x10

    invoke-static {v1, v2}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    add-int/lit8 v1, v1, 0x1d

    invoke-static {v3, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    add-int/lit16 v2, v2, 0xdda

    int-to-char v2, v2

    invoke-static {p3, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->a(IIC)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x1b

    const/16 v4, 0x30

    const-string v5, ""

    invoke-static {v5, v4, v3, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x2c

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    add-int/lit16 v3, v3, 0x5c80

    int-to-char v3, v3

    invoke-static {v2, v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->a(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a9
    :goto_a9
    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/ad;

    invoke-static {p2}, Lcom/ironsource/adqualitysdk/sdk/i/ad;->n(Lcom/ironsource/adqualitysdk/sdk/i/ad;)Lcom/ironsource/adqualitysdk/sdk/i/jl;

    move-result-object p3

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/ad;

    invoke-virtual {v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ad;->j(Landroid/webkit/WebView;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, p1, p3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/y;->ﾒ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final ﻐ(Landroid/webkit/WebView;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->e:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->d:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/ad;

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ad;->m(Lcom/ironsource/adqualitysdk/sdk/i/ad;Landroid/webkit/WebView;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->e:I

    add-int/lit8 p1, p1, 0x17

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->d:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :cond_21
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/ad;

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ad;->m(Lcom/ironsource/adqualitysdk/sdk/i/ad;Landroid/webkit/WebView;)V

    const/4 p1, 0x0

    :try_start_27
    throw p1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception p1

    throw p1
.end method

.method public final ﻐ(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 11

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﻏ:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﮌ:Ljava/lang/String;

    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﭖ:Ljava/lang/String;

    invoke-virtual {v1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﺙ:Ljava/lang/String;

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/ad;

    invoke-virtual {v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ad;->j(Landroid/webkit/WebView;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p2, p1, p0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/y;->ﻐ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_3a

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->e:I

    add-int/lit8 p1, p1, 0x53

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->d:I

    rem-int/lit8 p1, p1, 0x2

    const/4 p2, 0x1

    if-eqz p1, :cond_33

    const/4 v0, 0x1

    :cond_33
    if-eq v0, p2, :cond_36

    return-void

    :cond_36
    const/4 p1, 0x0

    :try_start_37
    throw p1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    :catchall_38
    move-exception p1

    throw p1

    :catch_3a
    move-exception p1

    invoke-static {v0, v0, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    add-int/lit8 p2, p2, 0x10

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v2

    const-string v3, ""

    cmpl-float v1, v2, v1

    rsub-int/lit8 v1, v1, 0x1d

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    rsub-int v2, v2, 0xdda

    int-to-char v2, v2

    invoke-static {p2, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->a(IIC)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    rsub-int/lit8 v1, v6, 0x1e

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    add-int/lit8 v2, v2, 0x47

    invoke-static {v3, v3, v0, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v3

    int-to-char v3, v3

    invoke-static {v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->a(IIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public final ﻐ(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    const/16 p2, 0x3f

    invoke-virtual {p3, p2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    const/4 v2, 0x1

    add-int/2addr p2, v2

    invoke-virtual {p3, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const p3, 0x8f2d

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/2addr v3, p3

    const-string p3, "\u81a7\u0e8d\u9fec\u2c30\ubd01\u4a50"

    invoke-static {p3, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_31

    const/4 p3, 0x0

    goto :goto_32

    :cond_31
    const/4 p3, 0x1

    :goto_32
    if-eqz p3, :cond_1ec

    const/16 p3, 0x30

    const-string v3, ""

    invoke-static {v3, p3, v1, v1}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result p3

    add-int/lit16 p3, p3, 0x6d62

    const-string v3, "\u81a7\uecc1\u5b74\uc994\u3431\ua353"

    invoke-static {v3, p3}, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_50

    const/4 p3, 0x1

    goto :goto_51

    :cond_50
    const/4 p3, 0x0

    :goto_51
    if-eq p3, v2, :cond_1de

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result p3

    shr-int/lit8 p3, p3, 0x18

    rsub-int p3, p3, 0x51df

    const-string v3, "\u81a7\ud07f\u2208\u742a\uc6c9\u18ee"

    invoke-static {v3, p3}, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/16 v3, 0x1f

    if-eqz p3, :cond_70

    const/16 p3, 0x1f

    goto :goto_72

    :cond_70
    const/16 p3, 0x11

    :goto_72
    const/4 v4, 0x0

    const/16 v5, 0x21

    if-eq p3, v3, :cond_1a1

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result p3

    shr-int/lit8 p3, p3, 0x10

    add-int/lit8 p3, p3, 0x6

    invoke-static {v1}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    int-to-char v6, v6

    invoke-static {p3, v3, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->a(IIC)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_cf

    sget p3, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->e:I

    add-int/2addr p3, v5

    rem-int/lit16 v0, p3, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->d:I

    rem-int/lit8 p3, p3, 0x2

    if-nez p3, :cond_ba

    invoke-static {p2}, Lcom/ironsource/adqualitysdk/sdk/i/ad;->o(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    sget-object p3, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﱟ:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    iget-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/ad;

    invoke-virtual {p3, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ad;->j(Landroid/webkit/WebView;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, p2, p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/y;->ﾇ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_ba
    invoke-static {p2}, Lcom/ironsource/adqualitysdk/sdk/i/ad;->o(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    sget-object p3, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﱟ:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    iget-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/ad;

    invoke-virtual {p3, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ad;->j(Landroid/webkit/WebView;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, p2, p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/y;->ﾇ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_cc
    throw v4
    :try_end_cd
    .catchall {:try_start_cc .. :try_end_cd} :catchall_cd

    :catchall_cd
    move-exception p1

    throw p1

    :cond_cf
    const/4 p1, 0x0

    invoke-static {p1, p1}, Landroid/graphics/PointF;->length(FF)F

    move-result p3

    const/16 v3, 0x5c

    cmpl-float p1, p3, p1

    rsub-int/lit8 p1, p1, 0x6

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v5

    cmp-long p3, v5, v8

    rsub-int/lit8 p3, p3, 0x7

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v5

    cmp-long v7, v5, v8

    sub-int/2addr v2, v7

    int-to-char v2, v2

    invoke-static {p1, p3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->a(IIC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_fb

    const/16 p1, 0x5c

    goto :goto_fd

    :cond_fb
    const/16 p1, 0x49

    :goto_fd
    if-eq p1, v3, :cond_101

    goto/16 :goto_191

    :cond_101
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->d:I

    add-int/lit8 p1, p1, 0x69

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->e:I

    rem-int/lit8 p1, p1, 0x2

    invoke-static {p2}, Lcom/ironsource/adqualitysdk/sdk/i/ad;->o(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    rsub-int/lit8 p2, p2, 0x3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p3

    shr-int/lit8 p3, p3, 0x16

    rsub-int/lit8 p3, p3, 0xc

    const v0, 0x81de

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string v5, "\u81b1\u746f\u6a35\u60fb\u569b"

    cmp-long v6, v2, v8

    add-int/2addr v6, v0

    int-to-char v0, v6

    invoke-static {p2, p3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->a(IIC)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result p3

    add-int/lit8 p3, p3, 0x5

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    shr-int/lit8 v0, v0, 0x6

    rsub-int/lit8 v0, v0, 0xf

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    shr-int/lit8 v2, v2, 0x16

    int-to-char v2, v2

    invoke-static {p3, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->a(IIC)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v2

    cmp-long v0, v2, v8

    rsub-int/lit8 v0, v0, 0x7

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x14

    invoke-static {v1, v1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    int-to-char v3, v3

    invoke-static {v0, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->a(IIC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v2, 0xf5c9

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    sub-int/2addr v2, v1

    invoke-static {v5, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﾇ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_191
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->e:I

    add-int/lit8 p1, p1, 0x63

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->d:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_19e

    return-void

    :cond_19e
    :try_start_19e
    throw v4
    :try_end_19f
    .catchall {:try_start_19e .. :try_end_19f} :catchall_19f

    :catchall_19f
    move-exception p1

    throw p1

    :cond_1a1
    sget p3, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->e:I

    add-int/lit8 p3, p3, 0x79

    rem-int/lit16 v0, p3, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->d:I

    rem-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1b0

    const/16 p3, 0x21

    goto :goto_1b2

    :cond_1b0
    const/16 p3, 0x1c

    :goto_1b2
    if-eq p3, v5, :cond_1c8

    invoke-static {p2}, Lcom/ironsource/adqualitysdk/sdk/i/ad;->o(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    iget-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/ad;

    invoke-static {p3}, Lcom/ironsource/adqualitysdk/sdk/i/ad;->n(Lcom/ironsource/adqualitysdk/sdk/i/ad;)Lcom/ironsource/adqualitysdk/sdk/i/jl;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/ad;

    invoke-virtual {v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ad;->j(Landroid/webkit/WebView;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, p2, p1, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/y;->ﾇ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1c8
    invoke-static {p2}, Lcom/ironsource/adqualitysdk/sdk/i/ad;->o(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    iget-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/ad;

    invoke-static {p3}, Lcom/ironsource/adqualitysdk/sdk/i/ad;->n(Lcom/ironsource/adqualitysdk/sdk/i/ad;)Lcom/ironsource/adqualitysdk/sdk/i/jl;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/ad;

    invoke-virtual {v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ad;->j(Landroid/webkit/WebView;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, p2, p1, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/y;->ﾇ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_1db
    throw v4
    :try_end_1dc
    .catchall {:try_start_1db .. :try_end_1dc} :catchall_1dc

    :catchall_1dc
    move-exception p1

    throw p1

    :cond_1de
    invoke-static {p2}, Lcom/ironsource/adqualitysdk/sdk/i/ad;->o(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    iget-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/ad;

    invoke-virtual {p3, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ad;->j(Landroid/webkit/WebView;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, p2, p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ad;->ﾒ(Lorg/json/JSONObject;Landroid/webkit/WebView;Ljava/lang/Object;)V

    return-void

    :cond_1ec
    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/ad;

    invoke-static {p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ad;->m(Lcom/ironsource/adqualitysdk/sdk/i/ad;Landroid/webkit/WebView;)V

    return-void
.end method

.method public final ﾇ(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->d:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x2d

    if-nez v0, :cond_11

    const/16 v0, 0x2d

    goto :goto_13

    :cond_11
    const/16 v0, 0x19

    :goto_13
    const/4 v2, 0x0

    if-eq v0, v1, :cond_25

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/ad;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ad;->t(Lcom/ironsource/adqualitysdk/sdk/i/ad;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    goto :goto_22

    :cond_21
    const/4 v0, 0x1

    :goto_22
    if-eq v0, v1, :cond_9a

    goto :goto_30

    :cond_25
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/ad;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ad;->t(Lcom/ironsource/adqualitysdk/sdk/i/ad;)Z

    move-result v0

    const/16 v1, 0x3d

    :try_start_2d
    div-int/2addr v1, v2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_9b

    if-eqz v0, :cond_9a

    :goto_30
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/ad;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ad;->l(Lcom/ironsource/adqualitysdk/sdk/i/ad;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_97

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/ad;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ad;->l(Lcom/ironsource/adqualitysdk/sdk/i/ad;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_45

    goto :goto_97

    :cond_45
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/ad;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ad;->l(Lcom/ironsource/adqualitysdk/sdk/i/ad;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->d:I

    add-int/lit8 v1, v1, 0x53

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->e:I

    rem-int/lit8 v1, v1, 0x2

    :cond_59
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v3, 0x2a

    if-eqz v1, :cond_64

    const/16 v1, 0x2a

    goto :goto_66

    :cond_64
    const/16 v1, 0x5b

    :goto_66
    if-eq v1, v3, :cond_69

    goto :goto_9a

    :cond_69
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/16 v3, 0x18

    if-eqz v1, :cond_7a

    const/16 v1, 0x32

    goto :goto_7c

    :cond_7a
    const/16 v1, 0x18

    :goto_7c
    if-eq v1, v3, :cond_59

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->e:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->d:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_93

    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->c(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    const/16 p1, 0x46

    :try_start_8f
    div-int/2addr p1, v2
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_91

    goto :goto_96

    :catchall_91
    move-exception p1

    throw p1

    :cond_93
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->c(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    :goto_96
    return-void

    :cond_97
    :goto_97
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/ad$a;->c(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    :cond_9a
    :goto_9a
    return-void

    :catchall_9b
    move-exception p1

    throw p1
.end method
