###### Class com.ironsource.adqualitysdk.sdk.i.ax.a (com.ironsource.adqualitysdk.sdk.i.ax$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ax$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ax;->A(Lcom/ironsource/adqualitysdk/sdk/i/ci;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static d:J = -0x498853115cac1f9bL

.field private static e:I = 0x0

.field private static f:C = '\u0000'

.field private static g:I = -0x64a1aa43

.field private static h:I = 0x53

.field private static i:I = -0x5ca7726

.field private static j:[B = null

.field private static k:[S = null

.field private static l:I = 0x0

.field private static m:I = 0x1


# instance fields
.field final synthetic n:Lcom/ironsource/adqualitysdk/sdk/i/ci;

.field final synthetic o:Ljava/lang/String;

.field private synthetic p:Ljava/lang/String;

.field final synthetic q:Lcom/ironsource/adqualitysdk/sdk/i/ax;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x64

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->j:[B

    return-void

    :array_a
    .array-data 1
        -0x4bt
        -0x1t
        -0x7t
        0xat
        0x1t
        -0x12t
        0xat
        0x5t
        -0x43t
        0xdt
        -0x2t
        0x6t
        -0xdt
        0xdt
        0x14t
        -0x25t
        0x3t
        -0x5t
        0x11t
        -0x2t
        -0x9t
        0x0t
        -0x1t
        0x2ct
        -0x3dt
        -0x1t
        -0x7t
        0xat
        0x1t
        -0x12t
        0xat
        0x5t
        0x44t
        -0x53t
        0xat
        0x49t
        -0x52t
        0x3t
        -0x5t
        0x11t
        -0x2t
        -0x9t
        0x0t
        -0x1t
        0xct
        0x43t
        -0x50t
        0x10t
        -0x1t
        -0x50t
        -0x3t
        0x3t
        -0x40t
        0xft
        -0x14t
        0x59t
        -0xct
        -0x38t
        -0x1t
        -0xft
        0x2t
        0x3t
        -0x1t
        0x0t
        -0x5t
        0x2t
        0x53t
        -0x54t
        0x5t
        0x1t
        0x4et
        -0x36t
        -0x52t
        0x3t
        -0x5t
        0x11t
        -0x2t
        -0x9t
        0x0t
        -0x1t
        0xct
        0x43t
        -0x47t
        -0x7t
        0x5t
        -0x11t
        0x11t
        -0x3t
        0xbt
        -0x8t
        -0xbt
        0xbt
        -0x5t
        0x5t
        0x49t
        -0x52t
        0x3t
        -0x3t
        0x0t
        0x2dt
    .end array-data
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ax;Lcom/ironsource/adqualitysdk/sdk/i/ci;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->q:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->n:Lcom/ironsource/adqualitysdk/sdk/i/ci;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->o:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->p:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

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

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->d:J

    xor-long/2addr v2, v4

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->e:I

    int-to-long v4, v4

    xor-long/2addr v2, v4

    sget-char v4, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->f:C

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

.method private static c(IIBSI)Ljava/lang/String;
    .registers 12

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﺙ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->h:I

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

    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->j:[B

    if-eqz p0, :cond_21

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->g:I

    add-int/2addr v6, p4

    aget-byte p0, p0, v6

    add-int/2addr p0, v2

    int-to-byte p0, p0

    goto :goto_2a

    :cond_21
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->k:[S

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->g:I

    add-int/2addr v6, p4

    aget-short p0, p0, v6

    add-int/2addr p0, v2

    int-to-short p0, p0

    :cond_2a
    :goto_2a
    if-lez p0, :cond_89

    add-int/2addr p4, p0

    add-int/lit8 p4, p4, -0x2

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->g:I

    add-int/2addr p4, v2

    if-eqz v3, :cond_35

    const/4 v4, 0x1

    :cond_35
    add-int/2addr p4, v4

    sput p4, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾇ:I

    sput-byte p2, Lcom/ironsource/adqualitysdk/sdk/i/n;->ｋ:B

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->i:I

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

    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->j:[B

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
    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->k:[S

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
.method public final ﻐ(Ljava/lang/Throwable;)V
    .registers 14

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->q:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->K(Lcom/ironsource/adqualitysdk/sdk/i/ax;)Lcom/ironsource/adqualitysdk/sdk/i/at;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->o:Ljava/lang/String;

    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->ﱟ:Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/at$b;

    invoke-direct {v3, v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/at$b;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/at;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/av$d;)V

    invoke-static {v3}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const-string v5, ""

    cmp-long v6, v0, v2

    add-int/lit8 v6, v6, -0x55

    const v0, 0x5ca7769

    invoke-static {v5, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    int-to-short v7, v7

    const v8, 0x64a1aa4b

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {v6, v0, v1, v7, v8}, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->c(IIBSI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, -0x54

    const v7, 0x5ca776b

    invoke-static {v5, v5, v4, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v4

    sub-int/2addr v7, v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    shr-int/lit8 v4, v4, 0x16

    int-to-byte v4, v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    shr-int/lit8 v5, v5, 0x16

    int-to-short v5, v5

    const v8, 0x64a1aa8a

    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v2

    sub-int/2addr v8, v2

    invoke-static {v1, v7, v4, v5, v8}, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->c(IIBSI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v8, p1

    invoke-static/range {v6 .. v11}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->l:I

    add-int/lit8 p1, p1, 0x3f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->m:I

    const/4 v0, 0x2

    rem-int/2addr p1, v0

    if-nez p1, :cond_9a

    const/16 p1, 0x37

    goto :goto_9b

    :cond_9a
    const/4 p1, 0x2

    :goto_9b
    if-ne p1, v0, :cond_9e

    return-void

    :cond_9e
    const/4 p1, 0x0

    :try_start_9f
    throw p1
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_a0

    :catchall_a0
    move-exception p1

    throw p1
.end method

.method public final ﻛ()V
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->m:I

    add-int/lit8 v1, v1, 0x6f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->l:I

    rem-int/lit8 v1, v1, 0x2

    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->q:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    iget-object v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->n:Lcom/ironsource/adqualitysdk/sdk/i/ci;

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->G(Lcom/ironsource/adqualitysdk/sdk/i/ax;Lcom/ironsource/adqualitysdk/sdk/i/ci;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    const-string v3, ""

    invoke-static {v3}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v4

    const v5, 0xfb8f

    add-int/2addr v4, v5

    int-to-char v4, v4

    const-string v6, "\ua63f\u04da\u8e49\u6dfb"

    const-string v7, "\ue065\ua353\uacee\ub677"

    const-string v8, "\uef23\ua6dd"

    invoke-static {v6, v7, v2, v4, v8}, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->b(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->q:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->k(Lcom/ironsource/adqualitysdk/sdk/i/ax;)Ljava/util/Map;

    move-result-object v2

    iget-object v9, v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->n:Lcom/ironsource/adqualitysdk/sdk/i/ci;

    invoke-virtual {v9}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﻐ()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->n:Lcom/ironsource/adqualitysdk/sdk/i/ci;

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﺙ()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    invoke-static {v9}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v10

    add-int/lit8 v10, v10, -0x53

    const v11, 0x5ca776a

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v12

    shr-int/lit8 v12, v12, 0x10

    sub-int/2addr v11, v12

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v12

    shr-int/lit8 v12, v12, 0x10

    int-to-byte v12, v12

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v13

    int-to-short v13, v13

    const v14, 0x64a1aa43

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v15

    shr-int/lit8 v15, v15, 0x10

    add-int/2addr v15, v14

    invoke-static {v10, v11, v12, v13, v15}, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->c(IIBSI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    const v11, 0x5ca7746

    const v12, 0x64a1aa4b

    const v13, 0x5ca7769

    const-wide/16 v14, 0x0

    const/16 v5, 0x30

    if-eqz v10, :cond_114

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    shr-int/lit8 v2, v2, 0x16

    rsub-int/lit8 v2, v2, -0x54

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v10

    shr-int/lit8 v10, v10, 0x8

    add-int/2addr v10, v13

    invoke-static {v3, v5}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v13

    rsub-int/lit8 v13, v13, -0x1

    int-to-byte v13, v13

    invoke-static {v5}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v16

    rsub-int/lit8 v4, v16, 0x30

    int-to-short v4, v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v16

    shr-int/lit8 v16, v16, 0x16

    add-int v12, v16, v12

    invoke-static {v2, v10, v13, v4, v12}, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->c(IIBSI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->n:Lcom/ironsource/adqualitysdk/sdk/i/ci;

    invoke-virtual {v10}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ｋ()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v5, v9, v9}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v10

    rsub-int/lit8 v10, v10, -0x55

    invoke-static {v9}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v12

    cmp-long v16, v12, v14

    add-int v11, v16, v11

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v12

    shr-int/lit8 v12, v12, 0x10

    int-to-byte v12, v12

    invoke-static {v3, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v13

    const/4 v14, 0x1

    add-int/2addr v13, v14

    int-to-short v13, v13

    const v14, 0x64a1aa5b

    invoke-static {v3, v9, v9}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v15

    add-int/2addr v15, v14

    invoke-static {v10, v11, v12, v13, v15}, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->c(IIBSI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ｋ(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->q:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->K(Lcom/ironsource/adqualitysdk/sdk/i/ax;)Lcom/ironsource/adqualitysdk/sdk/i/at;

    move-result-object v2

    iget-object v4, v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->o:Ljava/lang/String;

    sget-object v10, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    new-instance v11, Lcom/ironsource/adqualitysdk/sdk/i/at$d;

    invoke-direct {v11, v2, v4, v10}, Lcom/ironsource/adqualitysdk/sdk/i/at$d;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/at;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/av$a;)V

    invoke-static {v11}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    :goto_111
    const/4 v2, 0x0

    goto/16 :goto_313

    :cond_114
    iget-object v4, v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->q:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    iget-object v10, v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->o:Ljava/lang/String;

    invoke-static {v4, v10}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->b0(Lcom/ironsource/adqualitysdk/sdk/i/ax;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1cd

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, -0x54

    invoke-static {v9}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v10

    const-string v5, "\ud9b9\u968c\u7264\ub4bd"

    const-string v4, "\udc36\ude0a\uf3ec\ufaea\ud9b5\ua531\u8c75\u3fb7\ucc6e\u4496\u0383\u40d7\uc092\ueb22\u5bac\uc4b1\uc5bf\uda85\u0d83\u73ab\uded0\u4509\u6f5e\u2fd6X\u0672\u4f45\u85d8\ubaa8\uea0b\u2337\ua2a1\ude8e\u8d9e\u42dc\u5d3d\u1372\u41af\u42fd"

    cmp-long v19, v10, v14

    sub-int v13, v13, v19

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v10

    shr-int/lit8 v10, v10, 0x8

    int-to-byte v10, v10

    invoke-static {v9}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v11

    int-to-short v11, v11

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v19

    shr-int/lit8 v19, v19, 0x18

    sub-int v12, v12, v19

    invoke-static {v2, v13, v10, v11, v12}, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->c(IIBSI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->n:Lcom/ironsource/adqualitysdk/sdk/i/ci;

    invoke-virtual {v11}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ｋ()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v11, 0x64968cd9

    const/4 v12, 0x0

    invoke-static {v12, v12}, Landroid/graphics/PointF;->length(FF)F

    move-result v13

    cmpl-float v12, v13, v12

    add-int/2addr v12, v11

    const v11, 0xbd72

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v13

    shr-int/lit8 v13, v13, 0x10

    add-int/2addr v13, v11

    int-to-char v11, v13

    invoke-static {v5, v7, v12, v11, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->b(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ｋ(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->q:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->K(Lcom/ironsource/adqualitysdk/sdk/i/ax;)Lcom/ironsource/adqualitysdk/sdk/i/at;

    move-result-object v2

    iget-object v4, v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->o:Ljava/lang/String;

    sget-object v5, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    new-instance v10, Lcom/ironsource/adqualitysdk/sdk/i/at$d;

    invoke-direct {v10, v2, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/at$d;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/at;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/av$a;)V

    invoke-static {v10}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    const/16 v2, 0x30

    invoke-static {v3, v2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v4

    rsub-int/lit8 v4, v4, -0x55

    const v5, 0x5ca7789

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v10

    cmp-long v12, v10, v14

    add-int/2addr v12, v5

    invoke-static {v3, v2, v9, v9}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v5

    const/4 v2, 0x1

    add-int/2addr v5, v2

    int-to-byte v5, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v10

    shr-int/lit8 v10, v10, 0x10

    int-to-short v10, v10

    const v11, 0x64a1aa71

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v13

    shr-int/lit8 v13, v13, 0x10

    sub-int/2addr v11, v13

    invoke-static {v4, v12, v5, v10, v11}, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->c(IIBSI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_111

    :cond_1cd
    iget-object v4, v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->n:Lcom/ironsource/adqualitysdk/sdk/i/ci;

    invoke-static {v4, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->c0(Lcom/ironsource/adqualitysdk/sdk/i/ci;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1ea

    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/ax$a$a;

    invoke-direct {v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ax$a$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ax$a;)V

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    iget-object v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->q:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->V(Lcom/ironsource/adqualitysdk/sdk/i/ax;)Ljava/util/List;

    move-result-object v2

    iget-object v4, v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->n:Lcom/ironsource/adqualitysdk/sdk/i/ci;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_111

    :cond_1ea
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v4

    const-string v2, "\u618f\u1a29\u1556\uc4c1"

    const-string v10, "\u282c\u337e\ud028\u2cb4\ud054\u7a55\u398c\uacbf\u7168\ue74f\u9a70\uaaa8\ude8a"

    const-string v11, "\u71b4\u39d2\u76fe\ue776"

    const-string v12, "\u50cf\ua564\ud686\u1a49\u2fb5\u2b4a\u2932\u0f92\ucfd2\ue34c\u6529\uc648\u349c\ub560\uc60f\uc9bf\u6dcc\uec1a\ufc51\u4920\ua046\u3024\ub234\uc04f\u69c0\u5b3b\u47f8\uf1b8\u3f1a\uaaa1\u1053\u42db\uf974\u9620\u49eb\ue9fa\u9a0b\u5152"

    cmp-long v19, v4, v14

    add-int/lit8 v4, v19, -0x55

    const v5, 0x5ca7799

    invoke-static {v3}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v19

    add-int v5, v19, v5

    invoke-static {v3}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v19

    rsub-int/lit8 v14, v19, -0x1

    int-to-byte v14, v14

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v15

    shr-int/lit8 v15, v15, 0x10

    int-to-short v15, v15

    const v19, 0x64a1aa74

    invoke-static {v9}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v20

    sub-int v13, v19, v20

    invoke-static {v4, v5, v14, v15, v13}, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->c(IIBSI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v4, v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->q:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->K(Lcom/ironsource/adqualitysdk/sdk/i/ax;)Lcom/ironsource/adqualitysdk/sdk/i/at;

    move-result-object v4

    iget-object v5, v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->o:Ljava/lang/String;

    sget-object v13, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    new-instance v14, Lcom/ironsource/adqualitysdk/sdk/i/at$b;

    invoke-direct {v14, v4, v5, v13}, Lcom/ironsource/adqualitysdk/sdk/i/at$b;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/at;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/av$d;)V

    invoke-static {v14}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    invoke-static {v3}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, -0x53

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v5

    const v13, 0x5ca7769

    sub-int/2addr v13, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    int-to-byte v5, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v14

    shr-int/lit8 v14, v14, 0x10

    int-to-short v14, v14

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v15

    shr-int/lit8 v15, v15, 0x10

    const v18, 0x64a1aa4b

    add-int v15, v15, v18

    invoke-static {v4, v13, v5, v14, v15}, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->c(IIBSI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v20

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->p:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v9}, Landroid/view/View;->resolveSize(II)I

    move-result v5

    rsub-int/lit8 v5, v5, -0x54

    invoke-static {v3, v9}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v13

    const v14, 0x5ca7746

    add-int/2addr v13, v14

    invoke-static {v9, v9}, Landroid/view/View;->getDefaultSize(II)I

    move-result v14

    int-to-byte v14, v14

    invoke-static {v3, v9}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v15

    int-to-short v15, v15

    const v17, 0x64a1aa77

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v18

    shr-int/lit8 v18, v18, 0x10

    add-int v9, v18, v17

    invoke-static {v5, v13, v14, v15, v9}, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->c(IIBSI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x1

    const/16 v25, 0x1

    invoke-static/range {v20 .. v25}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V

    iget-object v4, v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->q:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    invoke-virtual {v4}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;

    move-result-object v4

    sget-object v5, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;->AD_NETWORK_VERSION_NOT_SUPPORTED_YET:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->n:Lcom/ironsource/adqualitysdk/sdk/i/ci;

    invoke-virtual {v13}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ｋ()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v13, 0x561a2961

    const/4 v14, 0x0

    invoke-static {v3, v14, v14}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v15

    sub-int/2addr v13, v15

    const v14, 0xc115

    const-wide/16 v17, 0x0

    invoke-static/range {v17 .. v18}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v15

    add-int/2addr v15, v14

    int-to-char v14, v15

    invoke-static {v2, v7, v13, v14, v10}, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->b(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->n:Lcom/ironsource/adqualitysdk/sdk/i/ci;

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﺙ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v10

    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v13

    int-to-char v2, v13

    invoke-static {v11, v7, v10, v2, v12}, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->b(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;->adQualitySdkInitFailed(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;Ljava/lang/String;)V

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->l:I

    add-int/lit8 v2, v2, 0x5d

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->m:I

    rem-int/lit8 v2, v2, 0x2

    goto/16 :goto_111

    :goto_313
    invoke-static {v3, v2}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v2

    const/16 v4, 0x30

    invoke-static {v3, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v3

    const v4, 0xfb8f

    add-int/2addr v3, v4

    int-to-char v3, v3

    invoke-static {v6, v7, v2, v3, v8}, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->b(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
