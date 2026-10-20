###### Class com.ironsource.adqualitysdk.sdk.i.ag.a.C0333a (com.ironsource.adqualitysdk.sdk.i.ag$a$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/is;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ag$a;->onEventGenerated(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static a:[C = null

.field private static b:J = 0x0L

.field private static c:I = 0x0

.field private static d:I = 0x1


# instance fields
.field final synthetic e:Lcom/ironsource/adqualitysdk/sdk/i/ag$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x62

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a;->a:[C

    const-wide v0, 0x71bf96e03a3d2eb9L    # 8.228058646006748E239

    sput-wide v0, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a;->b:J

    return-void

    nop

    :array_12
    .array-data 2
        -0x30s
        -0x2ebas
        -0x5d7es
        0x73d6s
        0x450cs
        0x1678s
        -0x1852s
        -0x4703s
        -0x75d6s
        0x47s
        0x2ed6s
        0x5d06s
        -0x73f5s
        -0x457bs
        -0x1643s
        0x1825s
        0x477as
        0x75abs
        -0x5b1es
        -0x2ca1s
        0x180s
        0x30dfs
        0x5f45s
        -0x7194s
        -0x434es
        -0x141ds
        0x1a39s
        0x496ds
        0x77d5s
        -0x59f9s
        -0x2ab8s
        0x3c6s
        0x32f9s
        0x6137s
        -0x6f9ds
        -0x4116s
        -0x1210s
        0x1c59s
        0x4a9bs
        0x79cas
        -0x57des
        -0x28aas
        0x5bcs
        0x34fcs
        0x633fs
        -0x6ddbs
        0x53s
        0x2ed6s
        0x5d1fs
        -0x73b2s
        -0x4570s
        -0x160bs
        0x183fs
        0x4761s
        0x75afs
        -0x5b5fs
        -0x2cb3s
        0x196s
        0x30c2s
        0x5f11s
        -0x71c2s
        -0x4360s
        -0x141es
        0x1a26s
        0x496cs
        0x77dcs
        -0x59acs
        -0x2aa6s
        0x38fs
        0x32ebs
        0x6130s
        -0x6fcfs
        -0x4147s
        -0x121as
        0x1c52s
        0x4a91s
        0x79ebs
        -0x57efs
        -0x28bbs
        0x5b7s
        0x34e6s
        0x6365s
        -0x6ddcs
        -0x3f06s
        -0x10e7s
        0x1e5bs
        0x4cc8s
        0x7bd3s
        -0x55c1s
        -0x26a0s
        0x7bcs
        0x36eas
        0x6550s
        -0x6c7cs
        -0x3d2bs
        -0xeads
        0x2002s
        -0x5436s
    .end array-data
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ag$a;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a;->e:Lcom/ironsource/adqualitysdk/sdk/i/ag$a;

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

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a;->a:[C

    add-int v4, p1, v2

    aget-char v3, v3, v4

    int-to-long v3, v3

    int-to-long v5, v2

    sget-wide v7, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a;->b:J

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


# virtual methods
.method public final ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ip;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a;Lcom/ironsource/adqualitysdk/sdk/i/ip;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a;->d:I

    add-int/lit8 p1, p1, 0x17

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a;->c:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_16

    const/4 p1, 0x0

    goto :goto_17

    :cond_16
    const/4 p1, 0x1

    :goto_17
    if-eqz p1, :cond_1a

    return-void

    :cond_1a
    const/4 p1, 0x0

    :try_start_1b
    throw p1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1c

    :catchall_1c
    move-exception p1

    throw p1
.end method

.method public final ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ip;)V
    .registers 13

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ip;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/ip$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ip$c;->ﾒ()I

    move-result v0

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ip;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/ip$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ip$c;->ｋ()Ljava/lang/String;

    move-result-object v1

    const v2, 0xff91

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0xc8

    if-lt v0, v5, :cond_62

    const/16 v5, 0x12b

    if-gt v0, v5, :cond_62

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    rsub-int/lit8 v5, v5, 0x9

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    const/4 v7, 0x0

    invoke-static {v4, v7, v7}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v8

    cmpl-float v7, v8, v7

    add-int/2addr v7, v2

    int-to-char v2, v7

    invoke-static {v5, v6, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a;->a(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v4}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x25

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    rsub-int/lit8 v5, v5, 0x9

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v6

    shr-int/lit8 v6, v6, 0x8

    int-to-char v6, v6

    invoke-static {v4, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a;->a(IIC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a;->e:Lcom/ironsource/adqualitysdk/sdk/i/ag$a;

    iget-object v5, v5, Lcom/ironsource/adqualitysdk/sdk/i/ag$a;->a:Lorg/json/JSONArray;

    invoke-static {v2, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾇ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_107

    :cond_62
    const/16 v5, 0x193

    if-ne v0, v5, :cond_91

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a;->e:Lcom/ironsource/adqualitysdk/sdk/i/ag$a;

    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/ag$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/ag;

    monitor-enter v2

    :try_start_6b
    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a;->e:Lcom/ironsource/adqualitysdk/sdk/i/ag$a;

    iget-object v3, v3, Lcom/ironsource/adqualitysdk/sdk/i/ag$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/ag;

    invoke-static {v3}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->a(Lcom/ironsource/adqualitysdk/sdk/i/ag;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_77
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ironsource/adqualitysdk/sdk/i/ix$d;

    new-instance v6, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a$c;

    invoke-direct {v6, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a$c;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ix$d;)V

    invoke-static {v6}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    goto :goto_77

    :cond_8c
    monitor-exit v2
    :try_end_8d
    .catchall {:try_start_6b .. :try_end_8d} :catchall_8e

    goto :goto_106

    :catchall_8e
    move-exception p1

    monitor-exit v2

    throw p1

    :cond_91
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    add-int/lit8 v9, v9, 0x8

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v5

    cmp-long v10, v5, v7

    sub-int/2addr v3, v10

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    add-int/2addr v5, v2

    int-to-char v2, v5

    invoke-static {v9, v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a;->a(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    add-int/lit8 v5, v5, 0x33

    invoke-static {v4, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x2e

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v7

    int-to-char v7, v7

    invoke-static {v5, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a;->a(IIC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x30

    invoke-static {v5}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v5

    rsub-int/lit8 v5, v5, 0x31

    invoke-static {v4, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x61

    const v7, 0xabea

    invoke-static {v4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v8

    add-int/2addr v8, v7

    int-to-char v7, v8

    invoke-static {v5, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a;->a(IIC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ｋ(Ljava/lang/String;Ljava/lang/String;)V

    :goto_106
    const/4 v3, 0x0

    :goto_107
    if-eqz v3, :cond_136

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a;->e:Lcom/ironsource/adqualitysdk/sdk/i/ag$a;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ag$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_111
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/af;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a;->e:Lcom/ironsource/adqualitysdk/sdk/i/ag$a;

    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/ag$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/ag;

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->f(Lcom/ironsource/adqualitysdk/sdk/i/ag;)Lcom/ironsource/adqualitysdk/sdk/i/iz;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/af;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/iv;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/iz;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/iv;)V

    goto :goto_111

    :cond_12d
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a$b;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a$b;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a;Lcom/ironsource/adqualitysdk/sdk/i/ip;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    return-void

    :cond_136
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a$d;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a$d;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a;Lcom/ironsource/adqualitysdk/sdk/i/ip;ILjava/lang/String;)V

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    return-void
.end method
