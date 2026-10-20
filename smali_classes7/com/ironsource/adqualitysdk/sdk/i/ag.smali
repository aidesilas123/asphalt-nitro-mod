###### Class com.json.adqualitysdk.sdk.i.ag (com.ironsource.adqualitysdk.sdk.i.ag)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ag;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:[I = null

.field private static b:I = 0x0

.field private static c:I = 0x0

.field private static d:I = 0x0

.field private static e:[B = null

.field private static f:[S = null

.field private static g:I = 0x0

.field private static h:I = 0x1


# instance fields
.field private i:Lcom/ironsource/adqualitysdk/sdk/i/am;

.field private j:Z

.field private k:Lcom/ironsource/adqualitysdk/sdk/i/ir;

.field private l:Lcom/ironsource/adqualitysdk/sdk/i/iz;

.field private m:Lcom/ironsource/adqualitysdk/sdk/i/ai;

.field private n:Landroid/os/Handler;

.field private o:Z

.field private p:Z

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/ah;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/ix$d;",
            ">;"
        }
    .end annotation
.end field

.field private s:Landroid/content/Context;

.field private t:Lcom/ironsource/adqualitysdk/sdk/i/in;

.field private u:Lcom/ironsource/adqualitysdk/sdk/i/a0;

.field private v:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private w:Lcom/ironsource/adqualitysdk/sdk/i/jg;

.field private x:Ljava/lang/String;

.field private y:Lcom/ironsource/adqualitysdk/sdk/i/q;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_22

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->a:[I

    const v0, -0x38247d6

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->b:I

    const/16 v0, 0x50

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->c:I

    const v0, -0x7872a6f5

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->d:I

    const/16 v0, 0x8d

    new-array v0, v0, [B

    fill-array-data v0, :array_4a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->e:[B

    return-void

    nop

    :array_22
    .array-data 4
        0x424fbe55
        -0x7a98081f
        -0x1397f06c
        0x66c5d2b4
        -0x78dbda90
        0x579af036
        -0xf0c308d
        -0x3c80adfd
        0x252c0690
        0xf5c960f
        -0x5006f567
        -0x55d3f95c
        0x3194972c
        -0x626a268b
        0x2b965b25
        0x6a4c452b
        -0x2b83f5ca
        0x82cd9bc
    .end array-data

    :array_4a
    .array-data 1
        -0x4at
        -0x46t
        0x6t
        0x9t
        -0x11t
        0x11t
        -0x45t
        -0xat
        0x9t
        0x6t
        -0x14t
        0x0t
        0xet
        -0xet
        0x14t
        -0x11t
        -0x4t
        -0x43t
        0x2t
        0x11t
        -0x13t
        0x1t
        0x14t
        -0x14t
        0x0t
        0xet
        -0xet
        0x14t
        -0x11t
        -0x4t
        -0x36t
        -0xat
        -0x7t
        0x6t
        -0x3t
        0xbt
        -0x4t
        0x8t
        0x2t
        0x1ft
        -0x2dt
        0x1bt
        -0x1ct
        0x0t
        0x2ft
        -0x2dt
        -0x1t
        0x4ft
        -0x4et
        0x5t
        0x49t
        -0x52t
        0x3t
        -0x3t
        0x0t
        0x2dt
        -0x4bt
        0x6t
        -0x13t
        0x2t
        0xdt
        -0x4at
        0x1t
        -0xbt
        0xct
        -0xft
        0xdt
        -0x3bt
        -0x49t
        0xdt
        -0x11t
        0x4t
        0xdt
        -0xet
        0x53t
        -0x59t
        0x17t
        0x42t
        -0x44t
        -0x1t
        0x1t
        -0x11t
        0x9t
        0x9t
        -0x15t
        0x13t
        0x3dt
        0x8t
        -0x3et
        0x6t
        0x9t
        -0x11t
        0x31t
        -0x1ft
        -0xat
        0x9t
        -0xet
        0x53t
        -0x4et
        0x5t
        0x49t
        -0x52t
        0x3t
        -0x3t
        0x0t
        0x2dt
        -0x46t
        0x1bt
        -0x2at
        0x0t
        0xet
        -0xet
        0x45t
        -0x46t
        0x6t
        0x5t
        -0x37t
        -0x3t
        0x5t
        0x2t
        -0x2t
        0x43t
        -0x4dt
        -0x2t
        -0x3t
        0xct
        0x46t
        -0x53t
        -0x1t
        0x6t
        0x9t
        -0x11t
        0x11t
        0x45t
        -0x47t
        -0x7t
        0x5t
        0x5t
        -0xat
        0x9t
        0x12t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ironsource/adqualitysdk/sdk/i/ak;Lcom/ironsource/adqualitysdk/sdk/i/am;ZLjava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/q;)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->q:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->r:Ljava/util/List;

    iput-object p6, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->y:Lcom/ironsource/adqualitysdk/sdk/i/q;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p6

    iput-object p6, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->v:Ljava/lang/Thread$UncaughtExceptionHandler;

    new-instance p6, Lcom/ironsource/adqualitysdk/sdk/i/ag$d;

    invoke-direct {p6, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ag$d;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ag;)V

    invoke-static {p6}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->i:Lcom/ironsource/adqualitysdk/sdk/i/am;

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->s:Landroid/content/Context;

    new-instance p3, Lcom/ironsource/adqualitysdk/sdk/i/ix;

    const/16 p6, 0xe

    new-array p6, p6, [I

    fill-array-data p6, :array_f8

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x19

    invoke-static {p6, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->H([II)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p6

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_118

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0x18

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->H([II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, p1, p6, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ix;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p6, Lcom/ironsource/adqualitysdk/sdk/i/iz;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_134

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v2

    const/16 v3, 0x8

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->H([II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, -0x51

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    const v5, 0x7872a75a

    sub-int/2addr v5, v4

    const-string v4, ""

    invoke-static {v4, v1}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v4

    int-to-byte v4, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    int-to-short v6, v6

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    const v8, 0x38247d6

    sub-int/2addr v8, v7

    invoke-static {v2, v5, v4, v6, v8}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->x(IIBSI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p6, v0, v2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/iz;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/ix;)V

    iput-object p6, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->l:Lcom/ironsource/adqualitysdk/sdk/i/iz;

    invoke-static {p3}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->L(Lcom/ironsource/adqualitysdk/sdk/i/ix;)I

    move-result p6

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ai;

    invoke-static {p3}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->Q(Lcom/ironsource/adqualitysdk/sdk/i/ix;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p1, p2, p6, p3}, Lcom/ironsource/adqualitysdk/sdk/i/ai;-><init>(Landroid/content/Context;Lcom/ironsource/adqualitysdk/sdk/i/ak;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->m:Lcom/ironsource/adqualitysdk/sdk/i/ai;

    new-instance p2, Lcom/ironsource/adqualitysdk/sdk/i/ir;

    invoke-direct {p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ir;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->k:Lcom/ironsource/adqualitysdk/sdk/i/ir;

    iput-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->j:Z

    new-instance p1, Landroid/os/HandlerThread;

    new-array p2, v3, [I

    fill-array-data p2, :array_140

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p3

    const v0, 0x100000e

    add-int/2addr p3, v0

    invoke-static {p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->H([II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->n:Landroid/os/Handler;

    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/a0;

    invoke-direct {p1, p6}, Lcom/ironsource/adqualitysdk/sdk/i/a0;-><init>(I)V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->u:Lcom/ironsource/adqualitysdk/sdk/i/a0;

    const/4 p1, 0x1

    xor-int/lit8 p2, p4, 0x1

    iput-boolean p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->o:Z

    iput-object p5, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->x:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->G(Z)V

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->m()V

    return-void

    :array_f8
    .array-data 4
        -0x42c70ca1
        0x7fdb01a0
        -0x39457012
        -0x24787b5d
        0x1bcee2b7
        -0x51ee7cde
        -0x335008fe    # -9.225627E7f
        -0x383b1f09
        0x57fff917
        0x42ef49c5
        0x1cd694b7
        -0x55012212
        0x24dad68
        0x69b478dd
    .end array-data

    :array_118
    .array-data 4
        -0x6310c6a3
        -0x7d1f0750
        0x23ea819d
        -0x304aab51
        0x29a9395f
        0x163a92a0
        -0x29fad476
        0x43bf9f00
        0xb1f89f3
        0x18304507
        -0x37b64e21
        -0x40867ad0
    .end array-data

    :array_134
    .array-data 4
        0x4d665972    # 2.4153885E8f
        -0x1f67459c
        0x21bcf138
        0x50f3e20d
    .end array-data

    :array_140
    .array-data 4
        -0x3e2d0c6e
        0x4a307fbd    # 2891759.2f
        -0x6efedf96
        0x5d15a588
        -0x2b0a1ce5
        -0x74ab7f22
        0x7e427049
        -0xc050f3c
    .end array-data
.end method

.method private A(Lorg/json/JSONObject;Lcom/ironsource/adqualitysdk/sdk/i/il;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->z(Lorg/json/JSONObject;)V

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/af;

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/iz;->ﻛ(Lorg/json/JSONObject;)Lcom/ironsource/adqualitysdk/sdk/i/iv;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/af;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/iv;)V

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->e()Lcom/ironsource/adqualitysdk/sdk/i/ar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ar;->ﻐ()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/af;->ﻛ(I)V

    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->l:Lcom/ironsource/adqualitysdk/sdk/i/iz;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/af;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/iv;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/iz;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/iv;Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/af;->ﾇ()Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->N(Lorg/json/JSONObject;)V

    invoke-static {p2}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    add-int/lit8 p1, p1, 0x73

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method private declared-synchronized B(Z)V
    .registers 5

    monitor-enter p0

    :try_start_1
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    add-int/lit8 p1, p1, 0x61

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x57

    if-eqz p1, :cond_12

    const/16 p1, 0x15

    goto :goto_14

    :cond_12
    const/16 p1, 0x57

    :goto_14
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1e

    iput-boolean v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->j:Z

    invoke-direct {p0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->G(Z)V

    goto :goto_23

    :cond_1e
    iput-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->j:Z

    invoke-direct {p0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->G(Z)V

    :goto_23
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    add-int/lit8 p1, p1, 0x7b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_39

    if-nez p1, :cond_30

    goto :goto_31

    :cond_30
    const/4 v1, 0x0

    :goto_31
    if-nez v1, :cond_35

    monitor-exit p0

    return-void

    :cond_35
    const/4 p1, 0x0

    :try_start_36
    throw p1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_37

    :catchall_37
    move-exception p1

    :try_start_38
    throw p1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_39

    :catchall_39
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private C(Lcom/ironsource/adqualitysdk/sdk/i/af;)Z
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/ao;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/af;->ｋ()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->x:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ｋ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/lit8 v0, v0, 0x2

    return p1
.end method

.method static synthetic D(Lcom/ironsource/adqualitysdk/sdk/i/ag;Lcom/ironsource/adqualitysdk/sdk/i/af;)Z
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x35

    if-nez v0, :cond_11

    const/16 v0, 0x35

    goto :goto_13

    :cond_11
    const/16 v0, 0x40

    :goto_13
    if-eq v0, v1, :cond_1a

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->C(Lcom/ironsource/adqualitysdk/sdk/i/af;)Z

    move-result p0

    return p0

    :cond_1a
    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->C(Lcom/ironsource/adqualitysdk/sdk/i/af;)Z

    const/4 p0, 0x0

    :try_start_1e
    throw p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception p0

    throw p0
.end method

.method static synthetic E(Lcom/ironsource/adqualitysdk/sdk/i/ag;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    add-int/lit8 v1, v0, 0x25

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->v:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eq v1, v2, :cond_16

    goto :goto_19

    :cond_16
    const/16 v1, 0x11

    :try_start_18
    div-int/2addr v1, v3
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_2c

    :goto_19
    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_24

    goto :goto_25

    :cond_24
    const/4 v2, 0x0

    :goto_25
    if-nez v2, :cond_28

    return-object p0

    :cond_28
    const/4 p0, 0x0

    :try_start_29
    throw p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception p0

    throw p0

    :catchall_2c
    move-exception p0

    throw p0
.end method

.method private F(Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/is;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/af;",
            ">;",
            "Lcom/ironsource/adqualitysdk/sdk/i/is;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0x5d

    if-eqz v2, :cond_14

    const/16 v2, 0x25

    goto :goto_16

    :cond_14
    const/16 v2, 0x5d

    :goto_16
    if-eq v2, v3, :cond_c4

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    add-int/lit8 v2, v2, 0x39

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    const/4 v3, 0x2

    rem-int/2addr v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, ""

    if-eqz v2, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/adqualitysdk/sdk/i/af;

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/af;->ﾇ()Lorg/json/JSONObject;

    move-result-object v7

    new-array v8, v3, [I

    fill-array-data v8, :array_da

    invoke-static {v6, v6, v5, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v9

    add-int/lit8 v9, v9, 0x4

    invoke-static {v8, v9}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->H([II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    const/16 v9, 0x5c

    if-nez v8, :cond_50

    const/16 v8, 0x17

    goto :goto_52

    :cond_50
    const/16 v8, 0x5c

    :goto_52
    if-eq v8, v9, :cond_a4

    goto :goto_7f

    :cond_55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/adqualitysdk/sdk/i/af;

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/af;->ﾇ()Lorg/json/JSONObject;

    move-result-object v7

    new-array v8, v3, [I

    fill-array-data v8, :array_e2

    invoke-static {v6, v6, v4, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v9

    rsub-int/lit8 v9, v9, 0x3

    invoke-static {v8, v9}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->H([II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7a

    const/4 v8, 0x1

    goto :goto_7c

    :cond_7a
    const/16 v8, 0xa

    :goto_7c
    if-eq v8, v5, :cond_7f

    goto :goto_a4

    :cond_7f
    :goto_7f
    :try_start_7f
    new-array v8, v3, [I

    const v9, -0x66cb4462

    aput v9, v8, v4

    const v4, -0x2177e21f

    aput v4, v8, v5

    invoke-static {v6}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x3

    invoke-static {v8, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->H([II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﱟ:Ljava/lang/String;

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v7, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_a2
    .catch Lorg/json/JSONException; {:try_start_7f .. :try_end_a2} :catch_a3

    goto :goto_a4

    :catch_a3
    nop

    :cond_a4
    :goto_a4
    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->u:Lcom/ironsource/adqualitysdk/sdk/i/a0;

    invoke-virtual {v4, v7}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->o(Lorg/json/JSONObject;)Z

    move-result v4

    if-eqz v4, :cond_b6

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->l:Lcom/ironsource/adqualitysdk/sdk/i/iz;

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/af;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/iv;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/iz;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/iv;Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    :cond_b6
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    add-int/lit8 v2, v2, 0x4f

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/2addr v2, v3

    goto/16 :goto_9

    :cond_c4
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->m:Lcom/ironsource/adqualitysdk/sdk/i/ai;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->k:Lcom/ironsource/adqualitysdk/sdk/i/ir;

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ir;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/iu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/iu;->ﻐ()Z

    move-result v2

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/ag$a;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ag$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ag;Lorg/json/JSONArray;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/is;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ai;->ｋ(Lorg/json/JSONArray;ZLcom/ironsource/adqualitysdk/sdk/i/ai$e;)V

    return-void

    nop

    :array_da
    .array-data 4
        -0x66cb4462
        -0x2177e21f
    .end array-data

    :array_e2
    .array-data 4
        -0x66cb4462
        -0x2177e21f
    .end array-data
.end method

.method private declared-synchronized G(Z)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->l:Lcom/ironsource/adqualitysdk/sdk/i/iz;

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ag$i;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ag$i;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ag;Z)V

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/iz;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/iz$d;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    add-int/lit8 p1, p1, 0x5d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static H([II)Ljava/lang/String;
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

    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/ag;->a:[I

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

.method static synthetic I(Lcom/ironsource/adqualitysdk/sdk/i/ag;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x9

    if-eqz v0, :cond_10

    const/4 v0, 0x7

    goto :goto_12

    :cond_10
    const/16 v0, 0x9

    :goto_12
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->G(Z)V

    return-void
.end method

.method static synthetic J(Lcom/ironsource/adqualitysdk/sdk/i/ag;Lorg/json/JSONObject;Lcom/ironsource/adqualitysdk/sdk/i/il;)V
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->A(Lorg/json/JSONObject;Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    if-eq v0, v2, :cond_2a

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    add-int/lit8 p0, p0, 0x43

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_24

    const/4 v1, 0x1

    :cond_24
    if-eq v1, v2, :cond_27

    return-void

    :cond_27
    :try_start_27
    throw v3
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception p0

    throw p0

    :cond_2a
    :try_start_2a
    throw v3
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception p0

    throw p0
.end method

.method static synthetic K(Lcom/ironsource/adqualitysdk/sdk/i/ag;I)Z
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    if-ne v0, v1, :cond_17

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->R(I)Z

    move-result p0

    return p0

    :cond_17
    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->R(I)Z

    const/4 p0, 0x0

    :try_start_1b
    throw p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1c

    :catchall_1c
    move-exception p0

    throw p0
.end method

.method private static L(Lcom/ironsource/adqualitysdk/sdk/i/ix;)I
    .registers 12

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v0

    const/16 v2, 0x30

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const-string v6, ""

    const/4 v7, 0x0

    cmp-long v8, v0, v3

    rsub-int/lit8 v0, v8, -0x50

    const v1, 0x7872a75e

    invoke-static {v6, v6, v7}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v8

    add-int/2addr v8, v1

    invoke-static {v6, v2, v7, v7}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    rsub-int/lit8 v1, v1, -0x1

    int-to-byte v1, v1

    invoke-static {v7}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    int-to-short v9, v9

    const v10, 0x3824841

    invoke-static {v6, v2, v7, v7}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    add-int/2addr v2, v10

    invoke-static {v0, v8, v1, v9, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->x(IIBSI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ix;->ﾇ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4d

    const/4 v1, 0x0

    goto :goto_4e

    :cond_4d
    const/4 v1, 0x1

    :goto_4e
    if-eqz v1, :cond_52

    const/4 v0, 0x1

    goto :goto_61

    :cond_52
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v5

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    add-int/lit8 v1, v1, 0x2b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    rem-int/lit8 v1, v1, 0x2

    :goto_61
    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    rsub-int/lit8 v1, v1, -0x51

    const v2, 0x7872a75f

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v8

    cmp-long v10, v8, v3

    sub-int/2addr v2, v10

    invoke-static {v6}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v5

    int-to-byte v3, v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    int-to-short v4, v4

    const v5, 0x3824840

    invoke-static {v7}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x14

    shr-int/lit8 v6, v6, 0x6

    sub-int/2addr v5, v6

    invoke-static {v1, v2, v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->x(IIBSI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ix;->ﻐ(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method static synthetic M(Lcom/ironsource/adqualitysdk/sdk/i/ag;)V
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x43

    if-eqz v0, :cond_11

    const/16 v0, 0x4c

    goto :goto_13

    :cond_11
    const/16 v0, 0x43

    :goto_13
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->v()V

    if-ne v0, v1, :cond_23

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    add-int/lit8 p0, p0, 0x1

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

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

.method private N(Lorg/json/JSONObject;)V
    .registers 4

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/r;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/r;->ﾇ()Z

    move-result v0

    if-eqz v0, :cond_1f

    monitor-enter p0

    :try_start_b
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->q:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_1c

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ag$c;

    invoke-direct {v1, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ag$c;-><init>(Ljava/util/List;Lorg/json/JSONObject;)V

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    goto :goto_1f

    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1f
    :goto_1f
    return-void
.end method

.method private declared-synchronized O(Z)V
    .registers 6

    monitor-enter p0

    :try_start_1
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v3, 0x0

    if-nez v0, :cond_f

    const/4 v1, 0x0

    :cond_f
    if-eqz v1, :cond_14

    iput-boolean p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->p:Z

    goto :goto_19

    :cond_14
    iput-boolean p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->p:Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_25

    const/16 p1, 0x2f

    :try_start_18
    div-int/2addr p1, v3
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_23

    :goto_19
    add-int/lit8 v2, v2, 0x2b

    :try_start_1b
    rem-int/lit16 p1, v2, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    rem-int/lit8 v2, v2, 0x2
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_25

    monitor-exit p0

    return-void

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

.method static synthetic P(Lcom/ironsource/adqualitysdk/sdk/i/ag;)Lcom/ironsource/adqualitysdk/sdk/i/a0;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/lit8 v0, v0, 0x2

    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->u:Lcom/ironsource/adqualitysdk/sdk/i/a0;

    add-int/lit8 v1, v1, 0x4f

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    rem-int/lit8 v1, v1, 0x2

    return-object p0
.end method

.method private static Q(Lcom/ironsource/adqualitysdk/sdk/i/ix;)Ljava/lang/String;
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_78

    const-string v2, ""

    invoke-static {v2, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x10

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->H([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ix;->ﾇ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x12

    if-eqz v2, :cond_30

    const/16 v2, 0x31

    goto :goto_32

    :cond_30
    const/16 v2, 0x12

    :goto_32
    if-eq v2, v3, :cond_5d

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    add-int/lit8 v1, v1, 0x29

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/lit8 v1, v1, 0x2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [I

    fill-array-data v0, :array_8c

    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v2

    int-to-byte v2, v2

    rsub-int/lit8 v2, v2, 0xf

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->H([II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ix;->ﻐ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5d
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    add-int/lit8 p0, p0, 0x49

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/lit8 p0, p0, 0x2

    const/16 v0, 0x54

    if-nez p0, :cond_6e

    const/16 p0, 0x54

    goto :goto_70

    :cond_6e
    const/16 p0, 0x9

    :goto_70
    if-eq p0, v0, :cond_73

    return-object v1

    :cond_73
    const/4 p0, 0x0

    :try_start_74
    throw p0
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_75

    :catchall_75
    move-exception p0

    throw p0

    nop

    :array_78
    .array-data 4
        -0x3f746dab
        0x34b33796
        -0x50cd2f87
        -0x38bef8b2
        0x22c6ee1
        -0x10f6e1b9
        -0x99344fc
        -0xa9d181b
    .end array-data

    :array_8c
    .array-data 4
        -0x3f746dab
        0x34b33796
        -0x50cd2f87
        -0x38bef8b2
        0x22c6ee1
        -0x10f6e1b9
        -0x99344fc
        -0xa9d181b
    .end array-data
.end method

.method private R(I)Z
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x13

    if-eqz v0, :cond_11

    const/16 v0, 0x15

    goto :goto_13

    :cond_11
    const/16 v0, 0x13

    :goto_13
    if-ne v0, v1, :cond_32

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->e()Lcom/ironsource/adqualitysdk/sdk/i/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ar;->ﾒ()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt p1, v0, :cond_23

    const/4 p1, 0x0

    goto :goto_24

    :cond_23
    const/4 p1, 0x1

    :goto_24
    if-eq p1, v2, :cond_27

    return v2

    :cond_27
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    add-int/lit8 p1, p1, 0x77

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    rem-int/lit8 p1, p1, 0x2

    return v1

    :cond_32
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->e()Lcom/ironsource/adqualitysdk/sdk/i/ar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ar;->ﾒ()I

    const/4 p1, 0x0

    :try_start_3a
    throw p1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception p1

    throw p1
.end method

.method static synthetic a(Lcom/ironsource/adqualitysdk/sdk/i/ag;)Ljava/util/List;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    rem-int/lit8 v0, v0, 0x2

    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->r:Ljava/util/List;

    add-int/lit8 v1, v1, 0x1b

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/lit8 v1, v1, 0x2

    return-object p0
.end method

.method static synthetic b(Lcom/ironsource/adqualitysdk/sdk/i/ag;)Lcom/ironsource/adqualitysdk/sdk/i/ir;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    rem-int/lit8 v0, v0, 0x2

    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->k:Lcom/ironsource/adqualitysdk/sdk/i/ir;

    add-int/lit8 v1, v1, 0x3f

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/lit8 v1, v1, 0x2

    return-object p0
.end method

.method static synthetic c(Lcom/ironsource/adqualitysdk/sdk/i/ag;)Ljava/lang/String;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-nez v0, :cond_32

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->j()Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0x33

    if-nez v0, :cond_27

    const/16 v0, 0x2c

    goto :goto_29

    :cond_27
    const/16 v0, 0x33

    :goto_29
    if-eq v0, v2, :cond_31

    const/16 v0, 0x48

    :try_start_2d
    div-int/2addr v0, v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2f

    return-object p0

    :catchall_2f
    move-exception p0

    throw p0

    :cond_31
    return-object p0

    :cond_32
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->j()Ljava/lang/String;

    const/4 p0, 0x0

    :try_start_36
    throw p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_37

    :catchall_37
    move-exception p0

    throw p0
.end method

.method private declared-synchronized d()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eq v0, v1, :cond_17

    iget-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->j:Z
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1b

    monitor-exit p0

    return v0

    :cond_17
    const/4 v0, 0x0

    :try_start_18
    throw v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_19

    :catchall_19
    move-exception v0

    :try_start_1a
    throw v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_1b

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e()Lcom/ironsource/adqualitysdk/sdk/i/ar;
    .registers 3

    monitor-enter p0

    :try_start_1
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x1f

    if-nez v0, :cond_12

    const/16 v0, 0x2e

    goto :goto_14

    :cond_12
    const/16 v0, 0x1f

    :goto_14
    if-ne v0, v1, :cond_20

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﮉ()Lcom/ironsource/adqualitysdk/sdk/i/ar;

    move-result-object v0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_2b

    monitor-exit p0

    return-object v0

    :cond_20
    :try_start_20
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﮉ()Lcom/ironsource/adqualitysdk/sdk/i/ar;
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_2b

    const/4 v0, 0x0

    :try_start_28
    throw v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception v0

    :try_start_2a
    throw v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic f(Lcom/ironsource/adqualitysdk/sdk/i/ag;)Lcom/ironsource/adqualitysdk/sdk/i/iz;
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    const/4 v4, 0x0

    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->l:Lcom/ironsource/adqualitysdk/sdk/i/iz;

    if-nez v0, :cond_27

    add-int/lit8 v1, v1, 0x2f

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_21

    const/4 v2, 0x0

    :cond_21
    if-eqz v2, :cond_24

    return-object p0

    :cond_24
    :try_start_24
    throw v4
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_25

    :catchall_25
    move-exception p0

    throw p0

    :cond_27
    :try_start_27
    throw v4
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception p0

    throw p0
.end method

.method private g()I
    .registers 4

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->e()Lcom/ironsource/adqualitysdk/sdk/i/ar;

    move-result-object v0

    if-eqz v0, :cond_43

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x46

    if-eqz v0, :cond_17

    const/16 v0, 0x22

    goto :goto_19

    :cond_17
    const/16 v0, 0x46

    :goto_19
    if-ne v0, v1, :cond_38

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﱟ()Z

    move-result v0

    if-nez v0, :cond_43

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->e()Lcom/ironsource/adqualitysdk/sdk/i/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ar;->ｋ()I

    move-result v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    add-int/lit8 v1, v1, 0x7

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    rem-int/lit8 v1, v1, 0x2

    return v0

    :cond_38
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﱟ()Z

    const/4 v0, 0x0

    :try_start_40
    throw v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_41

    :catchall_41
    move-exception v0

    throw v0

    :cond_43
    const/16 v0, 0x64

    return v0
.end method

.method static synthetic h(Lcom/ironsource/adqualitysdk/sdk/i/ag;)Lcom/ironsource/adqualitysdk/sdk/i/ai;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    add-int/lit8 v1, v0, 0x15

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/lit8 v1, v1, 0x2

    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->m:Lcom/ironsource/adqualitysdk/sdk/i/ai;

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x1c

    if-nez v0, :cond_1b

    const/16 v0, 0x1c

    goto :goto_1d

    :cond_1b
    const/16 v0, 0x2f

    :goto_1d
    if-eq v0, v1, :cond_20

    return-object p0

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

.method static synthetic i(Lcom/ironsource/adqualitysdk/sdk/i/ag;)Lcom/ironsource/adqualitysdk/sdk/i/am;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/lit8 v0, v0, 0x2

    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->i:Lcom/ironsource/adqualitysdk/sdk/i/am;

    add-int/lit8 v1, v1, 0x67

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    rem-int/lit8 v1, v1, 0x2

    return-object p0
.end method

.method private j()Ljava/lang/String;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﱟ()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_17

    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    const/4 v0, 0x1

    :goto_18
    if-eq v0, v1, :cond_23

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->e()Lcom/ironsource/adqualitysdk/sdk/i/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ar;->ﱡ()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_23
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->e()Lcom/ironsource/adqualitysdk/sdk/i/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ar;->ﺙ()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    add-int/lit8 v1, v1, 0x3d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method static synthetic k(Lcom/ironsource/adqualitysdk/sdk/i/ag;)I
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g()I

    move-result p0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_1d

    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x1

    :goto_1e
    if-eqz v0, :cond_21

    return p0

    :cond_21
    const/16 v0, 0xd

    :try_start_23
    div-int/2addr v0, v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_25

    return p0

    :catchall_25
    move-exception p0

    throw p0
.end method

.method private declared-synchronized l()V
    .registers 14

    monitor-enter p0

    :try_start_1
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_cd

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->d()Z

    move-result v0

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->m:Lcom/ironsource/adqualitysdk/sdk/i/ai;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/jk;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ak;->ﾇ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v3, 0x20

    if-nez v0, :cond_29

    const/16 v0, 0x1a

    goto :goto_2b

    :cond_29
    const/16 v0, 0x20

    :goto_2b
    if-eq v0, v3, :cond_bd

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    rem-int/2addr v0, v1

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->r()Z

    move-result v0

    if-nez v0, :cond_bd

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->O(Z)V

    const/4 v3, 0x6

    new-array v3, v3, [I

    const v4, 0x71a41472

    const/4 v5, 0x0

    aput v4, v3, v5

    const v4, -0x5385fcb5

    aput v4, v3, v0

    const v0, 0x1cd694b7

    aput v0, v3, v1

    const/4 v0, 0x3

    const v4, -0x55012212

    aput v4, v3, v0

    const/4 v0, 0x4

    const v4, 0x24dad68

    aput v4, v3, v0

    const/4 v0, 0x5

    const v4, 0x69b478dd

    aput v4, v3, v0

    invoke-static {v5, v5}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x9

    invoke-static {v3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->H([II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int/lit8 v3, v3, -0x51

    const v4, 0x7872a748

    const/4 v6, 0x0

    invoke-static {v5, v6, v6}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v7

    cmpl-float v6, v7, v6

    sub-int/2addr v4, v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    int-to-byte v6, v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    int-to-short v7, v7

    const v8, 0x3824849

    invoke-static {v5, v5}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v5, v9, v11

    sub-int/2addr v8, v5

    invoke-static {v3, v4, v6, v7, v8}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->x(IIBSI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ｋ(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->l:Lcom/ironsource/adqualitysdk/sdk/i/iz;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->e()Lcom/ironsource/adqualitysdk/sdk/i/ar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/adqualitysdk/sdk/i/ar;->ﾒ()I

    move-result v3

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/ag$h;

    invoke-direct {v4, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ag$h;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ag;)V

    invoke-virtual {v0, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/iz;->ﾒ(ILcom/ironsource/adqualitysdk/sdk/i/iz$c;)V

    :cond_bd
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    rem-int/2addr v0, v1
    :try_end_c6
    .catchall {:try_start_1 .. :try_end_c6} :catchall_d3

    if-nez v0, :cond_ca

    monitor-exit p0

    return-void

    :cond_ca
    :try_start_ca
    throw v2
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_cb

    :catchall_cb
    move-exception v0

    :try_start_cc
    throw v0

    :cond_cd
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->d()Z
    :try_end_d0
    .catchall {:try_start_cc .. :try_end_d0} :catchall_d3

    :try_start_d0
    throw v2
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_d1

    :catchall_d1
    move-exception v0

    :try_start_d2
    throw v0
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d3

    :catchall_d3
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private m()V
    .registers 3

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ag$b;

    invoke-direct {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ag$b;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ag;)V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->t:Lcom/ironsource/adqualitysdk/sdk/i/in;

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->k:Lcom/ironsource/adqualitysdk/sdk/i/ir;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ir;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/iu;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->t:Lcom/ironsource/adqualitysdk/sdk/i/in;

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/iu;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/in;)V

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/jg;

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ag$f;

    invoke-direct {v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ag$f;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ag;)V

    invoke-direct {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jg;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/jf;)V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->w:Lcom/ironsource/adqualitysdk/sdk/i/jg;

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jb;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/jb;

    move-result-object v0

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ag$j;

    invoke-direct {v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ag$j;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ag;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jb;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/jc;)V

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/ao;

    move-result-object v0

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ag$g;

    invoke-direct {v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ag$g;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ag;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/aq;)V

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_45

    const/4 v0, 0x0

    goto :goto_46

    :cond_45
    const/4 v0, 0x1

    :goto_46
    if-eqz v0, :cond_49

    return-void

    :cond_49
    const/16 v0, 0x25

    :try_start_4b
    div-int/2addr v0, v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4d

    return-void

    :catchall_4d
    move-exception v0

    throw v0
.end method

.method static synthetic n(Lcom/ironsource/adqualitysdk/sdk/i/ag;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0xc

    if-eqz v0, :cond_11

    const/16 v0, 0xc

    goto :goto_13

    :cond_11
    const/16 v0, 0x19

    :goto_13
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->B(Z)V

    return-void
.end method

.method private o()V
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    add-int/lit8 v1, v0, 0x77

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/lit8 v1, v1, 0x2

    iget-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->o:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    if-eq v1, v2, :cond_16

    goto :goto_21

    :cond_16
    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->ﻐ()V

    :goto_21
    iput-boolean v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->o:Z

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_31

    const/4 v0, 0x1

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    if-eq v0, v2, :cond_35

    return-void

    :cond_35
    const/16 v0, 0x33

    :try_start_37
    div-int/2addr v0, v3
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_39

    return-void

    :catchall_39
    move-exception v0

    throw v0
.end method

.method static synthetic p(Lcom/ironsource/adqualitysdk/sdk/i/ag;)V
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->l()V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    add-int/lit8 p0, p0, 0x1d

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    rem-int/lit8 p0, p0, 0x2

    const/4 v0, 0x4

    if-eqz p0, :cond_1d

    const/16 p0, 0x46

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x4

    :goto_1e
    if-ne p0, v0, :cond_21

    return-void

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

.method static synthetic q(Lcom/ironsource/adqualitysdk/sdk/i/ag;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x3c

    if-eqz v0, :cond_11

    const/16 v0, 0x3c

    goto :goto_13

    :cond_11
    const/16 v0, 0x4a

    :goto_13
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->O(Z)V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    add-int/lit8 p0, p0, 0x1b

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private declared-synchronized r()Z
    .registers 4

    monitor-enter p0

    :try_start_1
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    rem-int/lit8 v0, v0, 0x2

    iget-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->p:Z

    add-int/lit8 v1, v1, 0x19

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/lit8 v1, v1, 0x2
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_26

    const/16 v2, 0x4d

    if-nez v1, :cond_1c

    const/16 v1, 0x2a

    goto :goto_1e

    :cond_1c
    const/16 v1, 0x4d

    :goto_1e
    if-ne v1, v2, :cond_22

    monitor-exit p0

    return v0

    :cond_22
    const/4 v0, 0x0

    :try_start_23
    throw v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_24

    :catchall_24
    move-exception v0

    :try_start_25
    throw v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_26

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private s()V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x6

    if-nez v0, :cond_10

    const/16 v0, 0x4e

    goto :goto_11

    :cond_10
    const/4 v0, 0x6

    :goto_11
    const/4 v2, 0x0

    if-ne v0, v1, :cond_41

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->t:Lcom/ironsource/adqualitysdk/sdk/i/in;

    const/4 v1, 0x1

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    if-eq v0, v1, :cond_1f

    goto :goto_2a

    :cond_1f
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->k:Lcom/ironsource/adqualitysdk/sdk/i/ir;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ir;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/iu;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->t:Lcom/ironsource/adqualitysdk/sdk/i/in;

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/iu;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/in;)V

    :goto_2a
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->w:Lcom/ironsource/adqualitysdk/sdk/i/jg;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/jg;->ﻐ()V

    iput-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->w:Lcom/ironsource/adqualitysdk/sdk/i/jg;

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3e

    return-void

    :cond_3e
    :try_start_3e
    throw v2
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3f

    :catchall_3f
    move-exception v0

    throw v0

    :cond_41
    :try_start_41
    throw v2
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_42

    :catchall_42
    move-exception v0

    throw v0
.end method

.method static synthetic t(Lcom/ironsource/adqualitysdk/sdk/i/ag;)V
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->o()V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    add-int/lit8 p0, p0, 0x5d

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/lit8 p0, p0, 0x2

    const/16 v0, 0x4c

    if-nez p0, :cond_1e

    const/16 p0, 0x24

    goto :goto_20

    :cond_1e
    const/16 p0, 0x4c

    :goto_20
    if-ne p0, v0, :cond_23

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

.method static synthetic u(Lcom/ironsource/adqualitysdk/sdk/i/ag;)Landroid/os/Handler;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    add-int/lit8 v1, v0, 0xd

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    rem-int/lit8 v1, v1, 0x2

    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->n:Landroid/os/Handler;

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method

.method private v()V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->G(Z)V

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    add-int/lit8 v1, v1, 0x27

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x1

    :goto_1c
    if-eqz v0, :cond_1f

    return-void

    :cond_1f
    const/4 v0, 0x0

    :try_start_20
    throw v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_21

    :catchall_21
    move-exception v0

    throw v0
.end method

.method static synthetic w(Lcom/ironsource/adqualitysdk/sdk/i/ag;)Lcom/ironsource/adqualitysdk/sdk/i/q;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->y:Lcom/ironsource/adqualitysdk/sdk/i/q;

    if-eqz v0, :cond_15

    goto :goto_18

    :cond_15
    const/16 v0, 0x4e

    :try_start_17
    div-int/2addr v0, v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_19

    :goto_18
    return-object p0

    :catchall_19
    move-exception p0

    throw p0
.end method

.method private static x(IIBSI)Ljava/lang/String;
    .registers 12

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﺙ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ag;->c:I

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

    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->e:[B

    if-eqz p0, :cond_21

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/ag;->b:I

    add-int/2addr v6, p4

    aget-byte p0, p0, v6

    add-int/2addr p0, v2

    int-to-byte p0, p0

    goto :goto_2a

    :cond_21
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->f:[S

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/ag;->b:I

    add-int/2addr v6, p4

    aget-short p0, p0, v6

    add-int/2addr p0, v2

    int-to-short p0, p0

    :cond_2a
    :goto_2a
    if-lez p0, :cond_89

    add-int/2addr p4, p0

    add-int/lit8 p4, p4, -0x2

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ag;->b:I

    add-int/2addr p4, v2

    if-eqz v3, :cond_35

    const/4 v4, 0x1

    :cond_35
    add-int/2addr p4, v4

    sput p4, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾇ:I

    sput-byte p2, Lcom/ironsource/adqualitysdk/sdk/i/n;->ｋ:B

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/ag;->d:I

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

    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->e:[B

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
    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->f:[S

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

.method static synthetic y(Lcom/ironsource/adqualitysdk/sdk/i/ag;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/is;)V
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->F(Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/is;)V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    add-int/lit8 p0, p0, 0x1f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/lit8 p0, p0, 0x2

    const/16 p1, 0x2f

    if-nez p0, :cond_1e

    const/16 p0, 0x2f

    goto :goto_20

    :cond_1e
    const/16 p0, 0x26

    :goto_20
    if-eq p0, p1, :cond_23

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

.method private z(Lorg/json/JSONObject;)V
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->e()Lcom/ironsource/adqualitysdk/sdk/i/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ar;->ﾇ()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    add-int/lit8 v1, v1, 0x5b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/lit8 v1, v1, 0x2

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_29

    const/4 v1, 0x0

    goto :goto_2a

    :cond_29
    const/4 v1, 0x1

    :goto_2a
    if-eq v1, v2, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_20

    :cond_36
    return-void
.end method

.method public static ｋ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 23

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    const-string v2, ""

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const/16 v4, 0x30

    const-wide/16 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    :try_start_12
    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v10

    rsub-int/lit8 v10, v10, -0x51

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    const v13, 0x7872a759

    cmp-long v14, v11, v5

    add-int/2addr v14, v13

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v11

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    rsub-int/lit8 v11, v11, 0x1

    int-to-byte v11, v11

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v15

    shr-int/lit8 v15, v15, 0x10

    int-to-short v15, v15

    const v16, 0x382480e

    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v17

    add-int v5, v17, v16

    invoke-static {v10, v14, v11, v15, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->x(IIBSI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, p0

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v5, 0x4

    new-array v6, v5, [I

    const v10, 0x63afc08a

    aput v10, v6, v9

    const v10, -0x5df2925e

    aput v10, v6, v8

    const v10, 0x58a2d6f7

    aput v10, v6, v7

    const v10, 0x276b5f33

    const/4 v11, 0x3

    aput v10, v6, v11

    invoke-static {v2}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v10

    rsub-int/lit8 v10, v10, 0x4

    invoke-static {v6, v10}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->H([II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v10, p1

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v6

    cmpl-float v6, v6, v12

    rsub-int/lit8 v6, v6, -0x50

    invoke-static {v2, v4}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v10

    sub-int/2addr v13, v10

    invoke-static {v9, v9}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v10

    int-to-byte v10, v10

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v12, v14, v16

    add-int/lit8 v12, v12, -0x1

    int-to-short v12, v12

    const v14, 0x3824813

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v15

    shr-int/lit8 v15, v15, 0x10

    add-int/2addr v15, v14

    invoke-static {v6, v13, v10, v12, v15}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->x(IIBSI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v10, p2

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_ac
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_ac} :catch_115

    if-nez v6, :cond_fc

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    add-int/lit8 v6, v6, 0xd

    rem-int/lit16 v10, v6, 0x80

    sput v10, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/2addr v6, v7

    const v10, 0x19a690f7

    const v12, -0x56628b45

    const v13, 0x7e715027

    const v14, -0x3b45f9b7

    if-nez v6, :cond_e3

    :try_start_c5
    new-array v5, v5, [I

    aput v14, v5, v9

    aput v13, v5, v8

    aput v12, v5, v7

    aput v10, v5, v11

    const/16 v6, 0x2c

    invoke-static {v6}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v6

    shl-int v6, v11, v6

    invoke-static {v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->H([II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    :goto_df
    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_fc

    :cond_e3
    new-array v5, v5, [I

    aput v14, v5, v9

    aput v13, v5, v8

    aput v12, v5, v7

    aput v10, v5, v11

    invoke-static {v4}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v6

    add-int/lit8 v6, v6, -0x2b

    invoke-static {v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->H([II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5
    :try_end_fb
    .catch Lorg/json/JSONException; {:try_start_c5 .. :try_end_fb} :catch_115

    goto :goto_df

    :cond_fc
    :goto_fc
    const/16 v0, 0x32

    if-eqz v1, :cond_103

    const/16 v5, 0x32

    goto :goto_105

    :cond_103
    const/16 v5, 0x14

    :goto_105
    if-eq v5, v0, :cond_108

    goto :goto_142

    :cond_108
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/2addr v0, v7

    :try_start_111
    invoke-static {v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->ﾇ(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_114
    .catch Lorg/json/JSONException; {:try_start_111 .. :try_end_114} :catch_115

    goto :goto_142

    :catch_115
    move-exception v0

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_156

    invoke-static {v2, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->H([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    new-array v2, v2, [I

    fill-array-data v2, :array_166

    invoke-static {v9, v9}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1a

    invoke-static {v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->H([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_142
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    rem-int/2addr v0, v7

    if-eqz v0, :cond_14e

    const/4 v9, 0x1

    :cond_14e
    if-eq v9, v8, :cond_151

    return-object v3

    :cond_151
    const/4 v0, 0x0

    :try_start_152
    throw v0
    :try_end_153
    .catchall {:try_start_152 .. :try_end_153} :catchall_153

    :catchall_153
    move-exception v0

    move-object v1, v0

    throw v1

    :array_156
    .array-data 4
        0x71a41472
        -0x5385fcb5
        0x1cd694b7
        -0x55012212
        0x24dad68
        0x69b478dd
    .end array-data

    :array_166
    .array-data 4
        0x25a45b09
        0x35e3b827
        -0x4280dd88
        -0x11677891
        -0x33e215a6    # -4.1396584E7f
        -0x68c6e8e0
        0x90227d
        0x715a61af
        0x3a6de54
        0x3d9baf7d
        0x1ea7d7cb
        0x22898590
        -0xaa7cb63
        -0x758f832e
    .end array-data
.end method


# virtual methods
.method public final ﻐ()V
    .registers 12

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->y:Lcom/ironsource/adqualitysdk/sdk/i/q;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    rsub-int/lit8 v1, v1, -0x51

    const v2, 0x7872a769

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v3, v3}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v2

    int-to-byte v2, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v5

    shr-int/lit8 v5, v5, 0x8

    int-to-short v5, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v6

    shr-int/lit8 v6, v6, 0x8

    const v7, 0x38247e7

    sub-int v6, v7, v6

    invoke-static {v1, v4, v2, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->x(IIBSI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/q;->onEvent(Ljava/lang/String;)V

    const-string v0, ""

    invoke-static {v0, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    rsub-int/lit8 v1, v1, -0x51

    const v2, 0x7872a768

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    cmp-long v10, v4, v8

    add-int/2addr v10, v2

    const/16 v2, 0x30

    invoke-static {v0, v2, v3, v3}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v0

    rsub-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    invoke-static {v3, v6, v6}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v2

    cmpl-float v2, v2, v6

    int-to-short v2, v2

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    add-int/2addr v4, v7

    invoke-static {v1, v10, v0, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->x(IIBSI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->ﻐ(Ljava/lang/String;Lorg/json/JSONObject;)V

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_7c

    const/4 v3, 0x1

    :cond_7c
    if-nez v3, :cond_7f

    return-void

    :cond_7f
    const/4 v0, 0x0

    :try_start_80
    throw v0
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_81

    :catchall_81
    move-exception v0

    throw v0
.end method

.method public final ﻐ(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x37

    if-nez v0, :cond_11

    const/16 v0, 0x1d

    goto :goto_13

    :cond_11
    const/16 v0, 0x37

    :goto_13
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->ﻛ(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    if-eq v0, v1, :cond_20

    const/16 p1, 0x58

    :try_start_1b
    div-int/lit8 p1, p1, 0x0
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_1e

    goto :goto_20

    :catchall_1e
    move-exception p1

    throw p1

    :cond_20
    :goto_20
    return-void
.end method

.method public final ﻛ()V
    .registers 12

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->o:Z

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->ﾒ()V

    monitor-enter p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_17

    :try_start_7
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->n:Landroid/os/Handler;

    if-eqz v1, :cond_f

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_f
    invoke-direct {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->G(Z)V

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit p0

    throw v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_17} :catch_17

    :catch_17
    move-exception v1

    const/4 v2, 0x6

    new-array v2, v2, [I

    fill-array-data v2, :array_66

    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/view/View;->resolveSize(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x9

    invoke-static {v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->H([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-static {v4, v3}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v4

    add-int/lit8 v4, v4, -0x51

    const v5, 0x7872a73b

    invoke-static {v3, v3}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    add-int/2addr v10, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    int-to-byte v5, v5

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    sub-int/2addr v0, v6

    int-to-short v0, v0

    const v6, 0x38247f3

    invoke-static {v8, v9}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v4, v10, v5, v0, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->x(IIBSI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void

    nop

    :array_66
    .array-data 4
        0x71a41472
        -0x5385fcb5
        0x1cd694b7
        -0x55012212
        0x24dad68
        0x69b478dd
    .end array-data
.end method

.method public final declared-synchronized ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ix$d;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->r:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    add-int/lit8 p1, p1, 0xd

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final ﻛ(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 30

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v8, 0x6

    new-array v2, v8, [I

    fill-array-data v2, :array_260

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v3

    const/16 v9, 0x10

    shr-int/2addr v3, v9

    const/16 v4, 0x9

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->H([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0xc

    new-array v6, v5, [I

    fill-array-data v6, :array_270

    const-string v10, ""

    invoke-static {v10}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x17

    invoke-static {v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->H([II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xa

    new-array v7, v6, [I

    fill-array-data v7, :array_28c

    const/4 v11, 0x0

    invoke-static {v11}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    add-int/lit8 v12, v16, 0x11

    invoke-static {v7, v12}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->H([II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v7, p2

    invoke-static {v2, v3, v7}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾇ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v12, 0x8

    const/4 v13, 0x1

    :try_start_67
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->e()Lcom/ironsource/adqualitysdk/sdk/i/ar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ar;->ﻛ()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x7

    const v16, 0x69b478dd

    const v17, 0x24dad68

    const v18, -0x55012212

    const v19, 0x1cd694b7

    const v20, -0x5385fcb5

    const v21, 0x71a41472

    const/16 v22, 0x5

    const/16 v23, 0x4

    const/16 v24, 0x3

    const/16 v25, 0x2

    if-eqz v2, :cond_156

    new-array v2, v8, [I

    aput v21, v2, v11

    aput v20, v2, v13

    aput v19, v2, v25

    aput v18, v2, v24

    aput v17, v2, v23

    aput v16, v2, v22

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v7

    shr-int/2addr v7, v9

    add-int/2addr v7, v4

    invoke-static {v2, v7}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->H([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-array v14, v9, [I

    const v15, 0x7f0e3e44

    aput v15, v14, v11

    const v15, 0x6a8dc582

    aput v15, v14, v13

    const v15, -0x656a60a0

    aput v15, v14, v25

    const v15, -0x14a78d04

    aput v15, v14, v24

    const v15, -0x26f7ebc6

    aput v15, v14, v23

    const v15, 0x735199c2

    aput v15, v14, v22

    const v15, 0x5f798f41

    aput v15, v14, v8

    const v15, -0x4372de7b

    aput v15, v14, v3

    const v3, -0x5e04b2e8

    aput v3, v14, v12

    const v3, 0x2d803a5c

    aput v3, v14, v4

    const v3, 0x7b4d6a6b

    aput v3, v14, v6

    const/16 v3, 0xb

    const v4, 0x2e662e3e

    aput v4, v14, v3

    const v3, -0x539a094d

    aput v3, v14, v5

    const/16 v3, 0xd

    const v4, -0x60442318

    aput v4, v14, v3

    const/16 v3, 0xe

    const v4, -0x37865533

    aput v4, v14, v3

    const/16 v3, 0xf

    const v4, -0x49d856eb

    aput v4, v14, v3

    invoke-static {v11, v11}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1d

    invoke-static {v14, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->H([II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v0

    shr-int/2addr v0, v9

    rsub-int/lit8 v0, v0, -0x51

    const v3, 0x7872a715

    invoke-static {v10}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v4

    shr-int/2addr v4, v9

    int-to-byte v4, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v5

    shr-int/2addr v5, v9

    int-to-short v5, v5

    const v6, 0x3824819

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v11

    shr-int/2addr v11, v9

    sub-int/2addr v6, v11

    invoke-static {v0, v3, v4, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->x(IIBSI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ｋ(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_156
    new-array v2, v8, [I

    aput v21, v2, v11

    aput v20, v2, v13

    aput v19, v2, v25

    aput v18, v2, v24

    aput v17, v2, v23

    aput v16, v2, v22

    invoke-static {v10, v10}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v14

    rsub-int/lit8 v14, v14, 0x9

    invoke-static {v2, v14}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->H([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    new-array v15, v9, [I

    const v16, -0x499fd7c7

    aput v16, v15, v11

    const v11, -0x2f9f7bbb

    aput v11, v15, v13

    const v11, -0x14c7d5d7

    aput v11, v15, v25

    const v11, 0x4aedaf38    # 7788444.0f

    aput v11, v15, v24

    const v11, -0x52751fac

    aput v11, v15, v23

    const v11, 0x292cfc4

    aput v11, v15, v22

    const v11, 0x6252a13d

    aput v11, v15, v8

    const v11, -0x3dba260a

    aput v11, v15, v3

    const v3, -0x7270c077

    aput v3, v15, v12

    const v3, 0x198ddbd7

    aput v3, v15, v4

    const v3, 0x69e06115

    aput v3, v15, v6

    const/16 v3, 0xb

    const v4, 0x6a226764

    aput v4, v15, v3

    const v3, 0xf500013

    aput v3, v15, v5

    const/16 v3, 0xd

    const v4, -0x3b1980bd

    aput v4, v15, v3

    const/16 v3, 0xe

    const v4, 0x2310b820

    aput v4, v15, v3

    const/16 v3, 0xf

    const v4, 0x5cc24735

    aput v4, v15, v3

    invoke-static {v10}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x20

    invoke-static {v15, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->H([II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ｋ(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->m:Lcom/ironsource/adqualitysdk/sdk/i/ai;

    iget-object v3, v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->k:Lcom/ironsource/adqualitysdk/sdk/i/ir;

    invoke-virtual {v3}, Lcom/ironsource/adqualitysdk/sdk/i/ir;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/iu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/adqualitysdk/sdk/i/iu;->ﻐ()Z

    move-result v6

    new-instance v11, Lcom/ironsource/adqualitysdk/sdk/i/ag$e;

    invoke-direct {v11, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ag$e;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ag;)V

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v7, v11

    invoke-virtual/range {v2 .. v7}, Lcom/ironsource/adqualitysdk/sdk/i/ai;->ﾒ(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZLcom/ironsource/adqualitysdk/sdk/i/ai$e;)V
    :try_end_207
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_207} :catch_212

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    :catch_212
    move-exception v0

    move-object v4, v0

    new-array v0, v8, [I

    fill-array-data v0, :array_2a4

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    add-int/2addr v2, v12

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->H([II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x51

    const v3, 0x7872a73a

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v5

    shr-int/2addr v5, v9

    sub-int/2addr v3, v5

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v7

    add-int/2addr v7, v13

    int-to-byte v7, v7

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v8

    shr-int/2addr v8, v9

    int-to-short v8, v8

    const v9, 0x382482f

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v10

    cmp-long v12, v10, v5

    sub-int/2addr v9, v12

    invoke-static {v0, v3, v7, v8, v9}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->x(IIBSI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V

    return-void

    nop

    :array_260
    .array-data 4
        0x71a41472
        -0x5385fcb5
        0x1cd694b7
        -0x55012212
        0x24dad68
        0x69b478dd
    .end array-data

    :array_270
    .array-data 4
        -0x499fd7c7
        -0x2f9f7bbb
        -0x14c7d5d7
        0x4aedaf38    # 7788444.0f
        -0x52751fac
        0x292cfc4
        0x6252a13d
        -0x3dba260a
        -0x7270c077
        0x198ddbd7
        0x1e11c74c
        -0x1bb945b
    .end array-data

    :array_28c
    .array-data 4
        0x69e06115
        0x6a226764
        -0x293235e1
        -0x11d26da7
        0x65cb3111
        -0x582ab7ea
        -0x359302ac    # -3882837.0f
        -0x3c49abf
        -0x2ede0d19
        -0x31d1153f
    .end array-data

    :array_2a4
    .array-data 4
        0x71a41472
        -0x5385fcb5
        0x1cd694b7
        -0x55012212
        0x24dad68
        0x69b478dd
    .end array-data
.end method

.method public final ｋ()Ljava/lang/String;
    .registers 7

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ix;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->s:Landroid/content/Context;

    const/16 v2, 0xe

    new-array v2, v2, [I

    fill-array-data v2, :array_44

    const v3, 0x1000019

    const/4 v4, 0x0

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->H([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_64

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x18

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->H([II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ix;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->Q(Lcom/ironsource/adqualitysdk/sdk/i/ix;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    nop

    :array_44
    .array-data 4
        -0x42c70ca1
        0x7fdb01a0
        -0x39457012
        -0x24787b5d
        0x1bcee2b7
        -0x51ee7cde
        -0x335008fe    # -9.225627E7f
        -0x383b1f09
        0x57fff917
        0x42ef49c5
        0x1cd694b7
        -0x55012212
        0x24dad68
        0x69b478dd
    .end array-data

    :array_64
    .array-data 4
        -0x6310c6a3
        -0x7d1f0750
        0x23ea819d
        -0x304aab51
        0x29a9395f
        0x163a92a0
        -0x29fad476
        0x43bf9f00
        0xb1f89f3
        0x18304507
        -0x37b64e21
        -0x40867ad0
    .end array-data
.end method

.method public final declared-synchronized ﾇ()V
    .registers 5

    monitor-enter p0

    :try_start_1
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    const/4 v3, 0x0

    if-eq v0, v2, :cond_25

    iput-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->j:Z

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->n:Landroid/os/Handler;

    const/16 v1, 0x2f

    if-eqz v0, :cond_20

    const/16 v0, 0x2f

    goto :goto_22

    :cond_20
    const/16 v0, 0x33

    :goto_22
    if-eq v0, v1, :cond_2b

    goto :goto_30

    :cond_25
    iput-boolean v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->j:Z

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->n:Landroid/os/Handler;

    if-eqz v0, :cond_30

    :cond_2b
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->n:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->k:Lcom/ironsource/adqualitysdk/sdk/i/ir;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ir;->ﾇ()V

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->s()V

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    rem-int/lit8 v0, v0, 0x2
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_49

    if-eqz v0, :cond_46

    monitor-exit p0

    return-void

    :cond_46
    :try_start_46
    throw v3
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_47

    :catchall_47
    move-exception v0

    :try_start_48
    throw v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_49

    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final ﾒ()V
    .registers 11

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->y:Lcom/ironsource/adqualitysdk/sdk/i/q;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v1, v1, v2, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v3

    add-int/lit8 v3, v3, -0x51

    invoke-static {v2, v2}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v4

    const v5, 0x7872a769

    add-int/2addr v4, v5

    const/16 v6, 0x30

    invoke-static {v1, v6}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v6

    const v7, 0x38247dc

    const/4 v8, 0x0

    cmpl-float v6, v6, v8

    add-int/lit8 v6, v6, -0x1

    int-to-short v6, v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v9

    shr-int/lit8 v9, v9, 0x10

    add-int/2addr v9, v7

    invoke-static {v3, v4, v1, v6, v9}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->x(IIBSI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/q;->onEvent(Ljava/lang/String;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, -0x51

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v5

    invoke-static {v2}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v3

    cmpl-float v3, v3, v8

    int-to-byte v3, v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    int-to-short v4, v4

    invoke-static {v2, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    add-int/2addr v2, v7

    invoke-static {v0, v1, v3, v4, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->x(IIBSI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->ﻐ(Ljava/lang/String;Lorg/json/JSONObject;)V

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public final declared-synchronized ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ah;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h:I

    add-int/lit8 p1, p1, 0x3f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ag;->g:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_28

    const/4 v0, 0x1

    if-eqz p1, :cond_1f

    const/4 p1, 0x1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    if-eq p1, v0, :cond_24

    monitor-exit p0

    return-void

    :cond_24
    const/4 p1, 0x0

    :try_start_25
    throw p1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_26

    :catchall_26
    move-exception p1

    :try_start_27
    throw p1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method
