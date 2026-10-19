###### Class com.json.adqualitysdk.sdk.i.dh (com.ironsource.adqualitysdk.sdk.i.dh)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/dh;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:J = -0x6ee7effc54b44caeL

.field private static b:I = 0x76

.field private static c:I = 0x0

.field private static d:I = 0x1


# instance fields
.field private e:Lorg/json/JSONObject;

.field private f:Lcom/ironsource/adqualitysdk/sdk/i/dr;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Lcom/ironsource/adqualitysdk/sdk/i/dj;

.field private n:Lcom/ironsource/adqualitysdk/sdk/i/dr;

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/adqualitysdk/sdk/i/di;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/dr;)V
    .registers 12

    const-string v0, "\ub335\ucb03\u4347\udb87\u53c7\uea0f\u627f\ufa96\u72d4\u8904\u0144\u99be"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_7
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->e:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->f:Lcom/ironsource/adqualitysdk/sdk/i/dr;

    const-string p1, "\ub33c\u43c2\u52dd\u61e4"

    const p2, 0xf0f1

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    add-int/2addr v4, p2

    invoke-static {p1, v4}, Lcom/ironsource/adqualitysdk/sdk/i/dh;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->g:Ljava/lang/String;

    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->e:Lorg/json/JSONObject;

    const-string p2, "\ub336\uf3bc\u322f\u72b7\ub122\uf190\u3001\u70ad\ub70b\uf780\u3671"

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    rsub-int v3, v3, 0x4087

    invoke-static {p2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/dh;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->h:Ljava/lang/String;

    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->e:Lorg/json/JSONObject;

    const-string p2, ""

    invoke-static {p2, v2, v2}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result p2

    add-int/lit16 p2, p2, 0xe4

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    rsub-int/lit8 v3, v3, 0x7

    const-string v4, "\u0000\u0008\ufff7\u0004\u0005\ufffb\u0001"

    invoke-static {p2, v2, v7, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/dh;->d(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->i:Ljava/lang/String;

    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->e:Lorg/json/JSONObject;

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    add-int/lit16 p2, p2, 0xdb

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v3

    cmpl-float v3, v3, v1

    add-int/lit8 v3, v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    cmp-long v4, v7, v5

    add-int/lit8 v4, v4, 0x5

    const-string v7, "\uffed\ufffe\u0005\u0007\u0003\u0008"

    invoke-static {p2, v2, v3, v4, v7}, Lcom/ironsource/adqualitysdk/sdk/i/dh;->d(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->j:Ljava/lang/String;

    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->e:Lorg/json/JSONObject;

    invoke-static {v2, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p2

    add-int/lit16 p2, p2, 0xdc

    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x4

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v4

    cmpl-float v4, v4, v1

    add-int/lit8 v4, v4, 0x5

    const-string v7, "\u0012\uffed\ufffe\u0005\u0007\ufffb"

    invoke-static {p2, v2, v3, v4, v7}, Lcom/ironsource/adqualitysdk/sdk/i/dh;->d(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->k:Ljava/lang/String;

    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->e:Lorg/json/JSONObject;

    invoke-static {v2}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result p2

    cmpl-float p2, p2, v1

    add-int/lit16 p2, p2, 0x783d

    invoke-static {v0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dh;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_ed

    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->e:Lorg/json/JSONObject;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    cmp-long p2, v3, v5

    add-int/lit16 p2, p2, 0x783c

    invoke-static {v0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dh;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dh;->a(Lorg/json/JSONObject;)V
    :try_end_ed
    .catchall {:try_start_7 .. :try_end_ed} :catchall_ee

    :cond_ed
    return-void

    :catchall_ee
    move-exception p1

    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->g:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    shr-int/lit8 v0, v0, 0x16

    rsub-int v0, v0, 0xd8

    const/4 v3, 0x1

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v4

    const-string v5, "\u0010\r\u0010\u0010\uffe3\u0005\u0007\u0004\u000c\r\u0001\uffbe\u0010\r\u0012\u0001\u0003\u000c\u000c\r\u0001\uffbe\u0005\u000c\u0007\u0012\uffff\u0003\u0010\u0001\uffbe"

    cmpl-float v1, v4, v1

    rsub-int/lit8 v1, v1, 0x5

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x1f

    invoke-static {v0, v3, v1, v2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/dh;->d(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cn;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->d:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dh;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-nez v0, :cond_61

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/dh;->c:I

    add-int/lit8 v2, v2, 0x4f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/dh;->d:I

    rem-int/lit8 v2, v2, 0x2

    const/16 v3, 0x46

    if-nez v2, :cond_2d

    const/16 v2, 0x41

    goto :goto_2f

    :cond_2d
    const/16 v2, 0x46

    :goto_2f
    if-eq v2, v3, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->f:Lcom/ironsource/adqualitysdk/sdk/i/dr;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/dr;->ﾒ(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v2, 0x48

    :try_start_42
    div-int/2addr v2, v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_44

    goto :goto_16

    :catchall_44
    move-exception p1

    throw p1

    :cond_46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->f:Lcom/ironsource/adqualitysdk/sdk/i/dr;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/dr;->ﾒ(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_16

    :cond_56
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/dh;->c:I

    add-int/lit8 p1, p1, 0x49

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->d:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :cond_61
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    const/4 p1, 0x0

    :try_start_65
    throw p1
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_66

    :catchall_66
    move-exception p1

    throw p1
.end method

.method static synthetic b(Lcom/ironsource/adqualitysdk/sdk/i/dh;)Ljava/lang/String;
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->d:I

    add-int/lit8 v1, v0, 0x39

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dh;->c:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x2e

    const/16 v3, 0x49

    if-eqz v1, :cond_13

    const/16 v1, 0x2e

    goto :goto_15

    :cond_13
    const/16 v1, 0x49

    :goto_15
    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->g:Ljava/lang/String;

    if-eq v1, v2, :cond_1a

    goto :goto_1e

    :cond_1a
    const/16 v1, 0x1a

    :try_start_1c
    div-int/lit8 v1, v1, 0x0
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_26

    :goto_1e
    add-int/2addr v0, v3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dh;->c:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0

    :catchall_26
    move-exception p0

    throw p0
.end method

.method private static c(Ljava/lang/String;I)Ljava/lang/String;
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

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/dh;->a:J

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

.method private static d(IZIILjava/lang/String;)Ljava/lang/String;
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

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/dh;->b:I

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
.method public final ﮐ()Lcom/ironsource/adqualitysdk/sdk/i/dj;
    .registers 11

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->c:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dh;->d:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->m:Lcom/ironsource/adqualitysdk/sdk/i/dj;

    if-nez v0, :cond_48

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/dj;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->e:Lorg/json/JSONObject;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v4

    rsub-int v4, v4, 0xdc

    const/4 v5, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-string v8, "\u0003\ufff0\ufffc\uffff\u0011\r\uffe4\u0011\uffff"

    cmp-long v9, v6, v2

    rsub-int/lit8 v2, v9, 0x6

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    rsub-int/lit8 v3, v3, 0x9

    invoke-static {v4, v5, v2, v3, v8}, Lcom/ironsource/adqualitysdk/sdk/i/dh;->d(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/dj;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->m:Lcom/ironsource/adqualitysdk/sdk/i/dj;

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->d:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dh;->c:I

    rem-int/lit8 v0, v0, 0x2

    :cond_48
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->m:Lcom/ironsource/adqualitysdk/sdk/i/dj;

    return-object v0
.end method

.method public final ﱡ()Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/adqualitysdk/sdk/i/di;",
            ">;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->d:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dh;->c:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->o:Ljava/util/Map;

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->e:Lorg/json/JSONObject;

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-string v7, "\u0006\uffff\ufffc\u0006\u0007\ufff8\u0001\ufff8\u0005"

    cmp-long v8, v1, v4

    rsub-int v1, v8, 0xe4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    cmp-long v2, v8, v4

    invoke-static {v3, v6, v6}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v4

    cmpl-float v4, v4, v6

    add-int/lit8 v4, v4, 0x9

    invoke-static {v1, v3, v2, v4, v7}, Lcom/ironsource/adqualitysdk/sdk/i/dh;->d(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/dh$a;

    invoke-direct {v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/dh$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dh;)V

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->ﾇ(Lorg/json/JSONObject;Lcom/ironsource/adqualitysdk/sdk/i/ju$a;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->o:Ljava/util/Map;

    :cond_43
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->o:Ljava/util/Map;

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/dh;->c:I

    add-int/lit8 v1, v1, 0x37

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dh;->d:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public final ﺙ()Lcom/ironsource/adqualitysdk/sdk/i/dr;
    .registers 9

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->d:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dh;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    if-eq v0, v1, :cond_1d

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->n:Lcom/ironsource/adqualitysdk/sdk/i/dr;

    const/16 v3, 0x27

    :try_start_17
    div-int/2addr v3, v2
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_1b

    if-nez v0, :cond_70

    goto :goto_21

    :catchall_1b
    move-exception v0

    throw v0

    :cond_1d
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->n:Lcom/ironsource/adqualitysdk/sdk/i/dr;

    if-nez v0, :cond_70

    :goto_21
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/dr;

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->e:Lorg/json/JSONObject;

    const/4 v4, 0x0

    invoke-static {v2, v4, v4}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v5

    const-string v6, "\ub331\u9600\uf946\udc96\u27d2\u0910"

    const-string v7, "\ub33f\u243a\u9d25\u7617\uef03\u4061\u396f"

    cmpl-float v4, v5, v4

    add-int/lit16 v4, v4, 0x253d

    invoke-static {v6, v4}, Lcom/ironsource/adqualitysdk/sdk/i/dh;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/dh$d;

    invoke-direct {v4, p0}, Lcom/ironsource/adqualitysdk/sdk/i/dh$d;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dh;)V

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->ﾇ(Lorg/json/JSONObject;Lcom/ironsource/adqualitysdk/sdk/i/ju$a;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->f:Lcom/ironsource/adqualitysdk/sdk/i/dr;

    invoke-direct {v0, v3, v4, v1}, Lcom/ironsource/adqualitysdk/sdk/i/dr;-><init>(Ljava/util/Map;Lcom/ironsource/adqualitysdk/sdk/i/dr;Z)V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->n:Lcom/ironsource/adqualitysdk/sdk/i/dr;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->e:Lorg/json/JSONObject;

    const v3, 0x970d

    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    sub-int/2addr v3, v2

    invoke-static {v7, v3}, Lcom/ironsource/adqualitysdk/sdk/i/dh;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/dh$b;

    invoke-direct {v2}, Lcom/ironsource/adqualitysdk/sdk/i/dh$b;-><init>()V

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->ﾇ(Lorg/json/JSONArray;Lcom/ironsource/adqualitysdk/sdk/i/ju$d;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/dr;->ｋ(Ljava/util/List;)V

    :cond_70
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->n:Lcom/ironsource/adqualitysdk/sdk/i/dr;

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/dh;->c:I

    add-int/lit8 v1, v1, 0x73

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dh;->d:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x1c

    if-nez v1, :cond_83

    const/16 v1, 0x1c

    goto :goto_85

    :cond_83
    const/16 v1, 0x50

    :goto_85
    if-eq v1, v2, :cond_88

    return-object v0

    :cond_88
    const/4 v0, 0x0

    :try_start_89
    throw v0
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_8a

    :catchall_8a
    move-exception v0

    throw v0
.end method

.method public final ﻐ()Ljava/lang/String;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->c:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dh;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x3c

    if-nez v0, :cond_11

    const/16 v0, 0x3c

    goto :goto_13

    :cond_11
    const/16 v0, 0x9

    :goto_13
    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->j:Ljava/lang/String;

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

.method public final ﻛ()Ljava/lang/String;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->c:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dh;->d:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->i:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x6d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dh;->c:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public final ｋ()Ljava/lang/String;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->c:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dh;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0x50

    if-nez v0, :cond_11

    const/16 v0, 0x38

    goto :goto_13

    :cond_11
    const/16 v0, 0x50

    :goto_13
    if-eq v0, v2, :cond_1e

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->k:Ljava/lang/String;

    const/16 v2, 0x28

    :try_start_19
    div-int/lit8 v2, v2, 0x0
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception v0

    throw v0

    :cond_1e
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->k:Ljava/lang/String;

    :goto_20
    add-int/lit8 v1, v1, 0x27

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dh;->c:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public final ﾇ()Ljava/lang/String;
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->c:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dh;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0x8

    if-nez v0, :cond_11

    const/16 v0, 0x60

    goto :goto_13

    :cond_11
    const/16 v0, 0x8

    :goto_13
    const/4 v3, 0x0

    if-ne v0, v2, :cond_2f

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->h:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x49

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dh;->c:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x2c

    if-eqz v1, :cond_27

    const/16 v1, 0x2c

    goto :goto_29

    :cond_27
    const/16 v1, 0x2e

    :goto_29
    if-eq v1, v2, :cond_2c

    return-object v0

    :cond_2c
    :try_start_2c
    throw v3
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception v0

    throw v0

    :cond_2f
    :try_start_2f
    throw v3
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    :catchall_30
    move-exception v0

    throw v0
.end method

.method public final ﾇ(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->l:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-eq v0, v2, :cond_d

    goto/16 :goto_84

    :cond_d
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->e:Lorg/json/JSONObject;

    const v3, 0x9b6f

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    add-int/2addr v4, v3

    const-string v3, "\ub321\u2859\u85e7\u614b\ude81\uba38\u17af\uf33e\u6844\uc5c1\ua152\u1ef2\ufa14\u5782\u3329\ua8bc\u05cc\ue17e"

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/dh;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->ﻐ(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_84

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/dh$c;

    invoke-direct {v4}, Lcom/ironsource/adqualitysdk/sdk/i/dh$c;-><init>()V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    :cond_42
    :goto_42
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4a

    const/4 v6, 0x0

    goto :goto_4b

    :cond_4a
    const/4 v6, 0x1

    :goto_4b
    if-eq v6, v2, :cond_78

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/dh;->d:I

    add-int/lit8 v6, v6, 0x69

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/ironsource/adqualitysdk/sdk/i/dh;->c:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_6c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {p1, v6}, Lcom/ironsource/adqualitysdk/sdk/i/jz;->ﾒ(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_42

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_42

    :cond_6c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jz;->ﾒ(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_75
    throw v4
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_76

    :catchall_76
    move-exception p1

    throw p1

    :cond_78
    iput-object v5, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->l:Ljava/lang/String;

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/dh;->d:I

    add-int/lit8 p1, p1, 0x75

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->c:I

    rem-int/lit8 p1, p1, 0x2

    :cond_84
    :goto_84
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->l:Ljava/lang/String;

    return-object p1
.end method

.method public final ﾒ()Ljava/lang/String;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->d:I

    add-int/lit8 v1, v0, 0x63

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dh;->c:I

    rem-int/lit8 v1, v1, 0x2

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh;->g:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dh;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    const/4 v0, 0x1

    :goto_1a
    if-eqz v0, :cond_1d

    return-object v1

    :cond_1d
    const/16 v0, 0x24

    :try_start_1f
    div-int/2addr v0, v2
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_21

    return-object v1

    :catchall_21
    move-exception v0

    throw v0
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.dh.a (com.ironsource.adqualitysdk.sdk.i.dh$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/dh$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ju$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/dh;->ﱡ()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ironsource/adqualitysdk/sdk/i/ju$a<",
        "Lcom/ironsource/adqualitysdk/sdk/i/di;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/adqualitysdk/sdk/i/dh;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/dh;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/dh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic ｋ(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/di;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/dh;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/dh;->b(Lcom/ironsource/adqualitysdk/sdk/i/dh;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v0, v1, p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/di;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.dh.b (com.ironsource.adqualitysdk.sdk.i.dh$b)
.class final Lcom/ironsource/adqualitysdk/sdk/i/dh$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ju$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/dh;->ﺙ()Lcom/ironsource/adqualitysdk/sdk/i/dr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ironsource/adqualitysdk/sdk/i/ju$d<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic ｋ(Lorg/json/JSONArray;I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/dq;->ﻐ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.dh.c (com.ironsource.adqualitysdk.sdk.i.dh$c)
.class final Lcom/ironsource/adqualitysdk/sdk/i/dh$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/dh;->ﾇ(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/jz;->ﾒ(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.dh.d (com.ironsource.adqualitysdk.sdk.i.dh$d)
.class final Lcom/ironsource/adqualitysdk/sdk/i/dh$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ju$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/dh;->ﺙ()Lcom/ironsource/adqualitysdk/sdk/i/dr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ironsource/adqualitysdk/sdk/i/ju$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static a:[C = null

.field private static b:I = 0x0

.field private static c:I = 0x1


# instance fields
.field private synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/dh;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x17

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/dh$d;->a:[C

    return-void

    :array_a
    .array-data 2
        0x20s
        0x39s
        0x49s
        0x48s
        0x68s
        0x69s
        0x72s
        0x6es
        0x6bs
        0x6as
        0x43s
        0x32s
        0x5bs
        0x72s
        0x70s
        0xcas
        0xe4s
        0x11es
        0x11ds
        0x118s
        0x119s
        0x10ds
        0xcas
    .end array-data
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/dh;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh$d;->d:Lcom/ironsource/adqualitysdk/sdk/i/dh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Z[ILjava/lang/String;)Ljava/lang/String;
    .registers 15

    if-eqz p2, :cond_8

    const-string v0, "ISO-8859-1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    :cond_8
    check-cast p2, [B

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﻛ:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_e
    aget v2, p1, v1

    const/4 v3, 0x1

    aget v4, p1, v3

    const/4 v5, 0x2

    aget v6, p1, v5

    const/4 v7, 0x3

    aget v7, p1, v7

    sget-object v8, Lcom/ironsource/adqualitysdk/sdk/i/dh$d;->a:[C

    new-array v9, v4, [C

    invoke-static {v8, v2, v9, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p2, :cond_47

    new-array v2, v4, [C

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    const/4 v8, 0x0

    :goto_27
    sget v10, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    if-ge v10, v4, :cond_46

    aget-byte v11, p2, v10

    if-ne v11, v3, :cond_38

    aget-char v11, v9, v10

    shl-int/2addr v11, v3

    add-int/2addr v11, v3

    sub-int/2addr v11, v8

    int-to-char v8, v11

    aput-char v8, v2, v10

    goto :goto_3f

    :cond_38
    aget-char v11, v9, v10

    shl-int/2addr v11, v3

    sub-int/2addr v11, v8

    int-to-char v8, v11

    aput-char v8, v2, v10

    :goto_3f
    aget-char v8, v2, v10

    add-int/lit8 v10, v10, 0x1

    sput v10, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    goto :goto_27

    :cond_46
    move-object v9, v2

    :cond_47
    if-lez v7, :cond_56

    new-array p2, v4, [C

    invoke-static {v9, v1, p2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v2, v4, v7

    invoke-static {p2, v1, v9, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2, v7, v9, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_56
    if-eqz p0, :cond_6d

    new-array p0, v4, [C

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    :goto_5c
    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    if-ge p2, v4, :cond_6c

    sub-int v2, v4, p2

    sub-int/2addr v2, v3

    aget-char v2, v9, v2

    aput-char v2, p0, p2

    add-int/lit8 p2, p2, 0x1

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    goto :goto_5c

    :cond_6c
    move-object v9, p0

    :cond_6d
    if-lez v6, :cond_82

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    :goto_71
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    if-ge p0, v4, :cond_82

    aget-char p2, v9, p0

    aget v1, p1, v5

    sub-int/2addr p2, v1

    int-to-char p2, p2

    aput-char p2, v9, p0

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    goto :goto_71

    :cond_82
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v9}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_88
    .catchall {:try_start_e .. :try_end_88} :catchall_89

    return-object p0

    :catchall_89
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final ｋ(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;
    .registers 14

    const-string v0, "\u0001"

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/dh$d;->c:I

    const/16 v2, 0x1f

    add-int/2addr v1, v2

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/dh$d;->b:I

    const/4 v3, 0x2

    rem-int/2addr v1, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    const/4 v6, 0x0

    const/4 v7, 0x4

    if-nez v1, :cond_88

    :try_start_18
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Ljava/lang/String;

    if-eqz v8, :cond_5b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-array v9, v7, [I

    aput v4, v9, v4

    aput v5, v9, v5

    aput v2, v9, v3

    const/4 v10, 0x3

    aput v5, v9, v10

    invoke-static {v5, v9, v0}, Lcom/ironsource/adqualitysdk/sdk/i/dh$d;->a(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v7, [I

    aput v4, v1, v4

    aput v5, v1, v5

    aput v2, v1, v3

    aput v5, v1, v10

    invoke-static {v5, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/dh$d;->a(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5b
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh$d;->d:Lcom/ironsource/adqualitysdk/sdk/i/dh;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/dh;->b(Lcom/ironsource/adqualitysdk/sdk/i/dh;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/dm;->ﾇ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    new-instance v8, Lcom/ironsource/adqualitysdk/sdk/i/dl;

    invoke-direct {v8, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->ﻐ(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object p1
    :try_end_6e
    .catchall {:try_start_18 .. :try_end_6e} :catchall_86

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/dh$d;->b:I

    add-int/lit8 p2, p2, 0x53

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/dh$d;->c:I

    rem-int/2addr p2, v3

    const/16 v0, 0x5d

    if-nez p2, :cond_7e

    const/16 p2, 0x5d

    goto :goto_80

    :cond_7e
    const/16 p2, 0x5e

    :goto_80
    if-eq p2, v0, :cond_83

    return-object p1

    :cond_83
    :try_start_83
    throw v6
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_84

    :catchall_84
    move-exception p1

    throw p1

    :catchall_86
    move-exception v0

    goto :goto_92

    :cond_88
    :try_start_88
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    throw v6
    :try_end_92
    .catchall {:try_start_88 .. :try_end_92} :catchall_86

    :goto_92
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh$d;->d:Lcom/ironsource/adqualitysdk/sdk/i/dh;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/dh;->b(Lcom/ironsource/adqualitysdk/sdk/i/dh;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v7, [I

    fill-array-data v3, :array_d2

    const-string v8, "\u0000\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0001"

    invoke-static {v4, v3, v8}, Lcom/ironsource/adqualitysdk/sdk/i/dh$d;->a(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v7, [I

    fill-array-data v3, :array_de

    invoke-static {v5, v3, v6}, Lcom/ironsource/adqualitysdk/sdk/i/dh$d;->a(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cn;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v6

    nop

    :array_d2
    .array-data 4
        0x1
        0xe
        0x0
        0xa
    .end array-data

    :array_de
    .array-data 4
        0xf
        0x8
        0xaa
        0x8
    .end array-data
.end method
