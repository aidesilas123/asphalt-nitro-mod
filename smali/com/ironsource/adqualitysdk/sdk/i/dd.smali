###### Class com.json.adqualitysdk.sdk.i.dd (com.ironsource.adqualitysdk.sdk.i.dd)
.class public Lcom/ironsource/adqualitysdk/sdk/i/dd;
.super Lcom/ironsource/adqualitysdk/sdk/i/cx;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/cg;


# static fields
.field private static h:J = 0x0L

.field private static i:I = 0x0

.field private static j:C = '\ucb0a'

.field private static k:[C = null

.field private static l:J = 0x0L

.field private static m:I = 0x0

.field private static n:I = 0x1


# instance fields
.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:D

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x55

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/dd;->k:[C

    const-wide v0, -0x18c3b3b27c1ac0dfL    # -1.970034915975208E189

    sput-wide v0, Lcom/ironsource/adqualitysdk/sdk/i/dd;->l:J

    return-void

    nop

    :array_12
    .array-data 2
        0x73s
        0x3f44s
        0x7e36s
        -0x42d2s
        -0x31fs
        0x3bc1s
        0x7aafs
        -0x467as
        -0x684s
        0x384cs
        0x772es
        -0x49dbs
        -0xa17s
        0x34d9s
        0x73b9s
        -0x4d80s
        -0xd9es
        0x315as
        0x701cs
        -0x50ees
        -0x1107s
        0x2dd0s
        0x3fe8s
        0xdfs
        0x41ads
        -0x7d47s
        -0x3c85s
        0x46cs
        0x4538s
        -0x79f6s
        -0x390as
        0x7dcs
        0x48a4s
        -0x766bs
        0x4b8ds
        0x74aes
        0x35dcs
        -0x940s
        -0x48e3s
        0x7009s
        0x3159s
        -0xd9fs
        -0x4d72s
        0x73b0s
        0x3cc3s
        -0x20ds
        -0x41fds
        0x7f22s
        0x384as
        -0x6bcs
        -0x4662s
        0x73s
        0x3f44s
        0x7e36s
        -0x42cds
        -0x318s
        0x3bc4s
        0x7aa5s
        -0x467es
        -0x69bs
        0x384cs
        0x7724s
        -0x49e1s
        -0xa3bs
        0x34c9s
        0x67s
        0x3f44s
        0x7e36s
        -0x42cds
        -0x318s
        0x3bc4s
        0x7aa5s
        -0x467es
        -0x69bs
        0x384cs
        0x7724s
        -0x49e1s
        -0xa3bs
        0x34c9s
        -0x6d8es
        -0x52b8s
        -0x13f2s
        0x2f16s
        0x6eeds
        -0x5633s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dd;->p:Ljava/lang/String;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dd;->q:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dd;->t:Z

    return-void
.end method

.method private d()Ljava/lang/String;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dd;->m:I

    add-int/lit8 v1, v0, 0x5f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dd;->n:I

    rem-int/lit8 v1, v1, 0x2

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dd;->p:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dd;->n:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    if-nez v0, :cond_1c

    return-object v1

    :cond_1c
    const/4 v0, 0x0

    :try_start_1d
    throw v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception v0

    throw v0
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;
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

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/dd;->h:J

    xor-long/2addr v2, v4

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/dd;->i:I

    int-to-long v4, v4

    xor-long/2addr v2, v4

    sget-char v4, Lcom/ironsource/adqualitysdk/sdk/i/dd;->j:C

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

.method private f(Ljava/lang/String;)V
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dd;->n:I

    add-int/lit8 v1, v0, 0x3

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dd;->m:I

    rem-int/lit8 v1, v1, 0x2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dd;->p:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/dd;->m:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method private g()Ljava/lang/Double;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dd;->n:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dd;->m:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-eq v0, v1, :cond_23

    iget-wide v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dd;->q:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/dd;->n:I

    add-int/lit8 v1, v1, 0x5b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dd;->m:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :cond_23
    const/4 v0, 0x0

    :try_start_24
    throw v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_25

    :catchall_25
    move-exception v0

    throw v0
.end method

.method private static h(IIC)Ljava/lang/String;
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

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/dd;->k:[C

    add-int v4, p1, v2

    aget-char v3, v3, v4

    int-to-long v3, v3

    int-to-long v5, v2

    sget-wide v7, Lcom/ironsource/adqualitysdk/sdk/i/dd;->l:J

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

.method private i(Z)V
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dd;->n:I

    add-int/lit8 v1, v0, 0x21

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dd;->m:I

    rem-int/lit8 v1, v1, 0x2

    iput-boolean p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dd;->r:Z

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/dd;->m:I

    rem-int/lit8 v0, v0, 0x2

    const/16 p1, 0x19

    if-eqz v0, :cond_1b

    const/16 v0, 0x19

    goto :goto_1d

    :cond_1b
    const/16 v0, 0x9

    :goto_1d
    if-eq v0, p1, :cond_20

    return-void

    :cond_20
    const/4 p1, 0x0

    :try_start_21
    throw p1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception p1

    throw p1
.end method

.method private j()Z
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dd;->m:I

    add-int/lit8 v1, v0, 0x65

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dd;->n:I

    rem-int/lit8 v1, v1, 0x2

    iget-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dd;->t:Z

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dd;->n:I

    rem-int/lit8 v0, v0, 0x2

    return v1
.end method

.method private ﮐ()Ljava/lang/String;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dd;->m:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dd;->n:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-eq v0, v2, :cond_1d

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dd;->s:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x29

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dd;->m:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :cond_1d
    const/4 v0, 0x0

    :try_start_1e
    throw v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception v0

    throw v0
.end method

.method private ﱟ()Z
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dd;->n:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dd;->m:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x14

    if-eqz v0, :cond_11

    const/16 v0, 0x14

    goto :goto_13

    :cond_11
    const/16 v0, 0x27

    :goto_13
    if-eq v0, v1, :cond_18

    iget-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dd;->r:Z

    return v0

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

.method private ﱡ()Ljava/lang/String;
    .registers 11

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dd;->n:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dd;->m:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/dd;->ﱟ()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    const/4 v0, 0x1

    :goto_14
    const-string v2, "\u0000\u0000\u0000\u0000"

    if-eqz v0, :cond_35

    const/16 v0, 0x30

    invoke-static {v0}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v3

    sub-int/2addr v0, v3

    const v3, 0x85f3

    invoke-static {v1}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-char v3, v3

    const-string v4, "\u3491\uf4a3\uf375\u8785"

    const-string v5, "\u7802\ube9f\u0e5b\u0264\u61a9\u7ec5"

    invoke-static {v4, v2, v0, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/dd;->e(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_6d

    :cond_35
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dd;->n:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/dd;->m:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v3, 0x33

    if-eqz v0, :cond_46

    const/16 v0, 0x23

    goto :goto_48

    :cond_46
    const/16 v0, 0x33

    :goto_48
    const-string v4, "\u466a\ufc4a\u186c\uce02\u8d1f\ubcb9\udbc1\u07fa\u1c8e\uac38"

    const-string v5, "\ue0b4\u9489\ue6ba\udff5"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    cmp-long v3, v8, v6

    add-int/lit8 v3, v3, -0x1

    int-to-char v3, v3

    invoke-static {v5, v2, v0, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/dd;->e(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/dd;->n:I

    add-int/lit8 v3, v3, 0x53

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/dd;->m:I

    rem-int/lit8 v3, v3, 0x2

    :goto_6d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v4

    invoke-static {v1, v1}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v5

    int-to-char v5, v5

    const-string v6, "\u92f8\u275f\ua2ec\u8ac4"

    const-string v7, "\u5f88\ue30e\u03f3\u0c37\uc9e6\u34a6\u4220\uae86\u2069\u3d92"

    invoke-static {v6, v2, v4, v5, v7}, Lcom/ironsource/adqualitysdk/sdk/i/dd;->e(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/dd;->p:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, -0x58440173

    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v5

    int-to-byte v5, v5

    add-int/2addr v5, v4

    const v4, 0xb263

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    add-int/2addr v1, v4

    int-to-char v1, v1

    const-string v4, "\u8ccb\ubbfe\u63a7\u75b2"

    const-string v6, "\u2a20"

    invoke-static {v4, v2, v5, v1, v6}, Lcom/ironsource/adqualitysdk/sdk/i/dd;->e(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ﾇ()Ljava/lang/String;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dd;->m:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dd;->n:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dd;->o:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x3

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dd;->m:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method


# virtual methods
.method public final ﻐ(Ljava/lang/Double;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dd;->m:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dd;->n:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dd;->q:D

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/dd;->m:I

    add-int/lit8 p1, p1, 0x43

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/dd;->n:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final ﻛ()Lorg/json/JSONObject;
    .registers 10

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_c
    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﾇ:Ljava/lang/String;

    iget-object v5, p0, Lcom/ironsource/adqualitysdk/sdk/i/dd;->o:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/dd;->q:D

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    cmpl-double v8, v4, v6

    if-lez v8, :cond_1d

    const/4 v6, 0x0

    goto :goto_1e

    :cond_1d
    const/4 v6, 0x1

    :goto_1e
    if-eqz v6, :cond_21

    goto :goto_26

    :cond_21
    sget-object v6, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ᕃ:Ljava/lang/String;

    invoke-virtual {v1, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :goto_26
    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ᕄ:Ljava/lang/String;

    iget-object v5, p0, Lcom/ironsource/adqualitysdk/sdk/i/dd;->s:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_2d} :catch_2d

    :catch_2d
    :try_start_2d
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v4
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_31} :catch_61

    if-lez v4, :cond_57

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/dd;->n:I

    add-int/lit8 v5, v4, 0x41

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/dd;->m:I

    rem-int/lit8 v5, v5, 0x2

    :try_start_3d
    iget-boolean v5, p0, Lcom/ironsource/adqualitysdk/sdk/i/dd;->t:Z
    :try_end_3f
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_3f} :catch_61

    if-eqz v5, :cond_42

    goto :goto_43

    :cond_42
    const/4 v2, 0x1

    :goto_43
    if-eq v2, v3, :cond_52

    add-int/lit8 v4, v4, 0x5f

    rem-int/lit16 v2, v4, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dd;->m:I

    rem-int/lit8 v4, v4, 0x2

    :try_start_4d
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ᖅ:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_52
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ᕆ:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_57
    .catch Lorg/json/JSONException; {:try_start_4d .. :try_end_57} :catch_61

    :cond_57
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/dd;->m:I

    add-int/lit8 v1, v1, 0x41

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dd;->n:I

    rem-int/lit8 v1, v1, 0x2

    :catch_61
    return-object v0
.end method

.method public final ｋ(Ljava/lang/String;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dd;->n:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dd;->m:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x5c

    if-eqz v0, :cond_11

    const/16 v0, 0x5c

    goto :goto_12

    :cond_11
    const/4 v0, 0x7

    :goto_12
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dd;->s:Ljava/lang/String;

    if-eq v0, v1, :cond_17

    return-void

    :cond_17
    const/4 p1, 0x0

    :try_start_18
    throw p1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_19

    :catchall_19
    move-exception p1

    throw p1
.end method

.method public final ｋ(Z)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dd;->m:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dd;->n:I

    rem-int/lit8 v0, v0, 0x2

    iput-boolean p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dd;->t:Z

    add-int/lit8 v1, v1, 0x29

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/dd;->m:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method

.method public final ﾇ(Ljava/lang/String;)V
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dd;->n:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dd;->m:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0x4d

    if-eqz v0, :cond_11

    const/16 v0, 0x4d

    goto :goto_13

    :cond_11
    const/16 v0, 0x3d

    :goto_13
    const/4 v3, 0x0

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dd;->o:Ljava/lang/String;

    if-eq v0, v2, :cond_2c

    add-int/lit8 v1, v1, 0x17

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/dd;->n:I

    rem-int/lit8 v1, v1, 0x2

    const/4 p1, 0x1

    if-nez v1, :cond_25

    const/4 v0, 0x0

    goto :goto_26

    :cond_25
    const/4 v0, 0x1

    :goto_26
    if-ne v0, p1, :cond_29

    return-void

    :cond_29
    :try_start_29
    throw v3
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception p1

    throw p1

    :cond_2c
    :try_start_2c
    throw v3
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p1

    throw p1
.end method

.method public final ﾒ(Ljava/lang/String;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/ch;)Ljava/lang/Object;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ironsource/adqualitysdk/sdk/i/ch;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-class v3, Ljava/lang/Boolean;

    const-class v4, Ljava/lang/String;

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/dd;->m:I

    add-int/lit8 v5, v5, 0x11

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/dd;->n:I

    const/4 v6, 0x2

    rem-int/2addr v5, v6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    const/4 v9, 0x1

    const-wide/16 v10, 0x0

    const/4 v12, 0x6

    const/16 v13, 0x30

    const/4 v14, -0x1

    const-string v15, ""

    const-string v7, "\u0000\u0000\u0000\u0000"

    const/4 v8, 0x0

    sparse-switch v5, :sswitch_data_30c

    goto/16 :goto_287

    :sswitch_29
    invoke-static {v10, v11}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v5

    invoke-static {v10, v11}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v9

    rsub-int/lit8 v9, v9, -0x1

    int-to-char v9, v9

    const-string v10, "\u978e\ue8de\uf698\u76ee"

    const-string v11, "\u7a80\uff29\u566b\u4787\u94e7\ub27e\u2be4\u9e20\u1235\u8fc2\u705f\ua266"

    invoke-static {v10, v7, v5, v9, v11}, Lcom/ironsource/adqualitysdk/sdk/i/dd;->e(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_287

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/dd;->n:I

    add-int/lit8 v1, v1, 0x57

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/dd;->m:I

    rem-int/2addr v1, v6

    if-eqz v1, :cond_53

    goto/16 :goto_10d

    :cond_53
    const/4 v7, 0x5

    goto/16 :goto_288

    :sswitch_56
    invoke-static {v15, v13, v8}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x10

    invoke-static {v10, v11}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v7

    rsub-int/lit8 v7, v7, 0x21

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v10

    shr-int/lit8 v10, v10, 0x10

    rsub-int v10, v10, 0x4bea

    int-to-char v10, v10

    invoke-static {v5, v7, v10}, Lcom/ironsource/adqualitysdk/sdk/i/dd;->h(IIC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    goto :goto_7b

    :cond_7a
    const/4 v9, 0x0

    :goto_7b
    if-eqz v9, :cond_287

    const/4 v7, 0x7

    goto/16 :goto_288

    :sswitch_80
    const v5, 0x6db1a832

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    const-string v9, "\u333a\ub1a8\uc96d\u9cf7"

    const-string v15, "\u0b1f\u3f51\u6da6\ue9c2\ue11a\ud679\u8687\u6a66\ua712\ucac3\uad93"

    cmp-long v16, v12, v10

    add-int v5, v16, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v10

    shr-int/lit8 v10, v10, 0x10

    int-to-char v10, v10

    invoke-static {v9, v7, v5, v10, v15}, Lcom/ironsource/adqualitysdk/sdk/i/dd;->e(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_287

    const/16 v7, 0xb

    goto/16 :goto_288

    :sswitch_a8
    const v5, -0x1bc91455

    invoke-static {v8}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x14

    shr-int/2addr v10, v12

    sub-int/2addr v5, v10

    invoke-static {v15, v13, v8}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v10

    add-int/2addr v10, v9

    int-to-char v9, v10

    const-string v10, "\uabf1\u36eb\ucfe4\ua32b"

    const-string v11, "\ue708\uf994\ue867\uc8ca\uc74e\u079a\u210b\uff99\u2db0\u7b18\ue780"

    invoke-static {v10, v7, v5, v9, v11}, Lcom/ironsource/adqualitysdk/sdk/i/dd;->e(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_287

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/dd;->n:I

    add-int/lit8 v1, v1, 0x71

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/dd;->m:I

    rem-int/2addr v1, v6

    if-eqz v1, :cond_da

    const/16 v7, 0x7b

    goto/16 :goto_288

    :cond_da
    const/16 v7, 0xa

    goto/16 :goto_288

    :sswitch_de
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v5

    const/16 v7, 0x8

    shr-int/2addr v5, v7

    add-int/lit8 v5, v5, 0x16

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v10

    shr-int/lit8 v7, v10, 0x8

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    sub-int/2addr v9, v10

    int-to-char v9, v9

    invoke-static {v5, v7, v9}, Lcom/ironsource/adqualitysdk/sdk/i/dd;->h(IIC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_287

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/dd;->m:I

    add-int/lit8 v1, v1, 0x19

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/dd;->n:I

    rem-int/2addr v1, v6

    :goto_10d
    const/4 v7, 0x2

    goto/16 :goto_288

    :sswitch_110
    invoke-static {v8, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v9

    rsub-int v9, v9, 0x3922

    int-to-char v9, v9

    const-string v10, "\u737a\u4c0e\u22d8\u8639"

    const-string v11, "\u5494\u4551\ua32c\u72cc\u5b29\ue88c\u2cc3\u8628\ua052\u366c\u6bc6\ufcd1\ufc2d\u6e8f\uf047\ud235"

    invoke-static {v10, v7, v5, v9, v11}, Lcom/ironsource/adqualitysdk/sdk/i/dd;->e(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_130

    const/16 v1, 0x1f

    goto :goto_131

    :cond_130
    const/4 v1, 0x6

    :goto_131
    if-eq v1, v12, :cond_287

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/dd;->n:I

    add-int/lit8 v1, v1, 0x39

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/dd;->m:I

    rem-int/2addr v1, v6

    const/4 v7, 0x0

    goto/16 :goto_288

    :sswitch_13f
    const v5, -0x5e7f1a30

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v9

    const/16 v10, 0x8

    shr-int/2addr v9, v10

    add-int/2addr v9, v5

    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v5

    rsub-int v5, v5, 0x37d9

    int-to-char v5, v5

    const-string v10, "\ud098\u80e5\ud9a1\u4937"

    const-string v11, "\u65eb\u7342\u15d9\ub5be\u84b6\u02fd\u8690\u4bf4\u74e3\u5d6b\u4334\u55f3\uf0f7\u4ae8\ue989\u756f\u081d"

    invoke-static {v10, v7, v9, v5, v11}, Lcom/ironsource/adqualitysdk/sdk/i/dd;->e(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_287

    const/4 v7, 0x6

    goto/16 :goto_288

    :sswitch_166
    invoke-static {v13}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v5

    rsub-int/lit8 v5, v5, 0x3e

    invoke-static {v15, v15, v8}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v7

    add-int/lit8 v7, v7, 0x41

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v9

    shr-int/lit8 v9, v9, 0x10

    int-to-char v9, v9

    invoke-static {v5, v7, v9}, Lcom/ironsource/adqualitysdk/sdk/i/dd;->h(IIC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_287

    const/16 v7, 0x9

    goto/16 :goto_288

    :sswitch_18b
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v5

    const-string v10, "\uf581\ude3d\u4ae4\u5cd2"

    const-string v11, "\ucc32\u7e0f\u3412\u4953\ud85f\u6b74\uf8f6\u02d3\u80b5\u5b55\u85dd\u3ab4\u4a0d\ua555\ub497\ue9db\u601b\u4fa1\ub478\u577d\uad79\u7032"

    const/4 v12, 0x0

    cmpl-float v5, v5, v12

    add-int/2addr v5, v14

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v13

    cmpl-float v12, v13, v12

    add-int/2addr v12, v14

    int-to-char v12, v12

    invoke-static {v10, v7, v5, v12, v11}, Lcom/ironsource/adqualitysdk/sdk/i/dd;->e(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ae

    const/4 v9, 0x0

    :cond_1ae
    if-eqz v9, :cond_1b2

    goto/16 :goto_287

    :cond_1b2
    const/4 v7, 0x3

    goto/16 :goto_288

    :sswitch_1b5
    invoke-static {v10, v11}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v5

    sub-int/2addr v12, v5

    invoke-static {v13}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v5

    rsub-int/lit8 v5, v5, 0x7f

    const v7, 0x9207

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    sub-int/2addr v7, v9

    int-to-char v7, v7

    invoke-static {v12, v5, v7}, Lcom/ironsource/adqualitysdk/sdk/i/dd;->h(IIC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_287

    const/16 v7, 0xd

    goto/16 :goto_288

    :sswitch_1de
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    const/16 v9, 0xc

    rsub-int/lit8 v7, v5, 0xc

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    rsub-int/lit8 v5, v5, 0x16

    invoke-static {v8}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v9

    add-int/lit16 v9, v9, 0x3f9b

    int-to-char v9, v9

    invoke-static {v7, v5, v9}, Lcom/ironsource/adqualitysdk/sdk/i/dd;->h(IIC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_287

    const/4 v7, 0x4

    goto/16 :goto_288

    :sswitch_208
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    const v10, 0xa910

    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v11

    int-to-byte v11, v11

    add-int/2addr v11, v10

    int-to-char v10, v11

    const-string v11, "\u08bc\ua12a\u0fdf\udba9"

    const-string v12, "\uf0a9\u8883\u7466\u094d\u2ed9\ue1e9\u5698\u380f\u6df9\u2d26\uce9a\ud29f\u2414\u6133\u3ba8\u77b8"

    invoke-static {v11, v7, v5, v10, v12}, Lcom/ironsource/adqualitysdk/sdk/i/dd;->e(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v5, 0x56

    if-eqz v1, :cond_22f

    const/16 v1, 0x56

    goto :goto_231

    :cond_22f
    const/16 v1, 0x50

    :goto_231
    if-eq v1, v5, :cond_234

    goto :goto_287

    :cond_234
    const/4 v7, 0x1

    goto :goto_288

    :sswitch_236
    const/16 v10, 0x8

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    add-int/lit8 v5, v5, 0xe

    const/4 v7, 0x0

    invoke-static {v7, v7}, Landroid/graphics/PointF;->length(FF)F

    move-result v9

    cmpl-float v7, v9, v7

    add-int/lit8 v7, v7, 0x33

    invoke-static {v15, v13}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v9

    rsub-int/lit8 v9, v9, -0x1

    int-to-char v9, v9

    invoke-static {v5, v7, v9}, Lcom/ironsource/adqualitysdk/sdk/i/dd;->h(IIC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_287

    const/16 v7, 0x8

    goto :goto_288

    :sswitch_261
    const/16 v9, 0xc

    const v5, 0x53c6f264

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v10

    shr-int/lit8 v10, v10, 0x10

    add-int/2addr v10, v5

    invoke-static {v15}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v5

    int-to-char v5, v5

    const-string v11, "\u64ce\uc6f2\uca53\u7356"

    const-string v12, "\ubf11\u0acc\u5861\u1609\ub8a0\u8ce9\ud31b\u2876\u53bf\u4b42\uf111\ub5ca\ue215\uca5a\u0b7a\ud55d\ucd16\ubb34\u63ed\ue9af\u9a36"

    invoke-static {v11, v7, v10, v5, v12}, Lcom/ironsource/adqualitysdk/sdk/i/dd;->e(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_287

    const/16 v7, 0xc

    goto :goto_288

    :cond_287
    :goto_287
    const/4 v7, -0x1

    :goto_288
    packed-switch v7, :pswitch_data_346

    goto :goto_300

    :pswitch_28c
    invoke-virtual/range {p0 .. p0}, Lcom/ironsource/adqualitysdk/sdk/i/dd;->ﻛ()Lorg/json/JSONObject;

    move-result-object v1

    return-object v1

    :pswitch_291
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/adqualitysdk/sdk/i/dd;->ﱡ()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_296
    invoke-static {v2, v8, v3}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/dd;->ｋ(Z)V

    :pswitch_2a3
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/adqualitysdk/sdk/i/dd;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :pswitch_2ac
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/adqualitysdk/sdk/i/dd;->ﮐ()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_2b1
    invoke-static {v2, v8, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/dd;->ｋ(Ljava/lang/String;)V

    goto :goto_300

    :pswitch_2bb
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/adqualitysdk/sdk/i/dd;->ﱟ()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :pswitch_2c4
    invoke-static {v2, v8, v3}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/dd;->i(Z)V

    goto :goto_300

    :pswitch_2d2
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/adqualitysdk/sdk/i/dd;->g()Ljava/lang/Double;

    move-result-object v1

    return-object v1

    :pswitch_2d7
    const-class v1, Ljava/lang/Double;

    invoke-static {v2, v8, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/dd;->ﻐ(Ljava/lang/Double;)V

    goto :goto_300

    :pswitch_2e3
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/adqualitysdk/sdk/i/dd;->d()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_2e8
    invoke-static {v2, v8, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/dd;->f(Ljava/lang/String;)V

    goto :goto_300

    :pswitch_2f2
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/adqualitysdk/sdk/i/dd;->ﾇ()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_2f7
    invoke-static {v2, v8, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cx;->ﻛ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/dd;->ﾇ(Ljava/lang/String;)V

    :goto_300
    const/4 v1, 0x0

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/dd;->n:I

    add-int/lit8 v2, v2, 0x1d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/dd;->m:I

    rem-int/2addr v2, v6

    return-object v1

    nop

    :sswitch_data_30c
    .sparse-switch
        -0x77d39986 -> :sswitch_261
        -0x641f4ee2 -> :sswitch_236
        -0x56de4f3e -> :sswitch_208
        -0x3d945bc9 -> :sswitch_1de
        -0x33ce45fd -> :sswitch_1b5
        -0x1213a28c -> :sswitch_18b
        0x57b3daa -> :sswitch_166
        0x29cca88a -> :sswitch_13f
        0x3bf81736 -> :sswitch_110
        0x3c311ce8 -> :sswitch_de
        0x4e561bbd -> :sswitch_a8
        0x539dbab1 -> :sswitch_80
        0x61d6407e -> :sswitch_56
        0x6617e3c3 -> :sswitch_29
    .end sparse-switch

    :pswitch_data_346
    .packed-switch 0x0
        :pswitch_2f7
        :pswitch_2f2
        :pswitch_2e8
        :pswitch_2e3
        :pswitch_2d7
        :pswitch_2d2
        :pswitch_2c4
        :pswitch_2bb
        :pswitch_2b1
        :pswitch_2ac
        :pswitch_296
        :pswitch_2a3
        :pswitch_291
        :pswitch_28c
    .end packed-switch
.end method
