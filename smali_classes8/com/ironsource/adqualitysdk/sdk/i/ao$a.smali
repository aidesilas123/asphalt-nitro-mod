###### Class com.ironsource.adqualitysdk.sdk.i.ao.a (com.ironsource.adqualitysdk.sdk.i.ao$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ao$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/ao;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static d:I = 0x27

.field private static e:[I = null

.field private static f:I = 0x0

.field private static g:I = 0x1


# instance fields
.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private m:Lcom/ironsource/adqualitysdk/sdk/i/ix;

.field private n:Lcom/ironsource/adqualitysdk/sdk/i/ir;

.field private o:Landroid/os/Handler;

.field private p:Lcom/ironsource/adqualitysdk/sdk/i/aw;

.field private q:Lcom/ironsource/adqualitysdk/sdk/i/ar;

.field private r:Lcom/ironsource/adqualitysdk/sdk/i/ap;

.field private s:Lcom/ironsource/adqualitysdk/sdk/i/aq;

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/aq;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/aq;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcom/ironsource/adqualitysdk/sdk/i/ao$d;

.field private w:Z

.field private x:Z

.field private y:Lcom/ironsource/adqualitysdk/sdk/i/am;

.field private z:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->e:[I

    return-void

    :array_a
    .array-data 4
        -0x1f2c473c
        -0x43f45b01
        0x3fad740
        -0x52c2502e
        0x653e14cd
        -0x2dac9c94
        0x454ff81d
        0x3308694b
        -0xd8f9a6a
        -0x14c08e38
        -0x11d06f46
        -0x563f181d
        -0x1302726b
        -0x57759d
        0x7a0a96d4
        -0x6e4a596f
        0x4dc54907    # 4.1373718E8f
        -0x1d626626
    .end array-data
.end method

.method public constructor <init>()V
    .registers 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ao;-><init>(B)V

    invoke-static {v1, v1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v2

    add-int/lit16 v2, v2, 0x94

    const-string v3, ""

    invoke-static {v3}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    invoke-static {v3, v1, v1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v5

    add-int/lit8 v5, v5, 0x3

    const-string v6, "\u0001\t\ufff8"

    invoke-static {v2, v1, v4, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->m(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    const/4 v2, 0x2

    new-array v4, v2, [I

    fill-array-data v4, :array_10e

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    const-string v10, "\n\u0002\ufffd\ufff9"

    const/16 v11, 0x30

    const-string v12, "\ufffe\u0003\u0005\ufffa"

    const-string v15, "\n\n\ufff8\ufff7"

    const/4 v13, 0x0

    cmp-long v14, v5, v8

    rsub-int/lit8 v5, v14, 0x4

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f([II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/lit16 v4, v4, 0x91

    invoke-static {v1, v1}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v5

    cmp-long v14, v5, v8

    rsub-int/lit8 v5, v14, 0x3

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    rsub-int/lit8 v6, v6, 0x4

    invoke-static {v4, v7, v5, v6, v10}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->m(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    new-array v4, v2, [I

    fill-array-data v4, :array_116

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    add-int/lit8 v5, v5, 0x4

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f([II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    add-int/lit16 v4, v4, 0x92

    invoke-static {v3, v11, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    add-int/lit8 v5, v5, 0x4

    invoke-static {v4, v7, v3, v5, v12}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->m(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    add-int/lit16 v7, v7, 0x90

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, 0x3

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v4

    cmp-long v6, v4, v8

    add-int/lit8 v6, v6, 0x3

    invoke-static {v7, v1, v3, v6, v15}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->m(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    new-array v3, v2, [I

    fill-array-data v3, :array_11e

    invoke-static {v8, v9}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f([II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    new-array v3, v2, [I

    fill-array-data v3, :array_126

    invoke-static {v1, v1}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v4

    cmp-long v1, v4, v8

    sub-int/2addr v2, v1

    invoke-static {v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x18

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    long-to-int v3, v2

    iput v3, v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->h:I

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    long-to-int v4, v3

    iput v4, v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->i:I

    const-wide/16 v3, 0xc

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    long-to-int v1, v3

    iput v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->j:I

    const-wide/16 v3, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    long-to-int v1, v3

    iput v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->k:I

    const-wide/16 v3, 0xa

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    long-to-int v2, v1

    iput v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->l:I

    iput-object v13, v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->z:Ljava/util/List;

    return-void

    :array_10e
    .array-data 4
        0x75a052a9
        -0x744fa4ee
    .end array-data

    :array_116
    .array-data 4
        0x16a08d0b
        0x7921dc26
    .end array-data

    :array_11e
    .array-data 4
        -0x3c270c6e
        0x51743412
    .end array-data

    :array_126
    .array-data 4
        0x73303a87
        -0x4758cf8f
    .end array-data
.end method

.method private a()Lorg/json/JSONObject;
    .registers 10

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x47

    if-eqz v0, :cond_11

    const/16 v0, 0x47

    goto :goto_13

    :cond_11
    const/16 v0, 0x3f

    :goto_13
    const-wide/16 v2, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eq v0, v1, :cond_38

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->m:Lcom/ironsource/adqualitysdk/sdk/i/ix;

    new-array v1, v4, [I

    fill-array-data v1, :array_7a

    invoke-static {v5, v5}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v6

    cmp-long v4, v6, v2

    add-int/lit8 v4, v4, 0xe

    invoke-static {v1, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ix;->ﾇ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_74

    goto :goto_57

    :cond_38
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->m:Lcom/ironsource/adqualitysdk/sdk/i/ix;

    new-array v1, v4, [I

    fill-array-data v1, :array_8e

    const/16 v4, 0x3d

    invoke-static {v5, v5}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v6

    cmp-long v8, v6, v2

    shl-int v2, v4, v8

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ix;->ﾇ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_74

    :goto_57
    :try_start_57
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5c
    .catch Lorg/json/JSONException; {:try_start_57 .. :try_end_5c} :catch_74

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_6a

    const/4 v0, 0x0

    goto :goto_6b

    :cond_6a
    const/4 v0, 0x1

    :goto_6b
    if-eqz v0, :cond_6e

    return-object v1

    :cond_6e
    const/16 v0, 0x25

    :try_start_70
    div-int/2addr v0, v5
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_72

    return-object v1

    :catchall_72
    move-exception v0

    throw v0

    :catch_74
    :cond_74
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0

    :array_7a
    .array-data 4
        0xf99785a
        0x59bcdc66
        0x5e91dff8
        -0x6f25ba7c
        -0x6362ee5e
        0x68e0ba52
        -0x54fe3748
        0xfda1a6
    .end array-data

    :array_8e
    .array-data 4
        0xf99785a
        0x59bcdc66
        0x5e91dff8
        -0x6f25ba7c
        -0x6362ee5e
        0x68e0ba52
        -0x54fe3748
        0xfda1a6
    .end array-data
.end method

.method private declared-synchronized b()V
    .registers 3

    monitor-enter p0

    :try_start_1
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->o:Landroid/os/Handler;

    if-eqz v0, :cond_17

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a$e;

    invoke-direct {v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a$e;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ao$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_17
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    rem-int/lit8 v0, v0, 0x2
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    monitor-exit p0

    return-void

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/ironsource/adqualitysdk/sdk/i/ao$a;)Lcom/ironsource/adqualitysdk/sdk/i/aq;
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    add-int/lit8 v1, v0, 0x43

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_10

    const/4 v1, 0x0

    goto :goto_11

    :cond_10
    const/4 v1, 0x1

    :goto_11
    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->s:Lcom/ironsource/adqualitysdk/sdk/i/aq;

    if-eq v1, v3, :cond_1b

    const/16 v1, 0x3e

    :try_start_17
    div-int/2addr v1, v2
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_19

    goto :goto_1b

    :catchall_19
    move-exception p0

    throw p0

    :cond_1b
    :goto_1b
    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method

.method static synthetic d(Lcom/ironsource/adqualitysdk/sdk/i/ao$a;)Landroid/os/Handler;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x7

    if-eqz v0, :cond_10

    const/16 v0, 0x28

    goto :goto_11

    :cond_10
    const/4 v0, 0x7

    :goto_11
    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->o:Landroid/os/Handler;

    if-ne v0, v1, :cond_16

    return-object p0

    :cond_16
    const/4 p0, 0x0

    :try_start_17
    throw p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_18

    :catchall_18
    move-exception p0

    throw p0
.end method

.method static synthetic e(Lcom/ironsource/adqualitysdk/sdk/i/ao$a;)Lcom/ironsource/adqualitysdk/sdk/i/ao$d;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->v:Lcom/ironsource/adqualitysdk/sdk/i/ao$d;

    if-eqz v0, :cond_15

    goto :goto_18

    :cond_15
    const/16 v0, 0x47

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

.method private static f([II)Ljava/lang/String;
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

    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->e:[I

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

.method static synthetic g(Lorg/json/JSONObject;J)V
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->n(Lorg/json/JSONObject;J)V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    add-int/lit8 p0, p0, 0x51

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

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

.method static synthetic h(Lcom/ironsource/adqualitysdk/sdk/i/ao$a;)V
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->b()V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    add-int/lit8 p0, p0, 0x27

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    rem-int/lit8 p0, p0, 0x2

    const/16 v0, 0x15

    if-nez p0, :cond_1e

    const/16 p0, 0x41

    goto :goto_20

    :cond_1e
    const/16 p0, 0x15

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

.method static synthetic i(Lcom/ironsource/adqualitysdk/sdk/i/ao$a;)Ljava/util/List;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    add-int/lit8 v1, v0, 0x7

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    rem-int/lit8 v1, v1, 0x2

    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->u:Ljava/util/List;

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    if-eq v0, v1, :cond_1e

    return-object p0

    :cond_1e
    const/16 v0, 0x53

    :try_start_20
    div-int/2addr v0, v2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_22

    return-object p0

    :catchall_22
    move-exception p0

    throw p0
.end method

.method static synthetic j(Lcom/ironsource/adqualitysdk/sdk/i/ao$a;Lcom/ironsource/adqualitysdk/sdk/i/aq;)Lcom/ironsource/adqualitysdk/sdk/i/aq;
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->s:Lcom/ironsource/adqualitysdk/sdk/i/aq;

    if-ne v0, v2, :cond_1d

    add-int/lit8 v1, v1, 0x59

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    rem-int/lit8 v1, v1, 0x2

    return-object p1

    :cond_1d
    const/4 p0, 0x0

    :try_start_1e
    throw p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception p0

    throw p0
.end method

.method static synthetic k(Lcom/ironsource/adqualitysdk/sdk/i/ao$a;)Ljava/util/List;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    add-int/lit8 v1, v0, 0x2d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    rem-int/lit8 v1, v1, 0x2

    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->t:Ljava/util/List;

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x26

    if-eqz v0, :cond_1b

    const/16 v0, 0x26

    goto :goto_1d

    :cond_1b
    const/16 v0, 0x2d

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

.method static synthetic l(Lcom/ironsource/adqualitysdk/sdk/i/ao$a;)Lcom/ironsource/adqualitysdk/sdk/i/ix;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->m:Lcom/ironsource/adqualitysdk/sdk/i/ix;

    if-eq v0, v2, :cond_1b

    const/16 v0, 0x48

    :try_start_17
    div-int/2addr v0, v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_19

    goto :goto_1b

    :catchall_19
    move-exception p0

    throw p0

    :cond_1b
    :goto_1b
    return-object p0
.end method

.method private static m(IZIILjava/lang/String;)Ljava/lang/String;
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

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->d:I

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

.method private static n(Lorg/json/JSONObject;J)V
    .registers 15

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v2

    add-int/lit16 v2, v2, 0x9a

    invoke-static {v0, v0, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x3

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/16 v8, 0x20

    const-string v9, "\u0000\u0001\u0000"

    const/4 v10, 0x1

    cmp-long v11, v4, v6

    add-int/lit8 v11, v11, 0x2

    invoke-static {v2, v10, v3, v11, v9}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->m(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    const/16 v2, 0x20

    goto :goto_3b

    :cond_39
    const/16 v2, 0x15

    :goto_3b
    if-eq v2, v8, :cond_3e

    goto :goto_8d

    :cond_3e
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    add-int/lit8 v2, v2, 0x23

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    rem-int/lit8 v2, v2, 0x2

    :try_start_48
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    rsub-int v2, v2, 0x9a

    invoke-static {v1}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    const/16 v4, 0x30

    invoke-static {v0, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x2

    invoke-static {v2, v10, v3, v5, v9}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->m(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v4, v1, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v3

    rsub-int v3, v3, 0x99

    invoke-static {v0, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    shr-int/lit8 v1, v1, 0x6

    add-int/lit8 v1, v1, 0x3

    invoke-static {v3, v10, v0, v1, v9}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->m(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v3, 0x2

    div-long/2addr p1, v3

    add-long/2addr v0, p1

    invoke-virtual {p0, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_8d
    .catch Lorg/json/JSONException; {:try_start_48 .. :try_end_8d} :catch_8d

    :catch_8d
    :goto_8d
    return-void
.end method


# virtual methods
.method public final く()I
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->乁()Lorg/json/JSONObject;

    move-result-object v0

    new-array v2, v1, [I

    fill-array-data v2, :array_42

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int/lit8 v3, v3, 0x3

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->i:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    add-int/lit8 v2, v2, 0x6b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    rem-int/2addr v2, v1

    const/16 v1, 0x31

    if-nez v2, :cond_39

    const/16 v2, 0x43

    goto :goto_3b

    :cond_39
    const/16 v2, 0x31

    :goto_3b
    if-ne v2, v1, :cond_3e

    return v0

    :cond_3e
    const/4 v0, 0x0

    :try_start_3f
    throw v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v0

    throw v0

    :array_42
    .array-data 4
        -0x6e9e4e3c
        -0x214fbec4
    .end array-data
.end method

.method public final っ()I
    .registers 10

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v2, 0x5

    if-eqz v0, :cond_f

    const/4 v0, 0x5

    goto :goto_11

    :cond_f
    const/16 v0, 0x18

    :goto_11
    const/4 v3, 0x1

    const-string v4, "\u000c\ufff9\ufffb"

    const-string v5, ""

    const/4 v6, 0x0

    if-eq v0, v2, :cond_3a

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->乁()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int v2, v2, 0x8f

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    add-int/lit8 v7, v7, 0x3

    const/16 v8, 0x30

    invoke-static {v5, v8}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x2

    invoke-static {v2, v3, v7, v5, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->m(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5b

    :cond_3a
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->乁()Lorg/json/JSONObject;

    move-result-object v0

    const/16 v2, 0x7a18

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v7

    shl-int/lit8 v7, v7, 0x12

    ushr-int/2addr v2, v7

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v7

    ushr-int/lit8 v7, v7, 0x7d

    add-int/lit8 v7, v7, 0x4

    const/16 v8, 0x2a

    invoke-static {v5, v8}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v5

    ushr-int v5, v1, v5

    invoke-static {v2, v6, v7, v5, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->m(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_5b
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->j:I

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    add-int/lit8 v2, v2, 0x59

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    rem-int/2addr v2, v1

    if-nez v2, :cond_71

    const/4 v3, 0x0

    :cond_71
    if-eqz v3, :cond_74

    return v0

    :cond_74
    const/16 v1, 0x14

    :try_start_76
    div-int/2addr v1, v6
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_78

    return v0

    :catchall_78
    move-exception v0

    throw v0
.end method

.method public final ヮ()I
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->乁()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const v2, 0x73303a87

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const v4, -0x4758cf8f

    aput v4, v1, v2

    const-string v2, ""

    invoke-static {v2, v3}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x3

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2c

    return v0

    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ヶ()Lcom/ironsource/adqualitysdk/sdk/i/ir;
    .registers 4

    monitor-enter p0

    :try_start_1
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    add-int/lit8 v1, v0, 0x39

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x16

    if-eqz v1, :cond_12

    const/16 v1, 0x2e

    goto :goto_14

    :cond_12
    const/16 v1, 0x16

    :goto_14
    if-eq v1, v2, :cond_1f

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->n:Lcom/ironsource/adqualitysdk/sdk/i/ir;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_2b

    const/16 v2, 0x1a

    :try_start_1a
    div-int/lit8 v2, v2, 0x0
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_1d

    goto :goto_21

    :catchall_1d
    move-exception v0

    :try_start_1e
    throw v0

    :cond_1f
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->n:Lcom/ironsource/adqualitysdk/sdk/i/ir;

    :goto_21
    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    rem-int/lit8 v0, v0, 0x2
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_2b

    monitor-exit p0

    return-object v1

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final 丫()Z
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->乁()Lorg/json/JSONObject;

    move-result-object v0

    new-array v2, v1, [I

    fill-array-data v2, :array_32

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, 0x4

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    add-int/lit8 v2, v2, 0x79

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    rem-int/2addr v2, v1

    return v0

    nop

    :array_32
    .array-data 4
        -0x3c270c6e
        0x51743412
    .end array-data
.end method

.method public final 爫()I
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->乁()Lorg/json/JSONObject;

    move-result-object v0

    new-array v2, v1, [I

    fill-array-data v2, :array_44

    const/4 v3, 0x0

    invoke-static {v3, v3, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-static {v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->l:I

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    add-int/lit8 v2, v2, 0x7

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    rem-int/2addr v2, v1

    const/16 v1, 0x37

    if-eqz v2, :cond_38

    const/16 v2, 0x4f

    goto :goto_3a

    :cond_38
    const/16 v2, 0x37

    :goto_3a
    if-eq v2, v1, :cond_42

    const/16 v1, 0x54

    :try_start_3e
    div-int/2addr v1, v3
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_40

    return v0

    :catchall_40
    move-exception v0

    throw v0

    :cond_42
    return v0

    nop

    :array_44
    .array-data 4
        0x16a08d0b
        0x7921dc26
    .end array-data
.end method

.method public final declared-synchronized ﬤ()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->o:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->o:Landroid/os/Handler;

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a$d;

    invoke-direct {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a$d;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ao$a;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    rem-int/lit8 v0, v0, 0x2
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final טּ()Ljava/util/List;
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eq v0, v1, :cond_57

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->z:Ljava/util/List;

    if-nez v0, :cond_54

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->乁()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v3

    add-int/lit16 v3, v3, 0x91

    const/16 v4, 0x30

    invoke-static {v1, v4, v2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x2

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    const-string v5, "\n\n\ufff8\ufff7"

    invoke-static {v3, v2, v1, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->m(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a$h;

    invoke-direct {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a$h;-><init>()V

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->ﾇ(Lorg/json/JSONArray;Lcom/ironsource/adqualitysdk/sdk/i/ju$d;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->z:Ljava/util/List;

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    rem-int/lit8 v0, v0, 0x2

    :cond_54
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->z:Ljava/util/List;

    return-object v0

    :cond_57
    const/4 v0, 0x0

    :try_start_58
    throw v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_59

    :catchall_59
    move-exception v0

    throw v0
.end method

.method public final סּ()Lorg/json/JSONObject;
    .registers 4

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->リ()Lcom/ironsource/adqualitysdk/sdk/i/as;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    const/4 v0, 0x1

    :goto_9
    if-eqz v0, :cond_17

    const/4 v0, 0x0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    add-int/lit8 v1, v1, 0x5

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :cond_17
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->リ()Lcom/ironsource/adqualitysdk/sdk/i/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/as;->ﻏ()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final ףּ()Ljava/lang/String;
    .registers 9

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->乁()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_76

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->乁()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3, v3}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v4

    const/16 v5, 0x4c

    const-string v6, ""

    const-string v7, "\ufff8\u0008\ufff8\u0008"

    cmpl-float v3, v4, v3

    rsub-int v3, v3, 0x93

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/lit8 v4, v4, 0x4

    invoke-static {v6}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x5

    invoke-static {v3, v2, v4, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->m(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_48

    const/16 v3, 0x4c

    goto :goto_4a

    :cond_48
    const/16 v3, 0x3f

    :goto_4a
    if-eq v3, v5, :cond_4d

    goto :goto_65

    :cond_4d
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_5a

    goto :goto_5b

    :cond_5a
    const/4 v2, 0x1

    :goto_5b
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->リ()Lcom/ironsource/adqualitysdk/sdk/i/as;

    move-result-object v0

    if-eqz v2, :cond_70

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/as;->ﺙ()Ljava/lang/String;

    move-result-object v0

    :goto_65
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    add-int/lit8 v1, v1, 0x67

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :cond_70
    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/as;->ﺙ()Ljava/lang/String;

    :try_start_73
    throw v1
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_74

    :catchall_74
    move-exception v0

    throw v0

    :cond_76
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public final ﭖ()I
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->乁()Lorg/json/JSONObject;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v1

    rsub-int v1, v1, 0x90

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    const-string v5, ""

    invoke-static {v5, v5, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x4

    const-string v5, "\n\u0002\ufffd\ufff9"

    invoke-static {v1, v2, v4, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->m(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->k:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    add-int/lit8 v1, v1, 0x73

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    rem-int/lit8 v1, v1, 0x2

    return v0
.end method

.method public final ﭴ()Ljava/lang/String;
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->乁()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View;->resolveSize(II)I

    move-result v2

    rsub-int v2, v2, 0x94

    const/4 v3, 0x0

    invoke-static {v1, v3, v3}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v4

    const-string v5, "\u0001\t\ufff8"

    cmpl-float v3, v4, v3

    add-int/lit8 v3, v3, 0x2

    const v4, -0xfffffd

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    sub-int/2addr v4, v6

    invoke-static {v2, v1, v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->m(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    add-int/lit8 v2, v2, 0x9

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    rem-int/lit8 v2, v2, 0x2

    const/16 v3, 0x11

    if-nez v2, :cond_45

    const/16 v2, 0x1d

    goto :goto_47

    :cond_45
    const/16 v2, 0x11

    :goto_47
    if-eq v2, v3, :cond_4f

    const/16 v2, 0x62

    :try_start_4b
    div-int/2addr v2, v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4d

    return-object v0

    :catchall_4d
    move-exception v0

    throw v0

    :cond_4f
    return-object v0
.end method

.method public final ﭸ()Lcom/ironsource/adqualitysdk/sdk/i/aw;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    add-int/lit8 v1, v0, 0x21

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    rem-int/lit8 v1, v1, 0x2

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->p:Lcom/ironsource/adqualitysdk/sdk/i/aw;

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public final ﮉ()Lcom/ironsource/adqualitysdk/sdk/i/ar;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x36

    if-nez v0, :cond_11

    const/16 v0, 0x36

    goto :goto_13

    :cond_11
    const/16 v0, 0x12

    :goto_13
    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->q:Lcom/ironsource/adqualitysdk/sdk/i/ar;

    return-object v0

    :cond_18
    const/4 v0, 0x0

    :try_start_19
    throw v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception v0

    throw v0
.end method

.method public final ﮌ()Lcom/ironsource/adqualitysdk/sdk/i/ap;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x38

    if-eqz v0, :cond_11

    const/16 v0, 0x38

    goto :goto_13

    :cond_11
    const/16 v0, 0x1e

    :goto_13
    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->r:Lcom/ironsource/adqualitysdk/sdk/i/ap;

    goto :goto_1e

    :cond_18
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->r:Lcom/ironsource/adqualitysdk/sdk/i/ap;

    const/16 v1, 0x31

    :try_start_1c
    div-int/lit8 v1, v1, 0x0
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_1f

    :goto_1e
    return-object v0

    :catchall_1f
    move-exception v0

    throw v0
.end method

.method public final ﮐ()D
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->乁()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v2

    add-int/lit16 v2, v2, 0x92

    const/4 v3, 0x1

    invoke-static {v1}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    rsub-int/lit8 v4, v4, 0x4

    const-string v5, "\ufffe\u0003\u0005\ufffa"

    invoke-static {v2, v3, v1, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->m(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    add-int/lit8 v2, v2, 0x41

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    rem-int/lit8 v2, v2, 0x2

    return-wide v0
.end method

.method public final ﱟ()Z
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    add-int/lit8 v1, v0, 0x5f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x2a

    if-nez v1, :cond_11

    const/16 v1, 0x2a

    goto :goto_13

    :cond_11
    const/16 v1, 0x2b

    :goto_13
    if-eq v1, v2, :cond_2f

    iget-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->x:Z

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_25

    const/4 v0, 0x0

    goto :goto_26

    :cond_25
    const/4 v0, 0x1

    :goto_26
    if-eq v0, v3, :cond_2e

    const/16 v0, 0x41

    :try_start_2a
    div-int/2addr v0, v2
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_2c

    return v1

    :catchall_2c
    move-exception v0

    throw v0

    :cond_2e
    return v1

    :cond_2f
    const/4 v0, 0x0

    :try_start_30
    throw v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception v0

    throw v0
.end method

.method public final ﱡ()D
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/16 v2, 0x3b

    if-eqz v0, :cond_11

    const/16 v0, 0x3b

    goto :goto_13

    :cond_11
    const/16 v0, 0x11

    :goto_13
    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    const-string v5, ""

    const/4 v6, 0x3

    if-eq v0, v2, :cond_35

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->乁()Lorg/json/JSONObject;

    move-result-object v0

    new-array v1, v1, [I

    fill-array-data v1, :array_4a

    invoke-static {v5}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v6, v2

    invoke-static {v1, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f([II)Ljava/lang/String;

    move-result-object v1

    :goto_2c
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    goto :goto_49

    :cond_35
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->乁()Lorg/json/JSONObject;

    move-result-object v0

    new-array v1, v1, [I

    fill-array-data v1, :array_52

    invoke-static {v5}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v2

    ushr-int v2, v6, v2

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f([II)Ljava/lang/String;

    move-result-object v1

    goto :goto_2c

    :goto_49
    return-wide v0

    :array_4a
    .array-data 4
        0x31e4e78d
        0x3fd3ab11
    .end array-data

    :array_52
    .array-data 4
        0x31e4e78d
        0x3fd3ab11
    .end array-data
.end method

.method public final declared-synchronized ﺙ()Z
    .registers 4

    monitor-enter p0

    :try_start_1
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    add-int/lit8 v1, v0, 0x1f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    rem-int/lit8 v1, v1, 0x2

    iget-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->w:Z

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    rem-int/lit8 v0, v0, 0x2
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return v1

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final ﻏ()I
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v0, 0xbb8

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->リ()Lcom/ironsource/adqualitysdk/sdk/i/as;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_16

    const/4 v4, 0x1

    goto :goto_17

    :cond_16
    const/4 v4, 0x0

    :goto_17
    if-eq v4, v3, :cond_1a

    goto :goto_2e

    :cond_1a
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_27

    goto :goto_28

    :cond_27
    const/4 v2, 0x1

    :goto_28
    if-eqz v2, :cond_2f

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/as;->a()I

    move-result v0

    :goto_2e
    return v0

    :cond_2f
    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/as;->a()I

    const/4 v0, 0x0

    :try_start_33
    throw v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_34

    :catchall_34
    move-exception v0

    throw v0
.end method

.method public final ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/aq;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->o:Landroid/os/Handler;

    if-eqz v0, :cond_20

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a$f;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a$f;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ao$a;Lcom/ironsource/adqualitysdk/sdk/i/aq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    add-int/lit8 p1, p1, 0x1d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    rem-int/lit8 p1, p1, 0x2

    :cond_20
    return-void
.end method

.method public final declared-synchronized ﻐ(Z)V
    .registers 5

    monitor-enter p0

    :try_start_1
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    add-int/lit8 v1, v0, 0x1

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    if-nez v1, :cond_1e

    iput-boolean p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->w:Z

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    rem-int/lit8 v0, v0, 0x2
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_24

    monitor-exit p0

    return-void

    :cond_1e
    :try_start_1e
    iput-boolean p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->w:Z
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_24

    const/4 p1, 0x0

    :try_start_21
    throw p1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception p1

    :try_start_23
    throw p1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final ﻛ()Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/adqualitysdk/sdk/i/au;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_7
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->乁()Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [I

    const v6, -0xde0295f

    aput v6, v5, v2

    const v6, -0xf3fb93d

    aput v6, v5, v1

    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x3

    invoke-static {v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f([II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8f

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/ao$a$g;

    invoke-direct {v3}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a$g;-><init>()V

    invoke-static {v5, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->ﾇ(Lorg/json/JSONObject;Lcom/ironsource/adqualitysdk/sdk/i/ju$a;)Ljava/util/Map;

    move-result-object v0
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_3e} :catch_48

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    add-int/lit8 v1, v1, 0xd

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    rem-int/2addr v1, v4

    goto :goto_8f

    :catch_48
    move-exception v3

    const/4 v4, 0x0

    invoke-static {v4, v4}, Landroid/graphics/PointF;->length(FF)F

    move-result v5

    const-string v6, "\u0001\t\n\uffde\u0000\u000f\n\u0008\u0000\uffed\u0002\u0004"

    const-string v7, ""

    const-string v8, "\u0010\u0011\ufff2\r\uffe2\u0007\u0011\uffff\u0000\n\u0003\uffe3\u0010\u0010\r\u0010\uffbe\u0007\u000c\uffbe\u0005\u0003\u0012\uffe1\r\u000c\u000c\u0003\u0001\u0012\r"

    cmpl-float v5, v5, v4

    add-int/lit16 v5, v5, 0x8c

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v9

    cmpl-float v4, v9, v4

    rsub-int/lit8 v4, v4, 0xb

    invoke-static {v2, v2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v9

    rsub-int/lit8 v9, v9, 0xc

    invoke-static {v5, v1, v4, v9, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->m(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    rsub-int v4, v4, 0x89

    invoke-static {v7, v2, v2}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v5

    add-int/lit8 v5, v5, 0xb

    const v6, -0xffffe1

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v4, v2, v5, v6, v8}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->m(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_8f
    :goto_8f
    return-object v0
.end method

.method public final ｋ(Landroid/content/Context;Lcom/ironsource/adqualitysdk/sdk/i/ak;Z)V
    .registers 14

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz p3, :cond_1d

    new-instance p3, Lcom/ironsource/adqualitysdk/sdk/i/ao$a$c;

    invoke-direct {p3, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a$c;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ao$a;)V

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﭖ()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p3, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/il;J)V

    :cond_1d
    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->ﻐ(Z)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x1

    :try_start_27
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/jk;

    invoke-direct {v2, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/jk;-><init>(Landroid/content/Context;Lcom/ironsource/adqualitysdk/sdk/i/ak;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->ヶ()Lcom/ironsource/adqualitysdk/sdk/i/ir;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/adqualitysdk/sdk/i/ir;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/iu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/adqualitysdk/sdk/i/iu;->ﻐ()Z

    move-result v4

    invoke-virtual {v2, v3, v4, v1, p3}, Lcom/ironsource/adqualitysdk/sdk/i/jk;->ｋ(Lorg/json/JSONObject;ZZZ)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_41
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_41} :catch_42

    goto :goto_86

    :catch_42
    move-exception v2

    invoke-static {p3, p3}, Landroid/view/View;->resolveSize(II)I

    move-result v3

    add-int/lit16 v3, v3, 0x8c

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0xa

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    rsub-int/lit8 v5, v5, 0xc

    const-string v6, "\u0001\t\n\uffde\u0000\u000f\n\u0008\u0000\uffed\u0002\u0004"

    invoke-static {v3, v1, v4, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->m(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    const-string v8, "\t\u0014\u0001\u0005\u0012\u0003\uffc0\u0012\u000f\u0012\u0012\uffe5\u0014\u000e\u0005\u0016\u0005\uffc0\u0005\u0013\u0001\u0002\uffc0\u0007\u000e"

    cmp-long v9, v4, v6

    rsub-int v4, v9, 0x88

    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    add-int/lit8 v5, v5, 0xc

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    rsub-int/lit8 v6, v6, 0x19

    invoke-static {v4, v1, v5, v6, v8}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->m(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_86
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->ヶ()Lcom/ironsource/adqualitysdk/sdk/i/ir;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->y:Lcom/ironsource/adqualitysdk/sdk/i/am;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const-string v7, "\u0002\u0005\u0007\ufff4\uffff\u0003"

    cmp-long v8, v3, v5

    rsub-int v3, v8, 0x95

    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    invoke-static {p3, p3, p3, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    add-int/lit8 v5, v5, 0x6

    invoke-static {v3, p3, v4, v5, v7}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->m(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/am;->ﻐ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/ao$a$a;

    invoke-direct {v2, p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ao$a;Landroid/content/Context;Lcom/ironsource/adqualitysdk/sdk/i/ak;)V

    invoke-virtual {v1, p3, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ir;->ﻛ(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/adqualitysdk/sdk/i/is;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    add-int/lit8 p1, p1, 0x21

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final ｋ(Landroid/content/Context;Lcom/ironsource/adqualitysdk/sdk/i/ir;Lcom/ironsource/adqualitysdk/sdk/i/am;Lcom/ironsource/adqualitysdk/sdk/i/ao$d;Z)V
    .registers 10

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ix;

    const/16 v1, 0xe

    new-array v1, v1, [I

    fill-array-data v1, :array_88

    const-string v2, ""

    invoke-static {v2, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x1c

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_a8

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, 0x14

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ix;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->m:Lcom/ironsource/adqualitysdk/sdk/i/ix;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->n:Lcom/ironsource/adqualitysdk/sdk/i/ir;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->w:Z

    iput-boolean p5, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->x:Z

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->y:Lcom/ironsource/adqualitysdk/sdk/i/am;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->o:Landroid/os/Handler;

    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/as;

    invoke-direct {p1}, Lcom/ironsource/adqualitysdk/sdk/i/as;-><init>()V

    new-instance p2, Lcom/ironsource/adqualitysdk/sdk/i/aw;

    invoke-direct {p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/aw;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/as;)V

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->p:Lcom/ironsource/adqualitysdk/sdk/i/aw;

    new-instance p2, Lcom/ironsource/adqualitysdk/sdk/i/ar;

    invoke-direct {p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ar;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/as;)V

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->q:Lcom/ironsource/adqualitysdk/sdk/i/ar;

    new-instance p2, Lcom/ironsource/adqualitysdk/sdk/i/ap;

    invoke-direct {p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ap;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/as;)V

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->r:Lcom/ironsource/adqualitysdk/sdk/i/ap;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->a()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->ｋ(Lorg/json/JSONObject;)V

    invoke-virtual {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->ｋ(Lcom/ironsource/adqualitysdk/sdk/i/as;)V

    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->v:Lcom/ironsource/adqualitysdk/sdk/i/ao$d;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->t:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->u:Ljava/util/List;

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    add-int/lit8 p1, p1, 0x21

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :array_88
    .array-data 4
        0x7cf7ff6d
        -0x65a7780d
        -0x4573f539
        -0x4d3b9f38
        -0x7f9837e7
        0x1b59aad8
        -0x38ff431f
        -0x634f55f0
        -0x23f9e878
        -0x3adebe24
        -0x590bebc5
        0x39c26c8a
        0x604859dc
        -0x70f35bb0
    .end array-data

    :array_a8
    .array-data 4
        -0x164afcd0
        0x5e74f64c
        0x3be1f75a
        -0x16c3526b
        -0x5f9578c1
        0x5fc654a9
        -0x3307f226
        -0x40056616
        -0x21d99cec
        -0x1bae2ad5
    .end array-data
.end method

.method public final declared-synchronized ｋ(Lorg/json/JSONObject;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    rem-int/lit8 v0, v0, 0x2

    invoke-super {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->ｋ(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->p:Lcom/ironsource/adqualitysdk/sdk/i/aw;

    invoke-virtual {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->ｋ(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->q:Lcom/ironsource/adqualitysdk/sdk/i/ar;

    invoke-virtual {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->ｋ(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->r:Lcom/ironsource/adqualitysdk/sdk/i/ap;

    invoke-virtual {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->ｋ(Lorg/json/JSONObject;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    add-int/lit8 p1, p1, 0x21

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    monitor-exit p0

    return-void

    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final ｋ()Z
    .registers 9

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/16 v2, 0x47

    if-nez v0, :cond_11

    const/16 v0, 0x3c

    goto :goto_13

    :cond_11
    const/16 v0, 0x47

    :goto_13
    const-string v3, "\ufffc\t\ufffb"

    const/4 v4, 0x0

    if-eq v0, v2, :cond_41

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->乁()Lorg/json/JSONObject;

    move-result-object v0

    const/16 v2, 0x5833

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    cmpl-float v5, v5, v6

    ushr-int/2addr v2, v5

    const/4 v5, 0x1

    const/4 v6, 0x5

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    ushr-int/2addr v6, v7

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    rem-int v7, v1, v7

    invoke-static {v2, v5, v6, v7, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->m(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_38
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_5e

    :cond_41
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->乁()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    add-int/lit16 v2, v2, 0x90

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    add-int/2addr v5, v1

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x3

    invoke-static {v2, v4, v5, v6, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->m(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_38

    :goto_5e
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    add-int/lit8 v2, v2, 0x7

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    rem-int/2addr v2, v1

    return v0
.end method

.method public final ｋ(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_58

    const/16 v0, 0x11

    if-eqz p1, :cond_13

    const/16 v1, 0x36

    goto :goto_15

    :cond_13
    const/16 v1, 0x11

    :goto_15
    const/4 v2, 0x1

    if-eq v1, v0, :cond_57

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻛ()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/au;

    const/16 v0, 0x55

    if-eqz p1, :cond_29

    const/16 v1, 0x55

    goto :goto_2b

    :cond_29
    const/16 v1, 0x19

    :goto_2b
    const/4 v3, 0x0

    if-eq v1, v0, :cond_2f

    goto :goto_3b

    :cond_2f
    invoke-virtual {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/au;->ﻐ(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_37

    const/4 p1, 0x1

    goto :goto_38

    :cond_37
    const/4 p1, 0x0

    :goto_38
    if-eq p1, v2, :cond_3b

    return v3

    :cond_3b
    :goto_3b
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    add-int/lit8 p1, p1, 0x31

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    rem-int/lit8 p1, p1, 0x2

    const/16 p2, 0x40

    if-eqz p1, :cond_4c

    const/16 p1, 0x40

    goto :goto_4e

    :cond_4c
    const/16 p1, 0x16

    :goto_4e
    if-eq p1, p2, :cond_51

    return v2

    :cond_51
    const/16 p1, 0xc

    :try_start_53
    div-int/2addr p1, v3
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_55

    return v2

    :catchall_55
    move-exception p1

    throw p1

    :cond_57
    return v2

    :cond_58
    const/4 p1, 0x0

    :try_start_59
    throw p1
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_5a

    :catchall_5a
    move-exception p1

    throw p1
.end method

.method public final ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/aq;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->o:Landroid/os/Handler;

    if-eqz v0, :cond_16

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a$b;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a$b;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ao$a;Lcom/ironsource/adqualitysdk/sdk/i/aq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_16
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    add-int/lit8 p1, p1, 0x6f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x4a

    if-nez p1, :cond_27

    const/16 p1, 0x52

    goto :goto_29

    :cond_27
    const/16 p1, 0x4a

    :goto_29
    if-ne p1, v0, :cond_2c

    return-void

    :cond_2c
    const/4 p1, 0x0

    :try_start_2d
    throw p1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p1

    throw p1
.end method

.method public final ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/iq;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->リ()Lcom/ironsource/adqualitysdk/sdk/i/as;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/as;->f(Lcom/ironsource/adqualitysdk/sdk/i/iq;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    add-int/lit8 p1, p1, 0x27

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final ﾇ()Z
    .registers 9

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/16 v2, 0x1d

    if-eqz v0, :cond_11

    const/16 v0, 0x19

    goto :goto_13

    :cond_11
    const/16 v0, 0x1d

    :goto_13
    const-wide/16 v3, 0x0

    if-eq v0, v2, :cond_36

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->乁()Lorg/json/JSONObject;

    move-result-object v0

    new-array v2, v1, [I

    fill-array-data v2, :array_52

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v5

    cmp-long v7, v5, v3

    mul-int/lit8 v7, v7, 0x2

    invoke-static {v2, v7}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_50

    :cond_36
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->乁()Lorg/json/JSONObject;

    move-result-object v0

    new-array v2, v1, [I

    fill-array-data v2, :array_5a

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v5

    cmp-long v7, v5, v3

    add-int/2addr v7, v1

    invoke-static {v2, v7}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    goto :goto_31

    :goto_50
    return v0

    nop

    :array_52
    .array-data 4
        -0x5426b610
        0x1be4f68
    .end array-data

    :array_5a
    .array-data 4
        -0x5426b610
        0x1be4f68
    .end array-data
.end method

.method public final ﾒ()I
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->乁()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    add-int/lit16 v2, v2, 0x95

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int/lit8 v3, v3, 0x2

    const-string v4, ""

    invoke-static {v4, v4, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x3

    const-string v5, "\ufff6\u0006\u0004"

    invoke-static {v2, v1, v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->m(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->h:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->f:I

    add-int/lit8 v2, v2, 0xd

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->g:I

    rem-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    if-nez v2, :cond_43

    goto :goto_44

    :cond_43
    const/4 v1, 0x1

    :goto_44
    if-ne v1, v3, :cond_47

    return v0

    :cond_47
    const/4 v0, 0x0

    :try_start_48
    throw v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_49

    :catchall_49
    move-exception v0

    throw v0
.end method
